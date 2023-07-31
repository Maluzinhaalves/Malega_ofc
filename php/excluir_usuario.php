<?php 
include('conexao.php');
$id_usuario = $_GET['idUsuario']; //Aqui é get, já que passa pela URL
$sql = "DELETE from usuarios WHERE idUsuario=$id_usuario";



$result = mysqli_query($con,$sql); //a variavel result vai ter o resultado, se deu certo ou n
    if($result){
        echo "Dados Alterados com sucesso!<br>";}
    else{
        echo "Erro ao alterar dados: ".mysqli_error($con)."<br>";}
?>
<a href="listar_usuario.php">Voltar</a>