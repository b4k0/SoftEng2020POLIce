-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Φιλοξενητής: 127.0.0.1
-- Χρόνος δημιουργίας: 24 Μάη 2020 στις 21:38:29
-- Έκδοση διακομιστή: 10.4.6-MariaDB
-- Έκδοση PHP: 7.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `police`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `admin`
--

CREATE TABLE `admin` (
  `username` varchar(255) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Άδειασμα δεδομένων του πίνακα `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', '12345');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `guest`
--

CREATE TABLE `guest` (
  `id` int(155) NOT NULL,
  `emergency` varchar(255) COLLATE utf8_bin NOT NULL,
  `address_em` varchar(255) COLLATE utf8_bin NOT NULL,
  `date` varchar(255) COLLATE utf8_bin NOT NULL,
  `time` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Άδειασμα δεδομένων του πίνακα `guest`
--

INSERT INTO `guest` (`id`, `emergency`, `address_em`, `date`, `time`) VALUES
(1, 'Διαπλικτισμός', 'Κορίνθου 12', '24-05-2020', '06:00:18 AM'),
(2, 'Ληστεία', 'Μαιζώνος 145', '24-05-2020', '06:03:47 AM');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `police`
--

CREATE TABLE `police` (
  `id` int(12) NOT NULL,
  `policeteam` varchar(255) COLLATE utf8_bin NOT NULL,
  `fullname` varchar(255) COLLATE utf8_bin NOT NULL,
  `username` varchar(255) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL,
  `address` varchar(255) COLLATE utf8_bin NOT NULL,
  `tel` bigint(30) NOT NULL,
  `policeidcard` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Άδειασμα δεδομένων του πίνακα `police`
--

INSERT INTO `police` (`id`, `policeteam`, `fullname`, `username`, `password`, `address`, `tel`, `policeidcard`) VALUES
(1, 'Ασφάλεια	', 'Αντωνίου Περικλής', 'peris', '1234', 'Αράτου 45', 6909123456, 'ΑΤ0012'),
(2, 'Άμεσως Δράση	', 'Άρης Θωμάς', 'arth', '1997', 'Κορίνθου 31', 6977012345, 'ΑΤ1023'),
(3, 'ΔΙΑΣ', 'Βλάχος Ιωάννης', 'gianvl', '1996', 'Μαιζώνος 36', 6979042396, 'ΑΤ1998'),
(4, 'ΜΑΤ', 'Κατωπόδης Ηλίας', 'downsun', '12345', 'Ερμού 24', 6987645189, 'ΑΤ1776'),
(5, 'ΟΠΚΕ', 'Καρράς Δημήτριος', 'jimkar', '1000', 'Ζαίμη 23', 6920001198, 'ΑΤ0089'),
(6, 'Τροχαία', 'Κολλόκας Νικόλαος', 'nikollo', '1998', 'Θεσσαλονίκης 40', 6980635186, 'ΑΤ0001');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `user`
--

CREATE TABLE `user` (
  `id` int(12) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `tel` int(20) DEFAULT NULL,
  `idcard` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Άδειασμα δεδομένων του πίνακα `user`
--

INSERT INTO `user` (`id`, `fullname`, `username`, `password`, `address`, `tel`, `idcard`) VALUES
(1, 'Μπακομιχάλης Ιωάννης', 'mpak', '1996', 'Κορίνθου 131', 69012345, 'ΑΕ0001'),
(2, 'Μπακομιχάλης Θωμάς', 'tom', '1997', 'Κορίνθου 131', 69012346, 'ΑΕ0002');

--
-- Ευρετήρια για άχρηστους πίνακες
--

--
-- Ευρετήρια για πίνακα `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`id`);

--
-- Ευρετήρια για πίνακα `police`
--
ALTER TABLE `police`
  ADD PRIMARY KEY (`id`);

--
-- Ευρετήρια για πίνακα `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT για άχρηστους πίνακες
--

--
-- AUTO_INCREMENT για πίνακα `guest`
--
ALTER TABLE `guest`
  MODIFY `id` int(155) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT για πίνακα `police`
--
ALTER TABLE `police`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT για πίνακα `user`
--
ALTER TABLE `user`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
