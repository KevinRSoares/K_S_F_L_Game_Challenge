<?php
    require_once("Connection.class.php");
    include_once '../Dominio/Partida.class.php';
    class PartidaAplicacao{
        public function GravaPartida($UsuCod){
            $connection = new Connection();
            $conn = $connection->getConn();
            $Partida = new Partida();
            //$sql = "";
            $sql = "call Inicia_Partida(?)";
            //Select CodUsu,EmaUsu ,NomUsu , SenUsu ,TipUsu from usuario Where EmaUsu = ? and SenUsu = md5(?)
            $stmt = $conn->prepare($sql);
            $stmt->bind_param('i', $UsuCod);
            
            $stmt->execute();
            if ($stmt->error) {
                $form_data['success'] = false;
                $form_data['erros']  = $erros; 
                
            } else {
                $result = $stmt->get_result();
                if ($result->num_rows > 0) {
                    $i = 0;
                    while($row = $result->fetch_assoc()) {
                        $form_data['success'] = true;
                        $Partida->PartidaP = $row["CoPar"];
                    }
                    $form_data["Partida"] = $Partida;
                } 
                else
                {
                    $form_data['success'] = false;
                    $form_data['erros']  = $erros;
                }
            }            
            $conn->close();	

            echo json_encode($form_data);
            die();
        }
        public function FinalizaPausaPartida($ParCod,$ParPon){
            $connection = new Connection();
            $conn = $connection->getConn();
            $Partida = new Partida();
            //$sql = "";
            $sql = "call Finaliza_Pausa_Partida(?,?)";
            //Select CodUsu,EmaUsu ,NomUsu , SenUsu ,TipUsu from usuario Where EmaUsu = ? and SenUsu = md5(?)
            $stmt = $conn->prepare($sql);
            $stmt->bind_param('ii', $ParCod,$ParPon);
            
            $stmt->execute();
            if ($stmt->error) {
                $form_data['success'] = false;
                $form_data['erros']  = $erros; 
                
            } else {
                $result = $stmt->get_result();
                if ($result->num_rows > 0) {
                    $i = 0;
                    while($row = $result->fetch_assoc()) {
                        $form_data['success'] = true;
                        $Partida->PartidaP = $row["CoPar"];
                    }
                    $form_data["Partida"] = $Partida;
                    echo json_encode($Partida);
                } 
                else
                {
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