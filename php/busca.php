<?php
include('conexao.php');
if (!isset($_GET['titulo'])){
    header("Location:index_teste.php");
}
$titulo = "%".trim($_GET['titulo'])."%";
$sql = "SELECT * from livros WHERE titulo LIKE '$titulo'";

$result = mysqli_query($con, $sql);
$linha = mysqli_fetch_array($result);
$total = mysqli_num_rows($result);
if($total != 0){
    do{
        echo $linha['titulo']."<br>";
    }
    while($linha = mysqli_fetch_array($result));
}
else{
    echo "Nenhum livro com esse nome foi encontrado";}

?>