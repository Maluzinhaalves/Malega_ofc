<?php 
        include('conexao.php');
        $id_usuario = $_GET['idUsuario'];//pega o valor do id_usuario para usar como parametro no update
        $sql = "SELECT * FROM usuarios where idUsuario=$id_usuario";
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
    <form action="alterar_usuario_exe.php" method="post" enctype="multipart/form-data">
        <input name="idUsuario" type="hidden" 
        value="<?php echo $row['idUsuario']?>">
        <div>
            <label for="nome">Nome</label>
            <input type="text" name="nomeUsuario" id="nome"
            value="<?php echo $row['nomeUsuario']?>"> <!--Obs: o value esta dentro do input -->
        </div>
        <div>
            <label for="email">E-mail</label>
            <input type="email" name="emailUsuario" id="email"
            value="<?php echo $row['emailUsuario']?>">
        </div>
        <div>
            <label for="senha">Senha</label>
            <input type="password" name="senhaUsuario" id="senha"
            value="<?php echo $row['senhaUsuario']?>">
        </div>
        <div>
        <label for="foto">Insira a nova foto</label>
            <input type="file" name="imagemUsuario" id="foto" accept="image/*"><br>
        <input type="submit" value="Salvar">
        </div>
    </form>
    <a href="cadastro_usuario.html">Voltar</a>
</body>
</html>