-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mer. 27 nov. 2019 à 13:30
-- Version du serveur :  10.4.8-MariaDB
-- Version de PHP :  7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `projetest`
--

-- --------------------------------------------------------

--
-- Structure de la table `activite`
--

CREATE TABLE `activite` (
  `nom` varchar(30) NOT NULL,
  `nomAccompagnateur` varchar(30) DEFAULT NULL,
  `duree` int(5) NOT NULL,
  `prix` int(4) DEFAULT 0,
  `ville` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `activite`
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
  `date` date NOT NULL,
  `commentaire` varchar(300) DEFAULT NULL
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
-- Déchargement des données de la table `chambre`
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

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id`, `nom`, `prenom`, `adresse`, `telephone`, `email`, `pseudo`, `motdepasse`) VALUES
(6, 'Topping', 'Gram', '439 Golf View Alley', 1369596416, 'gtopping3@usa.gov', 'gtopping3', '1doWsz'),
(19, 'Macilhench', 'Rock', '166 Hovde Lane', 1801325919, 'rmacilhenchg@google.co.jp', 'rmacilhenc', 'G2f8cPwVru'),
(24, 'Keddle', 'Lenore', '71274 Springview Court', 1487304080, 'lkeddlel@ed.gov', 'lkeddlel', 'sDirry'),
(41, 'Crommett', 'Sara-ann', '3 Maple Place', 1127805999, 'scrommett12@ted.com', 'scrommett1', 'Te8jX4YRJ'),
(51, 'Burniston', 'Silva', '5046 Hovde Avenue', 1587166427, 'sburniston1c@harvard.edu', 'sburniston', 'L84Tbo'),
(53, 'Crackett', 'Miguel', '24855 Judy Point', 1197966728, 'mcrackett1e@biglobe.ne.jp', 'mcrackett1', 'AeaalW1NNw'),
(58, 'Arro', 'Mara', '0 Pond Hill', 1645536604, 'marro1j@craigslist.org', 'marro1j', 'YJmKxok71'),
(67, 'MacMenamin', 'Oby', '9842 Eliot Circle', 1183569463, 'omacmenamin1s@dot.gov', 'omacmenami', 'tsDYuISeR7'),
(68, 'Bohlin', 'Selle', '2464 Tony Way', 1749964813, 'sbohlin1t@domainmarket.com', 'sbohlin1t', 'rpbz4suag'),
(69, 'Reimer', 'Garland', '92678 Sachtjen Lane', 1367787760, 'greimer1u@sitemeter.com', 'greimer1u', 'SNTLbKaZE2'),
(75, 'Pateman', 'Thomasa', '3 Village Point', 1843776339, 'tpateman20@unicef.org', 'tpateman20', 'ZTaJIvv'),
(124, 'Fetherstan', 'Eleanora', '24640 Anthes Crossing', 1317414454, 'efetherstan3d@4shared.com', 'efethersta', '2V8pwuo9YU'),
(129, 'Placido', 'Thaine', '61 Leroy Place', 1231865500, 'tplacido3i@ameblo.jp', 'tplacido3i', '7KKM4hk'),
(137, 'Tasseler', 'Maurizio', '48 Lighthouse Bay Junction', 1029694024, 'mtasseler3q@comsenz.com', 'mtasseler3', 'zcB6G3Wy0l'),
(138, 'MacTurlough', 'Jacky', '7709 Mayer Road', 1363188854, 'jmacturlough3r@mlb.com', 'jmacturlou', '1CMJGz'),
(148, 'Fenby', 'Cameron', '850 Coolidge Circle', 1814517365, 'cfenby41@comsenz.com', 'cfenby41', '9tpaiBOoXE');

-- --------------------------------------------------------

--
-- Structure de la table `comptable`
--

CREATE TABLE `comptable` (
  `id` int(4) NOT NULL,
  `nom` varchar(30) DEFAULT NULL,
  `prenom` varchar(30) DEFAULT NULL,
  `salaire` int(5) DEFAULT NULL
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
-- Déchargement des données de la table `hotel`
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
  `n_transaction` int(4) NOT NULL,
  `moyen` varchar(40) DEFAULT NULL,
  `montant` int(6) DEFAULT NULL,
  `id` int(5) DEFAULT NULL
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
-- Doublure de structure pour la vue `somme`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `somme` (
`id` int(10)
,`montant` bigint(13)
);

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
-- Déchargement des données de la table `ville`
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
('Calais', '62100', 'France'),
('Cannes', '06400', 'France'),
('Colombes', '92700', 'France'),
('Copenhague', '1052', 'Danemark'),
('Cracovie', '04-218', 'Pologne'),
('Douvres', 'CT-15', 'Angleterre'),
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
  `nomVilleDepart` varchar(30) NOT NULL,
  `nomVilleArrive` varchar(30) NOT NULL,
  `dateDepart` date DEFAULT NULL,
  `dateArrive` date DEFAULT NULL,
  `prix` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `voyage`
--

INSERT INTO `voyage` (`n_reservation`, `typeTransport`, `nomVilleDepart`, `nomVilleArrive`, `dateDepart`, `dateArrive`, `prix`) VALUES
(1, 'avion', 'Paris', 'Marseille', '2019-11-29', '2019-11-29', 259),
(2, 'avion', 'Marseille', 'Paris', '2019-12-06', '2019-12-06', 259),
(3, 'train', 'Marseille', 'Cannes', '2019-12-23', '2019-12-24', 75),
(4, 'train', 'Cannes', 'Marseille', '2020-01-04', '2020-01-04', 85),
(5, 'train', 'Paris', 'Berlin', '2020-01-04', '2020-01-04', 135),
(6, 'train', 'Berlin', 'Paris', '2020-01-11', '2020-01-11', 135),
(7, 'avion', 'Paris', 'Honolulu', '2019-11-24', '2019-11-25', 950),
(8, 'avion', 'Honolulu', 'Paris', '2019-12-08', '2019-12-09', 1050),
(12, 'bateau', 'Calais', 'Douvres', '2019-12-08', '2019-12-08', 70),
(13, 'bateau', 'Douvres', 'Calais', '2019-12-15', '2019-12-15', 75),
(17, 'avion', 'Bangkok', 'Amsterdam', '2019-11-27', '2019-11-28', 825),
(18, 'avion', 'Amsterdam', 'Bangkok', '2019-11-27', '2019-11-28', 825);

-- --------------------------------------------------------

--
-- Structure de la vue `somme`
--
DROP TABLE IF EXISTS `somme`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `somme`  AS  select `c`.`id` AS `id`,`a`.`prix` + `v`.`prix` + `ch`.`prix` AS `montant` from ((((((`client` `c` join `voyage` `v`) join `activite` `a`) join `chambre` `ch`) join `reservervoyage` `rv`) join `reserverchambre` `rc`) join `reserveractivite` `ra`) where `c`.`id` = `rv`.`id` and `v`.`n_reservation` = `rv`.`n_reservation` and `c`.`id` = `rc`.`id` and `ch`.`n_reservation` = `rc`.`n_reservation` and `c`.`id` = `ra`.`id` and `a`.`nom` = `ra`.`nomactivite` group by `c`.`nom`,`c`.`prenom`,`a`.`prix` + `v`.`prix` + `ch`.`prix` ;

--
-- Index pour les tables déchargées
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
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT pour les tables déchargées
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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT pour la table `comptable`
--
ALTER TABLE `comptable`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `paiement`
--
ALTER TABLE `paiement`
  MODIFY `n_transaction` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `voyage`
--
ALTER TABLE `voyage`
  MODIFY `n_reservation` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Contraintes pour les tables déchargées
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
  ADD CONSTRAINT `comptable_ibfk_1` FOREIGN KEY (`id`) REFERENCES `paiement` (`n_transaction`);

--
-- Contraintes pour la table `paiement`
--
ALTER TABLE `paiement`
  ADD CONSTRAINT `paiement_ibfk_1` FOREIGN KEY (`id`) REFERENCES `client` (`id`);

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
