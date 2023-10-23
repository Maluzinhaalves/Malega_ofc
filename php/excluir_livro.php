<?php 
include('conexao.php');
$idLivro = $_GET['idLivro']; //Aqui é get, já que passa pela URL
$sql = "DELETE from livros WHERE idLivro=$idLivro";



$result = mysqli_query($con,$sql); //a variavel result vai ter o resultado, se deu certo ou n
    if($result){
        echo "Dados Alterados com sucesso!<br>";}
    else{
        echo "Erro ao alterar dados: ".mysqli_error($con)."<br>";}
?>
<a href="listar_livro.php">Voltar</a>