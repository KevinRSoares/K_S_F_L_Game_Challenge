<?php
	session_start();
	$_SESSION['usuario'] = null;
	$_SESSION['nome'] = null;
	$_SESSION['email'] = null;
	header('location:../index.php');
?>