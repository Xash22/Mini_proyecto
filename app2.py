from flask import Flask,render_template,request,url_for,redirect,flash
from flask_mysqldb import MySQL

app = Flask(__name__)


app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD']=''
app.config['MYSQL_DB'] = 'flaskcontacts'
mysql = MySQL(app)

app.secret_key = 'mysecretkey'

@app.route("/")
def index():
    return render_template("index2.html")

@app.route('/add_contact', methods=['POST'])
def add_contact():
    if request.method == 'POST':
        username = request.form['username']
        email = request.form['email']
        password = request.form['password']
        cur = mysql.connection.cursor()
        cur.execute('INSERT INTO login (username, email, password) VALUES (%s,%s,%s)',(username, email, password))
        mysql.connection.commit()
        return render_template("yosi.html")

@app.route('/edit')
def edit():
    return "edit contact"

@app.route("/delete")
def delete():
    return "delete"



if __name__ == '__main__':
    app.run(debug=True)