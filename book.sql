-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2021 at 12:27 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book`
--

-- --------------------------------------------------------

--
-- Table structure for table `autori`
--

CREATE TABLE `autori` (
  `idAutor` int(11) NOT NULL,
  `ImeA` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PrezimeA` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brojNapisanihKnjiga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `autori`
--

INSERT INTO `autori` (`idAutor`, `ImeA`, `PrezimeA`, `brojNapisanihKnjiga`) VALUES
(1, 'Ivo', 'Andric', 26),
(2, 'Milos', 'Crnjanski', 15),
(3, 'Fjodor', 'Dostojevski', 20),
(4, 'Lav', 'Tolstoj', 10),
(5, 'Branko', 'Copic', 18),
(6, 'Vilijam', 'Sekspir', 31),
(7, 'Jovan', 'Ducic', 25),
(8, 'Branislav', 'Nusic', 17),
(9, 'Paulo', 'Koeljo', 9),
(10, 'Milorad', 'Pavic', 7);

-- --------------------------------------------------------

--
-- Table structure for table `izdavaci`
--

CREATE TABLE `izdavaci` (
  `idIzdavac` int(11) NOT NULL,
  `ImeI` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PrezimeI` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Ocena` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `izdavaci`
--

INSERT INTO `izdavaci` (`idIzdavac`, `ImeI`, `PrezimeI`, `Ocena`) VALUES
(1, 'Dereta', 'stampa', 10),
(2, 'Heliks', 'Book', 9),
(3, 'Sezam', 'Book', 8),
(4, 'Miba', 'Book', 8),
(5, 'Meta', 'physica', 8),
(6, 'Book', 'print', 10),
(7, 'Laguna', 'izdavastvo', 10),
(8, 'Delfi', 'stampa', 10),
(9, 'Kairos', 'Book', 10),
(10, 'Mascom', 'print', 10);

-- --------------------------------------------------------

--
-- Table structure for table `knjige`
--

CREATE TABLE `knjige` (
  `id` int(11) NOT NULL,
  `naziv` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `godina` int(11) NOT NULL,
  `autor` int(11) NOT NULL,
  `izdavac` int(11) NOT NULL,
  `ocena` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `knjige`
--

INSERT INTO `knjige` (`id`, `naziv`, `godina`, `autor`, `izdavac`, `ocena`) VALUES
(1, 'Znakovi pored puta', 1963, 1, 1, 10),
(2, 'Seobe', 1929, 2, 2, 8),
(3, 'Zlocin i kazna', 1866, 3, 2, 8),
(4, 'Rat i mir', 1869, 4, 3, 8),
(5, 'Magarece godine', 1960, 5, 4, 7),
(6, 'Hamlet', 1584, 6, 6, 9),
(7, 'Gradovi i himere', 1940, 7, 5, 9),
(8, 'Pesme zbirka', 1908, 7, 4, 7),
(9, 'Autobiografija', 1923, 8, 7, 6),
(10, 'Alhemicar', 1988, 9, 8, 6),
(11, 'Brida', 1990, 9, 9, 9),
(12, 'Hazarski recnik', 1984, 10, 8, 10),
(13, 'Istorija Beograda', 1988, 10, 3, 9),
(14, 'Na Drini cuprija', 1945, 1, 2, 6),
(15, 'Itaka i komentari', 1919, 2, 6, 7),
(16, 'Romeo i Julija', 1582, 6, 5, 8),
(17, 'Blago cara Radovana', 1932, 7, 5, 8),
(18, 'Opstinsko dete', 1902, 8, 4, 8),
(19, 'Put oko sveta', 1926, 8, 4, 8),
(20, 'Peta gora', 1996, 9, 9, 9),
(21, 'Predeo slika cajem', 1988, 10, 7, 9),
(22, 'Hajduci', 1928, 8, 3, 9),
(23, 'Jevandjelje', 1899, 4, 1, 8),
(24, 'Hadzi Murat', 1887, 4, 4, 10),
(25, 'Osma ofanziva', 1964, 5, 8, 10),
(26, 'Orlovi rano lete', 1959, 5, 8, 7),
(27, 'Mletacki trgovac', 1603, 6, 10, 9),
(28, 'Pesme sunca', 1929, 7, 10, 8),
(29, 'Prokleta avlija', 1954, 1, 1, 7),
(30, 'Antologija kinske lirike', 1923, 2, 8, 8),
(31, 'Kockar', 1867, 3, 7, 10),
(32, 'Bele noci', 1848, 3, 6, 9),
(33, 'Travnicka hronika', 1945, 1, 5, 9),
(34, 'Romani o Londonu', 1971, 2, 10, 9),
(35, 'Price o selu', 1925, 1, 5, 10),
(36, 'Hriscanska nauka', 1852, 4, 9, 9),
(37, 'Dozivljaji Nikoletine Bursaca', 1956, 5, 9, 8),
(38, 'Ricard drugi', 1602, 6, 7, 9),
(39, 'Sumnjivo lice', 1925, 8, 1, 8),
(40, 'Price o moru', 1963, 1, 2, 7),
(41, 'Dnevnik', 1846, 3, 10, 7),
(42, 'Otac Sergije', 1989, 4, 2, 8),
(43, 'Andjeo cuvar', 1992, 9, 7, 8),
(44, 'kutija za pisanje', 1999, 10, 3, 8),
(45, 'Beogradske prica', 1977, 1, 10, 6),
(46, 'Zabelezja iz podzemlja', 1864, 3, 6, 7),
(47, 'Ana Karenjina', 1877, 4, 8, 7),
(48, 'Basta sljezove boje', 1966, 5, 10, 6),
(49, 'Ako odes', 1993, 9, 10, 8),
(50, 'Dnevnik jednog carobnjaka', 1987, 9, 10, 9),
(51, 'Ruski hrt', 1990, 10, 10, 9),
(52, 'Mlada zena', 1860, 3, 5, 6);

-- --------------------------------------------------------

--
-- Table structure for table `komentari`
--

CREATE TABLE `komentari` (
  `idKomentara` int(11) NOT NULL,
  `Ime` varchar(256) CHARACTER SET latin1 NOT NULL,
  `Prezime` varchar(256) CHARACTER SET latin1 NOT NULL,
  `Email` varchar(256) CHARACTER SET latin1 NOT NULL,
  `Komentar` varchar(256) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `komentari`
--

INSERT INTO `komentari` (`idKomentara`, `Ime`, `Prezime`, `Email`, `Komentar`) VALUES
(11, 'Pavle', 'Rakovic', 'pavlerakovic@gmail.com', 'Najbolji sajt !!!			'),
(12, 'pavle', 'rakovic', 'ffaassdd', '			asdfge	'),
(13, 'fff', 'ffff', 'ffffffffffff', 'rfuykujhg			'),
(14, 'das', 'aerg', 'sssfe', '	saegf			'),
(15, 'das', 'aerg', 'sssfe', '	saegf			');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `autori`
--
ALTER TABLE `autori`
  ADD PRIMARY KEY (`idAutor`);

--
-- Indexes for table `izdavaci`
--
ALTER TABLE `izdavaci`
  ADD PRIMARY KEY (`idIzdavac`);

--
-- Indexes for table `knjige`
--
ALTER TABLE `knjige`
  ADD PRIMARY KEY (`id`),
  ADD KEY `autor` (`autor`),
  ADD KEY `izdavac` (`izdavac`);

--
-- Indexes for table `komentari`
--
ALTER TABLE `komentari`
  ADD PRIMARY KEY (`idKomentara`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `autori`
--
ALTER TABLE `autori`
  MODIFY `idAutor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `izdavaci`
--
ALTER TABLE `izdavaci`
  MODIFY `idIzdavac` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `knjige`
--
ALTER TABLE `knjige`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `komentari`
--
ALTER TABLE `komentari`
  MODIFY `idKomentara` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `knjige`
--
ALTER TABLE `knjige`
  ADD CONSTRAINT `FK_Autor` FOREIGN KEY (`autor`) REFERENCES `autori` (`idAutor`),
  ADD CONSTRAINT `FK_Izdavac` FOREIGN KEY (`izdavac`) REFERENCES `izdavaci` (`idIzdavac`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
