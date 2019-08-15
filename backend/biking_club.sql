-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 15, 2019 at 10:51 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `biking_club`
--

-- --------------------------------------------------------

--
-- Table structure for table `descriptions`
--

DROP TABLE IF EXISTS `descriptions`;
CREATE TABLE IF NOT EXISTS `descriptions` (
  `description_id` int(11) NOT NULL AUTO_INCREMENT,
  `en` varchar(1000) NOT NULL,
  `de` varchar(1000) NOT NULL,
  PRIMARY KEY (`description_id`),
  KEY `description_id` (`description_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `descriptions`
--

INSERT INTO `descriptions` (`description_id`, `en`, `de`) VALUES
(1, 'Where does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney ', 'Woher kommt das?\r\nEntgegen der landläufigen Meinung ist Lorem Ipsum kein zufälliger Text. Es hat Wurzeln in einem über 2000 Jahre alten Stück klassischer lateinischer Literatur aus dem Jahr 45 v. Richard McClintock, Lateinprofessor an der Hampden-Sydney'),
(2, 'Where can I get some?\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Wo kann ich welche bekommen?\r\nEs gibt viele Variationen von Passagen von Lorem Ipsum, aber die Mehrheit hat eine Veränderung in irgendeiner Form durch injizierten Humor oder zufällige Wörter erlitten, die nicht einmal leicht glaubwürdig aussehen. Wenn Sie eine Passage von Lorem Ipsum verwenden möchten, müssen Sie sicherstellen, dass in der Mitte des Textes nichts Peinliches verborgen ist. Alle Lorem Ipsum-Generatoren im Internet tendieren dazu, vordefinierte Abschnitte nach Bedarf zu wiederholen, wodurch dies der erste echte Generator im Internet ist. Es verwendet ein Wörterbuch mit über 200 lateinischen Wörtern, kombiniert mit einer Handvoll Modellsatzstrukturen, um Lorem Ipsum zu generieren, das vernünftig aussieht. Das erzeugte Lorem Ipsum ist daher immer frei von Wiederholungen, injiziertem Humor oder nicht-charakteristischen Wörtern usw.'),
(3, 'Why do we use it?\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'Warum benutzen wir es?\r\nEs ist seit langem bekannt, dass ein Leser beim Betrachten des Layouts vom lesbaren Inhalt einer Seite abgelenkt wird. Der Sinn der Verwendung von Lorem Ipsum ist, dass es eine mehr oder weniger normale Verteilung von Buchstaben aufweist, im Gegensatz zur Verwendung von \"Inhalt hier, Inhalt hier\", sodass es wie lesbares Englisch aussieht. Viele Desktop-Publishing-Pakete und Webseiten-Editoren verwenden jetzt Lorem Ipsum als Standard-Modelltext, und eine Suche nach \"lorem ipsum\" wird viele Websites aufdecken, die sich noch in den Kinderschuhen befinden. Verschiedene Versionen haben sich im Laufe der Jahre entwickelt, manchmal aus Versehen, manchmal mit Absicht (eingespritzter Humor und dergleichen).');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `event_id` int(3) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `description_id` int(150) NOT NULL,
  `cover_picture` varchar(150) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`event_id`),
  KEY `description_id` (`description_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `title`, `description_id`, `cover_picture`, `date`) VALUES
(1, 'A bike event 1', 1, 'assets/event1.jpg', '2019-08-01'),
(2, 'A bike event 2', 2, 'assets/event2.jpg', '2019-08-07'),
(3, 'A bike event 3', 3, 'assets/event3.jpg', '2019-08-14'),
(4, 'A bike event 2', 2, 'assets/event2.jpg', '2019-08-29'),
(5, 'A bike event 3', 3, 'assets/event3.jpg', '2019-08-31'),
(6, 'A bike event 1', 1, 'assets/event1.jpg', '2019-08-01'),
(7, 'A bike event 1', 1, 'assets/event1.jpg', '2019-08-01'),
(8, 'A bike event 1', 1, 'assets/event1.jpg', '2019-08-01'),
(9, 'A bike event 1', 1, 'assets/event1.jpg', '2019-08-01'),
(10, 'A bike event 1', 1, 'assets/event1.jpg', '2019-08-01'),
(11, 'A bike event 1', 1, 'assets/event1.jpg', '2019-08-01'),
(12, 'A bike event 1', 1, 'assets/event1.jpg', '2019-08-31');

-- --------------------------------------------------------

--
-- Table structure for table `photo_gallery`
--

DROP TABLE IF EXISTS `photo_gallery`;
CREATE TABLE IF NOT EXISTS `photo_gallery` (
  `id_photo` int(3) NOT NULL AUTO_INCREMENT,
  `event_id` int(3) NOT NULL,
  `path_photo` varchar(150) NOT NULL,
  PRIMARY KEY (`id_photo`),
  KEY `id_event` (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `photo_gallery`
--

INSERT INTO `photo_gallery` (`id_photo`, `event_id`, `path_photo`) VALUES
(1, 1, 'assets/event1.jpg'),
(2, 2, 'assets/event2.jpg'),
(3, 3, 'assets/event3.jpg'),
(4, 1, 'https://picsum.photos/200/200/?'),
(5, 2, 'https://picsum.photos/200/200/?'),
(6, 3, 'https://picsum.photos/200/200/?'),
(7, 1, 'assets/event1.jpg'),
(8, 2, 'assets/event2.jpg'),
(9, 3, 'assets/event3.jpg'),
(10, 1, 'https://picsum.photos/200/200/?'),
(11, 2, 'https://picsum.photos/200/200/?'),
(12, 3, 'https://picsum.photos/200/200/?'),
(13, 1, 'assets/event1.jpg'),
(14, 2, 'assets/event2.jpg'),
(15, 3, 'assets/event3.jpg'),
(16, 1, 'https://picsum.photos/200/200/?'),
(17, 2, 'https://picsum.photos/200/200/?'),
(18, 3, 'https://picsum.photos/200/200/?'),
(19, 1, 'assets/event1.jpg'),
(20, 2, 'assets/event2.jpg'),
(21, 3, 'assets/event3.jpg'),
(22, 1, 'https://picsum.photos/200/200/?'),
(23, 2, 'https://picsum.photos/200/200/?'),
(24, 3, 'https://picsum.photos/200/200/?'),
(25, 1, 'assets/event1.jpg'),
(26, 2, 'assets/event2.jpg'),
(27, 3, 'assets/event3.jpg'),
(28, 1, 'https://picsum.photos/200/200/?'),
(29, 2, 'https://picsum.photos/200/200/?'),
(30, 3, 'https://picsum.photos/200/200/?'),
(31, 1, 'assets/event1.jpg'),
(32, 2, 'assets/event2.jpg'),
(33, 3, 'assets/event3.jpg'),
(34, 1, 'https://picsum.photos/200/200/?'),
(35, 2, 'https://picsum.photos/200/200/?'),
(36, 3, 'https://picsum.photos/200/200/?'),
(37, 1, 'assets/event1.jpg'),
(38, 2, 'assets/event2.jpg'),
(39, 3, 'assets/event3.jpg'),
(40, 1, 'https://picsum.photos/200/200/?'),
(41, 2, 'https://picsum.photos/200/200/?'),
(42, 3, 'https://picsum.photos/200/200/?'),
(43, 1, 'assets/event1.jpg'),
(44, 2, 'assets/event2.jpg'),
(45, 3, 'assets/event3.jpg'),
(46, 1, 'https://picsum.photos/200/200/?'),
(47, 2, 'https://picsum.photos/200/200/?'),
(48, 3, 'https://picsum.photos/200/200/?'),
(49, 1, 'assets/event1.jpg'),
(50, 2, 'assets/event2.jpg'),
(51, 3, 'assets/event3.jpg'),
(52, 1, 'https://picsum.photos/200/200/?'),
(53, 2, 'https://picsum.photos/200/200/?'),
(54, 3, 'https://picsum.photos/200/200/?'),
(55, 1, 'assets/event1.jpg'),
(56, 2, 'assets/event2.jpg'),
(57, 3, 'assets/event3.jpg'),
(58, 1, 'https://picsum.photos/200/200/?'),
(59, 2, 'https://picsum.photos/200/200/?'),
(60, 3, 'https://picsum.photos/200/200/?'),
(61, 1, 'assets/event1.jpg'),
(62, 2, 'assets/event2.jpg'),
(63, 3, 'assets/event3.jpg'),
(64, 1, 'https://picsum.photos/200/200/?'),
(65, 2, 'https://picsum.photos/200/200/?'),
(66, 3, 'https://picsum.photos/200/200/?'),
(67, 1, 'assets/event1.jpg'),
(68, 2, 'assets/event2.jpg'),
(69, 3, 'assets/event3.jpg'),
(70, 1, 'https://picsum.photos/200/200/?'),
(71, 2, 'https://picsum.photos/200/200/?'),
(72, 3, 'https://picsum.photos/200/200/?'),
(73, 1, 'assets/event1.jpg');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `descriptions`
--
ALTER TABLE `descriptions`
  ADD CONSTRAINT `descriptions_ibfk_1` FOREIGN KEY (`description_id`) REFERENCES `events` (`description_id`);

--
-- Constraints for table `photo_gallery`
--
ALTER TABLE `photo_gallery`
  ADD CONSTRAINT `photo_gallery_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
