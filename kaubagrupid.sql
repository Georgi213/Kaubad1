-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Loomise aeg: Jaan 03, 2022 kell 01:48 PL
-- Serveri versioon: 10.1.38-MariaDB
-- PHP versioon: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Andmebaas: `blinov`
--

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `kaubagrupid`
--

CREATE TABLE `kaubagrupid` (
  `id` int(11) NOT NULL,
  `grupinimi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Andmete tõmmistamine tabelile `kaubagrupid`
--

INSERT INTO `kaubagrupid` (`id`, `grupinimi`) VALUES
(2, 'katusematerjal'),
(1, 'tellised'),
(3, 'test');

--
-- Indeksid tõmmistatud tabelitele
--

--
-- Indeksid tabelile `kaubagrupid`
--
ALTER TABLE `kaubagrupid`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `grupinimi` (`grupinimi`);

--
-- AUTO_INCREMENT tõmmistatud tabelitele
--

--
-- AUTO_INCREMENT tabelile `kaubagrupid`
--
ALTER TABLE `kaubagrupid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
