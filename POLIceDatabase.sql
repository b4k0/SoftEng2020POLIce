-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Φιλοξενητής: 127.0.0.1
-- Χρόνος δημιουργίας: 06 Ιουν 2020 στις 22:32:07
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
-- Δομή πίνακα για τον πίνακα `call_police`
--

CREATE TABLE `call_police` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_bin NOT NULL,
  `emergency` varchar(255) COLLATE utf8_bin NOT NULL,
  `address` varchar(255) COLLATE utf8_bin NOT NULL,
  `police` varchar(255) COLLATE utf8_bin NOT NULL,
  `policeteam` varchar(255) COLLATE utf8_bin NOT NULL,
  `situation` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Άδειασμα δεδομένων του πίνακα `call_police`
--

INSERT INTO `call_police` (`id`, `username`, `emergency`, `address`, `police`, `policeteam`, `situation`) VALUES
(2, 'tom', 'Υλική Ζημιά', 'Αγίου Νικολάου 5', 'arth', 'Άμεσως Δράση	', 'Επιβεβαιωμένο'),
(2, '2', 'Ληστεία', 'Μαιζώνος 145', 'gianvl', 'ΔΙΑΣ', 'Επιβεβαιωμένο'),
(1, 'mpak', 'Τρομοκρατική Ενέργεια', 'Ζαίμη 42', 'jimkar', 'ΟΠΚΕ', 'Επιβεβαιωμένο');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `em_citizen`
--

CREATE TABLE `em_citizen` (
  `id` int(155) NOT NULL,
  `username` varchar(255) COLLATE utf8_bin NOT NULL,
  `emergency` varchar(255) COLLATE utf8_bin NOT NULL,
  `address_em` varchar(255) COLLATE utf8_bin NOT NULL,
  `date` varchar(255) COLLATE utf8_bin NOT NULL,
  `time` varchar(255) COLLATE utf8_bin NOT NULL,
  `situation` set('Σε αναμονή','Απεσταλμένο','Επιβεβαιωμένο','Ολοκληρωμένο') COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Άδειασμα δεδομένων του πίνακα `em_citizen`
--

INSERT INTO `em_citizen` (`id`, `username`, `emergency`, `address_em`, `date`, `time`, `situation`) VALUES
(1, 'mpak', 'Τρομοκρατική Ενέργεια', 'Ζαίμη 42', '26-05-2020', '05:05:48 AM', 'Απεσταλμένο'),
(2, 'tom', 'Υλική Ζημιά', 'Αγίου Νικολάου 5', '26-05-2020', '05:11:27 AM', 'Απεσταλμένο');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `guest`
--

CREATE TABLE `guest` (
  `id` int(155) NOT NULL,
  `emergency` varchar(255) COLLATE utf8_bin NOT NULL,
  `address_em` varchar(255) COLLATE utf8_bin NOT NULL,
  `date` varchar(255) COLLATE utf8_bin NOT NULL,
  `time` varchar(255) COLLATE utf8_bin NOT NULL,
  `situation` set('Σε αναμονή','Επιβεβαιωμένο','Απεσταλμένο','Ολοκληρωμένο') COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Άδειασμα δεδομένων του πίνακα `guest`
--

INSERT INTO `guest` (`id`, `emergency`, `address_em`, `date`, `time`, `situation`) VALUES
(2, 'Ληστεία', 'Μαιζώνος 145', '24-05-2020', '06:03:47 AM', 'Απεσταλμένο');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `police`
--

CREATE TABLE `police` (
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

INSERT INTO `police` (`policeteam`, `fullname`, `username`, `password`, `address`, `tel`, `policeidcard`) VALUES
('Άμεσως Δράση	', 'Άρης Θωμάς', 'arth', '1996', 'Κορίνθου 31', 6977012345, 'ΑΤ1023'),
('ΜΑΤ', 'Κατωπόδης Ηλίας', 'downsun', '12345', 'Ερμού 24', 6987645189, 'ΑΤ1776'),
('ΔΙΑΣ', 'Βλάχος Ιωάννης', 'gianvl', '1996', 'Μαιζώνος 36', 6979042396, 'ΑΤ1998'),
('ΟΠΚΕ', 'Καρράς Δημήτριος', 'jimkar', '1000', 'Ζαίμη 23', 6920001198, 'ΑΤ0089'),
('Τροχαία', 'Κολλόκας Νικόλαος', 'nikollo', '1998', 'Θεσσαλονίκης 40', 6980635186, 'ΑΤ0001'),
('Ασφάλεια	', 'Αντωνίου Περικλής', 'peris', '1234', 'Αράτου 45', 6909123456, 'ΑΤ0012');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `user`
--

CREATE TABLE `user` (
  `fullname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `tel` bigint(20) DEFAULT NULL,
  `idcard` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Άδειασμα δεδομένων του πίνακα `user`
--

INSERT INTO `user` (`fullname`, `username`, `password`, `address`, `tel`, `idcard`) VALUES
('Ρίζος Γεώργιος', 'griz', '6543', 'Νόρμαν 5', 6988907546, 'ΑΠ5647'),
('Μπακομιχάλης Ιωάννης', 'mpak', '1996', 'Κορίνθου 13', 6973245678, 'ΑΠ0001'),
('Παπαδόπουλος Νίκος', 'papnik', '1245', 'Κορίνθου 13', 6965423578, 'ΑΠ0234'),
('Μπακομιχάλης Θωμάς', 'tom', '1997', 'Κορίνθου 131', 6909342789, 'ΑΠ0202'),
('Τσαουρδάς Κωνσταντίνος', 'tsaou', '2505', 'Εγλυκάδα 34', 6980987654, 'ΑΠ1234');

--
-- Ευρετήρια για άχρηστους πίνακες
--

--
-- Ευρετήρια για πίνακα `call_police`
--
ALTER TABLE `call_police`
  ADD UNIQUE KEY `police` (`police`);

--
-- Ευρετήρια για πίνακα `em_citizen`
--
ALTER TABLE `em_citizen`
  ADD PRIMARY KEY (`id`);

--
-- Ευρετήρια για πίνακα `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`id`);

--
-- Ευρετήρια για πίνακα `police`
--
ALTER TABLE `police`
  ADD PRIMARY KEY (`username`);

--
-- Ευρετήρια για πίνακα `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT για άχρηστους πίνακες
--

--
-- AUTO_INCREMENT για πίνακα `em_citizen`
--
ALTER TABLE `em_citizen`
  MODIFY `id` int(155) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT για πίνακα `guest`
--
ALTER TABLE `guest`
  MODIFY `id` int(155) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Περιορισμοί για άχρηστους πίνακες
--

--
-- Περιορισμοί για πίνακα `call_police`
--
ALTER TABLE `call_police`
  ADD CONSTRAINT `call_police` FOREIGN KEY (`police`) REFERENCES `police` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
