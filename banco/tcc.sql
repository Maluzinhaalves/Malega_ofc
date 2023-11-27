-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Tempo de geração: 27-Nov-2023 às 13:36
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.0.13

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
(91, 'Ang&uacute;stia ', 'Graciliano Ramos', 'capa1-20231127-133404.jpg', 'fuvest', 'pdf_livro-20231127-133404.pdf', 'Um dos mais importantes romances brasileiros da d&eacute;cada de 1930. Lan&ccedil;ado originalmente em 1936 e apresentado aqui em novo projeto gr&aacute;fico, Ang&uacute;stia tem como protagonista Lu&iacute;s Silva, funcion&aacute;rio p&uacute;blico de Ma', 'https://jornal.usp.br/cultura/angustia-de-graciliano-ramos-une-introspeccao-e-critica-social/', 0);

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
  MODIFY `idLivro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

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
