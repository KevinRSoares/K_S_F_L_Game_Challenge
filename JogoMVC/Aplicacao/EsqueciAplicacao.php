<?php
require_once("Connection.class.php");

class EsqueciAplicacao{
	public function EnviaEmail($Esqueci){
		$connection = new Connection();
		$conn = $connection->getConn();
		if ($conn->connect_error) {
			die("Erro de conexão: " . $conn->connect_error);
		}
		$erros = array(); 
		$form_data = array(); 
		//echo '<h1>'.$Esqueci->EmailE.'</h1>';
		/* Validação */
		if (empty($Esqueci->EmailE)) {
			$erros['email'] = 'Você deve informar um email';
		}
		if (!empty($erros)) { 
			$form_data['success'] = false;
			$form_data['erros']  = $erros;
		}
		else { 
			
			$email = $Esqueci->EmailE;
			
			$sql = "SELECT * FROM Usuario Where EmaUsu = ?";
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
						$Codigo = $row["CodUsu"];	
						$Nome	= $row["NomUsu"];	
						$Email	= $row["EmaUsu"];
						$Senha = '';	
						$num = 0;
						for( $i= 0; $i < 4;$i++){
							$num = rand (1 , 9);
							$Senha = $Senha.(string)$num;
						}
						$this->Atualiza_Senha($Codigo,$Senha);
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
						$mail->Username = 'fastmnd@gmail.com'; // Email do Usuário
						$mail->Password = 'fastmind20'; // Senha do Gmail

						$mail->SingleTo = true; 


						$mail->From = 'fastmnd@gmail.com'; 
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

	}
	public function Atualiza_Senha($Usuario,$SenUsu)
	{		
		$connection = new Connection();
		$conn = $connection->getConn();
		$stmt = $conn->prepare("call esqueci_senha(?,?)");
		//i   corresponding variable has type integer
		//d   corresponding variable has type double
		//s   corresponding variable has type string
		//b   corresponding variable is a blob and will be sent in packets
		$stmt->bind_param('is', $Usuario, $SenUsu);
		//NoUsu EmUsu DtNaUsu NiUsu SeUsu TiUsu 
		// 's' especifica o tipo => 'string'
		$stmt->execute();
		$conn->close();		
	}	
}
?>
