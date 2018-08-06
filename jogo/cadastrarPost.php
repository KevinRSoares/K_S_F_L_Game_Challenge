<?php
	$nome = "";
	$email = "";
	$nick = "";
	$senha = "";
	$dtNas = "";
	$tipUsu = "";
	

	include 'includes/connection.php';

	$conn = new mysqli($servername, $username, $password, $dbname);

	if ($conn->connect_error) {
	    die("Erro de conexão: " . $conn->connect_error);
	}

	$erros = array(); //Para armazenar os erros
	$form_data = array(); //Para enviar os dados de volta à página

	/* Validação */
	if (empty($_POST['inputEmail'])) {
		$erros['email'] = 'Você deve informar um Email';
	}
	if (empty($_POST['inputNome'])) {
		$erros['nome'] = 'Você deve informar seu Nome Completo';
	}

	if (empty($_POST['inputSenha'])) {
		$erros['senha'] = 'Você deve informar uma Senha';
	}

	if (empty($_POST['inputApelido'])) {
		$erros['nick'] = 'Você deve informar um NickName';
	}
	if (empty($_POST['inputDtNascimento'])) {
		$erros['dtNas'] = 'Você deve informar sua data de nascimento';
	}	
	if ($_POST['inputTipUsu'] == 'on') {
		$tipUsu = 'A';
	}else{
		$tipUsu = 'J';
	}
	if (!empty($erros)) { //Se houve erros
		$form_data['success'] = false;
		$form_data['erros']  = $erros;
	}else { //Se não, processa o formulário e retorna

		$nome = $_POST['inputNome'];
		$email = $_POST['inputEmail'];
		$nick = $_POST['inputApelido'];
		$senha = $_POST['inputSenha'];
		$dtNas = $_POST['inputDtNascimento'];

		$stmt = $conn->prepare("call Cadastra_Usuario(?, ?, ?, ?, ?, ?)");
        //i   corresponding variable has type integer
        //d   corresponding variable has type double
        //s   corresponding variable has type string
        //b   corresponding variable is a blob and will be sent in packets
        $stmt->bind_param('ssssss',$nome, $email, $nick, $senha, $dtNas, $tipUsu); // 's' especifica o tipo => 'string'
        $stmt->execute();

        if ($stmt->error) {
            $erros['nome'] = "Erro: " . $conn->error;
            $form_data['success'] = false;
            $form_data['erros']  = $erros; 
            
        } else {
            $form_data['success'] = true;
            $form_data['posted'] = 'Usuário cadastrado com sucesso! Bora jogar!';
        }

        $conn->close();		
	}

	//retorna os dados
	echo json_encode($form_data);
?>