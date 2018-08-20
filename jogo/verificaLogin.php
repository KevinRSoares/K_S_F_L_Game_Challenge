<?php 
	if((!isset ($_SESSION['usuario']) == true))
	{
		unset($_SESSION['usuario']);
		header('location:login.php');
	}else if($pagename = 'ADI' && $_SESSION['perfil'] <> 'A'){
		header('location:404_notFaund.php');
	}
?>