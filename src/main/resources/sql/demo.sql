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
(1, '�����', 'CYCLING', '', '���', '�����졢��塢���¿�', '�ܲ�', null, null),
(2, '����', 'MOUNTAIN', '', '������', '����Ȫ', '��è', null, null),
(3, '�����', 'CYCLING', '', '���', '�����졢��塢���¿�', '�ܲ�', null, null),
(4, '����', 'MOUNTAIN', '', '������', '����Ȫ', '��è', null, null),
(5, '�����', 'CYCLING', '', '���', '�����졢��塢���¿�', '�ܲ�', null, null),
(6, '����', 'MOUNTAIN', '', '������', '����Ȫ', '��è', null, null),
(7, '�����', 'CYCLING', '', '���', '�����졢��塢���¿�', '�ܲ�', null, null),
(8, '����', 'MOUNTAIN', '', '������', '����Ȫ', '��è', null, null),
(9, '�����', 'CYCLING', '', '���', '�����졢��塢���¿�', '�ܲ�', null, null),
(10, '����', 'MOUNTAIN', '', '������', '����Ȫ', '��è', null, null),
(11, '�����', 'CYCLING', '', '���', '�����졢��塢���¿�', '�ܲ�', null, null),
(12, '����', 'MOUNTAIN', '', '������', '����Ȫ', '��è', null, null);


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


