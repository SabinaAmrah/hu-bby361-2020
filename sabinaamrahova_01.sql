-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2020 at 09:09 PM
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
-- Database: `sabinaamrahova_01`
--

-- --------------------------------------------------------

--
-- Table structure for table `kaynakbilgileri`
--

CREATE TABLE `kaynakbilgileri` (
  `kaynakad` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Kaynağın Adı',
  `kaynakturu` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kaynağın türü(kitap, makale, dergi)',
  `ISBN` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kaynak türü kitapsa, ISBN numarası',
  `kaynakbasyili` date NOT NULL COMMENT 'Kaynağın Basım yılı bilgisi',
  `kaynakbasyeri` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kaynağın basıldığı yer bilgisi',
  `kaynakyayevi` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kaynak Yayınevi Adı',
  `kaynakpdf` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kaynağın PDF versiyonunun var olup olmadığı bilgisi',
  `kaynakodunc01` varchar(80) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kaynağı ödünç almak mümkün mü değil mi bilgisi',
  `kaynakodunc02` datetime(6) NOT NULL COMMENT 'Başkası tarafından ödünç alınmışsa, kütüphaneye geri teslim edileceği tarih',
  `kaynakdil` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kaynağın Dil bilgisi'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `kaynakbilgileri`
--

INSERT INTO `kaynakbilgileri` (`kaynakad`, `kaynakturu`, `ISBN`, `kaynakbasyili`, `kaynakbasyeri`, `kaynakyayevi`, `kaynakpdf`, `kaynakodunc01`, `kaynakodunc02`, `kaynakdil`) VALUES
('The handbook of interior design', 'Book', '9781444336283', '2015-12-04', 'Chichester, West Sussex', 'Wiley Blackwell', 'Mevcut değil', 'Ödünç alınabilir', '2020-12-01 10:00:00.000000', 'English'),
('Simple introduction to architecture', 'Book', '9786052065006', '2017-11-05', 'İstanbul', 'Altınbaş Üniversitesi yayınları', 'Mevcut değil', 'Ödünç alınamıyor.', '0000-00-00 00:00:00.000000', 'English'),
('Mimarlık nedir? Mimar ne yapar?', 'Book', '9786053962069', '2012-07-23', 'İstanbul', 'Arkeoloji ve Sanat Yayınları', 'Mevcut', 'Ödünç alınabilir', '2020-11-09 14:00:00.000000', 'Turkish'),
('Mimarlıkta sunum teknikleri', 'Book', '9789750405952\r\n', '0000-00-00', 'İstanbul', 'Literatür yayınları; 654 Mimarlık Temelleri dizisi 01', 'Mevcut değil.', 'Ödünç alınabilir.', '2020-11-17 00:00:00.000000', 'Turkish'),
('Grafik tasarımda format', 'Book', '9789750407246', '2016-02-12', 'İstanbul', 'Literatür Yayınevi', 'Mevcut', 'Ödünç alınamıyor', '0000-00-00 00:00:00.000000', 'Turkish');

-- --------------------------------------------------------

--
-- Table structure for table `yayinevibilgileri`
--

CREATE TABLE `yayinevibilgileri` (
  `yayineviad` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yayınevinin adı',
  `yayinevino` int(30) NOT NULL COMMENT 'Yayınevinin numarası',
  `yayineviulkesehir` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yayınevinin ülke, şehir bilgisi',
  `yayineviyil` date NOT NULL COMMENT 'Yayınevinin kuruluş yılı'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `yayinevibilgileri`
--

INSERT INTO `yayinevibilgileri` (`yayineviad`, `yayinevino`, `yayineviulkesehir`, `yayineviyil`) VALUES
('Wiley Blackwell', 7688576, 'Chichester, United Kingdom', '2007-04-07'),
('Literatür yayınları', 46576865, 'İstanbul, Türkiye', '1988-11-17'),
('Altınbaş Üniversitesi yayınları', 64657546, 'İstanbul, Turkiye', '2017-07-01'),
('Vitra Yayınları', 76857435, 'İstanbul, Türkiye', '2011-09-02'),
('Arkeoloji ve Sanat Yayınları', 76868575, 'İstanbul, Türkiye', '1978-02-10');

-- --------------------------------------------------------

--
-- Table structure for table `yazarbilgileri`
--

CREATE TABLE `yazarbilgileri` (
  `yazarad` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yazarın Adı',
  `yazarsoyad` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yazarın Soyadı',
  `yazarno` int(25) NOT NULL COMMENT 'Yazar numarası(ID number)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `yazarbilgileri`
--

INSERT INTO `yazarbilgileri` (`yazarad`, `yazarsoyad`, `yazarno`) VALUES
('Lorraine', 'Farrelly', 5647568),
('Tomasz E.', 'Malec', 6574763),
('Cengiz', 'Bektaş', 46475745),
('Jo Ann Asher', 'Thompson', 76646345),
('Gavin', 'Ambrose', 77264190);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kaynakbilgileri`
--
ALTER TABLE `kaynakbilgileri`
  ADD PRIMARY KEY (`ISBN`);

--
-- Indexes for table `yayinevibilgileri`
--
ALTER TABLE `yayinevibilgileri`
  ADD UNIQUE KEY `yayinevino` (`yayinevino`);

--
-- Indexes for table `yazarbilgileri`
--
ALTER TABLE `yazarbilgileri`
  ADD UNIQUE KEY `yazarno` (`yazarno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
