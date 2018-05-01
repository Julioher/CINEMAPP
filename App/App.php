<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximun-scale=1.0, minimun-scale=1.0">
	<link rel="stylesheet" href="css/flexboxgrid.min.css">
	<link rel="stylesheet" href="css/estilos.css">
	<title>CINEMAPP</title>
</head>
<body>

  <?php
    session_start();
    if(!isset($_SESSION["usuario"]))
    {
     header("location:../index.php");
    }
  ?>

	<header>
      <div class="logo-menu">
        <div class="container">
          <div class="row middle-xs between-xs">
            <div class="logo col-xs-12 col-sm-4 center-xs start-sm"><h2>CINEMAPP</h2></div>
            <nav class="menu col-xs-12 col-sm-8 center-xs end-sm">
              <a href="">Inicio</a>
              <a href="">Iniciar Sesión</a>

              <?php
                echo "Hola ".$_SESSION["usuario"];
              ?>
              <a href=""> <img src='../ModGeneral/img/user.png' width="50px" ></a>
              <a href="../ModGeneral/php/cerrar_sesion.php">Cerrar Sesión</a>

            </nav>
          </div>
        </div>
      </div>

      <div class="submenu">
        <div class="container">
          <div class="row center-xs">
            <div class="col-xs">
              <nav>
                <a href="#">Populares</a>
                <a href="#">Recientes</a>
                <a href="#">Favoritos</a>
              </nav>
            </div>
          </div>
        </div>
      </div>
    </header>

    <div class="main">
      <div class="container">
        <div class="row around-xs">
          <div class="thumb col-xs-6 col-sm-4 col-md-3 ">
            <img src="https://lab.eldiario.es/estaticos/oscar2018/coco-400x400.jpg" alt="">
          </div>

          <div class="thumb col-xs-6 col-sm-4 col-md-3 ">
            <img src="http://image.blingee.com/images17/content/output/000/000/000/65f/566276335_754370.gif?4" alt="">
          </div>

          <div class="thumb col-xs-6 col-sm-4 col-md-3 ">
            <img src="https://www.revistanuve.com/wp-content/uploads/2015/12/titanic-the-exhibition-thumb-400x400.jpg" alt="">
          </div>

          <div class="thumb col-xs-6 col-sm-4 col-md-3 ">
            <img src="http://image.blingee.com/images18/content/output/000/000/000/75d/717800285_701760.gif?4" alt="">
          </div>

          <div class="thumb col-xs-6 col-sm-4 col-md-3 ">
            <img src="http://www.carolina.cl/static/2015/04/star-wars-400x400.jpeg" alt="">
          </div>

          <div class="thumb col-xs-6 col-sm-4 col-md-3 ">
            <img src="https://fthmb.tqn.com/pRnXWU6df4UflP750NOn8QmWYIo=/400x400/filters:no_upscale()/50-sombras-de-Grey-tie-edition-Vintage-espannol2-597bc1b45f9b58928bda267f.JPG" alt="">
          </div>

          <div class="thumb col-xs-6 col-sm-4 col-md-3 ">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1V3CJBU5Fg3Z25aBDUZMhF2JMdusYu4_pdnWxwb-0yhhfckUihg" alt="">
          </div>

          <div class="thumb col-xs-6 col-sm-4 col-md-3 ">
            <img src="https://cdn.tutsplus.com/ae/uploads/2013/11/Aetuts_Preview_300_Rise_of_an_Empire_400x400.png" alt="">
          </div>
        </div>
      </div>
    </div>

    <footer>
      <div class="container">
        <div class="row middle-xs between-xs">
          <div class="col-xs-12 col-sm-4">
            <div class="nav">
              <a href="#">Inicio</a>
              <a href="#">Trabajos</a>
              <a href="#">Terminos y Condiciones</a>
              <a href="#">Contacto</a>
            </div>
          </div>

          <div class="col-xs-12 col-sm-4">
            <div class="logo">CINEMAPP</div>
          </div>
        </div>
		</div>
</body>
</html>