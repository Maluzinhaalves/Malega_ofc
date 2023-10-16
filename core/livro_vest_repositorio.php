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
            'capa2' => $capa2,
            'pdf' => $pdf,
            'banca' => $banca
        ];

        insere(
            'livros_vest',
            $dados
        );
        
        break;

    case 'update':
            $dados = [
                'titulo' => $titulo,
                'autor' => $autor,
                'capa' => $capa,
                'capa2' => $capa2,
                'pdf' => $pdf,
                'banca' => $banca
            ];

            $criterio = [
                ['idVest', '=', $idVest]
            ];

            atualiza(
                'livros_vest',
                $dados,
                $criterio
            );

            break;

    case 'delete':
                $criterio = [
                    ['idVest', '=', $idVest]
                ];

                deleta(
                    'livros_vest',
                    $criterio
                );

            break;
}

header('Location: ../adm');