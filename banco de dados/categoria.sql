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

-- Copiando estrutura para tabela pmce_tonantins.categoria
CREATE TABLE IF NOT EXISTS `categoria` (
  `categoriaID` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`categoriaID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela pmce_tonantins.categoria: ~24 rows (aproximadamente)
INSERT INTO `categoria` (`categoriaID`, `descricao`) VALUES
	(1, 'ALIMENTICIO'),
	(2, 'MATERIAL HOSPITALAR'),
	(3, 'COMBUSTIVEL E DERIVADOS DE PETROLEO'),
	(4, 'GÁS ENGARRAFADO'),
	(5, 'MATERIAL DE EXPEDIENTE'),
	(6, 'MATERIAL DE ESPORTE'),
	(7, 'TECIDOS'),
	(10, 'TINTAS'),
	(11, 'MEDICAMENTOS'),
	(12, 'MATERIAL DE HIGIENE E LIMPEZA'),
	(13, 'MATERIAL DIDATICO'),
	(14, 'PROCESSAMENTO DE DADOS'),
	(15, 'URNAS FUNEBRES'),
	(16, 'TONER'),
	(17, 'CAMISETA ESCOLAR'),
	(18, 'FORNECIMENTO DE ALIMENTAÇÃO'),
	(19, 'OUTROS MATERIAIS DE CONSUMO'),
	(20, 'MATERIAL CIRURGICO'),
	(21, 'MATERIAL LABORATORIAL'),
	(22, 'MATERIAIS ODONTOLOGICOS'),
	(23, 'FORNECIMENTO DE REFEIÇÃO'),
	(24, 'KIT BEBE COM FRALDA CAMISA MIJÃO E SAPATINHO'),
	(25, 'MATERIAIS PARA MANUNTENÇÃO DE EMBARCAÇÕES'),
	(26, 'MATERIAL DE ARMARINHO');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
