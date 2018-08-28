<!DOCTYPE html>
<html>
	<head>
		<?php 
			include "includes/header.php";			
		?>
		<title>Administrador</title>
	</head>
	<body class="text-center">
		<?php 
			$nmpage = 'AD';
			include 'verificaLogin.php';	 
			include "includes/navbar.php";
		?>
		<table class="card text-center">
			<!--Filtros de Pesquisa-->
			<tr class="card-header">			
				<form id="form-Pesquisa">
					<th>
						<div class="input-group input-group-sm mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="inputGroup-sizing-sm">Descrição</span>
							</div>
							<input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
						</div>
					</th>
					<th>
						<div class="input-group input-group-sm mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="inputGroup-sizing-sm">Data de Inicio</span>
							</div>
							<input type="date" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
						</div>
					</th>
					<th>
						<div class="input-group input-group-sm mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="inputGroup-sizing-sm">Data Final</span>
							</div>
							<input type="date" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
						</div>
					</th>
					<th>
						<div class="input-group input-group-sm mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="inputGroup-sizing-sm">Tipo</span>
							</div>
							<input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
						</div>
					</th>	
					<th>
						<button type="submit" class="btn btn-outline-dark" alt="Botão Filtrar" title="Clique aqui para filtrar as informações dos Logs do sistema">Filtrar</button>
					</th>							
				</form>
			</tr>
			<!--Filtros de Pesquisa-->
			<!--Resultados de Pesquisa-->	
			<tr calss="card-body">
				<td><p>Teste Body</P></td>
				<td><p>Teste Body</P></td>
				<td><p>Teste Body</P></td>
				<td><p>Teste Body</P></td>
			</tr>						
			<!--Resultados de Pesquisa-->
		</table>		
		<?php
			include "includes/footer.php";
		?>
	</body>
</html>