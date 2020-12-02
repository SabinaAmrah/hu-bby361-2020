-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2020 at 08:42 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sabinaamrahova_02`
--
CREATE DATABASE IF NOT EXISTS `sabinaamrahova_02` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `sabinaamrahova_02``;
-- --------------------------------------------------------

--
-- Table structure for table `kitapbilgileri`
--

CREATE TABLE `kitapbilgileri` (
  `kitapadi` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitap Adı',
  `kitapbasyeri` varchar(120) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabın Basım Yeri',
  `kitapbasyili` year(4) NOT NULL COMMENT 'Kitabın Basım Yılı',
  `kitapdili` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabın Dili',
  `kitapoduncbilgisi` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Ödünç Verme',
  `kitappdfbilgisi` varchar(25) COLLATE utf8_unicode_ci NOT NULL COMMENT 'PDF versiyon',
  `kitapyayevi` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yayınevi',
  `ISBN` text COLLATE utf8_unicode_ci NOT NULL,
  `yayinevino` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yayınevi ID',
  `yazarno` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yazar ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `kitapbilgileri`
--

INSERT INTO `kitapbilgileri` (`kitapadi`, `kitapbasyeri`, `kitapbasyili`, `kitapdili`, `kitapoduncbilgisi`, `kitappdfbilgisi`, `kitapyayevi`, `ISBN`, `yayinevino`, `yazarno`) VALUES
('Elements of Style: Designing a Home & a Life', 'New York, United States', 2014, 'English', 'Ödünç alınabiliyor', 'Mevcut', 'Simon & Schuster', '1476744874', '0000000121834395', '1'),
('Sketching for Architecture + Interior Design: A practical guide on sketching for architecture and in', 'London, United Kingdom', 2015, 'English', 'Ödünç alınamıyor', 'Mevcut değil', 'Laurence King Publishing\r\n', '178067564X', '0001322111099002', '2'),
('Designing History: The Extraordinary Art and Style of the Obama White House', 'New York, United States', 2020, 'English', 'Ödünç alınabiliyor', 'Mevcut', 'Rizzoli', '9780847864799', '0023322030010040', '3'),
('Yatlarda İç Mekan Tasarımı ve Algısı\r\n', 'İstanbul, Türkiye', 2020, 'Türkçe', 'Ödünç alınamıyor', 'Mevcut', 'YEM Yayın', '9786257008235', '0021044020001998', '4'),
('Living Space I\r\n', 'California, United States', 2014, 'English', 'Ödünç alınamıyor', 'Mevcut değil', 'DMP Publishing', '9788997079780', '001788990022334', '5'),
('Kitchen & Bath Design Presentation: Drawing, Plans, Digital Rendering', 'New York, United States', 2014, 'English', 'Ödünç alınabiliyor', 'Mevcut', 'Wiley', '9781118568743', '0002211030045665', '6'),
('Vogue Living: Country, City, Coast', 'New York, United States', 2017, 'English', 'Ödünç alınamıyor', 'Mevcut değil', 'Knopf', '9781524732059', '0000000081578525', '7'),
('Mimarlıkta Teknik Resim\r\n', 'İstanbul, Türkiye', 2016, 'Türkçe', 'Ödünç alınabiliyor', 'Mevcut', 'YEM Yayınları', '9786058177703', '0021044020001998', '8'),
('İç Mekan Tasarımının Temelleri\r\n', 'İstanbul, Türkiye', 2015, 'Türkçe', 'Ödünç alınabiliyor', 'Mevcut değil', 'Literatür Yayıncılık', '9789750406898', '0023022012235446', '9'),
('Mimarlık Kavramları\r\n', 'İstanbul, Türkiye', 2018, 'Türkçe', 'Ödünç alınabiliyor', 'Mevcut', 'YEM Yayınları', '9786058136663', '0021044020001998', '10'),
('Bugünün Türkiyesi\'nde Mimarlık?\r\n', 'İstanbul, Türkiye', 2018, 'Türkçe', 'Ödünç alınamıyor', 'Mevcut', 'İstanbul Bilgi Üniversitesi Yayınları', '9786053995180', '0002011043302025', '11'),
('Mimarlığın Temelleri\r\n', 'İstanbul, Türkiye', 2013, 'Türkçe', 'Ödünç alınamıyor', 'Mevcut değil', 'Literatür Yayıncılık', '9789750405761', '0023022012235446', '12');

-- --------------------------------------------------------

--
-- Stand-in structure for view `sabinaamrahova_02`
-- (See below for the actual view)
--
CREATE TABLE `sabinaamrahova_02` (
`kitapadi` varchar(100)
,`yayineviadi` varchar(60)
,`yazaradi` varchar(100)
,`yazarsoyad` varchar(100)
);

-- --------------------------------------------------------

--
-- Table structure for table `yayinevibilgileri`
--

CREATE TABLE `yayinevibilgileri` (
  `yayineviadi` varchar(60) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yayınevi',
  `yayinevisehirulke` varchar(80) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yayınevi Ülke Şehir Bilgisi',
  `yayinevino` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yayınevi ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `yayinevibilgileri`
--

INSERT INTO `yayinevibilgileri` (`yayineviadi`, `yayinevisehirulke`, `yayinevino`) VALUES
('Simon & Schuster', 'New York, United States', '0000000121834395'),
('Laurance King Publishing', 'London, United Kingdom', '0001322111099002'),
('Rizzoli', 'New York, United States', '0023322030010040'),
('YEM Yayınları', 'İstanbul, Türkiye', '0021044020001998'),
('DMP Publishing', 'San Francisco, United States', '001788990022334'),
('Wiley', 'Hoboken, United States', '0002211030045665'),
('Knopf', 'New York, United States', '0000000081578525'),
('YEM Yayınları', 'İstanbul, Türkiye', '0021044020001998'),
('Literatür Yayıncılık', 'İstanbul, Türkiye', '0023022012235446'),
('YEM Yayınları', 'İstanbul, Türkiye', '0021044020001998'),
('İstanbul Bilgi Üniversitesi Yayınları', 'İstanbul, Türkiye', '0002011043302025'),
('Literatür Yayıncılık', 'İstanbul, Türkiye', '0023022012235446');

-- --------------------------------------------------------

--
-- Table structure for table `yazarbilgileri`
--

CREATE TABLE `yazarbilgileri` (
  `yazaradi` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yazar Adı',
  `yazarsoyad` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yazar Soyadı',
  `yazarno` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yazar Numarası'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `yazarbilgileri`
--

INSERT INTO `yazarbilgileri` (`yazaradi`, `yazarsoyad`, `yazarno`) VALUES
('Erin', 'Gates', '1'),
('Stephanie', 'Travis', '2'),
('Margaret', 'Russel', '3'),
('İnanç Işıl', 'Yıldırım', '4'),
('Kolektif', '', '5'),
('Margaret', 'Krohn', '6'),
('Hamish', 'Bowles', '7'),
('Fehmi', 'Kızıl', '8'),
('Stephen', 'Anderson', '9'),
('Doğan', 'Kuban', '10'),
('Kolektif', '', '11'),
('Lorraine', 'Farrelly', '12');

-- --------------------------------------------------------

--
-- Structure for view `sabinaamrahova_02`
--
DROP TABLE IF EXISTS `sabinaamrahova_02`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sabinaamrahova_02`  AS SELECT `k`.`kitapadi` AS `kitapadi`, `ye`.`yayineviadi` AS `yayineviadi`, `ya`.`yazaradi` AS `yazaradi`, `ya`.`yazarsoyad` AS `yazarsoyad` FROM ((`kitapbilgileri` `k` join `yayinevibilgileri` `ye`) join `yazarbilgileri` `ya`) WHERE `k`.`kitapdili` = 'Türkçe' AND `k`.`yayinevino` = `ye`.`yayinevino` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kitapbilgileri`
--
ALTER TABLE `kitapbilgileri`
  ADD UNIQUE KEY `ISBN` (`ISBN`(20)),
  ADD KEY `yayinevino` (`yayinevino`),
  ADD KEY `yazarno` (`yazarno`);

--
-- Indexes for table `yayinevibilgileri`
--
ALTER TABLE `yayinevibilgileri`
  ADD KEY `yayinevino` (`yayinevino`);

--
-- Indexes for table `yazarbilgileri`
--
ALTER TABLE `yazarbilgileri`
  ADD UNIQUE KEY `yazarno` (`yazarno`(15));
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
