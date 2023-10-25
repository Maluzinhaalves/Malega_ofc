-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 25-Out-2023 às 18:20
-- Versão do servidor: 10.4.28-MariaDB
-- versão do PHP: 8.2.4

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
-- Estrutura da tabela `chat`
--

CREATE TABLE `chat` (
  `idChat` int(11) NOT NULL,
  `comentarioChat` varchar(255) DEFAULT NULL,
  `nomeChat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `comentarios`
--

INSERT INTO `comentarios` (`idComen`, `idLivro`, `idUsuario`, `textoComen`, `tituloComen`, `data_criacao`, `nota`) VALUES
(11, 14, 18, 'Li denovo e tem alguns defeitos', 'Nota 4', '2023-10-25 08:46:43', 4),
(12, 13, 18, 'Vamobora', 'DEU CERTO AAAAAAAAAA', '2023-10-25 08:53:49', 2),
(13, 13, 18, 'PORFAVOR FUNCIONA', 'N&atilde;o deu certo n&atilde;o :(', '2023-10-25 09:28:14', 2),
(14, 13, 18, 'porfavor', 'N&atilde;o te odeio,funciona', '2023-10-25 09:45:11', 5),
(15, 13, 18, 'aaaaaa', 'Odiei', '2023-10-25 09:47:23', 1),
(16, 14, 18, 'olhei denovo, nao &eacute; bom nao', 'Meh', '2023-10-25 09:50:20', 2),
(17, 13, 18, 'testando', 'Comentario da Bibi', '2023-10-25 10:05:34', 4),
(18, 13, 18, 'vai', 'Comentario 2 da bibi', '2023-10-25 10:08:49', 3),
(19, 13, 18, 'aaaa', 'da certo pfv', '2023-10-25 10:18:42', 2),
(20, 13, 18, 'aa', 'da certo pfv', '2023-10-25 10:42:25', 1),
(21, 13, 18, 'aadasdasdas', 'da certo pfv', '2023-10-25 10:42:40', 1),
(22, 16, 19, 'aaaaa', 'Editei o primeiro comentario bibi', '2023-10-25 11:04:12', 4),
(23, 16, 19, 'aaaa', 'aaaa', '2023-10-25 11:04:23', 2),
(24, 16, 18, 'aaaa', 'guilherme', '2023-10-25 11:07:15', 3),
(25, 13, 19, 'aaa', 'mudei o comb', '2023-10-25 11:16:20', 4),
(26, 14, 19, 'eu bibi, nao gostei :(', 'Ruim', '2023-10-25 11:51:38', 4),
(27, 14, 19, 'aaaaaaaaa', 'aaaaa', '2023-10-25 11:52:09', 1),
(28, 13, 19, 'tenho que ficar testando', 'nao aguento mais', '2023-10-25 11:52:41', 4),
(29, 13, 19, 'aaaaa', 'GOSTEI MUITOOO AMOOO', '2023-10-25 12:14:45', 5);

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
  `artigo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `livros`
--

INSERT INTO `livros` (`idLivro`, `titulo`, `autor`, `capa`, `banca`, `pdf`, `texto`, `artigo`) VALUES
(13, 'Malu', 'Maluzinha', 'capa1-20231025-005806.png', 'comvest', 'pdf_livro-20231025-005806.pdf', 'Ol&aacute; eu sou a malu', 'https://bri.ifsp.edu.br/'),
(14, 'Leonardo', 'Leo', 'capa1-20231025-005853jfif', 'vunesp', 'pdf_livro-20231025-005853.pdf', 'Ol&aacute; eu sou o Leo', 'https://bri.ifsp.edu.br/'),
(15, 'Maria', 'Marinha', 'capa1-20231025-164633.png', 'enem', 'pdf_livro-20231025-164633.pdf', 'aaaaaaaaa', 'https://bri.ifsp.edu.br/'),
(16, 'Alexander', 'Ale', 'capa1-20231025-010000.jpg', 'ausente', 'pdf_livro-20231025-010000.pdf', 'Ol&aacute; eu sou o ale', 'https://bri.ifsp.edu.br/');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `nomeUsuario`, `emailUsuario`, `senhaUsuario`, `imagemUsuario`, `ativo`, `adm`) VALUES
(15, 'Gui', 'Guilhermecintra@gmail.com', 'if13Dpsyoylmc', 'default_profile.jpg', 0, 0),
(16, 'Gui', 'gui@gmails.com', 'if13Dpsyoylmc', 'default_profile.jpg', 0, 0),
(18, 'Guilherme Cintra', 'guilhermecintras@gmail.com', 'if13Dpsyoylmc', 'default_profile.jpg', 1, 2),
(19, 'Bibi', 'bibi@gmail.com', 'if13Dpsyoylmc', 'default_profile.jpg', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario_chat`
--

CREATE TABLE `usuario_chat` (
  `idUsuario` int(11) NOT NULL,
  `idChat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario_livros`
--

CREATE TABLE `usuario_livros` (
  `idFavorito` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `idLivro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`idChat`);

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
-- Índices para tabela `usuario_chat`
--
ALTER TABLE `usuario_chat`
  ADD PRIMARY KEY (`idUsuario`,`idChat`),
  ADD KEY `idChat` (`idChat`);

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
-- AUTO_INCREMENT de tabela `chat`
--
ALTER TABLE `chat`
  MODIFY `idChat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `idComen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de tabela `livros`
--
ALTER TABLE `livros`
  MODIFY `idLivro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
-- Limitadores para a tabela `usuario_chat`
--
ALTER TABLE `usuario_chat`
  ADD CONSTRAINT `usuario_chat_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usuario_chat_ibfk_2` FOREIGN KEY (`idChat`) REFERENCES `chat` (`idChat`) ON DELETE CASCADE ON UPDATE CASCADE;

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
