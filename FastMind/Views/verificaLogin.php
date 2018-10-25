<?php 
	if((!isset ($_SESSION['email']) == true) && $page != "Login" && $page != "Cadastrar" && $page != "Esqueci")
	{
		unset($_SESSION['email']);
		header('location:index.php?page=Login');
	}
?>