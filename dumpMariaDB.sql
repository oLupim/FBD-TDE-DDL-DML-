/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `codigo` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fornecedor` (
  `codigo` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pede` (
  `quantidade` int(11) NOT NULL,
  `valor_unitario` float NOT NULL,
  `data_pedido` date NOT NULL,
  `codigo_prod` int(11) NOT NULL,
  `codigo_forn` int(11) NOT NULL,
  PRIMARY KEY (`quantidade`),
  KEY `produtos_pede` (`codigo_prod`),
  CONSTRAINT `produtos_pede` FOREIGN KEY (`codigo_prod`) REFERENCES `produtos` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produtos` (
  `codigo` int(11) NOT NULL,
  `descricao` varchar(30) NOT NULL,
  `data_cadastro` date NOT NULL,
  `valor_unitario` float NOT NULL,
  `codigo_cate` int(11) NOT NULL,
  PRIMARY KEY (`codigo`),
  KEY `categoria_produtos` (`codigo_cate`),
  CONSTRAINT `categoria_produtos` FOREIGN KEY (`codigo_cate`) REFERENCES `categoria` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
