<?php
    require_once("Connection.class.php");
    include_once '../Dominio/Admin.class.php';
    class AdminAplicacao{
        public function BuscaLog($admLog){
            $connection = new Connection();
            $conn = $connection->getConn();
            $adm = new Admin();
            $admVetor = [];
            
            $sql = 'Select * From log';
            //Select CodUsu,EmaUsu ,NomUsu , SenUsu ,TipUsu from usuario Where EmaUsu = ? and SenUsu = md5(?)
            $stmt = $conn->prepare($sql);
            
            $stmt->execute();
            if ($stmt->error) {
                $form_data['success'] = false;
                $form_data['erros']  = $stmt->error; 
            
            } else {
                $result = $stmt->get_result();
                if ($result->num_rows > 0) {
                    $i = 0;
                    while($row = $result->fetch_assoc()) {
                        $form_data['success'] = true;
                        $adm->DescA = $row["DesLog"];
                        $adm->DtLogIniA = date('d/m/Y', strtotime($row["DatHorLog"]));
                        $adm->TipLogA = $row["TipLog"];
                        $admVetor[$i] = $adm;
                        //echo json_encode($admVetor[$i]);
                        $i++;
                    }
                    $form_data["Admin"] = $admVetor;
                }
            }
            $conn->close();	

            echo json_encode($form_data);
            die();
        }
    }  
?>