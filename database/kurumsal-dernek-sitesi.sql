-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 02 Kas 2018, 00:57:42
-- Sunucu sürümü: 5.7.14
-- PHP Sürümü: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `zinde_db`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `email_settings`
--

CREATE TABLE `email_settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `protocol` varchar(10) COLLATE utf8_turkish_ci DEFAULT NULL,
  `host` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `port` varchar(10) COLLATE utf8_turkish_ci DEFAULT '',
  `user` varchar(100) COLLATE utf8_turkish_ci DEFAULT '',
  `password` varchar(100) COLLATE utf8_turkish_ci DEFAULT '',
  `from` varchar(100) COLLATE utf8_turkish_ci DEFAULT '',
  `to` varchar(100) COLLATE utf8_turkish_ci DEFAULT '',
  `user_name` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `email_settings`
--

INSERT INTO `email_settings` (`id`, `protocol`, `host`, `port`, `user`, `password`, `from`, `to`, `user_name`, `isActive`, `createdAt`) VALUES
(2, 'smtp', 'ssl://mail.netreklamcim.net', '465', 'info@netreklamcim.net', 'NR2018**', 'info@netreklamcim.net', 'eneserol7@gmail.com', 'CMS', 1, '2018-01-14 14:57:54');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `galleries`
--

CREATE TABLE `galleries` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` text COLLATE utf8_turkish_ci,
  `img_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `rank` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `galleries`
--

INSERT INTO `galleries` (`id`, `title`, `url`, `description`, `img_url`, `isActive`, `createdAt`, `rank`) VALUES
(15, 'deneme', 'deneme', '<p>deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama</p>', 'videosinif-proje.png', 1, '2018-10-03 20:52:45', 0),
(16, 'deneme 2', 'deneme-2', '<p>deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama<br></p>', 'summer-header-geneva-lac-aerien-cathedrale-st-pierre-jet-d-eau.jpg', 1, '2018-10-03 20:54:56', 0),
(17, 'deneme 3', 'deneme-3', '<p>deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama deneme açıklama<br></p>', '3444e8007b9bdedc7a552b64e18a05de.jpg', 1, '2018-10-03 21:04:25', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `news`
--

CREATE TABLE `news` (
  `id` int(11) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` text COLLATE utf8_turkish_ci,
  `news_type` varchar(10) COLLATE utf8_turkish_ci DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `viewCount` int(11) NOT NULL,
  `rank` int(11) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `news`
--

INSERT INTO `news` (`id`, `url`, `title`, `description`, `news_type`, `img_url`, `video_url`, `viewCount`, `rank`, `isActive`, `createdAt`) VALUES
(8, 'deneme-haber', 'deneme haber', '<p>deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği</p><p><br></p><p>deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği</p><p><br></p><p><br></p><p>deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği</p><p><br></p><p>deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği</p><p><br></p><p>deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği<br></p>', 'image', 'videosinif-proje.png', '#', 0, 0, 1, '2018-10-04 23:33:31'),
(9, 'deneme-haber-2', 'deneme haber 2', '<p>deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği</p><p><br></p><p>deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği</p><p><br></p><p><br></p><p>deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği</p><p><br></p><p>deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği</p><p><br></p><p>deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği</p>', 'image', 'summer-header-geneva-lac-aerien-cathedrale-st-pierre-jet-d-eau.jpg', '#', 0, 0, 1, '2018-10-04 23:34:25'),
(10, 'deneme-haber-3', 'deneme haber 3', '<p>deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği</p><p><br></p><p>deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği</p><p><br></p><p><br></p><p>deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği</p><p><br></p><p>deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği</p><p><br></p><p>deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği deneme haber içeriği</p>', 'video', '#', 'aURf80vpRxk', 0, 0, 1, '2018-10-04 23:37:16');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `img_url` varchar(255) NOT NULL,
  `rank` int(11) NOT NULL,
  `isActive` tinyint(4) NOT NULL,
  `createdAt` datetime NOT NULL,
  `page_keyw` varchar(300) DEFAULT NULL,
  `page_desc` varchar(300) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `pages`
--

INSERT INTO `pages` (`id`, `title`, `url`, `description`, `img_url`, `rank`, `isActive`, `createdAt`, `page_keyw`, `page_desc`) VALUES
(2, 'Hizmetlerimiz', 'hizmetlerimiz', '<p>Hizmetlerimiz açıklaması</p>', 'videosinif-proje.png', 1, 1, '2018-10-03 18:41:03', 'hizmetlerimiz keywords', 'hizmetlerimiz description'),
(8, 'Galeri', 'galeri', '', '', 2, 1, '2018-10-04 21:41:46', 'galeri keywords', 'galeri description'),
(9, 'Hakkımızda', 'hakkimizda', '', '', 0, 1, '2018-10-04 22:30:10', 'hakkımızda keywords', 'hakkımızda description');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `services`
--

CREATE TABLE `services` (
  `id` int(11) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` text COLLATE utf8_turkish_ci,
  `img_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `services`
--

INSERT INTO `services` (`id`, `url`, `title`, `description`, `img_url`, `rank`, `isActive`, `createdAt`) VALUES
(7, 'deneme-hizmet', 'deneme hizmet', '<p>&nbsp;deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması</p><p><br></p><p>&nbsp;deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması</p><p><br></p><p><br></p><p>&nbsp;deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması</p><p><br></p><p>&nbsp;deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması</p><p><br></p><p><br></p><p>&nbsp;deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması</p>', 'videosinif-proje.png', 0, 1, '2018-10-04 21:55:11'),
(8, 'deneme-hizmet-2', 'deneme hizmet 2', '<p>&nbsp;deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması</p><p><br></p><p>&nbsp;deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması</p><p><br></p><p><br></p><p>&nbsp;deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması&nbsp; deneme hizmet açıklaması deneme hizmet açıklaması<b>&nbsp;</b>deneme hizmet açıklaması deneme hizmet açıklaması</p>', 'summer-header-geneva-lac-aerien-cathedrale-st-pierre-jet-d-eau.jpg', 0, 1, '2018-10-04 21:56:12');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `settings`
--

CREATE TABLE `settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `company_name` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `slogan` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `address` text COLLATE utf8_turkish_ci,
  `about_us` longtext COLLATE utf8_turkish_ci,
  `mission` longtext COLLATE utf8_turkish_ci,
  `vision` longtext COLLATE utf8_turkish_ci,
  `logo` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `mobile_logo` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `phone_1` varchar(15) COLLATE utf8_turkish_ci DEFAULT NULL,
  `phone_2` varchar(15) COLLATE utf8_turkish_ci DEFAULT NULL,
  `fax_1` varchar(15) COLLATE utf8_turkish_ci DEFAULT NULL,
  `fax_2` varchar(15) COLLATE utf8_turkish_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `lat` varchar(20) COLLATE utf8_turkish_ci DEFAULT NULL,
  `long` varchar(20) COLLATE utf8_turkish_ci DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `homepage_references_description` text COLLATE utf8_turkish_ci,
  `map_code` text COLLATE utf8_turkish_ci,
  `site_keyw` varchar(300) COLLATE utf8_turkish_ci DEFAULT NULL,
  `site_desc` varchar(300) COLLATE utf8_turkish_ci DEFAULT NULL,
  `analytics` text COLLATE utf8_turkish_ci,
  `metrica` text COLLATE utf8_turkish_ci,
  `live_support` text COLLATE utf8_turkish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `settings`
--

INSERT INTO `settings` (`id`, `company_name`, `slogan`, `address`, `about_us`, `mission`, `vision`, `logo`, `mobile_logo`, `favicon`, `phone_1`, `phone_2`, `fax_1`, `fax_2`, `email`, `facebook`, `twitter`, `instagram`, `linkedin`, `lat`, `long`, `createdAt`, `updatedAt`, `homepage_references_description`, `map_code`, `site_keyw`, `site_desc`, `analytics`, `metrica`, `live_support`) VALUES
(5, 'Zinde', 'Doğru Adrestesiniz', '																				<p>Yakuplu Mahallesi, Geçit Sokak Vera Plaza Kat:4 D:6, 34520 Beylikdüzü/İstanbul<br></p>															', '																				<p>"Web Tasarımı ve Yazılımı Alanında Profesyonel Ekibimizle Siz Değerli Müşterilerimize Hızlı ve Güvenilir Çözümler Sunmakla Kalmıyor, Sosyal Medya ve Google Reklamlarınıza Profesyonel Dokunuşlar Yapıyoruz. Siz de İşletmenizi İnternete Taşımak İstiyorsanız Doğru Adrestesiniz."<br></p>															', '																				<p>"Web Tasarımı ve Yazılımı Alanında Profesyonel Ekibimizle Siz Değerli Müşterilerimize Hızlı ve Güvenilir Çözümler Sunmakla Kalmıyor, Sosyal Medya ve Google Reklamlarınıza Profesyonel Dokunuşlar Yapıyoruz. Siz de İşletmenizi İnternete Taşımak İstiyorsanız Doğru Adrestesiniz."<br></p>															', '																				<p>"Web Tasarımı ve Yazılımı Alanında Profesyonel Ekibimizle Siz Değerli Müşterilerimize Hızlı ve Güvenilir Çözümler Sunmakla Kalmıyor, Sosyal Medya ve Google Reklamlarınıza Profesyonel Dokunuşlar Yapıyoruz. Siz de İşletmenizi İnternete Taşımak İstiyorsanız Doğru Adrestesiniz."<br></p>															', 'zinde.png', 'zinde.png', 'zinde.png', '05303718083', '05423708083', '11111111111', '22222222222', 'info@netreklamcim.net', 'https://facebook.com/netreklamcim', 'https://twitter.com/netreklamcim', 'https://instagram.com/netreklamcim', 'https://linkedin.com/in/netreklamcim', '', '', '2018-06-11 21:40:52', '2018-10-03 20:02:09', '"Web Tasarımı ve Yazılımı Alanında Profesyonel Ekibimizle Siz Değerli Müşterilerimize Hızlı ve Güvenilir Çözümler Sunmakla Kalmıyor, Sosyal Medya ve Google Reklamlarınıza Profesyonel Dokunuşlar Yapıyoruz. Siz de İşletmenizi İnternete Taşımak İstiyorsanız Doğru Adrestesiniz."', 'https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d380510.6741687111!2d-88.01234121699822!3d41.83390417061058!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sin!4v1455598377120', 'deneme', 'deneme', 'deneme', 'deneme', 'deneme');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `slides`
--

CREATE TABLE `slides` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `allowButton` tinyint(4) DEFAULT NULL,
  `button_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `button_caption` varchar(25) COLLATE utf8_turkish_ci DEFAULT NULL,
  `animation_type` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `animation_time` int(11) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `slides`
--

INSERT INTO `slides` (`id`, `title`, `description`, `img_url`, `allowButton`, `button_url`, `button_caption`, `animation_type`, `animation_time`, `rank`, `isActive`, `createdAt`) VALUES
(4, 'Slider Başlığı', 'Burası slider açıklamasıdır.', 'videosinif-proje.png', 1, 'hizmetlerimiz', 'İncele', NULL, NULL, 0, 1, '2018-10-04 22:43:11'),
(5, 'Slider 2 Başlığı', '<p>Burası slider 2 açıklamasıdır</p>', 'summer-header-geneva-lac-aerien-cathedrale-st-pierre-jet-d-eau.jpg', 0, '', '', NULL, NULL, 0, 1, '2018-10-04 22:43:37');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `img_url` varchar(255) NOT NULL,
  `rank` tinyint(4) NOT NULL DEFAULT '-99',
  `isActive` tinyint(4) NOT NULL,
  `createdAt` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `testimonials`
--

INSERT INTO `testimonials` (`id`, `title`, `description`, `full_name`, `company`, `img_url`, `rank`, `isActive`, `createdAt`) VALUES
(1, 'Muazzam', 'Gerçekten mükemmel iş çıkartmışsınız', 'Enes Erol', 'Net Reklamcım', 'netreklamcimloggo.png', 1, 1, '2018-06-11 21:00:50');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_name` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `full_name` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `permissions` text COLLATE utf8_turkish_ci,
  `user_role_id` int(11) NOT NULL DEFAULT '2',
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `user_name`, `full_name`, `email`, `password`, `permissions`, `user_role_id`, `isActive`, `createdAt`) VALUES
(3, 'enesserol7', 'Enes Erol', 'enesserol7@gmail.com', 'c8837b23ff8aaa8a2dde915473ce0991', '{"brands":{"read":"on","write":"on","update":"on","delete":"on"},"courses":{"read":"on","write":"on","update":"on","delete":"on"},"dashboard":{"read":"on","write":"on","update":"on","delete":"on"},"emailsettings":{"read":"on","write":"on","update":"on","delete":"on"},"galleries":{"read":"on","write":"on","update":"on","delete":"on"},"news":{"read":"on","write":"on","update":"on","delete":"on"},"popups":{"read":"on","write":"on","update":"on","delete":"on"},"portfolio":{"read":"on","write":"on","update":"on","delete":"on"},"portfolio_categories":{"read":"on","write":"on","update":"on","delete":"on"},"product":{"read":"on","write":"on","update":"on","delete":"on"},"references":{"read":"on","write":"on","update":"on","delete":"on"},"services":{"read":"on","write":"on","update":"on","delete":"on"},"settings":{"read":"on","write":"on","update":"on","delete":"on"},"slides":{"read":"on","write":"on","update":"on","delete":"on"},"testimonials":{"read":"on","write":"on","update":"on","delete":"', 1, 1, '2018-06-07 16:57:03'),
(4, 'testuser', 'test user', 'test@test.com', 'e10adc3949ba59abbe56e057f20f883e', 'null', 2, 1, '2018-06-02 17:29:54'),
(5, 'Admin', 'Admin Abi', 'admin@netreklamcim.net', 'c8837b23ff8aaa8a2dde915473ce0991', NULL, 1, 1, '2018-09-22 00:26:32');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user_roles`
--

CREATE TABLE `user_roles` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `permissions` text,
  `isActive` tinyint(4) NOT NULL,
  `createdAt` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `user_roles`
--

INSERT INTO `user_roles` (`id`, `title`, `permissions`, `isActive`, `createdAt`) VALUES
(1, 'Admin', '{"brands":{"read":"on","write":"on","update":"on","delete":"on"},"courses":{"read":"on","write":"on","update":"on","delete":"on"},"dashboard":{"read":"on","write":"on","update":"on","delete":"on"},"emailsettings":{"read":"on","write":"on","update":"on","delete":"on"},"galleries":{"read":"on","write":"on","update":"on","delete":"on"},"news":{"read":"on","write":"on","update":"on","delete":"on"},"pages":{"read":"on","write":"on","update":"on","delete":"on"},"popups":{"read":"on","write":"on","update":"on","delete":"on"},"portfolio":{"read":"on","write":"on","update":"on","delete":"on"},"portfolio_categories":{"read":"on","write":"on","update":"on","delete":"on"},"product":{"read":"on","write":"on","update":"on","delete":"on"},"references":{"read":"on","write":"on","update":"on","delete":"on"},"services":{"read":"on","write":"on","update":"on","delete":"on"},"settings":{"read":"on","write":"on","update":"on","delete":"on"},"slides":{"read":"on","write":"on","update":"on","delete":"on"},"testimonials":{"read":"on","write":"on","update":"on","delete":"on"},"userop":{"read":"on","write":"on","update":"on","delete":"on"},"users":{"read":"on","write":"on","update":"on","delete":"on"},"user_roles":{"read":"on","write":"on","update":"on","delete":"on"}}', 1, '2018-09-21 23:57:09'),
(2, 'Kullanıcı', NULL, 1, '2018-09-21 23:57:19');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `email_settings`
--
ALTER TABLE `email_settings`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `email_settings`
--
ALTER TABLE `email_settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Tablo için AUTO_INCREMENT değeri `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- Tablo için AUTO_INCREMENT değeri `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Tablo için AUTO_INCREMENT değeri `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Tablo için AUTO_INCREMENT değeri `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Tablo için AUTO_INCREMENT değeri `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Tablo için AUTO_INCREMENT değeri `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Tablo için AUTO_INCREMENT değeri `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Tablo için AUTO_INCREMENT değeri `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
