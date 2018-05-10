
<?php

	try
	{
		$base=new PDO("mysql:host=localhost; dbname=cinemapp2", "root", "");

		$base->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

$sql="SELECT * FROM usuarios WHERE nombre= :nombre AND pass= :pass";

		$resultado = $base->prepare($sql);

		$nombre=htmlentities(addslashes($_POST["nombre"]));

		$pass=htmlentities(addslashes($_POST["pass"]));

		$resultado->bindValue(":nombre", $nombre);
		$resultado->bindValue(":pass", $pass);

		$resultado->execute();

		$numero_registro=$resultado->rowCount();

		if($numero_registro != 0)

		{
			session_start();
			$_SESSION["usuario"]=$_POST["nombre"];
			header("location:../../App/App.php");
		}
		else
		{
			header("location:../../index.php");
		}
	}
	catch(Exeption $e)
	{
		die("Error " . $e->getMessage());
	}

?>