<div class="container">
    <div class="card">
        <h1>Login</h1>
        <form class="form-signin" id="formLogin">
            <h1 class="h3 mb-3 font-weight-normal">Faça o login para acessar</h1>
            <label for="inputEmail" class="sr-only">Email / Usuário</label>
            <div id="divMensagem"></div>
            <input type="email" id="inputEmail" name="inputEmail" class="form-control" placeholder="Email / Usuário" required autofocus alt="E-mail" title="Digite seu e-mail">
            <br>
            <label for="inputPassword" class="sr-only">Senha</label>
            <input type="password" id="inputSenha" name="inputSenha" class="form-control" placeholder="Senha" required alt="Senha" title="Digite sua senha">
            <div class="esqueci">
                <a href="index.php?page=Esqueci"><small id="esqueci" alt="Recuperar" title="Clique aqui para recuperar sua senha">*Esqueci minha senha</small></a>
            </div>
            <button type="submit" class="btn btn-outline-dark" alt="Botão Entrar" title="Clique aqui para entrar">Entrar</button>
            <button class="btn btn-outline-dark" id="btnRegistrar" type="button" alt="Botão Registrar" title="Clique aqui para registrar-se">Registrar</button>            
        </form>
    </div>
</div>