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
      ?>

        <div class="perfil">
         <?php
          $codigo = $_SESSION['codigo'];
          include 'includes/connection.php';

          $conn = new mysqli($servername, $username, $password, $dbname);

          if ($conn->connect_error) {
              die("Erro de conexão: " . $conn->connect_error);
          } 
          $stmt = $conn->prepare( "select NomUSu , NicUsu, EmaUsu, DatNasUsu  from usuario where CodUsu = ? ");
          $stmt->bind_param("i", $codigo); 
          $stmt->execute();
          $stmt->bind_result($nome, $nick, $email, $dataNas);
          //if ($email != '' || null) {
            while($stmt->fetch()){
               echo "<table class='table'>
                    <tr>
                    <td>".$nome."</td>
                    <td>".$nick."</td>
                    </tr>
                    <tr>
                    <td>".$email."</td>
                    <td>".$dataNas."</td>
                    </tr>
                    </table>
                    ";
              
              }
            // output data of each row
               

        //} else {
           // echo "0 RESULTS";
       // }
        $conn->close();

         ?>
        </div>

      <?php 
        include "includes/footer.php";
      ?>
  </body>
</html>
