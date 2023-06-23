-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 04 avr. 2022 à 11:20
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gym`
--

-- --------------------------------------------------------

--
-- Structure de la table `gym`
--

DROP TABLE IF EXISTS `gym`;
CREATE TABLE IF NOT EXISTS `gym` (
  `gym_id` varchar(20) NOT NULL,
  `gym_name` varchar(30) NOT NULL,
  `address` varchar(150) NOT NULL,
  `type` varchar(20) NOT NULL,
  PRIMARY KEY (`gym_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `gym`
--

INSERT INTO `gym` (`gym_id`, `gym_name`, `address`, `type`) VALUES
('GYM1', 'GYM LAND', 'Shiv Nagar', 'men'),
('GYM2', 'TARGET ZONE', 'Shanthi Nagar', 'unisex'),
('GYM3', 'GEORGE GYM', 'Mahesh Nagar', 'unisex'),
('GYM4', 'SUNNY GYM FITNESS STATION', 'Rupali Complex', 'women'),
('GYM5', 'A3 FITNESS GYM', 'Ramnagar Colony', 'men'),
('GYM6', 'SHAPE GYM', 'Zion Colony', 'unisex'),
('GYM7', 'TITAN GYM', 'Old City', 'women'),
('GYM8', 'TIGERS TOP GYM', 'Madival Circle', 'men'),
('HGFJHGHK', 'JGUY', 'GYIUY', 'women'),
('hggg', 'jkhljk', 'hjghk', 'women'),
('KJHKL', 'KKL', 'JGHLKJ', 'men');

-- --------------------------------------------------------

--
-- Structure de la table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uname` varchar(30) NOT NULL,
  `pwd` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `login`
--

INSERT INTO `login` (`id`, `uname`, `pwd`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `member`
--

DROP TABLE IF EXISTS `member`;
CREATE TABLE IF NOT EXISTS `member` (
  `mem_id` varchar(20) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `dob` varchar(20) DEFAULT NULL,
  `age` varchar(20) DEFAULT NULL,
  `package` varchar(10) DEFAULT NULL,
  `mobileno` varchar(10) DEFAULT NULL,
  `pay_id` varchar(20) DEFAULT NULL,
  `trainer_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`mem_id`),
  KEY `pay_id` (`pay_id`),
  KEY `trainer_id` (`trainer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `member`
--

INSERT INTO `member` (`mem_id`, `name`, `dob`, `age`, `package`, `mobileno`, `pay_id`, `trainer_id`) VALUES
('M076', 'jhgf', '12/3/2001', '12', '4566', '34563456', 'Payment2', 'T1'),
('M2', 'Karan', '26/06/1998', '21', '4800', '9988998899', 'Payment2', 'T2'),
('M3', 'Chirag', '22/07/1997', 'k', '6400', '9977997799', 'Payment3', 'T3'),
('M4', 'Abhishek', '21/08/1998', '21', '5400', '9966996699', 'Payment4', 'T4'),
('M5', 'Veeresh', '24/06/1999', '20', '6000', '9955995599', 'Payment5', 'T5'),
('M56', 'GKL', '12/2/2000', '23', '34567', '098766554', 'Payment2', 'T1');

-- --------------------------------------------------------

--
-- Structure de la table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `pay_id` varchar(20) NOT NULL,
  `amount` varchar(20) DEFAULT NULL,
  `gym_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`pay_id`),
  KEY `gym_id` (`gym_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `payment`
--

INSERT INTO `payment` (`pay_id`, `amount`, `gym_id`) VALUES
('Payment1', '5200', 'GYM1'),
('Payment2', '4800', 'GYM2'),
('Payment3', '6400', 'GYM3'),
('Payment4', '5400', 'GYM4'),
('Payment5', '6000', 'GYM5'),
('Payment6', '4500', 'GYM6'),
('Payment7', '5500', 'GYM7'),
('Payment8', '6100', 'GYM8');

-- --------------------------------------------------------

--
-- Structure de la table `trainer`
--

DROP TABLE IF EXISTS `trainer`;
CREATE TABLE IF NOT EXISTS `trainer` (
  `trainer_id` varchar(20) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL,
  `mobileno` varchar(10) DEFAULT NULL,
  `pay_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`trainer_id`),
  KEY `pay_id` (`pay_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `trainer`
--

INSERT INTO `trainer` (`trainer_id`, `name`, `time`, `mobileno`, `pay_id`) VALUES
('T1', 'George', '5:00 AM', '9999999999', 'Payment1'),
('T2', 'Tanveer', '9:00 AM', '8888888888', 'Payment2'),
('T3', 'Wong Lee', '11:00 AM', '7777777777', 'Payment3'),
('T4', 'Kiran Das', '1:00 PM', '6666666666', 'Payment6'),
('T5', 'Harry Styles', '3:00 PM', '6655665566', 'Payment5'),
('T6', 'James Corden', '5:00 PM', '6677667766', 'Payment6'),
('T7', 'Jimmy Kimmel', '7:00 PM', '6688668866', 'Payment7'),
('T8', 'Ray Berlin', '9:00 PM', '6699669966', 'Payment8');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `member`
--
ALTER TABLE `member`
  ADD CONSTRAINT `member_ibfk_1` FOREIGN KEY (`pay_id`) REFERENCES `payment` (`pay_id`),
  ADD CONSTRAINT `member_ibfk_2` FOREIGN KEY (`trainer_id`) REFERENCES `trainer` (`trainer_id`);

--
-- Contraintes pour la table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`gym_id`) REFERENCES `gym` (`gym_id`);

--
-- Contraintes pour la table `trainer`
--
ALTER TABLE `trainer`
  ADD CONSTRAINT `trainer_ibfk_1` FOREIGN KEY (`pay_id`) REFERENCES `payment` (`pay_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
