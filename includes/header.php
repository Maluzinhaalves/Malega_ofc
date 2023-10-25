<header class="header">

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

        
         <img src="imagensUsuario/<?php echo $_SESSION['login']['usuarios']['imagemUsuario']; ?>" alt="" class="image"> 
         <p><?php echo $_SESSION['login']['usuarios']['nomeUsuario']; ?></p>
        <input href="comentario_repositorio.php" class="btn" value="alterar a foto">
         <a href="href=core/usuario_repositorio.php?acao=logout" class="delete-btn" onclick="return confirm('logout from this website?');">logout</a>
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