-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 09 mrt 2020 om 09:16
-- Serverversie: 10.4.10-MariaDB
-- PHP-versie: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webshop`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(1) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `category`
--

CREATE TABLE `category` (
  `id` int(2) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `category`
--

INSERT INTO `category` (`id`, `name`, `description`, `active`) VALUES
(1, 'tafellamp', 'Tafellampen zijn binnenlampen voor op tafel.', 1),
(2, 'buitenlamp', 'Buitenlampen zijn mooie lampen voor op buiten.', 1),
(3, 'designlamp', 'Designlampen zijn moderne lampen waar speciaal is gelet op het design.', 1),
(4, 'bureaulamp', 'Bureaulampen zijn binnenlampen voor op uw bureau of werkplek.', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `customer`
--

CREATE TABLE `customer` (
  `id` int(5) NOT NULL,
  `gender` int(1) NOT NULL,
  `firstName` varchar(15) NOT NULL,
  `middleName` varchar(10) NOT NULL,
  `lastName` varchar(25) NOT NULL,
  `street` varchar(55) NOT NULL,
  `houseNumber` int(4) NOT NULL,
  `houseNumber_addon` varchar(5) NOT NULL,
  `zipCode` varchar(7) NOT NULL,
  `city` varchar(60) NOT NULL,
  `country` varchar(60) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `e-mailadres` varchar(40) NOT NULL,
  `password` varchar(255) NOT NULL,
  `newsletter_subscription` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `customer`
--

INSERT INTO `customer` (`id`, `gender`, `firstName`, `middleName`, `lastName`, `street`, `houseNumber`, `houseNumber_addon`, `zipCode`, `city`, `country`, `phone`, `e-mailadres`, `password`, `newsletter_subscription`) VALUES
(1, 0, 'Willem', '', 'Janssen', 'Jerome Kernplantsoen', 12, 'A', '3543 DK', 'Utrecht', 'Netherlands', '0654645101', 'willemjanssen@fcutrecht.nl', '827ccb0eea8a706c4c34a16891f84e7b', 1),
(2, 0, 'John', 'van den', 'Brom', 'Jerome Kernplantsoen', 12, 'B', '3543 DK', 'Utrecht', 'Netherlands', '0654645101', 'johnvdbrom@fcutrecht.nl', '827ccb0eea8a706c4c34a16891f84e7b', 0),
(3, 0, 'Mark', 'van der', 'Maarel', 'Jerome Kernplantsoen', 12, 'A BIS', '3543 DK', 'Utrecht', 'Netherlands', '0654645101', 'markvdmaarel@fcutrecht.nl', '827ccb0eea8a706c4c34a16891f84e7b', 1),
(4, 0, 'Jeroen', '', 'Zoet', 'Jerome Kernplantsoen', 12, 'C', '3543 DK', 'Utrecht', 'Netherlands', '0654645101', 'jeroenzoet@fcutrecht.nl', '827ccb0eea8a706c4c34a16891f84e7b', 0),
(5, 0, 'Gyrano', '', 'Kerk', 'Jerome Kernplantsoen', 12, 'D', '3543DK', 'Utrecht', 'Netherlands', '0654645101', 'gyranokerk@fcutrecht.nl', '827ccb0eea8a706c4c34a16891f84e7b', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `category_id` int(4) NOT NULL,
  `price` double(10,2) NOT NULL,
  `color` varchar(20) NOT NULL,
  `weight` int(6) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `category_id`, `price`, `color`, `weight`, `active`) VALUES
(1, 'Arstid', 'Mooie lamp', 1, 39.95, 'wit', 300, 1),
(2, 'Buitenlamp', 'Mooie lamp', 2, 49.95, 'zwart', 400, 1),
(3, 'Gans-lamp', 'Mooie lamp', 3, 89.95, 'zwart', 300, 1),
(4, 'Giraf-lamp', 'Mooie lamp', 3, 89.95, 'wit', 600, 1),
(5, 'Hektar', 'Mooie lamp', 4, 19.95, 'grijs', 300, 1),
(6, 'Jesse', 'Mooie lamp', 1, 99.95, 'zwart', 800, 1),
(7, 'Lampje', 'Mooie lamp', 3, 29.95, 'wit', 300, 1),
(8, 'Llhara', 'Mooie lamp', 3, 129.95, 'wit', 900, 1),
(9, 'Struisvogel', 'Mooie lamp', 1, 39.95, 'wit', 300, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `product_image`
--

CREATE TABLE `product_image` (
  `id` int(5) NOT NULL,
  `product_id` int(5) NOT NULL,
  `image` varchar(30) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `product_image`
--

INSERT INTO `product_image` (`id`, `product_id`, `image`, `active`) VALUES
(1, 1, 'arstid.jpg', 1),
(2, 2, 'buitenlamp.jpg', 1),
(3, 2, 'buitenlamp2.jpg', 1),
(4, 3, 'gans.jpg', 1),
(5, 4, 'giraf.jpg', 1),
(6, 4, 'giraf2.jpg', 1),
(7, 5, 'hektar.jpg', 1),
(8, 6, 'jesse.jpg', 1),
(9, 7, 'lampje.jpg', 1),
(10, 8, 'llahra.jpg', 1),
(11, 9, 'struisvogel.jpg', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `user`
--

CREATE TABLE `user` (
  `id` int(5) NOT NULL,
  `firstName` varchar(15) NOT NULL,
  `middleName` varchar(10) NOT NULL,
  `lastName` varchar(25) NOT NULL,
  `birthDate` date NOT NULL,
  `e-mailadres` varchar(40) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `user`
--

INSERT INTO `user` (`id`, `firstName`, `middleName`, `lastName`, `birthDate`, `e-mailadres`, `password`) VALUES
(1, 'Rodi', 'van', 'Boekel', '2002-01-29', 'rvanboekel2002@gmail.com', 'a10af18ef0271cc2f3207a87b6e3426a'),
(2, 'Jan', 'van', 'Os', '1982-04-17', 'jos@glu.nl', '827ccb0eea8a706c4c34a16891f84e7b');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexen voor tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `e-mailadres` (`e-mailadres`);

--
-- Indexen voor tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `product_image`
--
ALTER TABLE `product_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `e-mailadres` (`e-mailadres`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `category`
--
ALTER TABLE `category`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT voor een tabel `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT voor een tabel `product_image`
--
ALTER TABLE `product_image`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT voor een tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
