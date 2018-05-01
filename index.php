<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>CINEMAPP</title>
	<link rel="stylesheet" href="ModGeneral/style.css">
</head>
<body>
	<div class="loginBox">
			<img src="ModGeneral/usuario.png" height="128" width="128" class="user">
			<h2>CINEMAPP</h2>
			<form action="ModGeneral/login.php" method="post">
				<p>Usuario</p>
				<input type="text" name="nombre" placeholder="Ingrese el Usuario">
				<p>Contraseña</p>
				<input type="password" name="pass" placeholder="••••••">
				<input type="submit" name="enviar" value="Iniciar Sesión">
				<a href="#">¿Olvidó su contraseña?</a>
			</form>
	</div>
</body>
</html>