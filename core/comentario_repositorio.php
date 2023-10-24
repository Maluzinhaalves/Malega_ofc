<?php
session_start();
require_once '../includes/funcoes.php';
require_once 'conexao_mysql.php';
require_once 'sql.php';
require_once 'mysql.php';

foreach($_POST as $indice => $dado){
    $$indice = limparDados($dado);
}

foreach($_GET as $indice => $dado){
    $$indice = limparDados($dado);
}
switch($acao){
    case 'insert':
        $dados =[
            'tituloComen' => $tituloComen,
            'textoComen' => $textoComen,
            'idLivro' => $idLivro,
            'idUsuario' => $idUsuario,
            'nota' => $nota
            ];

            insere(
                'comentarios',
                $dados
            );

            break;
            
    case 'update':
        $idComen = (int)$idComen;
        $dados = [
            'tituloComen' => $tituloComen,
            'textoComen' => $textoComen
        ];

        $criterio = [
            ['idComen', '=', $idComen]
        ];

        atualiza(
            'comentarios',
            $dados,
            $criterio
        );

        break;
        case 'delete':
            $criterio = [
                ['idComen', '=', $idComen]
            ];

            deleta(
                'comentarios',
                $criterio
            );

        break;
}
?>