<?php
session_start();
require_once '../includes/funcoes.php';
require_once 'conexao_mysql.php';
require_once 'sql.php';
require_once 'mysql.php';





foreach($_POST as $indice => $dado) {
    $$indice = limparDados($dado);
}

foreach($_GET as $indice => $dado) {
    $$indice = limparDados($dado);
}


switch($acao){
    case 'delete':
                $criterio = [
                    ['idLivro', '=', $idLivro]
                ];

                deleta(
                    'livros',
                    $criterio
                );

            break;
     case 'favoritar':

            $dados =[
                'idUsuario' => $idUsuario,
                'idLivro' => $idLivro
            ];
    
            insere(
                'usuario_livros',
                $dados
            );
            
            break;
}
