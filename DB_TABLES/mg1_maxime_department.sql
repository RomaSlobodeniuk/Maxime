-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 14, 2017 at 09:00 PM
-- Server version: 5.7.18-0ubuntu0.16.04.1
-- PHP Version: 5.6.30-10+deb.sury.org~xenial+2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `magento`
--

-- --------------------------------------------------------

--
-- Table structure for table `mg1_maxime_department`
--

CREATE TABLE `mg1_maxime_department` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Department Id',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Department name',
  `description` text NOT NULL COMMENT 'Department description'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Department management for jobs module';

--
-- Dumping data for table `mg1_maxime_department`
--

INSERT INTO `mg1_maxime_department` (`entity_id`, `name`, `description`) VALUES
(1, 'Marketing', 'Sed cautela nimia in peiores haeserat plagas, ut narrabimus postea,\n                aemulis consarcinantibus insidias graves apud Constantium, cetera medium principem sed\n                siquid auribus eius huius modi quivis infudisset ignotus, acerbum et inplacabilem et in\n                hoc causarum titulo dissimilem sui.'),
(2, 'Technical Support', 'Post hanc adclinis Libano monti Phoenice, regio plena gratiarum et\n                venustatis, urbibus decorata magnis et pulchris; in quibus amoenitate celebritateque\n                nominum Tyros excellit, Sidon et Berytus isdemque pares Emissa et Damascus saeculis condita\n                priscis.'),
(3, 'Human Resource', 'Duplexque isdem diebus acciderat malum, quod et Theophilum insontem atrox\n                interceperat casus, et Serenianus dignus exsecratione cunctorum, innoxius, modo non reclamante publico vigore,\n                discessit.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mg1_maxime_department`
--
ALTER TABLE `mg1_maxime_department`
  ADD PRIMARY KEY (`entity_id`);
ALTER TABLE `mg1_maxime_department` ADD FULLTEXT KEY `MG1_MAXIME_DEPARTMENT_NAME` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mg1_maxime_department`
--
ALTER TABLE `mg1_maxime_department`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Department Id', AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
