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

        case 'Admin':
            $script = "admin";
            $titulo = "Admin";
            break;
        case 'Ranking':
            $script = "ranking";
            $titulo = "Ranking";
            break;            

        case 'Sobre':
            $script = "sobre";
            $titulo = "Sobre";
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
        <div class="body">
        <?php 
            include 'Views/verificaLogin.php';
            include 'Views/navbar.php';
            include 'Views/'.$script.'.php';
            include 'Views/footer.php';
        ?>
        </div>
	</body>
</html>