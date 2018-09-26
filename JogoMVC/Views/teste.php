<?php

	$email = "";
	$senha = "";
	$nome = "";
	$apelido = "";

	require_once("../Aplicacao/Connection.class.php");

				$connection = new Connection();
        		$conn = $connection->getConn();

	if ($conn->connect_error) {
	    die("Erro de conexão: " . $conn->connect_error);
	}

	$erros = array(); 
	$form_data = array(); 

	/* Validação */
	if (empty($_POST['inputEmail'])) {
		$erros['email'] = 'Você deve informar um email';
	}


	if (!empty($erros)) { 
		$form_data['success'] = false;
		$form_data['erros']  = $erros;
	}else { 
        $email = $_POST['inputEmail'];

        $sql = "SELECT email, senha, nome FROM jogador where email = ?";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param('s', $email); 

        $stmt->execute();
        if ($stmt->error) {
            $erros['nome'] = "Erro: " . $conn->error;
            $form_data['success'] = false;
            $form_data['erros']  = $erros; 
            
        } else {
            $result = $stmt->get_result();
            if ($result->num_rows > 0) {
                if($row = $result->fetch_assoc()) {              
                    $Nome	= $row["nome"];	
                    $Email	= $row["email"];	
                    $Senha  = $row["senha"];
                    $Recuperacao = "Nome: $Nome<br>E-mail: $Email<br>Senha: $Senha";
                    require_once('../phpmailer/class.phpmailer.php');
                            
                        $mail = new PHPMailer();

                        $mail->IsSMTP();

                        $mail->CharSet = 'UTF-8';
                        $mail->Port = '465'; // Portal SSL Gmail
                        $mail->Host = 'smtp.gmail.com'; 
                        $mail->IsHTML(true); 
                        $mail->Mailer = 'smtp'; 
                        $mail->SMTPSecure = 'ssl';

                        $mail->SMTPAuth = true; 
                        $mail->Username = 'email@gmail.com'; // Email do Usuário
                        $mail->Password = 'senha'; // Senha do Gmail

                        $mail->SingleTo = true; 


                        $mail->From = 'email@gmail.com'; 
                        $mail->FromName = "JOGO - Recuperação de Senha";

                        $mail->addAddress($Email);

                        $mail->Subject = "Recuperação de Senha"; 
                        $mail->Body = $Recuperacao;

                        if(!$mail->Send()){
                            echo "Erro ao enviar Email: " . $mail->ErrorInfo;
                        }
                    }
                }
            }

                $conn->close();		
	}

	echo json_encode($form_data);
?>