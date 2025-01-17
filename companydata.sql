-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-08-2024 a las 20:06:59
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `companydata`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `employeeperformance`
--

CREATE TABLE `employeeperformance` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `performance_score` decimal(5,2) DEFAULT NULL,
  `years_with_company` int(11) DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `employeeperformance`
--

INSERT INTO `employeeperformance` (`id`, `employee_id`, `department`, `performance_score`, `years_with_company`, `salary`) VALUES
(1001, 0, 'HR', 45.00, 5, 50000.00),
(1002, 1, 'IT', 78.00, 10, 70000.00),
(1003, 2, 'Finance', 52.00, 3, 60000.00),
(1004, 3, 'Marketing', 64.00, 7, 55000.00),
(1005, 4, 'Sales', 37.00, 2, 45000.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mock_data`
--

CREATE TABLE `mock_data` (
  `COL 1` varchar(4) DEFAULT NULL,
  `COL 2` varchar(11) DEFAULT NULL,
  `COL 3` varchar(11) DEFAULT NULL,
  `COL 4` varchar(17) DEFAULT NULL,
  `COL 5` varchar(18) DEFAULT NULL,
  `COL 6` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `mock_data`
--

INSERT INTO `mock_data` (`COL 1`, `COL 2`, `COL 3`, `COL 4`, `COL 5`, `COL 6`) VALUES
('id', 'employee_id', 'departament', 'performance_score', 'years_with_company', 'salary'),
('1', '59', '', '77', '13', '7'),
('2', '84', '', '6', '1', '28'),
('3', '6', '', '52', '58', '39'),
('4', '56', '', '74', '99', '52'),
('5', '80', '', '37', '3', '71'),
('6', '57', '', '11', '100', '48'),
('7', '86', '', '16', '68', '73'),
('8', '27', '', '68', '48', '52'),
('9', '82', '', '22', '43', '52'),
('10', '75', '', '25', '43', '10'),
('11', '98', '', '13', '64', '37'),
('12', '62', '', '23', '61', '30'),
('13', '83', '', '9', '78', '71'),
('14', '5', '', '62', '47', '59'),
('15', '79', '', '54', '10', '5'),
('16', '7', '', '94', '92', '78'),
('17', '45', '', '81', '80', '93'),
('18', '34', '', '86', '27', '18'),
('19', '74', '', '91', '40', '61'),
('20', '52', '', '88', '22', '61'),
('21', '40', '', '57', '10', '52'),
('22', '85', '', '4', '8', '3'),
('23', '75', '', '63', '67', '37'),
('24', '60', '', '9', '71', '67'),
('25', '38', '', '50', '96', '48'),
('26', '48', '', '56', '39', '94'),
('27', '73', '', '6', '42', '46'),
('28', '18', '', '28', '4', '85'),
('29', '70', '', '68', '10', '33'),
('30', '68', '', '79', '31', '21'),
('31', '2', '', '15', '69', '71'),
('32', '36', '', '72', '85', '88'),
('33', '56', '', '2', '51', '95'),
('34', '6', '', '92', '32', '58'),
('35', '97', '', '94', '78', '34'),
('36', '54', '', '48', '85', '100'),
('37', '4', '', '70', '86', '88'),
('38', '97', '', '75', '43', '3'),
('39', '40', '', '44', '37', '75'),
('40', '53', '', '61', '80', '83'),
('41', '40', '', '33', '18', '62'),
('42', '51', '', '59', '10', '90'),
('43', '46', '', '97', '54', '33'),
('44', '82', '', '76', '10', '59'),
('45', '99', '', '6', '5', '3'),
('46', '51', '', '66', '32', '83'),
('47', '49', '', '76', '50', '3'),
('48', '97', '', '38', '64', '69'),
('49', '33', '', '81', '95', '67'),
('50', '12', '', '45', '91', '94'),
('51', '8', '', '52', '68', '43'),
('52', '82', '', '95', '13', '15'),
('53', '69', '', '1', '22', '60'),
('54', '10', '', '27', '99', '20'),
('55', '66', '', '89', '3', '99'),
('56', '57', '', '10', '38', '83'),
('57', '21', '', '22', '20', '52'),
('58', '94', '', '21', '26', '59'),
('59', '13', '', '17', '63', '28'),
('60', '64', '', '4', '5', '1'),
('61', '7', '', '43', '14', '8'),
('62', '51', '', '75', '82', '54'),
('63', '69', '', '22', '11', '15'),
('64', '35', '', '89', '30', '9'),
('65', '58', '', '41', '92', '93'),
('66', '75', '', '28', '38', '8'),
('67', '75', '', '46', '16', '60'),
('68', '74', '', '39', '51', '50'),
('69', '71', '', '57', '57', '5'),
('70', '100', '', '15', '20', '79'),
('71', '38', '', '83', '95', '85'),
('72', '4', '', '22', '42', '89'),
('73', '49', '', '33', '34', '30'),
('74', '58', '', '20', '54', '2'),
('75', '32', '', '5', '30', '83'),
('76', '3', '', '81', '30', '43'),
('77', '66', '', '82', '75', '45'),
('78', '48', '', '49', '27', '74'),
('79', '94', '', '10', '79', '10'),
('80', '92', '', '33', '7', '50'),
('81', '67', '', '35', '66', '37'),
('82', '32', '', '23', '22', '29'),
('83', '56', '', '57', '16', '50'),
('84', '98', '', '96', '95', '55'),
('85', '59', '', '59', '58', '72'),
('86', '27', '', '38', '51', '58'),
('87', '34', '', '4', '83', '56'),
('88', '55', '', '13', '30', '64'),
('89', '20', '', '52', '91', '99'),
('90', '63', '', '98', '22', '47'),
('91', '98', '', '36', '9', '77'),
('92', '93', '', '5', '39', '3'),
('93', '1', '', '79', '69', '7'),
('94', '72', '', '78', '20', '69'),
('95', '30', '', '28', '86', '49'),
('96', '35', '', '35', '32', '74'),
('97', '62', '', '65', '2', '41'),
('98', '26', '', '84', '9', '23'),
('99', '71', '', '47', '11', '99'),
('100', '54', '', '69', '9', '52'),
('101', '33', '', '74', '36', '92'),
('102', '39', '', '3', '78', '84'),
('103', '93', '', '68', '88', '62'),
('104', '54', '', '64', '100', '99'),
('105', '77', '', '38', '50', '90'),
('106', '88', '', '67', '59', '28'),
('107', '81', '', '64', '96', '2'),
('108', '2', '', '66', '26', '50'),
('109', '29', '', '23', '82', '63'),
('110', '99', '', '2', '99', '54'),
('111', '34', '', '44', '67', '8'),
('112', '25', '', '37', '48', '61'),
('113', '24', '', '82', '5', '82'),
('114', '42', '', '87', '44', '27'),
('115', '85', '', '99', '12', '53'),
('116', '39', '', '86', '19', '29'),
('117', '93', '', '83', '92', '79'),
('118', '43', '', '67', '22', '64'),
('119', '100', '', '2', '33', '87'),
('120', '73', '', '10', '81', '51'),
('121', '45', '', '6', '11', '33'),
('122', '3', '', '94', '58', '84'),
('123', '70', '', '19', '52', '56'),
('124', '28', '', '13', '3', '17'),
('125', '78', '', '93', '17', '95'),
('126', '34', '', '51', '9', '78'),
('127', '26', '', '89', '19', '56'),
('128', '73', '', '80', '84', '81'),
('129', '71', '', '92', '58', '88'),
('130', '56', '', '48', '57', '1'),
('131', '32', '', '32', '50', '58'),
('132', '60', '', '55', '15', '41'),
('133', '66', '', '68', '24', '39'),
('134', '18', '', '31', '59', '68'),
('135', '43', '', '74', '40', '81'),
('136', '26', '', '35', '84', '6'),
('137', '12', '', '51', '14', '33'),
('138', '29', '', '65', '15', '100'),
('139', '49', '', '61', '65', '8'),
('140', '77', '', '25', '85', '79'),
('141', '51', '', '32', '93', '56'),
('142', '23', '', '31', '93', '49'),
('143', '45', '', '54', '37', '9'),
('144', '65', '', '26', '8', '17'),
('145', '46', '', '35', '82', '24'),
('146', '5', '', '56', '73', '65'),
('147', '63', '', '7', '46', '21'),
('148', '53', '', '62', '12', '22'),
('149', '47', '', '99', '2', '59'),
('150', '68', '', '20', '87', '88'),
('151', '19', '', '64', '29', '34'),
('152', '98', '', '40', '9', '24'),
('153', '20', '', '19', '36', '82'),
('154', '79', '', '21', '4', '59'),
('155', '47', '', '97', '48', '56'),
('156', '49', '', '40', '98', '89'),
('157', '75', '', '51', '59', '35'),
('158', '98', '', '21', '63', '48'),
('159', '45', '', '91', '48', '74'),
('160', '51', '', '9', '86', '74'),
('161', '25', '', '58', '14', '3'),
('162', '47', '', '34', '46', '6'),
('163', '79', '', '64', '69', '20'),
('164', '9', '', '34', '15', '54'),
('165', '73', '', '27', '100', '6'),
('166', '56', '', '5', '13', '57'),
('167', '73', '', '78', '78', '4'),
('168', '5', '', '89', '84', '51'),
('169', '47', '', '77', '39', '89'),
('170', '77', '', '41', '57', '91'),
('171', '56', '', '47', '5', '92'),
('172', '28', '', '12', '49', '22'),
('173', '96', '', '65', '87', '23'),
('174', '17', '', '8', '92', '62'),
('175', '51', '', '40', '27', '70'),
('176', '31', '', '71', '98', '5'),
('177', '21', '', '74', '30', '26'),
('178', '77', '', '72', '2', '41'),
('179', '39', '', '48', '95', '97'),
('180', '61', '', '77', '24', '6'),
('181', '37', '', '85', '50', '68'),
('182', '61', '', '65', '30', '50'),
('183', '96', '', '90', '80', '72'),
('184', '99', '', '78', '13', '36'),
('185', '37', '', '86', '45', '94'),
('186', '44', '', '48', '37', '77'),
('187', '91', '', '39', '82', '14'),
('188', '7', '', '41', '19', '49'),
('189', '12', '', '54', '30', '46'),
('190', '9', '', '70', '30', '47'),
('191', '25', '', '12', '47', '82'),
('192', '49', '', '16', '84', '76'),
('193', '39', '', '27', '96', '2'),
('194', '11', '', '71', '82', '48'),
('195', '8', '', '14', '8', '40'),
('196', '35', '', '25', '61', '7'),
('197', '62', '', '90', '53', '18'),
('198', '52', '', '13', '21', '7'),
('199', '52', '', '5', '75', '2'),
('200', '70', '', '65', '36', '59'),
('201', '55', '', '74', '97', '79'),
('202', '57', '', '84', '73', '8'),
('203', '30', '', '87', '36', '46'),
('204', '98', '', '91', '29', '71'),
('205', '63', '', '44', '48', '23'),
('206', '6', '', '99', '43', '39'),
('207', '100', '', '35', '55', '5'),
('208', '66', '', '41', '78', '41'),
('209', '89', '', '65', '33', '49'),
('210', '21', '', '2', '49', '49'),
('211', '78', '', '31', '27', '83'),
('212', '11', '', '52', '99', '67'),
('213', '32', '', '60', '45', '89'),
('214', '35', '', '6', '72', '70'),
('215', '86', '', '63', '97', '32'),
('216', '31', '', '70', '77', '73'),
('217', '82', '', '97', '46', '20'),
('218', '70', '', '76', '31', '71'),
('219', '5', '', '92', '66', '91'),
('220', '54', '', '40', '2', '56'),
('221', '65', '', '1', '33', '48'),
('222', '61', '', '12', '1', '15'),
('223', '99', '', '89', '24', '60'),
('224', '27', '', '39', '76', '56'),
('225', '93', '', '12', '31', '50'),
('226', '5', '', '82', '45', '50'),
('227', '100', '', '60', '23', '72'),
('228', '57', '', '25', '20', '79'),
('229', '40', '', '45', '43', '91'),
('230', '48', '', '24', '43', '45'),
('231', '31', '', '60', '63', '77'),
('232', '45', '', '88', '98', '60'),
('233', '61', '', '56', '68', '98'),
('234', '72', '', '97', '14', '32'),
('235', '30', '', '25', '7', '75'),
('236', '24', '', '77', '21', '81'),
('237', '9', '', '66', '25', '91'),
('238', '33', '', '68', '16', '12'),
('239', '97', '', '53', '99', '53'),
('240', '85', '', '12', '71', '87'),
('241', '59', '', '18', '5', '2'),
('242', '51', '', '50', '46', '71'),
('243', '9', '', '42', '54', '67'),
('244', '75', '', '99', '28', '7'),
('245', '97', '', '19', '68', '90'),
('246', '89', '', '72', '2', '19'),
('247', '75', '', '14', '67', '96'),
('248', '95', '', '83', '100', '47'),
('249', '70', '', '61', '85', '57'),
('250', '32', '', '66', '3', '26'),
('251', '61', '', '12', '13', '5'),
('252', '89', '', '4', '92', '22'),
('253', '24', '', '27', '81', '39'),
('254', '6', '', '88', '4', '100'),
('255', '58', '', '100', '100', '6'),
('256', '6', '', '100', '13', '88'),
('257', '9', '', '41', '35', '34'),
('258', '68', '', '80', '36', '34'),
('259', '85', '', '33', '61', '86'),
('260', '15', '', '57', '88', '59'),
('261', '26', '', '21', '23', '56'),
('262', '87', '', '27', '56', '97'),
('263', '65', '', '33', '41', '16'),
('264', '52', '', '80', '63', '51'),
('265', '78', '', '68', '48', '9'),
('266', '62', '', '84', '82', '89'),
('267', '78', '', '2', '93', '37'),
('268', '5', '', '35', '4', '58'),
('269', '62', '', '72', '46', '86'),
('270', '39', '', '74', '41', '49'),
('271', '71', '', '38', '24', '34'),
('272', '90', '', '77', '1', '43'),
('273', '50', '', '40', '17', '65'),
('274', '19', '', '14', '36', '66'),
('275', '54', '', '28', '28', '25'),
('276', '59', '', '59', '1', '59'),
('277', '7', '', '1', '40', '22'),
('278', '23', '', '87', '9', '61'),
('279', '86', '', '46', '30', '66'),
('280', '8', '', '53', '87', '75'),
('281', '61', '', '18', '51', '48'),
('282', '5', '', '39', '66', '57'),
('283', '43', '', '74', '44', '12'),
('284', '29', '', '13', '51', '62'),
('285', '8', '', '34', '47', '34'),
('286', '67', '', '99', '68', '66'),
('287', '55', '', '78', '83', '72'),
('288', '47', '', '2', '9', '78'),
('289', '15', '', '41', '89', '21'),
('290', '69', '', '8', '6', '40'),
('291', '38', '', '18', '10', '85'),
('292', '21', '', '37', '83', '73'),
('293', '43', '', '34', '71', '85'),
('294', '57', '', '12', '95', '13'),
('295', '52', '', '64', '93', '46'),
('296', '25', '', '39', '95', '99'),
('297', '83', '', '90', '98', '39'),
('298', '9', '', '41', '29', '31'),
('299', '82', '', '62', '20', '27'),
('300', '12', '', '47', '7', '72'),
('301', '37', '', '32', '78', '56'),
('302', '4', '', '68', '9', '64'),
('303', '100', '', '78', '44', '57'),
('304', '77', '', '77', '20', '77'),
('305', '82', '', '8', '22', '64'),
('306', '63', '', '25', '93', '90'),
('307', '20', '', '38', '54', '29'),
('308', '58', '', '78', '37', '76'),
('309', '49', '', '16', '93', '23'),
('310', '78', '', '15', '85', '83'),
('311', '50', '', '67', '85', '2'),
('312', '71', '', '66', '51', '73'),
('313', '96', '', '21', '96', '34'),
('314', '48', '', '99', '19', '84'),
('315', '55', '', '63', '40', '57'),
('316', '34', '', '60', '62', '83'),
('317', '91', '', '46', '2', '99'),
('318', '76', '', '81', '4', '94'),
('319', '45', '', '7', '85', '63'),
('320', '74', '', '45', '10', '23'),
('321', '88', '', '51', '36', '23'),
('322', '68', '', '56', '17', '6'),
('323', '91', '', '93', '47', '49'),
('324', '51', '', '68', '33', '83'),
('325', '17', '', '23', '66', '26'),
('326', '16', '', '9', '22', '21'),
('327', '37', '', '61', '57', '28'),
('328', '2', '', '59', '13', '68'),
('329', '10', '', '25', '54', '75'),
('330', '99', '', '10', '4', '12'),
('331', '26', '', '67', '31', '86'),
('332', '33', '', '7', '8', '83'),
('333', '78', '', '68', '86', '94'),
('334', '86', '', '83', '1', '33'),
('335', '35', '', '80', '90', '4'),
('336', '27', '', '97', '24', '50'),
('337', '78', '', '90', '63', '44'),
('338', '29', '', '26', '31', '81'),
('339', '16', '', '37', '79', '55'),
('340', '97', '', '48', '74', '95'),
('341', '93', '', '72', '36', '96'),
('342', '62', '', '17', '54', '66'),
('343', '100', '', '94', '63', '33'),
('344', '68', '', '66', '87', '18'),
('345', '76', '', '90', '48', '6'),
('346', '33', '', '85', '82', '63'),
('347', '4', '', '37', '24', '8'),
('348', '39', '', '25', '33', '40'),
('349', '77', '', '19', '81', '100'),
('350', '44', '', '96', '69', '79'),
('351', '75', '', '14', '64', '12'),
('352', '81', '', '77', '41', '13'),
('353', '24', '', '30', '60', '34'),
('354', '17', '', '68', '67', '89'),
('355', '68', '', '91', '57', '16'),
('356', '15', '', '73', '52', '31'),
('357', '13', '', '14', '45', '58'),
('358', '54', '', '56', '44', '90'),
('359', '44', '', '92', '3', '16'),
('360', '22', '', '68', '83', '10'),
('361', '94', '', '67', '56', '35'),
('362', '34', '', '28', '26', '86'),
('363', '5', '', '17', '66', '84'),
('364', '13', '', '24', '20', '22'),
('365', '48', '', '69', '3', '35'),
('366', '8', '', '19', '77', '53'),
('367', '52', '', '19', '76', '78'),
('368', '31', '', '65', '86', '68'),
('369', '23', '', '46', '84', '29'),
('370', '12', '', '40', '55', '12'),
('371', '20', '', '38', '37', '61'),
('372', '7', '', '10', '58', '53'),
('373', '69', '', '89', '15', '77'),
('374', '65', '', '84', '46', '78'),
('375', '59', '', '79', '21', '48'),
('376', '68', '', '21', '3', '2'),
('377', '42', '', '84', '80', '92'),
('378', '44', '', '91', '3', '51'),
('379', '75', '', '72', '38', '63'),
('380', '68', '', '64', '88', '25'),
('381', '77', '', '91', '15', '32'),
('382', '42', '', '59', '93', '33'),
('383', '42', '', '52', '64', '47'),
('384', '1', '', '30', '81', '62'),
('385', '7', '', '100', '52', '66'),
('386', '58', '', '17', '66', '71'),
('387', '89', '', '7', '17', '71'),
('388', '38', '', '66', '41', '94'),
('389', '18', '', '85', '38', '20'),
('390', '64', '', '65', '71', '57'),
('391', '91', '', '91', '88', '37'),
('392', '6', '', '21', '57', '84'),
('393', '47', '', '3', '32', '50'),
('394', '36', '', '74', '60', '78'),
('395', '27', '', '28', '87', '89'),
('396', '21', '', '24', '55', '16'),
('397', '63', '', '86', '56', '69'),
('398', '20', '', '29', '29', '86'),
('399', '50', '', '82', '5', '1'),
('400', '88', '', '73', '47', '93'),
('401', '86', '', '3', '79', '44'),
('402', '61', '', '37', '73', '25'),
('403', '95', '', '21', '91', '63'),
('404', '9', '', '38', '100', '40'),
('405', '6', '', '19', '44', '1'),
('406', '89', '', '36', '80', '79'),
('407', '36', '', '16', '28', '18'),
('408', '13', '', '50', '40', '84'),
('409', '23', '', '39', '4', '6'),
('410', '89', '', '74', '82', '40'),
('411', '16', '', '36', '28', '55'),
('412', '5', '', '66', '57', '26'),
('413', '27', '', '3', '75', '20'),
('414', '99', '', '31', '21', '3'),
('415', '75', '', '72', '86', '84'),
('416', '9', '', '90', '82', '76'),
('417', '96', '', '61', '15', '39'),
('418', '39', '', '94', '88', '67'),
('419', '24', '', '59', '59', '67'),
('420', '94', '', '27', '35', '41'),
('421', '43', '', '85', '97', '67'),
('422', '26', '', '53', '37', '80'),
('423', '73', '', '56', '28', '95'),
('424', '37', '', '55', '40', '52'),
('425', '76', '', '20', '89', '12'),
('426', '82', '', '66', '28', '85'),
('427', '22', '', '75', '62', '2'),
('428', '13', '', '84', '57', '42'),
('429', '67', '', '8', '83', '37'),
('430', '17', '', '4', '30', '76'),
('431', '47', '', '9', '1', '50'),
('432', '28', '', '76', '23', '62'),
('433', '94', '', '46', '33', '92'),
('434', '58', '', '73', '43', '30'),
('435', '80', '', '38', '16', '32'),
('436', '84', '', '96', '21', '10'),
('437', '93', '', '60', '29', '13'),
('438', '57', '', '57', '66', '3'),
('439', '73', '', '62', '32', '5'),
('440', '72', '', '13', '67', '28'),
('441', '22', '', '88', '90', '33'),
('442', '31', '', '41', '68', '22'),
('443', '75', '', '67', '32', '35'),
('444', '1', '', '24', '55', '28'),
('445', '48', '', '76', '62', '6'),
('446', '62', '', '55', '24', '98'),
('447', '72', '', '7', '56', '17'),
('448', '62', '', '70', '78', '50'),
('449', '66', '', '62', '87', '80'),
('450', '80', '', '44', '11', '2'),
('451', '1', '', '40', '32', '70'),
('452', '57', '', '24', '4', '36'),
('453', '81', '', '63', '74', '93'),
('454', '42', '', '23', '81', '14'),
('455', '89', '', '41', '72', '49'),
('456', '76', '', '88', '38', '40'),
('457', '26', '', '82', '2', '51'),
('458', '68', '', '41', '50', '67'),
('459', '19', '', '60', '64', '18'),
('460', '13', '', '98', '35', '86'),
('461', '14', '', '57', '28', '2'),
('462', '60', '', '20', '51', '87'),
('463', '73', '', '10', '9', '78'),
('464', '22', '', '55', '3', '22'),
('465', '44', '', '87', '5', '16'),
('466', '73', '', '81', '29', '8'),
('467', '73', '', '62', '52', '88'),
('468', '34', '', '39', '8', '87'),
('469', '60', '', '26', '16', '90'),
('470', '38', '', '92', '20', '96'),
('471', '35', '', '90', '26', '10'),
('472', '69', '', '88', '8', '75'),
('473', '35', '', '70', '8', '63'),
('474', '33', '', '92', '41', '22'),
('475', '82', '', '1', '47', '24'),
('476', '90', '', '7', '48', '71'),
('477', '81', '', '37', '2', '47'),
('478', '47', '', '74', '56', '69'),
('479', '44', '', '62', '94', '26'),
('480', '44', '', '99', '100', '36'),
('481', '34', '', '28', '47', '83'),
('482', '62', '', '20', '34', '77'),
('483', '92', '', '28', '19', '68'),
('484', '37', '', '23', '11', '77'),
('485', '91', '', '16', '73', '30'),
('486', '55', '', '36', '69', '37'),
('487', '21', '', '77', '28', '13'),
('488', '83', '', '87', '54', '7'),
('489', '94', '', '87', '12', '70'),
('490', '76', '', '66', '9', '18'),
('491', '59', '', '39', '47', '27'),
('492', '83', '', '78', '96', '94'),
('493', '21', '', '34', '32', '13'),
('494', '29', '', '26', '58', '92'),
('495', '24', '', '39', '42', '65'),
('496', '25', '', '66', '67', '62'),
('497', '92', '', '50', '51', '29'),
('498', '99', '', '73', '17', '25'),
('499', '89', '', '59', '24', '82'),
('500', '50', '', '19', '43', '9'),
('501', '53', '', '75', '27', '25'),
('502', '19', '', '28', '95', '53'),
('503', '34', '', '53', '3', '44'),
('504', '23', '', '20', '62', '75'),
('505', '74', '', '41', '36', '73'),
('506', '85', '', '81', '30', '68'),
('507', '69', '', '82', '7', '87'),
('508', '76', '', '74', '29', '40'),
('509', '69', '', '30', '60', '87'),
('510', '24', '', '95', '63', '28'),
('511', '60', '', '94', '86', '50'),
('512', '94', '', '5', '24', '82'),
('513', '18', '', '65', '15', '3'),
('514', '90', '', '98', '97', '44'),
('515', '94', '', '32', '13', '45'),
('516', '70', '', '25', '38', '19'),
('517', '35', '', '75', '82', '93'),
('518', '42', '', '71', '11', '18'),
('519', '2', '', '48', '82', '15'),
('520', '4', '', '25', '24', '75'),
('521', '57', '', '7', '9', '96'),
('522', '25', '', '72', '27', '49'),
('523', '34', '', '9', '63', '23'),
('524', '35', '', '83', '27', '66'),
('525', '84', '', '86', '20', '49'),
('526', '97', '', '22', '70', '25'),
('527', '56', '', '41', '16', '82'),
('528', '98', '', '59', '85', '51'),
('529', '49', '', '97', '39', '18'),
('530', '30', '', '84', '91', '38'),
('531', '98', '', '88', '78', '58'),
('532', '6', '', '5', '85', '46'),
('533', '15', '', '1', '91', '44'),
('534', '89', '', '37', '12', '22'),
('535', '55', '', '69', '29', '49'),
('536', '90', '', '74', '95', '75'),
('537', '7', '', '87', '67', '72'),
('538', '95', '', '7', '68', '64'),
('539', '46', '', '67', '75', '77'),
('540', '90', '', '23', '84', '18'),
('541', '2', '', '32', '46', '40'),
('542', '2', '', '6', '34', '38'),
('543', '14', '', '22', '71', '4'),
('544', '84', '', '8', '33', '39'),
('545', '74', '', '76', '49', '61'),
('546', '1', '', '17', '20', '31'),
('547', '68', '', '4', '94', '6'),
('548', '66', '', '10', '66', '21'),
('549', '17', '', '18', '25', '81'),
('550', '62', '', '9', '27', '29'),
('551', '66', '', '27', '72', '97'),
('552', '9', '', '98', '10', '14'),
('553', '57', '', '22', '40', '68'),
('554', '43', '', '31', '95', '61'),
('555', '77', '', '19', '20', '99'),
('556', '23', '', '44', '34', '75'),
('557', '9', '', '54', '97', '80'),
('558', '91', '', '41', '15', '62'),
('559', '26', '', '59', '39', '65'),
('560', '31', '', '21', '35', '63'),
('561', '11', '', '73', '64', '100'),
('562', '4', '', '100', '96', '86'),
('563', '25', '', '71', '56', '81'),
('564', '51', '', '38', '6', '74'),
('565', '72', '', '63', '5', '46'),
('566', '24', '', '61', '10', '76'),
('567', '38', '', '93', '35', '64'),
('568', '2', '', '95', '54', '9'),
('569', '53', '', '18', '98', '20'),
('570', '32', '', '84', '34', '59'),
('571', '63', '', '33', '57', '88'),
('572', '60', '', '91', '54', '58'),
('573', '94', '', '78', '91', '79'),
('574', '80', '', '20', '94', '56'),
('575', '61', '', '26', '49', '75'),
('576', '76', '', '43', '33', '69'),
('577', '33', '', '69', '86', '71'),
('578', '14', '', '31', '84', '87'),
('579', '16', '', '49', '94', '45'),
('580', '62', '', '99', '90', '12'),
('581', '72', '', '44', '7', '29'),
('582', '12', '', '96', '25', '53'),
('583', '1', '', '47', '37', '23'),
('584', '31', '', '96', '62', '45'),
('585', '51', '', '25', '8', '74'),
('586', '76', '', '53', '15', '96'),
('587', '28', '', '46', '56', '71'),
('588', '22', '', '43', '10', '8'),
('589', '71', '', '27', '76', '13'),
('590', '15', '', '23', '86', '50'),
('591', '98', '', '14', '86', '71'),
('592', '75', '', '78', '95', '37'),
('593', '45', '', '82', '24', '77'),
('594', '73', '', '77', '39', '23'),
('595', '31', '', '39', '69', '39'),
('596', '49', '', '1', '49', '33'),
('597', '32', '', '29', '35', '73'),
('598', '48', '', '87', '33', '68'),
('599', '95', '', '36', '31', '62'),
('600', '35', '', '9', '82', '94'),
('601', '37', '', '44', '7', '43'),
('602', '51', '', '82', '31', '51'),
('603', '23', '', '41', '48', '1'),
('604', '60', '', '8', '9', '22'),
('605', '5', '', '50', '20', '33'),
('606', '77', '', '37', '30', '65'),
('607', '67', '', '85', '79', '48'),
('608', '85', '', '81', '12', '100'),
('609', '94', '', '29', '43', '6'),
('610', '19', '', '20', '31', '16'),
('611', '34', '', '89', '26', '26'),
('612', '14', '', '19', '68', '41'),
('613', '16', '', '68', '69', '38'),
('614', '85', '', '91', '96', '25'),
('615', '64', '', '75', '36', '24'),
('616', '44', '', '73', '61', '8'),
('617', '93', '', '28', '72', '45'),
('618', '65', '', '79', '62', '90'),
('619', '36', '', '40', '9', '66'),
('620', '25', '', '6', '31', '31'),
('621', '74', '', '39', '38', '59'),
('622', '22', '', '77', '67', '39'),
('623', '95', '', '10', '37', '35'),
('624', '40', '', '79', '13', '86'),
('625', '70', '', '86', '33', '94'),
('626', '81', '', '15', '52', '32'),
('627', '36', '', '38', '85', '80'),
('628', '99', '', '5', '69', '46'),
('629', '11', '', '35', '74', '14'),
('630', '71', '', '31', '86', '29'),
('631', '40', '', '4', '45', '18'),
('632', '69', '', '8', '61', '19'),
('633', '17', '', '88', '20', '44'),
('634', '33', '', '50', '79', '73'),
('635', '58', '', '86', '76', '44'),
('636', '32', '', '1', '97', '92'),
('637', '9', '', '81', '31', '65'),
('638', '1', '', '92', '51', '64'),
('639', '68', '', '66', '64', '80'),
('640', '56', '', '37', '77', '87'),
('641', '60', '', '71', '93', '82'),
('642', '71', '', '38', '60', '71'),
('643', '42', '', '8', '11', '33'),
('644', '64', '', '92', '5', '20'),
('645', '24', '', '12', '77', '75'),
('646', '69', '', '90', '90', '35'),
('647', '69', '', '31', '59', '57'),
('648', '66', '', '50', '67', '66'),
('649', '11', '', '12', '25', '100'),
('650', '100', '', '78', '20', '24'),
('651', '92', '', '28', '68', '97'),
('652', '8', '', '70', '45', '60'),
('653', '100', '', '26', '46', '33'),
('654', '34', '', '71', '14', '78'),
('655', '53', '', '37', '17', '62'),
('656', '2', '', '58', '90', '59'),
('657', '28', '', '87', '86', '36'),
('658', '29', '', '89', '73', '2'),
('659', '76', '', '63', '38', '61'),
('660', '1', '', '29', '81', '34'),
('661', '68', '', '37', '70', '13'),
('662', '7', '', '18', '42', '76'),
('663', '98', '', '74', '33', '48'),
('664', '37', '', '17', '24', '3'),
('665', '35', '', '73', '58', '4'),
('666', '9', '', '83', '3', '90'),
('667', '66', '', '8', '8', '85'),
('668', '40', '', '51', '75', '75'),
('669', '2', '', '72', '38', '97'),
('670', '26', '', '78', '15', '10'),
('671', '88', '', '30', '97', '87'),
('672', '49', '', '85', '29', '60'),
('673', '77', '', '24', '2', '17'),
('674', '68', '', '6', '95', '57'),
('675', '100', '', '62', '100', '27'),
('676', '53', '', '54', '36', '62'),
('677', '54', '', '86', '81', '27'),
('678', '34', '', '41', '1', '58'),
('679', '66', '', '49', '25', '14'),
('680', '8', '', '3', '37', '12'),
('681', '29', '', '98', '9', '70'),
('682', '100', '', '92', '68', '35'),
('683', '68', '', '70', '2', '46'),
('684', '5', '', '34', '23', '36'),
('685', '57', '', '37', '40', '69'),
('686', '35', '', '69', '26', '70'),
('687', '40', '', '7', '17', '53'),
('688', '89', '', '37', '44', '29'),
('689', '72', '', '37', '10', '41'),
('690', '2', '', '86', '80', '95'),
('691', '74', '', '6', '60', '99'),
('692', '65', '', '31', '97', '98'),
('693', '36', '', '67', '66', '86'),
('694', '13', '', '7', '61', '20'),
('695', '82', '', '39', '33', '99'),
('696', '56', '', '55', '8', '62'),
('697', '67', '', '39', '53', '83'),
('698', '75', '', '11', '38', '90'),
('699', '2', '', '95', '51', '12'),
('700', '73', '', '65', '90', '53'),
('701', '92', '', '51', '5', '83'),
('702', '13', '', '10', '7', '32'),
('703', '40', '', '49', '22', '93'),
('704', '3', '', '58', '86', '15'),
('705', '49', '', '89', '8', '59'),
('706', '100', '', '36', '91', '91'),
('707', '61', '', '52', '91', '38'),
('708', '74', '', '43', '35', '28'),
('709', '85', '', '63', '4', '88'),
('710', '55', '', '67', '19', '1'),
('711', '48', '', '66', '18', '24'),
('712', '76', '', '51', '28', '9'),
('713', '74', '', '56', '37', '3'),
('714', '55', '', '46', '72', '78'),
('715', '56', '', '37', '48', '5'),
('716', '59', '', '94', '26', '36'),
('717', '26', '', '71', '76', '97'),
('718', '12', '', '42', '41', '11'),
('719', '13', '', '41', '8', '86'),
('720', '96', '', '73', '86', '65'),
('721', '76', '', '44', '52', '50'),
('722', '51', '', '24', '13', '57'),
('723', '58', '', '81', '82', '40'),
('724', '57', '', '39', '34', '80'),
('725', '6', '', '28', '34', '89'),
('726', '42', '', '48', '88', '89'),
('727', '100', '', '4', '35', '13'),
('728', '83', '', '73', '73', '21'),
('729', '69', '', '4', '23', '87'),
('730', '86', '', '44', '29', '13'),
('731', '61', '', '22', '57', '76'),
('732', '96', '', '75', '49', '95'),
('733', '71', '', '95', '10', '82'),
('734', '58', '', '37', '65', '39'),
('735', '84', '', '40', '85', '34'),
('736', '72', '', '85', '4', '27'),
('737', '100', '', '68', '65', '43'),
('738', '91', '', '84', '4', '23'),
('739', '90', '', '45', '35', '100'),
('740', '66', '', '98', '97', '94'),
('741', '12', '', '77', '26', '65'),
('742', '56', '', '50', '12', '94'),
('743', '36', '', '92', '59', '76'),
('744', '81', '', '88', '64', '40'),
('745', '48', '', '5', '79', '19'),
('746', '82', '', '68', '71', '28'),
('747', '68', '', '11', '3', '96'),
('748', '78', '', '31', '13', '5'),
('749', '40', '', '52', '59', '88'),
('750', '60', '', '25', '64', '56'),
('751', '92', '', '89', '49', '7'),
('752', '2', '', '84', '59', '18'),
('753', '19', '', '96', '56', '70'),
('754', '44', '', '98', '71', '95'),
('755', '86', '', '32', '14', '75'),
('756', '14', '', '73', '49', '60'),
('757', '9', '', '97', '88', '60'),
('758', '54', '', '47', '26', '4'),
('759', '28', '', '25', '73', '33'),
('760', '50', '', '76', '14', '62'),
('761', '13', '', '33', '24', '15'),
('762', '54', '', '27', '59', '10'),
('763', '18', '', '90', '19', '11'),
('764', '83', '', '67', '23', '15'),
('765', '25', '', '20', '95', '100'),
('766', '73', '', '95', '34', '67'),
('767', '5', '', '11', '65', '85'),
('768', '50', '', '10', '73', '67'),
('769', '62', '', '94', '46', '36'),
('770', '68', '', '38', '17', '41'),
('771', '92', '', '76', '87', '26'),
('772', '96', '', '79', '73', '19'),
('773', '23', '', '94', '25', '11'),
('774', '3', '', '74', '34', '35'),
('775', '31', '', '38', '78', '53'),
('776', '82', '', '15', '58', '62'),
('777', '11', '', '51', '8', '100'),
('778', '12', '', '93', '38', '61'),
('779', '90', '', '85', '91', '52'),
('780', '11', '', '52', '41', '38'),
('781', '84', '', '67', '67', '74'),
('782', '47', '', '1', '74', '73'),
('783', '88', '', '94', '3', '5'),
('784', '77', '', '30', '37', '48'),
('785', '36', '', '97', '24', '77'),
('786', '93', '', '90', '2', '53'),
('787', '73', '', '91', '14', '71'),
('788', '48', '', '85', '87', '14'),
('789', '40', '', '52', '50', '62'),
('790', '83', '', '72', '68', '92'),
('791', '2', '', '13', '49', '81'),
('792', '69', '', '83', '64', '86'),
('793', '66', '', '69', '56', '71'),
('794', '67', '', '46', '72', '56'),
('795', '16', '', '27', '39', '58'),
('796', '15', '', '48', '89', '5'),
('797', '20', '', '63', '86', '89'),
('798', '48', '', '87', '100', '96'),
('799', '66', '', '65', '84', '38'),
('800', '11', '', '32', '42', '57'),
('801', '24', '', '43', '38', '19'),
('802', '82', '', '14', '91', '60'),
('803', '92', '', '87', '27', '63'),
('804', '79', '', '97', '70', '90'),
('805', '98', '', '55', '31', '23'),
('806', '73', '', '69', '35', '25'),
('807', '24', '', '48', '71', '79'),
('808', '39', '', '99', '4', '66'),
('809', '37', '', '11', '57', '93'),
('810', '78', '', '71', '78', '83'),
('811', '68', '', '33', '54', '55'),
('812', '70', '', '99', '81', '70'),
('813', '40', '', '44', '46', '40'),
('814', '100', '', '19', '9', '89'),
('815', '33', '', '14', '78', '32'),
('816', '70', '', '38', '50', '52'),
('817', '50', '', '68', '34', '30'),
('818', '8', '', '62', '62', '10'),
('819', '26', '', '83', '35', '18'),
('820', '94', '', '67', '21', '10'),
('821', '17', '', '11', '20', '23'),
('822', '89', '', '61', '7', '80'),
('823', '49', '', '45', '71', '21'),
('824', '36', '', '3', '26', '54'),
('825', '100', '', '82', '40', '76'),
('826', '59', '', '36', '58', '66'),
('827', '63', '', '68', '15', '7'),
('828', '64', '', '74', '48', '52'),
('829', '42', '', '79', '100', '1'),
('830', '63', '', '86', '30', '37'),
('831', '91', '', '35', '100', '6'),
('832', '59', '', '60', '52', '59'),
('833', '96', '', '88', '8', '83'),
('834', '42', '', '1', '24', '16'),
('835', '76', '', '58', '57', '23'),
('836', '5', '', '54', '54', '28'),
('837', '29', '', '60', '69', '64'),
('838', '62', '', '3', '15', '10'),
('839', '20', '', '74', '38', '8'),
('840', '75', '', '5', '19', '57'),
('841', '91', '', '72', '94', '30'),
('842', '2', '', '76', '11', '81'),
('843', '89', '', '14', '86', '25'),
('844', '51', '', '98', '55', '10'),
('845', '22', '', '1', '68', '71'),
('846', '89', '', '66', '72', '87'),
('847', '18', '', '98', '6', '2'),
('848', '72', '', '3', '78', '81'),
('849', '30', '', '77', '43', '79'),
('850', '67', '', '14', '83', '84'),
('851', '56', '', '88', '91', '28'),
('852', '11', '', '9', '46', '82'),
('853', '5', '', '91', '68', '5'),
('854', '94', '', '11', '18', '45'),
('855', '46', '', '49', '84', '55'),
('856', '77', '', '54', '52', '68'),
('857', '75', '', '98', '84', '87'),
('858', '25', '', '81', '44', '38'),
('859', '11', '', '48', '29', '2'),
('860', '90', '', '57', '8', '70'),
('861', '30', '', '76', '11', '78'),
('862', '15', '', '52', '65', '77'),
('863', '79', '', '100', '67', '74'),
('864', '17', '', '15', '95', '13'),
('865', '93', '', '36', '72', '22'),
('866', '36', '', '100', '30', '71'),
('867', '18', '', '33', '96', '16'),
('868', '91', '', '91', '95', '97'),
('869', '96', '', '82', '50', '17'),
('870', '88', '', '68', '22', '78'),
('871', '56', '', '56', '58', '77'),
('872', '15', '', '4', '46', '69'),
('873', '59', '', '79', '88', '87'),
('874', '41', '', '21', '30', '38'),
('875', '29', '', '51', '69', '31'),
('876', '81', '', '97', '49', '21'),
('877', '8', '', '14', '78', '4'),
('878', '20', '', '33', '8', '29'),
('879', '36', '', '22', '100', '16'),
('880', '2', '', '70', '34', '18'),
('881', '87', '', '93', '21', '28'),
('882', '81', '', '31', '58', '73'),
('883', '39', '', '44', '28', '14'),
('884', '3', '', '53', '7', '50'),
('885', '42', '', '8', '94', '14'),
('886', '34', '', '21', '76', '86'),
('887', '29', '', '20', '50', '87'),
('888', '84', '', '75', '19', '51'),
('889', '28', '', '80', '81', '11'),
('890', '36', '', '18', '100', '71'),
('891', '83', '', '79', '18', '36'),
('892', '86', '', '51', '2', '25'),
('893', '39', '', '23', '63', '22'),
('894', '36', '', '85', '15', '9'),
('895', '40', '', '18', '87', '7'),
('896', '69', '', '100', '93', '27'),
('897', '73', '', '61', '12', '16'),
('898', '66', '', '96', '1', '95'),
('899', '100', '', '25', '18', '65'),
('900', '63', '', '17', '75', '4'),
('901', '82', '', '58', '35', '34'),
('902', '19', '', '52', '47', '58'),
('903', '93', '', '67', '65', '28'),
('904', '78', '', '2', '59', '31'),
('905', '14', '', '31', '87', '13'),
('906', '41', '', '23', '46', '66'),
('907', '99', '', '46', '59', '58'),
('908', '5', '', '38', '73', '49'),
('909', '82', '', '96', '1', '56'),
('910', '93', '', '10', '71', '13'),
('911', '97', '', '95', '61', '89'),
('912', '88', '', '91', '37', '76'),
('913', '83', '', '93', '91', '21'),
('914', '28', '', '20', '44', '14'),
('915', '70', '', '92', '1', '45'),
('916', '93', '', '3', '37', '66'),
('917', '8', '', '36', '79', '76'),
('918', '85', '', '64', '46', '94'),
('919', '76', '', '9', '98', '14'),
('920', '57', '', '25', '82', '68'),
('921', '81', '', '20', '45', '4'),
('922', '38', '', '7', '71', '29'),
('923', '93', '', '45', '43', '69'),
('924', '15', '', '22', '95', '93'),
('925', '77', '', '89', '1', '66'),
('926', '88', '', '48', '37', '48'),
('927', '26', '', '55', '31', '37'),
('928', '72', '', '26', '64', '58'),
('929', '28', '', '64', '10', '95'),
('930', '84', '', '38', '70', '17'),
('931', '79', '', '53', '17', '31'),
('932', '65', '', '89', '23', '11'),
('933', '80', '', '8', '99', '20'),
('934', '6', '', '9', '7', '28'),
('935', '82', '', '82', '83', '95'),
('936', '34', '', '14', '11', '40'),
('937', '25', '', '49', '40', '13'),
('938', '88', '', '96', '68', '35'),
('939', '2', '', '41', '71', '69'),
('940', '61', '', '4', '11', '37'),
('941', '83', '', '8', '86', '26'),
('942', '68', '', '92', '54', '83'),
('943', '45', '', '51', '100', '89'),
('944', '61', '', '45', '63', '33'),
('945', '41', '', '27', '6', '44'),
('946', '53', '', '13', '21', '33'),
('947', '85', '', '98', '50', '9'),
('948', '63', '', '83', '18', '47'),
('949', '54', '', '84', '75', '8'),
('950', '70', '', '52', '13', '65'),
('951', '82', '', '56', '38', '16'),
('952', '45', '', '79', '95', '19'),
('953', '7', '', '86', '56', '23'),
('954', '1', '', '3', '54', '83'),
('955', '12', '', '90', '6', '9'),
('956', '56', '', '9', '86', '8'),
('957', '63', '', '48', '64', '44'),
('958', '53', '', '24', '53', '19'),
('959', '26', '', '69', '8', '70'),
('960', '20', '', '60', '38', '10'),
('961', '32', '', '61', '26', '4'),
('962', '42', '', '84', '82', '85'),
('963', '78', '', '2', '63', '45'),
('964', '95', '', '22', '97', '65'),
('965', '41', '', '22', '61', '57'),
('966', '6', '', '59', '4', '87'),
('967', '9', '', '54', '71', '83'),
('968', '50', '', '47', '64', '14'),
('969', '35', '', '4', '67', '24'),
('970', '19', '', '59', '78', '80'),
('971', '51', '', '75', '26', '35'),
('972', '91', '', '5', '45', '45'),
('973', '6', '', '36', '76', '28'),
('974', '66', '', '97', '75', '14'),
('975', '36', '', '3', '54', '45'),
('976', '98', '', '1', '18', '88'),
('977', '70', '', '5', '3', '5'),
('978', '42', '', '60', '52', '26'),
('979', '2', '', '99', '66', '88'),
('980', '69', '', '11', '96', '70'),
('981', '83', '', '39', '98', '45'),
('982', '75', '', '61', '3', '86'),
('983', '76', '', '87', '57', '24'),
('984', '51', '', '78', '28', '100'),
('985', '2', '', '85', '79', '15'),
('986', '37', '', '72', '38', '94'),
('987', '100', '', '50', '59', '99'),
('988', '19', '', '2', '49', '35'),
('989', '87', '', '44', '10', '41'),
('990', '87', '', '35', '71', '80'),
('991', '62', '', '83', '79', '84'),
('992', '12', '', '81', '8', '20'),
('993', '78', '', '69', '79', '95'),
('994', '18', '', '74', '6', '37'),
('995', '58', '', '72', '22', '82'),
('996', '13', '', '83', '63', '85'),
('997', '97', '', '49', '17', '2'),
('998', '92', '', '33', '25', '87'),
('999', '57', '', '79', '97', '34'),
('1000', '43', '', '39', '84', '65');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `employeeperformance`
--
ALTER TABLE `employeeperformance`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `employeeperformance`
--
ALTER TABLE `employeeperformance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1006;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
