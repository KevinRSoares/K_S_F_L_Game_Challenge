<?php    
    require_once("Connection.class.php");

    class AdminAplicacao
    {    
        public function BuscarLog($Admin)
        {
            $connection = new Connection();
            $conn = $connection->getConn();
            $adm = new Admin();
            $admVetor = [];            
            
            $stmt = $conn->prepare("Select * from relatorio_log");
            //i   corresponding variable has type integer
            //d   corresponding variable has type double
            //s   corresponding variable has type string
            //b   corresponding variable is a blob and will be sent in packets
            //$stmt->bind_param('ssssss', $Admin->Nome, $Admin->Email, $Admin->DtNasc, $Admin->Nick, $Admin->Senha, $Admin->TipUsu);
            //NoUsu EmUsu DtNaUsu NiUsu SeUsu TiUsu 
            // 's' especifica o tipo => 'string'
            $stmt->execute();

            if ($stmt->error) {
                $form_data['success'] = false;
                $form_data['erros']  = $erros.'-'.$conn->error; 
                
            } else {
                $result = $stmt->get_result();
                if ($result->num_rows > 0) {
                    $i = 0;
                    while($row = $result->fetch_assoc()) {
                        $adm->DescA = $row["DescricaoLog"];
                        $adm->DtLogIniA = $row["DthorLog"];
                        $adm->TipLogA = $row["TipoLog"];
                        $admVetor[$i] = (array) $adm; 
                        $i++;
                    }    
                    echo json_encode($adm);
                }            
            }

            $conn->close();	

            echo json_encode($form_data);
            die();
        }
    }
?>