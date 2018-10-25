<?php
    require_once("Connection.class.php");
    include_once '../Dominio/Ranking.class.php';
    class RankingAplicacao{
        public function BuscaRanking(){
            $connection = new Connection();
            $conn = $connection->getConn();
            $ran = new Ranking();
            $ranVetor = [];
            
            //$sql = "";
            $sql = "Select * from rankinggeral";
            //Select CodUsu,EmaUsu ,NomUsu , SenUsu ,TipUsu from usuario Where EmaUsu = ? and SenUsu = md5(?)
            $stmt = $conn->prepare($sql);
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
                        $ran->NickR = $row["NickName"];
                        $ran->PontR = $row["Pontuacao"];
                        $ranVetor[$i] = (array) $ran; 
                        $i++;
                    }
                    $form_data["ranking"] = $ranVetor;
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