<?php 
include('conexao.php');
$id_usuario = $_GET['idUsuario']; //Aqui é get, já que passa pela URL
$sql = "DELETE from usuarios WHERE idUsuario=$id_usuario";



$result = mysqli_query($con,$sql); //a variavel result vai ter o resultado, se deu certo ou n
header('Location: listar_usuario.php');
?>