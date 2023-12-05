-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Mar 05 Décembre 2023 à 15:19
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `bd commentaires`
--
CREATE DATABASE `bd commentaires` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bd commentaires`;

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `num_commentaire` int(11) NOT NULL AUTO_INCREMENT,
  `nom_client` varchar(50) NOT NULL,
  `email_client` int(11) NOT NULL,
  `commentaire` text NOT NULL,
  PRIMARY KEY (`num_commentaire`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `contact`
--

INSERT INTO `contact` (`num_commentaire`, `nom_client`, `email_client`, `commentaire`) VALUES
(1, 'Remy', 0, 'je n''arrive pas a me connecter'),
(2, 'david', 0, 'je n''arrive pas a valider mon panier');
--
-- Base de données: `bd locations`
--
CREATE DATABASE `bd locations` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bd locations`;

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `ncin` varchar(40) NOT NULL,
  `nom` varchar(40) NOT NULL,
  `prenom` varchar(40) NOT NULL,
  `date_naissance` date NOT NULL,
  `num_permis` int(11) NOT NULL,
  `adresse` varchar(40) NOT NULL,
  `tel` int(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  PRIMARY KEY (`ncin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `clients`
--


-- --------------------------------------------------------

--
-- Structure de la table `locations`
--

CREATE TABLE IF NOT EXISTS `locations` (
  `num_location` varchar(40) NOT NULL,
  `date_location` date NOT NULL,
  `imatriculation` varchar(40) NOT NULL,
  `NCIN` varchar(40) NOT NULL,
  `duree` int(11) NOT NULL,
  `prix_location` int(11) NOT NULL,
  `caution` int(11) NOT NULL,
  PRIMARY KEY (`num_location`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `locations`
--


-- --------------------------------------------------------

--
-- Structure de la table `voiture`
--

CREATE TABLE IF NOT EXISTS `voiture` (
  `imatriculation` varchar(40) NOT NULL,
  `modele` varchar(40) NOT NULL,
  `prix_achat` float NOT NULL,
  `dat_achat` date NOT NULL,
  `marque` varchar(40) NOT NULL,
  `num_assurance` int(11) NOT NULL,
  `kilometrage` int(11) NOT NULL,
  `carburant` varchar(40) NOT NULL,
  `boitre_vitese` varchar(40) NOT NULL,
  `nbre_porte` int(11) NOT NULL,
  PRIMARY KEY (`imatriculation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `voiture`
--

INSERT INTO `voiture` (`imatriculation`, `modele`, `prix_achat`, `dat_achat`, `marque`, `num_assurance`, `kilometrage`, `carburant`, `boitre_vitese`, `nbre_porte`) VALUES
('FE29233', 'Golf 7 GTI 2 l turbo', 40, '0000-00-00', 'Volkswagen ', 12303022, 12, 'GAZOLE', 'AUTOMATIQUE', 4);
--
-- Base de données: `bibliothèque`
--
CREATE DATABASE `bibliothèque` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bibliothèque`;

-- --------------------------------------------------------

--
-- Structure de la table `adherents`
--

CREATE TABLE IF NOT EXISTS `adherents` (
  `ID_Adherent` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `date_naissance` date NOT NULL,
  `Date_adhesion` date NOT NULL,
  `adresse` varchar(50) NOT NULL,
  `Num_Tel` varchar(50) NOT NULL,
  `mail` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_Adherent`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=99320832 ;

--
-- Contenu de la table `adherents`
--

INSERT INTO `adherents` (`ID_Adherent`, `nom`, `prenom`, `date_naissance`, `Date_adhesion`, `adresse`, `Num_Tel`, `mail`) VALUES
(102293, 'Charisse', 'Huerto', '2001-09-20', '2023-12-04', '12 RUE PORTE DE ST CLOUD', '07.92.19.19.29', 'chuerto@wanadoo.com'),
(1929931, 'Schapiro', 'Robin', '0000-00-00', '2023-12-20', 'SDF', '05.33.46.21.56', 'robinchapiro@wanadoo.com'),
(99320831, 'TIENG', 'PAUL', '0000-00-00', '2023-12-28', 'Château de Versailles', '06.43.21.34.63', 'paultieng@wanadoo.com');

-- --------------------------------------------------------

--
-- Structure de la table `auteurs`
--

CREATE TABLE IF NOT EXISTS `auteurs` (
  `id_auteur` varchar(50) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prénom` varchar(50) NOT NULL,
  `date_naissance` date NOT NULL,
  PRIMARY KEY (`id_auteur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `auteurs`
--

INSERT INTO `auteurs` (`id_auteur`, `nom`, `prénom`, `date_naissance`) VALUES
('Cyril Hanouna', 'Hanouna', 'Cyril', '2023-12-21'),
('Francois Hollande', 'Hollande', 'Francois', '2023-12-21'),
('Nicolas Sarkozy', 'Sarkozy', 'Nicolas', '2023-12-18');

-- --------------------------------------------------------

--
-- Structure de la table `emprunts`
--

CREATE TABLE IF NOT EXISTS `emprunts` (
  `id_emprunt` int(11) NOT NULL AUTO_INCREMENT,
  `date_emprunt` date NOT NULL,
  `duree` int(11) NOT NULL,
  `#id_adherent` int(11) NOT NULL,
  `#reference_livre` varchar(50) NOT NULL,
  PRIMARY KEY (`id_emprunt`),
  KEY `#id_adherent` (`#id_adherent`),
  KEY `#reference_livre` (`#reference_livre`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1234423 ;

--
-- Contenu de la table `emprunts`
--

INSERT INTO `emprunts` (`id_emprunt`, `date_emprunt`, `duree`, `#id_adherent`, `#reference_livre`) VALUES
(2322, '2023-12-27', 3, 1929931, '29299020398'),
(122891, '2023-12-26', 1, 99320831, '30202020202'),
(1234422, '2023-12-31', 1, 102293, '192093209093');

-- --------------------------------------------------------

--
-- Structure de la table `livres`
--

CREATE TABLE IF NOT EXISTS `livres` (
  `reference_livre` varchar(50) NOT NULL,
  `nombre_pages` int(11) NOT NULL,
  `#Id_Auteur` varchar(50) NOT NULL,
  `Date_publication` date NOT NULL,
  `Genre` varchar(50) NOT NULL,
  `Disponibilité` tinyint(1) NOT NULL,
  `Nombre_emprunts` int(11) NOT NULL,
  `Etat` varchar(50) NOT NULL,
  `Nombre_exemplaire` int(11) NOT NULL,
  PRIMARY KEY (`reference_livre`),
  KEY `#Id_Auteur` (`#Id_Auteur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `livres`
--

INSERT INTO `livres` (`reference_livre`, `nombre_pages`, `#Id_Auteur`, `Date_publication`, `Genre`, `Disponibilité`, `Nombre_emprunts`, `Etat`, `Nombre_exemplaire`) VALUES
('192093209093', 5, 'Cyril Hanouna', '2023-12-18', 'Dramatique', 2, 7, 'Endommagé ', 1),
('29299020398', 1203, 'Francois Hollande', '2005-12-28', 'Biographie', 1, 2, 'Médiocre', 4),
('30202020202', 32, 'Nicolas Sarkozy', '2023-12-12', 'Biographie', 0, 4, 'Neuf', 2);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `auteurs`
--
ALTER TABLE `auteurs`
  ADD CONSTRAINT `auteurs_ibfk_1` FOREIGN KEY (`id_auteur`) REFERENCES `livres` (`#Id_Auteur`);

--
-- Contraintes pour la table `emprunts`
--
ALTER TABLE `emprunts`
  ADD CONSTRAINT `emprunts_ibfk_2` FOREIGN KEY (`#id_adherent`) REFERENCES `adherents` (`ID_Adherent`),
  ADD CONSTRAINT `emprunts_ibfk_1` FOREIGN KEY (`#reference_livre`) REFERENCES `livres` (`reference_livre`);
--
-- Base de données: `livres`
--
CREATE DATABASE `livres` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `livres`;
