<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
  <meta charset="utf-8">
  <title>Gobierno de el Salvador</title>
  <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
  <link rel="stylesheet" href="css/estilo.css" type="text/css">
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
                <form id="dui-form" action="/index.php" method="post">
                  <div class="input-group mb-3">
                    <input type="text" class="form-control light-grey" id="dui" name="dui" style="background-color: #f2f2f2;" placeholder="Ingresa tu número de DUI">
                    <div class="input-group-append">
                      <button class="btn btn-success" type="submit">CONSULTAR</button>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>

      </div>
    </section>
    <footer>
      <div id="footer-wrapper">
        <div id="bottom-wrapper" class="text-center">
          <div class="container">
            <div class="row">
              <div class="col">
                <p>El apoyo económico brindado por el Gobierno de El Salvador está dirigido a personas afectadas por la pandemia del COVID-19. Dicho beneficio corresponde a $300 por vivienda.</p>
              </div>
            </div>
          </div>
        </div>
        <div id="copyright-wrapper">
          <div class="container">
            <div class="row pt-3">
              <div class="col text-left">
                <p>© Copyright 2020. Presidencia de la República de El Salvador.</p>
              </div>
              <div class="col text-right">
                <div class="redes">
                  <ul>
                    <li>
                      <a href="https://www.presidencia.gob.sv/contactenos/" target="_blank">
                        <span></span>
                        <span></span>
                        <span></span>
                        <span></span>
                        <span class="fa fa-envelope-open" aria-hidden="true"></span>
                      </a>
                    </li>
                    <li>
                      <a href="https://www.facebook.com/PresidenciaSV" target="_blank">
                        <span></span>
                        <span></span>
                        <span></span>
                        <span></span>
                        <span class="fa fa-facebook-official" aria-hidden="true"></span>
                      </a>
                    </li>
                    <li>
                      <a href="https://twitter.com/presidenciasv" target="_blank">
                        <span></span>
                        <span></span>
                        <span></span>
                        <span></span>
                        <span class="fa fa-twitter-square" aria-hidden="true"></span>
                      </a>
                    </li>
                    <li>
                      <a href="https://www.instagram.com/presidenciasv/" target="_blank">
                        <span></span>
                        <span></span>
                        <span></span>
                        <span></span>
                        <span class="fa fa-instagram" aria-hidden="true"></span>
                      </a>
                    </li>

                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </footer>
</body>

</html>
