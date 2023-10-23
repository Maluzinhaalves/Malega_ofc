<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- BOOTSTRAP CSS-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <div class="container">
        <h1>Cadastro de livros - Malega Libros</h1>

        <?php 

        if(!empty($idLivro)){
            $idLivro = (int)$idLivro;

            $criterio = [
                ['idLivro', '=', $idLivro]
            ];

            $retorno = buscar(
                'livros',
                ['*'],
                $criterio
            );

            $entidade = $retorno[0];
        }
    ?>
        
        
           
            <form  action="core/livro_repositorio.php" method="POST" enctype="multipart/form-data"> <!-- enctype especifica

            como os dados do usuario devem ser codificados-->
            <div class="form-row"> <!--offset: pula colunas da linha-->  
                <input type="hidden" name="acao" value="insert">       
                <div class="form-group  col-12 col-md-6">
                    <label for="titulo"><strong>Titulo</strong></label>
                    <input type="text" class="form-control" name="titulo" id="titulo" required>
                </div>
                <div class="form-group col-12 col-md-6">
                    <label for="autor"><strong>Autor</strong></label>
                    <input type="text" class="form-control" name="autor" id="autor" required>
                </div>
            </div>               
            <div class="form-row">          
                <div class="form-group col-4 col-md-6">
                    <label for="capa"><strong>Primeira capa do livro</strong></label>
                    <input type="file" class="form-control-file" name="capa" id="capa" accept="image/*" required>
                </div>        
                <div class="form-group col-4 col-md-6">
                    <label for="capa2"><strong>Segunda capa do livro</strong></label>
                    <input type="file" class="form-control-file" name="capa2" id="capa2" accept="image/*" required>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-12 col-md-6">
                    <label for="pdf"><strong>PDF (opcional)</strong></label>
                    <input type="file" class="form-control-file" name="pdf" id="pdf" accept="pdf/*"required>
                </div>
                <div class="form-group col-12 col-md-6">
                    <label for="banca"><strong>Banca (opcional)</strong></label><br>
                    <select name="banca" id="banca">
                        <option value="enem">ENEM</option>
                        <option value="comvest">COMVEST</option>
                        <option value="fuvest">FUVEST</option>
                        <option value="vunesp">VUNESP</option>
                        <option value="ausente">Ausente</option>
                      </select>
                </div>
            </div>
            <div class="form-group col-12 col-md-6">
                <div class="mb-3">
                    <label for="texto" class="form-label"><strong>Resumo</strong></label><br>
                    <textarea type="text" name="texto" class="form-control"id="texto" rows="4" required></textarea>
                </div>
            </div>       
            
            <div class="form-row">          
                <input type="submit" class="btn btn-primary col-2" value="Salvar">
            </div>
            </form>
        
        <a href="adm.php">Voltar</a><br>
        <a href="php/listar_livro.php">Lista de livros</a>
    </div>
</body>
</html>