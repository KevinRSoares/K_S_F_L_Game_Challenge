<?php 
	require_once("Connection.class.php");
    include_once '../Dominio/Perfil.class.php';
	class PerfilAplicacao{
        
		public function BuscaPerfil($UsuCod){
            $connection = new Connection();            
			$conn = $connection->getConn();
			$perf = new Perfil();
            $perfVetor = [];
			$sql = "Select * from usuario where CodUsu = ?";
			$stmt = $conn->prepare($sql);
			$stmt->bind_param('i', $UsuCod);

			$stmt->execute();
			if ($stmt->error) {
                $erros['nome'] = "Erro: " . $conn->error;
                $form_data['success'] = false;
                $form_data['erros']  = $erros; 
            } else {
                $result = $stmt->get_result();
                if ($result->num_rows > 0) {
                    $i = 0;
                    while($row = $result->fetch_assoc()) {
                        $form_data['success'] = true;
                        $perf->NomeP = $row["NomUsu"];
                        $perf->NickP = $row["NicUsu"];
                        $perf->EmailP = $row["EmaUsu"];
                        $perf->DtNascP = date('d/m/Y', strtotime($row["DatNasUsu"]));
                        $perfVetor[$i] = (array) $perf; 
                        $i++;
                    }

                    $form_data["perfil"] = $perfVetor;
                }
            }
            $conn->close();
            $form_data = $form_data + $this->BuscaPontuacao($UsuCod);
            echo json_encode($form_data);
            die();
        }
        public function BuscaPontuacao($UsuCod){
            $connection = new Connection();
			$conn = $connection->getConn();
            $pontVetor = [];
			$sql = "call top10_individual(?);";
			$stmt = $conn->prepare($sql);
			$stmt->bind_param('i', $UsuCod);

			$stmt->execute();
			if ($stmt->error) {
                $erros['nome'] = "Erro: " . $conn->error;
                $form_data['success'] = false;
                $form_data['erros']  = $erros; 
            } else {
                $result = $stmt->get_result();
                if ($result->num_rows > 0) {
                    $i = 0;
                    while($row = $result->fetch_assoc()) {
                        $form_data['success'] = true;
                        $pontVetor[$i] = $row["Ponpar"];
                        $i++;
                    }

                    $form_data["pontuacao"] = $pontVetor;
                }else{
                    $form_data["pontuacao"] = null;
                }
            }
            $conn->close();
            return $form_data;
		}        
	}
?>