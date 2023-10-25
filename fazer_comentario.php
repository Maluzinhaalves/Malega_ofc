<?php


session_start();
require_once 'includes/funcoes.php';
require_once 'core/conexao_mysql.php';
require_once 'core/sql.php';
require_once 'core/mysql.php';

foreach($_POST as $indice => $dado){
   $$indice = limparDados($dado);
}

foreach($_GET as $indice => $dado){
   $$indice = limparDados($dado);
}
$idLivro = (int)$idLivro;
if(!empty($idComen)){
   $comentarios = buscar(
      'comentarios',
          [
              'idComen',
              'idUsuario',
              'textoComen',
              'tituloComen',
              'nota'
           ],
    [
      ['idComen', '=', $idComen]
    ]);
    $comentario = $comentarios[0];
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Comentario</title>
   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style2.css">

</head>
<body>
   
<!-- header section starts  -->
<?php include 'includes/header.php'; ?>
<!-- header section ends -->

<!-- add review section starts  -->

<section class="account-form">


   <form action="core/comentario_repositorio.php" method="post">
   <input type="hidden" name="acao" value="<?php echo empty($idComen) ? 'insert' : 'update' ?>">
   <input type="hidden" name="idComen" value="<?php echo $comentario['idComen'] ?? '' ?>">
   <input type="hidden" name="idLivro" value="<?php echo $idLivro ?? '' ?>">
   <input type="hidden" name="idUsuario" value="<?php echo $comentario['idUsuario'] ?? $_SESSION['login']['usuarios']['idUsuario']?>">
      <h3>poste sua avaliação</h3>
      <p class="placeholder">Titulo <span>*</span></p>
      <input type="text" name="tituloComen" value="<?php echo $comentario['tituloComen'] ?? '' ?>" required maxlength="50" placeholder="título da avaliação" class="box">
      <p class="placeholder">Sua descrição</p>
      <textarea name="textoComen" class="box" value="<?php echo $comentario['textoComen'] ?? '' ?>" placeholder="Descrição" maxlength="1000" cols="30" rows="10"></textarea>
      <p class="placeholder">Sua avaliação <span>*</span></p>
      <select name="nota" class="box" required>
         <option value="1" <?php if(!empty($idComen)){if($comentario['nota'] == '1'){echo "selected";}}?>>1</option>
         <option value="2" <?php if(!empty($idComen)){if($comentario['nota'] == '2'){echo "selected";}}?>>2</option>
         <option value="3" <?php if(!empty($idComen)){if($comentario['nota'] == '3'){echo "selected";}}?>>3</option>
         <option value="4" <?php if(!empty($idComen)){if($comentario['nota'] == '4'){echo "selected";}}?>>4</option>
         <option value="5" <?php if(!empty($idComen)){if($comentario['nota'] == '5'){echo "selected";}}?>>5</option>
      </select>
      <input type="submit" value="Enviar" class="btn">
      <a href="chat.php?idLivro=<?php echo $idLivro ?>" class="option-btn">Voltar</a>
   </form>

</section>

<!-- add review section ends -->














<!-- sweetalert cdn link  -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>

<!-- custom js file link  -->
<script src="js/script2.js"></script>

</body>
</html>