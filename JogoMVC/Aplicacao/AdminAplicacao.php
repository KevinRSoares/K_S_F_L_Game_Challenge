<?php    
    require_once("Connection.class.php");

    class AdminAplicacao
    {    
        public function BuscarLog($Admin)
        {
            $connection = new Connection();
            $conn = $connection->getConn();
            
            $stmt = $conn->prepare("call Cadastra_Admin(?, ?, ?, ?, ?, ?)");
            //i   corresponding variable has type integer
            //d   corresponding variable has type double
            //s   corresponding variable has type string
            //b   corresponding variable is a blob and will be sent in packets
            $stmt->bind_param('ssssss', $Admin->Nome, $Admin->Email, $Admin->DtNasc, $Admin->Nick, $Admin->Senha, $Admin->TipUsu);
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
                            $form_data['posted'] = "Admin Cadastrado com sucesso!";
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
    }
?>