-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Mar 26 Novembre 2019 à 17:23
-- Version du serveur :  10.1.24-MariaDB-6
-- Version de PHP :  7.0.22-3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `Projet`
--

-- --------------------------------------------------------

--
-- Structure de la table `activite`
--

CREATE TABLE `activite` (
  `nom` varchar(30) NOT NULL,
  `nomAccompagnateur` varchar(30) DEFAULT NULL,
  `duree` int(5) NOT NULL,
  `prix` int(4) DEFAULT '0',
  `ville` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `activite`
--

INSERT INTO `activite` (`nom`, `nomAccompagnateur`, `duree`, `prix`, `ville`) VALUES
('Accrobranche', 'Owen', 120, 60, 'Lyon'),
('Cours de musique', 'Camille', 120, 125, 'Bobo-Dioulasso'),
('Escalade', 'Louise', 60, 40, 'Bruxelles'),
('Jet-Ski', 'Dylan', 75, 30, 'Honolulu'),
('Parapente', 'Sofia', 150, 90, ''),
('Parasailing', 'Lorenzo', 90, 120, ''),
('Plongee', 'Maria', 120, 15, 'Dubai'),
('Rafting', 'William', 150, 50, 'Manille'),
('Randonnee', 'Gabriel', 180, 0, 'Athène'),
('Ski', 'Samuel', 210, 150, 'Andermatt'),
('Surf', 'Tiago', 60, 25, 'Cannes'),
('Velo', 'Lucas', 120, 0, 'Madrid');

-- --------------------------------------------------------

--
-- Structure de la table `avis`
--

CREATE TABLE `avis` (
  `titre` varchar(30) NOT NULL,
  `note` int(2) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `chambre`
--

CREATE TABLE `chambre` (
  `n_reservation` int(5) NOT NULL,
  `numero` int(2) NOT NULL,
  `nb_lits` int(5) NOT NULL,
  `hotel` varchar(30) NOT NULL,
  `prix` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `chambre`
--

INSERT INTO `chambre` (`n_reservation`, `numero`, `nb_lits`, `hotel`, `prix`) VALUES
(1, 1, 2, 'La manufacture', 74),
(2, 2, 3, 'La manufacture', 100),
(3, 3, 1, 'La manufacture', 55),
(4, 1, 1, 'Darcet', 55),
(5, 2, 3, 'Darcet', 90),
(6, 3, 4, 'Darcet', 120),
(7, 1, 3, 'Les jardins de mademoiselle', 100),
(8, 2, 1, 'Les jardins de mademoiselle', 75),
(10, 15, 3, 'Fred Hotel', 100),
(11, 666, 2, 'Fred Hotel', 45);

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id` int(10) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `adresse` varchar(100) NOT NULL,
  `telephone` int(10) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `pseudo` varchar(10) NOT NULL,
  `motdepasse` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `comptable`
--

CREATE TABLE `comptable` (
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `tarif` int(6) NOT NULL,
  `id_comptable` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `hotel`
--

CREATE TABLE `hotel` (
  `nom` varchar(30) NOT NULL,
  `nb_chambre` int(4) DEFAULT NULL,
  `nb_etoiles` int(1) DEFAULT NULL,
  `lieu` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `hotel`
--

INSERT INTO `hotel` (`nom`, `nb_chambre`, `nb_etoiles`, `lieu`) VALUES
('Astral Inn', NULL, 3, 'Leipzig'),
('C2', NULL, 5, 'Marseille'),
('Darcet', NULL, 2, 'Paris'),
('Dorsett City London', NULL, 4, 'Londres'),
('Fred Hotel', NULL, 3, 'Paris'),
('Hermes', NULL, 2, 'Marseille'),
('Hotel de Belgique', NULL, 1, 'Paris'),
('Ibis', NULL, 1, 'Lisbonne'),
('La manufacture', NULL, 3, 'Paris'),
('Les jardins de mademoiselle', NULL, 4, 'Paris'),
('Maritim Hotel', NULL, 4, 'Berlin'),
('nhow', NULL, 3, 'Berlin'),
('Radisson Blu Hotel', NULL, 4, 'Berlin'),
('Roda Al Murooj', NULL, 5, 'Dubai'),
('Saint Ferreol', NULL, 3, 'Marseille'),
('Shangri-La Hotel', NULL, 5, 'Dubai'),
('The Nadler Covent Garden', NULL, 5, 'Londres'),
('The Tower', NULL, 4, 'Londres'),
('Wyndham Dubai Marina', NULL, 4, 'Dubai');

-- --------------------------------------------------------

--
-- Structure de la table `paiement`
--

CREATE TABLE `paiement` (
  `n_transaction` int(5) NOT NULL,
  `moyen` varchar(30) NOT NULL,
  `montant` int(6) NOT NULL,
  `id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `reserveractivite`
--

CREATE TABLE `reserveractivite` (
  `id` int(4) NOT NULL,
  `nb_personne` int(4) NOT NULL,
  `nomactivite` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `reserverchambre`
--

CREATE TABLE `reserverchambre` (
  `id` int(5) DEFAULT NULL,
  `nb_personne` int(2) NOT NULL,
  `n_reservation` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `reservervoyage`
--

CREATE TABLE `reservervoyage` (
  `id` int(4) NOT NULL,
  `nb_personne` int(2) NOT NULL,
  `n_reservation` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `ville`
--

CREATE TABLE `ville` (
  `nom` varchar(30) NOT NULL,
  `codePostal` varchar(30) DEFAULT NULL,
  `pays` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `ville`
--

INSERT INTO `ville` (`nom`, `codePostal`, `pays`) VALUES
('Agra', 'A223007', 'Inde'),
('Amsterdam', 'AM-1109', 'Pays-Bas'),
('Andermatt', '', 'Suisse'),
('Athène', 'A104-31', 'Grèce'),
('Bangkok', '10270', 'Thailand'),
('Berlin', '10115', 'Allemagne'),
('Bobo-Dioulasso', 'DJ-2018', 'Burkina Faso'),
('Braga', 'B4700-024', 'Portugal'),
('Brighton', 'BN1', 'Royaume-Uni'),
('Bruxelles', '1000', 'Belgique'),
('Budapest', 'BU-1007', 'Hongrie'),
('Cannes', '06400', 'France'),
('Copenhague', '1052', 'Danemark'),
('Cracovie', '04-218', 'Pologne'),
('Dubai', 'B.P111', 'Émirats Arabes Unis'),
('Hanoi', '1000-HO75', 'Vietnam'),
('Hong Kong', '999077', 'Chine'),
('Honolulu', '15-17000', 'Hawaii'),
('Ispahan', 'I81465', 'Iran'),
('Istanbul', '34010', 'Turquie'),
('Leipzig', '04103', 'Allemagne'),
('Lisbonne', 'L1000-001', 'Portugal'),
('Londres', 'SW1A-1AA', 'Royaume-Uni'),
('Lugano', 'L-6815', 'Suisse'),
('Lyon', '69000', 'France'),
('Madrid', 'M28001', 'Espagne'),
('Manille', 'ML1000', 'Philippines'),
('Marseille', 'M13000', 'France'),
('Namur', 'N-5000', 'Belgique'),
('Nicosie', '1065', 'Chypre'),
('Oulan Bator', 'OU14-B200', 'Mongolie'),
('Palerme', 'P90100', 'Italie'),
('Paris', '75000', 'France'),
('Pékin', 'P100000I', 'Chine'),
('Prague', '104-00', 'République tchèque'),
('Rome', '00100', 'Italie'),
('Séoul', '100-011', 'Corée du Sud'),
('Sofia', '1138', 'Bulgarie'),
('Taipei', 'TA100-491', 'Taiwan'),
('Tokyo', '100-0000', 'Japon'),
('Valence', 'V46001', 'Espagne'),
('Venise', '30100', 'Italie'),
('Vienne', '38200', 'Autriche'),
('Zagreb', '1020', 'Croatie');

-- --------------------------------------------------------

--
-- Structure de la table `voyage`
--

CREATE TABLE `voyage` (
  `n_reservation` int(30) NOT NULL,
  `typeTransport` varchar(30) NOT NULL,
  `typeVoyage` varchar(30) NOT NULL,
  `nomVilleDepart` varchar(30) NOT NULL,
  `nomVilleArrive` varchar(30) NOT NULL,
  `dateDepart` date DEFAULT NULL,
  `dateArrive` date DEFAULT NULL,
  `prix` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `activite`
--
ALTER TABLE `activite`
  ADD PRIMARY KEY (`nom`);

--
-- Index pour la table `avis`
--
ALTER TABLE `avis`
  ADD PRIMARY KEY (`titre`);

--
-- Index pour la table `chambre`
--
ALTER TABLE `chambre`
  ADD PRIMARY KEY (`n_reservation`),
  ADD KEY `hotel` (`hotel`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`,`email`),
  ADD KEY `email` (`email`),
  ADD KEY `adresse` (`adresse`);

--
-- Index pour la table `comptable`
--
ALTER TABLE `comptable`
  ADD PRIMARY KEY (`nom`,`prenom`,`id_comptable`),
  ADD KEY `id_comptable` (`id_comptable`);

--
-- Index pour la table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`nom`);

--
-- Index pour la table `paiement`
--
ALTER TABLE `paiement`
  ADD PRIMARY KEY (`n_transaction`),
  ADD KEY `id` (`id`);

--
-- Index pour la table `reserveractivite`
--
ALTER TABLE `reserveractivite`
  ADD KEY `id` (`id`),
  ADD KEY `nomactivite` (`nomactivite`);

--
-- Index pour la table `reserverchambre`
--
ALTER TABLE `reserverchambre`
  ADD KEY `id` (`id`),
  ADD KEY `n_reservation` (`n_reservation`);

--
-- Index pour la table `reservervoyage`
--
ALTER TABLE `reservervoyage`
  ADD KEY `n_reservation` (`n_reservation`),
  ADD KEY `id` (`id`);

--
-- Index pour la table `ville`
--
ALTER TABLE `ville`
  ADD PRIMARY KEY (`nom`);

--
-- Index pour la table `voyage`
--
ALTER TABLE `voyage`
  ADD PRIMARY KEY (`n_reservation`),
  ADD KEY `nomVilleDepart` (`nomVilleDepart`),
  ADD KEY `nomVilleArrive` (`nomVilleArrive`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `chambre`
--
ALTER TABLE `chambre`
  MODIFY `n_reservation` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `paiement`
--
ALTER TABLE `paiement`
  MODIFY `n_transaction` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `voyage`
--
ALTER TABLE `voyage`
  MODIFY `n_reservation` int(30) NOT NULL AUTO_INCREMENT;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `chambre`
--
ALTER TABLE `chambre`
  ADD CONSTRAINT `chambre_ibfk_1` FOREIGN KEY (`hotel`) REFERENCES `hotel` (`nom`);

--
-- Contraintes pour la table `comptable`
--
ALTER TABLE `comptable`
  ADD CONSTRAINT `comptable_ibfk_1` FOREIGN KEY (`id_comptable`) REFERENCES `paiement` (`n_transaction`);

--
-- Contraintes pour la table `paiement`
--
ALTER TABLE `paiement`
  ADD CONSTRAINT `paiement_ibfk_1` FOREIGN KEY (`n_transaction`) REFERENCES `client` (`id`),
  ADD CONSTRAINT `paiement_ibfk_2` FOREIGN KEY (`id`) REFERENCES `client` (`id`);

--
-- Contraintes pour la table `reserveractivite`
--
ALTER TABLE `reserveractivite`
  ADD CONSTRAINT `reserveractivite_ibfk_1` FOREIGN KEY (`id`) REFERENCES `client` (`id`),
  ADD CONSTRAINT `reserveractivite_ibfk_2` FOREIGN KEY (`nomactivite`) REFERENCES `activite` (`nom`);

--
-- Contraintes pour la table `reserverchambre`
--
ALTER TABLE `reserverchambre`
  ADD CONSTRAINT `reserverchambre_ibfk_1` FOREIGN KEY (`id`) REFERENCES `client` (`id`),
  ADD CONSTRAINT `reserverchambre_ibfk_2` FOREIGN KEY (`n_reservation`) REFERENCES `chambre` (`n_reservation`);

--
-- Contraintes pour la table `reservervoyage`
--
ALTER TABLE `reservervoyage`
  ADD CONSTRAINT `reservervoyage_ibfk_1` FOREIGN KEY (`n_reservation`) REFERENCES `voyage` (`n_reservation`),
  ADD CONSTRAINT `reservervoyage_ibfk_2` FOREIGN KEY (`id`) REFERENCES `client` (`id`);

--
-- Contraintes pour la table `voyage`
--
ALTER TABLE `voyage`
  ADD CONSTRAINT `voyage_ibfk_1` FOREIGN KEY (`nomVilleDepart`) REFERENCES `ville` (`nom`),
  ADD CONSTRAINT `voyage_ibfk_2` FOREIGN KEY (`nomVilleArrive`) REFERENCES `ville` (`nom`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
