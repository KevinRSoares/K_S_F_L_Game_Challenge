<div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
    <header class="masthead mb-auto">
        <div class="inner">
            <a class="masthead-brand" href="index.php"><img src="dist/img/logo.png"></a>
            <nav class="nav nav-masthead justify-content-center">
				<?php 
					if((isset ($_SESSION['usuario']) == true)){
						if((isset ($_SESSION['perfil']) == true)){
							if($_SESSION['perfil'] == 'A')
							{ ?>
									<a class="nav-link" href="admin.php">Admin</a>
									<a class="nav-link" href="cadastro.php">Cadastro</a>
							<?php 
								}
							?>
						<?php 
						}
						?>
					<?php 
					}else{
					?>
						<a class="nav-link" href="cadastro.php">Cadastro</a>
					<?php 
					}
					?>					
                <a class="nav-link" href="sobre.php">Sobre</a>
				<?php 
					if((isset ($_SESSION['usuario']) == true))
					{ ?>
						<a class="nav-link" href="jogo.php">Game</a>
						<a class="nav-link" href="ranking.php">Ranking</a>
						<a class="nav-link" href="perfilJogador.php">Perfil</a>
						<a class="nav-link" href="includes/sair.php">Sair</a>
					<?php 
					}
		      	?>
            </nav>
        </div>
    </header>