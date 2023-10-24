<header class="header">

   <section class="flex">

      <a href="index.php" class="logo">Malega</a>
      
      <nav class="navbar">
         <a href="../index.php" class="far fa-eye"></a>
         <a href="../index.php" class="fas fa-arrow-right-to-bracket"></a>
         <a href="../index.php" class="far fa-registered"></a>
         
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

         <?php if($_SESSION['login']['usuarios']['imagemUsuario'] != ''){ ?>
            <img src="imagensUsuario<? echo $_SESSION['login']['usuarios']['imagemUsuario']; ?>" alt="" class="image">
         <?php }; ?>   
         <p><? echo $_SESSION['login']['usuarios']['nomeUsuario']; ?></p>
         <a href="index.php" class="btn">update profile</a>
         <a href="href=../core/usuario_repositorio.php?acao=logout" class="delete-btn" onclick="return confirm('logout from this website?');">logout</a>
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