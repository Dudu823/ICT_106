-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : db:3306
-- Généré le : mer. 18 déc. 2024 à 12:52
-- Version du serveur : 8.0.30
-- Version de PHP : 8.0.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `db_space_invaders`
--
DROP DATABASE IF EXISTS db_space_invaders;
CREATE DATABASE db_space_invaders;
USE db_space_invaders;

-- --------------------------------------------------------

--
-- Structure de la table `contenir`
--

CREATE TABLE `contenir` (
  `arme_id` int NOT NULL,
  `commande_id` int NOT NULL,
  `quantite_arme` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `contenir`
--

INSERT INTO `contenir` (`arme_id`, `commande_id`, `quantite_arme`) VALUES
(1, 1, 2),
(2, 2, 3),
(3, 3, 1),
(4, 4, 5),
(5, 5, 3),
(6, 6, 4),
(7, 7, 2),
(8, 8, 6),
(9, 9, 1),
(10, 10, 5),
(11, 11, 3),
(12, 12, 2),
(13, 13, 4),
(14, 14, 6),
(15, 15, 1),
(16, 16, 3),
(17, 17, 4),
(18, 18, 5),
(19, 19, 2),
(20, 20, 6),
(21, 21, 1),
(22, 22, 2),
(23, 23, 3),
(24, 24, 5),
(25, 25, 4),
(26, 26, 1),
(27, 27, 6),
(28, 28, 4),
(29, 29, 5),
(30, 30, 3),
(31, 31, 6),
(32, 32, 4),
(33, 33, 3),
(34, 34, 2),
(35, 35, 6),
(36, 36, 5),
(37, 37, 1),
(38, 38, 4),
(39, 39, 2),
(40, 40, 3),
(41, 41, 5),
(42, 42, 6),
(43, 43, 2),
(44, 44, 5),
(45, 45, 3),
(46, 46, 6),
(47, 47, 4),
(48, 48, 2),
(49, 49, 5),
(50, 50, 3);

-- --------------------------------------------------------

--
-- Structure de la table `posseder`
--

CREATE TABLE `posseder` (
  `joueurs_id` int NOT NULL,
  `arme_id` int NOT NULL,
  `nb_coups_restants` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `posseder`
--

INSERT INTO `posseder` (`joueurs_id`, `arme_id`, `nb_coups_restants`) VALUES
(1, 1, 10),
(2, 2, 7),
(3, 3, 5),
(4, 4, 8),
(5, 5, 6),
(6, 6, 12),
(7, 7, 9),
(8, 8, 3),
(9, 9, 14),
(10, 10, 11),
(11, 11, 20),
(12, 12, 15),
(13, 13, 17),
(14, 14, 6),
(15, 15, 8),
(16, 16, 13),
(17, 17, 11),
(18, 18, 9),
(19, 19, 16),
(20, 20, 7),
(21, 21, 19),
(22, 22, 10),
(23, 23, 18),
(24, 24, 5),
(25, 25, 14),
(26, 26, 3),
(27, 27, 13),
(28, 28, 9),
(29, 29, 12),
(30, 30, 11),
(31, 31, 10),
(32, 32, 15),
(33, 33, 7),
(34, 34, 9),
(35, 35, 17),
(36, 36, 8),
(37, 37, 16),
(38, 38, 6),
(39, 39, 14),
(40, 40, 5),
(41, 41, 10),
(42, 42, 19),
(43, 43, 13),
(44, 44, 18),
(45, 45, 8),
(46, 46, 16),
(47, 47, 10),
(48, 48, 11),
(49, 49, 12),
(50, 50, 9);

-- --------------------------------------------------------

--
-- Structure de la table `t_arme`
--

CREATE TABLE `t_arme` (
  `arme_id` int NOT NULL,
  `nom` varchar(30) DEFAULT NULL,
  `prix` int DEFAULT NULL,
  `force_armes` int DEFAULT NULL,
  `nb_max_coups` int DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `t_arme`
--

INSERT INTO `t_arme` (`arme_id`, `nom`, `prix`, `force_armes`, `nb_max_coups`, `description`) VALUES
(1, 'Fusil1', 345, 75, 12, 'Fusil puissant, bonne cadence de tir.'),
(2, 'Fusil2', 456, 82, 15, 'Fusil de haute précision.'),
(3, 'Fusil3', 567, 60, 20, 'Fusil semi-automatique avec bonne portée.'),
(4, 'Fusil4', 678, 90, 5, 'Fusil de sniper avec une force dévastatrice.'),
(5, 'Fusil5', 123, 50, 25, 'Fusil léger et pratique pour le combat rapproché.'),
(6, 'Fusil6', 345, 85, 8, 'Fusil d’assaut avec une haute cadence.'),
(7, 'Fusil7', 432, 70, 10, 'Fusil à moyenne portée, très précis.'),
(8, 'Fusil8', 789, 100, 3, 'Fusil de précision ultime.'),
(9, 'Fusil9', 567, 55, 18, 'Fusil robuste et fiable.'),
(10, 'Fusil10', 654, 77, 13, 'Fusil à haute puissance de feu.'),
(11, 'Fusil11', 234, 60, 22, 'Fusil polyvalent pour différents types de combat.'),
(12, 'Fusil12', 345, 80, 10, 'Fusil d’assaut avec de bonnes munitions.'),
(13, 'Fusil13', 456, 95, 6, 'Fusil de précision longue portée.'),
(14, 'Fusil14', 234, 65, 16, 'Fusil pour tireurs experts.'),
(15, 'Fusil15', 789, 85, 8, 'Fusil à verrou très puissant.'),
(16, 'Fusil16', 345, 78, 12, 'Fusil adapté à de nombreux terrains.'),
(17, 'Fusil17', 876, 92, 7, 'Fusil très puissant pour grandes distances.'),
(18, 'Fusil18', 567, 50, 20, 'Fusil léger et facile à manier.'),
(19, 'Fusil19', 998, 105, 4, 'Fusil ultra-précis pour les tirs de précision.'),
(20, 'Fusil20', 345, 75, 14, 'Fusil automatique avec bonne capacité de munitions.'),
(21, 'Fusil21', 789, 68, 17, 'Fusil pour les attaques rapides.'),
(22, 'Fusil22', 600, 80, 9, 'Fusil adapté au combat de longue durée.'),
(23, 'Fusil23', 789, 60, 18, 'Fusil avec une grande capacité de munitions.'),
(24, 'Fusil24', 899, 95, 5, 'Fusil à faible cadence mais à grande puissance.'),
(25, 'Fusil25', 234, 50, 30, 'Fusil à faible coût mais fiable.'),
(26, 'Fusil26', 456, 82, 13, 'Fusil à longue portée avec peu de recul.'),
(27, 'Fusil27', 876, 65, 10, 'Fusil rapide et maniable pour les combats en ville.'),
(28, 'Fusil28', 987, 90, 6, 'Fusil de haute qualité pour tireurs d’élite.'),
(29, 'Fusil29', 654, 80, 15, 'Fusil polyvalent avec une grande capacité.'),
(30, 'Fusil30', 432, 70, 22, 'Fusil avec une précision accrue.'),
(31, 'Fusil31', 876, 99, 4, 'Fusil à la puissance inégalée.'),
(32, 'Fusil32', 765, 88, 14, 'Fusil de combat moderne avec grande stabilité.'),
(33, 'Fusil33', 654, 75, 20, 'Fusil équilibré pour toutes les situations.'),
(34, 'Fusil34', 876, 60, 25, 'Fusil idéal pour les combats à courte portée.'),
(35, 'Fusil35', 432, 85, 11, 'Fusil semi-automatique à portée moyenne.'),
(36, 'Fusil36', 987, 100, 6, 'Fusil de sniper d’élite avec un énorme pouvoir de feu.'),
(37, 'Fusil37', 876, 95, 8, 'Fusil de bataille avec une grande capacité de munitions.'),
(38, 'Fusil38', 654, 75, 18, 'Fusil tout terrain, prêt à affronter toutes les situations.'),
(39, 'Fusil39', 432, 78, 10, 'Fusil de précision pour les tireurs d’élite.'),
(40, 'Fusil40', 765, 88, 7, 'Fusil rapide, idéal pour les attaques surprises.'),
(41, 'Fusil41', 567, 85, 15, 'Fusil de combat pour situations complexes.'),
(42, 'Fusil42', 234, 60, 24, 'Fusil léger, bonne maniabilité.'),
(43, 'Fusil43', 876, 92, 6, 'Fusil de sniper avec une portée incroyable.'),
(44, 'Fusil44', 654, 82, 11, 'Fusil efficace à moyenne portée.'),
(45, 'Fusil45', 789, 75, 18, 'Fusil standard, efficace dans presque toutes les situations.'),
(46, 'Fusil46', 432, 85, 13, 'Fusil automatique avec une grande précision.'),
(47, 'Fusil47', 123, 50, 20, 'Fusil à faible coût avec une bonne cadence de tir.'),
(48, 'Fusil48', 654, 65, 17, 'Fusil rapide avec une bonne portée.'),
(49, 'Fusil49', 987, 95, 8, 'Fusil de haute qualité avec une forte puissance.'),
(50, 'Fusil50', 876, 80, 12, 'Fusil à haute cadence de tir.');

-- --------------------------------------------------------

--
-- Structure de la table `t_commande_achat`
--

CREATE TABLE `t_commande_achat` (
  `commande_id` int NOT NULL,
  `numero_commande` int DEFAULT NULL,
  `date_commande` date DEFAULT NULL,
  `joueurs_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `t_commande_achat`
--

INSERT INTO `t_commande_achat` (`commande_id`, `numero_commande`, `date_commande`, `joueurs_id`) VALUES
(1, 1001, '2023-05-14', 1),
(2, 1002, '2023-06-22', 2),
(3, 1003, '2023-07-11', 3),
(4, 1004, '2023-08-05', 4),
(5, 1005, '2023-09-19', 5),
(6, 1006, '2023-10-30', 6),
(7, 1007, '2023-11-18', 7),
(8, 1008, '2023-12-04', 8),
(9, 1009, '2024-01-12', 9),
(10, 1010, '2024-02-20', 10),
(11, 1011, '2024-03-15', 11),
(12, 1012, '2024-04-25', 12),
(13, 1013, '2024-05-06', 13),
(14, 1014, '2024-06-13', 14),
(15, 1015, '2024-07-10', 15),
(16, 1016, '2024-08-22', 16),
(17, 1017, '2024-09-19', 17),
(18, 1018, '2024-10-11', 18),
(19, 1019, '2024-11-28', 19),
(20, 1020, '2024-12-03', 20),
(21, 1021, '2024-01-25', 21),
(22, 1022, '2024-02-16', 22),
(23, 1023, '2024-03-03', 23),
(24, 1024, '2024-04-18', 24),
(25, 1025, '2024-05-02', 25),
(26, 1026, '2024-06-21', 26),
(27, 1027, '2024-07-29', 27),
(28, 1028, '2024-08-17', 28),
(29, 1029, '2024-09-25', 29),
(30, 1030, '2024-10-07', 30),
(31, 1031, '2024-11-15', 31),
(32, 1032, '2024-12-01', 32),
(33, 1033, '2023-01-08', 33),
(34, 1034, '2023-02-22', 34),
(35, 1035, '2023-03-12', 35),
(36, 1036, '2023-04-05', 36),
(37, 1037, '2023-05-26', 37),
(38, 1038, '2023-06-30', 38),
(39, 1039, '2023-07-25', 39),
(40, 1040, '2023-08-19', 40),
(41, 1041, '2023-09-07', 41),
(42, 1042, '2023-10-19', 42),
(43, 1043, '2023-11-13', 43),
(44, 1044, '2023-12-12', 44),
(45, 1045, '2024-01-09', 45),
(46, 1046, '2024-02-14', 46),
(47, 1047, '2024-03-24', 47),
(48, 1048, '2024-04-03', 48),
(49, 1049, '2024-05-15', 49),
(50, 1050, '2024-06-27', 50),
(51, 30655, '2024-06-16', 1),
(52, 99582, '2023-07-17', 1),
(53, 73312, '2022-12-05', 2),
(54, 45606, '2024-03-07', 2),
(55, 29927, '2022-04-23', 4),
(56, 77001, '2023-05-26', 6),
(57, 68677, '2023-12-04', 7),
(58, 15099, '2023-02-05', 7),
(59, 58923, '2024-04-07', 8),
(60, 36148, '2023-12-03', 8),
(61, 851, '2024-02-14', 8),
(62, 52472, '2023-03-27', 9),
(63, 20581, '2024-05-30', 9),
(64, 9063, '2023-08-07', 10),
(65, 41488, '2023-10-29', 10),
(66, 44551, '2024-08-18', 11),
(67, 43908, '2024-03-14', 11),
(68, 38245, '2023-09-12', 11),
(69, 10225, '2022-12-12', 12),
(70, 7288, '2022-04-09', 13),
(71, 6940, '2023-06-13', 13),
(72, 58358, '2023-09-09', 13),
(73, 81224, '2022-03-05', 13),
(74, 46356, '2023-10-13', 14),
(75, 20903, '2024-08-25', 14),
(76, 15647, '2022-05-27', 15),
(77, 87381, '2023-08-05', 15),
(78, 67946, '2023-06-28', 15),
(79, 62497, '2022-06-06', 17),
(80, 63641, '2024-08-22', 18),
(81, 41580, '2022-08-19', 19),
(82, 82300, '2023-12-16', 19),
(83, 38467, '2023-08-29', 20),
(84, 4912, '2024-04-01', 20),
(85, 79490, '2024-08-27', 21),
(86, 41274, '2023-11-02', 21),
(87, 55675, '2023-03-20', 21),
(88, 34208, '2023-06-09', 22),
(89, 23602, '2024-08-24', 22),
(90, 72403, '2022-09-03', 23),
(91, 54928, '2023-07-29', 23),
(92, 39361, '2022-10-26', 23),
(93, 65805, '2022-12-25', 23),
(94, 62772, '2022-03-30', 24),
(95, 41244, '2022-02-17', 25),
(96, 80891, '2022-08-10', 25),
(97, 88758, '2022-06-25', 27),
(98, 54851, '2022-04-08', 27),
(99, 51994, '2023-03-16', 28),
(100, 61457, '2024-01-05', 29),
(101, 13517, '2022-04-24', 30),
(102, 47625, '2024-06-09', 30),
(103, 44991, '2022-06-26', 30),
(104, 7319, '2024-08-21', 31),
(105, 65972, '2022-01-31', 31),
(106, 77508, '2022-12-22', 31);

-- --------------------------------------------------------

--
-- Structure de la table `t_joueur`
--

CREATE TABLE `t_joueur` (
  `joueurs_id` int NOT NULL,
  `pseudo` varchar(20) DEFAULT NULL,
  `nb_points` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `t_joueur`
--

INSERT INTO `t_joueur` (`joueurs_id`, `pseudo`, `nb_points`) VALUES
(1, 'Joueur01', 450),
(2, 'Joueur02', 732),
(3, 'Joueur03', 567),
(4, 'Joueur04', 312),
(5, 'Joueur05', 883),
(6, 'Joueur06', 675),
(7, 'Joueur07', 923),
(8, 'Joueur08', 541),
(9, 'Joueur09', 238),
(10, 'Joueur10', 885),
(11, 'Joueur11', 637),
(12, 'Joueur12', 123),
(13, 'Joueur13', 786),
(14, 'Joueur14', 429),
(15, 'Joueur15', 366),
(16, 'Joueur16', 907),
(17, 'Joueur17', 754),
(18, 'Joueur18', 412),
(19, 'Joueur19', 599),
(20, 'Joueur20', 699),
(21, 'Joueur21', 571),
(22, 'Joueur22', 490),
(23, 'Joueur23', 810),
(24, 'Joueur24', 456),
(25, 'Joueur25', 800),
(26, 'Joueur26', 578),
(27, 'Joueur27', 334),
(28, 'Joueur28', 213),
(29, 'Joueur29', 560),
(30, 'Joueur30', 430),
(31, 'Joueur31', 295),
(32, 'Joueur32', 665),
(33, 'Joueur33', 829),
(34, 'Joueur34', 334),
(35, 'Joueur35', 802),
(36, 'Joueur36', 530),
(37, 'Joueur37', 492),
(38, 'Joueur38', 906),
(39, 'Joueur39', 820),
(40, 'Joueur40', 663),
(41, 'Joueur41', 601),
(42, 'Joueur42', 955),
(43, 'Joueur43', 757),
(44, 'Joueur44', 513),
(45, 'Joueur45', 800),
(46, 'Joueur46', 741),
(47, 'Joueur47', 301),
(48, 'Joueur48', 648),
(49, 'Joueur49', 899),
(50, 'Joueur50', 521),
(51, 'Joueur51', 100),
(52, 'Joueur65', 200),
(53, 'Joueur73', 150);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `contenir`
--
ALTER TABLE `contenir`
  ADD PRIMARY KEY (`arme_id`,`commande_id`),
  ADD KEY `commande_id` (`commande_id`);

--
-- Index pour la table `posseder`
--
ALTER TABLE `posseder`
  ADD PRIMARY KEY (`joueurs_id`,`arme_id`),
  ADD KEY `arme_id` (`arme_id`);

--
-- Index pour la table `t_arme`
--
ALTER TABLE `t_arme`
  ADD PRIMARY KEY (`arme_id`),
  ADD KEY `idx_prix` (`prix`);

--
-- Index pour la table `t_commande_achat`
--
ALTER TABLE `t_commande_achat`
  ADD PRIMARY KEY (`commande_id`),
  ADD KEY `joueurs_id` (`joueurs_id`);

--
-- Index pour la table `t_joueur`
--
ALTER TABLE `t_joueur`
  ADD PRIMARY KEY (`joueurs_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `t_arme`
--
ALTER TABLE `t_arme`
  MODIFY `arme_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT pour la table `t_commande_achat`
--
ALTER TABLE `t_commande_achat`
  MODIFY `commande_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- AUTO_INCREMENT pour la table `t_joueur`
--
ALTER TABLE `t_joueur`
  MODIFY `joueurs_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `contenir`
--
ALTER TABLE `contenir`
  ADD CONSTRAINT `contenir_ibfk_1` FOREIGN KEY (`arme_id`) REFERENCES `t_arme` (`arme_id`),
  ADD CONSTRAINT `contenir_ibfk_2` FOREIGN KEY (`commande_id`) REFERENCES `t_commande_achat` (`commande_id`);

--
-- Contraintes pour la table `posseder`
--
ALTER TABLE `posseder`
  ADD CONSTRAINT `posseder_ibfk_1` FOREIGN KEY (`joueurs_id`) REFERENCES `t_joueur` (`joueurs_id`),
  ADD CONSTRAINT `posseder_ibfk_2` FOREIGN KEY (`arme_id`) REFERENCES `t_arme` (`arme_id`);

--
-- Contraintes pour la table `t_commande_achat`
--
ALTER TABLE `t_commande_achat`
  ADD CONSTRAINT `t_commande_achat_ibfk_1` FOREIGN KEY (`joueurs_id`) REFERENCES `t_joueur` (`joueurs_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
