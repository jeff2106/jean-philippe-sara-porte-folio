-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mar. 12 oct. 2021 à 17:54
-- Version du serveur :  10.3.16-MariaDB
-- Version de PHP : 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `id15948283_gestionecole`
--

-- --------------------------------------------------------

--
-- Structure de la table `ApercuEvent`
--

CREATE TABLE `ApercuEvent` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `descriptions` varchar(255) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `ApercuEvent`
--

INSERT INTO `ApercuEvent` (`id`, `titre`, `descriptions`, `image`) VALUES
(1, 'Rien de plus top que ça ', 'Regarde juste', '../PDF/28DDF598-316D-4E45-ABEE-194FE5ABFDAC.jpeg'),
(2, 'Ok', 'Ok', '../PDF/56C19CB3-CF92-45C1-9711-E4F8993048AB.jpeg'),
(3, 'sortie  au zoo', 'la sortie  est payante  départ   9h', '../PDF/connexion-reseau-globale-illustration-creative-du-globe-terrestre-numerique-sur-fond-abstrait-2crp9n8.jpg'),
(4, ' SORTIE  A LA PLAGE ', ' DEPART  PREVUE A  6H  GMT', '../PDF/modele-affiche-evenement-moderne-pour-site-web-application-mobile_156268-4.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `Classes`
--

CREATE TABLE `Classes` (
  `id` int(11) NOT NULL,
  `Classe` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Classes`
--

INSERT INTO `Classes` (`id`, `Classe`) VALUES
(2, 'PS'),
(3, 'MP'),
(5, 'CP1'),
(6, 'CP2'),
(7, 'CE2'),
(8, 'CM1'),
(9, 'CM2'),
(10, '6è1'),
(11, '6ième2'),
(12, '5ième1'),
(13, '4ième1'),
(14, '4ième2'),
(15, '3ième1'),
(16, '3ièm2'),
(18, 'second A'),
(19, 'première D '),
(20, 'première A'),
(21, 'première C'),
(22, 'Tle D'),
(23, 'Tle A'),
(24, 'Tle C'),
(25, 'Tle D1'),
(26, 'Tle C'),
(27, 'MS');

-- --------------------------------------------------------

--
-- Structure de la table `CompteUtilisateur`
--

CREATE TABLE `CompteUtilisateur` (
  `id` int(11) NOT NULL,
  `nom` varchar(225) NOT NULL,
  `Prenom` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `motdepasse` text NOT NULL,
  `NomUtilisateur` varchar(225) NOT NULL,
  `TypeDeCompte` varchar(225) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `CompteUtilisateur`
--

INSERT INTO `CompteUtilisateur` (`id`, `nom`, `Prenom`, `email`, `motdepasse`, `NomUtilisateur`, `TypeDeCompte`, `Date`) VALUES
(1, 'Super', 'Administrateur', 'jeanphilippesara225@gmail.com', '2106', 'Admin', 'admin', '2021-08-24 00:04:31');

-- --------------------------------------------------------

--
-- Structure de la table `Cycles`
--

CREATE TABLE `Cycles` (
  `id` int(11) NOT NULL,
  `Cycle` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `emploi_du_temps`
--

CREATE TABLE `emploi_du_temps` (
  `id` int(11) NOT NULL,
  `fichier` text NOT NULL,
  `classe` varchar(225) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `emploi_du_temps`
--

INSERT INTO `emploi_du_temps` (`id`, `fichier`, `classe`, `date`) VALUES
(4, '../PDF/CALENDRIER SCOLAIRE MATERNELLE.docx', '6ième2', '2021-09-15 18:07:07');

-- --------------------------------------------------------

--
-- Structure de la table `emploi_du_temp_pro`
--

CREATE TABLE `emploi_du_temp_pro` (
  `id` int(11) NOT NULL,
  `fichier` text NOT NULL,
  `classes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `Etudiants`
--

CREATE TABLE `Etudiants` (
  `id` int(11) NOT NULL,
  `NomComplet` varchar(255) NOT NULL,
  `Genre` varchar(255) NOT NULL,
  `RegNo` varchar(255) NOT NULL,
  `Classe` varchar(255) NOT NULL,
  `DateInscritpion` varchar(255) NOT NULL,
  `Categorie` varchar(255) NOT NULL,
  `AnneeAcademie` varchar(255) NOT NULL,
  `TotalScolarité` int(255) NOT NULL,
  `DejaPayer` int(255) NOT NULL,
  `DateDeNaissancce` varchar(255) NOT NULL,
  `id_parents` varchar(255) NOT NULL,
  `TypeDeCompte` text NOT NULL,
  `MotdePasse` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Etudiants`
--

INSERT INTO `Etudiants` (`id`, `NomComplet`, `Genre`, `RegNo`, `Classe`, `DateInscritpion`, `Categorie`, `AnneeAcademie`, `TotalScolarité`, `DejaPayer`, `DateDeNaissancce`, `id_parents`, `TypeDeCompte`, `MotdePasse`) VALUES
(2, 'Sara Little Jena Mona', 'Féminin', '61334bee14f51', 'CE2', '2021-01-13 13:22:22', 'Affectée', '2021-2012', 12343022, 1200002, '2001-03-22', '2', 'Etudiant', '7110eda4d09e062aa5e4a390b0a572ac0d2c022'),
(4, 'ADIA JAURES', 'Masculin', '614a275852969', '6ième2', '10/09/2021', 'Affecter', '2021-2022', 120000, 120000, '02/01/2000', '11', 'Etudiants', '8880eab199b0d3679c8c6df0197cd4e93ba0c1ae'),
(5, 'ZAHUI TRESOR', 'Masculin', '614a2ed704864', 'Tle A', '10/09/2021', 'Affecter', '2021-2022', 120000, 120000, '02/01/2000', '13', 'Etudiants', '06bce8e2a6de6dffcf8d635d8b9a3cbfaf8cb457');

-- --------------------------------------------------------

--
-- Structure de la table `Evaluations`
--

CREATE TABLE `Evaluations` (
  `id` int(11) NOT NULL,
  `nom` varchar(225) NOT NULL,
  `classes` varchar(255) NOT NULL,
  `status` varchar(225) NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `Evenements`
--

CREATE TABLE `Evenements` (
  `id` int(11) NOT NULL,
  `titre` text NOT NULL,
  `dateEv` text NOT NULL,
  `status` varchar(225) NOT NULL,
  `classe` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `Matieres`
--

CREATE TABLE `Matieres` (
  `id` int(11) NOT NULL,
  `Cours` text NOT NULL,
  `Coefficient` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `Notes`
--

CREATE TABLE `Notes` (
  `id` int(11) NOT NULL,
  `id_Eleve` varchar(255) NOT NULL,
  `Note` varchar(255) NOT NULL,
  `Cycle` varchar(255) NOT NULL,
  `Matieres` varchar(255) NOT NULL,
  `Classe` varchar(255) NOT NULL,
  `id_Teacher` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `Notifications`
--

CREATE TABLE `Notifications` (
  `id` int(11) NOT NULL,
  `Titre` text NOT NULL,
  `Message` text NOT NULL,
  `id_parents` varchar(255) NOT NULL,
  `id_Enfant` varchar(225) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Notifications`
--

INSERT INTO `Notifications` (`id`, `Titre`, `Message`, `id_parents`, `id_Enfant`, `date`) VALUES
(1, 'ilbkl', 'igoiiobivoi', '2', '2', '2021-09-04 17:35:38'),
(2, 'sortie  au cinema ', 'conduite  conforme ', '6', '2', '2021-09-15 18:01:00'),
(3, 'SORTIE A L EGLISE', 'VOTRE  FILS EST  TURBULANT ', '7', '2', '2021-09-15 18:16:25');

-- --------------------------------------------------------

--
-- Structure de la table `Parents`
--

CREATE TABLE `Parents` (
  `id` int(11) NOT NULL,
  `nomComplet` varchar(255) NOT NULL,
  `numero` varchar(255) NOT NULL,
  `motdepasse` varchar(255) NOT NULL,
  `TypeDeCompte` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Parents`
--

INSERT INTO `Parents` (`id`, `nomComplet`, `numero`, `motdepasse`, `TypeDeCompte`, `date`) VALUES
(2, 'Sara Plehon Espoir Jean Philippe', '0555412087', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Parents', '2021-09-04 10:28:32'),
(3, 'Sara Jean Beram', '1234', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Parents', '2021-09-04 10:28:59'),
(4, 'Sara Franck', '12345', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Parents', '2021-09-04 10:29:21'),
(11, 'AGBRE SIMEON', '0708187138', 'caaef8f22c9f5a76ed2685697893da5561ee3458', 'Parents', '2021-09-18 20:04:51');

-- --------------------------------------------------------

--
-- Structure de la table `presences`
--

CREATE TABLE `presences` (
  `id` int(11) NOT NULL,
  `id_Eleve` int(11) NOT NULL,
  `Cyles` text NOT NULL,
  `DatePresences` varchar(225) NOT NULL,
  `id_Teacher` varchar(255) NOT NULL,
  `Classe` text NOT NULL,
  `Matieres` varchar(255) NOT NULL,
  `Choix` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `professeurs`
--

CREATE TABLE `professeurs` (
  `id` int(11) NOT NULL,
  `nomComplet` text NOT NULL,
  `numero` varchar(255) NOT NULL,
  `Matricule` varchar(255) NOT NULL,
  `Classe` varchar(255) NOT NULL,
  `MotDePasse` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `professeurs`
--

INSERT INTO `professeurs` (`id`, `nomComplet`, `numero`, `Matricule`, `Classe`, `MotDePasse`) VALUES
(3, 'KONAN FRANDO', '0758932322', '6137729478035', 'CM2', 'aea79f55576dbf512d51c623def34481eea31bfb'),
(4, 'KONAN FRANDO', '0758932322', '61377338bf797', 'CM2', 'aea79f55576dbf512d51c623def34481eea31bfb'),
(5, 'KONAN FRANDO', '0758932322', '613773c6eceef', 'CM2', 'aea79f55576dbf512d51c623def34481eea31bfb'),
(6, 'KONAN FRANDO', '0758932322', '61377415e3ec4', 'CM2', 'aea79f55576dbf512d51c623def34481eea31bfb'),
(7, 'KONAN FRANDO', '0758932322', '613775013036a', 'CM2', 'aea79f55576dbf512d51c623def34481eea31bfb'),
(8, 'KONAN FRANDO', '0758932322', '61377566de41f', 'CM2', 'aea79f55576dbf512d51c623def34481eea31bfb'),
(9, 'KONAN FRANDO', '0758932322', '613775ba35ff1', 'CM2', 'aea79f55576dbf512d51c623def34481eea31bfb'),
(10, 'KONAN FRANDO', '0758932322', '613776b54ce5b', 'CM2', 'aea79f55576dbf512d51c623def34481eea31bfb');

-- --------------------------------------------------------

--
-- Structure de la table `Resultats`
--

CREATE TABLE `Resultats` (
  `id` int(11) NOT NULL,
  `Titre` varchar(255) NOT NULL,
  `Messages` text NOT NULL,
  `Date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `ApercuEvent`
--
ALTER TABLE `ApercuEvent`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Classes`
--
ALTER TABLE `Classes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `CompteUtilisateur`
--
ALTER TABLE `CompteUtilisateur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Cycles`
--
ALTER TABLE `Cycles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `emploi_du_temps`
--
ALTER TABLE `emploi_du_temps`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `emploi_du_temp_pro`
--
ALTER TABLE `emploi_du_temp_pro`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Etudiants`
--
ALTER TABLE `Etudiants`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Evaluations`
--
ALTER TABLE `Evaluations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Evenements`
--
ALTER TABLE `Evenements`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Matieres`
--
ALTER TABLE `Matieres`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Notes`
--
ALTER TABLE `Notes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Notifications`
--
ALTER TABLE `Notifications`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Parents`
--
ALTER TABLE `Parents`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `presences`
--
ALTER TABLE `presences`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `professeurs`
--
ALTER TABLE `professeurs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Resultats`
--
ALTER TABLE `Resultats`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `ApercuEvent`
--
ALTER TABLE `ApercuEvent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `Classes`
--
ALTER TABLE `Classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `CompteUtilisateur`
--
ALTER TABLE `CompteUtilisateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `Cycles`
--
ALTER TABLE `Cycles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `emploi_du_temps`
--
ALTER TABLE `emploi_du_temps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `emploi_du_temp_pro`
--
ALTER TABLE `emploi_du_temp_pro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Etudiants`
--
ALTER TABLE `Etudiants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `Evaluations`
--
ALTER TABLE `Evaluations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `Evenements`
--
ALTER TABLE `Evenements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `Matieres`
--
ALTER TABLE `Matieres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Notes`
--
ALTER TABLE `Notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Notifications`
--
ALTER TABLE `Notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `Parents`
--
ALTER TABLE `Parents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `presences`
--
ALTER TABLE `presences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `professeurs`
--
ALTER TABLE `professeurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `Resultats`
--
ALTER TABLE `Resultats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
