<?php
    include_once '../Aplicacao/PerfilAplicacao.php';
    $form_data = array();
    $aplicacao = new PerfilAplicacao();
    $UsuCod = $_POST['UsuCod'];
    $form_data = $aplicacao->BuscaPerfil($UsuCod);
    echo json_encode($form_data);
?>