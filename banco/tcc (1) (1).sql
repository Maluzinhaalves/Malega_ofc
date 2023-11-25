-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 25/11/2023 às 23:41
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `tcc`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `comentarios`
--

CREATE TABLE `comentarios` (
  `idComen` int(11) NOT NULL,
  `idLivro` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `textoComen` text DEFAULT NULL,
  `tituloComen` varchar(255) DEFAULT NULL,
  `data_criacao` datetime NOT NULL DEFAULT current_timestamp(),
  `nota` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `comentarios`
--

INSERT INTO `comentarios` (`idComen`, `idLivro`, `idUsuario`, `textoComen`, `tituloComen`, `data_criacao`, `nota`) VALUES
(32, 18, 21, 'EWQFQEWF', 'EW', '2023-11-25 16:33:47', 5),
(33, 59, 23, 'melhor livro do mundo ', 'livro maravilhoso', '2023-11-25 19:29:58', 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `livros`
--

CREATE TABLE `livros` (
  `idLivro` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `autor` varchar(255) DEFAULT NULL,
  `capa` varchar(255) NOT NULL,
  `banca` varchar(20) NOT NULL,
  `pdf` varchar(255) NOT NULL DEFAULT 'ausente',
  `texto` varchar(255) NOT NULL,
  `artigo` varchar(255) NOT NULL,
  `nota` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `livros`
--

INSERT INTO `livros` (`idLivro`, `titulo`, `autor`, `capa`, `banca`, `pdf`, `texto`, `artigo`, `nota`) VALUES
(18, 'Capit&atilde;es de Areia ', 'Jorge Amado', 'capa1-20231125-203135.jpg', 'enem', 'pdf_livro-20231125-203135.pdf', '&quot;Capit&atilde;es da Areia&quot;, de Jorge Amado, &eacute; um emocionante retrato da vida de um grupo de meninos &oacute;rf&atilde;os que vivem nas ruas de Salvador, na Bahia, cometendo pequenos delitos para sobreviver. O livro mergulha nas vidas dest', 'https://www.editorarealize.com.br/editora/anais/jornada-rdl/2017/TRABALHO_EV084_MD1_SA6_ID40_24052017231514.pdf', 5),
(19, 'Dom Casmurro', 'Machado de Assis', 'capa1-20231125-203829.jpg', 'enem', 'pdf_livro-20231125-203829.pdf', '&quot;Dom Casmurro&quot; &eacute; outro cl&aacute;ssico de Machado de Assis que frequentemente aparece em provas de vestibular e no ENEM. O romance &eacute; narrado por Bento Santiago, tamb&eacute;m conhecido como Bentinho, que relata sua vida, incluindo ', 'https://www.editorarealize.com.br/editora/anais/jornada-rdl/2017/TRABALHO_EV084_MD1_SA6_ID40_24052017231514.pdf', 0),
(20, 'Grande Sert&atilde;o Veredas', 'Guimar&atilde;es Rosa', 'capa1-20231125-204113.jpg', 'enem', 'pdf_livro-20231125-204113.pdf', '&quot;Grande Sert&atilde;o: Veredas&quot; de Jo&atilde;o Guimar&atilde;es Rosa &eacute; um &eacute;pico da literatura brasileira que narra a jornada do protagonista Riobaldo pelo sert&atilde;o do Brasil. Misturando linguagem elaborada e regionalismo, o li', 'https://guiadoestudante.abril.com.br/estudo/grande-sertao-veredas-resumo-da-obra-de-guimaraes-rosa/', 0),
(21, 'Iracema', 'Jos&eacute; de Alencar', 'capa1-20231125-204327.jpg', 'enem', 'pdf_livro-20231125-204327.pdf', '&quot;Iracema&quot; &eacute; um romance indianista que narra a hist&oacute;ria da &iacute;ndia tabajara Iracema e seu amor proibido com o colonizador portugu&ecirc;s Martim. A obra &eacute; ambientada no Cear&aacute; no per&iacute;odo do descobrimento do ', 'https://www.todamateria.com.br/iracema/', 0),
(22, 'Mem&oacute;rias de um Sargento de Mil&iacute;cias', 'Manuel Ant&ocirc;nio de Almeida', 'capa1-20231125-204547.jpg', 'enem', 'pdf_livro-20231125-204547.pdf', 'Mem&oacute;rias de um Sargento de Mil&iacute;cias de Manuel Ant&ocirc;nio de Almeida\r\nEste romance &eacute; uma das primeiras obras do realismo na literatura brasileira. Ele conta a hist&oacute;ria do malandro Leonardo, filho de uma lavadeira e de um barb', 'https://guiadoestudante.abril.com.br/estudo/memorias-de-um-sargento-de-milicias-resumo-da-obra-de-manuel-antonio-de-almeida/', 0),
(23, 'Mem&oacute;rias P&oacute;stumas de Br&aacute;s Cubas', 'Machado de Assis', 'capa1-20231125-205044.jpg', 'enem', 'pdf_livro-20231125-205044.pdf', '&quot;Mem&oacute;rias P&oacute;stumas de Br&aacute;s Cubas&quot; &eacute; uma obra-prima da literatura brasileira escrita por Machado de Assis. O romance &eacute; narrado pelo defunto Br&aacute;s Cubas e apresenta uma s&aacute;tira mordaz &agrave; socieda', 'https://www.todamateria.com.br/resumo-e-analise-de-memorias-postumas-de-bras-cubas/', 0),
(24, 'O Corti&ccedil;o', 'Alu&iacute;sio de Azevedo', 'capa1-20231125-205346.jpg', 'enem', 'pdf_livro-20231125-205346.pdf', '&quot;O Corti&ccedil;o&quot; de Alu&iacute;sio Azevedo &eacute; uma obra liter&aacute;ria brasileira que retrata a vida em um corti&ccedil;o no Rio de Janeiro durante o s&eacute;culo XIX. A trama gira em torno dos moradores do corti&ccedil;o, destacando s', 'https://www.todamateria.com.br/o-cortico/', 0),
(25, 'O Guarani ', 'Jos&eacute; de Alencar', 'capa1-20231125-210144.jpg', 'enem', 'pdf_livro-20231125-210144.pdf', '&quot;O Guarani&quot; de Jos&eacute; de Alencar:\r\nOutra obra de Jos&eacute; de Alencar, &quot;O Guarani&quot; &eacute; um romance indianista que apresenta o her&oacute;i ind&iacute;gena Peri e sua rela&ccedil;&atilde;o com a jovem branca Ceci. A narrativa', 'https://www.todamateria.com.br/o-guarani/', 0),
(26, 'O Primo Bas&iacute;lio ', 'Jos&eacute; Maria de E&ccedil;a de Queir&oacute;s', 'capa1-20231125-211540.jpg', 'enem', 'pdf_livro-20231125-211540.pdf', '&quot;O Primo Bas&iacute;lio&quot; de Jos&eacute; Maria de E&ccedil;a de Queir&oacute;s:\r\nEste romance do autor portugu&ecirc;s E&ccedil;a de Queir&oacute;s &eacute; uma cr&iacute;tica &agrave; hipocrisia da classe m&eacute;dia do s&eacute;culo XIX. Ele n', 'https://www.todamateria.com.br/o-primo-basilio/', 0),
(27, 'Senhora ', 'Jos&eacute; de Alencar', 'capa1-20231125-211917.jpg', 'enem', 'pdf_livro-20231125-211917.pdf', '&quot;Senhora&quot; de Jos&eacute; de Alencar:\r\nEste romance &eacute; uma cr&iacute;tica &agrave; sociedade do s&eacute;culo XIX, explorando as conven&ccedil;&otilde;es sociais, a ambi&ccedil;&atilde;o e o casamento por interesse. O personagem principal, ', 'https://vestibular.brasilescola.uol.com.br/resumos-de-livros/senhora.htm', 0),
(28, 'Sonetos', 'Lu&iacute;s de Cam&otilde;es', 'capa1-20231125-212106.jpg', 'enem', 'pdf_livro-20231125-212106.pdf', 'Os &quot;Sonetos&quot; de Lu&iacute;s de Cam&otilde;es s&atilde;o uma cole&ccedil;&atilde;o de poemas l&iacute;ricos que exploram temas como o amor, a paix&atilde;o, a beleza e a passagem do tempo. Escritos no s&eacute;culo XVI, esses sonetos s&atilde;o c', 'https://vestibular.brasilescola.uol.com.br/resumos-de-livros/analise-de-sonetos-de-luis-de-camoes-1595.htm', 0),
(29, 'Vidas Secas', 'Graciliano Ramos', 'capa1-20231125-212341.jpg', 'enem', 'pdf_livro-20231125-212341.pdf', '&quot;Vidas Secas&quot; &eacute; uma obra-prima da literatura brasileira escrita por Graciliano Ramos. O livro retrata a vida de uma fam&iacute;lia de retirantes nordestinos em sua luta pela sobreviv&ecirc;ncia em meio &agrave; aridez do sert&atilde;o. A ', 'https://www.todamateria.com.br/vidas-secas-de-graciliano-ramos/', 0),
(30, 'A moreninha ', ' Joaquim Manuel de Macedo', 'capa1-20231125-212809.jpg', 'comvest', 'pdf_livro-20231125-212809.pdf', '&quot;A Moreninha&quot; &eacute; um romance rom&acirc;ntico brasileiro que segue a hist&oacute;ria de amor entre D. Manuel, um estudante de medicina, e Carolina, a &quot;Moreninha&quot;, em uma festa de veraneio na Ilha de Paquet&aacute;, no Rio de Janeir', 'https://www.todamateria.com.br/a-moreninha/', 0),
(31, 'Capit&atilde;es de Areia', 'Jorge Amado', 'capa1-20231125-213044.jpg', 'comvest', 'pdf_livro-20231125-213044.pdf', '&quot;Capit&atilde;es da Areia&quot;, de Jorge Amado, &eacute; um emocionante retrato da vida de um grupo de meninos &oacute;rf&atilde;os que vivem nas ruas de Salvador, na Bahia, cometendo pequenos delitos para sobreviver. O livro mergulha nas vidas dest', 'https://www.todamateria.com.br/capitaes-de-areia/', 0),
(32, 'Claro Enigma   ', 'Carlos Drummond de Andrade ', 'capa1-20231125-213349.jpg', 'comvest', 'pdf_livro-20231125-213349.pdf', 'Este livro de poesia de Drummond de Andrade apresenta uma variedade de temas e estilos. Suas poesias exploram quest&otilde;es da exist&ecirc;ncia humana, o cotidiano e a complexidade da vida moderna.', 'https://guiadoestudante.abril.com.br/estudo/claro-enigma-analise-da-obra-de-carlos-drummond-de-andrade/', 0),
(33, 'Dom Casmurro', ' Machado de Assis', 'capa1-20231125-213656.jpg', 'comvest', 'pdf_livro-20231125-213656.pdf', 'O romance narra a hist&oacute;ria de Bento Santiago, apelidado de &quot;Dom Casmurro&quot;, que suspeita que sua esposa, Capitu, o traiu com seu melhor amigo. A trama gira em torno de ci&uacute;mes, d&uacute;vidas e ambiguidades.', 'https://guiadoestudante.abril.com.br/estudo/dom-casmurro-resumo-obra-de-machado-de-assis/', 0),
(34, 'Iracema', 'Jos&eacute; de Alencar', 'capa1-20231125-213851.jpg', 'comvest', 'pdf_livro-20231125-213851.pdf', 'Esta &eacute; uma hist&oacute;ria de amor entre o guerreiro portugu&ecirc;s Martim e a &iacute;ndia Iracema, ambientada no Brasil colonial. O romance &eacute; uma fus&atilde;o da cultura ind&iacute;gena e europeia e &eacute; um dos principais exemplares d', 'https://www.todamateria.com.br/iracema/', 0),
(35, 'Mem&oacute;rias P&oacute;stumas de Br&aacute;s Cubas', 'Machado de Assis', 'capa1-20231125-214214.jpg', 'comvest', 'pdf_livro-20231125-214214.pdf', 'O livro &eacute; narrado pelo defunto-autor Br&aacute;s Cubas, que conta sua vida e reflex&otilde;es ap&oacute;s a morte. A obra &eacute; uma s&aacute;tira &agrave; sociedade e &agrave; hipocrisia, explorando temas como a decad&ecirc;ncia moral.', 'https://www.todamateria.com.br/resumo-e-analise-de-memorias-postumas-de-bras-cubas/', 0),
(36, 'O Guarani', 'Jos&eacute; de Alencar', 'capa1-20231125-214523.jpg', 'comvest', 'pdf_livro-20231125-214523.pdf', 'O livro narra a hist&oacute;ria de amor entre o &iacute;ndio Peri e Ceci, uma jovem branca. &Eacute; uma narrativa que explora o choque entre culturas, a natureza exuberante e o hero&iacute;smo do protagonista.\r\n', 'https://www.todamateria.com.br/o-guarani/', 0),
(37, 'Sagarana ', 'Guimar&atilde;es Rosa   ', 'capa1-20231125-214653.jpg', 'enem', 'pdf_livro-20231125-214653.pdf', '&quot;Sagarana&quot; &eacute; uma colet&acirc;nea de contos do autor Jo&atilde;o Guimar&atilde;es Rosa. Os contos exploram o sert&atilde;o brasileiro e sua cultura, incorporando elementos de folclore e regionalismo.', 'https://guiadoestudante.abril.com.br/estudo/sagarana-resumo-da-obra-de-guimaraes-rosa/', 0),
(38, 'Senhora', 'Jos&eacute; de Alencar', 'capa1-20231125-214905.jpg', 'enem', 'pdf_livro-20231125-214905.pdf', 'O romance aborda a hist&oacute;ria de Aur&eacute;lia, uma jovem que busca vingan&ccedil;a contra seu ex-noivo que a abandonou. Ela se torna uma mulher de neg&oacute;cios bem-sucedida e, eventualmente, reencontra seu antigo amor.', 'https://vestibular.brasilescola.uol.com.br/resumos-de-livros/senhora.htm', 0),
(39, 'Vidas Secas', ' Graciliano Ramos', 'capa1-20231125-215027.jpg', 'comvest', 'pdf_livro-20231125-215027.pdf', 'Este romance &eacute; um retrato cru da vida de uma fam&iacute;lia de retirantes no sert&atilde;o nordestino. A obra aborda temas como a seca, a pobreza e a luta pela sobreviv&ecirc;ncia.', 'https://www.todamateria.com.br/vidas-secas-de-graciliano-ramos/', 0),
(40, 'A Moreninha', 'Joaquim Manuel de Macedo', 'capa1-20231125-215406.jpg', 'vunesp', 'pdf_livro-20231125-215406.pdf', 'Este romance &eacute; um retrato cru da vida de uma fam&iacute;lia de retirantes no sert&atilde;o nordestino. A obra aborda temas como a seca, a pobreza e a luta pela sobreviv&ecirc;ncia.', 'https://www.todamateria.com.br/a-moreninha/', 0),
(41, 'Capit&atilde;es de Areia ', 'Jorge Amado', 'capa1-20231125-215520.jpg', 'enem', 'pdf_livro-20231125-215520.pdf', '&quot;Capit&atilde;es da Areia&quot;, de Jorge Amado, &eacute; um emocionante retrato da vida de um grupo de meninos &oacute;rf&atilde;os que vivem nas ruas de Salvador, na Bahia, cometendo pequenos delitos para sobreviver. O livro mergulha nas vidas dest', 'https://www.todamateria.com.br/capitaes-de-areia/', 0),
(42, 'Claro Enigma   ', 'Carlos Drummond de Andrade ', 'capa1-20231125-215626.jpg', 'vunesp', 'pdf_livro-20231125-215626.pdf', '&quot;Capit&atilde;es da Areia&quot;, de Jorge Amado, &eacute; um emocionante retrato da vida de um grupo de meninos &oacute;rf&atilde;os que vivem nas ruas de Salvador, na Bahia, cometendo pequenos delitos para sobreviver. O livro mergulha nas vidas dest', 'https://guiadoestudante.abril.com.br/estudo/claro-enigma-analise-da-obra-de-carlos-drummond-de-andrade/', 0),
(43, 'Dom Casmurro', 'Machado de Assis', 'capa1-20231125-215735.jpg', 'vunesp', 'pdf_livro-20231125-215735.pdf', 'O romance narra a hist&oacute;ria de Bento Santiago, apelidado de &quot;Dom Casmurro&quot;, que suspeita que sua esposa, Capitu, o traiu com seu melhor amigo. A trama gira em torno de ci&uacute;mes, d&uacute;vidas e ambiguidades.\r\n', 'https://guiadoestudante.abril.com.br/estudo/dom-casmurro-resumo-obra-de-machado-de-assis/', 0),
(44, 'Iracema', 'Jos&eacute; de Alencar', 'capa1-20231125-225320jpeg', 'vunesp', 'pdf_livro-20231125-215901.pdf', 'Esta &eacute; uma hist&oacute;ria de amor entre o guerreiro portugu&ecirc;s Martim e a &iacute;ndia Iracema, ambientada no Brasil colonial. O romance &eacute; uma fus&atilde;o da cultura ind&iacute;gena e europeia e &eacute; um dos principais exemplares d', 'https://www.todamateria.com.br/iracema/', 0),
(45, 'Mem&oacute;rias P&oacute;stumas de Br&aacute;s Cubas', 'Machado de Assis', 'capa1-20231125-220037.jpg', 'vunesp', 'pdf_livro-20231125-220037.pdf', 'O livro &eacute; narrado pelo defunto-autor Br&aacute;s Cubas, que conta sua vida e reflex&otilde;es ap&oacute;s a morte. A obra &eacute; uma s&aacute;tira &agrave; sociedade e &agrave; hipocrisia, explorando temas como a decad&ecirc;ncia moral.', 'https://www.todamateria.com.br/resumo-e-analise-de-memorias-postumas-de-bras-cubas/', 0),
(46, 'O Guarani ', 'Jos&eacute; de Alencar', 'capa1-20231125-220151.jpg', 'enem', 'pdf_livro-20231125-220151.pdf', 'O livro narra a hist&oacute;ria de amor entre o &iacute;ndio Peri e Ceci, uma jovem branca. &Eacute; uma narrativa que explora o choque entre culturas, a natureza exuberante e o hero&iacute;smo do protagonista.', 'https://www.todamateria.com.br/o-guarani/', 0),
(47, 'Sagarana ', 'Guimar&atilde;es Rosa', 'capa1-20231125-220334.jpg', 'vunesp', 'pdf_livro-20231125-220334.pdf', '&quot;Sagarana&quot; &eacute; uma colet&acirc;nea de contos do autor Jo&atilde;o Guimar&atilde;es Rosa. Os contos exploram o sert&atilde;o brasileiro e sua cultura, incorporando elementos de folclore e regionalismo.', 'https://guiadoestudante.abril.com.br/estudo/sagarana-resumo-da-obra-de-guimaraes-rosa/', 0),
(48, 'Senhora', 'Jos&eacute; de Alencar', 'capa1-20231125-220533.jpg', 'vunesp', 'pdf_livro-20231125-220533.pdf', 'O romance aborda a hist&oacute;ria de Aur&eacute;lia, uma jovem que busca vingan&ccedil;a contra seu ex-noivo que a abandonou. Ela se torna uma mulher de neg&oacute;cios bem-sucedida e, eventualmente, reencontra seu antigo amor.', 'https://vestibular.brasilescola.uol.com.br/resumos-de-livros/senhora.htm', 0),
(49, 'Vidas Secas', 'Graciliano Ramos', 'capa1-20231125-220653.jpg', 'vunesp', 'pdf_livro-20231125-220653.pdf', 'Este romance &eacute; um retrato cru da vida de uma fam&iacute;lia de retirantes no sert&atilde;o nordestino. A obra aborda temas como a seca, a pobreza e a luta pela sobreviv&ecirc;ncia.', 'https://www.todamateria.com.br/vidas-secas-de-graciliano-ramos/', 0),
(50, 'Dom Casmurro', 'Machado de Assis', 'capa1-20231125-221416.jpg', 'enem', 'pdf_livro-20231125-221416.pdf', 'O romance narra a hist&oacute;ria de Bento Santiago, apelidado de &quot;Dom Casmurro&quot;, que suspeita que sua esposa, Capitu, o traiu com seu melhor amigo. A trama gira em torno de ci&uacute;mes, d&uacute;vidas e ambiguidades.\r\n', 'https://guiadoestudante.abril.com.br/estudo/dom-casmurro-resumo-obra-de-machado-de-assis/', 0),
(51, 'Iracema', 'Jos&eacute; de Alencar', 'capa1-20231125-221530.jpg', 'fuvest', 'pdf_livro-20231125-221530.pdf', 'O romance narra a hist&oacute;ria de Bento Santiago, apelidado de &quot;Dom Casmurro&quot;, que suspeita que sua esposa, Capitu, o traiu com seu melhor amigo. A trama gira em torno de ci&uacute;mes, d&uacute;vidas e ambiguidades.', 'https://www.todamateria.com.br/iracema/', 0),
(52, 'Macuna&iacute;ma', 'M&aacute;rio de Andrade', 'capa1-20231125-221816.jpg', 'fuvest', 'pdf_livro-20231125-221816.pdf', 'A obra &eacute; um marco do movimento modernista brasileiro. Macuna&iacute;ma &eacute; um her&oacute;i pregui&ccedil;oso e trapaceiro que viaja pelo Brasil e enfrenta desafios fant&aacute;sticos. O livro combina elementos folcl&oacute;ricos e surrealismo.', 'https://www.todamateria.com.br/macunaima/', 0),
(53, 'Mayombe', 'Pepetela', 'capa1-20231125-222041.jpg', 'enem', 'pdf_livro-20231125-222041.pdf', 'O romance &eacute; uma narrativa sobre a luta de guerrilheiros angolanos contra o dom&iacute;nio colonial portugu&ecirc;s. Ele oferece uma vis&atilde;o das complexidades e dilemas da luta pela independ&ecirc;ncia de Angola.', 'https://brasilescola.uol.com.br/literatura/mayombe.htm', 0),
(54, 'Mem&oacute;rias de um Sargento de Mil&iacute;cias', 'Manuel Ant&ocirc;nio de Almeida', 'capa1-20231125-222311.jpg', 'enem', 'pdf_livro-20231125-222311.pdf', 'O romance &eacute; uma cr&ocirc;nica da vida do malandro e esperto Leonardo, desde sua inf&acirc;ncia at&eacute; sua vida adulta. A hist&oacute;ria &eacute; ambientada no Rio de Janeiro do s&eacute;culo XIX.', 'https://guiadoestudante.abril.com.br/estudo/memorias-de-um-sargento-de-milicias-resumo-da-obra-de-manuel-antonio-de-almeida/', 0),
(55, 'Mem&oacute;rias P&oacute;stumas de Br&aacute;s Cubas', 'Machado de Assis', 'capa1-20231125-222421.jpg', 'fuvest', 'pdf_livro-20231125-222421.pdf', 'O livro &eacute; narrado pelo defunto-autor Br&aacute;s Cubas, que conta sua vida e reflex&otilde;es ap&oacute;s a morte. A obra &eacute; uma s&aacute;tira &agrave; sociedade e &agrave; hipocrisia, explorando temas como a decad&ecirc;ncia moral.', 'https://www.todamateria.com.br/resumo-e-analise-de-memorias-postumas-de-bras-cubas/', 0),
(56, 'O Corti&ccedil;o', 'Alu&iacute;sio de Azevedo', 'capa1-20231125-222606.jpg', 'fuvest', 'pdf_livro-20231125-222606.pdf', 'A hist&oacute;ria se passa em um corti&ccedil;o no Rio de Janeiro e retrata a vida e os conflitos dos moradores. O livro &eacute; uma cr&iacute;tica social que aborda temas como mis&eacute;ria, explora&ccedil;&atilde;o e rela&ccedil;&otilde;es humanas naq', 'https://www.todamateria.com.br/o-cortico/', 0),
(57, 'O Guarani ', 'Jos&eacute; de Alencar', 'capa1-20231125-222644.jpg', 'fuvest', 'pdf_livro-20231125-222644.pdf', 'O livro narra a hist&oacute;ria de amor entre o &iacute;ndio Peri e Ceci, uma jovem branca. &Eacute; uma narrativa que explora o choque entre culturas, a natureza exuberante e o hero&iacute;smo do protagonista.', 'https://www.todamateria.com.br/o-guarani/', 0),
(58, 'Quincas Borba', 'Machado de Assis', 'capa1-20231125-222813.jpg', 'fuvest', 'pdf_livro-20231125-222813.pdf', 'Este livro &eacute; uma continua&ccedil;&atilde;o de &quot;Mem&oacute;rias P&oacute;stumas de Br&aacute;s Cubas&quot; e explora as teorias filos&oacute;ficas de Quincas Borba, como o &quot;humanitismo&quot;. A hist&oacute;ria gira em torno de Rubi&atilde;', 'https://brasilescola.uol.com.br/literatura/quincas-borba.htm', 0),
(59, 'Senhora', 'Jos&eacute; de Alencar', 'capa1-20231125-222956.jpg', 'fuvest', 'pdf_livro-20231125-222956.pdf', 'O romance aborda a hist&oacute;ria de Aur&eacute;lia, uma jovem que busca vingan&ccedil;a contra seu ex-noivo que a abandonou. Ela se torna uma mulher de neg&oacute;cios bem-sucedida e, eventualmente, reencontra seu antigo amor.', 'https://vestibular.brasilescola.uol.com.br/resumos-de-livros/senhora.htm', 5),
(61, 'A Biblioteca da Meia-Noite', ' Matt Haig', 'capa1-20231125-223524.jpg', 'ausente', '', 'Aos 35 anos, Nora Seed &eacute; uma mulher cheia de talentos e poucas conquistas. Arrependida das escolhas que fez no passado, ela vive se perguntando o que poderia ter acontecido caso tivesse vivido de maneira diferente. Ap&oacute;s ser demitida e seu ga', 'https://www.amazon.com.br/Biblioteca-Meia-Noite-Matt-Haig/dp/6558380544/ref=zg_bs_g_books_sccl_1/137-7049302-2305208?psc=1', 0),
(62, '&Eacute; assim que come&ccedil;a ', ' Colleen Hoover ', 'capa1-20231125-223653.jpg', 'ausente', '', 'Lily Bloom continua administrando uma floricultura. Seu ex-marido abusivo, Ryle Kincaid, ainda &eacute; um    cirurgi&atilde;o. Mas agora os dois est&atilde;o oficialmente divorciados e dividem a guarda da filha, Emerson.\r\n\r\nQuando Lily esbarra em Atlas ―', 'https://www.amazon.com.br/assim-que-come%C3%A7a-Vol-acaba/dp/6559811395/ref=zg_bs_g_books_sccl_2/137-7049302-2305208?psc=1', 0),
(63, 'O homem mais rico da Babil&ocirc;nia', ' Luiz Cavalcanti de M. Guerra', 'capa1-20231125-223814.jpg', 'ausente', '', 'Baseando-se nos segredos de sucesso dos antigos babil&ocirc;nicos ― os habitantes da cidade mais rica e pr&oacute;spera de seu tempo ―, George S. Clason mostra solu&ccedil;&otilde;es ao mesmo tempo s&aacute;bias e muito atuais para evitar a falta de dinhe', 'https://www.amazon.com.br/Homem-Mais-Rico-Babil%C3%B4nia/dp/8595081530/ref=zg_bs_g_books_sccl_3/137-7049302-2305208?psc=1', 0),
(64, 'A psicologia financeira: li&ccedil;&otilde;es atemporais sobre fortuna, gan&acirc;ncia e felicidade ', ' Morgan Housel', 'capa1-20231125-224012.jpg', 'ausente', '', 'O sucesso financeiro tem menos a ver com a sua intelig&ecirc;ncia e muito mais a ver com o seu comportamento. E a forma como algu&eacute;m se comporta &eacute; uma coisa dif&iacute;cil de se ensinar, mesmo para pessoas bastante inteligentes.\r\n\r\nA maneira ', 'https://www.amazon.com.br/psicologia-financeira-atemporais-gan%C3%A2ncia-felicidade/dp/6555111100/ref=zg_bs_g_books_sccl_4/137-7049302-2305208?psc=1', 0),
(65, '&Eacute; Assim que Acaba', ' Colleen Hoover', 'capa1-20231125-225208.jpg', 'ausente', '', 'Em &Eacute; assim que acaba, Colleen Hoover nos apresenta Lily, uma jovem que se mudou de uma cidadezinha do Maine para Boston, se formou em marketing e abriu a pr&oacute;pria floricultura. E &eacute; em um dos terra&ccedil;os de Boston que ela conhece Ry', 'https://www.amazon.com.br/Assim-que-Acaba-Colleen-Hoover/dp/8501112518/ref=zg_bs_g_books_sccl_5/137-7049302-2305208?psc=1', 0),
(66, 'Tudo &eacute; rio', ' Carla Madeira', 'capa1-20231125-224220.jpg', 'ausente', '', 'Com uma narrativa madura, precisa e ao mesmo tempo delicada e po&eacute;tica, o romance narra a hist&oacute;ria do casal Dalva e Ven&acirc;ncio, que tem a vida transformada ap&oacute;s uma perda tr&aacute;gica, resultado do ci&uacute;me doentio do marido,', 'https://www.amazon.com.br/Tudo-%C3%A9-rio-Carla-Madeira/dp/6555871784/ref=zg_bs_g_books_sccl_6/137-7049302-2305208?psc=1', 0),
(67, 'Verity', ' Colleen Hoover', 'capa1-20231125-224327.jpg', 'ausente', '', 'Verity Crawford &eacute; a autora best-seller por tr&aacute;s de uma s&eacute;rie de sucesso. Ela est&aacute; no auge de sua carreira, aclamada pela cr&iacute;tica e pelo p&uacute;blico, no entanto, um s&uacute;bito e terr&iacute;vel acidente acaba interr', 'https://www.amazon.com.br/Verity-Colleen-Hoover/dp/8501117846/ref=zg_bs_g_books_sccl_7/137-7049302-2305208?psc=1', 0),
(68, 'Todas as suas (im)perfei&ccedil;&otilde;es ', 'Colleen Hoover', 'capa1-20231125-224451.jpg', 'ausente', '', 'Todas as suas imperfei&ccedil;&otilde;es narra a hist&oacute;ria de Quinn e Graham. Eles se conhecem no pior dia de suas vidas; ela chega mais cedo de uma viagem para surpreender o noivo, ele testemunha a trai&ccedil;&atilde;o da namorada. E &eacute; assi', 'https://www.amazon.com.br/Todas-as-suas-im-perfei%C3%A7%C3%B5es/dp/8501117684/ref=zg_bs_g_books_sccl_8/137-7049302-2305208?psc=1', 0),
(69, 'Sapiens (Nova edi&ccedil;&atilde;o): Uma breve hist&oacute;ria da humanidade ', ' Yuval Noah Harari ', 'capa1-20231125-224557.jpg', 'ausente', '', 'O planeta Terra tem cerca de 4,5 bilh&otilde;es de anos. Numa fra&ccedil;&atilde;o &iacute;nfima desse tempo, uma esp&eacute;cie entre incont&aacute;veis outras o dominou: n&oacute;s, humanos. Somos os animais mais evolu&iacute;dos e mais destrutivos que ', 'O planeta Terra tem cerca de 4,5 bilh&otilde;es de anos. Numa fra&ccedil;&atilde;o &iacute;nfima desse tempo, uma esp&eacute;cie entre incont&aacute;veis outras o dominou: n&oacute;s, humanos. Somos os animais mais evolu&iacute;dos e mais destrutivos que ', 0),
(70, 'Essencialismo: A disciplinada busca por menos ', ' Greg McKeown ', 'capa1-20231125-224750.jpg', 'ausente', '', 'Se voc&ecirc; se sente sobrecarregado e ao mesmo tempo subutilizado, ocupado, mas pouco produtivo, e se o seu tempo parece servir apenas aos interesses dos outros, voc&ecirc; precisa conhecer o essencialismo.\r\n\r\nO essencialismo &eacute; mais do que uma es', 'https://www.amazon.com.br/Essencialismo-Greg-Mckeown/dp/8543102146/ref=zg_bs_g_books_sccl_10/137-7049302-2305208?psc=1', 0),
(71, 'box O povo do ar', ' Holly Black', 'capa1-20231125-224908.jpg', 'ausente', '', 'O canto mais escuro da floresta (294 p&aacute;g.)\r\n\r\nHazel e seu irm&atilde;o, Ben, moram em uma cidade onde humanos e fadas convivem. A magia aparentemente inofensiva desses seres atrai turistas de todas as partes, que querem ver de perto as maravilhas d', 'https://www.amazon.com.br/Box-povo-acompanha-Holly-Black/dp/8501304468/ref=zg_bs_g_books_sccl_11/137-7049302-2305208?psc=1', 0),
(72, 'Em busca de mim', ' Viola Davis', 'capa1-20231125-225016.jpg', 'ausente', '', 'Em busca de mim conta a minha hist&oacute;ria, de um apartamento caindo aos peda&ccedil;os na cidade de Central Falls, em Rhode Island, para os palcos de Nova York e al&eacute;m. Este &eacute; o caminho que percorri em busca de prop&oacute;sito e for&cced', '', 0),
(73, 'A garota do lago', ' Charlie Donlea', 'capa1-20231125-225135.jpg', 'ausente', '', 'Summit Lake, uma pequena cidade entre montanhas, &eacute; esse tipo de lugar, buc&oacute;lico e com encantadoras casas dispostas &agrave; beira de um longo trecho de &aacute;gua intocada.Duas semanas atr&aacute;s, a estudante de direito Becca Eckersley fo', '', 0),
(74, 'Os sete maridos de Evelyn Hugo', 'Taylor Jenkins Reid', 'capa1-20231125-225508.jpg', 'ausente', '', 'Lend&aacute;ria estrela de Hollywood, Evelyn Hugo sempre esteve sob os holofotes ― seja estrelando uma produ&ccedil;&atilde;o vencedora do Oscar, protagonizando algum esc&acirc;ndalo ou aparecendo com um novo marido&hellip; pela s&eacute;tima vez. Agora, ', '', 0),
(75, 'At&eacute; o ver&atilde;o terminar', 'Colleen Hoover', 'capa1-20231125-225619.jpg', 'ausente', '', 'Filha de uma m&atilde;e problem&aacute;tica e um pai ausente, Beyah precisou aprender a se virar sozinha desde pequena. Sua vida foi trilhada com muitas decepe&ccedil;&otilde;es. Mas ela est&aacute; prestes a mudar a sua sorte gra&ccedil;as a si mesma, e ', '', 0),
(76, 'Eu e esse meu cora&ccedil;&atilde;o', 'C. C. Hunter', 'capa1-20231125-225735.jpg', 'ausente', '', 'Com seu tipo sangu&iacute;neo raro, um transplante &eacute; como um sonho distante. Conformada, ela tenta se esquecer de que est&aacute; com os dias contados, criando uma lista de &ldquo;coisas para fazer antes de morrer&rdquo;.\r\n\r\nDe repente, Leah recebe', '', 0),
(77, 'As mil partes do meu cora&ccedil;&atilde;o', ' Colleen Hoover', 'capa1-20231125-225853.jpg', 'ausente', '', 'Merit Voss est&aacute; cansada de guardar os segredos de sua fam&iacute;lia e decide que chegou a hora de desaparecer. Mas antes de sumir do mapa, ela vai revelar um por um, tudo que a fam&iacute;lia vem guardando por anos.\r\n\r\nA cerca branca ao redor da s', '', 0),
(78, 'Clube do Livro dos Homens', ' Lyssa Kay Adams', 'capa1-20231125-230003.jpg', 'ausente', '', 'A primeira regra do clube do livro &eacute;: n&atilde;o fale sobre o clube do livro\r\n\r\nGavin Scott &eacute; um astro do beisebol, devotado ao esporte. No auge de sua carreira, ele descobre um segredo humilhante: a esposa, Thea, sempre fingiu ter prazer na', '', 0),
(79, 'Novembro, 9', 'Colleen Hoover', 'capa1-20231125-230134.jpg', 'ausente', '', 'Apesar de ter apenas 18 anos, Fallon j&aacute; passou por muita coisa. Sobreviveu a um inc&ecirc;ndio que a deixou desfigurada, e viu a carreira de atriz desmoronar por conta das cicatrizes. Agora, no anivers&aacute;rio do fat&iacute;dico acidente, ela fi', '', 0),
(80, 'Corte de espinhos e rosas', ' Sarah J. Maas ', 'capa1-20231125-230247.jpg', 'ausente', '', 'Ela roubou uma vida. Agora deve pagar com o cora&ccedil;&atilde;o. Em Corte de espinhos e rosas, livro que da in&iacute;cio a uma das s&eacute;ries mais queridas pelo p&uacute;blico, acompanhe as aventuras de Feyre pelo perigoso e deslumbrante mundo das f', '', 0),
(81, 'Vermelho, branco e sangue azul', ' Casey McQuiston', 'capa1-20231125-230345.jpg', 'ausente', '', 'Quando sua m&atilde;e foi eleita presidenta dos Estados Unidos, Alex Claremont-Diaz se tornou o novo queridinho da m&iacute;dia norte-americana. Bonito, carism&aacute;tico e com personalidade forte, Alex tem tudo para seguir os passos de seus pais e conqu', '', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL,
  `nomeUsuario` varchar(255) NOT NULL,
  `emailUsuario` varchar(255) NOT NULL,
  `senhaUsuario` varchar(255) NOT NULL,
  `imagemUsuario` varchar(255) DEFAULT 'default_profile.jpg',
  `ativo` tinyint(4) NOT NULL DEFAULT 1,
  `adm` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `nomeUsuario`, `emailUsuario`, `senhaUsuario`, `imagemUsuario`, `ativo`, `adm`) VALUES
(15, 'Gui', 'Guilhermecintra@gmail.com', 'if13Dpsyoylmc', 'default_profile.jpg', 0, 0),
(16, 'Gui', 'gui@gmails.com', 'if13Dpsyoylmc', 'default_profile.jpg', 0, 0),
(18, 'Guilherme Cintra', 'guilhermecintras@gmail.com', 'if13Dpsyoylmc', 'default_profile.jpg', 1, 2),
(19, 'Bibi', 'bibi@gmail.com', 'if13Dpsyoylmc', 'default_profile.jpg', 1, 1),
(21, 'Maria Pontin', 'pontinm758@gmail.com', 'if2Solukvohro', 'ImgUser-20231125-223112.jpg', 1, 2),
(22, 'ponti', 'pontinm58@gmail.com', 'if2Solukvohro', 'default_profile.jpg', 1, 0),
(23, 'pontin', 'pontinm7@gmail.com', 'if2Solukvohro', 'ImgUser-20231125-232920jpeg', 1, 0),
(24, 'Fabiano ', 'po@gmail.com', 'if2Solukvohro', 'default_profile.jpg', 1, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario_livros`
--

CREATE TABLE `usuario_livros` (
  `idFavorito` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `idLivro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuario_livros`
--

INSERT INTO `usuario_livros` (`idFavorito`, `idUsuario`, `idLivro`) VALUES
(9, 21, 18);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`idComen`),
  ADD KEY `idLivro` (`idLivro`),
  ADD KEY `idUsuario` (`idUsuario`);

--
-- Índices de tabela `livros`
--
ALTER TABLE `livros`
  ADD PRIMARY KEY (`idLivro`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuario`);

--
-- Índices de tabela `usuario_livros`
--
ALTER TABLE `usuario_livros`
  ADD PRIMARY KEY (`idFavorito`),
  ADD KEY `idUsuario` (`idUsuario`),
  ADD KEY `idLivro` (`idLivro`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `idComen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de tabela `livros`
--
ALTER TABLE `livros`
  MODIFY `idLivro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de tabela `usuario_livros`
--
ALTER TABLE `usuario_livros`
  MODIFY `idFavorito` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`idLivro`) REFERENCES `livros` (`idLivro`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comentarios_ibfk_2` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `usuario_livros`
--
ALTER TABLE `usuario_livros`
  ADD CONSTRAINT `usuario_livros_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usuario_livros_ibfk_2` FOREIGN KEY (`idLivro`) REFERENCES `livros` (`idLivro`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
