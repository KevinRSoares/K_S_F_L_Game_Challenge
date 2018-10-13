<?php
    include_once '../Aplicacao/PartidaAplicacao.php';
    $form_data = array();
    $aplicacao = new PartidaAplicacao();
    $UsuCod = $_POST['UsuCod'];
    $ParPon = $_POST['ParPon'];
    $ParCod = $_POST['CodPar'];
    $TipOpe = $_POST['TipOpe'];
    if($TipOpe == 'G'){
        $form_data = $aplicacao->GravaPartida($UsuCod);
    }else{
        $form_data = $aplicacao->FinalizaPausaPartida($ParCod,$ParPon);
    }
    echo json_encode($form_data);
?>