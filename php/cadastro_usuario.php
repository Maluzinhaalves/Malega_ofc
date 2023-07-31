<?php 
include("conexao.php");

$nome_foto = "";
if(file_exists($_FILES['imagemUsuario']['tmp_name'])){ //Checa se a pessoa escolheu foto ou não
    $pasta_destino = 'imagens/';
$extensao = strtolower(substr($_FILES['imagemUsuario']['name'],-4)); // Vai pegar apenas os ultimos 4 digitos do nome
$nome_foto = $pasta_destino.date("Ymd-His") . $extensao; // não deixa duas fotos no mesmo nome
move_uploaded_file($_FILES['imagemUsuario']['tmp_name'],$nome_foto); //tmp_name é o nome temporario que é dado à foto
// isso esta removendo esse nomeo ".jpg"
}

$nome = $_POST['nomeUsuario'];
$email = $_POST['emailUsuario'];
$senha = $_POST['senhaUsuario'];
$sql = "SELECT emailUsuario FROM usuarios where emailUsuario='$email'";
$result = mysqli_query($con, $sql);

if(mysqli_num_rows($result)>0) {
    echo "<h3>E-mail já cadastrado</h3>";
} else{
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
    echo "Erro ao tentar cadastrar!";}
}

?>
<a href="cadastro_usuario.html">Voltar</a>