<?php
session_start();
require_once '../includes/funcoes.php';
require_once 'conexao_mysql.php';
require_once 'sql.php';
require_once 'mysql.php';
$salt = 'ifsp';

$pasta_destino = '../imagensUsuario/';
$nome_foto = "";
if(file_exists($_FILES['imagemUsuario']['tmp_name'])){ //Checa se a pessoa escolheu foto ou não
    $extensao = strtolower(substr($_FILES['imagemUsuario']['name'],-4)); // Vai pegar apenas os ultimos 4 digitos do nome
    $nome_foto = 'ImgUser-'.date("Ymd-His") . $extensao; // não deixa duas fotos no mesmo nome
    $nome_foto_completo = $pasta_destino.'ImgUser-'.date("Ymd-His") . $extensao; // não deixa duas fotos no mesmo nome
    move_uploaded_file($_FILES['ImagemUsuario']['tmp_name'],$nome_foto_completo); //tmp_name é o nome temporario que é dado à foto
// isso esta removendo esse nomeo ".jpg"
}

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
           ['idUsuario','=',$idUsuario] 
            ];

        atualiza(
            'usuarios',
            $dados,
            $criterio
        );
        
        header('Location: ../php/listar_usuario.php');

        exit;
        break;


}
header('Location: ../index.php');

?>