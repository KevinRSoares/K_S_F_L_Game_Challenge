<?php
	session_start();
	$_SESSION['usuario'] = null;
	$_SESSION['nome'] = null;
	header('location:../index.php');
?>