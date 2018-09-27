<?php 
	require_once("Connection.class.php");
	include_once '../Dominio/Perfil.class.php';
	class PerfilAplicacao{
		public function BuscaPerfil(){
			$connection = new Connection();
			$conn = $connection->getConn();
			$perf = new Perfil();
			$perfVetor = [];
            
            echo $usu;

			$sql = "Select * from usuario where CodUsu = ?";
			$stmt = $conn->prepare($sql);
			$stmt->bind_param('i', $usu);

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
                        $perf->DtNascP = $row["DatNasUsu"];
                        $perfVetor[$i] = (array) $perf; 
                        $i++;
                    }

                    $form_data["perfil"] = $perfVetor;
                }
            }
            $conn->close();
            echo json_encode($form_data);
            die();
		}
	}
?>