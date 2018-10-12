<meta charset="UTF-8">

<script src="Content/js/jquery-3.3.1.js"></script>
<script src="Content/js/bootstrap.min.js"></script>		
<script src="Content/js/util.js"></script>
<script src="Content/js/facebook.js"></script>
<link rel="stylesheet" type="text/css" href="Content/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="Content/css/main.css">
<link rel="icon" type="imagem/png" href="Content/img/logo.png" />
<?php 
    if($script == "jogo"){
?>
        <link rel="stylesheet" type="text/css" href="Content/css/jogo.css">
<?php         
    }
    session_start();
?>
<meta property="og:description" content="Joguei Fast Mind e minha pontuação foi <?php echo $_SESSION['GPon'] ?>!!! Venha Jogar também :D">