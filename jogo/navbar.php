<div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
    <header class="masthead mb-auto">
        <div class="inner">
            <a class="masthead-brand" href="index.php"><img src="dist/img/logo.png" alt="Logo" title="Logotipo do jogo Genius"></a>
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
						<a class="nav-link" href="cadastro.php" alt="Cadastro" title="Clique aqui iniciar um cadastro novo">Cadastro</a>
					<?php 
					}
					?>					
                <a class="nav-link" href="sobre.php" alt="Botão Sobre" title="Clique aqui para obter mais informações sobre o jogo">Sobre</a>
				<?php 
					if((isset ($_SESSION['usuario']) == true))
					{ ?>
						<a class="nav-link" href="jogo.php" alt="Jogo" title="Clique aqui para entrar na pagina do jogo.">Game</a>
						<a class="nav-link" href="ranking.php" alt="Ranking" title="Clique aqui para entrar na pagina de rankings.">Ranking</a>
						<a class="nav-link" href="perfilJogador.php" alt="Perfil Jogador" title="Clique aqui para entrar na pagina de perfil do Jogador">Perfil</a>
						<a class="nav-link" href="includes/sair.php" alt="Sair" title="Clique aqui para sair do jogo Genius">Sair</a>
					<?php 
					}
		      	?>
            </nav>
        </div>
    </header>