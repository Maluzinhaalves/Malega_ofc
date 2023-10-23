<?php 
include('conexao.php');
$idLivro = $_GET['idLivro']; //Aqui é get, já que passa pela URL
$sql = "DELETE from livros WHERE idLivro=$idLivro";

require_once '../includes/funcoes.php';
require_once '../core/sql.php';
require_once '../core/mysql.php';
require_once '../core/conexao_mysql.php';

$criterio[] = ['idLivro', 'like', "{$idLivro}"];

$result = buscar(
    'livros',
    [   
        'capa',
        'capa2',
        'pdf'
    ],
    $criterio
);

$pasta = "../imagensLivro/";
$pdfD = "../pdf/";
unlink($pasta.$capa);
unlink($pasta.$capa2);
unlink($pdfD.$pdf);



$result = mysqli_query($con,$sql); //a variavel result vai ter o resultado, se deu certo ou n
    if($result){
        echo "Dados Alterados com sucesso!<br>";}
    else{
        echo "Erro ao alterar dados: ".mysqli_error($con)."<br>";}
?>
<a href="listar_livro.php">Voltar</a>