
<div class="container">
	<h1>Cadastro de jogador</h1>
	<div id="divMensagem"></div>
	<form id="formCadastroJogador">
		<div class="row">
		<div class="form-group col-xs-5 col-lg-5">
			<label for="inputEmail">Email</label>
			<input type="email" class="form-control" id="inputEmail" name="inputEmail" aria-describedby="emailHelp" placeholder="Informe o seu email">
			<small id="emailHelp" class="form-text text-muted">O email será utilizado como usuário do jogo</small>
		</div>
		</div>
		<div class="row">
		<div class="form-group col-xs-5 col-lg-5">
			<label for="inputNome">Nome</label>
			<input type="text" class="form-control" id="inputNome" name="inputNome" aria-describedby="nomeHelp" placeholder="Informe o seu nome completo">
			<small id="nomeHelpHelp" class="form-text text-muted">O seu nome será utilizado para motivos administrativos</small>
		</div>
		</div>
		<div class="row">
		<div class="form-group col-xs-6 col-lg-5">
			<label for="inputSenha">Senha</label>
			<input type="password" class="form-control" id="inputSenha" name="inputSenha" placeholder="Informe uma senha">
		</div>

		</div>
		<button type="submit" class="btn btn-primary">Registrar</button>
	</form>
</div>