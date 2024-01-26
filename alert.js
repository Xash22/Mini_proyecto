function mostrarAlerta() {
    alert('Muerte a los sistemas operativos cerrados:)');
  }
  
  mostrarAlerta();
  
  document.getElementById('limpiarBtn').addEventListener('click', function() {
    document.getElementById('myForm').reset();
  });
  