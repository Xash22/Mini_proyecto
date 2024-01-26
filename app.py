from flask import Flask, redirect, render_template, request, url_for
from flask_mysqldb import MySQL

app = Flask(__name__)
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'viajes'
mysql = MySQL(app)

@app.route("/")
def index():
    return render_template("index.html")

@app.route('/registrar', methods=['GET', 'POST'])
def registrar():
    if request.method == 'POST':
        nombre = request.form['nombre']
        destino = request.form['destino']
        fecha = request.form['fecha']

        # Crea el cursor
        cur = mysql.connection.cursor()

        # Ejecuta consulta de inserción
        cur.execute("INSERT INTO registros (nombre, destino, fecha) VALUES (%s, %s, %s)",
                    (nombre, destino, fecha))

        # Confirma los cambios
        mysql.connection.commit()
        
        cur.close()

        return redirect(url_for('index'))
    
    return render_template("contact.html")



@app.route("/lugares")
def lugares():
    return render_template("lugares.html")

if __name__ == '__main__':
    app.run(debug=True)
