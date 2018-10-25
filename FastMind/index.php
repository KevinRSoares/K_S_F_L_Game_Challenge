<?php
    if(!isset($_GET['page']))
        $page = "Jogo";
    else
        $page = $_GET['page'];

    switch($page)
    {
        case 'Jogo':
            $script = "jogo";
            $titulo = "FastMind";
            $jogo = " active";
            break;
        case 'Cadastrar':
            $script = "cadastrar";
            $titulo = "Cadastro de jogador";
            $cadastro = " active";
            break;
        case 'Login':
        default:
            $script = "login";
            $titulo = "Login";
            $login = " active";
            break;

        case 'Admin':
            $script = "admin";
            $titulo = "Admin";
            $admin = " active";
            break;
        case 'Ranking':
            $script = "ranking";
            $titulo = "Ranking";
            $rankingn = " active";
            break;       
        case 'Perfil':
            $script = "perfil";
            $titulo = "Perfil";
            $perfil = " active";
            break;                        
        case 'Sobre':
            $script = "sobre";
            $titulo = "Sobre";
            $sobre = " active";
            break;   
        case 'Esqueci':
            $script = "esqueci";
            $titulo = "Esqueci";
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
        ?>
        </div>
        <?php
            include 'Views/footer.php';
        ?>      
	</body>
</html>