<?php 
        include('conexao.php');
        $id_livro = $_GET['idLivro'];//pega o valor do id_usuario para usar como parametro no update
        $sql = "SELECT * FROM livros where idLivro=$id_livro";
        $result = mysqli_query($con,$sql);
        $row = mysqli_fetch_array($result);
    ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Altere seu usuario!</h1>
    <form action="alterar_livro_exe.php" method="post" enctype="multipart/form-data">
        <input name="idLivro" type="hidden" 
        value="<?php echo $row['idLivro']?>">
        <div>
            <label for="titulo">Titulo</label>
            <input type="text" name="titulo" id="titulo"
            value="<?php echo $row['titulo']?>"> <!--Obs: o value esta dentro do input -->
        </div>
        <div>
            <label for="autor">Autor</label>
            <input type="text" name="autor" id="autor"
            value="<?php echo $row['autor']?>">
        </div>
        <div>
        <label for="capa">Insira a nova foto</label>
            <input type="file" name="capa" id="capa" accept="image/*"><br>
        </div>
        <div>
        <label for="capa2">Insira a nova foto</label>
            <input type="file" name="capa2" id="capa2" accept="image/*"><br>
        <input type="submit" value="Salvar">
        </div>
    </form>
    <a href="cadastro_livro.html">Voltar</a>
</body>
</html>