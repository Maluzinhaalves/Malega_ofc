<?php
session_start();
require_once '../includes/funcoes.php';
require_once 'conexao_mysql.php';
require_once 'sql.php';
require_once 'mysql.php';


$pasta_destino = '../imagensLivro/';
$nome_foto = "";
if(file_exists($_FILES['capa']['tmp_name'])){ //Checa se a pessoa escolheu foto ou não
    $extensao = strtolower(substr($_FILES['capa']['name'],-4)); // Vai pegar apenas os ultimos 4 digitos do nome
    $nome_foto = 'capa1-'.date("Ymd-His") . $extensao; // não deixa duas fotos no mesmo nome
    $nome_foto_completo = $pasta_destino.'capa1-'.date("Ymd-His") . $extensao; // não deixa duas fotos no mesmo nome
    move_uploaded_file($_FILES['capa']['tmp_name'],$nome_foto_completo); //tmp_name é o nome temporario que é dado à foto
// isso esta removendo esse nomeo ".jpg"
}

$nome_foto2 = "";
if(file_exists($_FILES['capa2']['tmp_name'])){ //Checa se a pessoa escolheu foto ou não
    $extensao = strtolower(substr($_FILES['capa2']['name'],-4)); // Vai pegar apenas os ultimos 4 digitos do nome
    $nome_foto2 = 'capa2-'.date("Ymd-His") . $extensao; // não deixa duas fotos no mesmo nome
    $nome_foto2_completo = $pasta_destino.'capa2-'.date("Ymd-His") . $extensao; // não deixa duas fotos no mesmo nome    
    move_uploaded_file($_FILES['capa2']['tmp_name'],$nome_foto2_completo); //tmp_name é o nome temporario que é dado à foto
    // isso esta removendo esse nomeo ".jpg"
}
$pasta_destinop = '../pdf/';
$pdf = "";
if(file_exists($_FILES['pdf']['tmp_name'])){ //Checa se a pessoa escolheu foto ou não
    $extensao = strtolower(substr($_FILES['pdf']['name'],-4)); // Vai pegar apenas os ultimos 4 digitos do nome
    $pdf = 'pdf_livro-'.date("Ymd-His") . $extensao; // não deixa duas fotos no mesmo nome
    $pdf_completo = $pasta_destinop.'pdf_livro-'.date("Ymd-His") . $extensao; // não deixa duas fotos no mesmo nome
    move_uploaded_file($_FILES['pdf']['tmp_name'],$pdf_completo); //tmp_name é o nome temporario que é dado à foto
    // isso esta removendo esse nomeo ".jpg"
}


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
            'capa' => $nome_foto,
            'capa2' => $nome_foto2,
            'pdf' => $pdf,
            'banca' => $banca,
            'texto' => $texto
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
                'capa2' => $capa2,
                'pdf' => $pdf,
                'banca' => $banca,
                'texto' => $texto
            ];

            $criterio = [
                ['idLivro', '=', $idLivro]
            ];

            atualiza(
                'livros',
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

header('Location: ../adm.php');