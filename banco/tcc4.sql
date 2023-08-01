-- Banco de dados: `tcc`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `administradores`
--

CREATE TABLE `administradores` (
  `idAdm` int(11) NOT NULL,
  `nomeAdm` varchar(255) DEFAULT NULL,
  `emailAdm` varchar(255) DEFAULT NULL,
  `cpfAdm` varchar(11) DEFAULT NULL,
  `senhaAdm` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `administradores_chat`
--

CREATE TABLE `administradores_chat` (
  `idAdm` int(11) NOT NULL,
  `idChat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `autor` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `livros_vest`
--

CREATE TABLE `livros_vest` (
  `idVest` int(11) NOT NULL,
  `id_livro` int(11) NOT NULL,
  `pdf` varchar(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `autor` char(255) NOT NULL,
  `banca` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL,
  `nomeUsuario` varchar(255) DEFAULT NULL,
  `emailUsuario` varchar(255) DEFAULT NULL,
  `senhaUsuario` varchar(255) DEFAULT NULL,
  `imagemUsuario` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario_administrador`
--

CREATE TABLE `usuario_administrador` (
  `idUsuario` int(11) NOT NULL,
  `idAdm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Índices para tabela `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`idAdm`);

--
-- Índices para tabela `administradores_chat`
--
ALTER TABLE `administradores_chat`
  ADD PRIMARY KEY (`idAdm`,`idChat`),
  ADD KEY `idChat` (`idChat`);

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
-- Índices para tabela `livros_vest`
--
ALTER TABLE `livros_vest`
  ADD PRIMARY KEY (`idVest`),
  ADD KEY `id_livro` (`id_livro`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuario`);

--
-- Índices para tabela `usuario_administrador`
--
ALTER TABLE `usuario_administrador`
  ADD PRIMARY KEY (`idUsuario`,`idAdm`),
  ADD KEY `idAdm` (`idAdm`);

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
-- AUTO_INCREMENT de tabela `administradores`
--
ALTER TABLE `administradores`
  MODIFY `idAdm` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `idLivro` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `livros_vest`
--
ALTER TABLE `livros_vest`
  MODIFY `idVest` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `administradores_chat`
--
ALTER TABLE `administradores_chat`
  ADD CONSTRAINT `administradores_chat_ibfk_1` FOREIGN KEY (`idAdm`) REFERENCES `administradores` (`idAdm`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `administradores_chat_ibfk_2` FOREIGN KEY (`idChat`) REFERENCES `chat` (`idChat`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`idChat`) REFERENCES `chat` (`idChat`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `livros_vest`
--
ALTER TABLE `livros_vest`
  ADD CONSTRAINT `livros_vest_ibfk_1` FOREIGN KEY (`id_livro`) REFERENCES `livros` (`idLivro`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `usuario_administrador`
--
ALTER TABLE `usuario_administrador`
  ADD CONSTRAINT `usuario_administrador_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usuario_administrador_ibfk_2` FOREIGN KEY (`idAdm`) REFERENCES `administradores` (`idAdm`) ON DELETE CASCADE ON UPDATE CASCADE;

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