-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Jeu 24 Mai 2018 à 16:17
-- Version du serveur :  5.7.21-0ubuntu0.16.04.1
-- Version de PHP :  7.0.28-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `movies`
--

-- --------------------------------------------------------

--
-- Structure de la table `actors`
--

CREATE TABLE `actors` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `last_name` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `actors`
--

INSERT INTO `actors` (`id`, `first_name`, `last_name`) VALUES
(16, 'Andrea', 'Santamaria'),
(17, 'Ary', 'Abittan'),
(18, 'François-Xavier', 'Demainson'),
(19, 'Tom ', 'Hanks'),
(20, 'Michael Clarke', 'Ducan '),
(21, 'David', 'Morse'),
(22, 'Gary', 'Sinise'),
(23, 'Mykelti', 'Williamson'),
(24, 'Sally', 'Field'),
(25, 'Robert', 'Downey'),
(26, 'Chris', 'Hemsworth'),
(27, 'Chris', 'Evans'),
(28, 'Mark', 'Ruffalo'),
(29, 'Tye', 'Sheridan'),
(30, 'Olivia', 'Cooke'),
(41, 'Ben', 'Mendelsohn'),
(42, 'Lena', 'Waithe'),
(43, 'Natalie', 'Dormer'),
(44, 'Emily', 'Ratajkowski'),
(45, 'Ed', 'Skrein'),
(46, 'Joely', 'Richardson'),
(47, 'James', 'Cosmo'),
(48, 'Sam', 'Worthington'),
(49, 'Leonardo', 'Dicaprio'),
(50, 'Hubert', 'Besson'),
(53, 'Sébastien', 'Charbit'),
(54, 'Doug', 'Hutchison'),
(55, 'Michael', 'Jeter'),
(56, 'Chadwick', 'Boseman'),
(57, 'Michael B.  ', 'Jordan'),
(58, 'Lupita ', 'Nyong\'o'),
(59, 'Danai ', 'Gurira'),
(60, 'Martin ', 'Freeman'),
(61, 'Letitia ', 'Wright');

-- --------------------------------------------------------

--
-- Structure de la table `directors`
--

CREATE TABLE `directors` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `last_name` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `directors`
--

INSERT INTO `directors` (`id`, `first_name`, `last_name`) VALUES
(1, 'Lee', 'Unkrich'),
(2, 'Frank', 'Darabont'),
(3, 'Robert', 'Zemeckis'),
(4, 'Anthony', 'Russo'),
(5, 'Joe', 'Russo'),
(6, 'Steven', 'Spielberg'),
(7, 'Anthony', 'Byrne'),
(8, 'James', 'cameron'),
(9, 'hubert', 'besson'),
(10, 'Ryan', 'Coogler');

-- --------------------------------------------------------

--
-- Structure de la table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Action'),
(2, 'Aventure'),
(3, 'Animation'),
(4, 'Policier'),
(5, 'Comédie'),
(6, 'dramatique'),
(7, 'Romance'),
(8, 'Science Fiction'),
(9, 'Thriller'),
(21, 'fantastique');

-- --------------------------------------------------------

--
-- Structure de la table `genres_movies`
--

CREATE TABLE `genres_movies` (
  `genres_id` int(11) NOT NULL,
  `movies_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `genres_movies`
--

INSERT INTO `genres_movies` (`genres_id`, `movies_id`) VALUES
(3, 1),
(21, 1),
(4, 2),
(21, 2),
(5, 3),
(6, 3),
(7, 3),
(1, 4),
(2, 4),
(1, 5),
(8, 5),
(9, 6),
(8, 7),
(6, 8),
(7, 8),
(1, 9),
(2, 9),
(8, 9);

-- --------------------------------------------------------

--
-- Structure de la table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin,
  `year_release` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `movies`
--

INSERT INTO `movies` (`id`, `title`, `description`, `year_release`) VALUES
(1, 'Coco', 'Depuis déjà plusieurs générations, la musique est bannie dans la famille de Miguel. Un vrai déchirement pour le jeune garçon dont le rêve ultime est de devenir un musicien aussi accompli que son idole, Ernesto de la Cruz', 2017),
(2, 'La ligne verte', 'Paul Edgecomb, Gardien-chef du pénitencier de Cold Mountain en 1935, était chargé de veiller au bon déroulement des exécutions capitales. Parmi les prisonniers se trouvait un colosse du nom de John Coffey', 2000),
(3, 'Forrest Gump', 'Quelques décennies d’histoire américaine, des années 1940 à la fin du XXème siècle, à travers le regard et l’étrange odyssée d’un homme simple et pur, Forrest GUMP.', 1994),
(4, 'Avengers Infinity War', 'Les Vengeurs et leurs alliés doivent être prêts à tout sacrifier pour tenter de vaincre les puissants Thanos avant que son blitz de dévastation et de ruine ne mette fin à l\'univers.', 2018),
(5, 'Ready Player One', 'Quand le créateur d\'un monde de réalité virtuelle appelé l\'OASIS meurt, il sort une vidéo dans laquelle il met au défi tous les utilisateurs d\'OASIS de trouver son Oeuf de Pâques, ce qui lui donnera sa chance.', 2018),
(6, 'In Darkness', 'Un musicien aveugle entend un meurtre commis dans l\'appartement à l\'étage de la sienne qui l\'envoie dans les ténèbres criminelles de Londres.', 2018),
(7, 'Avatar', 'L’action se déroule en 21541 sur Pandora, une des lunes de Polyphème, une planète géante gazeuse en orbite autour d\'Alpha Centauri A, le système solaire le plus proche de la Terre', 2009),
(8, 'Titanic', 'Il raconte l\'histoire de deux jeunes passagers du paquebot Titanic en avril 1912', 1997),
(9, 'Black Panther', 'Après les événements qui se sont déroulés dans Captain America : Civil War, T’Challa revient chez lui prendre sa place sur le trône du Wakanda, une nation africaine technologiquement très avancée. Mais lorsqu’un vieil ennemi resurgit, le courage de T’Challa est mis à rude épreuve, aussi bien en tant que souverain qu’en tant que Black Panther. Il se retrouve entraîné dans un conflit qui menace non seulement le destin du Wakanda, mais celui du monde entier…', 2018);

-- --------------------------------------------------------

--
-- Structure de la table `movies_actors`
--

CREATE TABLE `movies_actors` (
  `movies_id` int(11) NOT NULL,
  `actors_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `movies_actors`
--

INSERT INTO `movies_actors` (`movies_id`, `actors_id`) VALUES
(1, 16),
(1, 17),
(1, 18),
(2, 19),
(3, 19),
(2, 20),
(2, 21),
(3, 22),
(3, 24),
(4, 26),
(4, 27),
(4, 28),
(5, 29),
(5, 30),
(5, 41),
(5, 42),
(6, 44),
(6, 45),
(6, 46),
(6, 47),
(7, 48),
(8, 49),
(9, 53),
(3, 54),
(2, 55),
(9, 56),
(9, 57),
(9, 58),
(9, 59),
(9, 60),
(9, 61);

-- --------------------------------------------------------

--
-- Structure de la table `movies_directors`
--

CREATE TABLE `movies_directors` (
  `movies_id` int(11) NOT NULL,
  `directors_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `movies_directors`
--

INSERT INTO `movies_directors` (`movies_id`, `directors_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(4, 5),
(5, 6),
(7, 7),
(7, 8),
(8, 8),
(9, 10);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `directors`
--
ALTER TABLE `directors`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `genres_movies`
--
ALTER TABLE `genres_movies`
  ADD PRIMARY KEY (`genres_id`,`movies_id`),
  ADD KEY `fk_genre_has_movies_movies1_idx` (`movies_id`),
  ADD KEY `fk_genre_has_movies_genre1_idx` (`genres_id`);

--
-- Index pour la table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `movies_actors`
--
ALTER TABLE `movies_actors`
  ADD PRIMARY KEY (`movies_id`,`actors_id`),
  ADD KEY `fk_movies_has_actors_actors1_idx` (`actors_id`),
  ADD KEY `fk_movies_has_actors_movies1_idx` (`movies_id`);

--
-- Index pour la table `movies_directors`
--
ALTER TABLE `movies_directors`
  ADD PRIMARY KEY (`movies_id`,`directors_id`),
  ADD KEY `fk_movies_has_directors_directors1_idx` (`directors_id`),
  ADD KEY `fk_movies_has_directors_movies1_idx` (`movies_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `actors`
--
ALTER TABLE `actors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT pour la table `directors`
--
ALTER TABLE `directors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT pour la table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `genres_movies`
--
ALTER TABLE `genres_movies`
  ADD CONSTRAINT `fk_genre_has_movies_genre1` FOREIGN KEY (`genres_id`) REFERENCES `genres` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_genre_has_movies_movies1` FOREIGN KEY (`movies_id`) REFERENCES `movies` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `movies_actors`
--
ALTER TABLE `movies_actors`
  ADD CONSTRAINT `fk_movies_has_actors_actors1` FOREIGN KEY (`actors_id`) REFERENCES `actors` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_movies_has_actors_movies1` FOREIGN KEY (`movies_id`) REFERENCES `movies` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `movies_directors`
--
ALTER TABLE `movies_directors`
  ADD CONSTRAINT `fk_movies_has_directors_directors1` FOREIGN KEY (`directors_id`) REFERENCES `directors` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_movies_has_directors_movies1` FOREIGN KEY (`movies_id`) REFERENCES `movies` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
