<?php
require_once("Connection.class.php");

class EsqueciAplicacao{
	public function EnviaEmail($Esqueci){
		$connection = new Connection();
		$conn = $connection->getConn();
		echo '<h1>'.$Esqueci->EmailE.'</h1>';
		die();
	}
}

?>