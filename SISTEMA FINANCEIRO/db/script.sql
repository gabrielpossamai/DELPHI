-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.1.45-community - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL version:             7.0.0.4053
-- Date/time:                    2014-03-08 16:32:34
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

-- Dumping database structure for financeiro
CREATE DATABASE IF NOT EXISTS `financeiro` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `financeiro`;


-- Dumping structure for table financeiro.caixa
CREATE TABLE IF NOT EXISTS `caixa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero_doc` varchar(20) NOT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  `valor` decimal(18,2) NOT NULL,
  `tipo` char(1) NOT NULL,
  `dt_cadastro` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.


-- Dumping structure for table financeiro.contas_pagar
CREATE TABLE IF NOT EXISTS `contas_pagar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero_doc` varchar(20) NOT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  `parcela` int(11) NOT NULL,
  `vlr_parcela` decimal(18,2) NOT NULL,
  `vlr_compra` decimal(18,2) NOT NULL,
  `vlr_abatido` decimal(18,2) NOT NULL,
  `dt_compra` date NOT NULL,
  `dt_cadastro` date NOT NULL,
  `dt_vencimento` date NOT NULL,
  `dt_pagamento` date DEFAULT NULL,
  `status` char(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.


-- Dumping structure for table financeiro.contas_receber
CREATE TABLE IF NOT EXISTS `contas_receber` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `documento` varchar(20) NOT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  `parcela` int(11) NOT NULL,
  `vlr_parcela` decimal(18,2) NOT NULL,
  `vlr_compra` decimal(18,2) NOT NULL,
  `vlr_abatido` decimal(18,2) NOT NULL,
  `dt_compra` date NOT NULL,
  `dt_vencimento` date NOT NULL,
  `dt_cadastro` date NOT NULL,
  `status` char(1) NOT NULL,
  `dt_pagamento` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.


-- Dumping structure for table financeiro.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `login` varchar(20) NOT NULL,
  `senha` varchar(20) NOT NULL,
  `status` char(1) NOT NULL,
  `dt_cadastro` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
