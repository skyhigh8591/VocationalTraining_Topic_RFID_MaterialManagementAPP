-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 
-- 伺服器版本： 10.4.6-MariaDB
-- PHP 版本： 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `topic`
--

-- --------------------------------------------------------

--
-- 資料表結構 `test_db`
--

DROP TABLE IF EXISTS `test_db`;
CREATE TABLE `test_db` (
  `ID` int(11) NOT NULL,
  `RFID` text COLLATE utf8_unicode_ci NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `specification` text COLLATE utf8_unicode_ci NOT NULL,
  `num` int(11) NOT NULL,
  `field` text COLLATE utf8_unicode_ci NOT NULL,
  `remarks` text COLLATE utf8_unicode_ci NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `test_db`
--

INSERT INTO `test_db` (`ID`, `RFID`, `name`, `specification`, `num`, `field`, `remarks`, `datetime`) VALUES
(9, '178.453.178.51', 'iphoneX', '64GB', 999, '10A', '玫瑰金_\r\n黑曜灰', '2020-06-14 22:36:43'),
(10, '684.426.782.89', 'samsung S11+', '128GB', 888, '10B', '藍', '2020-06-14 23:13:16'),
(11, '495.423.471.22', 'SONY XPERIA 1 II', '256GB', 777, '11A', '白色預購_\r\n黑色現貨\r\n', '2020-06-14 23:59:59');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `test_db`
--
ALTER TABLE `test_db`
  ADD PRIMARY KEY (`ID`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `test_db`
--
ALTER TABLE `test_db`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
