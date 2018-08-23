<!DOCTYPE html>
<html>
  <head>
    <?php 
				include "includes/header.php";
				
    ?>
    <title>Cadastro-Usuário</title>
    <script src="dist/js/connection/cadastrar.script.js"></script>
  </head>
  <body class="text-center">
      <?php 
        include "includes/navbar.php";
      ?>
      <div id="divMensagem"></div>
      <div  class="container-fluid formulario">
        <h1>Cadastro  
		<?php 
			if((isset ($_SESSION['usuario']) == true)){
				if((isset ($_SESSION['perfil']) == true)){
					if($_SESSION['perfil'] == 'A')
					{ ?>
						Administrativo
					<?php 
					}
					?>
				<?php 
				}
				?>
			<?php 
		}else{
		?>
			de Usuário
		<?php 
		}
		?>
		</h1>
        <div id="divMensagem"></div>
        <form id="formCadastroJogador">
			<div class="form-group">
				<small id="emailHelp" class="form-text text-muted">O email será utilizado como usuário do jogo</small>
				<input type="email" class="form-control" id="inputEmail" name="inputEmail" aria-describedby="emailHelp" placeholder="Informe o seu email" >
			</div>
			<div class="form-group">
				<small id="nomeHelpHelp" class="form-text text-muted">O seu nome será utilizado para motivos administrativos</small>          
				<input type="text" class="form-control" id="inputNome" name="inputNome" aria-describedby="nomeHelp" placeholder="Informe o seu nome completo">
			</div>
			<div class="form-group">
				<small id="apelidoHelp" class="form-text text-muted">Seu apelido será utilizado para identificar você ao jogo</small>
				<input type="text" class="form-control" id="inputApelido" name="inputApelido" aria-describedby="apelidoHelp" placeholder="Informe o seu Nick de Usuário">
			</div>
			<div class="form-group">
				<small id="apelidoHelp" class="form-text text-muted">Digite uma senha</small>          
				<input type="password" class="form-control" id="inputSenha" name="inputSenha" placeholder="Informe uma senha">
			</div>
			<div class="form-group">
				<small id="apelidoHelp" class="form-text text-muted">Digite sua data de Nascimento</small>
				<input type="date" class="form-control" id="inputDtNascimento" name="inputDtNascimento" placeholder="Informe sua data de nascimento">
			</div>
			<?php 
				if((isset ($_SESSION['usuario']) == true))
					if((isset ($_SESSION['perfil']) == true))
						if($_SESSION['perfil'] == 'A')
						{ ?>
						<div class="form-group">
							<div class="custom-control custom-checkbox mr-sm-2">
								<input type="checkbox" class="form-check-label" id="inputTipUsu" name="inputTipUsu" checked	>
								<label class="form-check-label" for="customControlAutosizing">Administrador</label>
							</div>  		  
						</div>
			<?php 
				}
			?>			
			<button type="submit" class="btn btn-outline-light" alt="Botão Registrar" title="Clique aqui para registar um novo usuário">Registrar</button>
        </form>
      </div>      
      <?php 
        include "includes/footer.php";
      ?>
  </body>
</html>