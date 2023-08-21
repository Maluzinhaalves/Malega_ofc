<?php 
include("conexao.php");

$pasta_destino = 'imagemDoUsuario/';
$nome_foto = $pasta_destino."default_profile.jpg";

$nome = $_POST['nomeUsuario'];
$email = $_POST['emailUsuario'];
$senha = $_POST['senhaUsuario'];
$sql = "SELECT emailUsuario FROM usuarios where emailUsuario='$email'";
$result = mysqli_query($con, $sql);

if(empty($nome) || empty($email) || empty($senha)){
    echo "<h3>Porfavor preencha todos os campos devidamente</h3>";} 
    else  {
    if(mysqli_num_rows($result)>0) {
        echo "<h3>E-mail já cadastrado</h3>";} 
        else  {
        echo "<h1>Dados do usuário</h1>";
        echo "Nome: $nome <br>";
        echo "E-mail: $email <br>";
        echo "Senha: $senha <br>";

        $sql = "INSERT INTO usuarios (nomeUsuario,emailUsuario,senhaUsuario,imagemUsuario)";
        $sql .= "VALUES ('".$nome."','".$email."','".$senha."','".$nome_foto."')";
        $result = mysqli_query($con, $sql);

        if($result){
            echo "Dados cadastrados com sucesso";}
            else{
                echo "Erro ao tentar cadastrar!";
                }
            }
        }

?>
<a href="../index.php">Voltar</a>