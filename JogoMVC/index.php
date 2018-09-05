<?php
    if(!isset($_GET['page']))
        $page = "Jogo";
    else
        $page = $_GET['page'];

    switch($page)
    {
        case 'Jogo':
            $script = "jogo";
            $titulo = "Meu Jogo";
            break;
        case 'Cadastrar':
            $script = "cadastrar";
            $titulo = "Cadastro de jogador";
            break;
        case 'Login':
        default:
            $script = "login";
            $titulo = "Login";
            break;
    }
?>

<!DOCTYPE html>
<html>
	<head>
		<?php include 'Views/header.php' ?>
		<title>MEU GAME - <?php echo $titulo ?></title>
		<script src="Content/js/<?php echo $script ?>.script.js"></script>
	</head>
	<body>
        <?php 
            include 'Views/verificaLogin.php';
            include 'Views/navbar.php';
            include 'Views/'.$script.'.php';
        ?>
	</body>
</html>