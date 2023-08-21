<?php 
include("conexao.php");


$pasta_destino = 'capaDoLivro/';
$nome_foto = $pasta_destino."default_profile.jpg";
if(file_exists($_FILES['capa']['tmp_name'])){ //Checa se a pessoa escolheu foto ou não

$extensao = strtolower(substr($_FILES['capa']['name'],-4)); // Vai pegar apenas os ultimos 4 digitos do nome
$nome_foto = $pasta_destino.date("Ymd-His") . $extensao; // não deixa duas fotos no mesmo nome
move_uploaded_file($_FILES['capa']['tmp_name'],$nome_foto); //tmp_name é o nome temporario que é dado à foto
// isso esta removendo esse nomeo ".jpg"
}

$nome_foto2 = $pasta_destino."default_profile.jpg";
if(file_exists($_FILES['capa2']['tmp_name'])){ //Checa se a pessoa escolheu foto ou não

$extensao = strtolower(substr($_FILES['capa2']['name'],-4)); // Vai pegar apenas os ultimos 4 digitos do nome
$nome_foto2 = $pasta_destino.date("Ymd-His") . $extensao; // não deixa duas fotos no mesmo nome
move_uploaded_file($_FILES['capa2']['tmp_name'],$nome_foto2); //tmp_name é o nome temporario que é dado à foto
// isso esta removendo esse nomeo ".jpg"
}


$titulo = $_POST['titulo'];
$autor = $_POST['autor'];
$sql = "SELECT titulo FROM livros where titulo='$titulo'";
$result = mysqli_query($con, $sql);

if(empty($titulo) || empty($autor) || empty($nome_foto) || empty($nome_foto2)){
    echo "<h3>Porfavor preencha todos os campos devidamente</h3>";} 
    else  {
    if(mysqli_num_rows($result)>0) {
        echo "<h3>Livro já cadastrado</h3>";} 
        else  {
        echo "<h1>Dados do usuário</h1>";
        echo "Titulo: $titulo <br>";
        echo "Autor: $autor <br>";

        $sql = "INSERT INTO livros (titulo,autor,capa,capa2)";
        $sql .= "VALUES ('".$titulo."','".$autor."','".$nome_foto."','".$nome_foto2."')";
        $result = mysqli_query($con, $sql);

        if($result){
            echo "Dados do livro cadastrados com sucesso";}
            else{
                echo "Erro ao tentar cadastrar o livro!";
                }
            }
        }

?>
<a href="cadastro_livros.html">Voltar</a>