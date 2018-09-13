$jog = new Usuario();
$jog->Nome = $_POST['inputNome'];
$jog->Email = $_POST['inputEmail'];
$jog->Senha = $_POST['inputSenha'];
$jog->Nick = $_POST['inputApelido'];
$jog->DtNasc = $_POST['inputDtNascimento'];
$jog->TipUsu = $tiUsu;