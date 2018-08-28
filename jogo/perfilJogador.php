<!DOCTYPE html>
<html>
	<head>
		<?php 
			include "includes/header.php";
			$pagename = 'PER';			
		?>
		<title>Título da página</title>
		<script src="dist/js/connection/index.script.js"></script>
	</head>
	<body class="text-center">
		
				<?php 
					$nmpage = 'PR';
					include 'verificaLogin.php';					
					include "includes/navbar.php";
					$codigo = $_SESSION['codigo'];
					include 'includes/connection.php';

					$conn = new mysqli($servername, $username, $password, $dbname);

					if ($conn->connect_error) {
						die("Erro de conexão: " . $conn->connect_error);
					} 
					$stmt = $conn->prepare( "select NomUSu , NicUsu, EmaUsu, DatNasUsu  from usuario where CodUsu = ? ");
					$stmt->bind_param("i", $codigo); 
					$stmt->execute();
					$stmt->bind_result($nome, $nick, $email, $dataNas);
					//if ($email != '' || null) {
					?>
					<div class="container">
					<div class="row">
					<?php
					while($stmt->fetch()){
						echo	'<div class="card text-left">
										<div class="card-header">
										<h2>Informações</h2>
										</div>
										<div class="card-body">
										<p class="card-text">Nome: '.$nome.'</p>
										<p class="card-text"> Nick: '.$nick.'</p>
										<p class="card-text">Email: '.$email.'</p>
										<p class="card-text">Data de Nascimento: '.$dataNas.'</p>
										</div>
								</div>';
					}
					//$stmt = $conn->prepare( "call jogodb.top10_individual(41);");
					//$stmt->bind_param("i", $codigo); 
					//$stmt->execute();
					//$stmt->bind_result($pontuacao);

					if ($conn->connect_error) {
							    die("Erro de conexão: " . $conn->connect_error);
							} 

							$sql ='call jogodb.top10_individual('.$codigo.')';		
							$result = $conn->query($sql);

							if ($result->num_rows > 0) {
								echo '<div" class="card text-left">
										<div class="card-header">
										<h2>Melhores Pontos</h2>
										</div>';
								// output data of each row
								$i = 1;
								echo '<div class="card-body">';
							    while($row = $result->fetch_assoc()) {
							        echo '<p class="card-text"> '.$i.'ª - '.$row["Ponpar"].'</p>';
									$i++;
							    }
							    echo "</div>
								</div>";
							} else {
							    echo "0 results";
							}
					
					$conn->close();
				?>
				</div>
				</div>

				<?php 
		include "includes/footer.php";
	?>
	</body>
</html>


<!--<table class='table'>
<tr>
<td>".$nome."</td>
<td>".$nick."</td>
</tr>
<tr>
<td>".$email."</td>
<td>".$dataNas."</td>
</tr>
</table>-->