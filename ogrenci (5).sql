-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 25 Ağu 2022, 15:05:37
-- Sunucu sürümü: 10.4.24-MariaDB
-- PHP Sürümü: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `ogrenci`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin_tablosu`
--

CREATE TABLE `admin_tablosu` (
  `id` int(11) NOT NULL,
  `Admin` varchar(20) COLLATE utf8_bin NOT NULL,
  `Sifre` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Tablo döküm verisi `admin_tablosu`
--

INSERT INTO `admin_tablosu` (`id`, `Admin`, `Sifre`) VALUES
(1, 'EdaNur', '1233'),
(2, 'Shovgi', '6541'),
(3, 'Veysel', '5636');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `derslik_tablosu`
--

CREATE TABLE `derslik_tablosu` (
  `Derslik_id` int(11) NOT NULL,
  `Derslik_adi` varchar(20) COLLATE utf8_bin NOT NULL,
  `status` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Tablo döküm verisi `derslik_tablosu`
--

INSERT INTO `derslik_tablosu` (`Derslik_id`, `Derslik_adi`, `status`) VALUES
(1, 'Fizik', '0'),
(2, 'Matematik', '0');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `derslik_terminal_tablosu`
--

CREATE TABLE `derslik_terminal_tablosu` (
  `id` int(11) NOT NULL,
  `Derslik_id` varchar(20) COLLATE utf8_bin NOT NULL,
  `Terminal_id` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Tablo döküm verisi `derslik_terminal_tablosu`
--

INSERT INTO `derslik_terminal_tablosu` (`id`, `Derslik_id`, `Terminal_id`) VALUES
(1, '1', '1'),
(2, '2', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ders_programı_tablosu`
--

CREATE TABLE `ders_programı_tablosu` (
  `id` int(11) NOT NULL,
  `Derslik_id` varchar(20) COLLATE utf8_bin NOT NULL,
  `Ders_adi` varchar(20) COLLATE utf8_bin NOT NULL,
  `Ders_baslama_saati` varchar(20) COLLATE utf8_bin NOT NULL,
  `Ders_bitis_saati` varchar(20) COLLATE utf8_bin NOT NULL,
  `Ders_gunu` varchar(20) COLLATE utf8_bin NOT NULL,
  `Ders_tarihi` varchar(20) COLLATE utf8_bin NOT NULL,
  `ogrenci_id` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Tablo döküm verisi `ders_programı_tablosu`
--

INSERT INTO `ders_programı_tablosu` (`id`, `Derslik_id`, `Ders_adi`, `Ders_baslama_saati`, `Ders_bitis_saati`, `Ders_gunu`, `Ders_tarihi`, `ogrenci_id`) VALUES
(1, '1', 'Fizik', '10:00', '12:00', 'Pazartesi', '28.08.2022', '4'),
(2, '2', 'Matematik', '13:00', '15:00', 'Salı', '29.08.2022', '5'),
(3, '2', 'Matematik', '13:00', '15:00', 'Salı', '29.08.2022', '6');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `fakülte`
--

CREATE TABLE `fakülte` (
  `Fen_Edebiyat_Fakultesi` int(11) NOT NULL,
  `Matematik Bölümü` varchar(20) COLLATE utf8_bin NOT NULL,
  `Psikoloji Bölümü` varchar(20) COLLATE utf8_bin NOT NULL,
  `Türk Dili Ve Edebiyatı Bölümü` varchar(20) COLLATE utf8_bin NOT NULL,
  `Tarih Bölümü` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mühendislik tablosu`
--

CREATE TABLE `mühendislik tablosu` (
  `Muhendislik_Fakultesi` int(11) NOT NULL,
  `Bilgisayar Mühendisliği` varchar(20) COLLATE utf8_bin NOT NULL,
  `İnşaat Mühendisliği` varchar(20) COLLATE utf8_bin NOT NULL,
  `Makine Mühendisliği` varchar(20) COLLATE utf8_bin NOT NULL,
  `Kimya Mühendisliği` varchar(20) COLLATE utf8_bin NOT NULL,
  `Elektrik Elektronik Mühendisliği` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `teknik bilimler tablosu`
--

CREATE TABLE `teknik bilimler tablosu` (
  `Teknik_Bilimler_Meslek_Yuksekokulu` int(11) NOT NULL,
  `Bilgisayar Promramcılığı` varchar(20) COLLATE utf8_bin NOT NULL,
  `İnşaat Bölümü` varchar(20) COLLATE utf8_bin NOT NULL,
  `Gıda İşleme Bölümü` varchar(20) COLLATE utf8_bin NOT NULL,
  `Elektrik Ve Enerji Bölümü` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `terminal_tablosu`
--

CREATE TABLE `terminal_tablosu` (
  `id` int(11) NOT NULL,
  `Terminal_ad` varchar(20) COLLATE utf8_bin NOT NULL,
  `IPadress` varchar(20) COLLATE utf8_bin NOT NULL,
  `status` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Tablo döküm verisi `terminal_tablosu`
--

INSERT INTO `terminal_tablosu` (`id`, `Terminal_ad`, `IPadress`, `status`) VALUES
(1, 'Yüztanıma', '', '0');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yoklama`
--

CREATE TABLE `yoklama` (
  `id` int(11) NOT NULL,
  `ogrenci_no` varchar(20) COLLATE utf8_bin NOT NULL,
  `Derslik_id` varchar(20) COLLATE utf8_bin NOT NULL,
  `status` varchar(20) COLLATE utf8_bin NOT NULL,
  `Ders_tarihi` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Tablo döküm verisi `yoklama`
--

INSERT INTO `yoklama` (`id`, `ogrenci_no`, `Derslik_id`, `status`, `Ders_tarihi`) VALUES
(1, '12', '1', '0', '28.08.2022'),
(2, '13', '2', '0', '29.08.2022'),
(3, '14', '2', '0', '29.08.2022');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `öğrenci tablosu`
--

CREATE TABLE `öğrenci tablosu` (
  `id` int(11) NOT NULL,
  `Tc _no` varchar(20) COLLATE utf8_bin NOT NULL,
  `Ogrenci_no` varchar(20) COLLATE utf8_bin NOT NULL,
  `isim` varchar(20) COLLATE utf8_bin NOT NULL,
  `soyisim` varchar(20) COLLATE utf8_bin NOT NULL,
  `status` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Tablo döküm verisi `öğrenci tablosu`
--

INSERT INTO `öğrenci tablosu` (`id`, `Tc _no`, `Ogrenci_no`, `isim`, `soyisim`, `status`) VALUES
(1, '20335889687', '12', 'EdaNur', 'ADIGÜZEL', '0'),
(2, '54864563653', '13', 'Shovgi', 'Ramazanov', '0'),
(3, '79865416598', '14', 'Veysel', 'Erkoyuncu', '0');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `admin_tablosu`
--
ALTER TABLE `admin_tablosu`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `derslik_tablosu`
--
ALTER TABLE `derslik_tablosu`
  ADD PRIMARY KEY (`Derslik_id`);

--
-- Tablo için indeksler `derslik_terminal_tablosu`
--
ALTER TABLE `derslik_terminal_tablosu`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `ders_programı_tablosu`
--
ALTER TABLE `ders_programı_tablosu`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `fakülte`
--
ALTER TABLE `fakülte`
  ADD PRIMARY KEY (`Fen_Edebiyat_Fakultesi`);

--
-- Tablo için indeksler `mühendislik tablosu`
--
ALTER TABLE `mühendislik tablosu`
  ADD PRIMARY KEY (`Muhendislik_Fakultesi`);

--
-- Tablo için indeksler `teknik bilimler tablosu`
--
ALTER TABLE `teknik bilimler tablosu`
  ADD PRIMARY KEY (`Teknik_Bilimler_Meslek_Yuksekokulu`);

--
-- Tablo için indeksler `terminal_tablosu`
--
ALTER TABLE `terminal_tablosu`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `yoklama`
--
ALTER TABLE `yoklama`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `öğrenci tablosu`
--
ALTER TABLE `öğrenci tablosu`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `admin_tablosu`
--
ALTER TABLE `admin_tablosu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `derslik_tablosu`
--
ALTER TABLE `derslik_tablosu`
  MODIFY `Derslik_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `derslik_terminal_tablosu`
--
ALTER TABLE `derslik_terminal_tablosu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `ders_programı_tablosu`
--
ALTER TABLE `ders_programı_tablosu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `fakülte`
--
ALTER TABLE `fakülte`
  MODIFY `Fen_Edebiyat_Fakultesi` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `mühendislik tablosu`
--
ALTER TABLE `mühendislik tablosu`
  MODIFY `Muhendislik_Fakultesi` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `teknik bilimler tablosu`
--
ALTER TABLE `teknik bilimler tablosu`
  MODIFY `Teknik_Bilimler_Meslek_Yuksekokulu` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `terminal_tablosu`
--
ALTER TABLE `terminal_tablosu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `yoklama`
--
ALTER TABLE `yoklama`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `öğrenci tablosu`
--
ALTER TABLE `öğrenci tablosu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
