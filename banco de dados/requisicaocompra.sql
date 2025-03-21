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

-- Copiando estrutura para tabela pmce_tonantins.requisicaocompra
CREATE TABLE IF NOT EXISTS `requisicaocompra` (
  `requisicaocompraID` int NOT NULL AUTO_INCREMENT,
  `idalmoxarifado` int DEFAULT NULL,
  `idcentroconsumo` int DEFAULT NULL,
  `idfornecedor` varchar(20) DEFAULT NULL,
  `datarequisicao` date DEFAULT NULL,
  `idformapagamento` int DEFAULT NULL,
  `idsituacao` int DEFAULT NULL,
  `licitacao` varchar(100) DEFAULT NULL,
  `observacaojustificativa` varchar(150) DEFAULT NULL,
  `dataconclusao` date DEFAULT NULL,
  `descricaoconclusao` varchar(100) DEFAULT NULL,
  `formarequisicao` int DEFAULT NULL COMMENT '0 - compra Direta\n1 - convite\n2 - tomada de preco\n3 - concorrencia\n4 - outros',
  `dotacao` varchar(45) DEFAULT NULL,
  `ordemcompraId` int DEFAULT NULL COMMENT 'Este campo está por engano, mas por via das dúvidas vou deixá-lo para uma analise posterior.\n',
  PRIMARY KEY (`requisicaocompraID`),
  KEY `fk_Almoxarifado_idx` (`idalmoxarifado`),
  KEY `fk_formaPagamento_idx` (`idformapagamento`),
  KEY `fk_centoConsumo_idx` (`idcentroconsumo`),
  KEY `fk_SituacaoRequisicao_idx` (`idsituacao`),
  KEY `fk_Fornecedor_idx` (`idfornecedor`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela pmce_tonantins.requisicaocompra: ~8 rows (aproximadamente)
INSERT INTO `requisicaocompra` (`requisicaocompraID`, `idalmoxarifado`, `idcentroconsumo`, `idfornecedor`, `datarequisicao`, `idformapagamento`, `idsituacao`, `licitacao`, `observacaojustificativa`, `dataconclusao`, `descricaoconclusao`, `formarequisicao`, `dotacao`, `ordemcompraId`) VALUES
	(1, 1, 1, '03419080000102', '2022-09-30', 2, 2, '', '', '2022-09-21', 'ACUCAR CRYSTAL FD/30', 1, NULL, 1),
	(2, 1, 1, '03419080000102', '2022-09-30', 2, 2, '', '', '2022-09-21', '', 3, NULL, 2),
	(3, 1, 1, '03419080000102', '2022-09-30', 2, 2, '', '', '2022-09-21', '', 3, NULL, 3),
	(4, 1, 1, '03419080000102', '2022-09-30', 2, 2, '', '', '2022-09-21', 'TESTE', 3, NULL, 4),
	(5, 1, 1, '03419080000102', '2022-09-30', 2, 2, '', '', '2022-09-21', '', 3, NULL, 5),
	(6, 1, 1, '03419080000102', '2022-09-30', 3, 2, '', '', '2022-09-21', '', 3, NULL, 6),
	(7, 1, 1, '03419080000102', '2022-09-21', 2, 2, '', '', '2022-09-21', '', 3, NULL, 7),
	(8, 1, 1, '03419080000102', '2022-09-30', 2, 2, '', '', '2022-09-28', '', 3, NULL, 8);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
