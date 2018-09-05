<div class="container">
    <div class="card">
        <h1>Login</h1>
        <form class="form-signin" id="formLogin">
            <div id="divMensagem"></div>
            <h1 class="h3 mb-3 font-weight-normal">Faça o login para acessar</h1>
            <label for="inputEmail" class="sr-only">Email / Usuário</label>
            <input type="email" id="inputEmail" name="inputEmail" class="form-control" placeholder="Email / Usuário" required autofocus>
            <br>
            <label for="inputPassword" class="sr-only">Senha</label>
            <input type="password" id="inputSenha" name="inputSenha" class="form-control" placeholder="Senha" required>
            <div class="esqueci">
                <a href="esqueci.php"><small id="esqueci">*Esqueci minha senha</small></a>
            </div>
            <button type="submit" class="btn btn-outline-dark" alt="Botão Entrar" title="Clique aqui para entrar">Entrar</button>
		    <button class="btn btn-outline-dark" id="btnRegistrar" type="button" alt="Botão Registrar" title="Clique aqui para registrar-se">Registrar</button>            
        </form>
    </div>
</div>