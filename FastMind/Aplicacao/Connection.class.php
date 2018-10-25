<?php
    class Connection
    {
        public function getConn()
        {
            $conn = new mysqli("localhost", "root", "", "jogodb");
            if ($conn->connect_error) {
                $erros['conexao'] = "Erro de conexão: " . $conn->connect_error;
            }
            return $conn;
        }
    }
?>