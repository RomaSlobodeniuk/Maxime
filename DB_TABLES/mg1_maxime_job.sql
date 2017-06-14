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
-- Table structure for table `mg1_maxime_job`
--

CREATE TABLE `mg1_maxime_job` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Job Id',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT 'Job Title',
  `type` varchar(255) NOT NULL DEFAULT '' COMMENT 'Job Type (CDI, CDD...)',
  `location` varchar(255) NOT NULL DEFAULT '' COMMENT 'Job Location',
  `date` date NOT NULL COMMENT 'Job date begin',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Job status',
  `description` text NOT NULL COMMENT 'Job description',
  `department_id` int(10) UNSIGNED NOT NULL COMMENT 'Department linked to the job'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Job management on Magento 2';

--
-- Dumping data for table `mg1_maxime_job`
--

INSERT INTO `mg1_maxime_job` (`entity_id`, `title`, `type`, `location`, `date`, `status`, `description`, `department_id`) VALUES
(1, 'Sample Marketing Job 1', 'CDI', 'Paris, France', '2016-01-05', 1, 'Changing isdem diebus acciderat malum, quod et Theophilum insontem atrox\r\n                interceperat casus, et Serenianus dignus exsecratione cunctorum, innoxius, modo non reclamante publico vigore,\r\n                discessit.', 1),
(3, 'Sample Technical Support Job 1', 'CDD', 'Lille, France', '2016-02-01', 1, 'Duplexque isdem diebus acciderat malum, quod et Theophilum insontem atrox\n                interceperat casus, et Serenianus dignus exsecratione cunctorum, innoxius, modo non reclamante publico vigore,\n                discessit.', 2),
(4, 'Sample Human Resource Job 1', 'CDI', 'Paris, France', '2016-01-01', 1, 'Duplexque isdem diebus acciderat malum, quod et Theophilum insontem atrox\n                interceperat casus, et Serenianus dignus exsecratione cunctorum, innoxius, modo non reclamante publico vigore,\n                discessit.', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mg1_maxime_job`
--
ALTER TABLE `mg1_maxime_job`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `MG1_MAXIME_JOB_TITLE` (`title`),
  ADD KEY `MG1_MAXIME_JOB_DEPARTMENT_ID_MAXIME_DEPARTMENT_ENTITY_ID` (`department_id`);
ALTER TABLE `mg1_maxime_job` ADD FULLTEXT KEY `MG1_MAXIME_JOB_TITLE_TYPE_LOCATION_DESCRIPTION` (`title`,`type`,`location`,`description`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mg1_maxime_job`
--
ALTER TABLE `mg1_maxime_job`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Job Id', AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `mg1_maxime_job`
--
ALTER TABLE `mg1_maxime_job`
  ADD CONSTRAINT `MG1_MAXIME_JOB_DEPARTMENT_ID_MAXIME_DEPARTMENT_ENTITY_ID` FOREIGN KEY (`department_id`) REFERENCES `maxime_department` (`entity_id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
