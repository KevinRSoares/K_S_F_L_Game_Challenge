<!DOCTYPE html>
<html>
	<head>
		<?php 
			include "includes/header.php";
		?>
		<title>Jogo</title>
		<script type="text/javascript" src="dist/js/script.js"></script>
	</head>
	<body onload="startGame()">
		<?php 
			include 'verificaLogin.php';	
			include "includes/navbar.php";
		?>
		<div class="container">
			<div class="card text-white bg-primary mb-3" style="max-width: 18rem;">
				<div class="card-header">Placar: <span id="placar">0000</span></div>
			</div>
		</div>
		<h1>Posição X:<span id="xp">0</span></h1>
		<h1>Posição Y:<span id="yp">0</span></h1>
		<?php 
			include "includes/footer.php";
		?>    	
	</body>
</html>
