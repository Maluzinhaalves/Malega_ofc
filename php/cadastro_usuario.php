<?php 
include("conexao.php");

$nome = $_POST['nomeUsuario'];
$email = $_POST['email'];
$senha = $_POST['senhaUsuario'];
$sql = "SELECT email FROM usuarios where email='$email'";
$result = mysqli_query($con, $sql);

if(mysqli_num_rows($result)>0) {
    echo "<h3>E-mail já cadastrado</h3>";
} else{
echo "<h1>Dados do usuário</h1>";
echo "Nome: $nome <br>";
echo "E-mail: $email <br>";
echo "Telefone: $senha <br>";

$sql = "INSERT INTO usuario (nomeUsuario,emailUsuario,senhaUsuario)";
$sql .= "VALUES ('".$nome."','".$email."','".$senha."')";
$result = mysqli_query($con, $sql);

if($result){
    echo "Dados cadastrados com sucesso";}
else{
    echo "Erro ao tentar cadastrar!";}
}

?>
<a href="index.php">Voltar</a>