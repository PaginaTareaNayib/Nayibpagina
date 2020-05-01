<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Registro</title>
    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <link rel="stylesheet" href="css/estilo.css">
    <%
String id = request.getParameter("id");
String nombre = request.getParameter("nombre");
String edad = request.getParameter("edad");
String Direccion = request.getParameter("Direccion");
String DUI = request.getParameter("DUI");

if(id ==null){
	
	id ="";
	nombre="";
	edad="";
	Direccion="";
	DUI="";
	
}

%>
  </head>
  <body>
  <form action="serveletdatos" >
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
        <div class="container">
          <div class="row">
            <div class="col">
           
            <div class="input-group mb-3">
            <label for="id1" class="col-sm-2 col-form-label">ID</label>
            <div class="col-sm-10">
    <input type="text" class="form-control" name="id" id="id1"placeholder="id" value="<%=id%>">
    </div>
  </div>
              <div class="input-group mb-3">
             <label for="nombre1" class="col-sm-2 col-form-label">Nombre</label>
               <div class="col-sm-10">
    <input type="text" class="form-control" name="nombre" id="nombre1" placeholder="Nombre" value="<%=nombre%>">
    </div>
  </div>
  <div class="input-group mb-3">
  <label for="edad1" class="col-sm-2 col-form-label">Edad</label>
    <div class="col-sm-10">
    <input type="text" class="form-control" name="edad" id="edad1"placeholder="Edad" value="<%=edad%>">
    </div>
  </div>
  <div class="input-group mb-3">
  <label for="Direccion1" class="col-sm-2 col-form-label">Direccion</label>
    <div class="col-sm-10">
    <input type="text" class="form-control" name="Direccion" id="Direccion1" placeholder="Direccion" value="<%=Direccion%>">
    </div>
  </div>
  <div class="input-group mb-3">
  <label for="DUI1" class="col-sm-2 col-form-label">DUI</label>
    <div class="col-sm-10">
    <input type="text" class="form-control" name="DUI" id="DUI1" placeholder="DUI" value="<%=DUI%>">
</div>
  </div>
  
            </div>
          </div>
          <div class="btn-group" role="group" aria-label="Basic example">
          <input type="submit" class="btn btn-info" value="Guardar" name="btn">
<input type="submit" class="btn btn-info" value="Actualizar" name="btn">
   <a href="tabla.jsp" class="btn btn btn-secondary">datos</a>
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
      </form>
  </body>
</html>
