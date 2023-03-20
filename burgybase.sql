-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 20 mars 2023 à 19:52
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `burgybase`
--

-- --------------------------------------------------------

--
-- Structure de la table `addon_account`
--

CREATE TABLE `addon_account` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `addon_account`
--

INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
('caution', 'caution', 0),
('society_ambulance', 'EMS', 1),
('society_ammu', 'Ammu-Nation', 1),
('society_avocat', 'Avocat', 1),
('society_ballas', 'Balla', 1),
('society_ballas_black', 'Ballas Black', 1),
('society_bcso', 'BCSO', 1),
('society_bloods', 'Bloods', 1),
('society_bloods_black', 'Bloods Black', 1),
('society_bratva', 'Bratva', 1),
('society_bratva_black', 'Bratva Black', 1),
('society_brinks', 'Brinks', 1),
('society_burgershot', 'BurgerShot', 1),
('society_cardealer', 'Concessionnaire', 1),
('society_cartel', 'Cartel', 1),
('society_cartel_black', 'Cartel Black', 1),
('society_chinois', 'Le Palais', 1),
('society_cluckin', 'Cluckin Bell', 1),
('society_comedy', 'Comedy Club', 1),
('society_crips', 'Crips', 1),
('society_crips_black', 'Crips Black', 1),
('society_crucial', 'Crucial Fix', 1),
('society_famillies', 'Famillies', 1),
('society_famillies_black', 'Famillies Black', 1),
('society_gouvernement', 'Gouvernement', 1),
('society_gouvernementcayo', 'Gouvernement Cayo', 1),
('society_lost', 'Lost', 1),
('society_lost_black', 'Lost Black', 1),
('society_lux', 'Lux', 1),
('society_madrazo', 'Madrazo', 1),
('society_madrazo_black', 'Madrazo Black', 1),
('society_marabunta', 'Mara', 1),
('society_marabunta_black', 'Mara Black', 1),
('society_mayans', 'Mayans', 1),
('society_mayans_black', 'Mayans Black', 1),
('society_mechanic', 'Mecano', 1),
('society_ms13', 'MS13', 1),
('society_ms13_black', 'MS13 Black', 1),
('society_orpailleurs', 'Orpailleurs', 1),
('society_pizza', 'Pizzaria', 1),
('society_police', 'LSPD', 1),
('society_tabac', 'Tabac', 1),
('society_taxi', 'Taxi', 1),
('society_unicorn', 'Unicorn', 1),
('society_vagos', 'Vagos', 1),
('society_vagos_black', 'Vagos Black', 1),
('society_vigneron', 'Vigneron', 1),
('society_weazel', 'Weazel News', 1),
('society_wingstop', 'WingsTop', 1),
('society_yellow', 'Yellow Jack', 1);

-- --------------------------------------------------------

--
-- Structure de la table `addon_account_data`
--

CREATE TABLE `addon_account_data` (
  `id` int(11) NOT NULL,
  `account_name` varchar(100) DEFAULT NULL,
  `money` int(11) NOT NULL,
  `owner` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `addon_account_data`
--

INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
(9, 'society_police', 0, NULL),
(10, 'society_ambulance', 0, NULL),
(11, 'society_bcso', 0, NULL),
(12, 'society_mechanic', 0, NULL),
(13, 'society_weazel', 0, NULL),
(14, 'society_crucial', 0, NULL),
(15, 'society_lux', 0, NULL),
(16, 'society_cluckin', 0, NULL),
(17, 'society_cardealer', 0, NULL),
(18, 'society_unicorn', 0, NULL),
(19, 'society_gouvernement', 0, NULL),
(20, 'society_ammu', 0, NULL),
(21, 'society_gouvernementcayo', 0, NULL),
(22, 'society_tabac', 0, NULL),
(23, 'society_vigneron', 0, NULL),
(24, 'society_taxi', 0, NULL),
(25, 'society_yellow', 0, NULL),
(26, 'society_wingstop', 0, NULL),
(27, 'society_pizza', 0, NULL),
(28, 'society_comedy', 0, NULL),
(29, 'society_orpailleurs', 0, NULL),
(30, 'society_brinks', 0, NULL),
(31, 'society_avocat', 0, NULL),
(32, 'society_ballas', 0, 'NULL'),
(33, 'society_ballas_black', 0, 'NULL'),
(34, 'society_bloods', 0, 'NULL'),
(35, 'society_bloods_black', 0, 'NULL'),
(36, 'society_bratva', 0, 'NULL'),
(37, 'society_bratva_black', 0, 'NULL'),
(38, 'society_cartel', 0, 'NULL'),
(39, 'society_cartel_black', 0, 'NULL'),
(40, 'society_crips', 0, 'NULL'),
(41, 'society_crips_black', 0, 'NULL'),
(42, 'society_famillies', 0, 'NULL'),
(43, 'society_famillies_black', 0, 'NULL'),
(44, 'society_lost', 0, 'NULL'),
(45, 'society_lost_black', 0, 'NULL'),
(46, 'society_madrazo', 0, 'NULL'),
(47, 'society_madrazo_black', 0, 'NULL'),
(48, 'society_marabunta', 0, 'NULL'),
(49, 'society_marabunta_black', 0, 'NULL'),
(50, 'society_mayans', 0, 'NULL'),
(51, 'society_mayans_black', 0, 'NULL'),
(52, 'society_ms13', 0, 'NULL'),
(53, 'society_ms13_black', 0, 'NULL'),
(54, 'society_vagos', 0, 'NULL'),
(55, 'society_vagos_black', 0, 'NULL'),
(56, 'society_burgershot', 0, 'NULL'),
(57, 'society_chinois', 0, NULL),
(58, 'caution', 0, 'cc43e18c6e9a138e285c9ee63c7b318fb8cdaba5');

-- --------------------------------------------------------

--
-- Structure de la table `addon_inventory`
--

CREATE TABLE `addon_inventory` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `addon_inventory`
--

INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
('society_ambulance', 'EMS', 1),
('society_ammu', 'Ammu-Nation', 1),
('society_avocat', 'Avocat', 1),
('society_ballas', 'Ballas', 1),
('society_bcso', 'BCSO', 1),
('society_bloods', 'Bloods', 1),
('society_bratva', 'Bratva', 1),
('society_brinks', 'Brinks', 1),
('society_burgershot', 'Burgershot', 1),
('society_cardealer', 'Concessionnaire', 1),
('society_cartel', 'Cartel', 1),
('society_chinois', 'Le Palais', 1),
('society_cluckin', 'Cluckin Bell', 1),
('society_comedy', 'Comedy Club', 1),
('society_crips', 'Crips', 1),
('society_crucial', 'Crucial Fix', 1),
('society_famillies', 'Famillies', 1),
('society_gouvernement', 'Gouvernement', 1),
('society_gouvernementcayo', 'Gouvernement Cayo', 1),
('society_lost', 'Lost', 1),
('society_lux', 'Lux', 1),
('society_madrazo', 'Madrazo', 1),
('society_marabunta', 'Marabunta', 1),
('society_mayans', 'Mayans', 1),
('society_mechanic', 'Mecano', 1),
('society_ms13', 'MS13', 1),
('society_orpailleurs', 'Orpailleurs', 1),
('society_pizza', 'Pizzaria', 1),
('society_police', 'LSPD', 1),
('society_tabac', 'Tabac', 1),
('society_taxi', 'Taxi', 1),
('society_unicorn', 'Unicorn', 1),
('society_vagos', 'Vagos', 1),
('society_vigneron', 'Vigneron', 1),
('society_weazel', 'Weazel News', 1),
('society_wingstop', 'WingsTop', 1),
('society_yellow', 'Yellow Jack', 1);

-- --------------------------------------------------------

--
-- Structure de la table `addon_inventory_items`
--

CREATE TABLE `addon_inventory_items` (
  `id` int(11) NOT NULL,
  `inventory_name` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


CREATE TABLE `billing` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) NOT NULL,
  `sender` varchar(60) NOT NULL,
  `target_type` varchar(50) NOT NULL,
  `target` varchar(40) NOT NULL,
  `label` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `datastore`
--

CREATE TABLE `datastore` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `datastore`
--

INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
('property', 'Property', 0),
('society_ambulance', 'EMS', 1),
('society_ammu', 'Ammu-Nation', 1),
('society_avocat', 'Avocat', 1),
('society_ballas', 'Ballas', 1),
('society_bcso', 'BCSO', 1),
('society_bloods', 'Bloods', 1),
('society_bratva', 'Bratva', 1),
('society_brinks', 'Brinks', 1),
('society_burgershot', 'Burgershot', 1),
('society_cardealer', 'Concessionnaire', 1),
('society_cartel', 'Cartel', 1),
('society_chinois', 'Le Palais', 1),
('society_cluckin', 'Cluckin Bell', 1),
('society_comedy', 'Comedy Club', 1),
('society_crips', 'Crips', 1),
('society_crucial', 'Crucial Fix', 1),
('society_famillies', 'Famillies', 1),
('society_gouvernement', 'Gouvernement', 1),
('society_gouvernementcayo', 'Gouvernement Cayo', 1),
('society_lost', 'lost', 1),
('society_lux', 'Lux', 1),
('society_madrazo', 'Madrazo', 1),
('society_marabunta', 'Marabunta', 1),
('society_mayans', 'Mayans', 1),
('society_mechanic', 'Mecano', 1),
('society_ms13', 'MS13', 1),
('society_orpailleurs', 'Orpailleurs', 1),
('society_pizza', 'Pizzaria', 1),
('society_police', 'LSPD', 1),
('society_tabac', 'Tabac', 1),
('society_taxi', 'Taxi', 1),
('society_unicorn', 'Unicorn', 1),
('society_vagos', 'Vagos', 1),
('society_vigneron', 'Vigneron', 1),
('society_weazel', 'Weazel News', 1),
('society_wingstop', 'WingsTop', 1),
('society_yellow', 'Yellow Jack', 1),
('user_ears', 'Ears', 0),
('user_glasses', 'Glasses', 0),
('user_helmet', 'Helmet', 0),
('user_mask', 'Mask', 0);

-- --------------------------------------------------------

--
-- Structure de la table `datastore_data`
--

CREATE TABLE `datastore_data` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `owner` varchar(60) DEFAULT NULL,
  `data` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `datastore_data`
--

INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
(5, 'property', NULL, '{}'),
(6, 'society_ballas', NULL, '{}'),
(7, 'society_bloods', NULL, '{}'),
(8, 'society_bratva', NULL, '{}'),
(9, 'society_cartel', NULL, '{}'),
(10, 'society_crips', NULL, '{}'),
(11, 'society_famillies', NULL, '{}'),
(12, 'society_lost', NULL, '{}'),
(13, 'society_madrazo', NULL, '{}'),
(14, 'society_marabunta', NULL, '{}'),
(15, 'society_mayans', NULL, '{}'),
(16, 'society_ms13', NULL, '{}'),
(17, 'society_vagos', NULL, '{}'),
(18, 'society_burgershot', 'NULL', '{}');

-- --------------------------------------------------------

--
-- Structure de la table `inventories`
--

CREATE TABLE `inventories` (
  `id` bigint(20) NOT NULL,
  `identifier` text DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `data` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `items`
--

CREATE TABLE `items` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `weight` int(11) NOT NULL DEFAULT 1,
  `rare` tinyint(4) NOT NULL DEFAULT 0,
  `can_remove` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `items`
--

INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
('amoniaque', 'Amoniaque', 0, 0, 1),
('bacon_cheeseburger', 'Cheese Burger Bacon', 0, 0, 1),
('bacon_pieces', 'Morceau de bacon', 0, 0, 1),
('bag', 'Sac', 1, 0, 1),
('banane', 'Banane', 0, 0, 1),
('bolriz', 'Bol de riz', 0, 0, 1),
('bonbonnedegaz', 'Bonbonne Gaz', 0, 0, 1),
('bonbonnevide', 'Bonbonne Vide', 0, 0, 1),
('bouteille_whisky', 'Bouteille Whisky', 0, 0, 1),
('bread', 'Pain', 0, 0, 1),
('brownie', 'Brownie', 0, 0, 1),
('burger', 'Burger', 0, 0, 1),
('burger_frites', 'Frites', 0, 0, 1),
('burger_rings', 'Burger Rings', 0, 0, 1),
('cacao', 'Cacao', 0, 0, 1),
('cafe', 'Café', 0, 0, 1),
('carokit', 'Kit carosserie', 1, 0, 1),
('carton_choc', 'Carton Chocolat', 0, 0, 1),
('carton_verre_champagne', 'Carton Verre Champagne', 0, 0, 1),
('champignons', 'Champignons', 0, 0, 1),
('cheddar', 'Cheddar', 0, 0, 1),
('cheese_frites', 'Frites Cheese', 0, 0, 1),
('chickenwrap', 'Wrap Poulet', 0, 0, 1),
('chocolat_chaud', 'Chocolat Chaud', 0, 0, 1),
('ciseaux', 'Ciseaux', 0, 0, 1),
('clore', 'Clore', 0, 0, 1),
('codoliprane', 'Codoliprane', 0, 0, 1),
('creme_fraiche', 'Creme Fraiche', 0, 0, 1),
('dmvcard', 'Permis', 0, 0, 1),
('drill', 'Perceuse', 1, 0, 1),
('dvrcocktail', 'DVR Cocktail', 0, 0, 1),
('escalope_poulet', 'Escalope de poulet', 0, 0, 1),
('euphon', 'Euphon', 0, 0, 1),
('faygo', 'Faygo', 0, 0, 1),
('feuille', 'Feuille', 0, 0, 1),
('feuille_menthe', 'Feuille de menthe', 0, 0, 1),
('filma', 'Filme Plastique', 0, 0, 1),
('fiole', 'Fiole', 0, 0, 1),
('fiole2', 'Fiole Rempli', 0, 0, 1),
('fixkit', 'Kit Réparation', 1, 0, 1),
('frites', 'Frites', 0, 0, 1),
('frite_cheddar', 'Frites Cheddar', 0, 0, 1),
('fromage', 'Fromage', 0, 0, 1),
('gants', 'Gants', 0, 0, 1),
('goatwrap', 'Goat Wrap', 0, 0, 1),
('gobeletdebubble', 'Gobelelet de Bubble', 0, 0, 1),
('gobeletdehawai', 'Gobelelet de hawai', 0, 0, 1),
('gobeletdeicetea', 'Gobelelet de icetea', 0, 0, 1),
('gobeletvide', 'Gobelet vide', 0, 0, 1),
('graine_cafe', 'Graine Cafe', 0, 0, 1),
('heartstopper', 'Burger Heartstopper', 0, 0, 1),
('heartysandwich', 'Hearty Sandwich', 0, 0, 1),
('hotdog', 'Hot Dog', 0, 0, 1),
('hot_wings', 'Hot Wings', 0, 0, 1),
('idcard', 'Carte Identite', 0, 0, 1),
('irn-bru', 'Irm Bru', 0, 0, 1),
('jobcard', 'Carte de travail', 0, 0, 1),
('joint', 'Joint', 0, 0, 1),
('jus', 'Jus', 1, 0, 1),
('kamikaze', 'Kamikaze', 0, 0, 1),
('kroctokapik', 'Kroctokapik', 0, 0, 1),
('kroctopeco', 'Kroctopeco', 0, 0, 1),
('ldb', 'Liasse de billet', 0, 0, 1),
('lean', 'lean', 0, 0, 1),
('licensecard', 'Carte de license', 0, 0, 1),
('lighter', 'Briquet', 0, 0, 1),
('limonade', 'Limonade', 0, 0, 1),
('lingot_or', 'Lingot Or', 0, 0, 1),
('maki', 'Maki', 0, 0, 1),
('makisurgele', 'Maki Surgele', 0, 0, 1),
('malboro', 'Malboro', 0, 0, 1),
('margharita', 'Pizza Margharita', 0, 0, 1),
('marvelcocktail', 'Marvel Cocktail', 0, 0, 1),
('masquegaz', 'Masque a gaz', 0, 0, 1),
('mojito_comedy', 'Mojito', 0, 0, 1),
('mojito_lux', 'Mojito', 0, 0, 1),
('mojito_unicorn', 'Mojito', 0, 0, 1),
('mojito_yellow', 'Mojito', 0, 0, 1),
('mozzarella', 'Mozzarella', 0, 0, 1),
('mushroomspizza', 'Pizza Champignons', 0, 0, 1),
('napolitaine', 'Pizza Napolitaine', 0, 0, 1),
('neocodion', 'Neocodion', 0, 0, 1),
('occirats', 'Occirats', 0, 0, 1),
('oignons', 'Oignons', 0, 0, 1),
('oignon_rigs', 'Oignon Rigs', 0, 0, 1),
('olives', 'Olives', 0, 0, 1),
('orange', 'Orange', 0, 0, 1),
('oxygenmask', 'masque Oxygene', 0, 0, 1),
('pain', 'Pain', 0, 0, 1),
('pain_burger', 'Pain Burger', 0, 0, 1),
('patates', 'Patates', 0, 0, 1),
('pates_moules', 'Pates Moules', 0, 0, 1),
('pates_viande', 'Paêtes Viandes', 0, 0, 1),
('pepite_or', 'Pepite Or', 0, 0, 1),
('pepper', 'Dr Pepper', 0, 0, 1),
('pepsi', 'Pepsi', 0, 0, 1),
('phone', 'Phone', 1, 0, 1),
('plante_tabac', 'Feuille Tabac', 0, 0, 1),
('poisson', 'Poisson', 0, 0, 1),
('poisson_sauvage', 'Poisson Sauvage', 0, 0, 1),
('pomme', 'Pomme', 0, 0, 1),
('potato', 'Patate', 0, 0, 1),
('prometazine', 'Prometazine', 0, 0, 1),
('radio', 'Radio', 1, 0, 1),
('recipient', 'Recipient', 0, 0, 1),
('rhum', 'Rhum', 0, 0, 1),
('riz', 'Riz', 0, 0, 1),
('salade', 'Salade', 0, 0, 1),
('sandwich', 'Sandwich', 0, 0, 1),
('sandwich_fajita', 'Sandwich aFjita', 0, 0, 1),
('sandwich_jambon', 'Sandwich Jambon', 0, 0, 1),
('sandwich_poulet', 'Sandwich Poulet', 0, 0, 1),
('sauce_tomate', 'Sauce Tomate', 0, 0, 1),
('sdb', 'Sac de billet', 0, 0, 1),
('seve', 'Seve', 0, 0, 1),
('shit', 'Shit', 0, 0, 1),
('shit1', 'Shit x1', 0, 0, 1),
('shit2', 'Shit x2', 0, 0, 1),
('shit3', 'Shit x3', 0, 0, 1),
('shit4', 'Shit x4', 0, 0, 1),
('shlada', 'Shlada', 0, 0, 1),
('shladama', 'Shladama', 0, 0, 1),
('sirloin_burger', 'Burger Sirloin', 0, 0, 1),
('slaughtered_chicken', 'Slaughtered chicken', 1, 0, 1),
('soupechinoise', 'Soupe Chinoise', 0, 0, 1),
('soupesurgele', 'Soupe Chinoise Surgele', 0, 0, 1),
('sprite', 'Sprite', 0, 0, 1),
('steak', 'Steak', 0, 0, 1),
('steak_frites', 'Steak Frites', 0, 0, 1),
('steak_frites_haricot', 'Steak Frites Haricot', 0, 0, 1),
('stone', 'Stone', 1, 0, 1),
('sushi', 'Sushi', 0, 0, 1),
('teteW', 'Tete de weed', 0, 0, 1),
('teteW2', 'Tete de beuh', 0, 0, 1),
('toast_bacon', 'Toast Bacon', 0, 0, 1),
('toast_oeuf', 'Toast Oeuf', 0, 0, 1),
('tomate', 'Tomate', 0, 0, 1),
('tortila', 'Tortila', 0, 0, 1),
('vegge_pizza', 'Pizza Vegetarian', 0, 0, 1),
('verre', 'Verre', 0, 0, 1),
('verre_champagne', 'Verre Champagne', 0, 0, 1),
('vin', 'Vin', 0, 0, 1),
('vitodaiquiri', 'Vito Daiquiri', 0, 0, 1),
('washed_stone', 'Washed stone', 1, 0, 1),
('water', 'Water', 1, 0, 1),
('water_bottle', 'Bouteille d\'eau', 0, 0, 1),
('whisky_comedy', 'Whisky', 0, 0, 1),
('whisky_lux', 'Whisky', 0, 0, 1),
('whisky_unicorn', 'Whisky', 0, 0, 1),
('whisky_yellow', 'Whisky', 0, 0, 1),
('wood', 'Wood', 1, 0, 1),
('wool', 'Wool', 1, 0, 1),
('wraps', 'Wraps', 0, 0, 1),
('yoshishooter', 'Yoshi Shooter', 0, 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

CREATE TABLE `jobs` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `jobs`
--

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('ambulance', 'EMS', 0),
('ammu', 'Ammu-Nation', 0),
('avocat', 'Avocat', 0),
('ballas', 'Ballas', 0),
('bcso', 'BCSO', 0),
('bloods', 'Bloods', 0),
('bratva', 'Bratva', 0),
('brinks', 'Brinks', 0),
('burgershot', 'BurgerShot', 0),
('cardealer', 'Concessionnaire', 0),
('cartel', 'Cartel', 0),
('chinois', 'Le Palais', 0),
('cluckin', 'Cluckin Bell', 0),
('comedy', 'Comedy Club', 0),
('crips', 'Crips', 0),
('crucial', 'Crucial Fix', 0),
('famillies', 'Famillies', 0),
('gouvcayo', 'Gouvernement Cayo', 0),
('gouvernement', 'Gouvernement', 0),
('lost', 'lost', 0),
('lux', 'Lux', 0),
('madrazo', 'Madrazo', 0),
('marabunta', 'Marabunta', 0),
('mayans', 'Mayans', 0),
('mechanic', 'Mecano', 0),
('ms13', 'MS13', 0),
('orpailleurs', 'Orpailleurs', 0),
('pizza', 'Pizzaria', 0),
('police', 'LSPD', 0),
('tabac', 'Tabac', 0),
('taxi', 'Taxi', 0),
('unemployed', 'Unemployed', 0),
('unicorn', 'Unicorn', 0),
('vagos', 'Vagos', 0),
('vigneron', 'Vigneron', 0),
('weazel', 'Weazel News', 0),
('yellow', 'Yellow Jack', 0);

-- --------------------------------------------------------

--
-- Structure de la table `job_grades`
--

CREATE TABLE `job_grades` (
  `id` int(11) NOT NULL,
  `job_name` varchar(50) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `job_grades`
--

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(1, 'unemployed', 0, 'unemployed', 'Unemployed', 200, '{}', '{}'),
(44, 'cluckin', 0, 'staigiaire', 'Staigiaire', 100, '', ''),
(45, 'cluckin', 1, 'employe', 'Employe', 100, '', ''),
(46, 'cluckin', 2, 'boss', 'Patron', 100, '', ''),
(47, 'comedy', 0, 'staigiaire', 'Staigiaire', 100, '', ''),
(48, 'comedy', 1, 'employe', 'Employe', 100, '', ''),
(49, 'comedy', 2, 'boss', 'Patron', 100, '', ''),
(50, 'burgershot', 0, 'staigiaire', 'Staigiaire', 100, '', ''),
(51, 'burgershot', 1, 'employe', 'Employe', 100, '', ''),
(52, 'burgershot', 2, 'boss', 'Patron', 100, '', ''),
(53, 'crucial', 0, 'staigiaire', 'Staigiaire', 100, '', ''),
(54, 'crucial', 1, 'employe', 'Employe', 100, '', ''),
(55, 'crucial', 2, 'boss', 'Patron', 100, '', ''),
(59, 'lux', 0, 'staigiaire', 'Staigiaire', 100, '', ''),
(60, 'lux', 1, 'employe', 'Employe', 100, '', ''),
(61, 'lux', 2, 'boss', 'Patron', 100, '', ''),
(62, 'yellow', 0, 'staigiaire', 'Staigiaire', 100, '', ''),
(63, 'yellow', 1, 'employe', 'Employe', 100, '', ''),
(64, 'yellow', 2, 'boss', 'Patron', 100, '', ''),
(65, 'pizza', 0, 'staigiaire', 'Staigiaire', 100, '', ''),
(66, 'pizza', 1, 'employe', 'Employe', 100, '', ''),
(67, 'pizza', 2, 'boss', 'Patron', 100, '', ''),
(68, 'vigneron', 0, 'staigiaire', 'Staigiaire', 100, '', ''),
(69, 'vigneron', 1, 'employe', 'Employe', 100, '', ''),
(70, 'vigneron', 2, 'boss', 'Patron', 100, '', ''),
(71, 'unicorn', 0, 'staigiaire', 'Staigiaire', 100, '', ''),
(72, 'unicorn', 1, 'employe', 'Employe', 100, '', ''),
(73, 'unicorn', 2, 'boss', 'Patron', 100, '', ''),
(74, 'orpailleurs', 0, 'staigiaire', 'Staigiaire', 100, '', ''),
(75, 'orpailleurs', 1, 'employe', 'Employe', 100, '', ''),
(76, 'orpailleurs', 2, 'boss', 'Patron', 100, '', ''),
(77, 'gouvernement', 0, 'staigiaire', 'Staigiaire', 100, '', ''),
(78, 'gouvernement', 1, 'employe', 'Employe', 100, '', ''),
(79, 'gouvernement', 2, 'boss', 'Patron', 100, '', ''),
(80, 'gouvcayo', 0, 'staigiaire', 'Staigiaire', 100, '', ''),
(81, 'gouvcayo', 1, 'employe', 'Employe', 100, '', ''),
(82, 'gouvcayo', 2, 'boss', 'Patron', 100, '', ''),
(83, 'avocat', 0, 'staigiaire', 'Staigiaire', 100, '', ''),
(84, 'avocat', 1, 'employe', 'Employe', 100, '', ''),
(85, 'avocat', 2, 'boss', 'Patron', 100, '', ''),
(86, 'tabac', 0, 'staigiaire', 'Staigiaire', 100, '', ''),
(87, 'tabac', 1, 'employe', 'Employe', 100, '', ''),
(88, 'tabac', 2, 'boss', 'Patron', 100, '', ''),
(89, 'taxi', 0, 'staigiaire', 'Staigiaire', 100, '', ''),
(90, 'taxi', 1, 'employe', 'Employe', 100, '', ''),
(91, 'taxi', 2, 'boss', 'Patron', 100, '', ''),
(92, 'weazel', 0, 'staigiaire', 'Staigiaire', 100, '', ''),
(93, 'weazel', 1, 'employe', 'Employe', 100, '', ''),
(94, 'weazel', 2, 'boss', 'Patron', 100, '', ''),
(95, 'brinks', 0, 'staigiaire', 'Staigiaire', 100, '', ''),
(96, 'brinks', 1, 'employe', 'Employe', 100, '', ''),
(97, 'brinks', 2, 'boss', 'Patron', 100, '', ''),
(98, 'ammu', 0, 'staigiaire', 'Staigiaire', 100, '', ''),
(99, 'ammu', 1, 'employe', 'Employe', 100, '', ''),
(100, 'ammu', 2, 'boss', 'Patron', 100, '', ''),
(101, 'cardealer', 0, 'staigiaire', 'Staigiaire', 100, '', ''),
(102, 'cardealer', 1, 'employe', 'Employe', 100, '', ''),
(103, 'cardealer', 2, 'boss', 'Patron', 100, '', ''),
(104, 'bcso', 0, 'staigiaire', 'Staigiaire', 100, '', ''),
(105, 'bcso', 1, 'employe', 'Employe', 100, '', ''),
(106, 'bcso', 2, 'boss', 'Patron', 100, '', ''),
(107, 'police', 0, 'staigiaire', 'Staigiaire', 100, '', ''),
(108, 'police', 1, 'employe', 'Employe', 100, '', ''),
(109, 'police', 2, 'boss', 'Patron', 100, '', ''),
(110, 'ambulance', 0, 'staigiaire', 'Staigiaire', 100, '', ''),
(111, 'ambulance', 1, 'employe', 'Employe', 100, '', ''),
(112, 'ambulance', 2, 'boss', 'Patron', 100, '', ''),
(113, 'chinois', 0, 'recrue', 'Recrue', 12, '{}', '{}'),
(114, 'chinois', 1, 'novice', 'Novice', 24, '{}', '{}'),
(115, 'chinois', 2, 'experimente', 'Experimente', 36, '{}', '{}'),
(116, 'chinois', 3, 'chief', 'Chef d\'équipe', 48, '{}', '{}'),
(117, 'chinois', 4, 'boss', 'Patron', 0, '{}', '{}'),
(118, 'ballas', 0, 'novice', 'Junior', 100, '', ''),
(119, 'ballas', 1, 'interim', 'Soldat', 80, '', ''),
(120, 'ballas', 2, 'expe', 'Experimente', 80, '', ''),
(121, 'ballas', 3, 'boss', 'OG', 80, '', ''),
(122, 'lost', 0, 'novice', 'Junior', 100, '', ''),
(123, 'lost', 1, 'interim', 'Soldat', 80, '', ''),
(124, 'lost', 2, 'expe', 'Experimente', 80, '', ''),
(125, 'lost', 3, 'boss', 'OG', 100, '', ''),
(126, 'mayans', 0, 'novice', 'Junior', 100, '', ''),
(127, 'mayans', 1, 'interim', 'Soldat', 80, '', ''),
(128, 'mayans', 2, 'expe', 'Experimente', 80, '', ''),
(129, 'mayans', 3, 'boss', 'OG', 100, '', ''),
(130, 'famillies', 0, 'novice', 'Junior', 100, '', ''),
(131, 'famillies', 1, 'interim', 'Soldat', 80, '', ''),
(132, 'famillies', 2, 'expe', 'Experimente', 80, '', ''),
(133, 'famillies', 3, 'boss', 'OG', 100, '', ''),
(134, 'vagos', 0, 'novice', 'Junior', 100, '', ''),
(135, 'vagos', 1, 'interim', 'Soldat', 100, '', ''),
(136, 'vagos', 2, 'expe', 'Experimente', 100, '', ''),
(137, 'vagos', 3, 'boss', 'OG', 100, '', ''),
(138, 'crips', 0, 'novice', 'Junior', 100, '', ''),
(139, 'crips', 1, 'interim', 'Soldat', 100, '', ''),
(140, 'crips', 2, 'expe', 'Experimente', 100, '', ''),
(141, 'crips', 3, 'boss', 'OG', 100, '', ''),
(142, 'madrazo', 0, 'novice', 'Junior', 100, '', ''),
(143, 'madrazo', 1, 'interim', 'Soldat', 100, '', ''),
(144, 'madrazo', 2, 'expe', 'Experimente', 100, '', ''),
(145, 'madrazo', 3, 'boss', 'OG', 100, '', ''),
(146, 'ms13', 0, 'novice', 'Junior', 100, '', ''),
(147, 'ms13', 1, 'interim', 'Soldat', 100, '', ''),
(148, 'ms13', 2, 'expe', 'Experimente', 100, '', ''),
(149, 'ms13', 3, 'boss', 'OG', 100, '', ''),
(150, 'bloods', 0, 'novice', 'Junior', 100, '', ''),
(151, 'bloods', 1, 'interim', 'Soldat', 100, '', ''),
(152, 'bloods', 2, 'expe', 'Experimente', 100, '', ''),
(153, 'bloods', 3, 'boss', 'OG', 100, '', ''),
(154, 'cartel', 0, 'novice', 'Junior', 100, '', ''),
(155, 'cartel', 1, 'interim', 'Soldat', 100, '', ''),
(156, 'cartel', 2, 'expe', 'Experimente', 100, '', ''),
(157, 'cartel', 3, 'boss', 'OG', 100, '', ''),
(158, 'bratva', 0, 'novice', 'Junior', 100, '', ''),
(159, 'bratva', 1, 'interim', 'Soldat', 100, '', ''),
(160, 'bratva', 2, 'expe', 'Experimente', 100, '', ''),
(161, 'bratva', 3, 'boss', 'OG', 100, '', ''),
(162, 'marabunta', 0, 'novice', 'Junior', 100, '', ''),
(163, 'marabunta', 1, 'interim', 'Soldat', 100, '', ''),
(164, 'marabunta', 2, 'expe', 'Experimente', 100, '', ''),
(165, 'marabunta', 3, 'boss', 'OG', 100, '', ''),
(166, 'bcso', 0, 'cadet', 'Cadet', 100, '{}', '{}'),
(167, 'bcso', 1, 'officier', 'Officier', 100, '{}', '{}'),
(168, 'bcso', 2, 'sergent', 'Sergent', 100, '{}', '{}'),
(169, 'bcso', 3, 'lieutenant', 'Lieutenant', 100, '{}', '{}'),
(170, 'bcso', 4, 'boss', 'Commandant', 100, '{}', '{}'),
(171, 'mechanic', 0, 'staigiare', 'Stagiaire', 11, '', ''),
(172, 'mechanic', 1, 'boss', 'Boss', 11, '', '');


CREATE TABLE `licenses` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `licenses`
--

INSERT INTO `licenses` (`id`, `type`, `label`) VALUES
(1, 'dmv', 'Traffic Laws'),
(2, 'drive', 'Drivers license'),
(3, 'drive_bike', 'Motorcycle licence'),
(4, 'drive_truck', 'Truck license');

-- --------------------------------------------------------

--
-- Structure de la table `open_car`
--

CREATE TABLE `open_car` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `value` varchar(50) DEFAULT NULL,
  `got` varchar(50) DEFAULT NULL,
  `NB` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Structure de la table `owned_vehicles`
--

CREATE TABLE `owned_vehicles` (
  `owner` varchar(60) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 0,
  `plate` varchar(12) NOT NULL,
  `vehicle` longtext DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'car',
  `job` varchar(20) DEFAULT NULL,
  `stored` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `players` (
  `discord` varchar(50) DEFAULT 'Not Found',
  `identifier` varchar(50) DEFAULT 'Not Found',
  `phone_number` varchar(50) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `players`
--

INSERT INTO `players` (`discord`, `identifier`, `phone_number`) VALUES
('discord:998620756097380393', 'license:cc43e18c6e9a138e285c9ee63c7b318fb8cdaba5', '634-1992');

-- --------------------------------------------------------

--
-- Structure de la table `society_moneywash`
--

CREATE TABLE `society_moneywash` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) NOT NULL,
  `society` varchar(60) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

CREATE TABLE `users` (
  `identifier` varchar(60) NOT NULL,
  `accounts` longtext DEFAULT NULL,
  `group` varchar(50) DEFAULT 'user',
  `inventory` longtext DEFAULT NULL,
  `job` varchar(20) DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `job2` varchar(20) NOT NULL DEFAULT 'unemployed',
  `job2_grade` int(11) NOT NULL DEFAULT 0,
  `loadout` longtext DEFAULT NULL,
  `crafting_level` int(11) NOT NULL,
  `position` varchar(255) DEFAULT '{"x":-269.4,"y":-955.3,"z":31.2,"heading":205.8}',
  `firstname` varchar(16) DEFAULT NULL,
  `lastname` varchar(16) DEFAULT NULL,
  `dateofbirth` varchar(10) DEFAULT NULL,
  `sex` varchar(1) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `skin` longtext DEFAULT NULL,
  `status` longtext DEFAULT NULL,
  `is_dead` tinyint(1) DEFAULT 0,
  `id` int(11) NOT NULL,
  `disabled` tinyint(1) DEFAULT 0,
  `last_property` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `last_seen` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `hotbar` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`identifier`, `accounts`, `group`, `inventory`, `job`, `job_grade`, `job2`, `job2_grade`, `loadout`, `crafting_level`, `position`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `skin`, `status`, `is_dead`, `id`, `disabled`, `last_property`, `created_at`, `last_seen`, `hotbar`) VALUES
('cc43e18c6e9a138e285c9ee63c7b318fb8cdaba5', '{\"money\":-700,\"bank\":51100,\"black_money\":0}', 'admin', '[]', 'police', 2, 'unemployed', 0, '[]', 0, '{\"y\":3052.575927734375,\"z\":47.24169921875,\"heading\":249.44882202148438,\"x\":2023.2923583984376}', 'Sonny', 'Burgy', '05/07/2933', 'm', 195, '{\"complexion_1\":0,\"sex\":0,\"face_md_weight\":50,\"eyebrows_2\":0,\"chin_1\":0,\"ears_2\":0,\"beard_4\":0,\"nose_1\":0,\"eyebrows_6\":0,\"nose_3\":0,\"sun_1\":0,\"bracelets_1\":-1,\"age_2\":0,\"chest_3\":0,\"eyebrows_1\":0,\"bracelets_2\":0,\"bodyb_3\":-1,\"nose_4\":0,\"watches_1\":-1,\"beard_2\":0,\"lipstick_2\":0,\"blush_2\":0,\"bodyb_1\":-1,\"helmet_1\":-1,\"eyebrows_5\":0,\"eye_color\":0,\"chest_1\":0,\"jaw_2\":0,\"mask_1\":0,\"bproof_1\":0,\"moles_2\":0,\"makeup_4\":0,\"skin_md_weight\":50,\"bodyb_4\":0,\"pants_1\":13,\"cheeks_3\":0,\"glasses_1\":0,\"blush_3\":0,\"lipstick_1\":0,\"complexion_2\":0,\"hair_color_2\":0,\"nose_2\":0,\"makeup_3\":0,\"decals_2\":0,\"nose_6\":0,\"shoes_1\":10,\"bags_1\":0,\"blush_1\":0,\"mom\":21,\"beard_1\":0,\"mask_2\":0,\"beard_3\":0,\"blemishes_1\":0,\"torso_1\":12,\"bproof_2\":0,\"lipstick_4\":0,\"hair_2\":0,\"dad\":0,\"nose_5\":0,\"makeup_2\":0,\"chin_4\":0,\"hair_color_1\":0,\"pants_2\":0,\"bags_2\":0,\"lipstick_3\":0,\"lip_thickness\":0,\"blemishes_2\":0,\"bodyb_2\":0,\"makeup_1\":0,\"cheeks_2\":0,\"chain_2\":0,\"hair_1\":0,\"helmet_2\":0,\"neck_thickness\":0,\"arms\":4,\"arms_2\":0,\"cheeks_1\":0,\"tshirt_2\":0,\"eye_squint\":0,\"sun_2\":0,\"eyebrows_4\":0,\"glasses_2\":0,\"age_1\":0,\"tshirt_1\":15,\"moles_1\":0,\"eyebrows_3\":0,\"watches_2\":0,\"decals_1\":0,\"torso_2\":0,\"chin_3\":0,\"shoes_2\":0,\"chin_2\":0,\"ears_1\":-1,\"chest_2\":0,\"chain_1\":0,\"jaw_1\":0}', '[{\"percent\":42.85,\"name\":\"hunger\",\"val\":428500},{\"percent\":57.13749999999999,\"name\":\"thirst\",\"val\":571375}]', 0, 4, 0, NULL, '2023-03-05 20:25:45', '2023-03-20 18:51:27', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `user_licenses`
--

CREATE TABLE `user_licenses` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `user_licenses`
--

INSERT INTO `user_licenses` (`id`, `type`, `owner`) VALUES
(1, 'dmv', 'cc43e18c6e9a138e285c9ee63c7b318fb8cdaba5'),
(2, 'drive_bike', 'cc43e18c6e9a138e285c9ee63c7b318fb8cdaba5'),
(3, 'dmv', 'cc43e18c6e9a138e285c9ee63c7b318fb8cdaba5');

-- --------------------------------------------------------

--
-- Structure de la table `vehicles`
--

CREATE TABLE `vehicles` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `vehicles`
--

INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
('Adder', 'adder', 900000, 'super'),
('Alpha', 'alpha', 60000, 'sports'),
('Ardent', 'ardent', 1150000, 'sportsclassics'),
('Asea', 'asea', 5500, 'sedans'),
('Autarch', 'autarch', 1955000, 'super'),
('Baller', 'baller2', 40000, 'suvs'),
('Baller Sport', 'baller3', 60000, 'suvs'),
('Banshee', 'banshee', 70000, 'sports'),
('Banshee 900R', 'banshee2', 255000, 'super'),
('Bestia GTS', 'bestiagts', 55000, 'sports'),
('Bf Injection', 'bfinjection', 16000, 'offroad'),
('Bifta', 'bifta', 12000, 'offroad'),
('Bison', 'bison', 45000, 'vans'),
('Blade', 'blade', 15000, 'muscle'),
('Blazer', 'blazer', 6500, 'offroad'),
('Blazer Sport', 'blazer4', 8500, 'offroad'),
('blazer5', 'blazer5', 1755600, 'offroad'),
('Blista', 'blista', 8000, 'compacts'),
('Bobcat XL', 'bobcatxl', 32000, 'vans'),
('Brawler', 'brawler', 45000, 'offroad'),
('Brioso R/A', 'brioso', 18000, 'compacts'),
('Btype', 'btype', 62000, 'sportsclassics'),
('Btype Hotroad', 'btype2', 155000, 'sportsclassics'),
('Btype Luxe', 'btype3', 85000, 'sportsclassics'),
('Buccaneer', 'buccaneer', 18000, 'muscle'),
('Buccaneer Rider', 'buccaneer2', 24000, 'muscle'),
('Buffalo', 'buffalo', 12000, 'sports'),
('Buffalo S', 'buffalo2', 20000, 'sports'),
('Bullet', 'bullet', 90000, 'super'),
('Burrito', 'burrito3', 19000, 'vans'),
('Camper', 'camper', 42000, 'vans'),
('Carbonizzare', 'carbonizzare', 75000, 'sports'),
('Casco', 'casco', 30000, 'sportsclassics'),
('Cavalcade', 'cavalcade2', 55000, 'suvs'),
('Cheetah', 'cheetah', 375000, 'super'),
('Chino', 'chino', 15000, 'muscle'),
('Chino Luxe', 'chino2', 19000, 'muscle'),
('Cognoscenti Cabrio', 'cogcabrio', 55000, 'coupes'),
('Cognoscenti', 'cognoscenti', 55000, 'sedans'),
('Comet', 'comet2', 65000, 'sports'),
('Comet 5', 'comet5', 1145000, 'sports'),
('Contender', 'contender', 70000, 'suvs'),
('Coquette', 'coquette', 65000, 'sports'),
('Coquette Classic', 'coquette2', 40000, 'sportsclassics'),
('Coquette BlackFin', 'coquette3', 55000, 'muscle'),
('Cyclone', 'cyclone', 1890000, 'super'),
('Deluxo', 'deluxo', 4721500, 'sportsclassics'),
('Dominator', 'dominator', 35000, 'muscle'),
('Dubsta', 'dubsta', 45000, 'suvs'),
('Dubsta Luxuary', 'dubsta2', 60000, 'suvs'),
('Bubsta 6x6', 'dubsta3', 120000, 'offroad'),
('Dukes', 'dukes', 28000, 'muscle'),
('Dune Buggy', 'dune', 8000, 'offroad'),
('Elegy', 'elegy2', 38500, 'sports'),
('Emperor', 'emperor', 8500, 'sedans'),
('Entity XF', 'entityxf', 425000, 'super'),
('Exemplar', 'exemplar', 32000, 'coupes'),
('F620', 'f620', 40000, 'coupes'),
('Faction', 'faction', 20000, 'muscle'),
('Faction Rider', 'faction2', 30000, 'muscle'),
('Faction XL', 'faction3', 40000, 'muscle'),
('Felon', 'felon', 42000, 'coupes'),
('Felon GT', 'felon2', 55000, 'coupes'),
('Feltzer', 'feltzer2', 55000, 'sports'),
('Stirling GT', 'feltzer3', 65000, 'sportsclassics'),
('FMJ', 'fmj', 185000, 'super'),
('Fhantom', 'fq2', 17000, 'suvs'),
('Fugitive', 'fugitive', 12000, 'sedans'),
('Furore GT', 'furoregt', 45000, 'sports'),
('Fusilade', 'fusilade', 40000, 'sports'),
('Gauntlet', 'gauntlet', 30000, 'muscle'),
('Gang Burrito', 'gburrito', 45000, 'vans'),
('Burrito', 'gburrito2', 29000, 'vans'),
('Glendale', 'glendale', 6500, 'sedans'),
('Grabger', 'granger', 50000, 'suvs'),
('Gresley', 'gresley', 47500, 'suvs'),
('GT 500', 'gt500', 785000, 'sportsclassics'),
('Guardian', 'guardian', 45000, 'offroad'),
('Hermes', 'hermes', 535000, 'muscle'),
('Hotknife', 'hotknife', 125000, 'muscle'),
('Huntley S', 'huntley', 40000, 'suvs'),
('Hustler', 'hustler', 625000, 'muscle'),
('Infernus', 'infernus', 180000, 'super'),
('Intruder', 'intruder', 7500, 'sedans'),
('Issi', 'issi2', 10000, 'compacts'),
('Jackal', 'jackal', 38000, 'coupes'),
('Jester', 'jester', 65000, 'sports'),
('Jester(Racecar)', 'jester2', 135000, 'sports'),
('Journey', 'journey', 6500, 'vans'),
('Kamacho', 'kamacho', 345000, 'offroad'),
('Khamelion', 'khamelion', 38000, 'sports'),
('Kuruma', 'kuruma', 30000, 'sports'),
('Landstalker', 'landstalker', 35000, 'suvs'),
('RE-7B', 'le7b', 325000, 'super'),
('Lynx', 'lynx', 40000, 'sports'),
('Mamba', 'mamba', 70000, 'sports'),
('Manana', 'manana', 12800, 'sportsclassics'),
('Massacro', 'massacro', 65000, 'sports'),
('Massacro(Racecar)', 'massacro2', 130000, 'sports'),
('Mesa', 'mesa', 16000, 'suvs'),
('Mesa Trail', 'mesa3', 40000, 'suvs'),
('Minivan', 'minivan', 13000, 'vans'),
('Monroe', 'monroe', 55000, 'sportsclassics'),
('The Liberator', 'monster', 210000, 'offroad'),
('Moonbeam', 'moonbeam', 18000, 'vans'),
('Moonbeam Rider', 'moonbeam2', 35000, 'vans'),
('Neon', 'neon', 1500000, 'sports'),
('Nightshade', 'nightshade', 65000, 'muscle'),
('9F', 'ninef', 65000, 'sports'),
('9F Cabrio', 'ninef2', 80000, 'sports'),
('Omnis', 'omnis', 35000, 'sports'),
('Oppressor', 'oppressor', 3524500, 'super'),
('Oracle XS', 'oracle2', 35000, 'coupes'),
('Osiris', 'osiris', 160000, 'super'),
('Panto', 'panto', 10000, 'compacts'),
('Paradise', 'paradise', 19000, 'vans'),
('Pariah', 'pariah', 1420000, 'sports'),
('Patriot', 'patriot', 55000, 'suvs'),
('Penumbra', 'penumbra', 28000, 'sports'),
('Pfister', 'pfister811', 85000, 'super'),
('Phoenix', 'phoenix', 12500, 'muscle'),
('Picador', 'picador', 18000, 'muscle'),
('Pigalle', 'pigalle', 20000, 'sportsclassics'),
('Prairie', 'prairie', 12000, 'compacts'),
('Premier', 'premier', 8000, 'sedans'),
('Primo Custom', 'primo2', 14000, 'sedans'),
('X80 Proto', 'prototipo', 2500000, 'super'),
('Radius', 'radi', 29000, 'suvs'),
('raiden', 'raiden', 1375000, 'sports'),
('Rapid GT', 'rapidgt', 35000, 'sports'),
('Rapid GT Convertible', 'rapidgt2', 45000, 'sports'),
('Rapid GT3', 'rapidgt3', 885000, 'sportsclassics'),
('Reaper', 'reaper', 150000, 'super'),
('Rebel', 'rebel2', 35000, 'offroad'),
('Regina', 'regina', 5000, 'sedans'),
('Retinue', 'retinue', 615000, 'sportsclassics'),
('Revolter', 'revolter', 1610000, 'sports'),
('riata', 'riata', 380000, 'offroad'),
('Rocoto', 'rocoto', 45000, 'suvs'),
('Ruiner 2', 'ruiner2', 5745600, 'muscle'),
('Rumpo', 'rumpo', 15000, 'vans'),
('Rumpo Trail', 'rumpo3', 19500, 'vans'),
('Sabre Turbo', 'sabregt', 20000, 'muscle'),
('Sabre GT', 'sabregt2', 25000, 'muscle'),
('Sandking', 'sandking', 55000, 'offroad'),
('Savestra', 'savestra', 990000, 'sportsclassics'),
('SC 1', 'sc1', 1603000, 'super'),
('Schafter', 'schafter2', 25000, 'sedans'),
('Schafter V12', 'schafter3', 50000, 'sports'),
('Seminole', 'seminole', 25000, 'suvs'),
('Sentinel', 'sentinel', 32000, 'coupes'),
('Sentinel XS', 'sentinel2', 40000, 'coupes'),
('Sentinel3', 'sentinel3', 650000, 'sports'),
('Seven 70', 'seven70', 39500, 'sports'),
('ETR1', 'sheava', 220000, 'super'),
('Slam Van', 'slamvan3', 11500, 'muscle'),
('Stinger', 'stinger', 80000, 'sportsclassics'),
('Stinger GT', 'stingergt', 75000, 'sportsclassics'),
('Streiter', 'streiter', 500000, 'sports'),
('Stretch', 'stretch', 90000, 'sedans'),
('Stromberg', 'stromberg', 3185350, 'sports'),
('Sultan', 'sultan', 15000, 'sports'),
('Sultan RS', 'sultanrs', 65000, 'super'),
('Super Diamond', 'superd', 130000, 'sedans'),
('Surano', 'surano', 50000, 'sports'),
('Surfer', 'surfer', 12000, 'vans'),
('T20', 't20', 300000, 'super'),
('Tailgater', 'tailgater', 30000, 'sedans'),
('Tampa', 'tampa', 16000, 'muscle'),
('Drift Tampa', 'tampa2', 80000, 'sports'),
('Trophy Truck', 'trophytruck', 60000, 'offroad'),
('Trophy Truck Limited', 'trophytruck2', 80000, 'offroad'),
('Tropos', 'tropos', 40000, 'sports'),
('Turismo R', 'turismor', 350000, 'super'),
('Tyrus', 'tyrus', 600000, 'super'),
('Vacca', 'vacca', 120000, 'super'),
('Verlierer', 'verlierer2', 70000, 'sports'),
('Vigero', 'vigero', 12500, 'muscle'),
('Virgo', 'virgo', 14000, 'muscle'),
('Viseris', 'viseris', 875000, 'sportsclassics'),
('Visione', 'visione', 2250000, 'super'),
('Voltic', 'voltic', 90000, 'super'),
('Voltic 2', 'voltic2', 3830400, 'super'),
('Voodoo', 'voodoo', 7200, 'muscle'),
('Warrener', 'warrener', 4000, 'sedans'),
('Washington', 'washington', 9000, 'sedans'),
('Windsor', 'windsor', 95000, 'coupes'),
('Windsor Drop', 'windsor2', 125000, 'coupes'),
('XLS', 'xls', 32000, 'suvs'),
('Yosemite', 'yosemite', 485000, 'muscle'),
('Youga', 'youga', 10800, 'vans'),
('Youga Luxuary', 'youga2', 14500, 'vans'),
('Z190', 'z190', 900000, 'sportsclassics'),
('Zentorno', 'zentorno', 1500000, 'super'),
('Zion', 'zion', 36000, 'coupes'),
('Zion Cabrio', 'zion2', 45000, 'coupes'),
('Z-Type', 'ztype', 220000, 'sportsclassics');

-- --------------------------------------------------------

--
-- Structure de la table `vehicle_categories`
--

CREATE TABLE `vehicle_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `vehicle_categories`
--

INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
('compacts', 'Compacts'),
('coupes', 'Coupés'),
('muscle', 'Muscle'),
('offroad', 'Off Road'),
('sedans', 'Sedans'),
('sports', 'Sports'),
('sportsclassics', 'Sports Classics'),
('super', 'Super'),
('suvs', 'SUVs'),
('vans', 'Vans');

-- --------------------------------------------------------

--
-- Structure de la table `vehicle_sold`
--

CREATE TABLE `vehicle_sold` (
  `client` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `soldby` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `addon_account`
--
ALTER TABLE `addon_account`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_addon_account_data_account_name_owner` (`account_name`,`owner`),
  ADD KEY `index_addon_account_data_account_name` (`account_name`);

--
-- Index pour la table `addon_inventory`
--
ALTER TABLE `addon_inventory`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_addon_inventory_items_inventory_name_name` (`inventory_name`,`name`),
  ADD KEY `index_addon_inventory_items_inventory_name_name_owner` (`inventory_name`,`name`,`owner`),
  ADD KEY `index_addon_inventory_inventory_name` (`inventory_name`);

-- Index pour la table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `datastore`
--
ALTER TABLE `datastore`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `datastore_data`
--
ALTER TABLE `datastore_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_datastore_data_name_owner` (`name`,`owner`),
  ADD KEY `index_datastore_data_name` (`name`);

--
-- Index pour la table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `job_grades`
--
ALTER TABLE `job_grades`
  ADD PRIMARY KEY (`id`);


--
-- Index pour la table `licenses`
--
ALTER TABLE `licenses`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `open_car`
--
ALTER TABLE `open_car`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `owned_vehicles`
--
ALTER TABLE `owned_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Index pour la table `society_moneywash`
--
ALTER TABLE `society_moneywash`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`identifier`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Index pour la table `user_licenses`
--
ALTER TABLE `user_licenses`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`model`);

--
-- Index pour la table `vehicle_categories`
--
ALTER TABLE `vehicle_categories`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `vehicle_sold`
--
ALTER TABLE `vehicle_sold`
  ADD PRIMARY KEY (`plate`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT pour la table `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `datastore_data`
--
ALTER TABLE `datastore_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `job_grades`
--
ALTER TABLE `job_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT pour la table `licenses`
--
ALTER TABLE `licenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `open_car`
--
ALTER TABLE `open_car`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;


-- AUTO_INCREMENT pour la table `society_moneywash`
--
ALTER TABLE `society_moneywash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `user_licenses`
--
ALTER TABLE `user_licenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

