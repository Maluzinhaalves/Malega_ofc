<?php
session_start();
require_once '../includes/funcoes.php';
require_once 'conexao_mysql.php';
require_once 'sql.php';
require_once 'mysql.php';
$salt = '$ifsp';

foreach($_POST as $indice => $dado){
    $$indice = limparDados($dado);
}

foreach($_GET as $indice => $dado){
    $$indice = limparDados($dado);
}
switch($acao){
    case 'insert':
        $dados =[
            'nomeUsuario' => $nome,
            'emailUsuario' => $email,
            'senhaUsuario' => crypt($senha,$salt)
            ];

            insere(
                'usuarios',
                $dados
            );

            break;
    case 'update':
        $id = (int)$id;
        $dados = [
            'nomeUsuario' => $nome,
            'emailUsuario' => $email
        ];

        $criterio = [
            ['idUsuario', '=', $id]
        ];

        atualiza(
            'usuarios',
            $dados,
            $criterio
        );

        break;
        case 'login':
            $criterio = [
                ['emailUsuario', '=', $email],
                ['AND', 'ativo', '=', 1]
                ];

        $retorno = buscar(
            'usuarios',
            ['idUsuario','nomeUsuario','emailUsuario','senhaUsuario','adm'],
            $criterio
        );

        if(count($retorno) > 0){
            if(crypt($senha,$salt) == $retorno[0]['senhaUsuario']){
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
            $id = (int)$id;
            $valor = (int)$valor;

        $dados = [
            'ativo'=> $valor
            ];

        $criterio = [
            ['idUsuario','=', $id]
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
        $id = (int)$id;
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

?>