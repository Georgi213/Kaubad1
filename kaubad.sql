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
-- Tabeli struktuur tabelile `kaubad`
--

CREATE TABLE `kaubad` (
  `id` int(11) NOT NULL,
  `nimetus` varchar(255) DEFAULT NULL,
  `kaubagrupi_id` int(11) DEFAULT NULL,
  `hind` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Andmete tõmmistamine tabelile `kaubad`
--

INSERT INTO `kaubad` (`id`, `nimetus`, `kaubagrupi_id`, `hind`) VALUES
(1, 'ahjutellis', 1, '8.20'),
(2, 'fassaaditellis', 1, '7.50'),
(3, 'bituumenrull', 1, '520.00'),
(4, 'test', 1, '23.00');

--
-- Indeksid tõmmistatud tabelitele
--

--
-- Indeksid tabelile `kaubad`
--
ALTER TABLE `kaubad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_kaubagrup` (`kaubagrupi_id`);

--
-- AUTO_INCREMENT tõmmistatud tabelitele
--

--
-- AUTO_INCREMENT tabelile `kaubad`
--
ALTER TABLE `kaubad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tõmmistatud tabelite piirangud
--

--
-- Piirangud tabelile `kaubad`
--
ALTER TABLE `kaubad`
  ADD CONSTRAINT `fk_kaubagrup` FOREIGN KEY (`kaubagrupi_id`) REFERENCES `kaubagrupid` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
