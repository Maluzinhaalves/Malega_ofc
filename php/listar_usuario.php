<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- BOOTSTRAP CSS-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php 
    
        session_start();
        require_once '../includes/funcoes.php';
        require_once '../core/conexao_mysql.php';
        require_once '../core/sql.php';
        require_once '../core/mysql.php';

        foreach($_GET as $indice => $dado){ //como funciona esse comando
            $$indice = limparDados($dado);
        }

        $criterio = [];

        if(!empty($busca)){
            $criterio[] = ['nomeUsuario', 'like', "%{$busca}%"];
        }

        $result = buscar(
            'usuarios',
            [
                'idUsuario',
                'imagemUsuario',
                'nomeUsuario',
                'emailUsuario',
                'senhaUsuario',
                'ativo',
                'adm'
            ],
            $criterio,
            'idUsuario DESC'
        );
    ?>
    
    <div class="container">
    <h1>Consulta de usuários</h1>
    <form class="form-inline my-2 my-lg-0" method='get' action=' '> <!-- action vazio busca a propia pagina-->
    <input class="form-control mr-sm-2" type="search" name='busca'
        placeholder="Busca" arial-label="Busca">
    <button class="btn btn-outline-sucess my-2 my-sm-0"
        type="submit">Buscar</button>
    </form>
    <table align="center" border="1" width="500" bgcolor="pink">
        <thead>
            <?php
            foreach($result as $entidade):
        ?>
        <tr>
            <th class="col">Código</th>
            <th class="col">Foto</th>
            <th class="col">Nome</th>
            <th class="col">E-mail</th>
            <th class="col">Senha</th>
            <th class="col">Ativo</th>
            <?php if((isset($_SESSION['login'])) && ($_SESSION['login']['usuarios']['adm'] === 2)):?>
            <th class="col">Adm</th>
            <?php endif ?>
            </tr>
        </thead>
        <tbody>
                <td><?php echo $entidade['idUsuario'] ?></td>
                <td><?php echo $entidade['imagemUsuario'] ?></td>
                <td><?php echo $entidade['nomeUsuario'] ?></td>
                <td><?php echo $entidade['emailUsuario'] ?></td>
                <td><?php echo $entidade['senhaUsuario'] ?></td>
                <td><a href='../core/usuario_repositorio.php?acao=status&idUsuario=<?php echo $entidade['idUsuario']?> &valor=<?php echo !$entidade['ativo']?>'><?php echo ($entidade['ativo']==1)  ? 'Desativar' : 'Ativar'; ?> </a></td>
                <?php if((isset($_SESSION['login'])) && ($_SESSION['login']['usuarios']['adm'] === 2)):?>
                <td><a href='../core/usuario_repositorio.php?acao=adm&idUsuario=<?php echo $entidade['idUsuario']?> &valor=<?php echo !$entidade['adm']?>'><?php echo ($entidade['adm']==1)  ?  'Rebaixar' : 'Promover'; ?> </a></td>
                <?php endif ?>
            <?php endforeach ?>
        </tbody>
    </table>
    </div>
    <div>
    <a href="cadastro_usuario.html">Voltar</a>
    </div>
</body>
</html>