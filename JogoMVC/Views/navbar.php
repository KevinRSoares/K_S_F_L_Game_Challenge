<header>
	<nav class="navbar navbar-expand-lg ">
		<a class="navbar-brand" href="index.php"><img src="Content/img/Logo.png" height="35px" alt="Logo" title="Logo Fastmind"></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
			<?php 
				if((!isset ($_SESSION['email']) == true))
				{
			?>	
				<li class="nav-item">
					<a class="nav-link <?php echo $login ?>" href="index.php?page=Login" alt="Login" title="Página de login">Login</a>
				</li>
			<?php 
			}
			else
			{ ?>
			<li class="nav-item">
				<a class="nav-link <?php echo $cadastro ?>" href="index.php?page=Cadastrar" alt="Cadastrar" title="Clique aqui realizar um cadastro de usuário">Cadastrar</a>
			</li>			
			<li class="nav-item">
				<a class="nav-link <?php echo $rankingn ?>" href="index.php?page=Ranking" alt="Ranking" title="Clique aqui para entrar na página de rankings.">Ranking</a>
			</li>						
			<li class="nav-item">
				<a class="nav-link <?php echo $admin ?>" href="index.php?page=Admin" alt="Administração" title="Clique aqui para acessar a página de administração">Admin</a>
			</li>
			<li class="nav-item">
				<a class="nav-link <?php echo $perfil ?>" href="index.php?page=Perfil" alt="Jogador" title="Clique aqui para entrar na pagina de perfil do Jogador">Perfil</a>
			</li>
			<li class="nav-item">
				<a class="nav-link <?php echo $sobre ?>" href="index.php?page=Sobre" alt="Sobre" title="Clique aqui para obter mais informações sobre o jogo">Sobre</a>
			</li>			
			<li class="nav-item">
				<a class="nav-link" href="Views/sair.php" alt="Sair" title="Clique aqui para sair do jogo Fastmind">Sair</a>
			</li>
			<?php 
			}
			?>


			</ul>
		</div>
	</nav>
</header>