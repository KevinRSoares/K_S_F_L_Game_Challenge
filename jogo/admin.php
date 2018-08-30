<!DOCTYPE html>
<html>
	<head>
		<?php 
			include "includes/header.php";			
		?>
		<link href="dist/css/estilo_admin.css" rel="stylesheet" type="text/css"/>		
		<title>Administrador</title>
	</head>
	<body class="text-center">
		<?php 
			$nmpage = 'AD';
			include 'verificaLogin.php';	 
			include "includes/navbar.php";
		?>
		<div class="card">
			<div class="card-header">
				<form id="form-Pesquisa">
					<ul>
						<li>
							<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text" id="inputGroup-sizing-default">Descrição</span>
								</div>	
									<input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
							</div>
						</li>
						<li>
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="inputGroup-sizing-default">Data Inicial</span>
							</div>
							<input type="date" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
						</div>
						</li>
						<li>
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="inputGroup-sizing-default">Data Final</span>
							</div>
							<input type="date" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
						</div>
						</li>
						<li>
						<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text" id="inputGroup-sizing-default">Tipo</span>
								</div>
								<select class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
									<option class="dropdown-item" value="A">Acesso</option>
									<option class="dropdown-item" value="E">Erro</option>
									<option class="dropdown-item" value="C">Cadastro</option>
									<option class="dropdown-item" value="D">Deleção</option>
									<option class="dropdown-item" value="W">Aviso</option>
									<option class="dropdown-item" value="P">Partidas</option>
								</select>							
							</div>
							<div class="input-group mb-3">
								<button type="submit" class="btn btn-outline-dark" alt="Botão Filtrar" title="Clique aqui para filtrar as informações dos Logs do sistema">Filtrar</button>
							</div>
						</li>
					<ul>																				
				</form>
			</div>
			<ul class="list-group list-group-flush">
				<li class="list-group-item">Cras justo odio</li>
				<li class="list-group-item">Dapibus ac facilisis in</li>
				<li class="list-group-item">Vestibulum at eros</li>
			</ul>
			</div>
		<?php
			include "includes/footer.php";
		?>
	</body>
</html>