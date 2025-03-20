-- --------------------------------------------------------
-- Servidor:                     localhost
-- Versão do servidor:           8.3.0 - MySQL Community Server - GPL
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para pmce_tonantins
CREATE DATABASE IF NOT EXISTS `pmce_tonantins` /*!40100 DEFAULT CHARACTER SET latin1 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `pmce_tonantins`;

-- Copiando estrutura para tabela pmce_tonantins.almoxarifado
CREATE TABLE IF NOT EXISTS `almoxarifado` (
  `almoxarifadoID` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(100) DEFAULT NULL,
  `idresponsavelautorizacao` int DEFAULT NULL,
  `idresponsaveldespacho` int DEFAULT NULL,
  `niveldotacao` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`almoxarifadoID`),
  KEY `fk_Autorizador_idx` (`idresponsavelautorizacao`),
  KEY `fk_Despachador_idx` (`idresponsaveldespacho`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela pmce_tonantins.almoxarifado: ~11 rows (aproximadamente)
INSERT INTO `almoxarifado` (`almoxarifadoID`, `descricao`, `idresponsavelautorizacao`, `idresponsaveldespacho`, `niveldotacao`) VALUES
	(1, 'SEDE DA PREFEITURA', 1, 1, 'MEDIO'),
	(2, 'FUNDO MUNICIPAL DE SAÚDE', 4, 1, 'ALTO'),
	(3, 'SECRETARIA MUNICIPAL DE ADMINISTRAÇÃO', 5, 1, 'MEDIO'),
	(4, 'SECRETARIA MUNICIPAL DE INFRAESTRUTURA', 10, 1, 'MEDIO'),
	(5, 'SECRETARIA MUNICIPAL DE PRODUÇÃO', 8, 1, 'MEDIO'),
	(6, 'SECRETARIA MUNICIPAL DE MEIO AMBIENTE', 13, 1, 'MEDIO'),
	(7, 'SECRETARIA MUNICIPAL DE EDUCAÇÃO', 3, 1, 'MEDIO'),
	(8, 'FUNDO MUNICIPAL DE ASSISTENCIA SOCIAL', 9, 1, 'MEDIO'),
	(9, 'SECRETARIA MUNICIPAL DE DEFESA CIVIL', 6, 1, 'MEDIO'),
	(10, 'SECRETARIA MUNICIPAL DE SAUDE', 4, 1, 'MEDIO'),
	(11, 'SECRETARIA MUNICIPAL DE ASSISTENCIA SOCIAL', 9, 1, 'MEDIO');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
