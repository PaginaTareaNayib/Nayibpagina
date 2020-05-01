<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Registro</title>
    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <link rel="stylesheet" href="css/estilo.css">
    <script src="http://code.jquery.com/jquery-latest.js">
    </script>
    <script type="text/javascript">
$(document).ready(function(){
		var btn =$('#carga').val();
		$.post('serveletdatos',{
			
		}, function(respose){
		
		let datos = JSON.parse(respose);
		//console.log(respose);
		var tabladatos = document.getElementById('tablaDatos');
		for(let item of datos){

			tabladatos.innerHTML += `
			<tr>

			<td>${item.idBeneficiario}</td>
			<td>${item.nombre}</td>	
			<td>${item.edad}</td>			
			<td>${item.direccion}</td>
			<td>${item.dui}</td>
			<td><a href="serveletdatos?btn=Eliminar&id=${item.idBeneficiario}" class="btn btn-warning">ELIMINAR</a> 
			<a href="datos.jsp?id=${item.idBeneficiario}&nombre=${item.nombre}&edad=${item.edad}&Direccion=${item.direccion}&DUI=${item.dui}" class="btn btn-danger">ACTUALIZAR</a> </td>
			
</tr>
`
		}




	
	});
});

		
		
		
</script>
    

  </head>
  <body>
    <header>
      <div id="header-wrapper" class="container-fluid">
        <div class="row">
          <div id="header" class="col py-3">
            <img src="imagenes/logo.png" class="mx-auto d-block" style="max-height: 60px; max-width:100%;">
          </div>
        </div>
      </div>
    </header>
    <section>
      <div id="datos" class="text-center">
        <div class="text-left">
          <a href="datos.jsp" class="btn btn-info">Agregar</a>
        </div>
        <div class="container">

  					<table class="table table-hover table-striped table-dark" id="tablaDatos">
  						<thead class="">
  								<th>ID</th>
  								<th>NOMBRE</th>
  								<th>PRECIO</th>
  								<th>CANTIDAD</th>
  								<th>TOTAL</th>
  								<th>OPCIONES</th>

  						</thead>
  							<tbody>

  							</tbody>

  					</table>

        </div>
      </div>
    </section>
      <footer>
        <div id="footer-wrapper">
        <div id="copyright-wrapper">
          <div class="container">
            <div class="row pt-3">
              <div class="col text-left">
                <p>© Copyright 2020. Presidencia de la República de El Salvador..</p>
              </div>

            </div>
          </div>
        </div>
      </div>
      </footer>
  </body>
</html>
