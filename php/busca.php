<?php
include('conexao.php');
if (!isset($_GET['titulo'])){
    header("Location:index.php");
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
<!--
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
-->
    <?php
    /*
        include('conexao.php');
        if (!isset($_GET['titulo'])){
            header("Location:index.php");
        }
        $titulo = "%".trim($_GET['titulo'])."%";
        $sql = "SELECT * from livros WHERE titulo LIKE '$titulo'";

        $result = mysqli_query($con, $sql);
        $linha = mysqli_fetch_array($result);
        $total = mysqli_num_rows($result);
        if($total != 0){
            do{
                ?>
                <div class="container">
        
                <table align="center" border="1" width="500">
                <div class="row">
                <th class="col">Capa</th>
                <th class="col">Nome</th>
                </tr>
                </div>
        <?php
           
            echo "<tr>";
            echo "<td><img src='".$row['capa']."' width='80' height='100'/></td>";
            echo "<td>".$row['titulo']."</td>";
            echo "</tr>";
        } while($row = mysqli_fetch_array($result));
        
            }
        else{
            echo "Nenhum livro com esse nome foi encontrado";}

        ?>
    </table>
    </div>
</body>
</html>
*/