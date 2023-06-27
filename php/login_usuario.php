<?php 
    include('conexao.php');
    $email = $_POST['email'];
    $senha = $_POST['senha'];
    $sql = "SELECT * FROM usuarios WHERE 
    email = '$email'
    AND senhaUsuario = '$senha'";
    $result = mysqli_query($con,$sql);
    $rowcount = mysqli_num_rows($result); // vai contar quantas linhas são iguais
    // à essas no result

    if($rowcount>0){
        include('cria_sessao.php'); // usa a criasessao autodefinida
        // array com os dados do usuario que estão no banco
        $_SESSION['login'] = mysqli_fetch_array($result);
        // Força o usuario a voltar para pagina inicial - o index -
        header('Location: index.php');

    } else {
        echo "<h1>Usuario não encontrado!</h1>";
          echo "<h1>Usuario não encontrado!</h1>";
    }

?>