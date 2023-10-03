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
    case 'insert':
        $dados =[
            'titulo' => $titulo,
            'autor' => $autor,
            'capa' => $capa,
            'capa2' => $capa2
        ];

        insere(
            'livros',
            $dados
        );
        
        break;

    case 'update':
            $dados = [
                'titulo' => $titulo,
                'autor' => $autor,
                'capa' => $capa,
                'capa2' => $capa2
            ];

            $criterio = [
                ['idLivro', '=', $idLivro]
            ];

            atualiza(
                'post',
                $dados,
                $criterio
            );

            break;

    case 'delete':
                $criterio = [
                    ['idLivro', '=', $idLivro]
                ];

                deleta(
                    'livros',
                    $criterio
                );

            break;
}

//header('Location: ../php/listar_livro.php');