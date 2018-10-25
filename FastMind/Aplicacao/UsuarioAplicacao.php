<?php    
    require_once("Connection.class.php");

    class UsuarioAplicacao
    {    

        public function AdicionarUsuario($Usuario)
        {
            $connection = new Connection();
            $conn = $connection->getConn();
            
            $stmt = $conn->prepare("call Cadastra_Usuario(?, ?, ?, ?, ?, ?)");
            //i   corresponding variable has type integer
            //d   corresponding variable has type double
            //s   corresponding variable has type string
            //b   corresponding variable is a blob and will be sent in packets
            $stmt->bind_param('ssssss', $Usuario->Nome, $Usuario->Email, $Usuario->DtNasc, $Usuario->Nick, $Usuario->Senha, $Usuario->TipUsu);
            //NoUsu EmUsu DtNaUsu NiUsu SeUsu TiUsu 
            // 's' especifica o tipo => 'string'
            $stmt->execute();

            if ($stmt->error) {
                $erros['nome'] = "Erro: " . $conn->error;
                $form_data['success'] = false;
                $form_data['erros']  = $erros; 
                
            } else {
                $result = $stmt->get_result();
                if ($result->num_rows > 0) {
                    if($row = $result->fetch_assoc()) {
                        if($row["Retorno"] == 1){
                            $form_data['success'] = true;
                            $form_data['posted'] = "Usuario Cadastrado com sucesso!";
                        }else{
                            $form_data['success'] = false;
                            $form_data['erros']  = "Email ou NickName já cadastrados!"; 
                        }                        
                    }    
                }            
            }

            $conn->close();	

            echo json_encode($form_data);
            die();
        }

        public function VerificaLogin($email, $senha)
        {
            $connection = new Connection();
            $conn = $connection->getConn();

            $sql = "SELECT * FROM usuario Where EmaUsu = ? and SenUsu = md5(?)";
            //Select CodUsu,EmaUsu ,NomUsu , SenUsu ,TipUsu from usuario Where EmaUsu = ? and SenUsu = md5(?)
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
                        $_SESSION['CodUsu'] = $row["CodUsu"];
                        $_SESSION['email'] = $row["EmaUsu"];
                        $_SESSION['nome'] = $row["NomUsu"];
                        $_SESSION['tipUsu'] = $row["TipUsu"];
                        
                        $form_data['success'] = true;
                        $form_data['tipUsu'] = $row["TipUsu"];

                    }
                    $form_data['posted'] = "Login efetuado com sucesso!";
                } 
                else
                {
                    $erros['email'] = 'usuário ou senha inválidos';
                    $form_data['success'] = false;
                    $form_data['erros']  = $erros;
                }
            }
            $conn->close();	

            echo json_encode($form_data);
            die();
        }
    }
?>