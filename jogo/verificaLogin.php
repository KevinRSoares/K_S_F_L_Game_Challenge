<?php 
	if((!isset ($_SESSION['usuario']) == true))
	{
		unset($_SESSION['usuario']);
		header('location:login.php');
	}else if($nmpage == 'AD' && $_SESSION['perfil'] != 'A'){
		header('location:404_notFaund.php');
	}
?>