<!DOCTYPE html>
<html>
  <head>
    <?php 
        include "includes/header.php";
    ?>
    <title>Título da página</title>
	<script src="dist/js/connection/index.script.js"></script>
  </head>
  <body class="text-center">
    <?php 
      include "includes/navbar.php";
      $nmpage = 'IN';
      include 'verificaLogin.php';
      echo "Bem vindo {$_SESSION['nome']}! O seu email é {$_SESSION['usuario']}";
	  ?>
      <?php 
        include "includes/footer.php";
      ?>
  </body>
</html>