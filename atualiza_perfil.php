<?php
session_start();
require_once 'includes/funcoes.php';
require_once 'core/conexao_mysql.php';
require_once 'core/sql.php';
require_once 'core/mysql.php';

foreach($_POST as $indice => $dado) {
    $$indice = limparDados($dado);
}

foreach($_GET as $indice => $dado) {
    $$indice = limparDados($dado);
}

$usuarios = buscar(
    'usuarios',
        [
            'idUsuario',
            'nomeUsuario',
            'emailUsuario'
         ],
  [
    ['idUsuario', '=', $idUsuario]
  ]);
  $usuario = $usuarios[0];
?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Alterar Perfil</title>

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style2.css">

</head>
<body>
   
<!-- header section starts  -->
<?php include 'includes/header.php'; ?>
<!-- header section ends -->

<section class="account-form">

   <form action="core/usuario_repositorio.php" method="post" enctype="multipart/form-data">
      <h3>Insira seus novos dados</h3>
      <input type="hidden" name="idUsuario" value="<?php echo $idUsuario ?>">
      <input type="hidden" name="acao" value="update">
      <p class="placeholder">Seu nome <span>*</span></p>
      <input type="text" name="nomeUsuario" value="<?php echo $usuario['nomeUsuario']?>" required maxlength="50" placeholder="Digite seu nome" class="box">
      <p class="placeholder">Email <span>*</span></p>
      <input type="email" name="emailUsuario" value="<?php echo $usuario['emailUsuario']?>" required maxlength="50" placeholder="Digite seu email" class="box">
      <p class="placeholder">Foto para o seu perfil</p><br><br>
      <label for="imagemUsuario" class="box">Insira a imagem</label><br><br>
      <input type="file" name="imagemUsuario" id="imagemUsuario" class="box" accept="image/*">
      <input type="submit" value="Atualizar" class="btn">
   </form>

</section>

<!-- sweetalert cdn link  -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>

<!-- custom js file link  -->
<script src="js/script.js"></script>
</body>
</html>