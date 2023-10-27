<header class="header">
<style>
input#imagemUsuario{
   display: none;
}
input#atualizaImagem{
   display: none;
}
</style>
   <section class="flex">

      <a href="index.php" class="logo">Malega</a>
      
      <nav class="navbar">
         <a href="index.php" class="fas fa-arrow-right-to-bracket"></a>
         
         <?php
            if($_SESSION['login']['usuarios']['idUsuario'] != ''){
         ?>
         <div id="user-btn" class="far fa-user"></div>
         <?php }; ?>
      </nav>

      <?php
         if($_SESSION['login']['usuarios']['idUsuario'] != ''){
      ?>
      <div class="profile">

      <label for="imagemUsuario"><img src="imagensUsuario/<?php echo $_SESSION['login']['usuarios']['imagemUsuario']; ?>" alt="" class="image"></label>
         <p><?php echo $_SESSION['login']['usuarios']['nomeUsuario']; ?></p>
         <a href="atualiza_perfil.php?idUsuario=<?php echo $_SESSION['login']['usuarios']['idUsuario']; ?>" class="btn" >Alterar Perfil</a>
         <form action="core/usuario_repositorio.php" method="post" enctype="multipart/form-data">
         <input type="hidden" name="idUsuario" value="<?php echo $_SESSION['login']['usuarios']['idUsuario']; ?>">   
         <input for="atualizaImagem" type="file" name="imagemUsuario" id="imagemUsuario" accept="image/*">
         <input type="submit" id="atualizaImagem" class="btn">
         </form>
        <!-- <a href="usuario_repositorio.php?acao=foto&idUsuario=<?php echo $_SESSION['login']['usuarios']['idUsuario'] ?>" class="btn" >Alterar Foto</a> -->
         <a href="core/usuario_repositorio.php?acao=logout" class="delete-btn" onclick="return confirm('logout from this website?');">logout</a>
         <?php }else{ ?>
            <div class="flex-btn">
               <p>Desculpe, faça seu login.</p>
               <a href="index.php" class="inline-option-btn">login</a>
               <a href="index.php" class="inline-option-btn">registre-se</a>
            </div>
         <?php }; ?>
      </div>

   </section>

</header>