<?php
    include_once '../Aplicacao/UsuarioAplicacao.php';
    include_once '../Dominio/Usuario.class.php';

    $erros = array(); //Para armazenar os erros
    $form_data = array(); //Para enviar os dados de volta à página
    
    $erros['nome'] = "";
    $erros['email'] = "";
    $erros['senha'] = "";
    $erros['nick'] = "";
    $erros['dtnasc'] = "";
    $tiUsu = "";

    $aplicacao = new UsuarioAplicacao();

    if (empty($_POST['operacao'])) {
		$erros['operacao'] = 'Operacao não foi informada';
    }
    else
    {                
        $operacao = $_POST['operacao'];
        switch($operacao)
        {
            case "VerificarLogin":
                if (empty($_POST['inputEmail'])) {
                    $erros['email'] = 'Você deve informar um email';
                }
            
                if (empty($_POST['inputSenha'])) {
                    $erros['senha'] = 'Você deve informar uma senha';
                }

                $Senha = $_POST['inputSenha'];
                $Email = $_POST['inputEmail'];


                $form_data = $aplicacao->VerificaLogin($Email, $Senha);
                break;
            case "AdicionarUsuario":
                if (empty($_POST['inputEmail'])) {
                    $erros['email'] = 'Você deve informar um email';
                }
            
                if (empty($_POST['inputSenha'])) {
                    $erros['senha'] = 'Você deve informar uma senha';
                }
            
                if (empty($_POST['inputNome'])) {
                    $erros['nome'] = 'Você deve informar um nome';
                }
                if (empty($_POST['inputApelido'])) {
                    $erros['nick'] = 'Você deve informar um Nick';
                }
                if (empty($_POST['inputDtNascimento'])) {
                    $erros['dtnasc'] = 'Você deve informar sua Data de Nascimento';
                }
                if(isset($_POST['inputTipUsu'])){
                    $tiUsu = 'A';
                }else{
                    $tiUsu = 'J';
                }                
            
                $jog = new Usuario();
                $jog->Nome = $_POST['inputNome'];
                $jog->Email = $_POST['inputEmail'];
                $jog->Senha = $_POST['inputSenha'];
                $jog->Nick = $_POST['inputApelido'];
                $jog->DtNasc = $_POST['inputDtNascimento'];
                $jog->TipUsu = $tiUsu;
                
                $form_data = $aplicacao->AdicionarUsuario($jog);
                
                break;
        }
    }

    if (!empty($erros)) { //Se houve erros
		$form_data['success'] = false;
		$form_data['erros']  = $erros;
    }
    
    echo json_encode($form_data);
?>