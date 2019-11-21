-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Jeu 21 Novembre 2019 à 10:22
-- Version du serveur :  10.1.24-MariaDB-6
-- Version de PHP :  7.0.22-3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `user`
--

-- --------------------------------------------------------

--
-- Structure de la table `activite`
--

CREATE TABLE `activite` (
  `nom` varchar(30) NOT NULL,
  `nomAccompagnateur` varchar(30) DEFAULT NULL,
  `duree` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `activite`
--

INSERT INTO `activite` (`nom`, `nomAccompagnateur`, `duree`) VALUES
('Accrobranche', 'Owen', 120),
('Cours de musique', 'Camille', 120),
('Escalade', 'Louise', 60),
('Jet-Ski', 'Dylan', 75),
('Parapente', 'Sofia', 150),
('Parasailing', 'Lorenzo', 90),
('Plongee', 'Maria', 120),
('Rafting', 'William', 150),
('Randonnee', 'Gabriel', 180),
('Ski', 'Samuel', 210),
('Surf', 'Tiago', 60),
('Velo', 'Lucas', 120);

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
  `numero` int(4) NOT NULL,
  `nb_lits` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `email` varchar(100) NOT NULL
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
  `nb_etoiles` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `paiement`
--

CREATE TABLE `paiement` (
  `n_transaction` int(5) NOT NULL,
  `moyen` varchar(30) NOT NULL,
  `montant` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `ville`
--

CREATE TABLE `ville` (
  `nom` varchar(30) NOT NULL,
  `codePostal` varchar(30) NOT NULL,
  `pays` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `ville`
--

INSERT INTO `ville` (`nom`, `codePostal`, `pays`) VALUES
('Agra', 'A223007', 'Inde'),
('Amsterdam', 'AM-1109', 'Pays-Bas'),
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
('Ispahan', 'I81465', 'Iran'),
('Istanbul', '34010', 'Turquie'),
('Leipzig', '04103', 'Allemagne'),
('Lisbonne', 'L1000-001', 'Portugal'),
('Londre', 'SW1A-1AA', 'Royaume-Uni'),
('Lugano', 'L-6815', 'Suisse'),
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
  `correspondance` tinyint(1) NOT NULL,
  `nomVilleDepart` varchar(30) NOT NULL,
  `nomVilleArrive` varchar(30) NOT NULL,
  `dateDepart` date DEFAULT NULL,
  `dateArrive` date DEFAULT NULL
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
  ADD PRIMARY KEY (`numero`);

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
  ADD PRIMARY KEY (`n_transaction`);

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
  ADD CONSTRAINT `chambre_ibfk_1` FOREIGN KEY (`numero`) REFERENCES `client` (`id`);

--
-- Contraintes pour la table `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `client_ibfk_1` FOREIGN KEY (`adresse`) REFERENCES `ville` (`nom`);

--
-- Contraintes pour la table `comptable`
--
ALTER TABLE `comptable`
  ADD CONSTRAINT `comptable_ibfk_1` FOREIGN KEY (`id_comptable`) REFERENCES `paiement` (`n_transaction`);

--
-- Contraintes pour la table `hotel`
--
ALTER TABLE `hotel`
  ADD CONSTRAINT `hotel_ibfk_1` FOREIGN KEY (`nom`) REFERENCES `ville` (`nom`);

--
-- Contraintes pour la table `paiement`
--
ALTER TABLE `paiement`
  ADD CONSTRAINT `paiement_ibfk_1` FOREIGN KEY (`n_transaction`) REFERENCES `client` (`id`);

--
-- Contraintes pour la table `voyage`
--
ALTER TABLE `voyage`
  ADD CONSTRAINT `voyage_ibfk_1` FOREIGN KEY (`nomVilleDepart`) REFERENCES `ville` (`nom`),
  ADD CONSTRAINT `voyage_ibfk_2` FOREIGN KEY (`nomVilleArrive`) REFERENCES `ville` (`nom`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
