<?php
    include_once '../Aplicacao/AdminAplicacao.php';
    include_once '../Dominio/Admin.class.php';

    $erros = array(); //Para armazenar os erros
    $form_data = array(); //Para enviar os dados de volta à página
    
    $erros['descricao'] = "";
    $erros['dataIni']   = "";
    $erros['dataFim']   = "";
    $erros['tipLog']    = "";

    $aplicacao = new AdminAplicacao();

    //inputDescricao
    //inputDataIni
    //inputDataFim
    //selectTipo               
    $admLog = new Admin();
    $admLog->DescA = $_POST['inputDescricao'];
    $admLog->DtLogIniA = $_POST['inputDataIni'];
    $admLog->DtLogFimA = $_POST['inputDataFim'];
    $admLog->TipLogA = $_POST['selectTipo'];
    
    $form_data = $aplicacao->BuscaLog($admLog);

    if (!empty($erros)) { //Se houve erros
		  $form_data['success'] = false;
		  $form_data['erros']  = $erros;
    }
    
    echo json_encode($form_data);
?>