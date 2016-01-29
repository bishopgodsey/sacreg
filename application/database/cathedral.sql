-- phpMyAdmin SQL Dump
-- version 4.0.3
-- http://www.phpmyadmin.net
--
-- Client: 127.0.0.1
-- Généré le: Jeu 09 Avril 2015 à 16:34
-- Version du serveur: 5.6.11-log
-- Version de PHP: 5.5.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `cathedral`
--
CREATE DATABASE IF NOT EXISTS `cathedral` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `cathedral`;

-- --------------------------------------------------------

--
-- Structure de la table `attente_mariage`
--

DROP TABLE IF EXISTS `attente_mariage`;
CREATE TABLE IF NOT EXISTS `attente_mariage` (
  `id_attente` int(11) NOT NULL AUTO_INCREMENT,
  `id_confirmation1` int(11) DEFAULT NULL,
  `id_confirmation2` int(11) DEFAULT NULL,
  `date_mariage` varchar(255) NOT NULL,
  `nom_pere_conjoint` varchar(255) NOT NULL,
  `prenom_pere_conjoint` varchar(255) NOT NULL,
  `nom_mere_conjoint` varchar(255) NOT NULL,
  `prenom_mere_conjoint` varchar(255) NOT NULL,
  `nom_pere_conjointe` varchar(255) NOT NULL,
  `prenom_pere_conjointe` varchar(255) NOT NULL,
  `nom_mere_conjointe` varchar(255) NOT NULL,
  `prenom_mere_conjointe` varchar(255) NOT NULL,
  `nom_parrain` varchar(255) NOT NULL,
  `prenom_parrain` varchar(255) NOT NULL,
  `nom_marraine` varchar(255) NOT NULL,
  `prenom_marraine` varchar(255) NOT NULL,
  `id_paroisse` int(11) NOT NULL,
  `lieu_residence_actuelle_conjoint` varchar(255) NOT NULL,
  `lieu_residence_actuelle_conjointe` varchar(255) NOT NULL,
  `id_non_catholique` int(11) DEFAULT NULL,
  `nom_instituteur_marriage` varchar(255) NOT NULL,
  `prenom_instituteur_marriage` varchar(255) NOT NULL,
  `lieuMinistere` varchar(255) NOT NULL,
  `service` varchar(255) NOT NULL,
  `id_user` bigint(20) NOT NULL,
  `date_enregistrement_mariage` datetime NOT NULL,
  `lieu_Celebration` varchar(255) DEFAULT NULL,
  `celebrer` tinyint(1) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_on` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL,
  PRIMARY KEY (`id_attente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `bapteme`
--

DROP TABLE IF EXISTS `bapteme`;
CREATE TABLE IF NOT EXISTS `bapteme` (
  `id_bapt` int(11) NOT NULL AUTO_INCREMENT,
  `id_categorie` int(11) NOT NULL,
  `num_carte_bapt` varchar(255) NOT NULL,
  `nom_bapt` varchar(255) NOT NULL,
  `prenom_bapt` varchar(255) NOT NULL,
  `date_bapt` date NOT NULL,
  `date_naissance` date NOT NULL,
  `sexe_bapt` varchar(255) NOT NULL,
  `pere_id` int(11) DEFAULT NULL,
  `mere_id` int(11) DEFAULT NULL,
  `domicile_bapt` varchar(255) NOT NULL,
  `nom_celebrant` varchar(255) NOT NULL,
  `prenom_celebrant` varchar(255) NOT NULL,
  `id_lieu_bapteme` varchar(255) NOT NULL,
  `parent_bapt_id` int(11) DEFAULT NULL,
  `id_paroisse` int(11) NOT NULL,
  `tel_fixe` varchar(255) DEFAULT NULL,
  `tel_mob` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'assets/images/photos/default.png',
  `professionBapt` varchar(255) DEFAULT NULL,
  `dateMariageParent` date DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `id_lieu_ministere` varchar(255) DEFAULT NULL,
  `service` varchar(255) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_on` date DEFAULT NULL,
  `id_diocese` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_bapt`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `bapteme`
--

INSERT INTO `bapteme` (`id_bapt`, `id_categorie`, `num_carte_bapt`, `nom_bapt`, `prenom_bapt`, `date_bapt`, `date_naissance`, `sexe_bapt`, `pere_id`, `mere_id`, `domicile_bapt`, `nom_celebrant`, `prenom_celebrant`, `id_lieu_bapteme`, `parent_bapt_id`, `id_paroisse`, `tel_fixe`, `tel_mob`, `email`, `photo`, `professionBapt`, `dateMariageParent`, `contact`, `id_lieu_ministere`, `service`, `created_by`, `created_on`, `modified_by`, `modified_on`, `id_diocese`) VALUES
(1, 1, 'E125', 'BUTOYI', 'Fleury', '1988-08-20', '1988-08-08', 'Masculin', 0, 0, 'Ngagara Q1', 'UWIMANA', 'WILLY', '', 0, 2, '+25722225485', '+25779836815', 'butoyifleury@yahoo.fr', 'assets/images/photos/default.png', 'Web developer', '1980-02-02', '+25779888777', '', 'Apostolat des Laics', 1, '2015-03-17 20:53:05', NULL, NULL, 1),
(2, 2, 'A15', 'UWIMANA', 'Jeanne', '2002-04-06', '2000-02-12', 'Feminin', 0, 0, 'KIGOBE', 'NDIKURIYO', 'Janvier', '2', 0, 2, '+25722234512', '+25778458965', 'uwijeanne@hotmail.com', 'assets/images/photos/default.png', 'Fonctionnaire', '2005-02-05', '+25778965458', '2', 'Apostolat des Laics', 1, '2015-03-18 12:04:52', NULL, NULL, 1),
(3, 1, '145E', 'NDASHIMYE', 'Yvan', '2013-12-21', '2013-04-13', 'Masculin', 1, 2, 'MUTAKURA 13/12', 'NIYONIZIGIYE', 'Benny', '2', 0, 3, '+25722225645', '+25778954321', 'yvanndashimye@gmail.com', 'assets/images/photos/default.png', 'Elève', '1999-04-02', '+25775454785', '3', 'Apostolat des Laics', 1, '2015-03-18 19:19:57', NULL, NULL, 1),
(4, 1, 'E45', 'NIGANZE', 'Hervé', '2014-12-02', '2014-12-03', 'Masculin', 3, 2, 'Ngagara Q8', 'NDIKURIYO', 'Willy', '4', 1, 2, '', '', '', 'assets/images/photos/default.png', 'Elève', '2012-04-20', '+25778854895', '2', 'Apostolat des Laics', 1, '2015-03-22 10:20:27', NULL, NULL, 1),
(5, 1, 'E87', 'NDIKUMANA', 'Blaise', '2015-02-22', '2013-12-03', 'Masculin', 3, 2, 'Ngagara Q5', 'NDIKURIYO', 'Willy', '2', 1, 2, '', '', 'blaise@yahoo.fr', 'assets/images/photos/default.png', 'Etudiant', '2012-04-20', '+25772124526', '2', '', 1, '2015-03-22 10:33:04', NULL, NULL, 1),
(6, 2, '45E', 'NZEYIMANA', 'Janvier', '2000-03-24', '1990-03-24', 'Masculin', 3, 2, 'Knayosha', 'NDIKURIYO', 'Willy', '24', 1, 2, '', '', 'nzeyija@yahoo.fr', 'assets/images/photos/default.png', 'Fonctionnaire', '1980-12-02', '+25722221232', '2', '', 1, '2015-03-24 08:59:08', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `id_categorie` int(11) NOT NULL AUTO_INCREMENT,
  `nom_categorie` varchar(255) NOT NULL,
  PRIMARY KEY (`id_categorie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `communion`
--

DROP TABLE IF EXISTS `communion`;
CREATE TABLE IF NOT EXISTS `communion` (
  `id_communion` int(11) NOT NULL AUTO_INCREMENT,
  `numero_communion` varchar(48) DEFAULT NULL,
  `id_bapt` int(11) NOT NULL,
  `date_communion` date NOT NULL,
  `id_diocese_communion` int(11) NOT NULL,
  `id_paroisse_communion` int(11) NOT NULL,
  `id_lieu_communion` int(11) NOT NULL,
  `profession_communion` varchar(255) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_on` date DEFAULT NULL,
  PRIMARY KEY (`id_communion`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `communion`
--

INSERT INTO `communion` (`id_communion`, `numero_communion`, `id_bapt`, `date_communion`, `id_diocese_communion`, `id_paroisse_communion`, `id_lieu_communion`, `profession_communion`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, '145', 2, '1998-06-01', 1, 20, 20, 'Fonctionnaire', 1, '2015-03-20 11:45:15', NULL, NULL),
(2, '127', 1, '1997-06-01', 1, 2, 26, 'Elève', 1, '2015-03-20 10:09:13', NULL, NULL),
(3, '120', 3, '2015-01-20', 1, 2, 21, 'Fonctionnaire', 1, '2015-03-20 10:57:50', NULL, NULL),
(4, '245', 6, '2001-03-24', 1, 2, 4, 'Fonctionnaire', 1, '2015-03-24 09:00:47', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `confirmation`
--

DROP TABLE IF EXISTS `confirmation`;
CREATE TABLE IF NOT EXISTS `confirmation` (
  `id_confirmation` int(11) NOT NULL AUTO_INCREMENT,
  `id_communion` int(11) NOT NULL,
  `date_confirmation` date NOT NULL,
  `num_confirmation` varchar(255) NOT NULL,
  `id_paroisse` int(11) NOT NULL,
  `id_lieu_conf` int(11) NOT NULL,
  `nom_celebrant` varchar(255) NOT NULL,
  `prenom_celebrant` varchar(255) NOT NULL,
  `professionConfirmation` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_on` date DEFAULT NULL,
  `id_diocese` int(11) NOT NULL,
  PRIMARY KEY (`id_confirmation`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `confirmation`
--

INSERT INTO `confirmation` (`id_confirmation`, `id_communion`, `date_confirmation`, `num_confirmation`, `id_paroisse`, `id_lieu_conf`, `nom_celebrant`, `prenom_celebrant`, `professionConfirmation`, `created_by`, `created_on`, `modified_by`, `modified_on`, `id_diocese`) VALUES
(1, 2, '2001-06-20', '0', 2, 4, 'NGOYAGOYE', 'Evariste', 'Elève', 1, '2015-03-20 13:19:10', NULL, NULL, 1),
(2, 1, '2002-04-06', '0', 2, 18, 'RUGERINYANGE', 'Anatole', 'Fonctionnaire', 1, '2015-03-20 13:28:46', NULL, NULL, 1),
(3, 3, '2010-04-10', '457', 19, 19, 'RUGERINYANGE', 'Anatole', 'Elève', 1, '2015-03-20 14:14:47', NULL, NULL, 1),
(4, 4, '2002-03-24', '78', 2, 4, 'NDIKURIYO', 'Willy', 'Fonctionnaire', 1, '2015-03-24 09:01:43', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `deces`
--

DROP TABLE IF EXISTS `deces`;
CREATE TABLE IF NOT EXISTS `deces` (
  `id_deces` int(11) NOT NULL AUTO_INCREMENT,
  `num_enterrement` varchar(255) NOT NULL,
  `date_deces` date NOT NULL,
  `date_enterrement` date NOT NULL,
  `id_bapt` int(11) DEFAULT NULL,
  `id_nonBaptise` int(11) DEFAULT NULL,
  `nom_celebrant` varchar(255) NOT NULL,
  `prenom_celebrant` varchar(255) NOT NULL,
  `id_diocese` int(11) NOT NULL,
  `id_paroisse` int(11) NOT NULL,
  `id_lieu_cel` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id_deces`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `deces`
--

INSERT INTO `deces` (`id_deces`, `num_enterrement`, `date_deces`, `date_enterrement`, `id_bapt`, `id_nonBaptise`, `nom_celebrant`, `prenom_celebrant`, `id_diocese`, `id_paroisse`, `id_lieu_cel`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, '455', '2015-02-12', '2015-03-19', 2, 0, 'NDIKURIYO', 'Willy', 10, 23, 23, 1, '2015-03-20 13:56:40', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `deces_nonbaptise`
--

DROP TABLE IF EXISTS `deces_nonbaptise`;
CREATE TABLE IF NOT EXISTS `deces_nonbaptise` (
  `id_nonBaptise` int(11) NOT NULL AUTO_INCREMENT,
  `Nom_nonBaptise` varchar(255) NOT NULL,
  `Prenom_nonBaptise` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id_nonBaptise`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `institution`
--

DROP TABLE IF EXISTS `institution`;
CREATE TABLE IF NOT EXISTS `institution` (
  `id_institution` int(11) NOT NULL AUTO_INCREMENT,
  `id_type` int(11) NOT NULL,
  `nom_institution` varchar(255) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `nom_responsable` varchar(255) DEFAULT NULL,
  `prenom_responsable` varchar(255) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id_institution`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- Contenu de la table `institution`
--

INSERT INTO `institution` (`id_institution`, `id_type`, `nom_institution`, `parent_id`, `nom_responsable`, `prenom_responsable`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 1, 'Diocèse de BUJUMBURA', NULL, 'NGOYAGOYE', 'Evariste', 1, '2014-04-21 12:37:09', 1, '2015-03-20 10:08:10'),
(2, 2, 'Parroisse Saint Joseph', 1, 'NDAYISHIMIYE', 'Gilbert', 1, '2014-04-21 12:38:24', 1, '2015-03-20 10:05:58'),
(3, 2, 'Parroisse Kamenge', 1, 'NAHIMANA', 'Emmanuel', 1, '2014-04-21 12:39:47', 1, '2015-03-20 09:53:38'),
(4, 3, 'Clarisse', 2, 'Soeur HABIMANA', 'Francine', 2, '2014-04-21 12:42:26', 1, '2014-04-21 12:42:26'),
(9, 4, 'Sucursale de Citoke', 4, 'Hakizimana', 'Gerard', 1, '2014-04-22 12:19:23', NULL, NULL),
(10, 1, 'Diocèse de GITEGA', NULL, 'NTAMWANA', 'Simon', 1, '2014-09-30 21:40:51', 1, '2015-03-20 10:08:22'),
(11, 1, 'Diocèse de BURURI', NULL, 'BACINONI', 'Venant', 1, '2015-03-20 09:26:12', 1, '2015-03-20 09:46:35'),
(12, 1, 'Diocèse de BUBANZA', NULL, 'NTAGWARARA', 'Jean', 1, '2015-03-20 09:30:21', 1, '2015-03-20 09:46:54'),
(13, 1, 'Diocèse de NGOZI', NULL, 'BANSHIMIYUBUSA', 'Gervais', 1, '2015-03-20 09:36:17', 1, '2015-03-20 09:47:04'),
(14, 1, 'Diocèse de MUYINGA', NULL, 'NTAHONDEREYE', 'Joachim', 1, '2015-03-20 09:40:39', 1, '2015-03-20 09:41:08'),
(15, 1, 'Diocèse de RUTANA', NULL, 'NAHIMANA', 'Bonaventure', 1, '2015-03-20 09:49:09', 1, '2015-03-20 10:08:32'),
(16, 1, 'Diocèse de Ruyigi', NULL, 'NZEYIMANA', 'Blaise', 1, '2015-03-20 09:49:52', NULL, NULL),
(17, 2, 'Parroisse KININDO', 1, 'FUPI', 'Felix', 1, '2015-03-20 09:50:47', NULL, NULL),
(18, 2, 'Paroisse Saint Augustin', 1, 'NDAYISHIMIYE', 'Déo', 1, '2015-03-20 09:52:39', NULL, NULL),
(19, 2, 'Paroisse Saint Michel', 1, 'UWIMANA', 'Thaddé', 1, '2015-03-20 09:53:13', NULL, NULL),
(20, 2, 'Paroisse Cathedral Regina MUNDI', 1, 'MUGIRANEZA', 'Emmanuel', 1, '2015-03-20 09:54:07', NULL, NULL),
(21, 2, 'Paroisse Saint Anne', 1, 'REMESHA', 'Desiré', 1, '2015-03-20 09:54:35', NULL, NULL),
(22, 2, 'Paroisse Esprit de Sagesse', 1, 'NTABONA', '', 1, '2015-03-20 09:55:11', NULL, NULL),
(23, 2, 'Paroisse Bon Pasteur', 10, '', '', 1, '2015-03-20 09:55:41', NULL, NULL),
(24, 3, 'Soeur Bene Tereza', 19, '', '', 1, '2015-03-20 09:56:21', NULL, NULL),
(25, 3, 'Soeur Bene Bernadette', 19, '', '', 1, '2015-03-20 09:56:42', NULL, NULL),
(26, 3, 'Aumônerie militaire de NGAGARA', 2, '', '', 1, '2015-03-20 10:03:12', 1, '2015-03-20 10:05:29'),
(27, 3, 'Aumônerie Militaire de BUYENZI', 18, '', '', 1, '2015-03-20 10:05:00', 1, '2015-03-20 10:05:08'),
(28, 3, 'Grand Seminaire', 20, '', '', 1, '2015-03-20 11:48:13', NULL, NULL),
(29, 3, 'Petit Seminaire de KANYOSHA', 20, '', '', 1, '2015-03-20 11:48:46', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `mariage`
--

DROP TABLE IF EXISTS `mariage`;
CREATE TABLE IF NOT EXISTS `mariage` (
  `id_mariage` int(11) NOT NULL AUTO_INCREMENT,
  `num_mariage` varchar(255) NOT NULL,
  `id_confirmation1` int(11) DEFAULT NULL,
  `id_confirmation2` int(11) DEFAULT NULL,
  `date_mariage` varchar(255) NOT NULL,
  `nom_pere_conjoint` varchar(255) NOT NULL,
  `prenom_pere_conjoint` varchar(255) NOT NULL,
  `nom_pere_conjointe` varchar(255) NOT NULL,
  `prenom_pere_conjointe` varchar(255) NOT NULL,
  `nom_parrain` varchar(255) NOT NULL,
  `prenom_parrain` varchar(255) NOT NULL,
  `nom_marraine` varchar(255) NOT NULL,
  `prenom_marraine` varchar(255) NOT NULL,
  `id_paroisse` int(11) NOT NULL,
  `lieu_residence_actuelle_conjoint` varchar(255) NOT NULL,
  `lieu_residence_actuelle_conjointe` varchar(255) NOT NULL,
  `id_non_catholique` int(11) DEFAULT NULL,
  `nom_celebrant_marriage` varchar(255) NOT NULL,
  `prenom_celebrant_marriage` varchar(255) NOT NULL,
  `lieuMinistere` varchar(255) NOT NULL,
  `service` varchar(255) NOT NULL,
  `lieu_Celebration` varchar(255) NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_on` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL,
  PRIMARY KEY (`id_mariage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `marriage`
--

DROP TABLE IF EXISTS `marriage`;
CREATE TABLE IF NOT EXISTS `marriage` (
  `marriage_id` int(11) NOT NULL AUTO_INCREMENT,
  `num_marriage` varchar(24) NOT NULL,
  `date_marriage` date NOT NULL,
  `nom_celebrant` varchar(128) DEFAULT NULL,
  `prenom_celebrant` varchar(128) DEFAULT NULL,
  `id_lieu_ministere` int(11) DEFAULT NULL,
  `diocese_id` int(11) NOT NULL,
  `parroisse_id` int(11) NOT NULL,
  `lieu_celebration_id` int(11) DEFAULT NULL,
  `conjoint_id` int(11) DEFAULT NULL,
  `conjointe_id` int(11) DEFAULT NULL,
  `parrain_id` int(11) DEFAULT NULL,
  `marraine_id` int(11) DEFAULT NULL,
  `no_catholique_conjoint_id` int(11) DEFAULT NULL,
  `no_catholique_conjointe_id` int(11) DEFAULT NULL,
  `no_catholique_parrain_id` int(11) DEFAULT NULL,
  `no_catholique_marraine_id` int(11) DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_on` datetime DEFAULT NULL,
  `modified_by` datetime DEFAULT NULL,
  PRIMARY KEY (`marriage_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `marriage`
--

INSERT INTO `marriage` (`marriage_id`, `num_marriage`, `date_marriage`, `nom_celebrant`, `prenom_celebrant`, `id_lieu_ministere`, `diocese_id`, `parroisse_id`, `lieu_celebration_id`, `conjoint_id`, `conjointe_id`, `parrain_id`, `marraine_id`, `no_catholique_conjoint_id`, `no_catholique_conjointe_id`, `no_catholique_parrain_id`, `no_catholique_marraine_id`, `created_on`, `created_by`, `modified_on`, `modified_by`) VALUES
(1, '457', '2014-04-12', 'NDIKURIYO', 'Willy', 2, 1, 3, 4, 3, NULL, 1, NULL, NULL, 29, NULL, 30, '2015-03-22 12:53:09', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `non_catholique`
--

DROP TABLE IF EXISTS `non_catholique`;
CREATE TABLE IF NOT EXISTS `non_catholique` (
  `id_non_catholique` int(11) NOT NULL AUTO_INCREMENT,
  `Nom_non_catholique` varchar(255) NOT NULL,
  `Prenom_non_catholique` varchar(255) NOT NULL,
  `denomination_eglise_origine` varchar(255) NOT NULL,
  `nom_pere` varchar(255) DEFAULT NULL,
  `prenom_pere` varchar(255) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id_non_catholique`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `offrande`
--

DROP TABLE IF EXISTS `offrande`;
CREATE TABLE IF NOT EXISTS `offrande` (
  `id_offrande` int(11) NOT NULL AUTO_INCREMENT,
  `id_Bapt` int(11) NOT NULL,
  `last_date` datetime NOT NULL,
  `date_paiement` datetime NOT NULL,
  `montant` float DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_on` date DEFAULT NULL,
  PRIMARY KEY (`id_offrande`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `permission_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(100) NOT NULL,
  `status` enum('active','inactive','deleted') NOT NULL DEFAULT 'active',
  PRIMARY KEY (`permission_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

--
-- Contenu de la table `permissions`
--

INSERT INTO `permissions` (`permission_id`, `name`, `description`, `status`) VALUES
(1, 'Users.Add', 'Add users to the system', 'active'),
(2, 'Users.view', 'View System users', 'active'),
(3, 'Users.Edit', 'Edit System users', 'active'),
(4, 'Users.Delete', 'Deletes users from the system', 'active'),
(5, 'Permissions.View', 'View System Permissions', 'active'),
(6, 'Permissions.Add', 'Ability to add new permissions in the system', 'active'),
(7, 'Permissions.Edit', 'Ability to Edit permissions', 'active'),
(8, 'Permissions.Delete', 'Ability to delete permissions', 'active'),
(9, 'Roles.View', 'View System Roles', 'active'),
(11, 'Roles.Delete', 'Deletes System role', 'active'),
(12, 'Roles.Add', 'Ability to add roles in the System', 'active'),
(13, 'Permissions.Manage', 'Manage users permissions. Ability to assign permissions to roles', 'active'),
(14, 'Institutions.Add', 'Ability to Add any kind of institution Institutions', 'active'),
(15, 'Institutions.Edit', 'Ability to edit any kind of institution', 'active'),
(16, 'Institutions.Delete', 'Ability to delete any kind of Institution', 'active'),
(17, 'Institutions.View', 'View institutions', 'active'),
(18, 'Bapteme.View', 'Allows to view Bapteme', 'active'),
(19, 'Bapteme.Add', 'Add new Bapteme', 'active'),
(20, 'Bapteme.Edit', 'Edit Baptemes', 'active'),
(21, 'Bapteme.Delete', 'Deletes Bapteme', 'active'),
(22, 'Confirmation.View', 'View Confirmations', 'active'),
(23, 'Confirmation.Add', 'Add new Confirmation', 'active'),
(24, 'Confirmation.Edit', 'Edit existing confirmation', 'active'),
(25, 'Confirmation.Delete', 'Delete Confirmation', 'active'),
(26, 'Communion.Add', 'Add communion', 'active'),
(27, 'Communion.Edit', 'Edit communion', 'active'),
(28, 'Communion.Delete', 'Delete Communion', 'active'),
(29, 'Communion.View', 'View Communions', 'active'),
(30, 'Deces.View', 'View Deces', 'active'),
(31, 'Deces.Add', 'Add deces', 'active'),
(32, 'Deces.Edit', 'Edit Deces', 'active'),
(33, 'Deces.Delete', 'Delete Deces', 'active'),
(34, 'Marriage.View', 'Views Marriages', 'active'),
(35, 'Marriage.Add', 'Add Marriages', 'active'),
(36, 'Marriage.Edit', 'Edit Marriages', 'active'),
(37, 'Marriage.Delete', 'Delete Marriages', 'active');

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

DROP TABLE IF EXISTS `personne`;
CREATE TABLE IF NOT EXISTS `personne` (
  `id_personne` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(128) NOT NULL,
  `prenom` varchar(128) NOT NULL,
  `date_naissance` date DEFAULT NULL,
  `adresse` varchar(128) DEFAULT NULL,
  `tel` varchar(128) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `religion` varchar(128) NOT NULL DEFAULT 'Catholique',
  `sexe` varchar(128) DEFAULT NULL,
  `type_personne` varchar(128) DEFAULT NULL COMMENT 'Type de personne (Chretien ou petre)',
  `photo` varchar(128) NOT NULL DEFAULT 'photos/default.jpg',
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_personne`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Contenu de la table `personne`
--

INSERT INTO `personne` (`id_personne`, `nom`, `prenom`, `date_naissance`, `adresse`, `tel`, `email`, `religion`, `sexe`, `type_personne`, `photo`, `parent_id`) VALUES
(1, 'Hatungimana', 'Emmanuel', '2014-01-01', '', '', '', 'Catholique', 'Masculin', NULL, 'photos/default.jpg', NULL),
(2, 'Harerimana', 'Pascal', '2014-05-15', '', '', '', 'Catholique', 'Masculin', NULL, 'photos/default.jpg', NULL),
(3, 'Ndihokubwayo', 'Albert', '2014-04-09', '', '', '', 'Catholique', 'Masculin', NULL, 'photos/default.jpg', NULL),
(4, 'Gahimbare', 'Elias', '2014-05-20', '', '', '', 'Catholique', 'Masculin', NULL, 'photos/default.jpg', NULL),
(5, 'Nijimbere', 'Oscar', '2014-05-08', '', '', '', 'Catholique', 'Masculin', NULL, 'photos/default.jpg', NULL),
(16, 'Nimbeshaho', 'Georges', '1984-06-11', '', '', '', 'No Catholique', 'Masculin', NULL, 'photos/default.jpg', NULL),
(17, 'Nibaruta', 'Ange', '1988-02-08', 'Kibenga', '78897897', 'angel@gmail.com', 'No Catholique', 'Feminin', NULL, 'photos/default.jpg', NULL),
(18, 'NDAYIKENGURUKIYE', 'Aloys', '2014-02-01', '', '', '', 'No Catholique', 'Masculin', NULL, 'photos/default.jpg', NULL),
(19, 'HABIMANA', 'Jeanne', '1997-02-11', '', '', '', 'No Catholique', 'Feminin', NULL, 'photos/default.jpg', NULL),
(20, 'NDIKUMANA', 'Benoit', '1986-02-01', 'KANYOSHA', '+25778954632', 'nbenoit@gmail.com', 'No Catholique', 'Masculin', NULL, 'photos/default.jpg', NULL),
(21, 'NDIKUMASABO', 'Spes', '1980-03-20', 'Ngagara Q6', '+25775458956', 'spesndik@yahoo.fr', 'No Catholique', 'Feminin', NULL, 'photos/default.jpg', NULL),
(22, 'sdsdsd', 'sdsdsdsd', '0000-00-00', '', '', '', 'No Catholique', 'Masculin', NULL, 'photos/default.jpg', NULL),
(23, 'sdsdsd', 'sdsdsdsd', '0000-00-00', '', '', '', 'No Catholique', 'Feminin', NULL, 'photos/default.jpg', NULL),
(24, 'sdqsdsqd', 'qsdfdfdf', '0000-00-00', '', '', '', 'No Catholique', 'Masculin', NULL, 'photos/default.jpg', NULL),
(25, 'sdsqdsq', 'qsdxw', '0000-00-00', '', '', '', 'No Catholique', NULL, NULL, 'photos/default.jpg', NULL),
(26, 'NDIKUMANA', 'Benoit', '1986-02-01', 'KANYOSHA', '+25778954632', 'nbenoit@gmail.com', 'No Catholique', 'Masculin', NULL, 'photos/default.jpg', NULL),
(27, 'NDIKUMASABO', 'Spes', '1980-03-20', 'Ngagara Q6', '+25775458956', 'spesndik@yahoo.fr', 'No Catholique', 'Feminin', NULL, 'photos/default.jpg', NULL),
(28, 'ISHIMWE', 'Guy', '2015-02-20', 'NGAGARA', '', '', 'Catholique', 'Masculin', NULL, 'photos/default.jpg', NULL),
(29, 'IGANZE', 'Ella', '1986-03-08', '', '', '', 'No Catholique', 'Feminin', NULL, 'photos/default.jpg', NULL),
(30, 'ISHIMWE', 'Marie Rose', '1982-08-07', 'Ngagara Q2', '', '', 'No Catholique', 'Feminin', NULL, 'photos/default.jpg', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `pretre`
--

DROP TABLE IF EXISTS `pretre`;
CREATE TABLE IF NOT EXISTS `pretre` (
  `pretre_id` int(11) NOT NULL,
  `personne_id` varchar(128) NOT NULL,
  `fonction` varchar(128) NOT NULL,
  `date_start_fonction` date NOT NULL,
  `date_end_fonction` date NOT NULL,
  `lieu_ministere` varchar(128) NOT NULL,
  `service` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `prix_offrande`
--

DROP TABLE IF EXISTS `prix_offrande`;
CREATE TABLE IF NOT EXISTS `prix_offrande` (
  `id_prix` int(11) NOT NULL AUTO_INCREMENT,
  `prix` float DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_on` date DEFAULT NULL,
  PRIMARY KEY (`id_prix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `id_role` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(60) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `build_in` tinyint(1) NOT NULL DEFAULT '0',
  `can_delete` tinyint(1) NOT NULL DEFAULT '1',
  `login_destination` varchar(255) NOT NULL DEFAULT '/',
  `deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_role`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `role`
--

INSERT INTO `role` (`id_role`, `role_name`, `description`, `build_in`, `can_delete`, `login_destination`, `deleted`) VALUES
(1, 'Administrator', 'Has full access to the application', 1, 0, '/', 0),
(2, 'User', 'Simple User with limited access', 1, 0, '/', 0),
(3, 'Guest', 'User with very limited access', 1, 0, '/', 0);

-- --------------------------------------------------------

--
-- Structure de la table `role_permissions`
--

DROP TABLE IF EXISTS `role_permissions`;
CREATE TABLE IF NOT EXISTS `role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `role_permissions`
--

INSERT INTO `role_permissions` (`role_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 26),
(1, 27),
(1, 28),
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(1, 33),
(1, 34),
(1, 35),
(1, 36),
(1, 37),
(2, 1),
(2, 2),
(2, 3);

-- --------------------------------------------------------

--
-- Structure de la table `type_institution`
--

DROP TABLE IF EXISTS `type_institution`;
CREATE TABLE IF NOT EXISTS `type_institution` (
  `id_type` int(11) NOT NULL AUTO_INCREMENT,
  `nom_type` varchar(255) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_on` date DEFAULT NULL,
  PRIMARY KEY (`id_type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `type_institution`
--

INSERT INTO `type_institution` (`id_type`, `nom_type`, `parent`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 'Diocese', NULL, 1, '2014-04-21 12:31:22', 1, '2014-04-21'),
(2, 'Paroisse', 1, 1, '2014-04-21 12:31:58', 1, '2014-04-21'),
(3, 'Chapelle', 2, 1, '2014-04-21 12:32:08', 1, '2014-04-21'),
(4, 'Sucursale', 3, 1, '2014-04-21 12:32:16', 1, '2014-04-21');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `email` varchar(120) NOT NULL,
  `username` varchar(30) NOT NULL DEFAULT '',
  `password_hash` char(60) NOT NULL,
  `reset_hash` varchar(40) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_ip` varchar(40) NOT NULL DEFAULT '',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `reset_by` int(10) DEFAULT NULL,
  `banned` tinyint(1) NOT NULL DEFAULT '0',
  `ban_message` varchar(255) DEFAULT NULL,
  `display_name` varchar(255) DEFAULT '',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `password_iterations` int(4) NOT NULL DEFAULT '0',
  `force_password_reset` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `role_id`, `nom`, `prenom`, `email`, `username`, `password_hash`, `reset_hash`, `last_login`, `last_ip`, `created_on`, `deleted`, `reset_by`, `banned`, `ban_message`, `display_name`, `active`, `password_iterations`, `force_password_reset`) VALUES
(1, 1, 'Olivier', 'Diokey', 'diokeyolivier@gmail.com', 'diokey', 'afaa60550d66166e6a94de49d0deb5eb077b1284', NULL, '2014-03-09 00:00:00', '127.0.0.1', '2014-03-09 00:00:00', 0, NULL, 0, NULL, 'Diokey', 1, 0, 0),
(2, 1, NULL, NULL, 'ericsonbig@yahoo.fr', 'eric', '', NULL, NULL, '127.0.0.1', '2014-03-17 21:52:30', 0, NULL, 0, NULL, 'Ericson', 1, 0, 0),
(3, 1, NULL, NULL, 'butofleury@gmail.com', 'fleury', '93be2fa2c5558185f3c22d5a98bc319e4db3a04a', NULL, NULL, '127.0.0.1', '2014-03-30 19:31:02', 0, NULL, 0, NULL, 'Fleury', 1, 0, 0),
(4, 2, NULL, NULL, 'nibaruta@gmail.com', 'angel', 'c8a50f632c3c4baf27fc05facb1883104e1d16ef', NULL, NULL, '127.0.0.1', '2014-05-22 18:59:21', 0, NULL, 0, NULL, 'Angel', 1, 0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
