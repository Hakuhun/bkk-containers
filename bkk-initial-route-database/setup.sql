USE routes;

CREATE USER IF NOT EXISTS 'spring'@'localhost' IDENTIFIED BY 'spring'; 

GRANT ALL PRIVILEGES ON routes.* TO 'spring'@'localhost';

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `routes`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `routes`
--

CREATE TABLE `routes` (
  `id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `routeCode` varchar(30) NOT NULL,
  `routeType` varchar(30) NOT NULL,
  `startTime` time NOT NULL,
  `endTime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `routes`
--

INSERT INTO `routes` (`id`, `title`, `routeCode`, `routeType`, `startTime`, `endTime`) VALUES
(1, '2', 'BKK_3020', 'VILLAMOS', '04:40:00', '00:16:00'),
(2, '3', 'BKK_3030', 'VILLAMOS', '04:24:00', '00:26:00'),
(3, '3', 'BKK_3030', 'VILLAMOS', '04:24:00', '00:26:00'),
(4, '1', 'BKK_3010', 'VILLAMOS', '04:15:00', '00:06:00'),
(5, '4', 'BKK_3040', 'VILLAMOS', '04:52:00', '23:23:00'),
(6, '6', 'BKK_3046', 'NONSTOP', '00:16:00', '23:55:00'),
(7, '14', 'BKK_3140', 'VILLAMOS', '04:52:00', '23:53:00'),
(8, '19', 'BKK_3190', 'VILLAMOS', '04:15:00', '23:25:00'),
(9, '41', 'BKK_3410', 'VILLAMOS', '04:25:00', '23:25:00'),
(10, '24', 'BKK_3240', 'VILLAMOS', '04:07:00', '00:26:00'),
(11, 'M1', 'BKK_5100', 'METRÓ', '04:32:00', '23:45:00'),
(12, 'M2', 'BKK_5200', 'METRÓ', '04:27:00', '23:33:00'),
(13, 'M3', 'BKK_5300', 'METRÓ', '04:21:00', '23:43:00'),
(14, 'M4', 'BKK_5400', 'METRÓ', '04:27:00', '23:39:00'),
(15, 'H5', 'BKK_6470', 'HÉV', '03:52:00', '00:21:00'),
(16, 'H6', 'BKK_6230', 'HÉV', '03:04:00', '01:35:00'),
(17, 'H6', 'BKK_6210', 'HÉV', '03:04:00', '01:35:00'),
(18, 'H6', 'BKK_6200', 'HÉV', '03:04:00', '01:35:00'),
(19, 'H7', 'BKK_6300', 'HÉV', '04:25:00', '23:49:00'),
(20, 'H8', 'BKK_6100', 'HÉV', '03:44:00', '01:31:00'),
(21, '5', 'BKK_0050', 'BUSZ', '04:19:00', '23:31:00'),
(22, '7', 'BKK_0070', 'BUSZ', '04:16:00', '23:18:00'),
(23, '7E', 'BKK_0075', 'BUSZ', '05:36:00', '21:59:00'),
(24, '8E', 'BKK_0085', 'BUSZ', '04:19:00', '23:48:00'),
(25, '9', 'BKK_0090', 'BUSZ', '04:32:00', '23:26:00'),
(26, '979', 'BKK_9790', 'ÉJSZAKAI', '23:56:00', '03:36:00'),
(27, '979A', 'BKK_9791', 'ÉJSZAKAI', '00:06:00', '04:06:00'),
(28, '908', 'BKK_9080', 'ÉJSZAKAI', '23:23:00', '04:28:00'),
(29, '907', 'BKK_9070', 'ÉJSZAKAI', '23:39:00', '03:59:00'),
(30, '923', 'BKK_9230', 'ÉJSZAKAI', '23:18:00', '03:58:00'),
(31, '901', 'BKK_9010', 'ÉJSZAKAI', '00:23:00', '03:56:00'),
(32, '100E', 'BKK_1005', 'BUSZ', '03:40:00', '01:20:00'),
(33, '200E', 'BKK_2005', 'NONSTOP', '00:38:00', '23:50:00');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `routes`
--
ALTER TABLE `routes`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `routes`
--
ALTER TABLE `routes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

ALTER TABLE `routes`.`routes` 
DROP COLUMN `endTime`,
DROP COLUMN `startTime`;
