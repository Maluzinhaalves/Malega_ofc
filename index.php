<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Malega Libros</title>

    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

    <!-- link da fonte awesome cdn  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <!-- link do css -->
    <link rel="stylesheet" href="css/style.css">

</head>

<body>

    <!-- cabeçalho (header section)-->

    <header class="header">

        <section class="header-1">

            <a href="#" class="logo"> <i class="fas fa-book"></i> Malega </a>

            <form action="php\busca.php" class="search-form">
                <input type="search" name="titulo" placeholder="Pesquise seu livro" id="search-box">
                <button for="search-box" class="fas fa-search" type="submit"></button> 
            </form>

            <div class="icons">
                <div id="search-btn" class="fas fa-search"></div>
                <a href="#" class="fas fa-heart"></a>
                <a href="#" class="fas fa-star"></a>
                <div id="login-btn" class="fas fa-address-card"></div>
            </div>

        </section>

        <div class="header-2">
            <nav class="navbar">
                <a href="#home">home</a>
                <a href="#livros">livros</a>
                <a href="#reviews">reviews</a>
                <a href="#vestibular">vestibular</a>
            </nav>
        </div>

    </header>

    <!-- final cabeçalho (header section) -->

    <!-- barra de navegação (bottom-navbar) -->

    <!-- fas fa site: https://muffingroup.com/betheme/elements/icons/ -->

    <nav class="bottom-navbar">
        <a href="#home" class="fas fa-home"></a>
        <a href="#livros" class="fas fa-book-reader"></a>
        <a href="#reviews" class="fas fa-comments"></a>
        <a href="#vestibular" class="fas fa-book-open"></a>
    </nav>

    <!-- formulario login (login-form)  -->

    <div class="login-form-container">
    <div id="close-login-btn" class="fas fa-times"></div>

    <main>
        <div class="login-container" id="login-container">
            <div class="form-container">
                <form action="php/login_usuario.php" method="post" class="form form-login">
                    <h2 class="form-title">Entrar com</h2>
                    <div class="form-social">
                        <a href="#" class="social-icon">
                            <i class="fab fa-facebook-f"></i>
                        </a>
                        <a href="#" class="social-icon">
                            <i class="fab fa-google"></i>
                        </a>
                        
                    </div>
                    <p class="form-text">ou utilize sua conta</p>
                    <div class="form-input-container">
                        <input type="email" name="emailUsuario" class="form-input" placeholder="Email">
                        <input type="password" name="senhaUsuario" class="form-input" placeholder="Senha">
                    </div>
                    <a href="#" class="form-link">Esqueceu a senha?</a>
                    <button type="button" class="form-button">Logar</button>
                    <p class="mobile-text">
                        Não tem conta?
                        <a href="#" id="open-register-mobile">Registre-se</a>
                    </p>
                </form>
                <form action="core/usuario_repositorio.php" method="post" class="form form-register">
                <input type="hidden" name="acao" value="insert">
                    <h2 class="form-title">Criar Conta</h2>
                    <div class="form-social">
                        <a href="#" class="social-icon">
                            <i class="fab fa-facebook-f"></i>
                        </a>
                        <a href="#" class="social-icon">
                            <i class="fab fa-google"></i>
                        </a>
                        
                    </div>
                    <p class="form-text">ou cadastre seu email</p>
                    <div class="form-input-container">
                        <input type="text" name="nomeUsuario" class="form-input" placeholder="Nome">
                        <input type="email" name="emailUsuario" class="form-input" placeholder="Email">
                        <input type="password" name="senhaUsuario" class="form-input" placeholder="Senha">
                    </div>
                    <button type="submit" class="form-button">Cadastrar</button>
                    <p class="mobile-text">
                        Já tem conta?
                        <a href="#" id="open-login-mobile">Login</a>
                    </p>
                </form>
            </div>
            <div class="overlay-container">
                <div class="overlay">
                    <h2 class="form-title form-title-light">Já tem conta?</h2>
                    <p class="form-text">Para entrar na nossa plataforma faça login com suas informações</p>
                    <button class="form-button form-button-light" id="open-login">Entrar</button>
                </div>
                <div class="overlay">
                    <h2 class="form-title form-title-light">Olá Leitor(a)</h2>
                    <p class="form-text">Cadastre-se e comece a usar a nossa plataforma 📚</p>
                    <button class="form-button form-button-light" id="open-register">Cadastrar</button>
                </div>
            </div>
        </div>
    </main>

    </div>

    <!-- começo da home section  -->

    <div class="home-container">

        <section class="home" id="home">

            <div class="row">

                <div class="content">
                    <h3>Preferidos do booktok</h3>
                    <h3>
                        <p>Os livros favoritos da internet</p>
                    </h3>
                </div>

                <div class="swiper books-slider">
                    <div class="swiper-wrapper">
                        <a href="#" class="swiper-slide"><img src="image/book-1.png" alt=""></a>
                        <a href="#" class="swiper-slide"><img src="image/book-2.png" alt=""></a>
                        <a href="#" class="swiper-slide"><img src="image/book-3.png" alt=""></a>
                        <a href="#" class="swiper-slide"><img src="image/book-4.png" alt=""></a>
                        <a href="#" class="swiper-slide"><img src="image/book-5.png" alt=""></a>
                        <a href="#" class="swiper-slide"><img src="image/book-6.png" alt=""></a>
                    </div>
                    <img src="image/stand.png" class="stand" alt="">
                </div>

            </div>

        </section>

    </div>

    <!-- final da home section  -->

    <!-- começo dos icons section  -->

    <section class="icons-container">

        <div class="icons">
            <i class="fas fa-book"></i>
            <div class="content">
                <h3><a href="">FUVEST</a></h3>
                <p>Leituras obrigatórias da Fuvest</p>
            </div>
        </div>

        <div class="icons">
            <i class="fas fa-book"></i>
            <div class="content">
                <h3><a href="">COMVEST</a></h3>
                <p>Leituras obrigatóras da Unicamp</p>
            </div>
        </div>

        <div class="icons">
            <i class="fas fa-book"></i>
            <div class="content">
                <h3><a href="">VUNESP</a></h3>
                <p>Leitutas obrigatórias Unesp</p>
            </div>
        </div>

        <div class="icons">
            <i class="fas fa-book"></i>
            <div class="content">
                <h3><a href="">ENEM</a></h3>
                <p>literatura no ENEM</p>
            </div>
        </div>

    </section>

    <!-- final do icons section -->

    <!-- começo da featured section -->

    <section class="featured" id="livros">

        <h1 class="heading"> <span>LIVROS</span> </h1>

        <div class="swiper featured-slider">

            <div class="swiper-wrapper">

                <div class="swiper-slide box">
                    <div class="icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
                    <div class="image">
                        <img src="image/book-1.png" alt="">
                    </div>
                    <div class="content">
                        <h3>livros</h3>
                        <a href="#" class="btn">adicione aos favoritos</a>
                    </div>
                </div>

                <div class="swiper-slide box">
                    <div class="icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
                    <div class="image">
                        <img src="image/book-2.png" alt="">
                    </div>
                    <div class="content">
                        <h3>livros</h3>
                        <a href="#" class="btn">adicione aos favoritos</a>
                    </div>
                </div>

                <div class="swiper-slide box">
                    <div class="icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
                    <div class="image">
                        <img src="image/book-3.png" alt="">
                    </div>
                    <div class="content">
                        <h3>livros</h3>
                        <a href="#" class="btn">adicione aos favoritos</a>
                    </div>
                </div>

                <div class="swiper-slide box">
                    <div class="icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
                    <div class="image">
                        <img src="image/book-4.png" alt="">
                    </div>
                    <div class="content">
                        <h3>livros</h3>
                        <a href="#" class="btn">adicione aos favoritos</a>
                    </div>
                </div>

                <div class="swiper-slide box">
                    <div class="icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
                    <div class="image">
                        <img src="image/book-5.png" alt="">
                    </div>
                    <div class="content">
                        <h3>livros</h3>
                        <a href="#" class="btn">adicione aos favoritos</a>
                    </div>
                </div>

                <div class="swiper-slide box">
                    <div class="icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
                    <div class="image">
                        <img src="image/book-6.png" alt="">
                    </div>
                    <div class="content">
                        <h3>livros</h3>
                        <a href="#" class="btn">adicione aos favoritos</a>
                    </div>
                </div>

                <div class="swiper-slide box">
                    <div class="icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
                    <div class="image">
                        <img src="image/book-7.png" alt="">
                    </div>
                    <div class="content">
                        <h3>livros</h3>
                        <a href="#" class="btn">adicione aos favoritos</a>
                    </div>
                </div>


            </div>

            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>

        </div>

    </section>



    <!-- começo da arrivals section  -->

    <section class="arrivals" id="vestibular">

        <h1 class="heading"> <span>Leituras obrigatórias</span> </h1>

        <div class="swiper arrivals-slider">

            <div class="swiper-wrapper">

                <a href="#" class="swiper-slide box">
                    <div class="image">
                        <img src="image/book-1.png" alt="">
                    </div>
                    <div class="content">
                        <h3>livros</h3>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                        </div>
                    </div>
                </a>

                <a href="#" class="swiper-slide box">
                    <div class="image">
                        <img src="image/book-2.png" alt="">
                    </div>
                    <div class="content">
                        <h3>livros</h3>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                        </div>
                    </div>
                </a>

                <a href="#" class="swiper-slide box">
                    <div class="image">
                        <img src="image/book-3.png" alt="">
                    </div>
                    <div class="content">
                        <h3>livros</h3>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                        </div>
                    </div>
                </a>

                <a href="#" class="swiper-slide box">
                    <div class="image">
                        <img src="image/book-4.png" alt="">
                    </div>
                    <div class="content">
                        <h3>livros</h3>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                        </div>
                    </div>
                </a>

                <a href="#" class="swiper-slide box">
                    <div class="image">
                        <img src="image/book-5.png" alt="">
                    </div>
                    <div class="content">
                        <h3>livros</h3>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                        </div>
                    </div>
                </a>

            </div>

        </div>

        <div class="swiper arrivals-slider">

            <div class="swiper-wrapper">

                <a href="#" class="swiper-slide box">
                    <div class="image">
                        <img src="image/book-6.png" alt="">
                    </div>
                    <div class="content">
                        <h3>livros</h3>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                        </div>
                    </div>
                </a>

                <a href="#" class="swiper-slide box">
                    <div class="image">
                        <img src="image/book-7.png" alt="">
                    </div>
                    <div class="content">
                        <h3>livros</h3>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                        </div>
                    </div>
                </a>

                <a href="#" class="swiper-slide box">
                    <div class="image">
                        <img src="image/book-8.png" alt="">
                    </div>
                    <div class="content">
                        <h3>livros</h3>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                        </div>
                    </div>
                </a>



            </div>

    </section>


    <!-- final da arrivals section -->

    <!-- final da deal section -->

    <!-- começo da reviews section -->

    <section class="reviews" id="reviews">

        <h1 class="heading"> <span>Comentarios</span> </h1>

        <div class="swiper reviews-slider">

            <div class="swiper-wrapper">

                <div class="swiper-slide box">
                    <img src="image/pic-1.png" alt="">
                    <h3>Mariano_Romântico</h3>
                    <p>Acabei de ler 'O Amor Eterno' e estou completamente encantada! A história de amor entre os protagonistas me fez suspirar a cada página. Recomendo a todos os românticos de plantão!</p>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                </div>

                <div class="swiper-slide box">
                    <img src="image/pic-2.png" alt="">
                    <h3>Aventureiro_Explorador</h3>
                    <p>Se você é fã de aventuras épicas, não pode deixar de ler 'A Busca pelo Tesouro Perdido'. A trama é cheia de reviravoltas emocionantes e te mantém grudado até a última página. Uma leitura imperdível para os aventureiros de coração!</p>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                </div>

                <div class="swiper-slide box">
                    <img src="image/pic-3.png" alt="">
                    <h3>Leitora_Apaixonada</h3>
                    <p>O livro 'Memórias de uma Vida' é simplesmente magnífico! A autora conseguiu criar personagens tão cativantes e uma narrativa tão envolvente que eu não conseguia largar o livro. É uma obra que mexe com as emoções e te faz refletir sobre a vida.</p>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                </div>
                <div class="swiper-slide box">
                    <img src="image/pic-4.png" alt="">
                    <h3>Fã_de_Mistério</h3>
                    <p>Se você gosta de suspense e mistério, não pode perder 'O Enigma das Sombras'. É um verdadeiro quebra-cabeças literário, cheio de pistas e reviravoltas surpreendentes. Prepare-se para ficar intrigado do começo ao fim!</p>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                </div>

                <div class="swiper-slide box">
                    <img src="image/pic-5.png" alt="">
                    <h3>Aprendiz_de_Fantasia</h3>
                    <p>Eu simplesmente adorei 'O Reino dos Dragões'. A escrita do autor é incrível e te transporta para um mundo mágico cheio de criaturas fantásticas. É uma leitura perfeita para quem ama fantasia e quer se perder em aventuras inimagináveis.</p>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                </div>

                <div class="swiper-slide box">
                    <img src="image/pic-6.png" alt="">
                    <h3>Amante_da_Poesia</h3>
                    <p>Versos da Alma' é um livro de poesias que toca profundamente a alma. As palavras do autor são verdadeiras obras de arte, cheias de sentimentos e reflexões sobre a vida. É uma leitura que te faz refletir e apreciar a beleza das palavras.</p>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                </div>

            </div>

        </div>

    </section>

    <!-- final da reviews section -->

    <!-- começo da blogs section  -->

    <section class="blogs" id="blogs">

        <h1 class="heading"> <span>Analise de leituras</span> </h1>

        <div class="swiper blogs-slider">

            <div class="swiper-wrapper">

                <div class="swiper-slide box">
                    <div class="image">
                        <img src="image/blog-1.jpg" alt="">
                    </div>
                    <div class="content">
                        <h3>titulo</h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Optio, odio.</p>
                        <a href="#" class="btn">leia mais</a>
                    </div>
                </div>

                <div class="swiper-slide box">
                    <div class="image">
                        <img src="image/blog-2.jpg" alt="">
                    </div>
                    <div class="content">
                        <h3>titulo</h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Optio, odio.</p>
                        <a href="#" class="btn">leia mais</a>
                    </div>
                </div>

                <div class="swiper-slide box">
                    <div class="image">
                        <img src="image/blog-3.jpg" alt="">
                    </div>
                    <div class="content">
                        <h3>titulo</h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Optio, odio.</p>
                        <a href="#" class="btn">leia mais </a>
                    </div>
                </div>

                <div class="swiper-slide box">
                    <div class="image">
                        <img src="image/blog-4.jpg" alt="">
                    </div>
                    <div class="content">
                        <h3>titulo</h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Optio, odio.</p>
                        <a href="#" class="btn">leia mais</a>
                    </div>
                </div>

                <div class="swiper-slide box">
                    <div class="image">
                        <img src="image/blog-5.jpg" alt="">
                    </div>
                    <div class="content">
                        <h3>livros</h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Optio, odio.</p>
                        <a href="#" class="btn">leia mais</a>
                    </div>
                </div>

            </div>

        </div>

    </section>

    <!-- final da blogs section -->

    <!-- começo do footer section -->

    <section class="footer">

        <div class="box-container">


            <div class="box">
                <h3>links rápidos</h3>
                <a href="#"> <i class="fas fa-arrow-right"></i> home </a>
                <a href="#"> <i class="fas fa-arrow-right"></i> livros </a>
                <a href="#"> <i class="fas fa-arrow-right"></i> reviews </a>
                <a href="#"> <i class="fas fa-arrow-right"></i> vestibular </a>
            </div>

            <div class="box">
                <h3>links extras</h3>
                <a href="#"> <i class="fas fa-arrow-right"></i> informações da conta </a>
                <a href="#"> <i class="fas fa-arrow-right"></i> política de privacidade </a>
                <a href="#"> <i class="fas fa-arrow-right"></i> outros serviços </a>
            </div>

            <div class="box">
                <h3>Entre em contato</h3>
                <a href="#"> <i class="fas fa-envelope"></i> malega@gmail.com </a>

            </div>

        </div>

        <div class="share">
            <a href="#" class="fab fa-facebook-f"></a>
            <a href="#" class="fab fa-twitter"></a>
            <a href="#" class="fab fa-instagram"></a>
            <a href="#" class="fab fa-linkedin"></a>
            <a href="#" class="fab fa-pinterest"></a>
        </div>

        <div class="credit"> created by <span> MALEGA LIBROS </span> | todos os direitos reservados! </div>

    </section>

    <!-- final do footer section -->

    <!-- loader  -->

    <div class="loader-container">
        <img src="image/loader-img.gif" alt="">
    </div>
















    <script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>

    <!-- link do javascript  -->
    <script src="js/script.js"></script>

</body>

</html>