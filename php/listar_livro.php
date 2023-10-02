<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- BOOTSTRAP CSS-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php 
        include('conexao.php');
        $sql = "SELECT * FROM livros";
        // mysqli_query => executa um comando no banco de dados
        $result = mysqli_query($con, $sql);
        // mysqli_fetch_array => retorna apenas uma linha dos registros retornados
        $row = mysqli_fetch_array($result);
    ?>
    
    <div class="container">
    <h1>Consulta de livros</h1>
    <table align="center" border="1" width="500" bgcolor="pink">
        <div class="row">
        <tr> Cabeçalho
            <th class="col">Código</th>
            <th class="col">Capa</th>
            <th class="col">Capa2</th>
            <th class="col">Titulo</th>
            <th class="col">Autor</th>
            <th class="col">Alterar</th>
            <th class="col">Excluir</th>
        </tr>
        </div>
        <?php
            do{
            echo "<tr>";
            echo "<td>".$row['idLivro']."</td>";
            echo "<td><img src='".$row['capa']."' width='80' height='100'/></td>";
            echo "<td><img src='".$row['capa2']."' width='80' height='100'/></td>";
            echo "<td>".$row['titulo']."</td>";
            echo "<td>".$row['autor']."</td>";
            echo "<td><a href='alterar_livro.php?idLivro="
            .$row['idLivro']."'> Alterar </a> </td>"; //vai pegar o valor do id exibido 
            echo "<td><a 
            href='excluir_livro.php?idLivro=".$row['idLivro']."'>Excluir</a>
            </td>";

            
            // do while na linha atual (Como se eu pegasse o valor do contador) e usar ele
            // como condição do WHERE do banco

            echo "</tr>";
        } while($row = mysqli_fetch_array($result));
        // sempre que estiver algum registro ele vai mostrar, ou seja
        // quando acabar os dados ele para de monstrar(uma repetição).
        // href='excluir_usuario.php?idUsuario=".$row['idUsuario']."'
        //onclick='funcao1()'>Excluir</a>      
        ?>
    </table>
    </div>
    <div>
    <a href="cadastro_livro.html">Voltar</a>
    </div>

</body>
</html>