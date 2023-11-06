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

$pasta_destino = '../imagensLivro/';
$pasta_destinop = '../pdf/';

switch($acao){
    case 'insert':
            
            $nome_foto = "";
            if(file_exists($_FILES['capa']['tmp_name'])){ //Checa se a pessoa escolheu foto ou não
                $extensao = strtolower(substr($_FILES['capa']['name'],-4)); // Vai pegar apenas os ultimos 4 digitos do nome
                $nome_foto = 'capa1-'.date("Ymd-His") . $extensao; // não deixa duas fotos no mesmo nome
                $nome_foto_completo = $pasta_destino.'capa1-'.date("Ymd-His") . $extensao; // não deixa duas fotos no mesmo nome
                move_uploaded_file($_FILES['capa']['tmp_name'],$nome_foto_completo); //tmp_name é o nome temporario que é dado à foto
            // isso esta removendo esse nomeo ".jpg"
            }


            $pdf = "";
            if(file_exists($_FILES['pdf']['tmp_name'])){ //Checa se a pessoa escolheu foto ou não
                $extensao = strtolower(substr($_FILES['pdf']['name'],-4)); // Vai pegar apenas os ultimos 4 digitos do nome
                $pdf = 'pdf_livro-'.date("Ymd-His") . $extensao; // não deixa duas fotos no mesmo nome
                $pdf_completo = $pasta_destinop.'pdf_livro-'.date("Ymd-His") . $extensao; // não deixa duas fotos no mesmo nome
                move_uploaded_file($_FILES['pdf']['tmp_name'],$pdf_completo); //tmp_name é o nome temporario que é dado à foto
                // isso esta removendo esse nomeo ".jpg"
            }
        $dados =[
            'titulo' => $titulo,
            'autor' => $autor,
            'capa' => $nome_foto,
            'artigo' => $artigo,
            'pdf' => $pdf,
            'banca' => $banca,
            'texto' => $texto
        ];

        insere(
            'livros',
            $dados
        );
        header('Location: ../cadastro_livro.php');
        
        break;

    case 'update':        
        $nome_foto = "";
        if(file_exists($_FILES['capa']['tmp_name'])){ //Checa se a pessoa escolheu foto ou não
            $extensao = strtolower(substr($_FILES['capa']['name'],-4)); // Vai pegar apenas os ultimos 4 digitos do nome
            $nome_foto = 'capa1-'.date("Ymd-His") . $extensao; // não deixa duas fotos no mesmo nome
            $nome_foto_completo = $pasta_destino.'capa1-'.date("Ymd-His") . $extensao; // não deixa duas fotos no mesmo nome
            move_uploaded_file($_FILES['capa']['tmp_name'],$nome_foto_completo); //tmp_name é o nome temporario que é dado à foto
        // isso esta removendo esse nomeo ".jpg"
        }        
        $pdf = "";
        if(file_exists($_FILES['pdf']['tmp_name'])){ //Checa se a pessoa escolheu foto ou não
            $extensao = strtolower(substr($_FILES['pdf']['name'],-4)); // Vai pegar apenas os ultimos 4 digitos do nome
            $pdf = 'pdf_livro-'.date("Ymd-His") . $extensao; // não deixa duas fotos no mesmo nome
            $pdf_completo = $pasta_destinop.'pdf_livro-'.date("Ymd-His") . $extensao; // não deixa duas fotos no mesmo nome
            move_uploaded_file($_FILES['pdf']['tmp_name'],$pdf_completo); //tmp_name é o nome temporario que é dado à foto
            // isso esta removendo esse nomeo ".jpg"
        }
        $idLivro = (int)$idLivro;
        $dados = [
            'titulo' => $titulo,
            'autor' => $autor,            
            //'capa' => $nome_foto,
            'artigo' => $artigo,
            //'pdf' => $pdf,
            'banca' => $banca,
            'texto' => $texto
        ];

        if($nome_foto != "")
        {
            $dados['capa'] = $nome_foto;
        }
        if($pdf != "")
        {
            $dados['pdf'] = $pdf;
        }

        

        $criterio = [
            ['idLivro', '=', $idLivro]
        ];


        atualiza(
            'livros',
            $dados,
            $criterio
        );
        header('Location: ../listar_livro.php');

        break;

    case 'delete':     
        
        $criterio = [
            ['idLivro', '=', $idLivro]
        ];

        $livro = buscar('livros',['titulo','capa','pdf','idLivro','banca','nota'],$criterio)[0];
        deleta(
            'livros',
            $criterio
        );
        //echo $pasta_destino.$livro['capa'];
        unlink($pasta_destino.$livro['capa']);
        header('Location: ../listar_livro.php');
    break;
    /* case 'insert':
            $pasta_destino = '../imagensLivro/';
            $nome_foto = "";
            if(file_exists($_FILES['capa']['tmp_name'])){ //Checa se a pessoa escolheu foto ou não
                $extensao = strtolower(substr($_FILES['capa']['name'],-4)); // Vai pegar apenas os ultimos 4 digitos do nome
                $nome_foto = 'capa1-'.date("Ymd-His") . $extensao; // não deixa duas fotos no mesmo nome
                $nome_foto_completo = $pasta_destino.'capa1-'.date("Ymd-His") . $extensao; // não deixa duas fotos no mesmo nome
                move_uploaded_file($_FILES['capa']['tmp_name'],$nome_foto_completo); //tmp_name é o nome temporario que é dado à foto
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
        $dados =[
            'titulo' => $titulo,
            'autor' => $autor,
            'capa' => $nome_foto,
            'artigo' => $artigo,
            'pdf' => $pdf,
            'banca' => $banca,
            'texto' => $texto
        ];

        insere(
            'livros',
            $dados
        );
        header('Location: ../cadastro_livro.php');
        
        break; */
}