<header>
	<nav class="navbar navbar-expand-lg ">
		<a class="navbar-brand" href="index.php
		<?php 
			if($_SESSION['tipUsu'] == "A")
			{
				echo "?page=Admin";
			}
		?>		
		"><img src="Content/img/Logo.png" height="35px"></a>
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
					<a class="nav-link <?php echo $login ?>" href="index.php?page=Login">Login</a>
				</li>
			<?php 
			}
			else
			{ ?>
				<?php 
					if($_SESSION['tipUsu'] == "A")
					{
				?>			
				<li class="nav-item">
					<a class="nav-link <?php echo $admin ?>" href="index.php?page=Admin">Admin</a>
				</li>			
				<li class="nav-item">
					<a class="nav-link <?php echo $cadastro ?>" href="index.php?page=Cadastrar">Cadastrar</a>
				</li>	
				<?php
					}else{
				?>		
				<li class="nav-item">
					<a class="nav-link <?php echo $rankingn ?>" href="index.php?page=Ranking">Ranking</a>
				</li>						
				<li class="nav-item">
					<a class="nav-link <?php echo $perfil ?>" href="index.php?page=Perfil">Perfil</a>
				</li>
				<li class="nav-item">
					<a class="nav-link <?php echo $sobre ?>" href="index.php?page=Sobre">Sobre</a>
				</li>			
				<?php 
				}
				?>
				<li class="nav-item">
					<a class="nav-link" href="Views/sair.php">Sair</a>
				</li>
			<?php 
			}
			?>


			</ul>
		</div>
	</nav>
</header>