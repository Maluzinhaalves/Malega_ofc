<?php
    include('conexao.php');


    $id_usuario = $_POST['idUsuario']; //Esses são os nomes no formulario na aba "Name = '...'"
    $nome = $_POST['nomeUsuario'];
    $email = $_POST['emailUsuario'];
    $senha = $_POST['senhaUsuario'];
    $pasta_destino = 'imagens/';
    if(file_exists($_FILES['imagemUsuario']['tmp_name'])){
        $extensao = strtolower(substr($_FILES['imagemUsuario']['name'],-4));
        $nome_foto = $pasta_destino.date("Ymd-His") . $extensao; 
        move_uploaded_file($_FILES['imagemUsuario']['tmp_name'],$nome_foto);}
        else {
                $nome_foto = $pasta_destino."default_profile.jpg";
        }


    echo "<h1>Alteração de dados</h1>"; //Campos do tipo Varchar sempre tem aspas simples
    echo "<p>Usuário: $nome</p>";
    $sql = "UPDATE usuarios SET 
    nomeUsuario='$nome',
    emailUsuario='$email', 
    senhaUsuario='$senha',
    imagemUsuario='$nome_foto'
    WHERE idUsuario=$id_usuario;
    ";
    echo $sql."<br>";
    $result = mysqli_query($con,$sql); //a variavel result vai ter o resultado, se deu certo ou n
    if($result){
        echo "Dados Alterados com sucesso!<br>";}
    else{
        echo "Erro ao alterar dados: ".mysqli_error($con)."<br>";}
?>
<a href="cadastro_usuario.html">Voltar</a>