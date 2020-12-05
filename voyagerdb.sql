-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2020 at 05:34 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `voyagerdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(2, NULL, 1, 'Category 2', 'category-2', '2020-10-02 15:33:38', '2020-10-02 15:33:38');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 14, 'mata_pelajaran', 'text', 'Mata Pelajaran', 1, 1, 1, 1, 1, 1, '{}', 2),
(58, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(59, 16, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(60, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(61, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(62, 17, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(63, 17, 'nisn', 'text', 'Nisn', 1, 1, 1, 1, 1, 1, '{}', 2),
(64, 17, 'nipd', 'text', 'Nipd', 1, 1, 1, 1, 1, 1, '{}', 3),
(65, 17, 'nama', 'text', 'Nama', 1, 1, 1, 1, 1, 1, '{}', 4),
(66, 17, 'id_kelas', 'select_dropdown', 'Id Kelas', 1, 1, 1, 1, 1, 1, '{}', 5),
(67, 18, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(68, 18, 'nama_kelas', 'text', 'Nama Kelas', 1, 1, 1, 1, 1, 1, '{}', 2),
(69, 18, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(70, 18, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(71, 17, 'siswa_belongsto_kelase_relationship', 'relationship', 'kelases', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Kelase\",\"table\":\"kelases\",\"type\":\"belongsTo\",\"column\":\"id_kelas\",\"key\":\"id\",\"label\":\"nama_kelas\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":null}', 6),
(72, 21, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(73, 21, 'id_user', 'select_dropdown', 'Id User', 1, 1, 1, 1, 1, 1, '{}', 2),
(74, 21, 'id_siswa', 'select_dropdown', 'Id Siswa', 1, 1, 1, 1, 1, 1, '{}', 3),
(75, 21, 'id_mapel', 'select_dropdown', 'Id Mapel', 1, 1, 1, 1, 1, 1, '{}', 4),
(76, 21, 'semester', 'text', 'Semester', 0, 1, 1, 1, 1, 1, '{}', 5),
(77, 21, 'kompetensi_dasar', 'text', 'Kompetensi Dasar', 0, 1, 1, 1, 1, 1, '{}', 6),
(78, 21, 'kkm', 'text', 'Kkm', 0, 1, 1, 1, 1, 1, '{}', 7),
(79, 21, 'nilai_penugasan', 'text', 'Nilai Penugasan', 0, 1, 1, 1, 1, 1, '{}', 8),
(80, 21, 'nilai_keterampilan', 'text', 'Nilai Keterampilan', 0, 1, 1, 1, 1, 1, '{}', 9),
(81, 21, 'nilai_pts', 'text', 'Nilai Pts', 0, 1, 1, 1, 1, 1, '{}', 10),
(82, 21, 'nilai_uas', 'text', 'Nilai Uas', 0, 1, 1, 1, 1, 1, '{}', 11),
(83, 21, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 12),
(84, 21, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(85, 21, 'penilaian_belongsto_siswa_relationship', 'relationship', 'siswas', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Siswa\",\"table\":\"siswas\",\"type\":\"belongsTo\",\"column\":\"id_siswa\",\"key\":\"id\",\"label\":\"nama\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 14),
(86, 21, 'penilaian_belongsto_guru_relationship', 'relationship', 'gurus', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Guru\",\"table\":\"gurus\",\"type\":\"belongsTo\",\"column\":\"id_user\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 15),
(87, 21, 'penilaian_belongsto_pelajaran_relationship', 'relationship', 'pelajarans', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Pelajaran\",\"table\":\"pelajarans\",\"type\":\"belongsTo\",\"column\":\"id_mapel\",\"key\":\"id\",\"label\":\"mata_pelajaran\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 16);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(14, 'pelajarans', 'pelajarans', 'Pelajaran', 'Pelajarans', NULL, 'App\\Models\\Pelajaran', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-11-24 19:21:32', '2020-11-24 19:21:32'),
(16, 'gurus', 'gurus', 'Guru', 'Gurus', NULL, 'App\\Models\\Guru', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-11-24 19:33:15', '2020-11-24 19:33:15'),
(17, 'siswas', 'siswas', 'Siswa', 'Siswas', NULL, 'App\\Models\\Siswa', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-11-24 19:44:00', '2020-11-24 19:45:53'),
(18, 'kelases', 'kelases', 'Kelase', 'Kelases', NULL, 'App\\Models\\Kelase', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-11-24 19:47:23', '2020-11-24 19:47:23'),
(21, 'penilaians', 'penilaians', 'Penilaian', 'Penilaians', NULL, 'App\\Models\\Penilaian', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-11-24 20:15:51', '2020-11-24 20:23:18');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gurus`
--

CREATE TABLE `gurus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gurus`
--

INSERT INTO `gurus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Atik Solihat', '2020-11-24 20:23:42', '2020-11-24 20:23:42'),
(2, 'Novita Ambarwati', '2020-11-24 20:26:00', '2020-12-04 12:19:51'),
(3, 'Agus Diana', '2020-12-01 17:33:08', '2020-12-01 17:33:08'),
(4, 'Hesti Hera', '2020-12-04 12:19:29', '2020-12-04 12:19:29'),
(5, 'Puguh Rismadi Ismail', '2020-12-04 12:20:21', '2020-12-04 12:20:21'),
(6, 'Kemal Yefta', '2020-12-04 12:20:37', '2020-12-04 12:20:37');

-- --------------------------------------------------------

--
-- Table structure for table `kelases`
--

CREATE TABLE `kelases` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_kelas` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kelases`
--

INSERT INTO `kelases` (`id`, `nama_kelas`, `created_at`, `updated_at`) VALUES
(1, 'XII RPL 1', '2020-11-24 19:51:00', '2020-11-24 19:54:06'),
(2, 'XII RPL 2', '2020-11-24 19:54:15', '2020-11-24 19:54:15'),
(3, 'XII MM 1', '2020-12-04 12:42:35', '2020-12-04 12:42:35'),
(4, 'XII MM 2', '2020-12-04 12:42:44', '2020-12-04 12:42:44'),
(5, 'XII MM 3', '2020-12-04 12:43:06', '2020-12-04 12:43:06'),
(6, 'XII TKJ 1', '2020-12-04 12:43:19', '2020-12-04 12:43:19'),
(7, 'XII TKJ 2', '2020-12-04 12:43:32', '2020-12-04 12:43:32'),
(8, 'XII TKJ 3', '2020-12-04 12:43:42', '2020-12-04 12:43:42'),
(9, 'XII TKJ 4', '2020-12-04 12:43:53', '2020-12-04 12:43:53'),
(10, 'XII BC 1', '2020-12-04 12:44:04', '2020-12-04 12:44:04'),
(11, 'XII BC 2', '2020-12-04 12:44:13', '2020-12-04 12:44:13'),
(12, 'XII TEI', '2020-12-04 12:44:24', '2020-12-04 12:44:24');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-10-02 15:33:38', '2020-10-02 15:33:38');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2020-10-02 15:33:38', '2020-10-02 15:33:38', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2020-10-02 15:33:38', '2020-10-02 15:33:38', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2020-10-02 15:33:38', '2020-10-02 15:33:38', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2020-10-02 15:33:38', '2020-10-02 15:33:38', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2020-10-02 15:33:38', '2020-10-02 15:33:38', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2020-10-02 15:33:38', '2020-10-02 15:33:38', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2020-10-02 15:33:38', '2020-10-02 15:33:38', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2020-10-02 15:33:38', '2020-10-02 15:33:38', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2020-10-02 15:33:38', '2020-10-02 15:33:38', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2020-10-02 15:33:38', '2020-10-02 15:33:38', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 8, '2020-10-02 15:33:38', '2020-10-02 15:33:38', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2020-10-02 15:33:38', '2020-10-02 15:33:38', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2020-10-02 15:33:38', '2020-10-02 15:33:38', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 13, '2020-10-02 15:33:38', '2020-10-02 15:33:38', 'voyager.hooks', NULL),
(16, 1, 'Pelajarans', '', '_self', NULL, NULL, NULL, 15, '2020-11-24 19:21:32', '2020-11-24 19:21:32', 'voyager.pelajarans.index', NULL),
(17, 1, 'Gurus', '', '_self', NULL, NULL, NULL, 16, '2020-11-24 19:33:15', '2020-11-24 19:33:15', 'voyager.gurus.index', NULL),
(18, 1, 'Siswas', '', '_self', NULL, NULL, NULL, 17, '2020-11-24 19:44:00', '2020-11-24 19:44:00', 'voyager.siswas.index', NULL),
(19, 1, 'Kelases', '', '_self', NULL, NULL, NULL, 18, '2020-11-24 19:47:23', '2020-11-24 19:47:23', 'voyager.kelases.index', NULL),
(20, 1, 'Penilaians', '', '_self', NULL, NULL, NULL, 19, '2020-11-24 20:15:51', '2020-11-24 20:15:51', 'voyager.penilaians.index', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2016_01_01_000000_create_pages_table', 2),
(25, '2016_01_01_000000_create_posts_table', 2),
(26, '2016_02_15_204651_create_categories_table', 2),
(27, '2017_04_11_000000_alter_post_nullable_fields_table', 2),
(28, '2020_11_25_014520_create_kelasses_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2020-10-02 15:33:38', '2020-10-02 15:33:38');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pelajarans`
--

CREATE TABLE `pelajarans` (
  `id` int(10) UNSIGNED NOT NULL,
  `mata_pelajaran` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pelajarans`
--

INSERT INTO `pelajarans` (`id`, `mata_pelajaran`, `created_at`, `updated_at`) VALUES
(1, 'Matematika', '2020-11-24 19:30:46', '2020-11-24 19:30:46'),
(2, 'Fisika', '2020-11-24 19:30:59', '2020-11-24 19:30:59'),
(3, 'Kimia', '2020-11-24 19:31:05', '2020-11-24 19:31:05'),
(4, 'Pemrograman Dasar', '2020-12-01 17:28:28', '2020-12-01 17:28:28'),
(5, 'Dasar Desain Grafis', '2020-12-01 17:28:44', '2020-12-01 17:28:44'),
(6, 'Pemrograman Berorientasi Objek', '2020-12-04 12:21:41', '2020-12-04 12:21:41'),
(7, 'Komputer Jaringan Dasar', '2020-12-04 12:22:05', '2020-12-04 12:22:05');

-- --------------------------------------------------------

--
-- Table structure for table `penilaians`
--

CREATE TABLE `penilaians` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `id_siswa` int(10) UNSIGNED NOT NULL,
  `id_mapel` int(10) UNSIGNED NOT NULL,
  `semester` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kompetensi_dasar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kkm` int(11) DEFAULT NULL,
  `nilai_penugasan` int(11) DEFAULT NULL,
  `nilai_keterampilan` int(11) DEFAULT NULL,
  `nilai_pts` int(11) DEFAULT NULL,
  `nilai_uas` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penilaians`
--

INSERT INTO `penilaians` (`id`, `id_user`, `id_siswa`, `id_mapel`, `semester`, `kompetensi_dasar`, `kkm`, `nilai_penugasan`, `nilai_keterampilan`, `nilai_pts`, `nilai_uas`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '1', 'Matriks', 76, 80, 80, 80, 80, '2020-11-24 20:26:11', '2020-11-24 20:26:11'),
(2, 2, 1, 3, '1', 'Membuat sabun', 76, 80, 80, 80, 80, '2020-11-24 20:27:57', '2020-11-24 20:27:57'),
(3, 3, 1, 4, '1', 'HTML CSS', 77, 90, 98, 90, 90, '2020-12-01 17:34:00', '2020-12-04 12:50:39');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(2, 'browse_bread', NULL, '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(3, 'browse_database', NULL, '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(4, 'browse_media', NULL, '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(5, 'browse_compass', NULL, '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(6, 'browse_menus', 'menus', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(7, 'read_menus', 'menus', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(8, 'edit_menus', 'menus', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(9, 'add_menus', 'menus', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(10, 'delete_menus', 'menus', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(11, 'browse_roles', 'roles', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(12, 'read_roles', 'roles', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(13, 'edit_roles', 'roles', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(14, 'add_roles', 'roles', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(15, 'delete_roles', 'roles', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(16, 'browse_users', 'users', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(17, 'read_users', 'users', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(18, 'edit_users', 'users', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(19, 'add_users', 'users', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(20, 'delete_users', 'users', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(21, 'browse_settings', 'settings', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(22, 'read_settings', 'settings', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(23, 'edit_settings', 'settings', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(24, 'add_settings', 'settings', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(25, 'delete_settings', 'settings', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(26, 'browse_categories', 'categories', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(27, 'read_categories', 'categories', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(28, 'edit_categories', 'categories', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(29, 'add_categories', 'categories', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(30, 'delete_categories', 'categories', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(31, 'browse_posts', 'posts', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(32, 'read_posts', 'posts', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(33, 'edit_posts', 'posts', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(34, 'add_posts', 'posts', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(35, 'delete_posts', 'posts', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(36, 'browse_pages', 'pages', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(37, 'read_pages', 'pages', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(38, 'edit_pages', 'pages', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(39, 'add_pages', 'pages', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(40, 'delete_pages', 'pages', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(41, 'browse_hooks', NULL, '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(47, 'browse_pelajarans', 'pelajarans', '2020-11-24 19:21:32', '2020-11-24 19:21:32'),
(48, 'read_pelajarans', 'pelajarans', '2020-11-24 19:21:32', '2020-11-24 19:21:32'),
(49, 'edit_pelajarans', 'pelajarans', '2020-11-24 19:21:32', '2020-11-24 19:21:32'),
(50, 'add_pelajarans', 'pelajarans', '2020-11-24 19:21:32', '2020-11-24 19:21:32'),
(51, 'delete_pelajarans', 'pelajarans', '2020-11-24 19:21:32', '2020-11-24 19:21:32'),
(52, 'browse_gurus', 'gurus', '2020-11-24 19:33:15', '2020-11-24 19:33:15'),
(53, 'read_gurus', 'gurus', '2020-11-24 19:33:15', '2020-11-24 19:33:15'),
(54, 'edit_gurus', 'gurus', '2020-11-24 19:33:15', '2020-11-24 19:33:15'),
(55, 'add_gurus', 'gurus', '2020-11-24 19:33:15', '2020-11-24 19:33:15'),
(56, 'delete_gurus', 'gurus', '2020-11-24 19:33:15', '2020-11-24 19:33:15'),
(57, 'browse_siswas', 'siswas', '2020-11-24 19:44:00', '2020-11-24 19:44:00'),
(58, 'read_siswas', 'siswas', '2020-11-24 19:44:00', '2020-11-24 19:44:00'),
(59, 'edit_siswas', 'siswas', '2020-11-24 19:44:00', '2020-11-24 19:44:00'),
(60, 'add_siswas', 'siswas', '2020-11-24 19:44:00', '2020-11-24 19:44:00'),
(61, 'delete_siswas', 'siswas', '2020-11-24 19:44:00', '2020-11-24 19:44:00'),
(62, 'browse_kelases', 'kelases', '2020-11-24 19:47:23', '2020-11-24 19:47:23'),
(63, 'read_kelases', 'kelases', '2020-11-24 19:47:23', '2020-11-24 19:47:23'),
(64, 'edit_kelases', 'kelases', '2020-11-24 19:47:23', '2020-11-24 19:47:23'),
(65, 'add_kelases', 'kelases', '2020-11-24 19:47:23', '2020-11-24 19:47:23'),
(66, 'delete_kelases', 'kelases', '2020-11-24 19:47:23', '2020-11-24 19:47:23'),
(67, 'browse_penilaians', 'penilaians', '2020-11-24 20:15:51', '2020-11-24 20:15:51'),
(68, 'read_penilaians', 'penilaians', '2020-11-24 20:15:51', '2020-11-24 20:15:51'),
(69, 'edit_penilaians', 'penilaians', '2020-11-24 20:15:51', '2020-11-24 20:15:51'),
(70, 'add_penilaians', 'penilaians', '2020-11-24 20:15:51', '2020-11-24 20:15:51'),
(71, 'delete_penilaians', 'penilaians', '2020-11-24 20:15:51', '2020-11-24 20:15:51');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 1),
(3, 1),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(11, 2),
(12, 1),
(12, 2),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(16, 2),
(17, 1),
(17, 2),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(21, 2),
(22, 1),
(22, 2),
(23, 1),
(23, 2),
(24, 1),
(25, 1),
(26, 1),
(26, 2),
(27, 1),
(27, 2),
(28, 1),
(28, 2),
(29, 1),
(29, 2),
(30, 1),
(30, 2),
(31, 1),
(31, 2),
(32, 1),
(32, 2),
(33, 1),
(33, 2),
(34, 1),
(34, 2),
(35, 1),
(35, 2),
(36, 1),
(36, 2),
(37, 1),
(37, 2),
(38, 1),
(38, 2),
(39, 1),
(39, 2),
(40, 1),
(40, 2),
(41, 2),
(41, 3),
(41, 4),
(47, 1),
(47, 3),
(47, 4),
(48, 1),
(48, 3),
(48, 4),
(49, 1),
(49, 3),
(50, 1),
(51, 1),
(52, 1),
(52, 3),
(52, 4),
(53, 1),
(53, 3),
(53, 4),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(57, 3),
(57, 4),
(58, 1),
(58, 3),
(58, 4),
(59, 1),
(59, 3),
(60, 1),
(61, 1),
(62, 1),
(62, 3),
(62, 4),
(63, 1),
(63, 3),
(63, 4),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(67, 3),
(67, 4),
(68, 1),
(68, 3),
(68, 4),
(69, 1),
(69, 3),
(70, 1),
(70, 3),
(71, 1),
(71, 3);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-10-02 15:33:38', '2020-10-02 15:33:38');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(2, 'user', 'Normal User', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(3, 'guru', 'Guru', '2020-11-24 20:30:50', '2020-11-24 20:30:50'),
(4, 'siswa', 'Siswa', '2020-11-24 20:37:19', '2020-11-24 20:39:49');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `siswas`
--

CREATE TABLE `siswas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nisn` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nipd` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_kelas` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siswas`
--

INSERT INTO `siswas` (`id`, `nisn`, `nipd`, `nama`, `id_kelas`, `created_at`, `updated_at`) VALUES
(1, '18191146', '12312398', 'Rafi Izzatul Rizqu Faris', 1, '2020-11-24 19:54:59', '2020-11-24 19:54:59'),
(2, '0032962322', '1819100097', 'Muhammad Rivaldi', 1, '2020-11-24 16:31:28', '2020-11-24 16:31:28'),
(3, '1235687', '18191118', 'Abdi Maulana', 1, '2020-12-01 17:00:17', '2020-12-01 17:00:50'),
(4, '12354466', '18191119', 'Achmad Setiadji Nugroho', 1, '2020-12-01 17:05:31', '2020-12-04 12:23:01'),
(5, '23478999703', '18191120', 'Akmal Permata Sukma', 1, '2020-12-01 17:07:45', '2020-12-01 17:07:45'),
(6, '36972381987', '12378919298', 'Anisa', 1, '2020-12-04 12:23:42', '2020-12-04 12:23:42'),
(7, '654728109', '64723810', 'Anwar Saripudin', 1, '2020-12-04 12:24:06', '2020-12-04 12:24:06'),
(8, '5658320', '5489320', 'Ammar Rais Suryawan', 1, '2020-12-04 12:24:39', '2020-12-04 12:24:39'),
(9, '123408579', '471920090', 'Bimo Amanta Hidayat', 1, '2020-12-04 12:25:21', '2020-12-04 12:25:21'),
(10, '45372191', '54418390', 'Chandra Putra Yunantoro', 1, '2020-12-04 12:26:02', '2020-12-04 12:26:02'),
(11, '56943109293', '34842193029', 'Daniel Chandra', 1, '2020-12-04 12:26:38', '2020-12-04 12:26:38'),
(12, '13476921789', '145693920489', 'Deva Abel Khan', 1, '2020-12-04 12:27:12', '2020-12-04 12:27:12'),
(13, '984120471', '18191130', 'Dian Sulistyarini', 1, '2020-12-04 12:27:39', '2020-12-04 12:27:39'),
(14, '126284029', '132894756', 'Donny Ramadhan', 1, '2020-12-04 12:28:22', '2020-12-04 12:28:22'),
(15, '6526234', '32314590', 'Fadlan Kasyfi', 1, '2020-12-04 12:28:54', '2020-12-04 12:28:54'),
(16, '432651890', '5421786912', 'Fajar Junianto', 1, '2020-12-04 12:29:32', '2020-12-04 12:29:32'),
(17, '56424109834', '314324810987', 'Hani Fatimah', 1, '2020-12-04 12:30:35', '2020-12-04 12:30:35'),
(18, '183461510982', '3412179030', 'Jerry Yusuf Simbolon', 1, '2020-12-04 12:31:10', '2020-12-04 12:31:10'),
(19, '1369013248', '13470875919', 'Mochamad David Dasilva Akbar Max Simanjuntak', 1, '2020-12-04 12:31:52', '2020-12-04 12:31:52'),
(20, '126491903', '1234914290', 'Muhammad Farras Jibran', 1, '2020-12-04 12:32:23', '2020-12-04 12:32:23'),
(21, '714078203', '1348247090', 'Nila Nur Azizah', 1, '2020-12-04 12:33:22', '2020-12-04 12:33:22'),
(22, '21037461320', '136410749932', 'Praditya Maulana Yudistira', 1, '2020-12-04 12:33:59', '2020-12-04 12:33:59'),
(23, '147821903081', '1743013413249', 'Raid Tammam', 1, '2020-12-04 12:34:41', '2020-12-04 12:34:41'),
(24, '1452569890', '10287904712', 'Rifat Khadafy', 1, '2020-12-04 12:35:06', '2020-12-04 12:35:06'),
(25, '13748313409', '12987234104', 'Saffa Salsabila', 1, '2020-12-04 12:40:25', '2020-12-04 12:40:25'),
(26, '19283471', '123954023', 'Sadah Hamidah', 1, '2020-12-04 12:40:57', '2020-12-04 12:40:57'),
(27, '10238469', '123490123', 'Syavira Aprilianti', 1, '2020-12-04 12:41:21', '2020-12-04 12:41:21'),
(28, '123874610', '123412397', 'Zaidan Fadhil', 1, '2020-12-04 12:41:49', '2020-12-04 12:41:49');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2020-10-02 15:33:38', '2020-10-02 15:33:38'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2020-10-02 15:33:38', '2020-10-02 15:33:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users\\November2020\\AIJRE0siPSwA80RFZi5f.jpg', NULL, '$2y$10$66Jrl.EJkVbuwuhNyqjgues9RjagICFLrcL2aNJZuNiVbpVy7L/jC', 'G7WUb2rCkXWb8CJrJQXUa58h4fnrz5vqQtENqk2rX2PH5F7vyI4yfJo9D3Ei', '{\"locale\":\"en\"}', '2020-10-02 15:33:38', '2020-12-02 00:38:39'),
(4, 3, 'Faris', 'risqufaris@gmail.com', 'users/default.png', NULL, '$2y$10$3Z2HUrXDRvrT4DOeIzj6Jue8RD2NGvKKKZkevlfbStRBEuVTXuH9S', NULL, '{\"locale\":\"en\"}', '2020-11-10 21:29:24', '2020-11-24 20:38:01'),
(5, 3, 'Ambaro Novianti', 'ambaro@email.com', 'users/default.png', NULL, '$2y$10$Y.N3iE2BhmQ5bkYC8R3DM.2Bk.COO/oeymktZw/OTTfUFRz.UMocO', NULL, '{\"locale\":\"en\"}', '2020-11-24 20:33:07', '2020-11-24 20:33:07'),
(6, 4, 'Valdi', 'valdi@valdi.com', 'users\\December2020\\PFOjJt2Jps8Awhbo1CIJ.jpg', NULL, '$2y$10$J1T3GjDi9EiokqSKZb2nr.WhsmQ.nMDULVZQ.oom1RZ44utDcIaae', NULL, '{\"locale\":\"en\"}', '2020-12-01 17:09:38', '2020-12-04 12:47:51'),
(7, 3, 'Agus Diana', 'pagusganteng@gmail.com', 'users/default.png', NULL, '$2y$10$qWA7hCRJmhMt3fCYAiB.EOvea6CPixP.sFRPwtFrgt/OOglQ0/sU.', NULL, '{\"locale\":\"id\"}', '2020-12-01 17:25:23', '2020-12-01 17:25:23'),
(9, 4, 'Dian Sulistyarini', 'diansulistyarini@gmail.com', 'users/default.png', NULL, '$2y$10$2d7PLUVb4UE7nebRf7pOW.LxCusZhRc8mkdmhQn6SdFmExmFGlWsu', NULL, '{\"locale\":\"en\"}', '2020-12-04 12:52:16', '2020-12-04 12:52:16'),
(10, 3, 'Puguh Rismadi Ismail', 'papuguh@gmail.com', 'users/default.png', NULL, '$2y$10$MmsOJ4VfBJO7uEEyN9Ye2uRh/U4ogwHu4MbvljFCZd65rGgr9rNcy', NULL, '{\"locale\":\"en\"}', '2020-12-05 08:56:58', '2020-12-05 08:56:58');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(4, 4),
(5, 3),
(6, 2),
(7, 3),
(9, 4),
(10, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `gurus`
--
ALTER TABLE `gurus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelases`
--
ALTER TABLE `kelases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pelajarans`
--
ALTER TABLE `pelajarans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penilaians`
--
ALTER TABLE `penilaians`
  ADD PRIMARY KEY (`id`),
  ADD KEY `penilaians_id_user_index` (`id_user`),
  ADD KEY `penilaians_id_siswa_index` (`id_siswa`),
  ADD KEY `penilaians_id_mapel_index` (`id_mapel`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `siswas`
--
ALTER TABLE `siswas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siswas_id_kelas_index` (`id_kelas`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gurus`
--
ALTER TABLE `gurus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kelases`
--
ALTER TABLE `kelases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pelajarans`
--
ALTER TABLE `pelajarans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `penilaians`
--
ALTER TABLE `penilaians`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `siswas`
--
ALTER TABLE `siswas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
