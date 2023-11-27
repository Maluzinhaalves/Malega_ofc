-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27-Nov-2023 às 21:45
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

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
-- Estrutura da tabela `comentarios`
--

CREATE TABLE `comentarios` (
  `idComen` int(11) NOT NULL,
  `idLivro` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `textoComen` text DEFAULT NULL,
  `tituloComen` varchar(255) DEFAULT NULL,
  `data_criacao` datetime NOT NULL DEFAULT current_timestamp(),
  `nota` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `comentarios`
--

INSERT INTO `comentarios` (`idComen`, `idLivro`, `idUsuario`, `textoComen`, `tituloComen`, `data_criacao`, `nota`) VALUES
(36, 83, 26, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ac turpis ac libero ultricies auctor. Fusce hendrerit tellus sed lacus pulvinar auctor. Phasellus at orci lectus. Phasellus vel condimentum eros. Etiam quis ullamcorper lorem, id commodo nisl. Ut euismod consectetur justo, vitae vestibulum tortor eleifend nec. Phasellus tempus, odio vel vehicula bibendum, augue tellus malesuada orci, non imperdiet enim massa ut sapien. Integer id nibh eu ipsum condimentum pulvinar. Integer sodales nunc nec erat molestie rhoncus. Sed vehicula dapibus enim id commodo. Cras justo nisi, blandit id consectetur eu, lobortis non tortor. Pellentesque ac dapibus lectus, sit amet ultrices justo. Ut nec sem at purus mattis posuere at vitae augue. Aliquam iaculis libero augue, sagittis commodo urna semper quis. Suspendisse porttitor, enim id aliquet molestie, erat tellus pellentesque quam, sit amet aliquam justo nisl et eros. Sed ex neque, pellentesque vel mattis ut, luctus in nisi.\r\n\r\nInteger rho', 'Uma bosta', '2023-11-27 08:58:13', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `livros`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `livros`
--

INSERT INTO `livros` (`idLivro`, `titulo`, `autor`, `capa`, `banca`, `pdf`, `texto`, `artigo`, `nota`) VALUES
(83, 'Dois Irm&atilde;os', 'Milton Hatoum', 'capa1-20231127-125712.jpg', 'fuvest', 'pdf_livro-20231127-125712.pdf', 'Neste romance de intensa dramaticidade, Milton Hatoum narra a hist&oacute;ria de dois irm&atilde;os g&ecirc;meos - Yaqub e Omar - e suas rela&ccedil;&otilde;es com a m&atilde;e, o pai, a irm&atilde; e, de outro lado, com a empregada da fam&iacute;lia e se', 'http://pepsic.bvsalud.org/scielo.php?script=sci_arttext&amp;pid=S1679-494X2016000200013', 5),
(84, 'Sert&otilde;es', 'Euclides da Cunha', 'capa1-20231127-130205.jpg', 'fuvest', 'pdf_livro-20231127-130205.pdf', 'Os Sert&otilde;es &eacute; um livro do escritor e jornalista brasileiro Euclides da Cunha, publicado em 1902. &Eacute; considerado como o primeiro livro-reportagem brasileiro. Trata da Guerra de Canudos, ocorrida em Canudos, munic&iacute;pio do interior d', 'https://www.scielo.br/j/rbh/a/QGgVdsncR3FwRdf6tLLhZwy/', 0),
(85, 'Alguma Poesia', 'Carlos Drummond de Andrade', 'capa1-20231127-130402.png', 'fuvest', 'pdf_livro-20231127-130402.pdf', '&Eacute; um livro que cont&eacute;m 49 poemas em que Drummond fala da sua rela&ccedil;&atilde;o com o espa&ccedil;o, seja o espa&ccedil;o provinciano, do interior de Minas Gerais, onde ele nasceu, seja do Brasil como um todo. O amor tamb&eacute;m &eacute;', 'https://jornal.usp.br/cultura/em-alguma-poesia-sujeito-poetico-e-chave-para-observar-o-brasil/', 0),
(86, 'Mar&iacute;lia de Dirceu', 'Tom&aacute;s Ant&oacute;nio Gonzaga', 'capa1-20231127-130914.jpg', 'fuvest', 'pdf_livro-20231127-130914.pdf', 'Mar&iacute;lia de Dirceu &eacute; o livro mais famoso de Tom&aacute;s Ant&ocirc;nio Gonzaga e fala do amor idealizado entre Dirceu e Mar&iacute;lia. Assim, o apaixonado poeta declara seu amor &agrave; jovem Maria Doroteia. Mas tamb&eacute;m demonstra sua ', 'https://periodicos.uefs.br/index.php/acordasletras/article/view/1639', 0),
(87, 'Mensagem', 'Fernando Pessoa', 'capa1-20231127-131159.png', 'fuvest', 'pdf_livro-20231127-131159.pdf', '&ldquo;Mensagem&rdquo; &eacute; uma obra que une poesia e hist&oacute;ria, s&iacute;mbolo e realidade, passado e futuro, em uma vis&atilde;o l&iacute;rica e vision&aacute;ria da identidade e do destino de Portugal. Por meio de sua poesia rica e evocativa,', 'https://jornal.usp.br/cultura/em-mensagem-poesia-e-arma-para-construir-o-futuro/', 0),
(88, 'N&oacute;s Matamos o C&atilde;o Tinhoso!', 'Lu&iacute;s Bernardo Honwana ', 'capa1-20231127-131556.png', 'fuvest', 'pdf_livro-20231127-131556.pdf', '&Eacute; composto por sete contos emocionantes que denunciam a realidade sufocante vivida pelos trabalhadores colonizados e suas fam&iacute;lias durante a opress&atilde;o colonial portuguesa em Mo&ccedil;ambique, sendo a maior parte das narrativas do pont', 'https://periodicos.ufba.br/index.php/inventario/article/view/29364', 0),
(89, 'Quincas Borba', 'Machado de Assis', 'capa1-20231127-131842.png', 'fuvest', 'pdf_livro-20231127-131842.pdf', 'Publicado em 1891, o romance conta a vida de Rubi&atilde;o, um pacato professor que se torna rico da noite para o dia ao receber uma heran&ccedil;a deixada pelo fil&oacute;sofo Quincas Borba, criador de uma filosofia chamada Humanitismo.', 'https://www.scielo.br/j/mael/a/zzKFJRpZvRd7sYNTJTHM9yz/?format=html', 0),
(90, 'Romanceiro da Inconfid&ecirc;ncia', 'Cec&iacute;lia Meireles', 'capa1-20231127-132544.png', 'fuvest', '', 'Publicado em 1953, o livro enfoca a hist&oacute;ria de Minas Gerais dos in&iacute;cios da coloniza&ccedil;&atilde;o at&eacute; a Inconfid&ecirc;ncia Mineira, ocorrida em fins do s&eacute;culo 18, e aglutina 84 &quot;romances&quot; (poemas &eacute;pico-l&i', 'https://jornal.usp.br/cultura/a-inconfidencia-mineira-atraves-da-poesia-de-cecilia-meireles/', 0),
(91, 'Ang&uacute;stia ', 'Graciliano Ramos', 'capa1-20231127-133404.jpg', 'fuvest', 'pdf_livro-20231127-133404.pdf', 'Um dos mais importantes romances brasileiros da d&eacute;cada de 1930. Lan&ccedil;ado originalmente em 1936 e apresentado aqui em novo projeto gr&aacute;fico, Ang&uacute;stia tem como protagonista Lu&iacute;s Silva, funcion&aacute;rio p&uacute;blico de Ma', 'https://jornal.usp.br/cultura/angustia-de-graciliano-ramos-une-introspeccao-e-critica-social/', 0),
(92, 'Campo Geral', 'Guimar&atilde;es Rosa', 'capa1-20231127-192226.jpg', 'fuvest', 'pdf_livro-20231127-192226.pdf', 'Campo geral &eacute; uma novela de Jo&atilde;o Guimar&atilde;es Rosa.\r\nEla conta a hist&oacute;ria do menino Miguilim, que mora, com a fam&iacute;lia, em Mut&uacute;m, no estado de Minas Gerais. Ali, ele vive sua inf&acirc;ncia em meio &agrave; natureza. ', 'https://jornal.usp.br/cultura/campo-geral-e-um-caminho-sem-volta-para-o-leitor-de-guimaraes-rosa/', 0),
(93, 'Olhos d&rsquo;&aacute;gua ', 'Concei&ccedil;&atilde;o Evaristo  ', 'capa1-20231127-193101.jpg', 'comvest', 'pdf_livro-20231127-193101.pdf', 'Em Olhos d&#039;&aacute;gua Concei&ccedil;&atilde;o Evaristo ajusta o foco de seu interesse na popula&ccedil;&atilde;o afro-brasileira abordando, sem meias palavras, a pobreza e a viol&ecirc;ncia urbana que a acometem.', 'https://www.scielo.br/j/rblc/a/ztzrMxwqY49Krg6M7pqPdRp/', 0),
(94, 'Carta de Achamento a el-rei D. Manuel   ', ' Pero Vaz de Caminha   ', 'capa1-20231127-193342.jpg', 'comvest', 'pdf_livro-20231127-193342.pdf', 'A Carta de Achamento do Brasil foi escrita no dia 1&ordm; de maio de 1500, e relata a chegada dos portugueses ao territ&oacute;rio hoje conhecido como Brasil, em uma expedi&ccedil;&atilde;o liderada por Pedro &Aacute;lvares Cabral.', 'http://pepsic.bvsalud.org/scielo.php?script=sci_arttext&amp;pid=S0101-31062010000100005', 0),
(95, 'Casa Velha ', 'Machado de Assis   ', 'capa1-20231127-193644.png', 'enem', 'pdf_livro-20231127-193644.pdf', 'Casa Velha &eacute; um romance de Machado de Assis, publicado em folhetins na revista carioca A Esta&ccedil;&atilde;o, de janeiro de 1885 a fevereiro de 1886. A primeira edi&ccedil;&atilde;o saiu em livro somente em 1943, gra&ccedil;as aos esfor&ccedil;os', 'https://guiadoestudante.abril.com.br/estudo/casa-velha-resumo-da-obra-de-machado-de-assis/', 0),
(96, 'O Ateneu ', 'Raul Pompeia ', 'capa1-20231127-193841.png', 'comvest', 'pdf_livro-20231127-193841.pdf', 'Nessa obra, o narrador-personagem S&eacute;rgio conta, em car&aacute;ter memorial&iacute;stico, a sua experi&ecirc;ncia como interno no Ateneu, um col&eacute;gio onde estudam os filhos da rica burguesia carioca do s&eacute;culo XIX. Nessa institui&ccedil;', 'https://www.scielo.br/j/edreal/a/hSsKvwcr94yvtMzmsgKXZrx/?format=pdf&amp;lang=pt', 0),
(97, 'Niketche &ndash; Uma Hist&oacute;ria de Poligamia ', 'Paulina Chiziane', 'capa1-20231127-194052.png', 'comvest', 'pdf_livro-20231127-194052.pdf', 'Niketche conta a hist&oacute;ria de Tony, um alto funcion&aacute;rio da pol&iacute;cia, e sua mulher Rami, casados h&aacute; vinte anos. Certo dia, Rami descobre que o marido &eacute; pol&iacute;gamo: tem outras quatro mulheres e v&aacute;rios filhos. As ', 'https://www.revistas.usp.br/crioula/article/view/126067', 0),
(98, '&ldquo;Semin&aacute;rio dos ratos&rdquo;   ', 'Lygia Fagundes Telles ', 'capa1-20231127-194452.png', 'comvest', 'pdf_livro-20231127-194452.pdf', 'O enredo trata de um congresso para combater ratos, o s&eacute;timo, na verdade. No momento da narrativa, a popula&ccedil;&atilde;o ratal multiplicou-se sete mil vezes, com cem ratos para cada habitante. Fica sugerido que esse semin&aacute;rio seria tamb&', 'https://reuni.unijales.edu.br/edicoes/15/a-corrupcao-de-carater-sob-a-otica-do-fantastico-uma-analise-de-seminario-dos-ratos-de-lygia-fagundes-telles.pdf', 0),
(99, 'Alice no Pa&iacute;s das Maravilhas ', 'Lewis Carroll  ', 'capa1-20231127-194710.png', 'comvest', 'pdf_livro-20231127-194710.pdf', 'Ainda garotinha, Alice Kingsleigh visitou um lugar m&aacute;gico pela primeira vez e n&atilde;o tinha mais lembran&ccedil;as sobre o local a n&atilde;o ser em seus sonhos. Em uma festa da nobreza, a jovem v&ecirc; um coelho branco. Alice o segue e cai em ', 'https://edoc.ufam.edu.br/retrieve/496902d5-b46e-4060-a0ae-18871a032401/TCC-Letras-2013-Arquivo.012.pdf', 0),
(100, 'Tarde', 'Olavo Bilac', 'capa1-20231127-194928.png', 'comvest', 'pdf_livro-20231127-194928.pdf', 'Sinopse. Os poemas de Tarde, publicados postumamente em 1919, est&atilde;o reunidos sob um t&iacute;tulo que deixa transparecer o tom crepuscular predominante nas composi&ccedil;&otilde;es. O livro revela um sujeito &agrave;s voltas com a antevelhice, nos', 'https://www.aleitoraclassica.com.br/post/tarde-olavo-bilac', 0),
(101, 'Macuna&iacute;ma', 'M&aacute;rio de Andrade', 'capa1-20231127-195252.png', 'vunesp', 'pdf_livro-20231127-195252.pdf', 'As aventuras de Macuna&iacute;ma, o anti-her&oacute;i pregui&ccedil;oso e sem car&aacute;ter. Ele nasce negro no sert&atilde;o, mas vira branco, vai para a cidade com os irm&atilde;os e se envolve com prostitutas, guerrilheiras e enfrenta todo tipo de gen', 'https://lume.ufrgs.br/bitstream/handle/10183/27423/000762807.pdf', 0),
(102, 'Mem&oacute;rias de um Sargento de Mil&iacute;cias', 'Manuel Ant&ocirc;nio de Almeida', 'capa1-20231127-195456.png', 'vunesp', 'pdf_livro-20231127-195456.pdf', 'O romance gira em torno da vida de Leonardo, um menino travesso e malandro que entre tantas a&ccedil;&otilde;es se torna um sargento: O Sargento de Mil&iacute;cias. A hist&oacute;ria tem como espa&ccedil;o a cidade do Rio de Janeiro. Ainda pequeno, ele fo', 'https://www.scielo.br/j/pp/a/wxf8TTzM6Z7KpBLpkCyBcxK', 0),
(103, 'Sonetos de Lu&iacute;s de Cam&otilde;es', 'Lu&iacute;s de Cam&otilde;es', 'capa1-20231127-195718.png', 'vunesp', 'pdf_livro-20231127-195718.pdf', 'Sonetos &eacute; uma colet&acirc;nea de poemas escrita pelo poeta portugu&ecirc;s Lu&iacute;s de Cam&otilde;es, publicada em 1595. A colet&acirc;nea cont&eacute;m cerca de 200 sonetos, que s&atilde;o uma das principais formas po&eacute;ticas da &eacute;po', 'http://www.dominiopublico.gov.br/download/texto/bv000164.pdf', 0),
(104, 'O Alienista', 'Machado de Assis', 'capa1-20231127-201942.png', 'enem', 'pdf_livro-20231127-201942.pdf', 'Seu protagonista &eacute; Sim&atilde;o Bacamarte, m&eacute;dico que, ap&oacute;s conquistar respeito na Europa, retorna &agrave; sua cidade natal, Itagua&iacute;. L&aacute;, ele aprofunda seus estudos de psiquiatria e empreende uma busca sobre os caminhos', 'https://www.scielo.br/j/ts/a/r8cJXC9gFspFyYMFgd7Xfhy/?format=pdf&amp;lang=pt', 0),
(105, 'Capit&atilde;es de Areia', 'Jorge Leal Amado de Faria', 'capa1-20231127-200403.png', 'enem', 'pdf_livro-20231127-200403.pdf', 'Capit&atilde;es da Areia &eacute; um romance de 1937 do escritor brasileiro Jorge Amado. O livro retrata a vida de um grupo de crian&ccedil;as abandonadas. Elas lutam e roubam para sobreviver na cidade de Salvador, na Bahia. A obra est&aacute; inserida na', 'https://www.editorarealize.com.br/editora/anais/jornada-rdl/2017/TRABALHO_EV084_MD1_SA6_ID40_24052017231514.pdf', 0),
(106, 'O Corti&ccedil;o', 'Alu&iacute;sio Azevedo', 'capa1-20231127-200605.png', 'enem', 'pdf_livro-20231127-200605.pdf', '&ldquo;O Corti&ccedil;o&rdquo; &eacute; um romance escrito por Alu&iacute;sio Azevedo que tem como cen&aacute;rio e personagem principal uma habita&ccedil;&atilde;o coletiva de pessoas pobres. O autor conta sobre a rotina e as rela&ccedil;&otilde;es dos p', 'https://www.scielo.br/j/rbh/a/BhwjWPXdFzKQyyJZFCM6xbs/', 0),
(107, 'Dom Casmurro', 'Machado de Assis', 'capa1-20231127-200809.png', 'enem', 'pdf_livro-20231127-200809.pdf', '&quot;Dom Casmurro&quot; conta a hist&oacute;ria de Bento Santiago (Bentinho), apelidado de Dom Casmurro por ser calado e introvertido. Na adolesc&ecirc;ncia, apaixona-se por Cap&iacute;tu, abandonando o semin&aacute;rio e, com ele, os des&iacute;gnios tr', 'https://editorarealize.com.br/editora/anais/conedu/2020/TRABALHO_EV140_MD1_SA17_ID2970_30082020183613.pdf', 0),
(108, 'Mem&oacute;rias P&oacute;stumas de Br&aacute;s Cubas', 'Machado de Assis', 'capa1-20231127-201054.jpg', 'enem', 'pdf_livro-20231127-201054.pdf', 'Ap&oacute;s ter morrido, em pleno ano de 1869, Br&aacute;s Cubas decide por narrar sua hist&oacute;ria e revisitar os fatos mais importantes de sua vida, a fim de se distrair na eternidade. A partir de ent&atilde;o ele relembra de amigos como Quincas Borb', 'https://www.scielo.br/j/trans/a/QKHF77XQYtdd7xbrW4MCHWS/?format=pdf', 0),
(109, 'A Moreninha', 'Joaquim Manuel de Macedo', 'capa1-20231127-201313.png', 'enem', 'pdf_livro-20231127-201313.pdf', 'Uma leve e divertida hist&oacute;ria de amor entre um jovem estudante e uma bela moreninha nos sal&otilde;es do Rio de Janeiro colonial. Essa hist&oacute;ria, que come&ccedil;ou num folhetim, acabou por se tornar um dos mais famosos retratos de costumes n', 'https://periodicos.unb.br/index.php/aguaviva/article/view/10341', 0),
(110, 'Revolu&ccedil;&atilde;o dos Bichos', 'George Orwell', 'capa1-20231127-201508.png', 'enem', 'pdf_livro-20231127-201508.pdf', 'Narra a insurrei&ccedil;&atilde;o dos animais de uma granja contra seus donos. Progressivamente, por&eacute;m, a revolu&ccedil;&atilde;o degenera numa tirania ainda mais opressiva que a dos humanos. Verdadeiro cl&aacute;ssico moderno, concebido por um dos', 'https://www.unirios.edu.br/revistarios/media/revistas/2021/29/a_revolucao_dos_bichos.pdf', 0),
(111, 'Os sete maridos de Evelyn Hugo', 'Taylor Jenkins Reid', 'capa1-20231127-204123.jpg', 'ausente', '', 'Lend&aacute;ria estrela de Hollywood, Evelyn Hugo sempre esteve sob os holofotes ― seja estrelando uma produ&ccedil;&atilde;o vencedora do Oscar, protagonizando algum esc&acirc;ndalo ou aparecendo com um novo marido&hellip; pela s&eacute;tima vez. Agora, ', '', 0),
(112, 'A Biblioteca da Meia-Noite', 'Matt Haig', 'capa1-20231127-204245.jpg', 'ausente', '', 'Aos 35 anos, Nora Seed &eacute; uma mulher cheia de talentos e poucas conquistas. Arrependida das escolhas que fez no passado, ela vive se perguntando o que poderia ter acontecido caso tivesse vivido de maneira diferente. Ap&oacute;s ser demitida e seu ga', '', 0),
(113, 'O Pequeno Pr&iacute;ncipe ', ' Antoine de Saint-Exup&eacute;ry', 'capa1-20231127-213659.jpg', 'ausente', '', 'O Pequeno Pr&iacute;ncipe, escrito pelo franc&ecirc;s Antoine de Saint-Exup&eacute;ry, &eacute; uma obra atemporal que encanta leitores de todas as idades desde sua publica&ccedil;&atilde;o, em 1943. A hist&oacute;ria narra a jornada de um garotinho com o', '', 0),
(114, 'O Idiota', 'Dostoi&eacute;vski ', 'capa1-20231127-204750.jpg', 'ausente', '', 'Um dos romances mais conhecidos e aclamados de Dostoi&eacute;vski, O Idiota &eacute; uma obra densa e complexa que traz um estudo profundo da alma humana, bem como de suas complexidades e contradi&ccedil;&otilde;es. A trama nos transporta para a R&uacute;', '', 0),
(115, '&Agrave;s vezes sou brisa, outras, ventania', ' Fab&iacute;ola Sim&otilde;es', 'capa1-20231127-204906.jpg', 'ausente', '', 'Uma obra sobre arrebatamento e acolhimento da autora best-seller pela Faro Editorial Em seu novo livro, Fab&iacute;ola Sim&otilde;es apresen&not;ta uma sele&ccedil;&atilde;o de textos que conseguem ser, ao mesmo tempo, intensos e sens&iacute;veis ou, segu', '', 0),
(116, '&Eacute; Assim que Acaba: 1', ' Colleen Hoover', 'capa1-20231127-205011.jpg', 'ausente', '', 'Em &Eacute; assim que acaba, Colleen Hoover nos apresenta Lily, uma jovem que se mudou de uma cidadezinha do Maine para Boston, se formou em marketing e abriu a pr&oacute;pria floricultura. E &eacute; em um dos terra&ccedil;os de Boston que ela conhece Ry', '', 0),
(117, '&Eacute; assim que come&ccedil;a', 'Colleen Hoover', 'capa1-20231127-205105.jpg', 'ausente', '', 'Lily Bloom continua administrando uma floricultura. Seu ex-marido abusivo, Ryle Kincaid, ainda &eacute; um    cirurgi&atilde;o. Mas agora os dois est&atilde;o oficialmente divorciados e dividem a guarda da filha, Emerson.\r\n\r\nQuando Lily esbarra em Atlas ―', '', 0),
(118, 'Todas as suas (im)perfei&ccedil;&otilde;es', 'Colleen Hoover ', 'capa1-20231127-205230.jpg', 'ausente', '', 'Todas as suas imperfei&ccedil;&otilde;es narra a hist&oacute;ria de Quinn e Graham. Eles se conhecem no pior dia de suas vidas; ela chega mais cedo de uma viagem para surpreender o noivo, ele testemunha a trai&ccedil;&atilde;o da namorada. E &eacute; assi', '', 0),
(119, 'Novembro, 9', ' Colleen Hoover', 'capa1-20231127-213742.jpg', 'ausente', '', 'Apesar de ter apenas 18 anos, Fallon j&aacute; passou por muita coisa. Sobreviveu a um inc&ecirc;ndio que a deixou desfigurada, e viu a carreira de atriz desmoronar por conta das cicatrizes. Agora, no anivers&aacute;rio do fat&iacute;dico acidente, ela fi', '', 0),
(120, 'Eu e esse meu cora&ccedil;&atilde;o', ' C. C. Hunter', 'capa1-20231127-205503.jpg', 'ausente', '', 'Leah MacKenzie, de 17 anos, n&atilde;o tem cora&ccedil;&atilde;o. O que a mant&eacute;m viva &eacute; um cora&ccedil;&atilde;o artificial que ela carrega dentro de uma mochila.\r\n\r\nCom seu tipo sangu&iacute;neo raro, um transplante &eacute; como um sonho d', '', 0),
(121, 'A cinco passos de voc&ecirc;', ' Rachael Lippincott', 'capa1-20231127-213828.jpg', 'ausente', '', 'tella Grant gosta de estar no controle. Ela parece ser uma adolescente t&iacute;pica, mas em sua rotina h&aacute; listas de tarefas e in&uacute;meros rem&eacute;dios que ela deve tomar para controlar a fibrose c&iacute;stica, uma doen&ccedil;a cr&ocirc;ni', '', 0),
(122, 'Por lugares incr&iacute;veis', ' Jennifer Niven', 'capa1-20231127-205914.jpg', 'ausente', '', 'Violet Markey tinha uma vida perfeita, mas todos os seus planos deixam de fazer sentido quando ela e a irm&atilde; sofrem um acidente de carro e apenas Violet sobrevive. Sentindo-se culpada pelo que aconteceu, a garota se afasta de todos e tenta descobrir', '', 0),
(123, 'Pessoas normais ', ' Sally Rooney ', 'capa1-20231127-210210.jpg', 'ausente', '', 'Na escola, no interior da Irlanda, Connell e Marianne fingem n&atilde;o se conhecer. Ele &eacute; a estrela do time de futebol, ela &eacute; solit&aacute;ria e preza por sua privacidade. Mas a m&atilde;e de Connell trabalha como empregada na casa dos pais', '', 0),
(124, 'Amor(es) verdadeiro(s)', ' Taylor Jenkins Reid', 'capa1-20231127-210306.jpg', 'ausente', '', 'Emma Blair casou com seu namorado do colegial, Jesse, quando tinha vinte anos. Juntos, eles constru&iacute;ram uma vida diferente das expectativas de seus pais e das pessoas de sua cidade natal, Massachusetts. Sem perder nenhuma oportunidade de viver nova', '', 0),
(125, 'A vida invis&iacute;vel de Addie LaRue ', ' V.E. Schwab ', 'capa1-20231127-210402.jpg', 'ausente', '', 'Fran&ccedil;a: 1714. Addie LaRue n&atilde;o queria pertercer a ningu&eacute;m ou a lugar nenhum. Em um momento de desespero, a jovem faz um pacto: a vida eterna, sob a condi&ccedil;&atilde;o de ser esquecida por quem a conhecer. Um piscar de olhos, e, com', '', 0),
(126, 'O pr&iacute;ncipe cruel (Vol. 1 O Povo do Ar) ', ' Holly Black', 'capa1-20231127-210519.jpg', 'ausente', '', 'Jude tinha apenas sete anos quando seus pais foram brutalmente assasinados e ela e as irm&atilde;s levadas para viver no trai&ccedil;oeiro Reino das Fadas. Dez anos depois, tudo o que Jude quer &eacute; se encaixar, mesmo sendo uma garota mortal. Mas todo', '', 0),
(127, 'Os Dois Morrem no Final', ' Adam Silvera ', 'capa1-20231127-210615.jpg', 'ausente', '', 'No dia 5 de setembro, pouco depois da meia-noite, Mateo Torrez e Rufus Emeterio recebem uma liga&ccedil;&atilde;o da Central da Morte. A not&iacute;cia &eacute; devastadora: eles v&atilde;o morrer naquele mesmo dia.\r\n\r\nOs dois n&atilde;o se conhecem, mas,', '', 0),
(128, 'Heartstopper: Dois garotos, um encontro (vol. 1)', ' Alice Oseman', 'capa1-20231127-213906.jpg', 'ausente', '', 'Charlie Spring e Nick Nelson n&atilde;o t&ecirc;m quase nada em comum. Charlie &eacute; um aluno dedicado e bastante inseguro por conta do bullying que sofre no col&eacute;gio desde que se assumiu gay. J&aacute; Nick &eacute; superpopular, especialmente q', '', 0),
(129, 'Enquanto eu n&atilde;o te encontro', ' Pedro Rhuas', 'capa1-20231127-210824.jpg', 'ausente', '', 'A vida tem sido boa para Lucas. Ele passou no Enem para estudar publicidade; se mudou com Eric, seu melhor amigo, do interior do Rio Grande do Norte para a capital; e conseguiu sua t&atilde;o aguardada liberdade. Mas, no amor, Lucas &eacute; um desastre. ', '', 0),
(130, 'Arist&oacute;teles e Dante descobrem os segredos do Universo', ' Benjamin Alire S&aacute;enz', 'capa1-20231127-211036.jpg', 'ausente', '', 'm um ver&atilde;o tedioso, os jovens Arist&oacute;teles e Dante s&atilde;o unidos pelo acaso e, embora sejam completamente diferentes um do outro, iniciam uma amizade especial, do tipo que muda a vida das pessoas e dura para sempre. E &eacute; atrav&eacut', '', 0),
(131, 'Enquanto eu n&atilde;o te encontro', ' Pedro Rhuas', 'capa1-20231127-211218.jpg', 'ausente', '', 'Em seu livro de estreia, Pedro Rhuas traz uma hist&oacute;ria sobre amor &agrave; primeira vista, encontros e desencontros, cultura nordestina, m&uacute;sica pop e drag queens.\r\n\r\nNenhum encontro &eacute; por acaso.\r\n\r\nA vida tem sido boa para Lucas. Ele ', '', 0),
(132, 'Cool for the summer: Um ver&atilde;o inesquec&iacute;vel', 'Dahlia Adler', 'capa1-20231127-211451.jpg', 'ausente', '', ' cara dos sonhos... ou a garota que n&atilde;o sai da sua cabe&ccedil;a?\r\n\r\nLarissa sempre teve olhos apenas para Chase Harding. Alto, forte, fofo, estrela do time de futebol americano da escola e gostoso em tempo integral, ele finalmente come&ccedil;ou a', '', 0),
(133, 'A lista da sorte', ' Rachael Lippincott', 'capa1-20231127-211540.jpg', 'ausente', '', 'O novo livro de Rachael Lippincott, autora dos best-sellers A cinco passos de voc&ecirc; e Todo esse tempo\r\n\r\nEmily e sua m&atilde;e sempre foram sortudas e tinham uma liga&ccedil;&atilde;o &uacute;nica. Todo m&ecirc;s escolhiam a mesma cartela da sorte n', '', 0),
(134, 'Deuses de Neon: Livro I da S&eacute;rie Dark Olympus', ' Katee Robert', 'capa1-20231127-211640.jpg', 'ausente', '', 'ers&eacute;fone, a queridinha da sociedade, planeja fugir da reluzente e ultramoderna cidade de Olimpo e recome&ccedil;ar longe da pol&iacute;tica trai&ccedil;oeira das Treze Casas. Mas seus planos s&atilde;o amea&ccedil;ados quando a m&atilde;e a envolve', '', 0),
(135, 'A livraria m&aacute;gica de paris ', ' Nina George', 'capa1-20231127-213944.jpg', 'ausente', '', 'Monsieur Perdu se considera um &ldquo;farmac&ecirc;utico liter&aacute;rio&rdquo;. De seu barco-livraria ancorado no rio Sena, ele prescreve livros para todas as dificuldades da vida. Fazendo uma an&aacute;lise intuitiva dos clientes, Perdu identifica e re', '', 0),
(136, 'O pequeno caf&eacute; de Copenhague', ' Julie Caplin ', 'capa1-20231127-211858.jpg', 'ausente', '', 'Em Londres, a assessora de imprensa Kate Sinclair tem tudo que sempre achou que quisesse: sucesso, glamour e um namorado irresist&iacute;vel.\r\n\r\nAt&eacute; que esse namorado a apunhala pelas costas e consegue a promo&ccedil;&atilde;o profissional com que ', '', 0),
(137, 'Uma noite na It&aacute;lia: Como se diz &quot;eu te amo&quot; em italiano?', 'Lucy Diamond', 'capa1-20231127-212016.jpg', 'ausente', '', 'Anna nunca conheceu o pai. Quando descobre por acaso que ele &eacute; italiano, ela mergulha nesse novo universo, preparando focaccias e tiramis&ugrave;s, se inscrevendo em um curso de idiomas e at&eacute; mesmo cogitando desenterrar seu passaporte para i', '', 0),
(138, 'Onde mora o amor', ' Jill Mansell', 'capa1-20231127-212126.jpg', 'ausente', '', 'Dexter Yates adora sua vida despreocupada em Londres. Al&eacute;m de lindo e rico, mora em um apartamento chique e est&aacute; sempre acompanhado de belas mulheres. Mas tudo se transforma da noite para o dia quando a irm&atilde; morre, deixando a pequena ', '', 0),
(139, 'Anos de chumbo e outros contos', ' Chico Buarque ', 'capa1-20231127-212218.jpg', 'ausente', '', 'Uma jovem e seu tio. Um grande artista sabotado. Um desatino familiar. Uma moradora de rua solit&aacute;ria. Um passeio por Copacabana. Um f&atilde; fervoroso de Clarice Lispector. Um casal em sua primeira viagem. Um lar em guerra.\r\nImersos na elogiada at', '', 0),
(140, 'O menino do pijama listrado', ' John Boyne', 'capa1-20231127-212326.jpg', 'ausente', '', 'Bruno tem nove anos e n&atilde;o sabe nada sobre o Holocausto e a Solu&ccedil;&atilde;o Final contra os judeus. Tamb&eacute;m n&atilde;o faz id&eacute;ia que seu pa&iacute;s est&aacute; em guerra com boa parte da Europa, e muito menos que sua fam&iacute;l', '', 0),
(141, 'Hibisco roxo', ' Chimamanda Ngozi Adichie', 'capa1-20231127-214012.jpg', 'ausente', '', 'Protagonista e narradora de Hibisco roxo, a adolescente Kambili mostra como a religiosidade extremamente &ldquo;branca&rdquo; e cat&oacute;lica de seu pai, Eugene, famoso industrial nigeriano, inferniza e destr&oacute;i lentamente a vida de toda a fam&amp', '', 0),
(142, 'Daisy Jones and The Six: Uma hist&oacute;ria de amor e m&uacute;sica', ' Taylor Jenkins Reid ', 'capa1-20231127-212612.jpg', 'ausente', '', 'Todo mundo conhece Daisy Jones &amp; The Six. Nos anos setenta, dominavam as paradas de sucesso, faziam shows para plateias lotadas e conquistavam milh&otilde;es de f&atilde;s. Eram a voz de uma gera&ccedil;&atilde;o, e Daisy, a inspira&ccedil;&atilde;o d', '', 0),
(143, 'A parte que falta', ' Shel Silverstein ', 'capa1-20231127-212708.jpg', 'ausente', '', 'Neste cl&aacute;ssico da literatura infantil relan&ccedil;ado pela Companhia das Letrinhas, acompanhamos a busca por completude e refletimos sobre relacionamentos com a poesia singela de Shel Silverstein. O protagonista desta hist&oacute;ria &eacute; um s', '', 0),
(144, 'A Vizinha Antip&aacute;tica que Sabia Matem&aacute;tica ', 'Eliana Martins ', 'capa1-20231127-214034.jpg', 'ausente', '', 'Theo n&atilde;o gostava nem um pouco de matem&aacute;tica. Das outras mat&eacute;rias que estudava na escola at&eacute; gostava, mas de matem&aacute;tica n&atilde;o tinha jeito... ele sentia calafrios s&oacute; de ouvir falar. Dona Malu Quete, a nova vizi', '', 0),
(145, 'A revolu&ccedil;&atilde;o dos bichos: Um conto de fadas ', ' George Orwell ', 'capa1-20231127-212852.jpg', 'ausente', '', 'Escrita em plena Segunda Guerra Mundial e publicada em 1945 depois de ter sido rejeitada por v&aacute;rias editoras, essa pequena narrativa causou desconforto ao satirizar ferozmente a ditadura stalinista numa &eacute;poca em que os sovi&eacute;ticos aind', '', 0),
(146, 'O vento sabe meu nome ', ' Isabel Allende', 'capa1-20231127-212943.jpg', 'ausente', '', 'Viena, 1938. Samuel Adler tem cinco anos quando seu pai desaparece durante a Noite dos Cristais - a noite em que sua fam&iacute;lia perde tudo. &Agrave; medida que a seguran&ccedil;a de seu filho se torna cada vez mais dif&iacute;cil de garantir, a m&atil', '', 0),
(147, 'Orgulho e preconceito', 'Jane Austen', 'capa1-20231127-213100.jpg', 'ausente', '', 'Quando Elizabeth Bennet conhece Fitzwilliam Darcy &ndash; o cobi&ccedil;ado Mr. Darcy &ndash;, ela o julga arrogante, rude e presun&ccedil;oso. Ap&oacute;s descobrir o envolvimento do detest&aacute;vel cavalheiro nos eventos que separaram sua querida irm&', '', 0),
(148, 'As coisas que voc&ecirc; s&oacute; v&ecirc; quando desacelera: Como manter a calma em um mundo fren&eacute;tico', ' Haemin Sunim', 'capa1-20231127-213209.jpg', 'ausente', '', 'De tempos em tempos, surge um livro que, com sua maneira original de iluminar importantes temas espirituais, se torna um fen&ocirc;meno t&atilde;o grande em seu pa&iacute;s de origem que acaba chamando a aten&ccedil;&atilde;o e encantando leitores de todo', '', 0),
(149, 'O Pr&iacute;ncipe ', ' Maquiavel', 'capa1-20231127-214113.jpg', 'ausente', '', 'Publicado em 1532 pelo controverso e complexo fil&oacute;sofo Maquiavel, O Pr&iacute;ncipe traz uma abordagem direta e desapaixonada acerca da natureza e do poder pol&iacute;tico. Neste tratado, o autor defende conceitos pragm&aacute;ticos, entre os quais', '', 0),
(150, 'Hamlet', 'William Shakespeare', 'capa1-20231127-213402.jpg', 'ausente', '', 'Hamlet foi provavelmente escrita entre 1599 e 1602, mas n&atilde;o h&aacute; at&eacute; hoje uma data comprovada da g&ecirc;nese deste cl&aacute;ssico da dramaturgia. Tendo como cen&aacute;rio a Dinamarca, mais precisamente o castelo de Elsinor, esta pe&c', '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL,
  `nomeUsuario` varchar(255) NOT NULL,
  `emailUsuario` varchar(255) NOT NULL,
  `senhaUsuario` varchar(255) NOT NULL,
  `imagemUsuario` varchar(255) DEFAULT 'default_profile.jpg',
  `ativo` tinyint(4) NOT NULL DEFAULT 1,
  `adm` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `nomeUsuario`, `emailUsuario`, `senhaUsuario`, `imagemUsuario`, `ativo`, `adm`) VALUES
(15, 'Gui', 'Guilhermecintra@gmail.com', 'if13Dpsyoylmc', 'default_profile.jpg', 0, 0),
(16, 'Gui', 'gui@gmails.com', 'if13Dpsyoylmc', 'default_profile.jpg', 0, 0),
(18, 'Guilherme Cintra', 'guilhermecintras@gmail.com', 'if13Dpsyoylmc', 'default_profile.jpg', 1, 2),
(19, 'Bibi', 'bibi@gmail.com', 'if13Dpsyoylmc', 'default_profile.jpg', 1, 1),
(21, 'Maria Pontin', 'pontinm758@gmail.com', 'if2Solukvohro', 'ImgUser-20231125-223112.jpg', 1, 2),
(22, 'ponti', 'pontinm58@gmail.com', 'if2Solukvohro', 'default_profile.jpg', 1, 0),
(23, 'pontin', 'pontinm7@gmail.com', 'if2Solukvohro', 'ImgUser-20231125-232920jpeg', 1, 0),
(24, 'Fabiano ', 'po@gmail.com', 'if2Solukvohro', 'default_profile.jpg', 1, 0),
(25, 'Maluzoca', 'luiza.alves@aluno.ifsp.edu.br', 'ifhdEYckGfDw2', 'ImgUser-20231127-124305.png', 1, 2),
(26, 'Davizin', 'davi@gmail.com', 'if13Dpsyoylmc', 'ImgUser-20231127-125354.jpg', 1, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario_livros`
--

CREATE TABLE `usuario_livros` (
  `idFavorito` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `idLivro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`idComen`),
  ADD KEY `idLivro` (`idLivro`),
  ADD KEY `idUsuario` (`idUsuario`);

--
-- Índices para tabela `livros`
--
ALTER TABLE `livros`
  ADD PRIMARY KEY (`idLivro`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuario`);

--
-- Índices para tabela `usuario_livros`
--
ALTER TABLE `usuario_livros`
  ADD PRIMARY KEY (`idFavorito`),
  ADD KEY `idUsuario` (`idUsuario`),
  ADD KEY `idLivro` (`idLivro`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `idComen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de tabela `livros`
--
ALTER TABLE `livros`
  MODIFY `idLivro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de tabela `usuario_livros`
--
ALTER TABLE `usuario_livros`
  MODIFY `idFavorito` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`idLivro`) REFERENCES `livros` (`idLivro`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comentarios_ibfk_2` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `usuario_livros`
--
ALTER TABLE `usuario_livros`
  ADD CONSTRAINT `usuario_livros_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usuario_livros_ibfk_2` FOREIGN KEY (`idLivro`) REFERENCES `livros` (`idLivro`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
