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
    if(empty($idLivro)){
      $idLivro = $_SESSION['idLivro_retorno'];
      $_SESSION['idLivro_retorno'] = '';
    } 
  $comentarios = buscar(
      'comentarios',
          [
              'idComen',
              'idLivro',
              'idUsuario',
              'textoComen',
              'tituloComen',
              'data_criacao',
              'nota'
           ],
    [
      ['idLivro', '=', $idLivro]
    ]
   );
      $livros = buscar(
      'livros',
          [
              'idLivro',
              'titulo',
              'capa'
          ],
      [
         ['idLivro', '=', $idLivro]
      ]
   );
$livro = $livros[0];
?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>view post</title>

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style2.css">

</head>
<body>
   
<!-- header section starts  -->
<?php include 'includes/header.php';?>
<!-- header section ends -->

<!-- view posts section starts  -->

<section class="view-post">

   <div class="heading"><h1>Converse sobre o livro!</h1> <a href="pag_livro.php?idLivro=<?php echo $idLivro ?>" class="inline-option-btn" style="margin-top: 0;">Voltar</a></div>

   <?php

        $total_ratings = 0;
        $rating_1 = 0;
        $rating_2 = 0;
        $rating_3 = 0;
        $rating_4 = 0;
        $rating_5 = 0;
         $nota_media=0;
         
         $i=0;
        foreach($comentarios as $comentario):
         $i++;
         if($comentario['nota'] == 1){
            $rating_1++;
         }
         if($comentario['nota'] == 2){
            $rating_2++;
         }
         if($comentario['nota'] == 3){
            $rating_3++;
         }
         if($comentario['nota'] == 4){
            $rating_4++;
         }
         if($comentario['nota'] == 5){
            $rating_5++;
         }
        endforeach;
        if($i!=0){
        $nota_media = number_format((($rating_1*1+$rating_2*2+$rating_3*3+$rating_4*4+$rating_5*5)/$i),1);}
         
   ?>
   <div class="row">
      <div class="col">
         <img src="imagensLivro/<?php echo $livro['capa'] ?>" alt="" class="image">
         <h3 class="title"><?php echo $livro['titulo'] ?></h3>
      </div>
      <div class="col">
          <div class="flex">
            <div class="total-reviews">
               <h3><?php echo $nota_media; ?><i class="fas fa-star"></i></h3>
               <p><?php echo $i ?> reviews</p>
            </div>
            <div class="total-ratings">
               <p>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <span><?php echo $rating_5 ?></span>
               </p>
               <p>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <span><?php echo $rating_4 ?></span>
               </p>
               <p>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <span><?php echo $rating_3 ?></span>
               </p>
               <p>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <span><?php echo $rating_2 ?></span>
               </p>
               <p>
                  <i class="fas fa-star"></i>
                  <span><?php echo $rating_1 ?></span>
               </p>
            </div>
         </div> 
      </div>
   </div>
   <?php
          
   /* else{
      echo '<p class="empty">post is missing!</p>';
   }  */
   ?>

</section>

<!-- view posts section ends -->

<!-- reviews section starts  -->

<section class="reviews-container">

   <div class="heading"><h1>Comentários</h1> <a href="fazer_comentario.php?idLivro=<?php echo $idLivro?>" class="inline-btn" style="margin-top: 0;">add review</a></div>

   <div class="box-container">
   <?php 
   foreach($comentarios as $comentario): 
      $usuarios = buscar(
         'usuarios',
             [
                 'idUsuario',
                 'imagemUsuario',
                 'nomeUsuario'
              ],
       [
         ['idUsuario', '=', $comentario['idUsuario']]
       ]);
       $usuario = $usuarios[0];

      ?>
      
         
   <div class="box">
      <div class="user">
            <img src="imagensUsuario/<?php echo $usuario['imagemUsuario'] ?>" alt="">
         <?php  ?>   
            <h3><?php echo substr($usuario['nomeUsuario'], 0, 1); ?></h3>
         <?php ; ?>   
         <div>
            <p><?php echo $usuario['nomeUsuario']; ?></p>
            <span><?php echo $comentario['data_criacao']; ?></span>
         </div>
      </div>
      <?php ; ?>
      <div class="ratings">
         <?php /* if($fetch_review['rating'] == 1){ */ ?>
            <p style="background:var(--red);"><i class="fas fa-star"></i> <span><?php echo $comentario['nota'] ?></span></p>
         <?php /* }; */ ?> 
      <!-- <?php /* if($fetch_review['rating'] == 2){ ?>
         <p style="background:var(--orange);"><i class="fas fa-star"></i> <span><?= $fetch_review['rating']; ?></span></p>
      <?php }; ?>
      <?php if($fetch_review['rating'] == 3){ ?>
         <p style="background:var(--orange);"><i class="fas fa-star"></i> <span><?= $fetch_review['rating']; ?></span></p>
      <?php }; ?>   
      <?php if($fetch_review['rating'] == 4){ ?>
         <p style="background:var(--main-color);"><i class="fas fa-star"></i> <span><?= $fetch_review['rating']; ?></span></p>
      <?php }; ?>
      <?php if($fetch_review['rating'] == 5){ ?>
         <p style="background:var(--main-color);"><i class="fas fa-star"></i> <span><?= $fetch_review['rating']; ?></span></p>
      <?php };  */?> -->
      </div>
      <h3 class="title"><?php echo $comentario['tituloComen']; ?></h3>
      <?php if($comentario['textoComen'] != ''){ ?>
         <p class="description"><?php echo $comentario['textoComen']; ?></p>
      <?php }; ?>  
         <div class="flex-btn">
            <?php if($_SESSION['login']['usuarios']['idUsuario'] == $comentario['idUsuario']){?>
            <a href="fazer_comentario.php?idComen=<?php echo $comentario['idComen'];?>&idLivro=<?php echo $idLivro?>" onclick="<?php $_SESSION['idLivro_retorno'] = $idLivro;?>" class="inline-option-btn">edit review</a>
            <?php }if($_SESSION['login']['usuarios']['adm'] > 0){ ?>
            <a href="core/comentario_repositorio.php?acao=delete&idComen=<?php echo $comentario['idComen'] ?>" class="inline-delete-btn" onclick="return confirm('delete this review?');">delete review</a>
            <?php }?>
            </div>
      <?php  ?>   
   </div>
   <?php endforeach; ?>  


   </div>

</section>

<!-- reviews section ends -->














<!-- custom js file link  -->
<script src="js/script2.js"></script>

</body>
</html>