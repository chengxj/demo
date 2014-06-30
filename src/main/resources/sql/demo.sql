CREATE DATABASE  IF NOT EXISTS `demo`;
USE `demo`;

--
-- Table structure for table `activities`
--

DROP TABLE IF EXISTS `activities`;
CREATE TABLE `activities` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `type_enum` varchar(128) NOT NULL,
  `scenic_spots` varchar(128) NOT NULL,
  `departure` varchar(128) NOT NULL,
  `destination` varchar(128) NOT NULL,
  `leader` varchar(128) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

delete from `activities`;
INSERT INTO activities (id, title, type_enum, scenic_spots, departure, destination, leader, start_date, end_date) 
VALUES 
(1, '东大高', 'CYCLING', '', '清河', '东方红、大村、高崖口', '萝卜', null, null),
(2, '花海', 'MOUNTAIN', '', '安慧桥', '珍珠泉', '黑猫', null, null),
(3, '东大高', 'CYCLING', '', '清河', '东方红、大村、高崖口', '萝卜', null, null),
(4, '花海', 'MOUNTAIN', '', '安慧桥', '珍珠泉', '黑猫', null, null),
(5, '东大高', 'CYCLING', '', '清河', '东方红、大村、高崖口', '萝卜', null, null),
(6, '花海', 'MOUNTAIN', '', '安慧桥', '珍珠泉', '黑猫', null, null),
(7, '东大高', 'CYCLING', '', '清河', '东方红、大村、高崖口', '萝卜', null, null),
(8, '花海', 'MOUNTAIN', '', '安慧桥', '珍珠泉', '黑猫', null, null),
(9, '东大高', 'CYCLING', '', '清河', '东方红、大村、高崖口', '萝卜', null, null),
(10, '花海', 'MOUNTAIN', '', '安慧桥', '珍珠泉', '黑猫', null, null),
(11, '东大高', 'CYCLING', '', '清河', '东方红、大村、高崖口', '萝卜', null, null),
(12, '花海', 'MOUNTAIN', '', '安慧桥', '珍珠泉', '黑猫', null, null);


--
-- Table structure for table `registration`
--

DROP TABLE IF EXISTS `registration`;
CREATE TABLE `registration` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activities_id` bigint(20) NOT NULL,
  `name` varchar(128) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `real_name` varchar(128) NOT NULL, 
  `contact_way` varchar(128) NOT NULL, 
  `emergency_contact` varchar(128) NOT NULL, 
  `emergency_contact_way` varchar(128) NOT NULL,
  `num` int(11) NOT NULL,
  `equipment_experience_remarks` varchar(512) NOT NULL, 
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

delete from `registration`;


