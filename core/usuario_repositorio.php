<?php
session_start();
require_once '../includes/funcoes.php';
require_once 'conexao_mysql.php';
require_once 'sql.php';
require_once 'mysql.php';
$salt = 'ifsp';

foreach($_POST as $indice => $dado){
    $$indice = limparDados($dado);
}

foreach($_GET as $indice => $dado){
    $$indice = limparDados($dado);
}
switch($acao){
    case 'insert':
        $dados =[
            'nomeUsuario' => $nomeUsuario,
            'emailUsuario' => $emailUsuario,
            'senhaUsuario' => crypt($senhaUsuario,$salt)
            ];

            insere(
                'usuarios',
                $dados
            );

            break;
    case 'update':
        $idUsuario = (int)$idUsuario;
        $dados = [
            'nomeUsuario' => $nomeUsuario,
            'emailUsuario' => $emailUsuario
        ];

        $criterio = [
            ['idUsuario', '=', $idUsuario]
        ];

        atualiza(
            'usuarios',
            $dados,
            $criterio
        );

        break;
        case 'login':
            $criterio = [
                ['emailUsuario', '=', $emailUsuario],
                ['AND', 'ativo', '=', 1]
                ];

        $retorno = buscar(
            'usuarios',
            ['idUsuario','nomeUsuario','emailUsuario','senhaUsuario','adm','imagemUsuario'],
            $criterio
        );

        if(count($retorno) > 0){
            if(crypt($senhaUsuario,$salt) == $retorno[0]['senhaUsuario']){
                $_SESSION['login']['usuarios'] = $retorno[0];
                if(!empty($_SESSION['url_retorno'])){
                    header('Location:' . $_SESSION['url_retorno']);
                    $_SESSION['url_retorno'] = '';
                    exit;
                }
            }
        }

    break;
    case 'logout':
    session_destroy();
    break;

        case 'status':
            $idUsuario = (int)$idUsuario;
            $valor = (int)$valor;

        $dados = [
            'ativo'=> $valor
            ];

        $criterio = [
            ['idUsuario','=', $idUsuario]
            ];

        atualiza(
            'usuarios',
            $dados,
            $criterio
        );

        header('Location: ../usuarios.php');
        exit;
        break;
    case 'adm':
        $idUsuario = (int)$idUsuario;
        $valor = (int)$valor;
        
        $dados = [
            'adm'=> $valor
            ];

        $criterio = [
           ['idUsuario','=',$id] 
            ];

        atualiza(
            'usuarios',
            $dados,
            $criterio
        );

        exit;
        break;


}
header('Location: ../index.php');

?>