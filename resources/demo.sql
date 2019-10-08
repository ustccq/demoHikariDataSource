-- --------------------------------------------------------
-- 主机:                           10.0.30.20
-- 服务器版本:                        5.7.26 - MySQL Community Server (GPL)
-- 服务器操作系统:                      Linux
-- HeidiSQL 版本:                  9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出  表 mysql5testdb.classmates 结构
CREATE TABLE IF NOT EXISTS `classmates` (
  `id` int(11) unsigned DEFAULT NULL,
  `name` char(50) DEFAULT '',
  `sex` char(20) DEFAULT '',
  `age` smallint(4) unsigned DEFAULT NULL,
  `china_one` tinyint(4) unsigned DEFAULT '1',
  `updated_at` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 正在导出表  mysql5testdb.classmates 的数据：~9 rows (大约)
/*!40000 ALTER TABLE `classmates` DISABLE KEYS */;
REPLACE INTO `classmates` (`id`, `name`, `sex`, `age`, `china_one`, `updated_at`) VALUES
	(1, 'Alice', 'female\r\n', 30, 1, 1548158356),
	(3, 'Andrew', 'male', 17, 1, 1548158356),
	(4, 'Bob', 'male', 19, 1, 1548158356),
	(5, 'John', 'male', 25, 1, 1548158356),
	(6, 'Tom', 'male', 29, 1, 1548159028),
	(7, 'Jacky', 'male', 31, 1, 1548158356),
	(8, 'Peter', 'male', 37, 1, 1548158356),
	(2, 'Jerry', 'male', 41, 1, 1548158356),
	(9, 'master', 'female', 50, 1, 1557383078);
/*!40000 ALTER TABLE `classmates` ENABLE KEYS */;

-- 导出  表 mysql5testdb.demo 结构
CREATE TABLE IF NOT EXISTS `demo` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 正在导出表  mysql5testdb.demo 的数据：~1 rows (大约)
/*!40000 ALTER TABLE `demo` DISABLE KEYS */;
REPLACE INTO `demo` (`id`, `name`) VALUES
	(1, 'tt123456999');
/*!40000 ALTER TABLE `demo` ENABLE KEYS */;


INSERT INTO classmates (id, name, sex, age, china_one, updated_at) VALUES
	(1, 'Ali', 'male', 35, 1, 1548158356),
	(3, 'Andrew', 'male', 22, 1, 1548158356),
	(4, 'Bob', 'male', 24, 1, 1548158356),
	(5, 'John', 'male', 30, 1, 1548158356),
	(6, 'Tom', 'male', 34, 1, 1548159028),
	(7, 'Jacky', 'male', 36, 1, 1548158356),
	(8, 'Peter', 'male', 42, 1, 1548158356),
	(2, 'Jerry', 'male', 46, 1, 1548158356),
	(9, 'master', 'female', 55, 1, 1557383078);
