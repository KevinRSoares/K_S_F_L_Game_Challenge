<?php
    include_once '../Aplicacao/JogadorAplicacao.php';
    include_once '../Dominio/Jogador.class.php';

    $erros = array(); //Para armazenar os erros
    $form_data = array(); //Para enviar os dados de volta à página
    
    $erros['nome'] = "";
    $erros['email'] = "";
    $erros['senha'] = "";

    $aplicacao = new JogadorAplicacao();

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
            case "AdicionarJogador":
                if (empty($_POST['inputEmail'])) {
                    $erros['email'] = 'Você deve informar um email';
                }
            
                if (empty($_POST['inputSenha'])) {
                    $erros['senha'] = 'Você deve informar uma senha';
                }
            
                if (empty($_POST['inputNome'])) {
                    $erros['nome'] = 'Você deve informar um nome';
                }
            
                $jog = new Jogador();
                $jog->Nome = $_POST['inputNome'];
                $jog->Email = $_POST['inputEmail'];
                $jog->Senha = $_POST['inputSenha'];
                
                $form_data = $aplicacao->AdicionarJogador($jog);
                
                break;
        }
    }

    if (!empty($erros)) { //Se houve erros
		$form_data['success'] = false;
		$form_data['erros']  = $erros;
    }
    
    echo json_encode($form_data);
?>