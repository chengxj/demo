CREATE DATABASE  IF NOT EXISTS `demo`;
USE `demo`;

--
-- Table structure for table `activities`
--

DROP TABLE IF EXISTS `activities`;
CREATE TABLE `activities` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `typeEnum` varchar(128) NOT NULL,
  `ScenicSpots` varchar(128) NOT NULL,
  `departure` varchar(128) NOT NULL,
  `destination` varchar(128) NOT NULL,
  `leader` varchar(128) NOT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

delete from `activities`;
INSERT INTO activities (id, title, typeEnum, ScenicSpots, departure, destination, leader, startDate, endDate) 
VALUES 
(1, '那些年一起爬过的东大高', '0', '', '', '', '', ''),

--
-- Table structure for table `registration`
--

DROP TABLE IF EXISTS `registration`;
CREATE TABLE `registration` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activities_id` bigint(20) NOT NULL,
  `name` varchar(128) NOT NULL,
  `sex` varchar(4) NOT NULL,
  `realName` varchar(128) NOT NULL, 
  `contactWay` varchar(128) NOT NULL, 
  `emergencyContact` varchar(128) NOT NULL, 
  `emergencyContactWay` varchar(128) NOT NULL,
  `num` int(11) NOT NULL,
  `equipmentExperienceRemarks` varchar(512) NOT NULL, 
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

delete from `registration`;


