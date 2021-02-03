-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2021 at 03:54 AM
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
-- Database: `sabinaamrahova_final`
--

-- --------------------------------------------------------

--
-- Table structure for table `kitap`
--

CREATE TABLE `kitap` (
  `eserKayitNo` int(11) NOT NULL COMMENT 'Eserin Kayıt Numarası',
  `eserKayitTarihi` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Eserin Kayıt Tarihi',
  `eserAdi` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Eserin Adı',
  `eserBasimYili` year(4) NOT NULL COMMENT 'Eserin Basıldığı Yıl',
  `eserISBN` bigint(11) NOT NULL COMMENT 'Eserin ISBN Bilgisi',
  `yazarNo` int(11) NOT NULL COMMENT 'Yazar Numarası',
  `yayineviNo` int(11) NOT NULL COMMENT 'Yayınevi Numarası',
  `eserAciklama` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Eserin Açıklaması'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `kitap`
--

INSERT INTO `kitap` (`eserKayitNo`, `eserKayitTarihi`, `eserAdi`, `eserBasimYili`, `eserISBN`, `yazarNo`, `yayineviNo`, `eserAciklama`) VALUES
(1, '2021-02-03 02:34:29', 'Bir İdam Mahkumunun Son Günü', 2013, 9786053609902, 1, 1, 'Konu Bir İdam Mahkumunun Son Günü ise “Bir kitap okudum ve hayatım değişti.” cümlesi, tüm mecazlardan sıyrılıp gerçek bir anlama bürünüyor. Ölümsüz yazar Victor Hugo’nun 1829 yılında kaleme aldığı roman, yazarın Paris’teki ünlü Greve Meydanı’nda gerçekleştirilen bir idama tanıklık etmesinden ilham alıyor.\r\n\r\nBir İdam Mahkumunun Son Günü, 19’uncu yüzyıl Fransa’sını gerçekçi bir biçimde yansıtması bakımından tarihi ve toplumsal bir kaynak olarak değerlendiriliyor. Yazarın henüz 27 yaşındayken takma bir adla yayımladığı eser, döneminin siyasi ve sosyolojik yapısına bir eleştiri niteliği taşıyor. '),
(2, '2021-02-03 02:34:29', 'İnsanın Anlam Arayışı', 2009, 9786054054206, 2, 2, '20. yüzyılın önde gelen psikiyatrlarından Viktor Frankl, otuzun üzerinde yabancı dile çevrilen ve bütün dünyada 12 milyondan fazla satan İnsanın Anlam Arayışı\'nda, kurucusu olduğu logoterapinin ilkelerini, İkinci Dünya Savaşı sırasında bir toplama kampındaki deneyimleri eşliğinde anlatmaktadır.\r\nOkurlar, Frankl\'ın tasvir ettiği toplama kampının, dünyayı daha büyük bir hapishane olarak kavramamızı sağlayacak parlak bir metafora dönüştüğünü fark edecektir. Gasset, Heidegger ve Sartre\'dan aşina olduğumuz düşünceler ışığında, varoluşun çetin koşullarında \"anlam\"ı keşfetmemize yardım edecek süreci anlatan Frankl, \"İnsanı insan yapan nedir?\" sorusuna da yanıt vermeye çalışıyor...'),
(3, '2021-02-03 02:34:29', 'Şeker Portakalı\r\n', 2000, 9789750738609, 3, 3, 'Acı dolu bir hayat sürdürmek ve bunu yaşamın olağan seyri gibi kabul etmek, ta ki hayattaki en gerçek ve karşı konulamaz acının ne olduğunu öğrenene kadar… Şeker Portakalı; yoksulluk ve sevgisizlik içinde yaşayan küçük Zeze’nin dünyasını, okuyucusuna yalnızca minik bir çocuğun gözünden değil, evrensel bir hakikat penceresinden sunuyor. \r\n\r\nBrezilyalı yazar Jose Mauro de Vasconcelos’un 1968’de yayımlanan Şeker Portakalı adlı eseri, yalın anlatımı ve çarpıcı hikâyesiyle dünya edebiyatının unutulmaz başyapıtları arasında yer alıyor. Yazarının hayatından izler taşıyan eser, bir çocuğun iç dünyasından yola çıkarak tüm insanlığa acıyla yoğrularak olgunlaşmanın ağırlığını duyumsatıyor. \r\n\r\nGerçekçi anlatımı ve duygu ağırlıklı temasıyla Latin Amerika edebiyatını tüm yönleriyle yansıtan Şeker Portakalı; saflığı, şefkati ve acıyı eksiksiz bir empati ile iliklerinize kadar hissetmenizi sağlayacak.'),
(4, '2021-02-03 02:34:29', 'Fareler ve İnsanlar\r\n', 2012, 9789755705859, 4, 4, 'Kitaptaki olay örgüsü ana karakterler George Milton ile Lennie Small etrafında şekilleniyor. Hayallerini gerçekleştirmek için para biriktirmeye çalışan bu iki arkadaş, aynı zamanda gerçek bir dostluk hikayesini de gözler önüne seriyor. Hüzünlü ve trajik sonu, okuyucuda biraz hayal kırıklığı yaşatsa da geriye, yalnız kalmamak için insanların verdiği tavizleri, dostluğu ve insanların hayallerine ulaşma çabalarını yeni baştan sorgulatacak güzel bir hikaye bırakıyor.'),
(5, '2021-02-03 02:34:29', '1984', 2000, 9789750718533, 5, 5, 'Distopya olarak nitelendirilen George Orwell’ın bu şahane eseri, geçmişin aslında ne kadar da gelecekten izler taşıdığını ortaya koyuyor. 1948’de kaleme aldığı bu eser ile Orwell, günümüz modern dünyasına bir protesto bırakıyor. Her ne kadar kitabında 1984 yılını tasvir etse de kitabın derinliklerinde bugünden izler de bulabilmeniz mümkün. Bu durumda elbette ki George Orwell’ın ileri görüşlülüğü etkili.'),
(6, '2021-02-03 02:51:22', 'Martin Eden', 2014, 9786053322122, 6, 1, 'Jack London\'ın yarı otobiyografik romanı Martin Eden, 20. yüzyıl başında sosyal ve ideolojik meseleler ağırlıklı içeriğiyle Amerikan edebiyatında büyük ölçüde kabul görmüştür. London farklı sınıflar arasındaki zihniyet ve değer farklarını gözlerimizin önüne sererken, statü ve servetin Amerikan toplumundaki hayati önemine işaret eder. Romanın ana temalarından biri, başarı ve refah yolunun sosyal sınıf farkı gözetilmeksizin herkese açık olduğu şeklinde özetlenebilecek Amerikan Rüyası\'dır. Ya da bu idealin yarattığı muazzam hayal kırıklığı…'),
(7, '2021-02-03 02:51:55', '', 0000, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `yayinevi`
--

CREATE TABLE `yayinevi` (
  `yayineviNo` int(11) NOT NULL COMMENT 'Yayınevi Numarası',
  `yayineviKayitTarihi` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Yayınevi Kayıt Tarihi',
  `yayineviAdi` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yayınevinin Adı',
  `yayineviURL` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yayınevi Web Adresi'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `yayinevi`
--

INSERT INTO `yayinevi` (`yayineviNo`, `yayineviKayitTarihi`, `yayineviAdi`, `yayineviURL`) VALUES
(1, '2021-02-03 02:40:19', 'İş Bankası Kültür Yayınları', 'https://www.iskultur.com.tr/'),
(2, '2021-02-03 02:40:19', 'Okuyan Us Yayınları', 'https://okuyanus.com.tr/'),
(3, '2021-02-03 02:40:19', 'Can Çocuk Yayınları', 'https://www.cancocuk.com/'),
(4, '2021-02-03 02:40:19', 'Sel Yayıncılık', 'https://www.selyayincilik.com/'),
(5, '2021-02-03 02:40:19', 'Can Yayınları', 'https://canyayinlari.com/');

-- --------------------------------------------------------

--
-- Table structure for table `yazar`
--

CREATE TABLE `yazar` (
  `yazarNo` int(11) NOT NULL COMMENT 'Yazarın Numarası',
  `yazarKayitTarihi` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Yazar Kayıt Tarihi',
  `yazarAdi` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yazarın Adı',
  `yazarSoyadi` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yazarın Soyadı',
  `yazarURL` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yazar URL Bilgisi'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `yazar`
--

INSERT INTO `yazar` (`yazarNo`, `yazarKayitTarihi`, `yazarAdi`, `yazarSoyadi`, `yazarURL`) VALUES
(1, '2021-02-03 02:45:43', 'Victor', 'Hugo', 'https://www.britannica.com/biography/Victor-Hugo'),
(2, '2021-02-03 02:45:43', 'Victor', 'E. Frankl', 'https://www.goodreads.com/author/show/2782.Viktor_E_Frankl'),
(3, '2021-02-03 02:45:43', 'Jose Mauro', 'De Vasconcelos', 'https://en.wikipedia.org/wiki/Jos%C3%A9_Mauro_de_Vasconcelos'),
(4, '2021-02-03 02:45:43', 'John', 'Steinbeck', 'https://www.steinbeck.org/about-john/biography/'),
(5, '2021-02-03 02:45:43', 'George', 'Orwell', 'https://www.orwellfoundation.com/the-orwell-foundation/about/about-george-orwell/'),
(6, '2021-02-03 02:50:04', 'Jack', 'London', 'https://en.wikipedia.org/wiki/Jack_London');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kitap`
--
ALTER TABLE `kitap`
  ADD PRIMARY KEY (`eserKayitNo`),
  ADD KEY `eserISBN` (`eserISBN`);

--
-- Indexes for table `yayinevi`
--
ALTER TABLE `yayinevi`
  ADD PRIMARY KEY (`yayineviNo`);

--
-- Indexes for table `yazar`
--
ALTER TABLE `yazar`
  ADD PRIMARY KEY (`yazarNo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kitap`
--
ALTER TABLE `kitap`
  MODIFY `eserKayitNo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Eserin Kayıt Numarası', AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `yayinevi`
--
ALTER TABLE `yayinevi`
  MODIFY `yayineviNo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Yayınevi Numarası', AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `yazar`
--
ALTER TABLE `yazar`
  MODIFY `yazarNo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Yazarın Numarası', AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
