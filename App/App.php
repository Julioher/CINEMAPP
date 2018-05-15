<?php
  $conexion= mysqli_connect("localhost", "root", "", "cinemapp2");
  if (mysqli_connect_errno())
  {
      printf("conexion falló\n", mysqli_connect_error());
      exit();
  }
  mysqli_select_db($conexion, "cinemapp2");
?>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximun-scale=1.0, minimun-scale=1.0">
  <link rel="stylesheet" href="css/estilos.css">
  <link rel="stylesheet" href="css/flexboxgrid.min.css">
  <link rel="stylesheet" href="bootstrap-3.3.7/dist/css/bootstrap.min.css">

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
          <div class="row left-xs">
            <div class="col-xs">
              <nav>

               Iniciar una venta

                <!-- <div class="container"> -->
                  <a href="#formulario" class="btn btn-primary btn-lg" type="button" data-toggle="modal" id="boton">Aquí</a>
                  <div class="modal fade" id="formulario">
                    <div class="modal-dialog">
                      <div class="modal-content">
                         <div class=" modal-header">
                         <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                           <center><h2 class="modal-title" style="color:black;">FORMULARIO</h2></center>
                         </div>
                         <div class="modal-body">
                          <form action="App.php" method="post">
                            <div class="form-group">
                              <select class="form-control" name="pelicula" required>
                                <option value="">Películas</option>
      <?php
        $sql= "SELECT idPelicula, nombre FROM peliculas order by nombre ASC";
        $rec= mysqli_query($conexion, $sql);
        while ($row=mysqli_fetch_row($rec))
        {
          echo "<option value='".$row['0']."'>".$row['1']."</option>";
        }
      ?>
                              </select>
                            </div>

                            <div class="form-group">
                              <select class="form-control" name="usuario" required>
                              <option value="">Usuarios</option>
      <?php
        $sql= "SELECT idUsuario, nombre FROM usuarios order by nombre ASC";
        $rec= mysqli_query($conexion, $sql);
        while ($row=mysqli_fetch_row($rec))
        {
          echo "<option value='".$row['0']."'>".$row['1']."</option>";
        }
      ?>
                              </select>
                            </div>

                            <div class="form-group">
                              <select class="form-control" name="sala" required>
                                <option value="">Salas</option>
      <?php
        $sql= "SELECT idSala, nombre FROM salas order by nombre ASC";
        $rec= mysqli_query($conexion, $sql);
        while ($row=mysqli_fetch_row($rec))
        {
          echo "<option value='".$row['0']."'>".$row['1']."</option>";
        }
      ?>
                              </select>
                            </div>

                            <div class="form-group">
                              <select class="form-control" name="horario" required>
<option value="">Horarios</option>
      <?php
        $sql= "SELECT idHorario, hora FROM horarios order by hora ASC";
        $rec= mysqli_query($conexion, $sql);
        while ($row=mysqli_fetch_row($rec))
        {
          echo "<option value='".$row['0']."'>".$row['1']."</option>";
        }
      ?>
                              </select>
                            </div>

                            <div class="modal-footer">
                              <input type="submit" name="btn-guardar" class="btn btn-primary" value="Guardar">
                            </div>

                          </form>

                           <?php
    if(@$_POST['btn-guardar'])
    {

      $consulta="INSERT INTO ventas (idPelicula, idUsuario, idSala, idHorario, fecha) VALUES('$_POST[pelicula]', '$_POST[usuario]', '$_POST[sala]', '$_POST[horario]', NOW())";
      mysqli_query($conexion, $consulta);
    }
  ?>
                         </div>
                      </div>
                    </div>
                  </div>
                <!-- </div> -->
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
              <a href="#">Salas</a>
              <a href="#">Estrenos</a>
              <a href="#">Géneros</a>
              <a href="#">Contacto</a>
            </div>
          </div>
          <div class="col-xs-12 col-sm-4">
            <div class="logo">CINEMAPP</div>
          </div>
        </div>
		</div>
    <script src="js/jquery.js"></script>
    <script  src="bootstrap-3.3.7/dist/js/bootstrap.min.js"></script>
</body>
</html>