<?php
    include_once '../Aplicacao/RankingAplicacao.php';
    $form_data = array();
    $aplicacao = new RankingAplicacao();
    $form_data = $aplicacao->BuscaRanking();
    echo json_encode($form_data);
?>