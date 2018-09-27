<?php
    include_once '../Aplicacao/PerfilAplicacao.php';
    $form_data = array();
    
    $aplicacao = new PerfilAplicacao();
    $form_data = $aplicacao->BuscaPerfil();
    echo json_encode($form_data);
?>