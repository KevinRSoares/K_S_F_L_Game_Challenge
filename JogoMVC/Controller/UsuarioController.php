<?php
    include_once '../Aplicacao/UsuarioAplicacao.php';
    include_once '../Dominio/Usuario.class.php';

    $erros = array(); //Para armazenar os erros
    $form_data = array(); //Para enviar os dados de volta à página

    $erros['email'] = "";
    $erros['senha'] = "";
    $erros['campos'] = "";
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
                if (empty($_POST['inputEmail']) || empty($_POST['inputSenha']) || empty($_POST['inputNome']) || empty($_POST['inputApelido']) || empty($_POST['inputDtNascimento'])){
                    $erros['campos'] = 'Preencha todos os Campos!!!';
                }
                if(isset($_POST['inputTipUsu'])){
                    $tiUsu = 'A';
                }else{
                    $tiUsu = 'J';
                }                
                if (!empty($erros['campos'])) { //Se houve erros
                    $form_data['success'] = false;
                    $form_data['erros'] = $erros;
                }else{
                    $jog = new Usuario();
                    $jog->Nome = $_POST['inputNome'];
                    $jog->Email = $_POST['inputEmail'];
                    $jog->Senha = $_POST['inputSenha'];
                    $jog->Nick = $_POST['inputApelido'];
                    $jog->DtNasc = $_POST['inputDtNascimento'];
                    $jog->TipUsu = $tiUsu;                    
                    $form_data = $aplicacao->AdicionarUsuario($jog);
                }
                break;
        }
    }

    echo json_encode($form_data);
?>