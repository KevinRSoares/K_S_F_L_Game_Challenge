		<header>
			<nav class="navbar navbar-expand-lg ">
			  <a class="navbar-brand" href="index.php"><img src="Content/img/Logo.png" height="35px"></a>
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
			      	<a class="nav-link" href="index.php?page=Login">Login</a>
			      </li>
			       <li class="nav-item">
			        <a class="nav-link" href="index.php?page=Cadastrar">Cadastrar</a>
			      </li>
						<?php 
					}
					else
					{ ?>
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