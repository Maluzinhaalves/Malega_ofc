-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Tempo de geração: 23-Out-2023 às 14:36
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
  `idChat` int(11) NOT NULL,
  `textoComen` text DEFAULT NULL,
  `autorComen` varchar(255) DEFAULT NULL,
  `data_criacao` datetime NOT NULL DEFAULT current_timestamp()
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
  `capa2` varchar(255) NOT NULL,
  `banca` varchar(20) NOT NULL,
  `pdf` varchar(255) NOT NULL DEFAULT 'ausente',
  `texto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `livros`
--

INSERT INTO `livros` (`idLivro`, `titulo`, `autor`, `capa`, `capa2`, `banca`, `pdf`, `texto`) VALUES
(2, 'asdasdasd', 'George Owell', 'capaDoLivro/20230821-142001.jpg', 'capaDoLivro/20230821-142001.jpg', '', '0', ''),
(3, 'Alexander', 'Alexander', 'Chrysanthemum.jpg', 'Chrysanthemum.jpg', 'enem', 'aaaaa', ''),
(4, 'Nao', 'na', 'Chrysanthemum.jpg', 'Desert.jpg', '0', 'aaaaa', ''),
(5, 'tambemn', 'tambemn', 'Chrysanthemum.jpg', 'Desert.jpg', '0', 'aaaaa', ''),
(6, 'Sim', 'Sim', 'Hydrangeas.jpg', 'Jellyfish.jpg', 'vunesp', 'tem', ''),
(8, 'aaa', 'aaaa', 'capa1-20231023-125121.jpg', 'capa2-20231023-125121.jpg', 'enem', 'pdf_livro-20231023-125121.pdf', 'aaa');

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
  ADD KEY `idChat` (`idChat`);

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
  MODIFY `idComen` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `livros`
--
ALTER TABLE `livros`
  MODIFY `idLivro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`idChat`) REFERENCES `chat` (`idChat`) ON DELETE CASCADE ON UPDATE CASCADE;

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
