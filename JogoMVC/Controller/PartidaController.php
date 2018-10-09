<?php
    include_once '../Aplicacao/PartidaAplicacao.php';
    $form_data = array();
    $aplicacao = new PartidaAplicacao();
    $form_data = $aplicacao->BuscaPartida();
    echo json_encode($form_data);
?>