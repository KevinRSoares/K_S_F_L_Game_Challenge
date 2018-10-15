<?php
    require_once("Connection.class.php");
    include_once '../Dominio/Admin.class.php';
    class AdminAplicacao{
        public function BuscaLog($admLog){
            $connection = new Connection();
            $conn = $connection->getConn();
            $admVetor = [];
            $adm = new Admin();                                 
            $sql = 'Select * From relatoriolog';
            //Select CodUsu,EmaUsu ,NomUsu , SenUsu ,TipUsu from usuario Where EmaUsu = ? and SenUsu = md5(?)
            $stmt = $conn->prepare($sql);
            $stmt->execute();
            if ($stmt->error) {
                $form_data['success'] = false;
                $form_data['erros']  = $stmt->error; 
            } else {
                $result = $stmt->get_result();
                //echo json_encode($result);
                if ($result->num_rows > 0) {
                    $i = 0;
                    $adm = new Admin();                                 
                    while($row = $result->fetch_assoc()) {   
                        
                        $form_data['success'] = true;
                        $adm->DescA = $row["DescricaoLog"];
                        $adm->DtLogIniA = date('d/m/Y', strtotime($row["DthorLog"]));
                        $adm->TipLogA = $row["TipoLog"];
                        $admVetor[] = $adm;
                        $i++;
                    }
                    $form_data["Admin"] = $admVetor;
                }else{
                    $form_data['success'] = false;
                    $form_data['erros']  = 'Dados Inexistentes...'; 
                }

            }
            $conn->close();	

            echo json_encode($form_data);
            die();
        }
    }  
?>