<?php
     session_start();
     require_once 'includes/funcoes.php';
     require_once 'core/conexao_mysql.php';
     require_once 'core/sql.php';
     require_once 'core/mysql.php';
     ?>
     <?php
   if(empty($_SESSION['login'])){
      header('Location: index.php');
   }
      
?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>all posts</title>

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style2.css">

</head>
<body>
   
<!-- header section starts  -->
<?php include 'includes/header.php'; ?>
<!-- header section ends -->

<!-- view all posts section starts  -->

<section class="all-posts">

   <div class="heading"><h1>Livros</h1></div>

   <div class="box-container">

   <?php

      foreach($_POST as $indice => $dado){
         $$indice = limparDados($dado);
     }
     
     foreach($_GET as $indice => $dado){
         $$indice = limparDados($dado);
     }
     if (!isset($titulo)){
      header("Location:../index.php");
   }
      $titulo = "%".trim($titulo)."%";
      $livros = buscar(
         'livros',
             [
                 'idLivro',
                 'titulo',
                 'autor',
                 'capa',
                 'nota'
              ],
       [
         ['titulo', 'like', $titulo]
       ]);
      if($livros != ''){
            
         foreach($livros as $livro):
            ?>
   <div class="box">
      <img src="imagensLivro/<?php echo $livro['capa']?>" alt="" class="image">
      <h3 class="title"><?php echo $livro['titulo'] ?></h3>
      <p class="total-reviews"><i class="fas fa-star"></i> <span><?php echo $livro['nota'] ?></span></p>
      <a href="pag_livro.php?idLivro=<?php echo $livro['idLivro'];?>" class="inline-btn">Ver livro</a>
   </div>

   <?php
   endforeach;}
      else{
         echo '<p class="empty">nenhuma postagem adicionada ainda!</p>';
      }
      

   ?>

   </div>

</section>

<!-- view all posts section ends -->

<!-- custom js file link  -->
<script src="js/script2.js"></script>

</body>
</html>
