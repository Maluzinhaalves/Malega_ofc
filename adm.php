<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/style2.css">
    <style>
    :root{
        --light-bg: white;
    }
</style>
</head>
<body>
<?php session_start();
include 'includes/valida_adm.php'; ?>
    <div>
        <h1>Ações com livros</h1><br>
        <a class="inline-btn" href="cadastro_livro.php">Cadastro de Livros</a><br>
        <a class="inline-btn" href="listar_livro.php">Lista Livros</a><br><br>
        <h1>Ações usuarios livros</h1><br>
        <a class="inline-btn" href="cadastro_usuario.php">Cadastro de Usuario</a><br>
        <a class="inline-btn" href="listar_usuario.php">Listar usuarios</a><br>
        <br>
        <a class="inline-btn" href="index.php">Pagina Inicial</a>
    </div>
</body>
</html>