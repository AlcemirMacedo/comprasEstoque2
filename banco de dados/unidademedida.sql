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

-- Copiando estrutura para tabela pmce_tonantins.unidademedida
CREATE TABLE IF NOT EXISTS `unidademedida` (
  `unidadeID` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`unidadeID`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela pmce_tonantins.unidademedida: ~28 rows (aproximadamente)
INSERT INTO `unidademedida` (`unidadeID`, `descricao`) VALUES
	(51, 'BLOCO'),
	(52, 'FD'),
	(53, 'LT'),
	(54, 'LT'),
	(55, 'PCT'),
	(56, 'KG'),
	(57, 'TABLT'),
	(59, 'MARÇO'),
	(60, 'UNID'),
	(61, 'CX'),
	(62, 'FORMA'),
	(63, 'BISN'),
	(64, 'FR'),
	(65, 'COMP'),
	(66, 'ENV'),
	(67, 'PT'),
	(68, 'PAR'),
	(69, 'AMP'),
	(70, 'RSM'),
	(71, 'JOGOS'),
	(72, 'LATA'),
	(73, 'ROLO'),
	(74, 'MT'),
	(75, 'KIT'),
	(76, 'TB'),
	(77, 'BAND'),
	(78, 'CACHO'),
	(79, 'VIDRO');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
