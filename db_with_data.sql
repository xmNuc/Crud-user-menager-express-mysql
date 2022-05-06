-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Wersja serwera:               10.4.22-MariaDB - mariadb.org binary distribution
-- Serwer OS:                    Win64
-- HeidiSQL Wersja:              11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Zrzucanie danych dla tabeli crud_user_menagment.user: ~33 rows (około)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `first_name`, `last_name`, `email`, `phone`, `comments`, `status`) VALUES
	('1', 'Zee', 'Neee', 'Mtytest@email.com', '526345674755675468', 'No any comment', 'active'),
	('10', '+first_name+', '+last_name+', '+email+', '+phone+', '+comments+', 'active'),
	('11', 'first_name', '+last_name+', '+email+', '+phone+', '+comments+', 'active'),
	('12', 'first_name+', '+last_name+', '+email+', '+phone+', '+comments+', 'active'),
	('13', 'u', '', '', '', '', 'active'),
	('2', 'Bre', 'Reeee', 'BreRee@test.com', '64563422', 'sdfgdsfgdfg', 'active'),
	('208', 'tsdhjg', 'jgfjgjf', 'jgfj', 'fgjf', 'gjfjfgjfgj', 'active'),
	('2147483647', 'wergrhtfjy', 'jghkf', 'fhkj', 'fghjkf', 'fhjkhjk', 'active'),
	('26', '', '', '', '', '', 'active'),
	('3', 'Looo', 'Koooo', 'adasd@sda.sf', '765432', 'nope', 'active'),
	('4', 'Unac', 'No act', 'Noact@test.ol', '312', '', 'unactive'),
	('40', '', '', '', '', '', 'active'),
	('4181', '', '', '', '', '', 'active'),
	('5', 'ko', 'lo', 'kolo@ko.ko', '12', '', 'active'),
	('55', '12e12312', '2312312', '3123123123', '12312341', '2312312414123', 'active'),
	('6', 'nnnnn', 'nnnnnn', 'nnnn', '34', 'h', 'active'),
	('603648', '2425', '23423', '4234', '23423', '4234234', 'active'),
	('62a91819-aee8-425f-bf88-b94a0c8fdadd', 'rsdgsdgs', 'dgsdg', 'sdg', 'sgsdgsdg', 'sdg', 'active'),
	('7', 'John', 'Rambo', 'jr@jr.jr', '12345', 'nope', 'active'),
	('7994', '', '', '', '', '', 'active'),
	('7a55eb6d-b98d-4cff-b16e-bf45413cbc1b', 'dgfdfghfdghfgh', 'fdghdfghfdghfgh', '', '', '', 'active'),
	('8', 'John', 'Rambo', 'jr@jr.jr', '12345', 'nope', 'active'),
	('82', '', '', '', '', '', 'active'),
	('8375d547-916a-4384-9717-0d7206157a21', 'fhfgh', '', '', '', 'fgh', 'active'),
	('897', '', '', '', '', '', 'active'),
	('9', '+first_name+', '+last_name+', '+email+', '+phone+', '+comments+', 'active'),
	('91c3304c-351d-4409-a612-0b6ed569bbb4', 'asdasdasd', 'asdasd', 'asdasd', '', '', 'active'),
	('98d16fd2-3542-48d1-aaa5-48f47c58767b', 'asdasdasd', 'asdasd', 'asdasd', '', '', 'active'),
	('9f13dbd3-2b88-40e0-960e-95c604e436ad', 'dfdsgfd', 'sgfsdf', 'gdsfg', 'sdfgdsfg', 'dfsgdsf', 'active'),
	('d7ebcf98-a010-427f-876a-24eae1246d61', '', '', '', '', '', 'active'),
	('e5ff7f81-e0bc-405e-846e-d093dc3bc1d6', '', '', '', '', '', 'active'),
	('f186998c-f40b-4fb5-9513-d048673bf38f', '', '', '', '', '', 'active'),
	('f9e4d192-b335-44e4-9993-dff8da5259bb', 'sdfsdgdfg', '', '', '', '', 'active');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
