-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-03-2024 a las 20:27:18
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `laravel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `adoptions`
--

CREATE TABLE `adoptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `pet_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `adoptions`
--

INSERT INTO `adoptions` (`id`, `user_id`, `pet_id`, `created_at`, `updated_at`) VALUES
(1, 3, 1, '2024-03-08 03:01:15', '2024-03-08 03:01:15'),
(2, 3, 2, '2024-03-08 03:01:15', '2024-03-08 03:01:15'),
(3, 4, 3, '2024-03-08 03:01:16', '2024-03-08 03:01:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_03_04_193411_create_pets_table', 1),
(6, '2024_03_04_193432_create_adoptions_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pets`
--

CREATE TABLE `pets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL DEFAULT 'ico-pet.svg',
  `kind` varchar(255) NOT NULL,
  `weight` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `breed` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pets`
--

INSERT INTO `pets` (`id`, `name`, `photo`, `kind`, `weight`, `age`, `breed`, `location`, `created_at`, `updated_at`) VALUES
(1, 'Firulais', '1708984846.png', 'Dog', 5, 3, 'Galgo', 'Manizales', '2024-03-08 02:59:53', '2024-03-08 02:59:53'),
(2, 'Pocholo', '1708697222.png', 'Dog', 10, 4, 'Pug', 'Manizales', '2024-03-08 02:59:53', '2024-03-08 02:59:53'),
(3, 'Michi', 'ico-pet.svg', 'Cat', 8, 2, 'Persa', 'Pereira', '2024-03-08 02:59:54', '2024-03-08 02:59:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `document` bigint(20) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `birthdate` date NOT NULL,
  `photo` varchar(255) NOT NULL DEFAULT 'ico-user.svg',
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'Customer',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `document`, `fullname`, `gender`, `birthdate`, `photo`, `phone`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 75000001, 'Jeremias Springfield', 'Male', '1984-10-10', 'jeremias.png', '3100000001', 'jeremias@gmail.com', NULL, '$2y$12$0ePD0ISGM7MCTdu2NF6uRuYo7ASci1rj8ZNUWkT6eVHqikM3Gs.i6', 'Admin', NULL, '2024-03-08 02:59:53', '2024-03-08 02:59:53'),
(2, 75000002, 'John Wick', 'Male', '2000-07-06', '1709301260.png', '3100000002', 'johnw@gmail.com', NULL, '$2y$12$m4ru4WRs0OYsibjqCtQYOeZQY9ppvjXNRUPlOeITk6ayBedUcAc96', 'Customer', NULL, '2024-03-08 02:59:53', NULL),
(3, 447728650, 'Sean Reynolds', 'Male', '1987-10-31', '3e21dcf74e0d4598acd1e0b8b.png', '689.630.3025', 'ardith73@example.net', '2024-03-08 02:59:57', '$2y$12$dEnfRejIScgCwDujfHDGcu01khclK8Tgbsvn.j5UXR9zwxF/Wc2cu', 'Customer', 'QGGQ3owRTV', '2024-03-08 03:01:13', '2024-03-08 03:01:13'),
(4, 232496092, 'Vern Ortiz', 'Male', '1991-06-18', 'a67ac2a17156f82998dae9faf.png', '443-386-7228', 'mariah.ankunding@example.com', '2024-03-08 02:59:59', '$2y$12$dEnfRejIScgCwDujfHDGcu01khclK8Tgbsvn.j5UXR9zwxF/Wc2cu', 'Customer', '97fdDXpAtv', '2024-03-08 03:01:13', '2024-03-08 03:01:13'),
(5, 279355615, 'Roslyn Luettgen', 'Female', '1979-02-22', '96b0eee13724904a6243b6308.png', '337-473-3328', 'ykilback@example.net', '2024-03-08 03:00:00', '$2y$12$dEnfRejIScgCwDujfHDGcu01khclK8Tgbsvn.j5UXR9zwxF/Wc2cu', 'Customer', 'Yt4cNfqJGr', '2024-03-08 03:01:13', '2024-03-08 03:01:13'),
(6, 219106926, 'Kasey Predovic', 'Female', '1973-05-16', '99ab45638b4b3a38b74128530.png', '651.862.2572', 'sebastian02@example.net', '2024-03-08 03:00:02', '$2y$12$dEnfRejIScgCwDujfHDGcu01khclK8Tgbsvn.j5UXR9zwxF/Wc2cu', 'Customer', 'qohNov2oBG', '2024-03-08 03:01:13', '2024-03-08 03:01:13'),
(7, 229866597, 'Catalina Cremin', 'Female', '1984-12-25', '95678f091a9a844adcb0fe181.png', '(678) 990-5485', 'mckayla.greenfelder@example.org', '2024-03-08 03:00:04', '$2y$12$dEnfRejIScgCwDujfHDGcu01khclK8Tgbsvn.j5UXR9zwxF/Wc2cu', 'Customer', 'uzv1NWLVN1', '2024-03-08 03:01:13', '2024-03-08 03:01:13'),
(8, 624114443, 'Jalen Lang', 'Male', '1972-11-18', '6fcc55f030748ca906bde092f.png', '540-850-9538', 'jeromy34@example.org', '2024-03-08 03:00:05', '$2y$12$dEnfRejIScgCwDujfHDGcu01khclK8Tgbsvn.j5UXR9zwxF/Wc2cu', 'Customer', 'ZotTtyfqAN', '2024-03-08 03:01:13', '2024-03-08 03:01:13'),
(9, 432146569, 'Salvatore Turcotte', 'Male', '1976-01-19', '48574a9e7fa3c118ca360d556.png', '+1-786-843-9669', 'jast.georgiana@example.com', '2024-03-08 03:00:07', '$2y$12$dEnfRejIScgCwDujfHDGcu01khclK8Tgbsvn.j5UXR9zwxF/Wc2cu', 'Customer', 'OqOq6UQ1hC', '2024-03-08 03:01:13', '2024-03-08 03:01:13'),
(10, 756605782, 'Eino Botsford', 'Male', '1980-12-05', '32f029bc77a3c647772714dd3.png', '947.518.0259', 'ohudson@example.com', '2024-03-08 03:00:08', '$2y$12$dEnfRejIScgCwDujfHDGcu01khclK8Tgbsvn.j5UXR9zwxF/Wc2cu', 'Customer', 'gGv8xWgw9N', '2024-03-08 03:01:13', '2024-03-08 03:01:13'),
(11, 801930782, 'Selena Hartmann', 'Female', '1988-08-24', 'b28f7b8ad640a52320f65a2e5.png', '727.969.9164', 'fhansen@example.com', '2024-03-08 03:00:10', '$2y$12$dEnfRejIScgCwDujfHDGcu01khclK8Tgbsvn.j5UXR9zwxF/Wc2cu', 'Customer', '2NLoRLNDuO', '2024-03-08 03:01:13', '2024-03-08 03:01:13'),
(12, 431666754, 'Natalie O\'Keefe', 'Female', '1995-12-26', 'e790b8b04dba495fec7d9ac50.png', '+19167081802', 'ledner.braxton@example.com', '2024-03-08 03:00:11', '$2y$12$dEnfRejIScgCwDujfHDGcu01khclK8Tgbsvn.j5UXR9zwxF/Wc2cu', 'Customer', 'A7auCs8FxT', '2024-03-08 03:01:14', '2024-03-08 03:01:14'),
(13, 188719228, 'Carlo Shields', 'Male', '2005-06-19', '130fde5d3aee39e87fc04eb50.png', '+1 (817) 231-8910', 'athena.hodkiewicz@example.org', '2024-03-08 03:00:15', '$2y$12$dEnfRejIScgCwDujfHDGcu01khclK8Tgbsvn.j5UXR9zwxF/Wc2cu', 'Customer', 'Q8LE6Gywgi', '2024-03-08 03:01:14', '2024-03-08 03:01:14'),
(14, 655406142, 'Jamil Cremin', 'Male', '2007-09-27', '0555d945d30503125a9043916.png', '+1-820-551-3059', 'pfannerstill.lavonne@example.net', '2024-03-08 03:00:16', '$2y$12$dEnfRejIScgCwDujfHDGcu01khclK8Tgbsvn.j5UXR9zwxF/Wc2cu', 'Customer', 'mznjMXPP9x', '2024-03-08 03:01:14', '2024-03-08 03:01:14'),
(15, 526533799, 'Sage Senger', 'Male', '1996-08-31', 'fce57f142b45627598bd6848c.png', '+16675202181', 'douglas.darrell@example.com', '2024-03-08 03:00:18', '$2y$12$dEnfRejIScgCwDujfHDGcu01khclK8Tgbsvn.j5UXR9zwxF/Wc2cu', 'Customer', '7ezBNv9MfL', '2024-03-08 03:01:14', '2024-03-08 03:01:14'),
(16, 841271996, 'Chris Pfannerstill', 'Male', '2019-07-10', '6ab25e173059d6e6117aaa8e7.png', '1-937-812-0448', 'marquise87@example.com', '2024-03-08 03:00:19', '$2y$12$dEnfRejIScgCwDujfHDGcu01khclK8Tgbsvn.j5UXR9zwxF/Wc2cu', 'Customer', 'RPAwo3xXcK', '2024-03-08 03:01:14', '2024-03-08 03:01:14'),
(17, 908733504, 'Madelyn Bruen', 'Female', '1983-05-01', '900571eea4f2d1e39b866c117.png', '559.874.7624', 'addie.hammes@example.org', '2024-03-08 03:00:20', '$2y$12$dEnfRejIScgCwDujfHDGcu01khclK8Tgbsvn.j5UXR9zwxF/Wc2cu', 'Customer', 'KKNbaUepwt', '2024-03-08 03:01:14', '2024-03-08 03:01:14'),
(18, 728531418, 'Ernesto Yundt', 'Male', '1998-03-03', 'b52997a172da9a201d7d0b34d.png', '+1-479-622-1176', 'alegros@example.org', '2024-03-08 03:00:22', '$2y$12$dEnfRejIScgCwDujfHDGcu01khclK8Tgbsvn.j5UXR9zwxF/Wc2cu', 'Customer', 'ZY377gKfmQ', '2024-03-08 03:01:14', '2024-03-08 03:01:14'),
(19, 212279524, 'Adell Turcotte', 'Female', '2011-05-05', 'ac44db11bd1bf34bb35956467.png', '+1-503-752-4994', 'ydenesik@example.com', '2024-03-08 03:00:23', '$2y$12$dEnfRejIScgCwDujfHDGcu01khclK8Tgbsvn.j5UXR9zwxF/Wc2cu', 'Customer', 'z2gH2DdOad', '2024-03-08 03:01:14', '2024-03-08 03:01:14'),
(20, 529303041, 'Oma Frami', 'Female', '1995-01-02', '88aebd1edc77b787b650d423a.png', '828-404-4884', 'alivia.halvorson@example.net', '2024-03-08 03:00:24', '$2y$12$dEnfRejIScgCwDujfHDGcu01khclK8Tgbsvn.j5UXR9zwxF/Wc2cu', 'Customer', 'UlhA5IbNnT', '2024-03-08 03:01:14', '2024-03-08 03:01:14'),
(21, 363817424, 'Aaliyah Smith', 'Female', '1993-10-04', '2b7bdc016eb5c543d739b303e.png', '479-753-6858', 'henry.wehner@example.com', '2024-03-08 03:00:26', '$2y$12$dEnfRejIScgCwDujfHDGcu01khclK8Tgbsvn.j5UXR9zwxF/Wc2cu', 'Customer', '8bEXiHR8Bl', '2024-03-08 03:01:14', '2024-03-08 03:01:14'),
(22, 174237722, 'Russel Rippin', 'Male', '1979-05-22', '602bad58c625207983168119b.png', '701.554.1852', 'mmccullough@example.org', '2024-03-08 03:00:27', '$2y$12$dEnfRejIScgCwDujfHDGcu01khclK8Tgbsvn.j5UXR9zwxF/Wc2cu', 'Customer', 'JWHUj7T8Cn', '2024-03-08 03:01:14', '2024-03-08 03:01:14'),
(23, 728284581, 'Sammy Windler', 'Male', '1988-05-01', '7a95232fa02e6661927871f63.png', '615.689.0250', 'orn.terrell@example.org', '2024-03-08 03:00:29', '$2y$12$dEnfRejIScgCwDujfHDGcu01khclK8Tgbsvn.j5UXR9zwxF/Wc2cu', 'Customer', 'Dodqxdui6x', '2024-03-08 03:01:14', '2024-03-08 03:01:14'),
(24, 556521172, 'Omari Smitham', 'Male', '1973-02-12', '7c9b4a45e515ebe37aa7c035c.png', '336.226.0436', 'lia.rice@example.org', '2024-03-08 03:00:31', '$2y$12$dEnfRejIScgCwDujfHDGcu01khclK8Tgbsvn.j5UXR9zwxF/Wc2cu', 'Customer', 'QklcPRYuWR', '2024-03-08 03:01:14', '2024-03-08 03:01:14'),
(25, 476451742, 'Bonnie Mosciski', 'Female', '2011-06-08', '4407a1785992bfc89d322300f.png', '+1 (239) 529-1845', 'abbott.avis@example.net', '2024-03-08 03:00:32', '$2y$12$dEnfRejIScgCwDujfHDGcu01khclK8Tgbsvn.j5UXR9zwxF/Wc2cu', 'Customer', 'hV2Eh02gbQ', '2024-03-08 03:01:14', '2024-03-08 03:01:14'),
(26, 294632533, 'Edmond O\'Conner', 'Male', '1978-11-29', 'ed60e39293cb605155ef6b55a.png', '+1 (253) 756-6106', 'camila85@example.org', '2024-03-08 03:00:34', '$2y$12$dEnfRejIScgCwDujfHDGcu01khclK8Tgbsvn.j5UXR9zwxF/Wc2cu', 'Customer', 'O7xK2Soou6', '2024-03-08 03:01:14', '2024-03-08 03:01:14'),
(27, 550341586, 'Elmira Heaney', 'Female', '2005-01-09', '8df0f02f7bff07044144da201.png', '+1-678-561-7334', 'newell72@example.net', '2024-03-08 03:00:37', '$2y$12$dEnfRejIScgCwDujfHDGcu01khclK8Tgbsvn.j5UXR9zwxF/Wc2cu', 'Customer', 'rQExyUKw1t', '2024-03-08 03:01:14', '2024-03-08 03:01:14'),
(28, 267828171, 'Rebeca Runte', 'Female', '1990-12-17', 'ebf003d4e41ae4adead44cf54.png', '(228) 519-9077', 'rahul.ritchie@example.net', '2024-03-08 03:00:39', '$2y$12$dEnfRejIScgCwDujfHDGcu01khclK8Tgbsvn.j5UXR9zwxF/Wc2cu', 'Customer', 'TkCUcR3xnC', '2024-03-08 03:01:14', '2024-03-08 03:01:14'),
(29, 909736982, 'Jaida Berge', 'Female', '1973-02-06', 'ab2583b2a92d6c77912f94c3b.png', '620-663-2232', 'hailey.metz@example.com', '2024-03-08 03:00:40', '$2y$12$dEnfRejIScgCwDujfHDGcu01khclK8Tgbsvn.j5UXR9zwxF/Wc2cu', 'Customer', 'ox6EfQU1op', '2024-03-08 03:01:14', '2024-03-08 03:01:14'),
(30, 657763124, 'Anibal Armstrong', 'Male', '2014-03-07', '75ee566aaa7f0284abdb76392.png', '+1.220.830.9978', 'icruickshank@example.org', '2024-03-08 03:00:41', '$2y$12$dEnfRejIScgCwDujfHDGcu01khclK8Tgbsvn.j5UXR9zwxF/Wc2cu', 'Customer', 'ub3rR81OYO', '2024-03-08 03:01:14', '2024-03-08 03:01:14'),
(31, 471143225, 'Eli Lesch', 'Male', '1990-08-21', '290a5daa203055b28cf7608e8.png', '(478) 805-5064', 'jan.cronin@example.com', '2024-03-08 03:00:43', '$2y$12$dEnfRejIScgCwDujfHDGcu01khclK8Tgbsvn.j5UXR9zwxF/Wc2cu', 'Customer', 'aJvFVr7Zdk', '2024-03-08 03:01:14', '2024-03-08 03:01:14'),
(32, 403006895, 'Malinda Hettinger', 'Female', '1974-02-01', '838a5cd3a7dfce53aa94f15a0.png', '+1-229-491-6698', 'kobe.schmeler@example.net', '2024-03-08 03:00:44', '$2y$12$dEnfRejIScgCwDujfHDGcu01khclK8Tgbsvn.j5UXR9zwxF/Wc2cu', 'Customer', 'ELCUJzfpiP', '2024-03-08 03:01:14', '2024-03-08 03:01:14'),
(33, 879534089, 'Aaron Harris', 'Male', '1991-12-30', '4a26ec51644af35653c90da5b.png', '323.832.6290', 'kale46@example.com', '2024-03-08 03:00:46', '$2y$12$dEnfRejIScgCwDujfHDGcu01khclK8Tgbsvn.j5UXR9zwxF/Wc2cu', 'Customer', 'D9WoGuCp5K', '2024-03-08 03:01:14', '2024-03-08 03:01:14'),
(34, 335966729, 'Claude Sanford', 'Male', '1983-04-21', 'a82d14c1a8f813968aca2b68b.png', '+1-661-470-5219', 'princess62@example.net', '2024-03-08 03:00:48', '$2y$12$dEnfRejIScgCwDujfHDGcu01khclK8Tgbsvn.j5UXR9zwxF/Wc2cu', 'Customer', 'p498fj0BSY', '2024-03-08 03:01:14', '2024-03-08 03:01:14'),
(35, 271960629, 'Domenico Carter', 'Male', '1997-05-05', '49cc55af91eafb590b1c78510.png', '231.333.4930', 'evon@example.net', '2024-03-08 03:00:49', '$2y$12$dEnfRejIScgCwDujfHDGcu01khclK8Tgbsvn.j5UXR9zwxF/Wc2cu', 'Customer', 'dR3j7eyaDT', '2024-03-08 03:01:14', '2024-03-08 03:01:14'),
(36, 552783828, 'Austin Batz', 'Male', '1993-05-28', 'ed9220ad0723dd25f3bcc2f75.png', '424-778-3483', 'jones.jamey@example.net', '2024-03-08 03:00:50', '$2y$12$dEnfRejIScgCwDujfHDGcu01khclK8Tgbsvn.j5UXR9zwxF/Wc2cu', 'Customer', 'T6lJsPiMLw', '2024-03-08 03:01:15', '2024-03-08 03:01:15'),
(37, 397808226, 'Anne McLaughlin', 'Female', '1998-05-12', '5d432e0655ffba90750f5fe94.png', '+1.469.927.1502', 'ashleigh44@example.net', '2024-03-08 03:00:52', '$2y$12$dEnfRejIScgCwDujfHDGcu01khclK8Tgbsvn.j5UXR9zwxF/Wc2cu', 'Customer', 'pv1wdCvNF2', '2024-03-08 03:01:15', '2024-03-08 03:01:15'),
(38, 969167296, 'Keon Quigley', 'Male', '2011-09-02', '9e9b653d1a9be824bdc58baf8.png', '(319) 840-8741', 'braun.duncan@example.org', '2024-03-08 03:00:54', '$2y$12$dEnfRejIScgCwDujfHDGcu01khclK8Tgbsvn.j5UXR9zwxF/Wc2cu', 'Customer', 'XKeHjxi51g', '2024-03-08 03:01:15', '2024-03-08 03:01:15'),
(39, 135391437, 'Kathlyn Schroeder', 'Female', '1976-05-26', 'ba6bbd9936b1d35834aefb761.png', '+1 (564) 249-0201', 'javon.stoltenberg@example.net', '2024-03-08 03:00:55', '$2y$12$dEnfRejIScgCwDujfHDGcu01khclK8Tgbsvn.j5UXR9zwxF/Wc2cu', 'Customer', 'KpffDogdXR', '2024-03-08 03:01:15', '2024-03-08 03:01:15'),
(40, 330905442, 'Wilton Stiedemann', 'Male', '1971-10-25', 'aaac5d018647beb5aabb6abee.png', '567-765-6934', 'hyatt.alison@example.org', '2024-03-08 03:00:56', '$2y$12$dEnfRejIScgCwDujfHDGcu01khclK8Tgbsvn.j5UXR9zwxF/Wc2cu', 'Customer', 'zHrwgmKKAC', '2024-03-08 03:01:15', '2024-03-08 03:01:15'),
(41, 625812023, 'Tavares Stehr', 'Male', '2000-09-25', 'cc3c3593dd8b20e56f0aaaf77.png', '256-944-7856', 'jlowe@example.com', '2024-03-08 03:00:58', '$2y$12$dEnfRejIScgCwDujfHDGcu01khclK8Tgbsvn.j5UXR9zwxF/Wc2cu', 'Customer', 'eMBpV6p0mP', '2024-03-08 03:01:15', '2024-03-08 03:01:15'),
(42, 584374096, 'Vilma Macejkovic', 'Female', '2008-02-19', '569b46ddb8c6451f6302c81b2.png', '+1-530-615-6322', 'curtis51@example.org', '2024-03-08 03:01:00', '$2y$12$dEnfRejIScgCwDujfHDGcu01khclK8Tgbsvn.j5UXR9zwxF/Wc2cu', 'Customer', 'uwmssZnXVd', '2024-03-08 03:01:15', '2024-03-08 03:01:15'),
(43, 933859427, 'Effie Watsica', 'Female', '2008-05-31', 'ab8a446ab6d7aefb5e642466f.png', '+1 (267) 623-3667', 'davion02@example.org', '2024-03-08 03:01:01', '$2y$12$dEnfRejIScgCwDujfHDGcu01khclK8Tgbsvn.j5UXR9zwxF/Wc2cu', 'Customer', '0WE6Z9Ub62', '2024-03-08 03:01:15', '2024-03-08 03:01:15'),
(44, 336037395, 'Moses Cole', 'Male', '1990-10-04', '66e97704a99566c4f2bc8f95a.png', '(251) 682-1055', 'jarred.wisoky@example.net', '2024-03-08 03:01:02', '$2y$12$dEnfRejIScgCwDujfHDGcu01khclK8Tgbsvn.j5UXR9zwxF/Wc2cu', 'Customer', 'FgCQpn09UZ', '2024-03-08 03:01:15', '2024-03-08 03:01:15'),
(45, 953016956, 'Garrick O\'Conner', 'Male', '2014-08-10', '13ff9bf0d777f038b44bf1588.png', '(520) 961-6738', 'auer.jabari@example.com', '2024-03-08 03:01:04', '$2y$12$dEnfRejIScgCwDujfHDGcu01khclK8Tgbsvn.j5UXR9zwxF/Wc2cu', 'Customer', '86b9JgZXQF', '2024-03-08 03:01:15', '2024-03-08 03:01:15'),
(46, 196745543, 'Vivien Prosacco', 'Female', '2004-12-31', '0e4e4194b94495e1e63f3cca7.png', '+1 (918) 722-9295', 'laurine52@example.org', '2024-03-08 03:01:05', '$2y$12$dEnfRejIScgCwDujfHDGcu01khclK8Tgbsvn.j5UXR9zwxF/Wc2cu', 'Customer', 'OIfL3BJf2h', '2024-03-08 03:01:15', '2024-03-08 03:01:15'),
(47, 738806356, 'Zakary Sanford', 'Male', '2018-05-10', '246fdd4f2332ef30c41e18597.png', '+1-959-404-7027', 'mayert.angus@example.com', '2024-03-08 03:01:06', '$2y$12$dEnfRejIScgCwDujfHDGcu01khclK8Tgbsvn.j5UXR9zwxF/Wc2cu', 'Customer', 'HWHLl0gyYO', '2024-03-08 03:01:15', '2024-03-08 03:01:15'),
(48, 652956014, 'Aurelie Stroman', 'Female', '1980-01-09', '47295bf61f6257a638bbbc144.png', '1-757-762-5276', 'kara.champlin@example.org', '2024-03-08 03:01:08', '$2y$12$dEnfRejIScgCwDujfHDGcu01khclK8Tgbsvn.j5UXR9zwxF/Wc2cu', 'Customer', 'ZJtMAboq6R', '2024-03-08 03:01:15', '2024-03-08 03:01:15'),
(49, 149282514, 'Claud Halvorson', 'Male', '2009-09-15', '4aa4bb69e974894d8a9f27902.png', '619.516.9140', 'lruecker@example.org', '2024-03-08 03:01:09', '$2y$12$dEnfRejIScgCwDujfHDGcu01khclK8Tgbsvn.j5UXR9zwxF/Wc2cu', 'Customer', 'zM4HuJhZ6C', '2024-03-08 03:01:15', '2024-03-08 03:01:15'),
(50, 160148677, 'Cara McLaughlin', 'Female', '2007-01-14', 'e94ce704c1311334d88735e7c.png', '619.595.9469', 'thompson.margaretta@example.net', '2024-03-08 03:01:10', '$2y$12$dEnfRejIScgCwDujfHDGcu01khclK8Tgbsvn.j5UXR9zwxF/Wc2cu', 'Customer', '3ZXWfhPfkc', '2024-03-08 03:01:15', '2024-03-08 03:01:15'),
(51, 594593753, 'Maddison Barton', 'Female', '1987-09-01', 'ad0f61029f22887fa77bdb2fe.png', '+1-559-584-0800', 'christop32@example.org', '2024-03-08 03:01:12', '$2y$12$dEnfRejIScgCwDujfHDGcu01khclK8Tgbsvn.j5UXR9zwxF/Wc2cu', 'Customer', 'LykNcIsvo0', '2024-03-08 03:01:15', '2024-03-08 03:01:15'),
(52, 768104979, 'Elliott Jakubowski', 'Male', '1984-12-16', 'd356a21f85649d9377de9757f.png', '1-757-391-9845', 'delores82@example.com', '2024-03-08 03:01:13', '$2y$12$dEnfRejIScgCwDujfHDGcu01khclK8Tgbsvn.j5UXR9zwxF/Wc2cu', 'Customer', '2KX7mP4iRX', '2024-03-08 03:01:15', '2024-03-08 03:01:15');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `adoptions`
--
ALTER TABLE `adoptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adoptions_user_id_foreign` (`user_id`),
  ADD KEY `adoptions_pet_id_foreign` (`pet_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `pets`
--
ALTER TABLE `pets`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_document_unique` (`document`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `adoptions`
--
ALTER TABLE `adoptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pets`
--
ALTER TABLE `pets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `adoptions`
--
ALTER TABLE `adoptions`
  ADD CONSTRAINT `adoptions_pet_id_foreign` FOREIGN KEY (`pet_id`) REFERENCES `pets` (`id`),
  ADD CONSTRAINT `adoptions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
