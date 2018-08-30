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


	if (!empty($erros)) { //Se houve erros
		$form_data['success'] = false;
		$form_data['erros']  = $erros;
	}
	else { //Se não, processa o formulário e retorna

		$email = $_POST['inputEmail'];

		$sql = "SELECT EmaUsu, SenUsu, NomUsu FROM usuario where EmaUsu = ?";
		$stmt = $conn->prepare($sql);
		$stmt->bind_param('s', $email); // 's' especifica o tipo => 'string'

		$stmt->execute();
		if ($stmt->error) {
            $erros['nome'] = "Erro: " . $conn->error;
            $form_data['success'] = false;
            $form_data['erros']  = $erros; 
            
        } else {
        	$result = $stmt->get_result();
			if ($result->num_rows > 0) {
				if($row = $result->fetch_assoc()) {

					
		        	$Nome		= $row["NomUsu"];	
					$Email		= $row["EmaUsu"];	
					$Senha  	= $row["SenUsu"];	

					// Variável que junta os valores acima e monta o corpo do email

					$Vai 		= "Nome: $Nome\n\nE-mail: $Email\n\Senha: $Senha\n";

					require_once("phpmailer/class.phpmailer.php");

					define('GUSER', 'seuemail');	// <-- Insira aqui o seu GMail
					define('GPWD', 'suasenha');		// <-- Insira aqui a senha do seu GMail

					function smtpmailer($para, $de, $de_nome, $assunto, $corpo) { 
						global $error;
						$mail = new PHPMailer();
						$mail->IsSMTP();		// Ativar SMTP
						$mail->SMTPDebug = 01;		// Debugar: 1 = erros e mensagens, 2 = mensagens apenas
						$mail->SMTPAuth = true;		// Autenticação ativada
						$mail->SMTPSecure = 'tsl';	// SSL REQUERIDO pelo GMail
						$mail->Host = 'smtp.gmail.com';	// SMTP utilizado
						$mail->Port = 587;  		// A porta 587 deverá estar aberta em seu servidor
						$mail->Username = GUSER;
						$mail->Password = GPWD;
						$mail->SetFrom($de, $de_nome);
						$mail->Subject = $assunto;
						$mail->Body = $corpo;
						$mail->AddAddress($para);
						if(!$mail->Send()) {
							$error = 'Mail error: '.$mail->ErrorInfo; 
							return false;
						} else {
							$error = "";
							return true;
						}
					}

					// Insira abaixo o email que irá receber a mensagem, o email que irá enviar (o mesmo da variável GUSER), 
					//o nome do email que envia a mensagem, o Assunto da mensagem e por último a variável com o corpo do email.

					 if (smtpmailer('recebedor@dominio.com.br', 'enviador@gmail.com', 'Fast Mind', 'Recuperação de Senha', $Vai)) {


					}
					if (!empty($error))
					{
						print_r($error);
						$erros['EmaUsu'] = 'Usuário não encontrado';
						$form_data['success'] = false;
						$form_data['erros']  = $erros;
					}
					else
					{
						$form_data['success'] = true;
	        			$form_data['posted'] = 'A senha foi enviada para o seu email';
					}			       
				}
			} 
			else
			{
				$erros['EmaUsu'] = 'Usuário não encontrado';
				$form_data['success'] = false;
				$form_data['erros']  = $erros;
			}
		}

        $conn->close();		
	}

	//retorna os dados
	echo json_encode($form_data);
?>