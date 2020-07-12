-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-07-2020 a las 23:55:53
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `laravel-vue`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(21, '2019_08_19_000000_create_failed_jobs_table', 1),
(22, '2020_07_11_192204_create_tasks_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `keep` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tasks`
--

INSERT INTO `tasks` (`id`, `keep`, `created_at`, `updated_at`) VALUES
(9, 'In pariatur qui ut ut voluptatem accusamus velit.', '2020-07-12 01:23:24', '2020-07-12 01:23:24'),
(12, 'Voluptatum eos quia veritatis repellendus atque et deleniti molestias.', '2020-07-12 01:23:24', '2020-07-12 01:23:24'),
(14, 'Quo rerum aut sed quia neque et et.', '2020-07-12 01:23:24', '2020-07-12 01:23:24'),
(15, 'Sapiente ad eos iusto perspiciatis atque iure.', '2020-07-12 01:23:24', '2020-07-12 01:23:24'),
(16, 'Nam vel itaque et eos.', '2020-07-12 01:23:24', '2020-07-12 01:23:24'),
(17, 'Tempore qui nisi sed ut.', '2020-07-12 01:23:24', '2020-07-12 01:23:24'),
(18, 'Reiciendis impedit inventore laboriosam repellat voluptatibus vitae omnis.', '2020-07-12 01:23:24', '2020-07-12 01:23:24'),
(19, 'Pariatur dolore modi corrupti qui.', '2020-07-12 01:23:24', '2020-07-12 01:23:24'),
(20, 'Ratione est necessitatibus adipisci voluptates quidem sunt.', '2020-07-12 01:23:24', '2020-07-12 01:23:24'),
(21, 'Ut autem consequatur voluptatum id sit occaecati.', '2020-07-12 01:23:24', '2020-07-12 01:23:24'),
(22, 'Deserunt harum modi voluptas est quas praesentium architecto.', '2020-07-12 01:23:24', '2020-07-12 01:23:24'),
(23, 'Excepturi molestiae dicta reiciendis numquam.', '2020-07-12 01:23:24', '2020-07-12 01:23:24'),
(24, 'Vero velit est sed ex.', '2020-07-12 01:23:24', '2020-07-12 01:23:24'),
(25, 'Assumenda dolor magni beatae impedit.', '2020-07-12 01:23:24', '2020-07-12 01:23:24'),
(26, 'Non est nemo suscipit rem.', '2020-07-12 01:23:25', '2020-07-12 01:23:25'),
(27, 'A doloremque aut aliquid sunt molestiae.', '2020-07-12 01:23:25', '2020-07-12 01:23:25'),
(28, 'Ex doloremque et iusto ipsum dolor dignissimos.', '2020-07-12 01:23:25', '2020-07-12 01:23:25'),
(29, 'Accusamus autem esse qui ab eum consequatur architecto.', '2020-07-12 01:23:25', '2020-07-12 01:23:25'),
(30, 'Veniam ut eum laboriosam voluptatem.', '2020-07-12 01:23:25', '2020-07-12 01:23:25'),
(31, 'Adipisci beatae et porro qui ipsum deserunt atque eos.', '2020-07-12 01:23:25', '2020-07-12 01:23:25'),
(32, 'Qui minus ut corrupti nihil natus.', '2020-07-12 01:23:25', '2020-07-12 01:23:25'),
(34, 'Eveniet a dicta maxime ipsa mollitia.', '2020-07-12 01:23:25', '2020-07-12 01:23:25'),
(35, 'Molestiae non ipsam in similique quaerat cumque.', '2020-07-12 01:23:25', '2020-07-12 01:23:25'),
(36, 'Aprender React', '2020-07-12 20:18:24', '2020-07-12 22:01:57'),
(37, 'Aprender Angular', '2020-07-12 20:21:47', '2020-07-12 20:21:47');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
