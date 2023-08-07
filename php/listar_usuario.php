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
        $sql = "SELECT * FROM usuarios";
        // mysqli_query => executa um comando no banco de dados
        $result = mysqli_query($con, $sql);
        // mysqli_fetch_array => retorna apenas uma linha dos registros retornados
        $row = mysqli_fetch_array($result);
    ?>
    
    <div class="container">
    <h1>Consulta de usuários</h1>
    <table align="center" border="1" width="500" bgcolor="pink">
        <div class="row">
        <tr> Cabeçalho
            <th class="col">Código</th>
            <th class="col">Foto</th>
            <th class="col">Nome</th>
            <th class="col">E-mail</th>
            <th class="col">Senha</th>
            <th class="col">Alterar</th>
            <th class="col">Excluir</th>
        </tr>
        </div>
        <?php
            do{
            echo "<tr>";
            echo "<td>".$row['idUsuario']."</td>";
            if($row['imagemUsuario'] == "")
                {echo "<td></td>";} // caso a imagem esteja vazia, vai imprimir nada
            else
                {echo "<td><img src='".$row['imagemUsuario']."' width='80' height='100'/></td>";}
            echo "<td>".$row['nomeUsuario']."</td>";
            echo "<td>".$row['emailUsuario']."</td>";
            echo "<td>".$row['senhaUsuario']."</td>";
            echo "<td><a href='alterar_usuario.php?idUsuario="
            .$row['idUsuario']."'> Alterar </a> </td>"; //vai pegar o valor do id exibido 
            echo "<td><a 
            href='excluir_usuario.php?idUsuario=".$row['idUsuario']."'>Excluir</a>
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
    <a href="cadastro_usuario.html">Voltar</a>
    </div>

    <script>
function funcao1()
{
var x;
var r=confirm("Tem certeza que deseja excluir o usuario?!");
if (r==true)
  {
  <?php echo "<a href='excluir_usuario.php?idUsuario=".$row['idUsuario']."'>";?>!
  }
else
  {
  x="Você pressionou Cancelar!"
  }
document.getElementById('demo').innerHTML=x;
}
    </script>
</body>
</html>