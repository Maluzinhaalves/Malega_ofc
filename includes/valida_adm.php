<?php if((!isset($_SESSION['login'])) || ($_SESSION['login']['usuarios']['adm'] == 0))
    { 
        header('Location: index.php');
    }
    ?>