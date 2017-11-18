-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mer 15 Novembre 2017 à 16:10
-- Version du serveur :  5.6.20-log
-- Version de PHP :  5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `bibliotheque`
--

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

CREATE TABLE IF NOT EXISTS `compte` (
  `LOGIN` varchar(60) NOT NULL,
  `PASWORD` varchar(25) NOT NULL,
  `IDENTIFIANT` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `cours`
--

CREATE TABLE IF NOT EXISTS `cours` (
  `CODE_COURS` varchar(30) NOT NULL,
  `TITRE_COURS` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `cours`
--

INSERT INTO `cours` (`CODE_COURS`, `TITRE_COURS`) VALUES
('420-965-RO', 'Techniques de développement de systèmes'),
('420-977-RO', '	\r\nConcepts de structuration des données informatiques'),
('420-985-RO', '	\r\nConception et exploitation de bases de données'),
('420-994-RO', 'Techniques de réalisation d''interfaces utilisateur'),
('420-AZ3-RO', 'Techniques de développement dans un environnement graphique I'),
('420-B05-RO', '	\r\nTechniques de developpement dans un environnement graphique II'),
('420-B16-RO', '	\r\nTechniques de développement d''applications hypermédias I');

-- --------------------------------------------------------

--
-- Structure de la table `evaluation`
--

CREATE TABLE IF NOT EXISTS `evaluation` (
  `CODE_COURS` varchar(30) NOT NULL,
  `EMAIL` varchar(100) NOT NULL,
  `ISBN` int(30) NOT NULL,
  `DESC_EVALUATION` text NOT NULL,
  `NOTE` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `evaluation`
--

INSERT INTO `evaluation` (`CODE_COURS`, `EMAIL`, `ISBN`, `DESC_EVALUATION`, `NOTE`) VALUES
('420-965-RO', 'moumene@hotmail.ca', 21030908, 'bon ouvrage', 7),
('420-965-RO', 'nadou20082008@hotmail.com', 2130564, 'un bon ouvrage de c++ pour les debutants', 8),
('420-965-RO', 'nadou20082008@hotmail.com', 221213400, 'asdasfadfdfdf', 7),
('420-977-RO', 'nadou20082008@hotmail.com', 123456, 'Bon ouvrage pour commencer a modéliser vos données ', 7),
('420-977-RO', 'nadou20082008@hotmail.com', 2130564, 'Très bon livre pour apprendre C++,plusieurs exemples', 7),
('420-985-RO', 'nadou20082008@hotmail.com', 123456, 'Très bien structuré ,plusieurs exemples et exercices...', 8),
('420-985-RO', 'nadou20082008@hotmail.com', 221200921, 'Très bon ouvrage', 8),
('420-994-RO', 'nadianaouar@gmail.com', 1234566, 'un bon ouvrage pour apprendre java', 7),
('420-AZ3-RO', 'nadou20082008@hotmail.com', 1, 'Très bon ouvrage pour avancer en HTML ,plusieurs exemples...', 0),
('420-AZ3-RO', 'nadou20082008@hotmail.com', 12845698, 'bon ouvrage pour apprendre javaScript pour les debutants', 7),
('420-B05-RO', 'nadou20082008@hotmail.com', 1, 'un bon ouvrage pour avancer en html et css .........', 7),
('420-B16-RO', 'nadou20082008@hotmail.com', 1, 'Superbe livre pour apprendre le développement de site web', 8),
('420-B16-RO', 'nadou20082008@hotmail.com', 21030908, 'Pour bien commencer ,très intéressant....', 7),
('59c9adaa10685', 'nadianaouar@gmail.com', 4879563, 'un bon ouvrage avec plein des exercices', 7),
('59c9ae3a3049a', 'patricetrambley@hotmail.com', 4879563, 'un livre bien structuré pour apprendre php', 7),
('59c9b074d98af', 'nadianaouar@gmail.com', 89657412, 'un bon ouvrage pour apprendre la modélisation', 6);

-- --------------------------------------------------------

--
-- Structure de la table `evaluationlivre`
--

CREATE TABLE IF NOT EXISTS `evaluationlivre` (
`CODE_EVALUATION` int(100) NOT NULL,
  `CODE_COURS` varchar(60) NOT NULL,
  `EMAIL` varchar(100) NOT NULL,
  `ISBN` int(35) NOT NULL,
  `DESC_EVALUATION` text NOT NULL,
  `NOTE` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `evaluationlivre`
--

INSERT INTO `evaluationlivre` (`CODE_EVALUATION`, `CODE_COURS`, `EMAIL`, `ISBN`, `DESC_EVALUATION`, `NOTE`) VALUES
(1, '420-977-RO', 'nadou20082008@hotmail.com', 123456, 'un bon ouvrage pour modélisation et conception des données', 8),
(2, '420-965-RO', 'manonhebert@gmail.com', 12589856, 'un bon ouvrage pour apprendre css et html pour les debutants', 8),
(3, '420-985-RO', 'nathalietrembaly@gmail.com', 123456, 'sdcsdvs', 0),
(4, '420-977-RO', 'nathalietrembaly@gmail.com', 123456, 'cvv', 0),
(5, '59c7211d20dcf', 'nathalietrembaly@gmail.com', 123564, 'bon ouvrage', 0),
(6, '59c72125bf3fe', 'nathalietrembaly@gmail.com', 123564, 'un bon ouvrage', 0),
(7, '59c97b0c02313', 'nadou20082008@hotmail.com', 1244545, 'pas bien structurée', 5);

-- --------------------------------------------------------

--
-- Structure de la table `exemplaire`
--

CREATE TABLE IF NOT EXISTS `exemplaire` (
`CODE_EXP` int(60) NOT NULL,
  `PROPRIETAIRE` varchar(100) NOT NULL,
  `EMAIL_PROPRIETAIRE` varchar(100) NOT NULL,
  `DETENTEUR` varchar(100) DEFAULT NULL,
  `EMAIL_DET` varchar(50) DEFAULT NULL,
  `ISBN` int(25) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1050 ;

--
-- Contenu de la table `exemplaire`
--

INSERT INTO `exemplaire` (`CODE_EXP`, `PROPRIETAIRE`, `EMAIL_PROPRIETAIRE`, `DETENTEUR`, `EMAIL_DET`, `ISBN`) VALUES
(1041, 'naouar nadia', 'nadianaouar@gmail.com', NULL, 'usager@crosemont.qc.ca', 456987),
(1042, 'naouar nadia', 'nadianaouar@gmail.com', NULL, NULL, 89657412),
(1043, 'Bibliothèque', 'manonhebert@hotmail.com', NULL, NULL, 56231478),
(1044, 'Bibliothèque', 'manonhebert@hotmail.com', NULL, NULL, 69836522),
(1045, 'Bibliothèque', 'manonhebert@hotmail.com', NULL, 'patricetrambley@hotmail.com', 1234566),
(1046, 'Département Informatique', 'meriamlavois@hotmail.com', NULL, NULL, 63958741),
(1047, 'Département Informatique', 'meriamlavois@hotmail.com', NULL, 'nadianaouar@gmail.com', 4879563),
(1048, 'naouar nadia', 'nadianaouar@gmail.com', NULL, NULL, 45698856),
(1049, 'Usager De Rosemont', 'usager@crosemont.qc.ca', NULL, NULL, 4879563);

-- --------------------------------------------------------

--
-- Structure de la table `livre`
--

CREATE TABLE IF NOT EXISTS `livre` (
  `ISBN` int(30) NOT NULL,
  `TITRE_LIVRE` varchar(100) NOT NULL,
  `DESCRIPTION` text NOT NULL,
  `EDITION` varchar(60) NOT NULL,
  `AUTEUR` text NOT NULL,
  `ANNEE` int(8) NOT NULL,
  `LANGUE` varchar(60) NOT NULL,
  `NOMIMG` varchar(30) NOT NULL,
  `MOTS_CLES` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `livre`
--

INSERT INTO `livre` (`ISBN`, `TITRE_LIVRE`, `DESCRIPTION`, `EDITION`, `AUTEUR`, `ANNEE`, `LANGUE`, `NOMIMG`, `MOTS_CLES`) VALUES
(456987, 'HTML ET CSS', 'Aapprendre html et css', 'Erroylls', 'francois laberge', 2016, 'Francais', 'livre5.jpe', 'html,css'),
(1234566, 'Le livre de Java premier langage', 'Java se révèle un choix idéal, comme vous le découvrirez dans cet ouvrage ', 'Eyrolles, 2012 ', 'Pascal Roques', 2012, 'Francais', 'livre13.jpe', 'java'),
(1354897, 'Java pour les débutants', 'un livre pour apprendre java langage de programmation orienté objet.', 'Eroylls', 'francois laberge', 2016, 'Francais', 'livre15.jpe', 'java'),
(4879563, 'Programmez en orienté objet en PHP', 'La quasi-totalité des outils créés actuellement pour les développeurs PHP utilise cette façon de programmer', 'Eyrolles, 1 juin 2017 ', 'Victor Thuillier', 2017, 'Francais', 'livre12.jpe', 'php'),
(45698856, 'Découvrez le langage JavaScript', 'Conçu pour les débutants, il vous apprendra pas à pas la programmation en JavaScript', 'Eyrolles, 2 févr. 2017', 'Sébastien de la Marck, Johann Pardanaud', 2017, 'Francais', 'livrejs.jpg', 'javascript'),
(56231478, 'Apprendre le C++', 'Apprendre le C++ succède au grand classique de Claude Delannoy, Programmer en langage C++', 'Eyrolles, 2007', 'Claude Delannoy', 2007, 'Francais', 'livre25.jpe', 'c++'),
(63958741, 'SQL Pour les Nuls, Poche 3e', 'SQL (Structured Query Language) est un langage qui permet de construire de puissantes bases de données relationnelles', 'First Interactive, 2005', 'Allen G. Taylor', 2005, 'Francais', '', 'sql,requete,base de donnée'),
(89657412, 'UML2', 'ce support de cours exemplaire enseigne à travers de nombreux exercices corrigés et études de cas une démarche méthodique de modélisation ', 'Erroylls', 'Pascal Roques', 2009, 'Francais', 'livre32.jpe', 'UML,conception');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `EMAIL` varchar(100) NOT NULL,
  `NOM` varchar(60) NOT NULL,
  `PRENOM` varchar(60) NOT NULL,
  `CLE` varchar(30) NOT NULL,
  `MOTDEPASSE` varchar(15) NOT NULL,
  `TELEPHONE` varchar(30) NOT NULL,
  `TYPEUSER` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`EMAIL`, `NOM`, `PRENOM`, `CLE`, `MOTDEPASSE`, `TELEPHONE`, `TYPEUSER`) VALUES
('manonhebert@hotmail.com', 'manon', 'hebert', '1234', '12345', '', 'Bibliothèque'),
('meriamlavois@hotmail.com', 'Lavois', 'Meriam', '1234', '12345', '', 'Département Informatique'),
('nadianaouar@gmail.com', 'naouar', 'nadia', '1234', '12345', '', 'Professeur'),
('patricetrambley@hotmail.com', 'patrice', 'trambley', '1234', '12345', '', 'Professeur'),
('usager@crosemont.qc.ca', 'Usager', 'De Rosemont', '1234', 'crosemont', '', 'Professeur');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `cours`
--
ALTER TABLE `cours`
 ADD PRIMARY KEY (`CODE_COURS`);

--
-- Index pour la table `evaluation`
--
ALTER TABLE `evaluation`
 ADD PRIMARY KEY (`CODE_COURS`,`EMAIL`,`ISBN`), ADD KEY `evaluation_ibfk_1` (`EMAIL`), ADD KEY `ISBN` (`ISBN`);

--
-- Index pour la table `evaluationlivre`
--
ALTER TABLE `evaluationlivre`
 ADD PRIMARY KEY (`CODE_EVALUATION`);

--
-- Index pour la table `exemplaire`
--
ALTER TABLE `exemplaire`
 ADD PRIMARY KEY (`CODE_EXP`), ADD KEY `ISBN_LIVRE` (`ISBN`), ADD KEY `ISBN_LIVRE_2` (`ISBN`), ADD KEY `ISBN_LIVRE_3` (`ISBN`), ADD KEY `ISBN_LIVRE_4` (`ISBN`);

--
-- Index pour la table `livre`
--
ALTER TABLE `livre`
 ADD PRIMARY KEY (`ISBN`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`EMAIL`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `evaluationlivre`
--
ALTER TABLE `evaluationlivre`
MODIFY `CODE_EVALUATION` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `exemplaire`
--
ALTER TABLE `exemplaire`
MODIFY `CODE_EXP` int(60) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1050;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
