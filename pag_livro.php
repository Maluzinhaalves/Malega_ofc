<!DOCTYPE html>
<!-- saved from url=(0056)file:///C:/Users/ifsp/Desktop/writing%20courses%201.html -->
<html style="font-size: 16px;" lang="pt" class="u-responsive-sm"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <meta name="keywords" content="writing courses">
    <meta name="description" content="">
    <title>writing courses 1</title>
    <?php 
    
     session_start();
     require_once 'includes/funcoes.php';
     require_once 'core/conexao_mysql.php';
     require_once 'core/sql.php';
     require_once 'core/mysql.php';

     foreach($_POST as $indice => $dado) {
      $$indice = limparDados($dado);
  }
  
  foreach($_GET as $indice => $dado) {
      $$indice = limparDados($dado);
  }
    
  $livros = buscar(
      'livros',
          [
              'idLivro',
              'titulo',
              'autor',
              'capa',
              'artigo',
              'pdf',
              'banca',
              'texto'
           ],
    [
      ['idLivro', '=', $idLivro]
    ]
);
$livro = $livros[0];
$pasta = "imagensLivro/";
    ?>
    <link rel="stylesheet" href="./paglibrocc 1_files/nicepage.css" media="screen">
<link rel="stylesheet" href="./paglibrocc 1_files/nicepage-site.css" media="screen">
<style>
.u-section-1 {
  background-image: none;
}

.u-section-1 .u-sheet-1 {
  min-height: 704px;
}

.u-section-1 .u-layout-wrap-1 {
  pointer-events: auto;
  width: 1214px;
  margin: 19px auto 0 -34px;
}

.u-section-1 .u-layout-cell-1 {
  min-height: 700px;
  pointer-events: auto;
  background-image: none;
}

.u-section-1 .u-container-layout-1 {
  padding: 60px;
}

.u-section-1 .u-icon-1 {
  height: 64px;
  width: 64px;
  margin: 8px auto 0;
}

.u-section-1 .u-text-1 {
  font-size: 5rem;
  text-transform: uppercase;
  font-weight: 200;
  margin: 6px 0 0;
}

.u-section-1 .u-image-1 {
  min-height: 700px;
  pointer-events: auto;
  background-image: url("<?php echo $pasta.$livro['capa']?>");
  background-position: 50% 32.89%;
}

.u-section-1 .u-container-layout-2 {
  padding: 30px 60px;
}

@media (max-width: 1199px) {
  .u-section-1 .u-sheet-1 {
    min-height: 566px;
  }

  .u-section-1 .u-layout-wrap-1 {
    width: 940px;
    margin-left: 0;
  }

  .u-section-1 .u-layout-cell-1 {
    min-height: 550px;
  }

  .u-section-1 .u-icon-1 {
    margin-top: 47px;
  }

  .u-section-1 .u-text-1 {
    font-size: 4.5rem;
    width: auto;
    margin-top: 19px;
  }

  .u-section-1 .u-image-1 {
    min-height: 542px;
  }
}

@media (max-width: 991px) {
  .u-section-1 .u-sheet-1 {
    min-height: 539px;
  }

  .u-section-1 .u-layout-wrap-1 {
    margin-right: initial;
    margin-left: initial;
    width: auto;
  }

  .u-section-1 .u-layout-cell-1 {
    min-height: 496px;
  }

  .u-section-1 .u-container-layout-1 {
    padding: 40px 30px;
  }

  .u-section-1 .u-text-1 {
    font-size: 3.75rem;
  }

  .u-section-1 .u-image-1 {
    min-height: 496px;
  }

  .u-section-1 .u-container-layout-2 {
    padding-left: 30px;
    padding-right: 30px;
  }
}

@media (max-width: 767px) {
  .u-section-1 .u-sheet-1 {
    min-height: 990px;
  }

  .u-section-1 .u-layout-wrap-1 {
    width: 425px;
    margin: 13px auto 39px;
  }

  .u-section-1 .u-layout-cell-1 {
    min-height: 309px;
  }

  .u-section-1 .u-container-layout-1 {
    padding-top: 30px;
    padding-bottom: 30px;
  }

  .u-section-1 .u-icon-1 {
    margin-top: 0;
  }

  .u-section-1 .u-text-1 {
    margin-top: 1px;
  }

  .u-section-1 .u-image-1 {
    min-height: 615px;
  }

  .u-section-1 .u-container-layout-2 {
    padding-top: 29px;
    padding-left: 10px;
    padding-right: 10px;
  }
}

@media (max-width: 575px) {
  .u-section-1 .u-sheet-1 {
    min-height: 672px;
  }

  .u-section-1 .u-layout-wrap-1 {
    margin-top: 37px;
    width: 340px;
  }

  .u-section-1 .u-layout-cell-1 {
    min-height: 100px;
  }

  .u-section-1 .u-container-layout-1 {
    padding-top: 0;
    padding-left: 25px;
    padding-right: 25px;
  }

  .u-section-1 .u-text-1 {
    font-size: 3rem;
  }

  .u-section-1 .u-image-1 {
    min-height: 492px;
  }
}.u-section-2 .u-sheet-1 {
  min-height: 107px;
} .u-section-3 {
  background-image: linear-gradient(0deg, rgba(0,0,0,0.4), rgba(0,0,0,0.4)), url("https://miro.medium.com/v2/resize:fit:1200/1*6Jp3vJWe7VFlFHZ9WhSJng.jpeg");
  background-position: 50% 50%;
}

.u-section-3 .u-sheet-1 {
  min-height: 712px;
}

.u-section-3 .u-text-1 {
  margin: 23px auto 0 0;
}

.u-section-3 .u-group-1 {
  width: 1047px;
  min-height: 565px;
  height: auto;
  margin: 23px auto;
}

.u-section-3 .u-container-layout-1 {
  padding: 30px 50px 0;
}

.u-section-3 .u-text-2 {
  font-size: 1.25rem;
  font-weight: 300;
  margin: 54px 44px 0 0;
}

.u-section-3 .u-text-3 {
  font-size: 1.25rem;
  font-weight: 300;
  margin: 64px 43px 0 0;
}

.u-section-3 .u-btn-1 {
  background-image: none;
  text-transform: uppercase;
  font-size: 1.125rem;
  letter-spacing: 2px;
  margin: 43px auto 0 390px;
  padding: 11px 24px 11px 23px;
}

.u-section-3 .u-btn-2 {
  background-image: none;
  text-transform: uppercase;
  font-size: 1.125rem;
  letter-spacing: 2px;
  margin: -53px auto 0 36px;
  padding: 11px 24px 11px 23px;
}

.u-section-3 .u-btn-3 {
  background-image: none;
  text-transform: uppercase;
  font-size: 1.125rem;
  letter-spacing: 2px;
  margin: -53px 64px 0 auto;
  padding: 11px 24px 11px 23px;
}

@media (max-width: 1199px) {
  .u-section-3 .u-sheet-1 {
    min-height: 713px;
  }

  .u-section-3 .u-group-1 {
    margin-right: initial;
    margin-left: initial;
    width: auto;
    height: auto;
  }

  .u-section-3 .u-text-2 {
    margin-right: 0;
  }

  .u-section-3 .u-text-3 {
    margin-right: 0;
  }

  .u-section-3 .u-btn-1 {
    margin-top: 49px;
    margin-right: 349px;
    margin-left: auto;
  }

  .u-section-3 .u-btn-2 {
    height: 50px;
    margin-left: 0;
  }

  .u-section-3 .u-btn-3 {
    margin-right: 15px;
  }
}

@media (max-width: 991px) {
  .u-section-3 .u-sheet-1 {
    min-height: 812px;
  }

  .u-section-3 .u-group-1 {
    min-height: 625px;
    margin-bottom: 60px;
    width: auto;
    margin-right: initial;
    margin-left: initial;
  }

  .u-section-3 .u-container-layout-1 {
    padding-left: 30px;
    padding-right: 30px;
  }

  .u-section-3 .u-btn-1 {
    margin-top: 46px;
    margin-right: auto;
    margin-left: 30px;
  }

  .u-section-3 .u-btn-2 {
    margin-left: auto;
  }

  .u-section-3 .u-btn-3 {
    margin-right: 45px;
  }
}

@media (max-width: 767px) {
  .u-section-3 .u-sheet-1 {
    min-height: 799px;
  }

  .u-section-3 .u-group-1 {
    margin-top: 4px;
    margin-bottom: 18px;
    min-height: 688px;
    width: auto;
    margin-right: initial;
    margin-left: initial;
  }

  .u-section-3 .u-container-layout-1 {
    padding-left: 20px;
    padding-right: 20px;
  }

  .u-section-3 .u-btn-1 {
    margin-top: 63px;
    margin-right: 12px;
    margin-left: auto;
    padding: 4px 11px 6px 10px;
  }

  .u-section-3 .u-btn-2 {
    margin-top: -41px;
    margin-left: 18px;
    padding: 4px 10px 6px 9px;
  }

  .u-section-3 .u-btn-3 {
    margin-top: -41px;
    margin-right: 200px;
    padding-top: 4px;
    padding-bottom: 5px;
  }
}

@media (max-width: 575px) {
  .u-section-3 .u-sheet-1 {
    min-height: 636px;
  }

  .u-section-3 .u-text-1 {
    margin-top: 26px;
  }

  .u-section-3 .u-group-1 {
    margin-top: 0;
    margin-bottom: 43px;
    min-height: 515px;
    width: auto;
    margin-right: initial;
    margin-left: initial;
  }

  .u-section-3 .u-text-2 {
    font-size: 0.875rem;
    width: auto;
    margin-top: 0;
  }

  .u-section-3 .u-text-3 {
    font-size: 0.875rem;
    width: auto;
    margin-top: 33px;
  }

  .u-section-3 .u-btn-1 {
    font-size: 0.875rem;
    margin-top: 67px;
    margin-right: auto;
    margin-left: 0;
    padding-top: 3px;
    padding-bottom: 4px;
  }

  .u-section-3 .u-btn-2 {
    font-size: 0.875rem;
    margin-top: -81px;
    margin-left: 0;
    padding: 3px 0 5px;
  }

  .u-section-3 .u-btn-3 {
    font-size: 0.875rem;
    margin-top: 65px;
    margin-right: auto;
    margin-left: 0;
    padding-top: 2px;
    padding-bottom: 3px;
  }
}

</style>
    <script class="u-script" type="text/javascript" src="./paglibrocc 1_files/jquery-3.5.1.min.js.download" defer=""></script>
    <script class="u-script" type="text/javascript" src="./paglibrocc 1_files/nicepage.js.download" defer=""></script>
    <meta name="generator" content="Nicepage 5.18.2, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="./paglibrocc 1_files/css">
    <link id="u-page-google-font" rel="stylesheet" href="./paglibrocc 1_files/css(1)">
    
    
    
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"url": "/",
		"logo": "https://assets.nicepagecdn.com/9671796c/5604599/images/default-logo.png",
		"sameAs": []
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="writing courses 1">
    <meta property="og:type" content="website">
    <link rel="canonical" href="https://website5604599.nicepage.io/">
  </head>
  <body data-home-page="https://website5604599.nicepage.io/writing-courses-1.html?version=0b982a28-c8a9-4154-9508-d28ffd607f15" data-home-page-title="writing courses 1" data-path-to-root="/" class="u-body u-xl-mode" data-lang="pt"><header class="u-clearfix u-header u-header" id="sec-147c"><div class="u-clearfix u-sheet u-sheet-1">

        <a href="index.php" class="u-image u-logo u-image-1">
          <img src="./paglibrocc 1_files/logofalsa.png" class="u-logo-image u-logo-image-1">
        </a>
        <nav class="u-menu u-menu-hamburger u-offcanvas u-menu-1 u-enable-responsive" data-responsive-from="XL">
          <div class="menu-collapse" style="font-size: 1rem; letter-spacing: 0px;">
            <a class="u-button-style u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="https://website5604599.nicepage.io/?version=9306a033-5677-4d09-8f1c-758d5536aa61#">
              <svg class="u-svg-link" viewBox="0 0 24 24"><use xlink:href="#menu-hamburger"></use></svg>
              <svg class="u-svg-content" version="1.1" id="menu-hamburger" viewBox="0 0 16 16" x="0px" y="0px" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg"><g><rect y="1" width="16" height="2"></rect><rect y="7" width="16" height="2"></rect><rect y="13" width="16" height="2"></rect>
</g></svg>
            </a>
          </div>
          <div class="u-custom-menu u-nav-container" wfd-invisible="true">
            <ul class="u-nav u-unstyled u-nav-1"><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="https://website5604599.nicepage.io/?version=9306a033-5677-4d09-8f1c-758d5536aa61#" style="padding: 10px 20px;">home</a>
</li></ul>
          </div>
          <div class="u-custom-menu u-nav-container-collapse">
            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-inner-container-layout u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="https://website5604599.nicepage.io/?version=9306a033-5677-4d09-8f1c-758d5536aa61#" style="padding: 10px 20px;"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">lar</font>
</font>
</a>
</li></ul>
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70" wfd-invisible="true"></div>
          </div>
        <style class="offcanvas-style">            .u-offcanvas .u-sidenav { flex-basis: 250px !important; }            .u-offcanvas:not(.u-menu-open-right) .u-sidenav { margin-left: -250px; }            .u-offcanvas.u-menu-open-right .u-sidenav { margin-right: -250px; }            @keyframes menu-shift-left    { from { left: 0;        } to { left: 250px;  } }            @keyframes menu-unshift-left  { from { left: 250px;  } to { left: 0;        } }            @keyframes menu-shift-right   { from { right: 0;       } to { right: 250px; } }            @keyframes menu-unshift-right { from { right: 250px; } to { right: 0;       } }            </style></nav>
      </div></header>
    <section class="u-align-center u-clearfix u-custom-color-1 u-section-1" id="carousel_6b23">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="data-layout-selected u-clearfix u-expanded-width-md u-gutter-0 u-layout-wrap u-layout-wrap-1">
          <div class="u-layout" style="">
            <div class="u-layout-row" style="">
              <div class="u-container-style u-layout-cell u-left-cell u-shape-rectangle u-size-30 u-size-xs-60 u-white u-layout-cell-1" src="">
                <div class="u-container-layout u-container-layout-1"><span class="u-file-icon u-hidden-xs u-icon u-icon-1"><img src="./paglibrocc 1_files/2702162.png" alt=""></span>
                  <lt-highlighter class="lt-highlighter--grid-item" style="display: none; z-index: 1 !important;">
                    <lt-div spellcheck="false" class="lt-highlighter__wrapper" style="width: 475px; height: 264px; transform: none !important; transform-origin: 237.5px 132px !important; zoom: 1 !important; margin-top: 138px; margin-left: 60px;">
                      <lt-div class="lt-highlighter__scroll-element" style="top: 0px; left: 0px; width: 475px; height: 279px;"></lt-div>
                    </lt-div>
                  </lt-highlighter>
                  <h1 class="u-align-center u-custom-font u-font-oswald u-text u-text-1">
                    <font style="vertical-align: inherit;">
                      <font style="vertical-align: inherit;"> <?php echo $livro['titulo']?></font>
                    </font>
                  </h1>
                </div>
              </div>
              <div class="u-align-left u-container-style u-image u-layout-cell u-right-cell u-size-30 u-size-xs-60 u-image-1" data-image-width="1772" data-image-height="2560">
                <div class="u-container-layout u-valign-bottom u-container-layout-2" src=""></div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="u-align-center u-clearfix u-custom-color-1 u-hidden-md u-hidden-sm u-hidden-xs u-section-2" id="sec-7f18">
      <div class="u-clearfix u-sheet u-sheet-1"></div>
    </section>
    <section class="u-align-center u-clearfix u-image u-shading u-section-3" src="" data-image-width="1200" data-image-height="703" id="sec-6edb">
      <div class="u-clearfix u-sheet u-valign-middle-xl u-sheet-1">
        <lt-highlighter style="display: none; z-index: 1 !important;">
          <lt-div spellcheck="false" class="lt-highlighter__wrapper" style="width: 486px; height: 79px; transform: none !important; transform-origin: 243.102px 39.5938px !important; zoom: 1 !important; margin-top: 23px;">
            <lt-div class="lt-highlighter__scroll-element" style="top: 0px; left: 0px; width: 486px; height: 82px;"></lt-div>
          </lt-div>
        </lt-highlighter>
        <h1 class="u-text u-text-default u-title u-text-1">
          <font style="vertical-align: inherit;">
            <font style="vertical-align: inherit;">INFORMATIVO</font>
          </font>
        </h1>
        <div class="u-container-style u-custom-color-3 u-expanded-width-lg u-expanded-width-md u-expanded-width-sm u-expanded-width-xs u-group u-group-1">
          <div class="u-container-layout u-container-layout-1">
            <lt-highlighter class="lt-highlighter--grid-item" style="display: none; z-index: 1 !important;">
              <lt-div spellcheck="false" class="lt-highlighter__wrapper" style="width: 962px; height: 128px; transform: none !important; transform-origin: 480.766px 64px !important; zoom: 1 !important; margin-top: 222px; margin-left: 50px;">
                <lt-div class="lt-highlighter__scroll-element" style="top: 0px; left: 0px; width: 962px; height: 128px;">
                  <canvas class="lt-highlighter__canvas" width="93" height="28" style="display: none; top: 2px; left: 210px;"></canvas>
                </lt-div>
              </lt-div>
            </lt-highlighter>
            <p class="u-align-center-lg u-align-center-md u-align-center-sm u-align-center-xl u-align-left-xs u-text u-text-2">
              <font style="vertical-align: inherit;">
                <font style="vertical-align: inherit;"><?php echo $livro['texto']?></font>
              </font>
            </p>
            <p class="u-align-left u-text u-text-3">
              <br>
              <br>
              <font style="vertical-align: inherit;">
                <font style="vertical-align: inherit;">Vestibular: <?php echo $livro['banca']?> </font>
              </font>
              <br>
              <br>
              <font style="vertical-align: inherit;">
                <font style="vertical-align: inherit;">Autor: <?php echo $livro['autor']?></font>
              </font>
              <br>
              <br>
              <br>
            </p>
            <lt-highlighter style="display: none; z-index: 1 !important;">
              <lt-div spellcheck="false" class="lt-highlighter__wrapper" style="width: 84px; height: 31px; transform: none !important; transform-origin: 42.2344px 15.6562px !important; zoom: 1 !important; margin-top: 67px; margin-left: 0px;">
                <lt-div class="lt-highlighter__scroll-element" style="top: 0px; left: 0px; width: 84px; height: 31px;">
                  <canvas class="lt-highlighter__canvas" width="78" height="25" style="display: none; top: 6px; left: 9px;"></canvas>
                </lt-div>
              </lt-div>
            </lt-highlighter>
            <a href="<?php echo $livro['artigo']?>" class="u-btn u-btn-round u-button-style u-color-scheme-summer-time u-custom-color-1 u-radius-50 u-btn-1">
              <font style="vertical-align: inherit;">
                <font style="vertical-align: inherit;">Artigo</font>
              </font>
            </a>
            <lt-highlighter style="display: none; z-index: 1 !important;">
              <lt-div spellcheck="false" class="lt-highlighter__wrapper" style="width: 92px; height: 32px; transform: none !important; transform-origin: 46px 15.8125px !important; zoom: 1 !important; margin-top: -81px; margin-left: 0px;">
                <lt-div class="lt-highlighter__scroll-element" style="top: 0px; left: 0px; width: 92px; height: 32px;">
                  <canvas class="lt-highlighter__canvas" width="115" height="25" style="display: none; top: 6px; left: 0px;"></canvas>
                </lt-div>
              </lt-div>
            </lt-highlighter>
            <a href="chat.php?idLivro=<?php echo $idLivro?>" class="u-btn u-btn-round u-button-style u-color-scheme-summer-time u-custom-color-1 u-radius-50 u-btn-2">
              <font style="vertical-align: inherit;">
                <font style="vertical-align: inherit;">Bate papo</font>
              </font>
            </a>
            <lt-highlighter style="display: none; z-index: 1 !important;">
              <lt-div spellcheck="false" class="lt-highlighter__wrapper" style="width: 78px; height: 29px; transform: none !important; transform-origin: 38.8047px 14.3438px !important; zoom: 1 !important; margin-top: 16px; margin-left: 0px;">
                <lt-div class="lt-highlighter__scroll-element" style="top: 0px; left: 0px; width: 78px; height: 29px;"></lt-div>
              </lt-div>
            </lt-highlighter>
            <?php $pastaD = "pdf/"?>
            <a href="<?php echo $pastaD.$livro['pdf']?>" class="u-btn u-btn-round u-button-style u-color-scheme-summer-time u-custom-color-1 u-radius-50 u-btn-3">
              <font style="vertical-align: inherit;">
                <font style="vertical-align: inherit;">PDF</font>
              </font>
            </a>
          </div>
        </div>
      </div>
    </section>
    
    
    
    <footer class="u-clearfix u-footer u-palette-2-base" id="sec-589f"><div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-align-left u-social-icons u-spacing-10 u-social-icons-1">
          <a class="u-social-url" target="_blank" href="https://website5604599.nicepage.io/?version=9306a033-5677-4d09-8f1c-758d5536aa61"><span class="u-icon u-icon-circle u-social-facebook u-social-icon u-icon-1"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xlink:href="#svg-83b0"></use></svg><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 112 112" x="0px" y="0px" id="svg-83b0"><path d="M75.5,28.8H65.4c-1.5,0-4,0.9-4,4.3v9.4h13.9l-1.5,15.8H61.4v45.1H42.8V58.3h-8.8V42.4h8.8V32.2 c0-7.4,3.4-18.8,18.8-18.8h13.8v15.4H75.5z"></path></svg></span>
          </a>
          <a class="u-social-url" target="_blank" href="https://website5604599.nicepage.io/?version=9306a033-5677-4d09-8f1c-758d5536aa61"><span class="u-icon u-icon-circle u-social-icon u-social-twitter u-icon-2"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xlink:href="#svg-06a8"></use></svg><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 112 112" x="0px" y="0px" id="svg-06a8"><path d="M92.2,38.2c0,0.8,0,1.6,0,2.3c0,24.3-18.6,52.4-52.6,52.4c-10.6,0.1-20.2-2.9-28.5-8.2 c1.4,0.2,2.9,0.2,4.4,0.2c8.7,0,16.7-2.9,23-7.9c-8.1-0.2-14.9-5.5-17.3-12.8c1.1,0.2,2.4,0.2,3.4,0.2c1.6,0,3.3-0.2,4.8-0.7 c-8.4-1.6-14.9-9.2-14.9-18c0-0.2,0-0.2,0-0.2c2.5,1.4,5.4,2.2,8.4,2.3c-5-3.3-8.3-8.9-8.3-15.4c0-3.4,1-6.5,2.5-9.2 c9.1,11.1,22.7,18.5,38,19.2c-0.2-1.4-0.4-2.8-0.4-4.3c0.1-10,8.3-18.2,18.5-18.2c5.4,0,10.1,2.2,13.5,5.7c4.3-0.8,8.1-2.3,11.7-4.5 c-1.4,4.3-4.3,7.9-8.1,10.1c3.7-0.4,7.3-1.4,10.6-2.9C98.9,32.3,95.7,35.5,92.2,38.2z"></path></svg></span>
          </a>
          <a class="u-social-url" target="_blank" href="https://website5604599.nicepage.io/?version=9306a033-5677-4d09-8f1c-758d5536aa61"><span class="u-icon u-icon-circle u-social-icon u-social-instagram u-icon-3"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xlink:href="#svg-150d"></use></svg><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 112 112" x="0px" y="0px" id="svg-150d"><path d="M55.9,32.9c-12.8,0-23.2,10.4-23.2,23.2s10.4,23.2,23.2,23.2s23.2-10.4,23.2-23.2S68.7,32.9,55.9,32.9z M55.9,69.4c-7.4,0-13.3-6-13.3-13.3c-0.1-7.4,6-13.3,13.3-13.3s13.3,6,13.3,13.3C69.3,63.5,63.3,69.4,55.9,69.4z"></path><path d="M79.7,26.8c-3,0-5.4,2.5-5.4,5.4s2.5,5.4,5.4,5.4c3,0,5.4-2.5,5.4-5.4S82.7,26.8,79.7,26.8z"></path><path d="M78.2,11H33.5C21,11,10.8,21.3,10.8,33.7v44.7c0,12.6,10.2,22.8,22.7,22.8h44.7c12.6,0,22.7-10.2,22.7-22.7 V33.7C100.8,21.1,90.6,11,78.2,11z M91,78.4c0,7.1-5.8,12.8-12.8,12.8H33.5c-7.1,0-12.8-5.8-12.8-12.8V33.7 c0-7.1,5.8-12.8,12.8-12.8h44.7c7.1,0,12.8,5.8,12.8,12.8V78.4z"></path></svg></span>
          </a>
          <a class="u-social-url" target="_blank" href="https://website5604599.nicepage.io/?version=9306a033-5677-4d09-8f1c-758d5536aa61"><span class="u-icon u-icon-circle u-social-icon u-social-linkedin u-icon-4"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xlink:href="#svg-b7db"></use></svg><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 112 112" x="0px" y="0px" id="svg-b7db"><path d="M33.8,96.8H14.5v-58h19.3V96.8z M24.1,30.9L24.1,30.9c-6.6,0-10.8-4.5-10.8-10.1c0-5.8,4.3-10.1,10.9-10.1 S34.9,15,35.1,20.8C35.1,26.4,30.8,30.9,24.1,30.9z M103.3,96.8H84.1v-31c0-7.8-2.7-13.1-9.8-13.1c-5.3,0-8.5,3.6-9.9,7.1 c-0.6,1.3-0.6,3-0.6,4.8V97H44.5c0,0,0.3-52.6,0-58h19.3v8.2c2.6-3.9,7.2-9.6,17.4-9.6c12.7,0,22.2,8.4,22.2,26.1V96.8z"></path></svg></span>
          </a>
        </div>
      </div></footer>
    <section class="u-backlink u-clearfix u-grey-80">
      <a class="u-link" href="https://website5604599.nicepage.io/website-templates" target="_blank">
        <span>Website Templates</span>
      </a>
      <p class="u-text">
        <span>created with</span>
      </p>
      <a class="u-link" href="https://website5604599.nicepage.io/html-website-builder" target="_blank">
        <span>Visual HTML Editor</span>
      </a>. 
    </section>
  
<style>.u-disable-duration * {transition-duration: 0s !important;}</style><style>.u-disable-duration * {transition-duration: 0s !important;}</style></body></html>