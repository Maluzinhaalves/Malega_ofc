<?php if((!isset($_SESSION['login'])) || ($_SESSION['login']['usuarios']['ativo'] == 0))
    { 
        header('Location: index.php');
    }
    
    ?>