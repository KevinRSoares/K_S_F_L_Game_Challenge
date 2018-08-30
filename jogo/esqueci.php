<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8"/>
    <script type="text/javascript" src="dist/js/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="dist/js/util.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link href="dist/css/estilo.css" rel="stylesheet" type="text/css"/>
    <link rel="icon" type="imagem/png" href="dist/img/drag - L4.png" />
    <title>Cadastro de jogador</title>
    <script src="dist/js/esqueci.script.js"></script>
  </head>
  <body class="text-center">

    <?php 
    include 'navbar.php' 
    ?>
    <div class="text-center" style="padding-right: 30%;padding-left: 30%;">
      <div class="container-fluid">
        <div id="divMensagem"></div>
        <form class="form-signin" id="formEsqueci">
          <img class="mb-4" src="img/logo.png" alt="" width="72" height="72">
          <h1 class="h3 mb-3 font-weight-normal">Recuperação de senha</h1>
          <h1 class="h6 mb-3 font-weight-normal">Informe seu email para receber a sua senha</h1>
          <label for="inputEmail" class="sr-only">Email</label>
          <input type="email" id="inputEmail" name="inputEmail" class="form-control" placeholder="Email" required autofocus>
          <button class="btn btn-outline-light btn-block btnConfirmarEmail" type="submit">Confirmar</button>
      </form>
      </div>
    </div>
     <?php 
        include "includes/footer.php";
      ?>
  </body>
</html>



