<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
  <meta charset="utf-8">
  <title>Gobierno de el Salvador</title>
  <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
  <link rel="stylesheet" href="css/estilo.css" type="text/css">
  <script src="http://code.jquery.com/jquery-latest.js">
</script>
<script type="text/javascript">
$(document).ready(function(){
  $('#carga').click(function(){
 var caja = $('#dui').val();
  $.post('serveletbeneficiario',{
	  caja
    },function(response){
  let datos = JSON.parse(response)
var divb= document.getElementById("texto");
  if(datos.length>0){
		for(let item of datos){
			  divb.innerHTML = `
				  <h2 class="mt-2"> ${item.nombre}, Si eres beneficiario del apoyo economico de $300 para alimentacion de tu vivienda </h2>
				  `}
		
		 
	}else{
			  divb.innerHTML = `
				  <h2 class="mt-2"> Este DUI no se encuentra en nuestros registros.<br>
				  Intenta ingresando el DUI de otra persona de tu vivienda. </h2>
				  `
	}
  $('input[type="text"]').val('');
    });
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
      <div id="main" class="container">
        <div class="row">
          <div class="col-12 mb-4">
            <h1 class="text-center mt-5">Consulta quién de tu familia es el beneficiario del apoyo
              <br> económico para alimentación en la emergencia</h1>
            <h1 class="text-center mt-1"><span class="badge badge-success">COVID-19</span></h1>
            <div class="row mt-5">
              <div class="col-12 col-md-8 offset-md-2 col-lg-6 offset-lg-3">
                  <div class="input-group mb-3">
                    <input type="text" class="form-control light-grey" id="dui" name="dui" style="background-color: #f2f2f2;" placeholder="Ingresa tu número de DUI">
                    <div class="input-group-append">
                      <button class="btn btn-success" type="submit" id="carga">CONSULTAR</button>
                    </div>
                  </div>
                <a href="datos.jsp"><button class="btn btn-success"  type="submit">Registrar</button></a>
              </div>
            </div>
            <div class="text-center mt-5" id ="texto">

            </div>
          </div>
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
