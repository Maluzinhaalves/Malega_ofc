-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 25-Out-2023 às 01:18
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 7.4.29

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `livros`
--

INSERT INTO `livros` (`idLivro`, `titulo`, `autor`, `capa`, `banca`, `pdf`, `texto`, `artigo`) VALUES
(13, 'Malu', 'Maluzinha', 'capa1-20231025-005806.png', 'comvest', 'pdf_livro-20231025-005806.pdf', 'Ol&aacute; eu sou a malu', 'https://bri.ifsp.edu.br/'),
(14, 'Leonardo', 'Leo', 'capa1-20231025-005853jfif', 'vunesp', 'pdf_livro-20231025-005853.pdf', 'Ol&aacute; eu sou o Leo', 'https://bri.ifsp.edu.br/'),
(15, 'Maria', 'Marinha', 'capa1-20231025-005928.jpg', 'enem', 'pdf_livro-20231025-005928.pdf', 'Ol&aacute; eu sou a Maria', 'https://bri.ifsp.edu.br/'),
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `nomeUsuario`, `emailUsuario`, `senhaUsuario`, `imagemUsuario`, `ativo`, `adm`) VALUES
(15, 'Gui', 'Guilhermecintra@gmail.com', 'if13Dpsyoylmc', 'default_profile.jpg', 0, 0),
(16, 'Gui', 'gui@gmails.com', 'if13Dpsyoylmc', 'default_profile.jpg', 0, 0),
(18, 'Guilherme Cintra', 'guilhermecintras@gmail.com', 'if13Dpsyoylmc', 'default_profile.jpg', 1, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario_chat`
--

CREATE TABLE `usuario_chat` (
  `idUsuario` int(11) NOT NULL,
  `idChat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario_livros`
--

CREATE TABLE `usuario_livros` (
  `idUsuario` int(11) NOT NULL,
  `idLivros` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  ADD PRIMARY KEY (`idUsuario`,`idLivros`),
  ADD KEY `idLivros` (`idLivros`);

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
  MODIFY `idComen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `livros`
--
ALTER TABLE `livros`
  MODIFY `idLivro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
  ADD CONSTRAINT `usuario_livros_ibfk_2` FOREIGN KEY (`idLivros`) REFERENCES `livros` (`idLivro`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
