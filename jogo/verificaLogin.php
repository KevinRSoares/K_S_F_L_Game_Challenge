<?php 
	if((!isset ($_SESSION['usuario']) == true))
	{
		unset($_SESSION['usuario']);
		header('location:login.php');
	}
?>