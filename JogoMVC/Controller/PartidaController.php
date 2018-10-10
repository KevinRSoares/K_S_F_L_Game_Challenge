<?php
    include_once '../Aplicacao/PartidaAplicacao.php';
    $form_data = array();
    $aplicacao = new PartidaAplicacao();
    $UsuCod = $_POST['UsuCod'];
    echo '<h1>'.$UsuCod.'<h1>'; 
    $form_data = $aplicacao->GravaPartida($UsuCod);
    echo json_encode($form_data);
?>