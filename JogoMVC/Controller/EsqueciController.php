<?php
include_once '../Aplicacao/EsqueciAplicacao.php';
include_once '../Dominio/Esqueci.class.php';

    $erros = array(); //Para armazenar os erros
    $form_data = array(); //Para enviar os dados de volta à página
    
    
    $erros['email'] = "";

    $aplicacao = new EsqueciAplicacao();

   

    //$form_data = $aplicacao->Esqueci($Email);
    
    if(empty($_POST['inputEmail'])){
        $erros['email']  = 'Email não informado';
    }else{
        $esq = new Esqueci();
        $esq->EmailE = $_POST['inputEmail'];
        $form_data = $aplicacao->EnviaEmail($esq);
    }
    

    //$jog = new Usuario();
  //  $jog->Email = $_POST['inputEmail'];

  //  if (!empty($erros)) { //Se houve erros
  //    $form_data['success'] = false;
  //    $form_data['erros']  = $erros;
 // }
  
 // echo json_encode($form_data);
  ?>