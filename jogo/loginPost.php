<?php

	$email = "";
	$senha = "";
	$nome = "";
	$apelido = "";

	include 'includes/connection.php';

	$conn = new mysqli($servername, $username, $password, $dbname);

	if ($conn->connect_error) {
	    die("Erro de conexão: " . $conn->connect_error);
	}

	$erros = array(); //Para armazenar os erros
	$form_data = array(); //Para enviar os dados de volta à página

	/* Validação */
	if (empty($_POST['inputEmail'])) {
		$erros['email'] = 'Você deve informar um email';
	}

	if (empty($_POST['inputSenha'])) {
		$erros['senha'] = 'Você deve informar uma senha';
	}


	if (!empty($erros)) { //Se houve erros
		$form_data['success'] = false;
		$form_data['erros']  = $erros;
	}
	else { //Se não, processa o formulário e retorna

		$email = $_POST['inputEmail'];
		$senha = $_POST['inputSenha'];

		$sql = "Select EmaUsu ,NomUsu , SenUsu ,TipUsu from usuario Where EmaUsu = ? and SenUsu = ?";
		$stmt = $conn->prepare($sql);
		$stmt->bind_param('ss', $email, $senha); // 's' especifica o tipo => 'string'

		$stmt->execute();
		if ($stmt->error) {
            $erros['nome'] = "Erro: " . $conn->error;
            $form_data['success'] = false;
            $form_data['erros']  = $erros; 
            
        } else {
        	$result = $stmt->get_result();
			if ($result->num_rows > 0) {
				if($row = $result->fetch_assoc()) {

					session_start([
					    'cookie_lifetime' => 86400,
					]);
			        $_SESSION['usuario'] = $row["EmaUsu"];
			        $_SESSION['nome'] = $row["NomUsu"];
			        $_SESSION['perfil'] = $row["TipUsu"];

			        
			        $form_data['success'] = true;
	        		$form_data['posted'] = 'Login feito com sucesso';
				}
			} 
			else
			{
				$erros['email'] = 'usuário ou senha inválidos';
				$form_data['success'] = false;
				$form_data['erros']  = $erros;
			}
		}

        $conn->close();		
	}

	//retorna os dados
	echo json_encode($form_data);
?>