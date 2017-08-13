-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 04, 2017 at 09:47 AM
-- Server version: 5.5.55-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `snort`
--

-- --------------------------------------------------------

--
-- Table structure for table `acid_ag`
--

CREATE TABLE IF NOT EXISTS `acid_ag` (
  `ag_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ag_name` varchar(40) DEFAULT NULL,
  `ag_desc` text,
  `ag_ctime` datetime DEFAULT NULL,
  `ag_ltime` datetime DEFAULT NULL,
  PRIMARY KEY (`ag_id`),
  KEY `ag_id` (`ag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `acid_ag_alert`
--

CREATE TABLE IF NOT EXISTS `acid_ag_alert` (
  `ag_id` int(10) unsigned NOT NULL,
  `ag_sid` int(10) unsigned NOT NULL,
  `ag_cid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ag_id`,`ag_sid`,`ag_cid`),
  KEY `ag_id` (`ag_id`),
  KEY `ag_sid` (`ag_sid`,`ag_cid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `acid_event`
--

CREATE TABLE IF NOT EXISTS `acid_event` (
  `sid` int(10) unsigned NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `signature` int(10) unsigned NOT NULL,
  `sig_name` varchar(255) DEFAULT NULL,
  `sig_class_id` int(10) unsigned DEFAULT NULL,
  `sig_priority` int(10) unsigned DEFAULT NULL,
  `timestamp` datetime NOT NULL,
  `ip_src` int(10) unsigned DEFAULT NULL,
  `ip_dst` int(10) unsigned DEFAULT NULL,
  `ip_proto` int(11) DEFAULT NULL,
  `layer4_sport` int(10) unsigned DEFAULT NULL,
  `layer4_dport` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`sid`,`cid`),
  KEY `signature` (`signature`),
  KEY `sig_name` (`sig_name`),
  KEY `sig_class_id` (`sig_class_id`),
  KEY `sig_priority` (`sig_priority`),
  KEY `timestamp` (`timestamp`),
  KEY `ip_src` (`ip_src`),
  KEY `ip_dst` (`ip_dst`),
  KEY `ip_proto` (`ip_proto`),
  KEY `layer4_sport` (`layer4_sport`),
  KEY `layer4_dport` (`layer4_dport`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `acid_event`
--

INSERT INTO `acid_event` (`sid`, `cid`, `signature`, `sig_name`, `sig_class_id`, `sig_priority`, `timestamp`, `ip_src`, `ip_dst`, `ip_proto`, `layer4_sport`, `layer4_dport`) VALUES
(1, 1, 513, 'Snort Alert [1:100:1]', 31, 3, '2017-07-27 16:57:50', 3232246748, 3232246621, 1, NULL, NULL),
(1, 2, 513, 'Snort Alert [1:100:1]', 31, 3, '2017-07-27 16:57:50', 3232246621, 3232246748, 1, NULL, NULL),
(1, 3, 513, 'Snort Alert [1:100:1]', 31, 3, '2017-07-27 16:57:51', 3232246748, 3232246621, 1, NULL, NULL),
(1, 4, 513, 'Snort Alert [1:100:1]', 31, 3, '2017-07-27 16:57:51', 3232246621, 3232246748, 1, NULL, NULL),
(1, 5, 513, 'Snort Alert [1:100:1]', 31, 3, '2017-07-27 16:57:52', 3232246748, 3232246621, 1, NULL, NULL),
(1, 6, 513, 'Snort Alert [1:100:1]', 31, 3, '2017-07-27 16:57:52', 3232246621, 3232246748, 1, NULL, NULL),
(1, 7, 513, 'Snort Alert [1:100:1]', 31, 3, '2017-07-27 16:57:53', 3232246748, 3232246621, 1, NULL, NULL),
(1, 8, 513, 'Snort Alert [1:100:1]', 31, 3, '2017-07-27 16:57:53', 3232246621, 3232246748, 1, NULL, NULL),
(1, 9, 513, 'Snort Alert [1:100:1]', 31, 3, '2017-07-27 16:57:54', 3232246748, 3232246621, 1, NULL, NULL),
(1, 10, 513, 'Snort Alert [1:100:1]', 31, 3, '2017-07-27 16:57:54', 3232246621, 3232246748, 1, NULL, NULL),
(1, 11, 513, 'Snort Alert [1:100:1]', 31, 3, '2017-07-27 16:57:55', 3232246748, 3232246621, 1, NULL, NULL),
(1, 12, 514, 'Snort Alert [1:102:1]', 0, 0, '2017-07-27 17:11:49', 3232246748, 3232246621, 6, 48442, 23),
(1, 13, 513, 'Snort Alert [1:100:1]', 31, 3, '2017-07-27 17:11:52', 3232246748, 3232246621, 1, NULL, NULL),
(1, 14, 513, 'Snort Alert [1:100:1]', 31, 3, '2017-07-27 17:11:52', 3232246621, 3232246748, 1, NULL, NULL),
(1, 15, 513, 'Snort Alert [1:100:1]', 31, 3, '2017-07-27 17:11:53', 3232246748, 3232246621, 1, NULL, NULL),
(1, 16, 513, 'Snort Alert [1:100:1]', 31, 3, '2017-07-27 17:11:53', 3232246621, 3232246748, 1, NULL, NULL),
(1, 17, 513, 'Snort Alert [1:100:1]', 31, 3, '2017-07-27 17:11:54', 3232246748, 3232246621, 1, NULL, NULL),
(1, 18, 513, 'Snort Alert [1:100:1]', 31, 3, '2017-07-27 17:11:54', 3232246621, 3232246748, 1, NULL, NULL),
(1, 19, 513, 'Snort Alert [1:100:1]', 31, 3, '2017-07-27 17:11:55', 3232246748, 3232246621, 1, NULL, NULL),
(1, 20, 513, 'Snort Alert [1:100:1]', 31, 3, '2017-07-27 17:11:55', 3232246621, 3232246748, 1, NULL, NULL),
(1, 21, 513, 'Snort Alert [1:100:1]', 31, 3, '2017-07-27 17:11:56', 3232246748, 3232246621, 1, NULL, NULL),
(1, 22, 513, 'Snort Alert [1:100:1]', 31, 3, '2017-07-27 17:11:56', 3232246621, 3232246748, 1, NULL, NULL),
(1, 23, 513, 'Snort Alert [1:100:1]', 31, 3, '2017-07-27 17:11:57', 3232246748, 3232246621, 1, NULL, NULL),
(1, 24, 513, 'Snort Alert [1:100:1]', 31, 3, '2017-07-27 17:11:57', 3232246621, 3232246748, 1, NULL, NULL),
(1, 25, 515, 'Snort Alert [1:101:1]', 0, 0, '2017-07-27 17:12:07', 3232246748, 3232246621, 6, 42878, 21),
(1, 26, 513, 'Snort Alert [1:100:1]', 31, 3, '2017-07-27 21:45:05', 3232246748, 3494108894, 1, NULL, NULL),
(1, 27, 513, 'Snort Alert [1:100:1]', 31, 3, '2017-07-27 21:45:05', 3494108894, 3232246748, 1, NULL, NULL),
(1, 28, 513, 'Snort Alert [1:100:1]', 31, 3, '2017-07-27 21:45:06', 3232246748, 3494108894, 1, NULL, NULL),
(1, 29, 513, 'Snort Alert [1:100:1]', 31, 3, '2017-07-27 21:45:06', 3494108894, 3232246748, 1, NULL, NULL),
(1, 30, 513, 'Snort Alert [1:100:1]', 31, 3, '2017-07-27 21:45:07', 3232246748, 3494108894, 1, NULL, NULL),
(1, 31, 513, 'Snort Alert [1:100:1]', 31, 3, '2017-07-27 21:45:07', 3494108894, 3232246748, 1, NULL, NULL),
(1, 32, 513, 'Snort Alert [1:100:1]', 31, 3, '2017-07-27 21:45:08', 3232246748, 3494108894, 1, NULL, NULL),
(1, 33, 513, 'Snort Alert [1:100:1]', 31, 3, '2017-07-27 21:45:08', 3494108894, 3232246748, 1, NULL, NULL),
(1, 34, 513, 'Snort Alert [1:100:1]', 31, 3, '2017-07-27 21:45:22', 3232246748, 3232246621, 1, NULL, NULL),
(1, 35, 513, 'Snort Alert [1:100:1]', 31, 3, '2017-07-27 21:45:22', 3232246621, 3232246748, 1, NULL, NULL),
(1, 36, 513, 'Snort Alert [1:100:1]', 31, 3, '2017-07-27 21:45:23', 3232246748, 3232246621, 1, NULL, NULL),
(1, 37, 513, 'Snort Alert [1:100:1]', 31, 3, '2017-07-27 21:45:23', 3232246621, 3232246748, 1, NULL, NULL),
(1, 38, 513, 'Snort Alert [1:100:1]', 31, 3, '2017-07-27 21:45:24', 3232246748, 3232246621, 1, NULL, NULL),
(1, 39, 513, 'Snort Alert [1:100:1]', 31, 3, '2017-07-27 21:45:24', 3232246621, 3232246748, 1, NULL, NULL),
(1, 40, 513, 'Snort Alert [1:100:1]', 31, 3, '2017-07-27 21:45:25', 3232246748, 3232246621, 1, NULL, NULL),
(1, 41, 513, 'Snort Alert [1:100:1]', 31, 3, '2017-07-27 21:45:25', 3232246621, 3232246748, 1, NULL, NULL),
(1, 42, 513, 'Snort Alert [1:100:1]', 31, 3, '2017-07-27 21:45:26', 3232246748, 3232246621, 1, NULL, NULL),
(1, 43, 514, 'Snort Alert [1:102:1]', 0, 0, '2017-07-29 09:06:53', 3232246748, 3232246621, 6, 43910, 23),
(1, 44, 513, 'Snort Alert [1:100:1]', 31, 3, '2017-07-29 09:07:00', 3232246748, 3232246621, 1, NULL, NULL),
(1, 45, 513, 'Snort Alert [1:100:1]', 31, 3, '2017-07-29 09:07:00', 3232246621, 3232246748, 1, NULL, NULL),
(1, 46, 513, 'Snort Alert [1:100:1]', 31, 3, '2017-07-29 09:07:01', 3232246748, 3232246621, 1, NULL, NULL),
(1, 47, 513, 'Snort Alert [1:100:1]', 31, 3, '2017-07-29 09:07:01', 3232246621, 3232246748, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `acid_ip_cache`
--

CREATE TABLE IF NOT EXISTS `acid_ip_cache` (
  `ipc_ip` int(10) unsigned NOT NULL,
  `ipc_fqdn` varchar(50) DEFAULT NULL,
  `ipc_dns_timestamp` datetime DEFAULT NULL,
  `ipc_whois` text,
  `ipc_whois_timestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`ipc_ip`),
  KEY `ipc_ip` (`ipc_ip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `base_roles`
--

CREATE TABLE IF NOT EXISTS `base_roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(20) NOT NULL,
  `role_desc` varchar(75) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `base_roles`
--

INSERT INTO `base_roles` (`role_id`, `role_name`, `role_desc`) VALUES
(1, 'Admin', 'Administrator'),
(10, 'user', 'Authenticated User'),
(50, 'ag_editor', 'Alert Group Editor'),
(10000, 'anonymous', 'Anonymous User');

-- --------------------------------------------------------

--
-- Table structure for table `base_users`
--

CREATE TABLE IF NOT EXISTS `base_users` (
  `usr_id` int(11) NOT NULL,
  `usr_login` varchar(25) NOT NULL,
  `usr_pwd` varchar(32) NOT NULL,
  `usr_name` varchar(75) NOT NULL,
  `role_id` int(11) NOT NULL,
  `usr_enabled` int(11) NOT NULL,
  PRIMARY KEY (`usr_id`),
  KEY `usr_login` (`usr_login`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE IF NOT EXISTS `data` (
  `sid` int(10) unsigned NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `data_payload` text,
  PRIMARY KEY (`sid`,`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`sid`, `cid`, `data_payload`) VALUES
(1, 1, '1EB97959000000001FBE040000000000101112131415161718191A1B1C1D1E1F202122232425262728292A2B2C2D2E2F3031323334353637'),
(1, 2, '1EB97959000000001FBE040000000000101112131415161718191A1B1C1D1E1F202122232425262728292A2B2C2D2E2F3031323334353637'),
(1, 3, '1FB97959000000008DBB040000000000101112131415161718191A1B1C1D1E1F202122232425262728292A2B2C2D2E2F3031323334353637'),
(1, 4, '1FB97959000000008DBB040000000000101112131415161718191A1B1C1D1E1F202122232425262728292A2B2C2D2E2F3031323334353637'),
(1, 5, '20B97959000000008DBB040000000000101112131415161718191A1B1C1D1E1F202122232425262728292A2B2C2D2E2F3031323334353637'),
(1, 6, '20B97959000000008DBB040000000000101112131415161718191A1B1C1D1E1F202122232425262728292A2B2C2D2E2F3031323334353637'),
(1, 7, '21B97959000000006CBB040000000000101112131415161718191A1B1C1D1E1F202122232425262728292A2B2C2D2E2F3031323334353637'),
(1, 8, '21B97959000000006CBB040000000000101112131415161718191A1B1C1D1E1F202122232425262728292A2B2C2D2E2F3031323334353637'),
(1, 9, '22B97959000000003CBB040000000000101112131415161718191A1B1C1D1E1F202122232425262728292A2B2C2D2E2F3031323334353637'),
(1, 10, '22B97959000000003CBB040000000000101112131415161718191A1B1C1D1E1F202122232425262728292A2B2C2D2E2F3031323334353637'),
(1, 11, '23B9795900000000A3BB040000000000101112131415161718191A1B1C1D1E1F202122232425262728292A2B2C2D2E2F3031323334353637'),
(1, 13, '68BC79590000000084D4020000000000101112131415161718191A1B1C1D1E1F202122232425262728292A2B2C2D2E2F3031323334353637'),
(1, 14, '68BC79590000000084D4020000000000101112131415161718191A1B1C1D1E1F202122232425262728292A2B2C2D2E2F3031323334353637'),
(1, 15, '69BC795900000000F3D6020000000000101112131415161718191A1B1C1D1E1F202122232425262728292A2B2C2D2E2F3031323334353637'),
(1, 16, '69BC795900000000F3D6020000000000101112131415161718191A1B1C1D1E1F202122232425262728292A2B2C2D2E2F3031323334353637'),
(1, 17, '6ABC795900000000E6D6020000000000101112131415161718191A1B1C1D1E1F202122232425262728292A2B2C2D2E2F3031323334353637'),
(1, 18, '6ABC795900000000E6D6020000000000101112131415161718191A1B1C1D1E1F202122232425262728292A2B2C2D2E2F3031323334353637'),
(1, 19, '6BBC7959000000001CD7020000000000101112131415161718191A1B1C1D1E1F202122232425262728292A2B2C2D2E2F3031323334353637'),
(1, 20, '6BBC7959000000001CD7020000000000101112131415161718191A1B1C1D1E1F202122232425262728292A2B2C2D2E2F3031323334353637'),
(1, 21, '6CBC795900000000BEDA020000000000101112131415161718191A1B1C1D1E1F202122232425262728292A2B2C2D2E2F3031323334353637'),
(1, 22, '6CBC795900000000BEDA020000000000101112131415161718191A1B1C1D1E1F202122232425262728292A2B2C2D2E2F3031323334353637'),
(1, 23, '6DBC79590000000037DD020000000000101112131415161718191A1B1C1D1E1F202122232425262728292A2B2C2D2E2F3031323334353637'),
(1, 24, '6DBC79590000000037DD020000000000101112131415161718191A1B1C1D1E1F202122232425262728292A2B2C2D2E2F3031323334353637'),
(1, 26, '4C547A59000000002B92030000000000101112131415161718191A1B1C1D1E1F202122232425262728292A2B2C2D2E2F3031323334353637'),
(1, 27, '4C547A59000000002B92030000000000101112131415161718191A1B1C1D1E1F202122232425262728292A2B2C2D2E2F3031323334353637'),
(1, 28, '4D547A59000000002C90030000000000101112131415161718191A1B1C1D1E1F202122232425262728292A2B2C2D2E2F3031323334353637'),
(1, 29, '4D547A59000000002C90030000000000101112131415161718191A1B1C1D1E1F202122232425262728292A2B2C2D2E2F3031323334353637'),
(1, 30, '4E547A59000000008592030000000000101112131415161718191A1B1C1D1E1F202122232425262728292A2B2C2D2E2F3031323334353637'),
(1, 31, '4E547A59000000008592030000000000101112131415161718191A1B1C1D1E1F202122232425262728292A2B2C2D2E2F3031323334353637'),
(1, 32, '4F547A59000000009893030000000000101112131415161718191A1B1C1D1E1F202122232425262728292A2B2C2D2E2F3031323334353637'),
(1, 33, '4F547A59000000009893030000000000101112131415161718191A1B1C1D1E1F202122232425262728292A2B2C2D2E2F3031323334353637'),
(1, 34, '5C547A59000000006D020C0000000000101112131415161718191A1B1C1D1E1F202122232425262728292A2B2C2D2E2F3031323334353637'),
(1, 35, '5C547A59000000006D020C0000000000101112131415161718191A1B1C1D1E1F202122232425262728292A2B2C2D2E2F3031323334353637'),
(1, 36, '5D547A5900000000180A0C0000000000101112131415161718191A1B1C1D1E1F202122232425262728292A2B2C2D2E2F3031323334353637'),
(1, 37, '5D547A5900000000180A0C0000000000101112131415161718191A1B1C1D1E1F202122232425262728292A2B2C2D2E2F3031323334353637'),
(1, 38, '5E547A59000000008C100C0000000000101112131415161718191A1B1C1D1E1F202122232425262728292A2B2C2D2E2F3031323334353637'),
(1, 39, '5E547A59000000008C100C0000000000101112131415161718191A1B1C1D1E1F202122232425262728292A2B2C2D2E2F3031323334353637'),
(1, 40, '5F547A5900000000C5150C0000000000101112131415161718191A1B1C1D1E1F202122232425262728292A2B2C2D2E2F3031323334353637'),
(1, 41, '5F547A5900000000C5150C0000000000101112131415161718191A1B1C1D1E1F202122232425262728292A2B2C2D2E2F3031323334353637'),
(1, 42, '60547A5900000000621A0C0000000000101112131415161718191A1B1C1D1E1F202122232425262728292A2B2C2D2E2F3031323334353637'),
(1, 44, 'E5C57F59000000008B1D0B0000000000101112131415161718191A1B1C1D1E1F202122232425262728292A2B2C2D2E2F3031323334353637'),
(1, 45, 'E5C57F59000000008B1D0B0000000000101112131415161718191A1B1C1D1E1F202122232425262728292A2B2C2D2E2F3031323334353637'),
(1, 46, 'E6C57F5900000000931B0B0000000000101112131415161718191A1B1C1D1E1F202122232425262728292A2B2C2D2E2F3031323334353637'),
(1, 47, 'E6C57F5900000000931B0B0000000000101112131415161718191A1B1C1D1E1F202122232425262728292A2B2C2D2E2F3031323334353637');

-- --------------------------------------------------------

--
-- Table structure for table `detail`
--

CREATE TABLE IF NOT EXISTS `detail` (
  `detail_type` tinyint(3) unsigned NOT NULL,
  `detail_text` text NOT NULL,
  PRIMARY KEY (`detail_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail`
--

INSERT INTO `detail` (`detail_type`, `detail_text`) VALUES
(0, 'fast'),
(1, 'full');

-- --------------------------------------------------------

--
-- Table structure for table `encoding`
--

CREATE TABLE IF NOT EXISTS `encoding` (
  `encoding_type` tinyint(3) unsigned NOT NULL,
  `encoding_text` text NOT NULL,
  PRIMARY KEY (`encoding_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `encoding`
--

INSERT INTO `encoding` (`encoding_type`, `encoding_text`) VALUES
(0, 'hex'),
(1, 'base64'),
(2, 'ascii');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE IF NOT EXISTS `event` (
  `sid` int(10) unsigned NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `signature` int(10) unsigned NOT NULL,
  `timestamp` datetime NOT NULL,
  PRIMARY KEY (`sid`,`cid`),
  KEY `sig` (`signature`),
  KEY `time` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`sid`, `cid`, `signature`, `timestamp`) VALUES
(1, 1, 513, '2017-07-27 16:57:50'),
(1, 2, 513, '2017-07-27 16:57:50'),
(1, 3, 513, '2017-07-27 16:57:51'),
(1, 4, 513, '2017-07-27 16:57:51'),
(1, 5, 513, '2017-07-27 16:57:52'),
(1, 6, 513, '2017-07-27 16:57:52'),
(1, 7, 513, '2017-07-27 16:57:53'),
(1, 8, 513, '2017-07-27 16:57:53'),
(1, 9, 513, '2017-07-27 16:57:54'),
(1, 10, 513, '2017-07-27 16:57:54'),
(1, 11, 513, '2017-07-27 16:57:55'),
(1, 12, 514, '2017-07-27 17:11:49'),
(1, 13, 513, '2017-07-27 17:11:52'),
(1, 14, 513, '2017-07-27 17:11:52'),
(1, 15, 513, '2017-07-27 17:11:53'),
(1, 16, 513, '2017-07-27 17:11:53'),
(1, 17, 513, '2017-07-27 17:11:54'),
(1, 18, 513, '2017-07-27 17:11:54'),
(1, 19, 513, '2017-07-27 17:11:55'),
(1, 20, 513, '2017-07-27 17:11:55'),
(1, 21, 513, '2017-07-27 17:11:56'),
(1, 22, 513, '2017-07-27 17:11:56'),
(1, 23, 513, '2017-07-27 17:11:57'),
(1, 24, 513, '2017-07-27 17:11:57'),
(1, 25, 515, '2017-07-27 17:12:07'),
(1, 26, 513, '2017-07-27 21:45:05'),
(1, 27, 513, '2017-07-27 21:45:05'),
(1, 28, 513, '2017-07-27 21:45:06'),
(1, 29, 513, '2017-07-27 21:45:06'),
(1, 30, 513, '2017-07-27 21:45:07'),
(1, 31, 513, '2017-07-27 21:45:07'),
(1, 32, 513, '2017-07-27 21:45:08'),
(1, 33, 513, '2017-07-27 21:45:08'),
(1, 34, 513, '2017-07-27 21:45:22'),
(1, 35, 513, '2017-07-27 21:45:22'),
(1, 36, 513, '2017-07-27 21:45:23'),
(1, 37, 513, '2017-07-27 21:45:23'),
(1, 38, 513, '2017-07-27 21:45:24'),
(1, 39, 513, '2017-07-27 21:45:24'),
(1, 40, 513, '2017-07-27 21:45:25'),
(1, 41, 513, '2017-07-27 21:45:25'),
(1, 42, 513, '2017-07-27 21:45:26'),
(1, 43, 514, '2017-07-29 09:06:53'),
(1, 44, 513, '2017-07-29 09:07:00'),
(1, 45, 513, '2017-07-29 09:07:00'),
(1, 46, 513, '2017-07-29 09:07:01'),
(1, 47, 513, '2017-07-29 09:07:01');

-- --------------------------------------------------------

--
-- Table structure for table `icmphdr`
--

CREATE TABLE IF NOT EXISTS `icmphdr` (
  `sid` int(10) unsigned NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `icmp_type` tinyint(3) unsigned NOT NULL,
  `icmp_code` tinyint(3) unsigned NOT NULL,
  `icmp_csum` smallint(5) unsigned DEFAULT NULL,
  `icmp_id` smallint(5) unsigned DEFAULT NULL,
  `icmp_seq` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`sid`,`cid`),
  KEY `icmp_type` (`icmp_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `icmphdr`
--

INSERT INTO `icmphdr` (`sid`, `cid`, `icmp_type`, `icmp_code`, `icmp_csum`, `icmp_id`, `icmp_seq`) VALUES
(1, 1, 8, 0, 18802, 13289, 1),
(1, 2, 0, 0, 20850, 13289, 1),
(1, 3, 8, 0, 55923, 13289, 2),
(1, 4, 0, 0, 57971, 13289, 2),
(1, 5, 8, 0, 55666, 13289, 3),
(1, 6, 0, 0, 57714, 13289, 3),
(1, 7, 8, 0, 63857, 13289, 4),
(1, 8, 0, 0, 370, 13289, 4),
(1, 9, 8, 0, 10353, 13289, 5),
(1, 10, 0, 0, 12401, 13289, 5),
(1, 11, 8, 0, 49263, 13289, 6),
(1, 13, 8, 0, 38877, 14436, 1),
(1, 14, 0, 0, 40925, 14436, 1),
(1, 15, 8, 0, 10202, 14436, 2),
(1, 16, 0, 0, 12250, 14436, 2),
(1, 17, 8, 0, 13273, 14436, 3),
(1, 18, 0, 0, 15321, 14436, 3),
(1, 19, 8, 0, 64727, 14436, 4),
(1, 20, 0, 0, 1240, 14436, 4),
(1, 21, 8, 0, 22995, 14436, 5),
(1, 22, 0, 0, 25043, 14436, 5),
(1, 23, 8, 0, 57295, 14436, 6),
(1, 24, 0, 0, 59343, 14436, 6),
(1, 26, 8, 0, 10021, 3590, 3778),
(1, 27, 0, 0, 12069, 3590, 3778),
(1, 28, 8, 0, 9510, 3590, 3779),
(1, 29, 0, 0, 11558, 3590, 3779),
(1, 30, 8, 0, 52002, 3590, 3780),
(1, 31, 0, 0, 54050, 3590, 3780),
(1, 32, 8, 0, 46880, 3590, 3781),
(1, 33, 0, 0, 48928, 3590, 3781),
(1, 34, 8, 0, 48523, 11248, 1),
(1, 35, 0, 0, 50571, 11248, 1),
(1, 36, 8, 0, 4483, 11248, 2),
(1, 37, 0, 0, 6531, 11248, 2),
(1, 38, 8, 0, 40059, 11248, 3),
(1, 39, 0, 0, 42107, 11248, 3),
(1, 40, 8, 0, 25205, 11248, 4),
(1, 41, 0, 0, 27253, 11248, 4),
(1, 42, 8, 0, 50287, 11248, 5),
(1, 44, 8, 0, 55331, 26059, 1),
(1, 45, 0, 0, 57379, 26059, 1),
(1, 46, 8, 0, 53028, 26059, 2),
(1, 47, 0, 0, 55076, 26059, 2);

-- --------------------------------------------------------

--
-- Table structure for table `iphdr`
--

CREATE TABLE IF NOT EXISTS `iphdr` (
  `sid` int(10) unsigned NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `ip_src` int(10) unsigned NOT NULL,
  `ip_dst` int(10) unsigned NOT NULL,
  `ip_ver` tinyint(3) unsigned DEFAULT NULL,
  `ip_hlen` tinyint(3) unsigned DEFAULT NULL,
  `ip_tos` tinyint(3) unsigned DEFAULT NULL,
  `ip_len` smallint(5) unsigned DEFAULT NULL,
  `ip_id` smallint(5) unsigned DEFAULT NULL,
  `ip_flags` tinyint(3) unsigned DEFAULT NULL,
  `ip_off` smallint(5) unsigned DEFAULT NULL,
  `ip_ttl` tinyint(3) unsigned DEFAULT NULL,
  `ip_proto` tinyint(3) unsigned NOT NULL,
  `ip_csum` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`sid`,`cid`),
  KEY `ip_src` (`ip_src`),
  KEY `ip_dst` (`ip_dst`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `iphdr`
--

INSERT INTO `iphdr` (`sid`, `cid`, `ip_src`, `ip_dst`, `ip_ver`, `ip_hlen`, `ip_tos`, `ip_len`, `ip_id`, `ip_flags`, `ip_off`, `ip_ttl`, `ip_proto`, `ip_csum`) VALUES
(1, 1, 3232246748, 3232246621, 4, 5, 0, 84, 55043, 0, 0, 64, 1, 35611),
(1, 2, 3232246621, 3232246748, 4, 5, 0, 84, 64259, 0, 0, 64, 1, 42779),
(1, 3, 3232246748, 3232246621, 4, 5, 0, 84, 55115, 0, 0, 64, 1, 35539),
(1, 4, 3232246621, 3232246748, 4, 5, 0, 84, 64465, 0, 0, 64, 1, 42573),
(1, 5, 3232246748, 3232246621, 4, 5, 0, 84, 55149, 0, 0, 64, 1, 35505),
(1, 6, 3232246621, 3232246748, 4, 5, 0, 84, 64595, 0, 0, 64, 1, 42443),
(1, 7, 3232246748, 3232246621, 4, 5, 0, 84, 55291, 0, 0, 64, 1, 35363),
(1, 8, 3232246621, 3232246748, 4, 5, 0, 84, 64813, 0, 0, 64, 1, 42225),
(1, 9, 3232246748, 3232246621, 4, 5, 0, 84, 55390, 0, 0, 64, 1, 35264),
(1, 10, 3232246621, 3232246748, 4, 5, 0, 84, 64842, 0, 0, 64, 1, 42196),
(1, 11, 3232246748, 3232246621, 4, 5, 0, 84, 55622, 0, 0, 64, 1, 35032),
(1, 12, 3232246748, 3232246621, 4, 5, 16, 60, 46454, 0, 0, 64, 6, 44203),
(1, 13, 3232246748, 3232246621, 4, 5, 0, 84, 4919, 0, 0, 64, 1, 20200),
(1, 14, 3232246621, 3232246748, 4, 5, 0, 84, 11648, 0, 0, 64, 1, 29855),
(1, 15, 3232246748, 3232246621, 4, 5, 0, 84, 5040, 0, 0, 64, 1, 20079),
(1, 16, 3232246621, 3232246748, 4, 5, 0, 84, 11778, 0, 0, 64, 1, 29725),
(1, 17, 3232246748, 3232246621, 4, 5, 0, 84, 5251, 0, 0, 64, 1, 19868),
(1, 18, 3232246621, 3232246748, 4, 5, 0, 84, 12029, 0, 0, 64, 1, 29474),
(1, 19, 3232246748, 3232246621, 4, 5, 0, 84, 5436, 0, 0, 64, 1, 19683),
(1, 20, 3232246621, 3232246748, 4, 5, 0, 84, 12042, 0, 0, 64, 1, 29461),
(1, 21, 3232246748, 3232246621, 4, 5, 0, 84, 5451, 0, 0, 64, 1, 19668),
(1, 22, 3232246621, 3232246748, 4, 5, 0, 84, 12175, 0, 0, 64, 1, 29328),
(1, 23, 3232246748, 3232246621, 4, 5, 0, 84, 5467, 0, 0, 64, 1, 19652),
(1, 24, 3232246621, 3232246748, 4, 5, 0, 84, 12241, 0, 0, 64, 1, 29262),
(1, 25, 3232246748, 3232246621, 4, 5, 0, 60, 51983, 0, 0, 64, 6, 38690),
(1, 26, 3232246748, 3494108894, 4, 5, 0, 84, 25393, 0, 0, 64, 1, 15313),
(1, 27, 3494108894, 3232246748, 4, 5, 40, 84, 63146, 0, 0, 53, 1, 62255),
(1, 28, 3232246748, 3494108894, 4, 5, 0, 84, 25602, 0, 0, 64, 1, 15104),
(1, 29, 3494108894, 3232246748, 4, 5, 40, 84, 63323, 0, 0, 53, 1, 62078),
(1, 30, 3232246748, 3494108894, 4, 5, 0, 84, 25738, 0, 0, 64, 1, 14968),
(1, 31, 3494108894, 3232246748, 4, 5, 40, 84, 63428, 0, 0, 53, 1, 61973),
(1, 32, 3232246748, 3494108894, 4, 5, 0, 84, 25797, 0, 0, 64, 1, 14909),
(1, 33, 3494108894, 3232246748, 4, 5, 40, 84, 63609, 0, 0, 53, 1, 61792),
(1, 34, 3232246748, 3232246621, 4, 5, 0, 84, 59606, 0, 0, 64, 1, 31048),
(1, 35, 3232246621, 3232246748, 4, 5, 0, 84, 8061, 0, 0, 64, 1, 33442),
(1, 36, 3232246748, 3232246621, 4, 5, 0, 84, 59645, 0, 0, 64, 1, 31009),
(1, 37, 3232246621, 3232246748, 4, 5, 0, 84, 8261, 0, 0, 64, 1, 33242),
(1, 38, 3232246748, 3232246621, 4, 5, 0, 84, 59859, 0, 0, 64, 1, 30795),
(1, 39, 3232246621, 3232246748, 4, 5, 0, 84, 8266, 0, 0, 64, 1, 33237),
(1, 40, 3232246748, 3232246621, 4, 5, 0, 84, 59921, 0, 0, 64, 1, 30733),
(1, 41, 3232246621, 3232246748, 4, 5, 0, 84, 8344, 0, 0, 64, 1, 33159),
(1, 42, 3232246748, 3232246621, 4, 5, 0, 84, 59946, 0, 0, 64, 1, 30708),
(1, 43, 3232246748, 3232246621, 4, 5, 16, 60, 46506, 0, 0, 64, 6, 44151),
(1, 44, 3232246748, 3232246621, 4, 5, 0, 84, 41348, 0, 0, 64, 1, 49306),
(1, 45, 3232246621, 3232246748, 4, 5, 0, 84, 35335, 0, 0, 64, 1, 6168),
(1, 46, 3232246748, 3232246621, 4, 5, 0, 84, 41586, 0, 0, 64, 1, 49068),
(1, 47, 3232246621, 3232246748, 4, 5, 0, 84, 35404, 0, 0, 64, 1, 6099);

-- --------------------------------------------------------

--
-- Table structure for table `opt`
--

CREATE TABLE IF NOT EXISTS `opt` (
  `sid` int(10) unsigned NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `optid` int(10) unsigned NOT NULL,
  `opt_proto` tinyint(3) unsigned NOT NULL,
  `opt_code` tinyint(3) unsigned NOT NULL,
  `opt_len` smallint(6) DEFAULT NULL,
  `opt_data` text,
  PRIMARY KEY (`sid`,`cid`,`optid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `opt`
--

INSERT INTO `opt` (`sid`, `cid`, `optid`, `opt_proto`, `opt_code`, `opt_len`, `opt_data`) VALUES
(1, 12, 0, 6, 2, 2, '05B4'),
(1, 12, 2, 6, 8, 8, '006861F100000000'),
(1, 12, 4, 6, 3, 1, '07'),
(1, 25, 0, 6, 2, 2, '05B4'),
(1, 25, 2, 6, 8, 8, '0068735900000000'),
(1, 25, 4, 6, 3, 1, '07'),
(1, 43, 0, 6, 2, 2, '05B4'),
(1, 43, 2, 6, 8, 8, '011599F300000000'),
(1, 43, 4, 6, 3, 1, '07');

-- --------------------------------------------------------

--
-- Table structure for table `reference`
--

CREATE TABLE IF NOT EXISTS `reference` (
  `ref_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ref_system_id` int(10) unsigned NOT NULL,
  `ref_tag` text NOT NULL,
  PRIMARY KEY (`ref_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `reference_system`
--

CREATE TABLE IF NOT EXISTS `reference_system` (
  `ref_system_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ref_system_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ref_system_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `schema`
--

CREATE TABLE IF NOT EXISTS `schema` (
  `vseq` int(10) unsigned NOT NULL,
  `ctime` datetime NOT NULL,
  PRIMARY KEY (`vseq`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schema`
--

INSERT INTO `schema` (`vseq`, `ctime`) VALUES
(107, '2017-07-27 16:54:58');

-- --------------------------------------------------------

--
-- Table structure for table `sensor`
--

CREATE TABLE IF NOT EXISTS `sensor` (
  `sid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hostname` text,
  `interface` text,
  `filter` text,
  `detail` tinyint(4) DEFAULT NULL,
  `encoding` tinyint(4) DEFAULT NULL,
  `last_cid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `sensor`
--

INSERT INTO `sensor` (`sid`, `hostname`, `interface`, `filter`, `detail`, `encoding`, `last_cid`) VALUES
(1, 'eth0', 'NULL', NULL, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `signature`
--

CREATE TABLE IF NOT EXISTS `signature` (
  `sig_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sig_name` varchar(255) NOT NULL,
  `sig_class_id` int(10) unsigned NOT NULL,
  `sig_priority` int(10) unsigned DEFAULT NULL,
  `sig_rev` int(10) unsigned DEFAULT NULL,
  `sig_sid` int(10) unsigned DEFAULT NULL,
  `sig_gid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`sig_id`),
  KEY `sign_idx` (`sig_name`(20)),
  KEY `sig_class_id_idx` (`sig_class_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=516 ;

--
-- Dumping data for table `signature`
--

INSERT INTO `signature` (`sig_id`, `sig_name`, `sig_class_id`, `sig_priority`, `sig_rev`, `sig_sid`, `sig_gid`) VALUES
(1, 'dnp3: DNP3 Application-Layer Fragment uses a reserved function code.', 0, 3, 1, 6, 145),
(2, 'dnp3: DNP3 Link-Layer Frame uses a reserved address.', 0, 3, 1, 5, 145),
(3, 'dnp3: DNP3 Reassembly Buffer was cleared without reassembling a complete message.', 0, 3, 1, 4, 145),
(4, 'dnp3: DNP3 Transport-Layer Segment was dropped during reassembly.', 0, 3, 1, 3, 145),
(5, 'dnp3: DNP3 Link-Layer Frame was dropped.', 0, 3, 1, 2, 145),
(6, 'dnp3: DNP3 Link-Layer Frame contains bad CRC.', 0, 3, 1, 1, 145),
(7, 'modbus: Reserved Modbus function code in use.', 0, 3, 1, 3, 144),
(8, 'modbus: Modbus protocol ID is non-zero.', 0, 3, 1, 2, 144),
(9, 'modbus: Length in Modbus MBAP header does not match the length needed for the given Modbus function.', 0, 3, 1, 1, 144),
(10, 'gtp: Information elements are out of order', 0, 3, 1, 3, 143),
(11, 'gtp: Information element length is invalid', 0, 3, 1, 2, 143),
(12, 'gtp: Message length is invalid', 0, 3, 1, 1, 143),
(13, 'pop: Unix-to-Unix Decoding failed', 0, 3, 1, 7, 142),
(14, 'pop: Non-Encoded MIME attachment Extraction failed', 0, 3, 1, 6, 142),
(15, 'pop: Quoted-Printable Decoding failed', 0, 3, 1, 5, 142),
(16, 'pop: Base64 Decoding failed', 0, 3, 1, 4, 142),
(17, 'pop: No memory available for decoding. Memcap exceeded.', 0, 3, 1, 3, 142),
(18, 'pop: Unknown POP3 response', 0, 3, 1, 2, 142),
(19, 'pop: Unknown POP3 command', 0, 3, 1, 1, 142),
(20, 'imap: Unix-to-Unix Decoding failed', 0, 3, 1, 7, 141),
(21, 'imap: Non-Encoded MIME attachment Extraction failed', 0, 3, 1, 6, 141),
(22, 'imap: Quoted-Printable Decoding failed', 0, 3, 1, 5, 141),
(23, 'imap: Base64 Decoding failed', 0, 3, 1, 4, 141),
(24, 'imap: No memory available for decoding. Memcap exceeded.', 0, 3, 1, 3, 141),
(25, 'imap: Unknown IMAP4 response', 0, 3, 1, 2, 141),
(26, 'imap: Unknown IMAP4 command', 0, 3, 1, 1, 141),
(27, 'sip: Maximum dialogs in a session reached', 0, 3, 1, 27, 140),
(28, 'sip: The method is unknown', 0, 3, 1, 26, 140),
(29, 'sip: Mismatch in Method of request and the CSEQ header', 0, 3, 1, 25, 140),
(30, 'sip: SIP version other than 2.0, 1.0, and 1.1 are invalid', 0, 3, 1, 24, 140),
(31, 'sip: Empty Content type', 0, 3, 1, 23, 140),
(32, 'sip: Response status code is not a 3 digit number', 0, 3, 1, 22, 140),
(33, 'sip: Illegal session information modification', 0, 3, 1, 21, 140),
(34, 'sip: Invite replay attack', 0, 3, 1, 20, 140),
(35, 'sip: Request name is invalid', 0, 3, 1, 19, 140),
(36, 'sip: Content length mismatch', 0, 3, 1, 18, 140),
(37, 'sip: Multiple SIP messages in a packet', 0, 3, 1, 17, 140),
(38, 'sip: Content length is too large or negative', 0, 3, 1, 16, 140),
(39, 'sip: Contact is too long', 0, 3, 1, 15, 140),
(40, 'sip: Empty Contact', 0, 3, 1, 14, 140),
(41, 'sip: Via header is too long', 0, 3, 1, 13, 140),
(42, 'sip: Empty Via header', 0, 3, 1, 12, 140),
(43, 'sip: To header is too long', 0, 3, 1, 11, 140),
(44, 'sip: Empty To header', 0, 3, 1, 10, 140),
(45, 'sip: From header is too long', 0, 3, 1, 9, 140),
(46, 'sip: Empty From header', 0, 3, 1, 8, 140),
(47, 'sip: Request name in CSeq is too long', 0, 3, 1, 7, 140),
(48, 'sip: CSeq number is too large or negative', 0, 3, 1, 6, 140),
(49, 'sip: Call-Id is too long', 0, 3, 1, 5, 140),
(50, 'sip: Empty call-Id', 0, 3, 1, 4, 140),
(51, 'sip: URI is too long', 0, 3, 1, 3, 140),
(52, 'sip: Empty request URI', 0, 3, 1, 2, 140),
(53, 'sip: Maximum sessions reached', 0, 3, 1, 1, 140),
(54, 'sensitive_data: sensitive data global threshold exceeded', 0, 3, 1, 1, 139),
(55, 'sensitive_data: sensitive data - U.S. phone numbers', 0, 3, 1, 6, 138),
(56, 'sensitive_data: sensitive data - eMail addresses', 0, 3, 1, 5, 138),
(57, 'sensitive_data: sensitive data - U.S. social security numbers without dashes', 0, 3, 1, 4, 138),
(58, 'sensitive_data: sensitive data - U.S. social security numbers with dashes', 0, 3, 1, 3, 138),
(59, 'sensitive_data: sensitive data - Credit card numbers', 0, 3, 1, 2, 138),
(60, 'spp_ssl: Large Heartbeat Response Detected', 0, 3, 1, 4, 137),
(61, 'spp_ssl: Heartbeat Read Overrun Attempt Detected', 0, 3, 1, 3, 137),
(62, 'spp_ssl: Invalid Server HELLO without Client HELLO Detected', 0, 3, 1, 2, 137),
(63, 'spp_ssl: Invalid Client HELLO after Server HELLO Detected', 0, 3, 1, 1, 137),
(64, 'reputation: Packet is whitelisted', 0, 3, 1, 2, 136),
(65, 'reputation: Packet is blacklisted', 0, 3, 1, 1, 136),
(66, 'internal: session cleared', 0, 3, 1, 3, 135),
(67, 'internal: session established', 0, 3, 1, 2, 135),
(68, 'internal: syn received', 0, 3, 1, 1, 135),
(69, 'ppm: packet aborted', 0, 3, 1, 3, 134),
(70, 'ppm: rule tree enabled', 0, 3, 1, 2, 134),
(71, 'ppm: rule tree disabled', 0, 3, 1, 1, 134),
(72, 'dcerpc2: SMB - Nextcommand specified in SMB2 header is beyond payload boundary', 0, 3, 1, 59, 133),
(73, 'dcerpc2: SMB - File offset provided is greater than file size specified', 0, 3, 1, 58, 133),
(74, 'dcerpc2: SMB - Client attempted to create or set a file''s attributes to readonly/hidden/system', 0, 3, 1, 57, 133),
(75, 'dcerpc2: SMB - Client attempted multiple dialect negotiations on session', 0, 3, 1, 56, 133),
(76, 'dcerpc2: SMB - Invalid setup count', 0, 3, 1, 55, 133),
(77, 'dcerpc2: SMB - Unusual command used', 0, 3, 1, 54, 133),
(78, 'dcerpc2: SMB - Deprecated command used', 0, 3, 1, 53, 133),
(79, 'dcerpc2: SMB - Deprecated dialect negotiated', 0, 3, 1, 52, 133),
(80, 'dcerpc2: SMB - Outstanding requests with the same MID', 0, 3, 1, 51, 133),
(81, 'dcerpc2: SMB - Maximum number of outstanding requests exceeded', 0, 3, 1, 50, 133),
(82, 'dcerpc2: SMB - Data count mismatch', 0, 3, 1, 49, 133),
(83, 'dcerpc2: SMB - Zero data count', 0, 3, 1, 48, 133),
(84, 'dcerpc2: Connectionless DCE/RPC - Bad sequence number', 0, 3, 1, 43, 133),
(85, 'dcerpc2: Connectionless DCE/RPC - Data length less than header size', 0, 3, 1, 42, 133),
(86, 'dcerpc2: Connectionless DCE/RPC - Invalid pdu type', 0, 3, 1, 41, 133),
(87, 'dcerpc2: Connectionless DCE/RPC - Invalid major version', 0, 3, 1, 40, 133),
(88, 'dcerpc2: Connection-oriented DCE/RPC - Context id of non first/last fragment different from context id established for fragmented request', 0, 3, 1, 39, 133),
(89, 'dcerpc2: Connection-oriented DCE/RPC - Opnum of non first/last fragment different from opnum established for fragmented request', 0, 3, 1, 38, 133),
(90, 'dcerpc2: Connection-oriented DCE/RPC - Call id of non first/last fragment different from call id established for fragmented request', 0, 3, 1, 37, 133),
(91, 'dcerpc2: Connection-oriented DCE/RPC - Alter Context byte order different from Bind', 0, 3, 1, 36, 133),
(92, 'dcerpc2: Connection-oriented DCE/RPC - Fragment length greater than maximum negotiated fragment transmit size', 0, 3, 1, 35, 133),
(93, 'dcerpc2: Connection-oriented DCE/RPC - Fragment length on non-last fragment less than maximum negotiated fragment transmit size for client', 0, 3, 1, 34, 133),
(94, 'dcerpc2: Connection-oriented DCE/RPC - No transfer syntaxes specified', 0, 3, 1, 33, 133),
(95, 'dcerpc2: Connection-oriented DCE/RPC - No context items specified', 0, 3, 1, 32, 133),
(96, 'dcerpc2: Connection-oriented DCE/RPC - Remaining fragment length less than size needed', 0, 3, 1, 31, 133),
(97, 'dcerpc2: Connection-oriented DCE/RPC - Fragment length less than header size', 0, 3, 1, 30, 133),
(98, 'dcerpc2: Connection-oriented DCE/RPC - Invalid pdu type', 0, 3, 1, 29, 133),
(99, 'dcerpc2: Connection-oriented DCE/RPC - Invalid minor version', 0, 3, 1, 28, 133),
(100, 'dcerpc2: Connection-oriented DCE/RPC - Invalid major version', 0, 3, 1, 27, 133),
(101, 'dcerpc2: SMB - Invalid share access', 0, 3, 1, 26, 133),
(102, 'dcerpc2: SMB - Chained/Compounded open pipe followed by close pipe', 0, 3, 1, 25, 133),
(103, 'dcerpc2: SMB - Chained/Compounded tree connect followed by tree disconnect', 0, 3, 1, 24, 133),
(104, 'dcerpc2: SMB - Chained/Compounded login followed by logoff', 0, 3, 1, 23, 133),
(105, 'dcerpc2: SMB - Multiple chained tree connect requests', 0, 3, 1, 22, 133),
(106, 'dcerpc2: SMB - Multiple chained login requests', 0, 3, 1, 21, 133),
(107, 'dcerpc2: SMB - Excessive command chaining', 0, 3, 1, 20, 133),
(108, 'dcerpc2: SMB - Excessive Read requests with pending Read responses', 0, 3, 1, 19, 133),
(109, 'dcerpc2: SMB - Excessive Tree Connect requests with pending Tree Connect responses', 0, 3, 1, 18, 133),
(110, 'dcerpc2: SMB - Invalid command data size for byte count', 0, 3, 1, 17, 133),
(111, 'dcerpc2: SMB - Byte count less than command data size', 0, 3, 1, 16, 133),
(112, 'dcerpc2: SMB - Total data sent greater than command total data expected', 0, 3, 1, 15, 133),
(113, 'dcerpc2: SMB - Remaining total data count less than this command data size', 0, 3, 1, 14, 133),
(114, 'dcerpc2: SMB - Remaining NetBIOS data length less than command data size', 0, 3, 1, 13, 133),
(115, 'dcerpc2: SMB - Remaining NetBIOS data length less than command byte count', 0, 3, 1, 12, 133),
(116, 'dcerpc2: SMB - Remaining NetBIOS data length less than command length', 0, 3, 1, 11, 133),
(117, 'dcerpc2: SMB - NetBIOS data length less than SMB header length', 0, 3, 1, 10, 133),
(118, 'dcerpc2: SMB - Zero total data count in command', 0, 3, 1, 9, 133),
(119, 'dcerpc2: SMB - Bad AndX or data offset in command', 0, 3, 1, 8, 133),
(120, 'dcerpc2: SMB - Bad format type for command', 0, 3, 1, 7, 133),
(121, 'dcerpc2: SMB - Bad byte count for command', 0, 3, 1, 6, 133),
(122, 'dcerpc2: SMB - Bad word count or structure size for command', 0, 3, 1, 5, 133),
(123, 'dcerpc2: SMB - Bad SMB Id (not "\\xffSMB" for SMB1 or not "\\xfeSMB" for SMB2)', 0, 3, 1, 4, 133),
(124, 'dcerpc2: SMB - Bad SMB message type', 0, 3, 1, 3, 133),
(125, 'dcerpc2: SMB - Bad NetBIOS Session Service session type', 0, 3, 1, 2, 133),
(126, 'dcerpc2: Memory cap exceeded', 0, 3, 1, 1, 133),
(127, 'dns: Client RData TXT Overflow', 0, 3, 1, 3, 131),
(128, 'dns: Experimental DNS RData Type', 0, 3, 1, 2, 131),
(129, 'dns: Obsolete DNS RData Type', 0, 3, 1, 1, 131),
(130, 'dcerpc: Maximum memory usage reached', 0, 3, 1, 1, 130),
(131, 'stream5: TCP session without 3-way handshake', 0, 3, 1, 20, 129),
(132, 'stream5: TCP window closed before receiving data', 0, 3, 1, 19, 129),
(133, 'stream5: Data sent on stream after TCP Reset received', 0, 3, 1, 18, 129),
(134, 'stream5: ACK number is greater than prior FIN', 0, 3, 1, 17, 129),
(135, 'stream5: FIN number is greater than prior FIN', 0, 3, 1, 16, 129),
(136, 'stream5: Reset outside window', 0, 3, 1, 15, 129),
(137, 'stream5: TCP Timestamp is missing', 0, 3, 1, 14, 129),
(138, 'stream5: TCP 4-way handshake detected', 0, 3, 1, 13, 129),
(139, 'stream5: TCP Small Segment Threshold Exceeded', 0, 3, 1, 12, 129),
(140, 'stream5: TCP Data with no TCP Flags set', 0, 3, 1, 11, 129),
(141, 'stream5: TCP Server possibly hijacked, different Ethernet Address', 0, 3, 1, 10, 129),
(142, 'stream5: TCP Client possibly hijacked, different Ethernet Address', 0, 3, 1, 9, 129),
(143, 'stream5: Data sent on stream after TCP Reset', 0, 3, 1, 8, 129),
(144, 'stream5: Limit on number of overlapping TCP packets reached', 0, 3, 1, 7, 129),
(145, 'stream5: Window size (after scaling) larger than policy allows', 0, 3, 1, 6, 129),
(146, 'stream5: Bad segment, overlap adjusted size less than/equal 0', 0, 3, 1, 5, 129),
(147, 'stream5: TCP Timestamp is outside of PAWS window', 0, 3, 1, 4, 129),
(148, 'stream5: Data sent on stream not accepting data', 0, 3, 1, 3, 129),
(149, 'stream5: Data on SYN packet', 0, 3, 1, 2, 129),
(150, 'stream5: SYN on established session', 0, 3, 1, 1, 129),
(151, 'ssh: Failed to detect SSH version string', 0, 3, 1, 7, 128),
(152, 'ssh: Payload size incorrect for the given payload', 0, 3, 1, 6, 128),
(153, 'ssh: Bad message direction', 0, 3, 1, 5, 128),
(154, 'ssh: Protocol mismatch', 0, 3, 1, 4, 128),
(155, 'ssh: Server version string overflow', 0, 3, 1, 3, 128),
(156, 'ssh: SSH1 CRC32 exploit', 0, 3, 1, 2, 128),
(157, 'ssh: Gobbles exploit', 0, 3, 1, 1, 128),
(158, 'telnet_pp: Subnegotiation Begin without matching Subnegotiation End', 0, 3, 1, 3, 126),
(159, 'telnet_pp: Telnet data encrypted', 0, 3, 1, 2, 126),
(160, 'telnet_pp: Telnet consecutive AYT overflow', 0, 3, 1, 1, 126),
(161, 'ftp_pp: Evasive Telnet command on FTP command channel', 0, 3, 1, 9, 125),
(162, 'ftp_pp: FTP bounce attack', 0, 3, 1, 8, 125),
(163, 'ftp_pp: FTP command channel encrypted', 0, 3, 1, 7, 125),
(164, 'ftp_pp: FTP response length overflow', 0, 3, 1, 6, 125),
(165, 'ftp_pp: Possible string format attempt in FTP command/parameter', 0, 3, 1, 5, 125),
(166, 'ftp_pp: FTP malformed parameter', 0, 3, 1, 4, 125),
(167, 'ftp_pp: FTP parameter length overflow', 0, 3, 1, 3, 125),
(168, 'ftp_pp: Invalid FTP command', 0, 3, 1, 2, 125),
(169, 'ftp_pp: Telnet command on FTP command channel', 0, 3, 1, 1, 125),
(170, 'smtp: Cyrus SASL authentication attack', 0, 3, 1, 14, 124),
(171, 'smtp: Unix-to-Unix Decoding failed', 0, 3, 1, 13, 124),
(172, 'smtp: Non-Encoded MIME attachment Extraction failed', 0, 3, 1, 12, 124),
(173, 'smtp: Quoted-Printable Decoding failed', 0, 3, 1, 11, 124),
(174, 'smtp: Base64 Decoding failed', 0, 3, 1, 10, 124),
(175, 'smtp: No memory available for decoding. Max Mime Mem exceeded.', 0, 3, 1, 9, 124),
(176, 'smtp: Attempted X-Link2State command buffer overflow', 0, 3, 1, 8, 124),
(177, 'smtp: Attempted header name buffer overflow', 0, 3, 1, 7, 124),
(178, 'smtp: Illegal command', 0, 3, 1, 6, 124),
(179, 'smtp: Unknown command', 0, 3, 1, 5, 124),
(180, 'smtp: Attempted specific command buffer overflow', 0, 3, 1, 4, 124),
(181, 'smtp: Attempted response buffer overflow', 0, 3, 1, 3, 124),
(182, 'smtp: Attempted data header buffer overflow', 0, 3, 1, 2, 124),
(183, 'smtp: Attempted command buffer overflow', 0, 3, 1, 1, 124),
(184, 'frag3: Fragments smaller than configured min_fragment_length', 0, 3, 1, 13, 123),
(185, 'frag3: Number of overlapping fragments exceed configured limit', 0, 3, 1, 12, 123),
(186, 'frag3: TTL value less than configured minimum, not using for reassembly', 0, 3, 1, 11, 123),
(187, 'frag3: Bogus fragmentation packet. Possible BSD attack', 0, 3, 1, 10, 123),
(188, 'frag3: IPv6 BSD mbufs remote kernel buffer overflow', 0, 3, 1, 9, 123),
(189, 'frag3: Fragmentation overlap', 0, 3, 1, 8, 123),
(190, 'frag3: Bad fragment size, packet size is greater than 65536', 0, 3, 1, 7, 123),
(191, 'frag3: Bad fragment size, packet size is negative', 0, 3, 1, 6, 123),
(192, 'frag3: Zero-byte fragment', 0, 3, 1, 5, 123),
(193, 'frag3: Fragment packet ends after defragmented packet', 0, 3, 1, 4, 123),
(194, 'frag3: Short fragment, possible DoS attempt', 0, 3, 1, 3, 123),
(195, 'frag3: Teardrop attack', 0, 3, 1, 2, 123),
(196, 'frag3: IP Options on fragmented packet', 0, 3, 1, 1, 123),
(197, 'portscan: Open Port', 0, 3, 1, 27, 122),
(198, 'portscan: ICMP Filtered Sweep', 0, 3, 1, 26, 122),
(199, 'portscan: ICMP Sweep', 0, 3, 1, 25, 122),
(200, 'portscan: UDP Filtered Distributed Portscan', 0, 3, 1, 24, 122),
(201, 'portscan: UDP Filtered Portsweep', 0, 3, 1, 23, 122),
(202, 'portscan: UDP Filtered Decoy Portscan', 0, 3, 1, 22, 122),
(203, 'portscan: UDP Filtered Portscan', 0, 3, 1, 21, 122),
(204, 'portscan: UDP Distributed Portscan', 0, 3, 1, 20, 122),
(205, 'portscan: UDP Portsweep', 0, 3, 1, 19, 122),
(206, 'portscan: UDP Decoy Portscan', 0, 3, 1, 18, 122),
(207, 'portscan: UDP Portscan', 0, 3, 1, 17, 122),
(208, 'portscan: IP Filtered Distributed Protocol Scan', 0, 3, 1, 16, 122),
(209, 'portscan: IP Filtered Protocol Sweep', 0, 3, 1, 15, 122),
(210, 'portscan: IP Filtered Decoy Protocol Scan', 0, 3, 1, 14, 122),
(211, 'portscan: IP Filtered Protocol Scan', 0, 3, 1, 13, 122),
(212, 'portscan: IP Distributed Protocol Scan', 0, 3, 1, 12, 122),
(213, 'portscan: IP Protocol Sweep', 0, 3, 1, 11, 122),
(214, 'portscan: IP Decoy Protocol Scan', 0, 3, 1, 10, 122),
(215, 'portscan: IP Protocol Scan', 0, 3, 1, 9, 122),
(216, 'portscan: TCP Filtered Distributed Portscan', 0, 3, 1, 8, 122),
(217, 'portscan: TCP Filtered Portsweep', 0, 3, 1, 7, 122),
(218, 'portscan: TCP Filtered Decoy Portscan', 0, 3, 1, 6, 122),
(219, 'portscan: TCP Filtered Portscan', 0, 3, 1, 5, 122),
(220, 'portscan: TCP Distributed Portscan', 0, 3, 1, 4, 122),
(221, 'portscan: TCP Portsweep', 0, 3, 1, 3, 122),
(222, 'portscan: TCP Decoy Portscan', 0, 3, 1, 2, 122),
(223, 'portscan: TCP Portscan', 0, 3, 1, 1, 122),
(224, 'flow-portscan: Sliding Scale Talker Limit Exceeded', 0, 3, 1, 4, 121),
(225, 'flow-portscan: Fixed Scale Talker Limit Exceeded', 0, 3, 1, 3, 121),
(226, 'flow-portscan: Sliding Scale Scanner Limit Exceeded', 0, 3, 1, 2, 121),
(227, 'flow-portscan: Fixed Scale Scanner Limit Exceeded', 0, 3, 1, 1, 121),
(228, 'http_inspect: PROTOCOL-OTHER HTTP server response before client request', 0, 3, 1, 18, 120),
(229, 'http_inspect: PDF FILE PARSE FAILURE', 0, 3, 1, 17, 120),
(230, 'http_inspect: PDF FILE CASCADED COMPRESSION', 0, 3, 1, 16, 120),
(231, 'http_inspect: PDF FILE UNSUPPORTED COMPRESSION TYPES', 0, 3, 1, 15, 120),
(232, 'http_inspect: PDF FILE DEFLATE DECOMPRESSION FAILURE', 0, 3, 1, 14, 120),
(233, 'http_inspect: SWF FILE LZMA DECOMPRESSION FAILURE', 0, 3, 1, 13, 120),
(234, 'http_inspect: SWF FILE ZLIB DECOMPRESSION FAILURE', 0, 3, 1, 12, 120),
(235, 'http_inspect: MULTIPLE ENCODINGS WITHIN JAVASCRIPT OBFUSCATED DATA', 0, 3, 1, 11, 120),
(236, 'http_inspect: JAVASCRIPT WHITESPACES EXCEEDS MAX ALLOWED', 0, 3, 1, 10, 120),
(237, 'http_inspect: JAVASCRIPT OBFUSCATION LEVELS EXCEEDS 1', 0, 3, 1, 9, 120),
(238, 'http_inspect: MESSAGE WITH INVALID CONTENT-LENGTH OR CHUNK SIZE', 0, 3, 1, 8, 120),
(239, 'http_inspect: CHUNKED ENCODING - EXCESSIVE CONSECUTIVE SMALL CHUNKS', 0, 3, 1, 7, 120),
(240, 'http_inspect: HTTP RESPONSE GZIP DECOMPRESSION FAILED', 0, 3, 1, 6, 120),
(241, 'http_inspect: HTTP RESPONSE HAS UTF-7 CHARSET', 0, 3, 1, 5, 120),
(242, 'http_inspect: HTTP RESPONSE HAS UTF CHARSET WHICH FAILED TO NORMALIZE', 0, 3, 1, 4, 120),
(243, 'http_inspect: NO CONTENT-LENGTH OR TRANSFER-ENCODING IN HTTP RESPONSE', 0, 3, 1, 3, 120),
(244, 'http_inspect: INVALID STATUS CODE IN HTTP RESPONSE', 0, 3, 1, 2, 120),
(245, 'http_inspect: ANOMALOUS HTTP SERVER ON UNDEFINED HTTP PORT', 0, 3, 1, 1, 120),
(246, 'http_inspect: TOO MANY PIPELINED REQUESTS', 0, 3, 1, 34, 119),
(247, 'http_inspect: UNESCAPED SPACE IN HTTP URI', 0, 3, 1, 33, 119),
(248, 'http_inspect: SIMPLE REQUEST', 0, 3, 1, 32, 119),
(249, 'http_inspect: UNKNOWN METHOD', 0, 3, 1, 31, 119),
(250, 'http_inspect: BOTH TRUE_CLIENT_IP AND XFF HDRS PRESENT', 0, 3, 1, 30, 119),
(251, 'http_inspect: MULTIPLE TRUE IPS IN A SESSION', 0, 3, 1, 29, 119),
(252, 'http_inspect: POST W/O CONTENT-LENGTH OR CHUNKS', 0, 3, 1, 28, 119),
(253, 'http_inspect: CHUNKED ENCODING - EXCESSIVE CONSECUTIVE SMALL CHUNKS', 0, 3, 1, 27, 119),
(254, 'http_inspect: HEADER PARSING SPACE SATURATION', 0, 3, 1, 26, 119),
(255, 'http_inspect: HOSTNAME EXCEEDS 255 CHARACTERS', 0, 3, 1, 25, 119),
(256, 'http_inspect: MULTIPLE HOST HEADERS DETECTED', 0, 3, 1, 24, 119),
(257, 'http_inspect: INVALID IP IN TRUE-CLIENT-IP/XFF HEADER', 0, 3, 1, 23, 119),
(258, 'http_inspect: CHUNK SIZE MISMATCH DETECTED', 0, 3, 1, 22, 119),
(259, 'http_inspect: MULTIPLE CONTENT LENGTH HEADER FIELDS', 0, 3, 1, 21, 119),
(260, 'http_inspect: MAX HEADERS', 0, 3, 1, 20, 119),
(261, 'http_inspect: LONG HEADER', 0, 3, 1, 19, 119),
(262, 'http_inspect: WEBROOT DIRECTORY TRAVERSAL', 0, 3, 1, 18, 119),
(263, 'http_inspect: UNAUTHORIZED PROXY USE DETECTED', 0, 3, 1, 17, 119),
(264, 'http_inspect: OVERSIZE CHUNK ENCODING', 0, 3, 1, 16, 119),
(265, 'http_inspect: OVERSIZE REQUEST-URI DIRECTORY', 0, 3, 1, 15, 119),
(266, 'http_inspect: NON-RFC DEFINED CHAR', 0, 3, 1, 14, 119),
(267, 'http_inspect: NON-RFC HTTP DELIMITER', 0, 3, 1, 13, 119),
(268, 'http_inspect: APACHE WHITESPACE (TAB)', 0, 3, 1, 12, 119),
(269, 'http_inspect: DIRECTORY TRAVERSAL', 0, 3, 1, 11, 119),
(270, 'http_inspect: SELF DIRECTORY TRAVERSAL', 0, 3, 1, 10, 119),
(271, 'http_inspect: IIS BACKSLASH EVASION', 0, 3, 1, 9, 119),
(272, 'http_inspect: MULTI_SLASH ENCODING', 0, 3, 1, 8, 119),
(273, 'http_inspect: IIS UNICODE CODEPOINT ENCODING', 0, 3, 1, 7, 119),
(274, 'http_inspect: UTF-8 ENCODING', 0, 3, 1, 6, 119),
(275, 'http_inspect: BASE36 ENCODING', 0, 3, 1, 5, 119),
(276, 'http_inspect: BARE BYTE UNICODE ENCODING', 0, 3, 1, 4, 119),
(277, 'http_inspect: U ENCODING', 0, 3, 1, 3, 119),
(278, 'http_inspect: DOUBLE DECODING ATTACK', 0, 3, 1, 2, 119),
(279, 'http_inspect: ASCII ENCODING', 0, 3, 1, 1, 119),
(280, 'spp_conversation: Bad IP protocol', 0, 3, 1, 1, 118),
(281, 'spp_portscan2: Portscan detected', 0, 3, 1, 1, 117),
(282, 'snort_decoder: WARNING: truncated FabricPath header', 0, 3, 1, 467, 116),
(283, 'snort_decoder: WARNING: captured < ERSpan Type3 Header Length', 0, 3, 1, 464, 116),
(284, 'snort_decoder: WARNING: captured < ERSpan Type2 Header Length', 0, 3, 1, 463, 116),
(285, 'snort_decoder: WARNING: ERSpan Header version mismatch', 0, 3, 1, 462, 116),
(286, 'snort_decoder: WARNING: Deprecated IPv6 Type 0 Routing Header', 0, 3, 1, 461, 116),
(287, 'snort_decoder: WARNING: ICMPv6 node info query/response packet with a code greater than 2', 0, 3, 1, 460, 116),
(288, 'snort_decoder: WARNING: zero length fragment', 0, 3, 1, 459, 116),
(289, 'snort_decoder: WARNING: bogus fragmentation packet. Possible BSD attack', 0, 3, 1, 458, 116),
(290, 'snort_decoder: WARNING: ICMPv6 packet of type 1 (destination unreachable) with non-RFC 4443 code', 0, 3, 1, 457, 116),
(291, 'snort_decoder: WARNING: too many IPV6 extension headers', 0, 3, 1, 456, 116),
(292, 'snort_decoder: WARNING: IGMP options dos', 0, 3, 1, 455, 116),
(293, 'snort_decoder: WARNING: PGM NAK overflow', 0, 3, 1, 454, 116),
(294, 'snort_decoder: WARNING: IPV6 ISATAP spoof', 0, 3, 1, 453, 116),
(295, 'snort_decoder: WARNING: BAD-TRAFFIC linux ICMP header dos attempt', 0, 3, 1, 452, 116),
(296, 'snort_decoder: WARNING: ICMP PATH MTU denial of service attempt', 0, 3, 1, 451, 116),
(297, 'snort_decoder: WARNING: BAD-TRAFFIC Bad IP protocol', 0, 3, 1, 450, 116),
(298, 'snort_decoder: WARNING: BAD-TRAFFIC Unassigned/Reserved IP protocol', 0, 3, 1, 449, 116),
(299, 'snort_decoder: WARNING: BAD-TRAFFIC IP reserved bit set', 0, 3, 1, 448, 116),
(300, 'snort_decoder: WARNING: BAD-TRAFFIC UDP port 0 traffic', 0, 3, 1, 447, 116),
(301, 'snort_decoder: WARNING: BAD-TRAFFIC TCP port 0 traffic', 0, 3, 1, 446, 116),
(302, 'snort_decoder: WARNING: MISC Large UDP Packet', 0, 3, 1, 445, 116),
(303, 'snort_decoder: WARNING: MISC IP option set', 0, 3, 1, 444, 116),
(304, 'snort_decoder: WARNING: ICMP Destination Unreachable Communication with Destination Network is Administratively Prohibited', 0, 3, 1, 443, 116),
(305, 'snort_decoder: WARNING: ICMP Destination Unreachable Communication with Destination Host is Administratively Prohibited', 0, 3, 1, 442, 116),
(306, 'snort_decoder: WARNING: ICMP Destination Unreachable Communication Administratively Prohibited', 0, 3, 1, 441, 116),
(307, 'snort_decoder: WARNING: Broadscan Smurf Scanner', 0, 3, 1, 440, 116),
(308, 'snort_decoder: WARNING: ICMP Source Quench', 0, 3, 1, 439, 116),
(309, 'snort_decoder: WARNING: ICMP traceroute ipopts', 0, 3, 1, 438, 116),
(310, 'snort_decoder: WARNING: ICMP redirect net', 0, 3, 1, 437, 116),
(311, 'snort_decoder: WARNING: ICMP redirect host', 0, 3, 1, 436, 116),
(312, 'snort_decoder: WARNING: ICMP icmpenum v1.1.1', 0, 3, 1, 435, 116),
(313, 'snort_decoder: WARNING: ICMP PING NMAP', 0, 3, 1, 434, 116),
(314, 'snort_decoder: WARNING: DDOS shaft synflood', 0, 3, 1, 433, 116),
(315, 'snort_decoder: WARNING: ICMP6 packet to multicast address', 0, 3, 1, 432, 116),
(316, 'snort_decoder: WARNING: ICMP6 type not decoded', 0, 3, 1, 431, 116),
(317, 'snort_decoder: WARNING: IPV4 packet both DF and offset set', 0, 3, 1, 430, 116),
(318, 'snort_decoder: WARNING: IPV6 packet has zero hop limit', 0, 3, 1, 429, 116),
(319, 'snort_decoder: WARNING: IPV4 packet below TTL limit', 0, 3, 1, 428, 116),
(320, 'snort_decoder: WARNING: truncated ICMP6 header', 0, 3, 1, 427, 116),
(321, 'snort_decoder: WARNING: truncated ICMP4 header', 0, 3, 1, 426, 116),
(322, 'snort_decoder: WARNING: truncated IP4 header', 0, 3, 1, 425, 116),
(323, 'snort_decoder: WARNING: truncated eth header', 0, 3, 1, 424, 116),
(324, 'snort_decoder: WARNING: TCP has no SYN, ACK, or RST', 0, 3, 1, 423, 116),
(325, 'snort_decoder: WARNING: TCP PDU missing ack for established session', 0, 3, 1, 422, 116),
(326, 'snort_decoder: WARNING: TCP SYN with RST', 0, 3, 1, 421, 116),
(327, 'snort_decoder: WARNING: TCP SYN with FIN', 0, 3, 1, 420, 116),
(328, 'snort_decoder: WARNING: TCP urgent pointer exceeds payload length or no payload', 0, 3, 1, 419, 116),
(329, 'snort_decoder: WARNING: ICMP4 type other', 0, 3, 1, 418, 116),
(330, 'snort_decoder: WARNING: ICMP4 source quence', 0, 3, 1, 417, 116),
(331, 'snort_decoder: WARNING: ICMP4 packet to broadcast dest address', 0, 3, 1, 416, 116),
(332, 'snort_decoder: WARNING: ICMP4 packet to multicast dest address', 0, 3, 1, 415, 116),
(333, 'snort_decoder: WARNING: IPV4 packet to broadcast dest address', 0, 3, 1, 414, 116),
(334, 'snort_decoder: WARNING: IPV4 packet from broadcast source address', 0, 3, 1, 413, 116),
(335, 'snort_decoder: WARNING: IPV4 packet to reserved dest address', 0, 3, 1, 412, 116),
(336, 'snort_decoder: WARNING: IPV4 packet from reserved source address', 0, 3, 1, 411, 116),
(337, 'snort_decoder: WARNING: IPV4 packet from multicast source address', 0, 3, 1, 410, 116),
(338, 'snort_decoder: WARNING: IPV4 packet to ''current net'' dest address', 0, 3, 1, 409, 116),
(339, 'snort_decoder: WARNING: IPV4 packet from ''current net'' source address', 0, 3, 1, 408, 116),
(340, 'snort_decoder: WARNING: IPV4 packet frag offset + length exceed maximum', 0, 3, 1, 407, 116),
(341, 'snort_decoder: WARNING: Invalid IPv6 UDP packet, checksum zero', 0, 3, 1, 406, 116),
(342, 'snort_decoder: WARNING: IPV4 packet with bad frag bits (Both MF and DF set)', 0, 3, 1, 405, 116),
(343, 'snort_decoder: WARNING: IPV4 packet with zero TTL', 0, 3, 1, 404, 116),
(344, 'snort_decoder: WARNING: Bad Traffic SYN to multicast address', 0, 3, 1, 403, 116),
(345, 'snort_decoder: WARNING: DOS NAPTHA Vulnerability Detected', 0, 3, 1, 402, 116),
(346, 'snort_decoder: WARNING: Nmap XMAS Attack Detected', 0, 3, 1, 401, 116),
(347, 'snort_decoder: WARNING: XMAS Attack Detected', 0, 3, 1, 400, 116),
(348, 'snort_decoder: WARNING: GTP header length is invalid', 0, 3, 1, 298, 116),
(349, 'snort_decoder: WARNING: Two or more GTP encapsulation layers are present', 0, 3, 1, 297, 116),
(350, 'snort_decoder: WARNING: IPv6 packet includes out-of-order extension headers', 0, 3, 1, 296, 116),
(351, 'snort_decoder: WARNING: IPv6 header includes an option which is too big for the containing header.', 0, 3, 1, 295, 116),
(352, 'snort_decoder: WARNING: truncated Encapsulated Security Payload (ESP) header', 0, 3, 1, 294, 116),
(353, 'snort_decoder: WARNING: Two or more IP (v4 and/or v6) encapsulation layers present', 0, 3, 1, 293, 116),
(354, 'snort_decoder: WARNING: IPv6 header has destination options followed by a routing header', 0, 3, 1, 292, 116),
(355, 'snort_decoder: WARNING: IPV6 tunneled over IPv4, IPv6 header truncated, possible Linux Kernel attack', 0, 3, 1, 291, 116),
(356, 'snort_decoder: WARNING: ICMPv6 router advertisement packet with the reachable time field set > 1 hour', 0, 3, 1, 290, 116),
(357, 'snort_decoder: WARNING: ICMPv6 router solicitation packet with the reserved field not equal to 0', 0, 3, 1, 289, 116),
(358, 'snort_decoder: WARNING: ICMPv6 router advertisement packet with a code not equal to 0', 0, 3, 1, 288, 116),
(359, 'snort_decoder: WARNING: ICMPv6 router solicitation packet with a code not equal to 0', 0, 3, 1, 287, 116),
(360, 'snort_decoder: WARNING: ICMPv6 packet of type 1 (destination unreachable) with non-RFC 2463 code', 0, 3, 1, 286, 116),
(361, 'snort_decoder: WARNING: ICMPv6 packet of type 2 (message too big) with MTU field < 1280', 0, 3, 1, 285, 116),
(362, 'snort_decoder: WARNING: IPv6 header includes two routing extension headers', 0, 3, 1, 283, 116),
(363, 'snort_decoder: WARNING: IPv6 header includes a routing extension header followed by a hop-by-hop header', 0, 3, 1, 282, 116),
(364, 'snort_decoder: WARNING: IPv6 header includes an invalid value for the "next header" field', 0, 3, 1, 281, 116),
(365, 'snort_decoder: WARNING: IPv6 address includes an unassigned multicast scope value', 0, 3, 1, 280, 116),
(366, 'snort_decoder: WARNING: IPv6 header includes an undefined option type', 0, 3, 1, 279, 116),
(367, 'snort_decoder: WARNING: IPv6 packet with reserved multicast destination address', 0, 3, 1, 278, 116),
(368, 'snort_decoder: WARNING: IPv6 packet with multicast source address', 0, 3, 1, 277, 116),
(369, 'snort_decoder: WARNING: IPv6 packet with destination address ::0', 0, 3, 1, 276, 116),
(370, 'snort_decoder: WARNING: IPV6 dgm len > captured len', 0, 3, 1, 275, 116),
(371, 'snort_decoder: WARNING: IPV6 dgm len < IPV6 Hdr len', 0, 3, 1, 274, 116),
(372, 'snort_decoder: WARNING: IPV6 truncated header', 0, 3, 1, 273, 116),
(373, 'snort_decoder: WARNING: IPV6 truncated extension header', 0, 3, 1, 272, 116),
(374, 'snort_decoder: WARNING: IPv6 header claims to not be IPv6', 0, 3, 1, 271, 116),
(375, 'snort_decoder: WARNING: IPV6 packet exceeded TTL limit', 0, 3, 1, 270, 116),
(376, 'snort_decoder: WARNING: ICMP Original IP Fragmented and Offset Not 0', 0, 3, 1, 255, 116),
(377, 'snort_decoder: WARNING: ICMP Original IP Payload > 576 bytes', 0, 3, 1, 254, 116),
(378, 'snort_decoder: WARNING: ICMP Original IP Payload < 64 bits', 0, 3, 1, 253, 116),
(379, 'snort_decoder: WARNING: ICMP Original Datagram Length < Original IP Header Length', 0, 3, 1, 252, 116),
(380, 'snort_decoder: WARNING: ICMP Original IP Header Not IPv4', 0, 3, 1, 251, 116),
(381, 'snort_decoder: WARNING: ICMP Original IP Header Truncated', 0, 3, 1, 250, 116),
(382, 'snort_decoder: WARNING: Too Many MPLS headers', 0, 3, 1, 176, 116),
(383, 'snort_decoder: WARNING: MPLS Label 4, 5,.. or 15 Appears in Header', 0, 3, 1, 175, 116),
(384, 'snort_decoder: WARNING: Bad use of label 3', 0, 3, 1, 174, 116),
(385, 'snort_decoder: WARNING: MPLS Label 2 Appears in Nonbottom Header', 0, 3, 1, 173, 116),
(386, 'snort_decoder: WARNING: MPLS Label 1 Appears in Bottom Header', 0, 3, 1, 172, 116),
(387, 'snort_decoder: WARNING: MPLS Label 0 Appears in Nonbottom Header', 0, 3, 1, 171, 116),
(388, 'snort_decoder: WARNING: Bad MPLS Frame', 0, 3, 1, 170, 116),
(389, 'snort_decoder: WARNING: GRE Trans header length > payload length', 0, 3, 1, 165, 116),
(390, 'snort_decoder: WARNING: Invalid GRE v.1 PPTP header', 0, 3, 1, 164, 116),
(391, 'snort_decoder: WARNING: Invalid GRE v.0 header', 0, 3, 1, 163, 116),
(392, 'snort_decoder: WARNING: Invalid GRE version', 0, 3, 1, 162, 116),
(393, 'snort_decoder: WARNING: Multiple encapsulations in packet', 0, 3, 1, 161, 116),
(394, 'snort_decoder: WARNING: GRE header length > payload length', 0, 3, 1, 160, 116),
(395, 'snort_decoder: WARNING: Bad Traffic Same Src/Dst IP', 0, 3, 1, 151, 116),
(396, 'snort_decoder: WARNING: Bad Traffic Loopback IP', 0, 3, 1, 150, 116),
(397, 'snort_decoder: WARNING: Bad Token Ring MR Header', 0, 3, 1, 143, 116),
(398, 'snort_decoder: WARNING: Bad Token Ring MRLEN Header', 0, 3, 1, 142, 116),
(399, 'snort_decoder: WARNING: Bad Token Ring ETHLLC Header', 0, 3, 1, 141, 116),
(400, 'snort_decoder: WARNING: Bad Token Ring Header', 0, 3, 1, 140, 116),
(401, 'snort_decoder: WARNING: Bad 802.11 Extra LLC Info', 0, 3, 1, 134, 116),
(402, 'snort_decoder: WARNING: Bad 802.11 LLC header', 0, 3, 1, 133, 116),
(403, 'snort_decoder: WARNING: Bad Extra LLC Info', 0, 3, 1, 132, 116),
(404, 'snort_decoder: WARNING: Bad LLC header', 0, 3, 1, 131, 116),
(405, 'snort_decoder: WARNING: Bad VLAN Frame', 0, 3, 1, 130, 116),
(406, 'snort_decoder: WARNING: Bad PPPOE frame detected', 0, 3, 1, 120, 116),
(407, 'snort_decoder: WARNING: EAP Header Truncated', 0, 3, 1, 112, 116),
(408, 'snort_decoder: WARNING: EAP Key Truncated', 0, 3, 1, 111, 116),
(409, 'snort_decoder: WARNING: Truncated EAP Header', 0, 3, 1, 110, 116),
(410, 'snort_decoder: WARNING: Truncated ARP Packet', 0, 3, 1, 109, 116),
(411, 'snort_decoder: WARNING: Unknown Datagram decoding problem', 0, 3, 1, 108, 116),
(412, 'snort_decoder: WARNING: ICMP Address Header Truncated', 0, 3, 1, 107, 116),
(413, 'snort_decoder: WARNING: ICMP Timestamp Header Truncated', 0, 3, 1, 106, 116),
(414, 'snort_decoder: WARNING: ICMP Header Truncated', 0, 3, 1, 105, 116),
(415, 'snort_decoder: WARNING: Long UDP packet, length field < payload length', 0, 3, 1, 98, 116),
(416, 'snort_decoder: WARNING: Short UDP packet, length field > payload length', 0, 3, 1, 97, 116),
(417, 'snort_decoder: WARNING: Invalid UDP header, length field < 8', 0, 3, 1, 96, 116),
(418, 'snort_decoder: WARNING: Truncated UDP Header', 0, 3, 1, 95, 116),
(419, 'snort_decoder: WARNING: TCP Window Scale Option Scale Invalid (> 14)', 0, 3, 1, 59, 116),
(420, 'snort_decoder: WARNING: Experimental TCP options', 0, 3, 1, 58, 116),
(421, 'snort_decoder: WARNING: Obsolete TCP options', 0, 3, 1, 57, 116),
(422, 'snort_decoder: WARNING: T/TCP Detected', 0, 3, 1, 56, 116),
(423, 'snort_decoder: WARNING: Truncated Tcp Options', 0, 3, 1, 55, 116),
(424, 'snort_decoder: WARNING: Tcp Options found with bad lengths', 0, 3, 1, 54, 116),
(425, 'snort_decoder: WARNING: TCP Data Offset is longer than payload', 0, 3, 1, 47, 116),
(426, 'snort_decoder: WARNING: TCP Data Offset is less than 5', 0, 3, 1, 46, 116),
(427, 'snort_decoder: WARNING: TCP packet len is smaller than 20 bytes', 0, 3, 1, 45, 116),
(428, 'snort_decoder: WARNING: IP dgm len > captured len', 0, 3, 1, 6, 116),
(429, 'snort_decoder: WARNING: Truncated IPv4 Options', 0, 3, 1, 5, 116),
(430, 'snort_decoder: WARNING: Bad IPv4 Options', 0, 3, 1, 4, 116),
(431, 'snort_decoder: WARNING: IP dgm len < IP Hdr len', 0, 3, 1, 3, 116),
(432, 'snort_decoder: WARNING: hlen < IP_HEADER_LEN', 0, 3, 1, 2, 116),
(433, 'snort_decoder: WARNING: Not IPv4 datagram', 0, 3, 1, 1, 116),
(434, 'spp_asn1: ASN.1 Attack: Datum length > packet length', 0, 3, 1, 5, 115),
(435, 'spp_asn1: ASN.1 spec violation, possible overflow', 0, 3, 1, 4, 115),
(436, 'spp_asn1: ASN.1 oversized item, possible overflow', 0, 3, 1, 3, 115),
(437, 'spp_asn1: Invalid ASN.1 length encoding', 0, 3, 1, 2, 115),
(438, 'spp_asn1: Indefinite ASN.1 length encoding', 0, 3, 1, 1, 115),
(439, 'spp_fnord: Possible Mutated SPARC NOP Sled detected', 0, 3, 1, 4, 114),
(440, 'spp_fnord: Possible Mutated HPPA NOP Sled detected', 0, 3, 1, 3, 114),
(441, 'spp_fnord: Possible Mutated IA32 NOP Sled detected', 0, 3, 1, 2, 114),
(442, 'spp_fnord: Possible Mutated GENERIC NOP Sled detected', 0, 3, 1, 1, 114),
(443, 'spp_frag2: Shifting to Suspend Mode', 0, 3, 1, 10, 113),
(444, 'spp_frag2: Shifting to Emegency Session Mode', 0, 3, 1, 9, 113),
(445, 'spp_frag2: IP Options on Fragmented Packet', 0, 3, 1, 8, 113),
(446, 'spp_frag2: Out of order fragments', 0, 3, 1, 7, 113),
(447, 'spp_frag2: memcap exceeded', 0, 3, 1, 6, 113),
(448, 'spp_frag2: Duplicate first fragments', 0, 3, 1, 5, 113),
(449, 'spp_frag2: overlap detected', 0, 3, 1, 4, 113),
(450, 'spp_frag2: TTL evasion detected', 0, 3, 1, 3, 113),
(451, 'spp_frag2: Teardrop/Fragmentation Overlap Attack', 0, 3, 1, 2, 113),
(452, 'spp_frag2: Oversized Frag', 0, 3, 1, 1, 113),
(453, 'spp_arpspoof: ARP Cache Overwrite Attack', 0, 3, 1, 4, 112),
(454, 'spp_arpspoof: Etherframe ARP Mismatch DST', 0, 3, 1, 3, 112),
(455, 'spp_arpspoof: Etherframe ARP Mismatch SRC', 0, 3, 1, 2, 112),
(456, 'spp_arpspoof: Directed ARP Request', 0, 3, 1, 1, 112),
(457, 'spp_stream4: SYN on established', 0, 3, 1, 25, 111),
(458, 'spp_stream4: Evasive FIN Packet', 0, 3, 1, 24, 111),
(459, 'spp_stream4: Packet in established TCP stream missing ACK', 0, 3, 1, 23, 111),
(460, 'spp_stream4: Too many overlapping TCP packets', 0, 3, 1, 22, 111),
(461, 'spp_stream4: TCP Timestamp option has value of zero', 0, 3, 1, 21, 111),
(462, 'spp_stream4: Shifting to Suspend Mode', 0, 3, 1, 20, 111),
(463, 'spp_stream4: Shifting to Emergency Session Mode', 0, 3, 1, 19, 111),
(464, 'spp_stream4: Multiple acked', 0, 3, 1, 18, 111),
(465, 'spp_stream4: Evasive retransmitted data with the data split attempt', 0, 3, 1, 17, 111),
(466, 'spp_stream4: Evasive retransmitted data attempt', 0, 3, 1, 16, 111),
(467, 'spp_stream4: TTL Evasion attempt', 0, 3, 1, 15, 111),
(468, 'spp_stream4: TCP forward overlap detected', 0, 3, 1, 14, 111),
(469, 'spp_stream4: SYN FIN Stealth Scan', 0, 3, 1, 13, 111),
(470, 'spp_stream4: NMAP Fingerprint Stateful Detection', 0, 3, 1, 12, 111),
(471, 'spp_stream4: VECNA Stealth Scan', 0, 3, 1, 11, 111),
(472, 'spp_stream4: NMAP XMAS Stealth Scan', 0, 3, 1, 10, 111),
(473, 'spp_stream4: NULL Stealth Scan', 0, 3, 1, 9, 111),
(474, 'spp_stream4: FIN Stealth Scan', 0, 3, 1, 8, 111),
(475, 'spp_stream4: SAPU Stealth Scan', 0, 3, 1, 7, 111),
(476, 'spp_stream4: Full XMAS Stealth Scan', 0, 3, 1, 6, 111),
(477, 'spp_stream4: Data on SYN Packet', 0, 3, 1, 5, 111),
(478, 'spp_stream4: Window Violation', 0, 3, 1, 4, 111),
(479, 'spp_stream4: Retransmission', 0, 3, 1, 3, 111),
(480, 'spp_stream4: Evasive Reset Packet', 0, 3, 1, 2, 111),
(481, 'spp_stream4: Stealth Activity Detected', 0, 3, 1, 1, 111),
(482, 'spp_unidecode: Invalid Mapping', 0, 3, 1, 4, 110),
(483, 'spp_unidecode: Unknown Mapping', 0, 3, 1, 3, 110),
(484, 'spp_unidecode: Directory Traversal', 0, 3, 1, 2, 110),
(485, 'spp_unidecode: CGI NULL Attack', 0, 3, 1, 1, 110),
(486, 'spp_rpc_decode: Zero-length RPC Fragment', 0, 3, 1, 5, 106),
(487, 'spp_rpc_decode: Incomplete RPC segment', 0, 3, 1, 4, 106),
(488, 'spp_rpc_decode: Large RPC Record Fragment', 0, 3, 1, 3, 106),
(489, 'spp_rpc_decode: Multiple Records in one packet', 0, 3, 1, 2, 106),
(490, 'spp_rpc_decode: Fragmented RPC Records', 0, 3, 1, 1, 106),
(491, 'spp_bo: Back Orifice Snort Buffer Attack', 0, 3, 1, 4, 105),
(492, 'spp_bo: Back Orifice Server Traffic Detected', 0, 3, 1, 3, 105),
(493, 'spp_bo: Back Orifice Client Traffic Detected', 0, 3, 1, 2, 105),
(494, 'spp_bo: Back Orifice Traffic Detected', 0, 3, 1, 1, 105),
(495, 'spp_anomsensor: SPADE Anomaly Threshold Adjusted', 0, 3, 1, 2, 104),
(496, 'spp_anomsensor: SPADE Anomaly Threshold Exceeded', 0, 3, 1, 1, 104),
(497, 'spp_defrag: Stale Fragments Discarded', 0, 3, 1, 2, 103),
(498, 'spp_defrag: Fragmentation Overflow Detected', 0, 3, 1, 1, 103),
(499, 'http_decode: overlong character detected', 0, 3, 1, 7, 102),
(500, 'http_decode: illegal hex values detected', 0, 3, 1, 6, 102),
(501, 'http_decode: double encoding detected', 0, 3, 1, 5, 102),
(502, 'http_decode: missing uri', 0, 3, 1, 4, 102),
(503, 'http_decode: large method attempted', 0, 3, 1, 3, 102),
(504, 'http_decode: CGI NULL Byte Attack', 0, 3, 1, 2, 102),
(505, 'http_decode: Unicode Attack', 0, 3, 1, 1, 102),
(506, 'spp_minfrag: minfrag alert', 0, 3, 1, 1, 101),
(507, 'spp_portscan: Portscan Ended', 0, 3, 1, 3, 100),
(508, 'spp_portscan: Portscan Status', 0, 3, 1, 2, 100),
(509, 'spp_portscan: Portscan Detected', 0, 3, 1, 1, 100),
(510, 'snort dynamic alert', 0, 3, 1, 1, 3),
(511, 'tag: Tagged Packet', 0, 3, 1, 1, 2),
(512, 'snort general alert', 0, 3, 1, 1, 1),
(513, 'Snort Alert [1:100:1]', 31, 3, 1, 100, 1),
(514, 'Snort Alert [1:102:1]', 0, 0, 1, 102, 1),
(515, 'Snort Alert [1:101:1]', 0, 0, 1, 101, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sig_class`
--

CREATE TABLE IF NOT EXISTS `sig_class` (
  `sig_class_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sig_class_name` varchar(60) NOT NULL,
  PRIMARY KEY (`sig_class_id`),
  KEY `sig_class_id` (`sig_class_id`),
  KEY `sig_class_name` (`sig_class_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `sig_class`
--

INSERT INTO `sig_class` (`sig_class_id`, `sig_class_name`) VALUES
(12, 'attempted-admin'),
(7, 'attempted-dos'),
(4, 'attempted-recon'),
(9, 'attempted-user'),
(3, 'bad-unknown'),
(38, 'client-side-exploit'),
(34, 'default-login-attempt'),
(24, 'denial-of-service'),
(36, 'file-format'),
(31, 'icmp-event'),
(32, 'inappropriate-content'),
(37, 'malware-cnc'),
(29, 'misc-activity'),
(30, 'misc-attack'),
(23, 'network-scan'),
(25, 'non-standard-protocol'),
(1, 'not-suspicious'),
(33, 'policy-violation'),
(26, 'protocol-command-decode'),
(14, 'rpc-portmap-decode'),
(35, 'sdf'),
(15, 'shellcode-detect'),
(16, 'string-detect'),
(13, 'successful-admin'),
(8, 'successful-dos'),
(6, 'successful-recon-largescale'),
(5, 'successful-recon-limited'),
(11, 'successful-user'),
(17, 'suspicious-filename-detect'),
(18, 'suspicious-login'),
(19, 'system-call-detect'),
(20, 'tcp-connection'),
(21, 'trojan-activity'),
(2, 'unknown'),
(10, 'unsuccessful-user'),
(22, 'unusual-client-port-connection'),
(27, 'web-application-activity'),
(28, 'web-application-attack');

-- --------------------------------------------------------

--
-- Table structure for table `sig_reference`
--

CREATE TABLE IF NOT EXISTS `sig_reference` (
  `sig_id` int(10) unsigned NOT NULL,
  `ref_seq` int(10) unsigned NOT NULL,
  `ref_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`sig_id`,`ref_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tcphdr`
--

CREATE TABLE IF NOT EXISTS `tcphdr` (
  `sid` int(10) unsigned NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `tcp_sport` smallint(5) unsigned NOT NULL,
  `tcp_dport` smallint(5) unsigned NOT NULL,
  `tcp_seq` int(10) unsigned DEFAULT NULL,
  `tcp_ack` int(10) unsigned DEFAULT NULL,
  `tcp_off` tinyint(3) unsigned DEFAULT NULL,
  `tcp_res` tinyint(3) unsigned DEFAULT NULL,
  `tcp_flags` tinyint(3) unsigned NOT NULL,
  `tcp_win` smallint(5) unsigned DEFAULT NULL,
  `tcp_csum` smallint(5) unsigned DEFAULT NULL,
  `tcp_urp` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`sid`,`cid`),
  KEY `tcp_sport` (`tcp_sport`),
  KEY `tcp_dport` (`tcp_dport`),
  KEY `tcp_flags` (`tcp_flags`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tcphdr`
--

INSERT INTO `tcphdr` (`sid`, `cid`, `tcp_sport`, `tcp_dport`, `tcp_seq`, `tcp_ack`, `tcp_off`, `tcp_res`, `tcp_flags`, `tcp_win`, `tcp_csum`, `tcp_urp`) VALUES
(1, 12, 48442, 23, 3389641863, 0, 10, 0, 2, 29200, 16169, 0),
(1, 25, 42878, 21, 849393750, 0, 10, 0, 2, 29200, 63257, 0),
(1, 43, 43910, 23, 3046386777, 0, 10, 0, 2, 29200, 54481, 0);

-- --------------------------------------------------------

--
-- Table structure for table `udphdr`
--

CREATE TABLE IF NOT EXISTS `udphdr` (
  `sid` int(10) unsigned NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `udp_sport` smallint(5) unsigned NOT NULL,
  `udp_dport` smallint(5) unsigned NOT NULL,
  `udp_len` smallint(5) unsigned DEFAULT NULL,
  `udp_csum` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`sid`,`cid`),
  KEY `udp_sport` (`udp_sport`),
  KEY `udp_dport` (`udp_dport`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
