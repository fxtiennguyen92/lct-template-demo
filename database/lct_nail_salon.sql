-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 05, 2025 lúc 12:51 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `lct_nail_salon`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(2, 1, 'name', 'text', 'Nom', 1, 1, 1, 1, 1, 1, '{}', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 3),
(4, 1, 'password', 'password', 'Mot de passe', 1, 0, 0, 1, 1, 0, '{}', 4),
(5, 1, 'remember_token', 'text', 'Token de rappel', 0, 0, 0, 0, 0, 0, '{}', 5),
(6, 1, 'created_at', 'timestamp', 'Créé le', 0, 1, 1, 0, 0, 0, '{}', 6),
(7, 1, 'updated_at', 'timestamp', 'Mis à jour le', 0, 0, 0, 0, 0, 0, '{}', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '{}', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Rôle', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Multi-Rôles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Nom', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Créé le', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Mis à jour le', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Nom', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Créé le', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Mis à jour le', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Nom d\'affichage', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Rôle', 1, 1, 1, 1, 1, 1, '{}', 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'author_id', 'text', 'Auteur', 1, 0, 0, 0, 0, 0, NULL, 2),
(24, 4, 'title', 'text', 'Titre', 1, 1, 1, 1, 1, 1, NULL, 3),
(25, 4, 'excerpt', 'text_area', 'Extrait', 1, 0, 1, 1, 1, 1, NULL, 4),
(26, 4, 'body', 'rich_text_box', 'Corps', 1, 0, 1, 1, 1, 1, NULL, 5),
(27, 4, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(28, 4, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(29, 4, 'meta_keywords', 'text', 'Meta Mots-clés', 1, 0, 1, 1, 1, 1, NULL, 8),
(30, 4, 'status', 'select_dropdown', 'Statut', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(31, 4, 'created_at', 'timestamp', 'Créé le', 1, 1, 1, 0, 0, 0, NULL, 10),
(32, 4, 'updated_at', 'timestamp', 'Mis à jour le', 1, 0, 0, 0, 0, 0, NULL, 11),
(33, 4, 'image', 'image', 'Image de la page', 0, 1, 1, 1, 1, 1, NULL, 12),
(99, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(100, 14, 'title', 'text', 'Titre', 1, 1, 1, 1, 1, 1, '{}', 2),
(101, 14, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(102, 14, 'order_display', 'number', 'Affichage d\'ordre', 1, 1, 1, 1, 1, 1, '{}', 4),
(103, 14, 'created_at', 'timestamp', 'Crée le', 0, 0, 1, 0, 0, 0, '{}', 5),
(104, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(105, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(106, 15, 'group_id', 'text', 'Group Id', 1, 0, 0, 1, 1, 1, '{}', 2),
(107, 15, 'title', 'text', 'Titre', 1, 1, 1, 1, 1, 1, '{}', 3),
(108, 15, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 4),
(109, 15, 'duration', 'number', 'Durée', 0, 1, 1, 1, 1, 1, '{}', 5),
(110, 15, 'order_display', 'number', 'Affichage d\'ordre', 1, 1, 1, 1, 1, 1, '{}', 7),
(111, 15, 'price', 'number', 'Prix', 1, 1, 1, 1, 1, 1, '{}', 6),
(112, 15, 'created_at', 'timestamp', 'Crée le', 0, 0, 1, 0, 0, 0, '{}', 8),
(113, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(115, 1, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 1, 1, 1, 1, 1, '{}', 6),
(116, 15, 'service_belongsto_group_relationship', 'relationship', 'Groupe', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Group\",\"table\":\"groups\",\"type\":\"belongsTo\",\"column\":\"group_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"cache\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `display_name_singular` varchar(255) NOT NULL,
  `display_name_plural` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `model_name` varchar(255) DEFAULT NULL,
  `policy_name` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'Utilisateur', 'Utilisateurs', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2025-05-31 07:08:20', '2025-06-03 10:06:24'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2025-05-31 07:08:20', '2025-05-31 07:08:20'),
(3, 'roles', 'roles', 'Rôle', 'Rôles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2025-05-31 07:08:20', '2025-05-31 07:08:20'),
(4, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2025-05-31 07:08:20', '2025-05-31 07:08:20'),
(14, 'groups', 'groups', 'Groupe', 'Groupes', 'voyager-list', 'App\\Models\\Group', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order_display\",\"order_display_column\":\"title\",\"order_direction\":\"asc\",\"default_search_key\":\"title\",\"scope\":null}', '2025-06-02 14:23:52', '2025-06-03 11:12:00'),
(15, 'services', 'services', 'Service', 'Services', 'voyager-pie-chart', 'App\\Models\\Service', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order_display\",\"order_display_column\":\"title\",\"order_direction\":\"asc\",\"default_search_key\":\"title\",\"scope\":null}', '2025-06-02 14:24:01', '2025-06-03 11:11:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `groups`
--

CREATE TABLE `groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `order_display` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `groups`
--

INSERT INTO `groups` (`id`, `title`, `description`, `order_display`, `created_at`, `updated_at`) VALUES
(1, 'Manucure', 'Pose Capsule avec de la résine', 1, '2025-06-03 09:54:28', '2025-06-03 10:50:03'),
(2, 'Manucure', 'Remplissage avec de la résine', 2, '2025-06-03 10:50:28', '2025-06-03 10:50:28'),
(3, 'Beauté des pieds', 'Prends soin de vos pieds', 4, '2025-06-03 10:51:35', '2025-06-03 10:51:43'),
(4, 'Manucure', 'Manucure simple', 3, '2025-06-03 10:52:05', '2025-06-03 10:52:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2025-05-31 07:08:20', '2025-05-31 07:08:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `parameters` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Tableau de bord', '', '_self', 'voyager-boat', NULL, NULL, 1, '2025-05-31 07:08:20', '2025-05-31 07:08:20', 'voyager.dashboard', NULL),
(2, 1, 'Médiathèque', '', '_self', 'voyager-images', NULL, NULL, 5, '2025-05-31 07:08:20', '2025-06-04 18:44:42', 'voyager.media.index', NULL),
(3, 1, 'Utilisateurs', '', '_self', 'voyager-person', NULL, NULL, 6, '2025-05-31 07:08:20', '2025-06-04 18:44:42', 'voyager.users.index', NULL),
(4, 1, 'Rôles', '', '_self', 'voyager-lock', NULL, NULL, 7, '2025-05-31 07:08:20', '2025-06-04 18:44:42', 'voyager.roles.index', NULL),
(5, 1, 'Outils', '', '_self', 'voyager-tools', NULL, NULL, 9, '2025-05-31 07:08:20', '2025-06-04 18:44:42', NULL, NULL),
(6, 1, 'Créateur de menus', '', '_self', 'voyager-list', NULL, 5, 1, '2025-05-31 07:08:20', '2025-06-02 13:28:20', 'voyager.menus.index', NULL),
(7, 1, 'Base de données', '', '_self', 'voyager-data', NULL, 5, 2, '2025-05-31 07:08:20', '2025-06-02 13:28:20', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', '#000000', 5, 4, '2025-05-31 07:08:20', '2025-06-02 14:23:34', 'voyager.compass.index', 'null'),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 3, '2025-05-31 07:08:20', '2025-06-02 14:23:34', 'voyager.bread.index', NULL),
(10, 1, 'Paramètres', '', '_self', 'voyager-settings', NULL, NULL, 8, '2025-05-31 07:08:20', '2025-06-04 18:44:42', 'voyager.settings.index', NULL),
(22, 1, 'Groupes', '', '_self', 'voyager-list', '#000000', NULL, 4, '2025-06-03 10:13:32', '2025-06-04 18:44:42', 'voyager.groups.index', 'null'),
(23, 1, 'Services', '', '_self', 'voyager-pie-chart', '#000000', NULL, 2, '2025-06-03 10:14:22', '2025-06-03 10:26:24', 'voyager.services.index', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2016_01_01_000000_add_voyager_user_fields', 1),
(5, '2016_01_01_000000_create_data_types_table', 1),
(6, '2016_01_01_000000_create_pages_table', 1),
(7, '2016_01_01_000000_create_posts_table', 1),
(8, '2016_02_15_204651_create_categories_table', 1),
(9, '2016_05_19_173453_create_menu_table', 1),
(10, '2016_10_21_190000_create_roles_table', 1),
(11, '2016_10_21_190000_create_settings_table', 1),
(12, '2016_11_30_135954_create_permission_table', 1),
(13, '2016_11_30_141208_create_permission_role_table', 1),
(14, '2016_12_26_201236_data_types__add__server_side', 1),
(15, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(16, '2017_01_14_005015_create_translations_table', 1),
(17, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(18, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(19, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(20, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(21, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(22, '2017_08_05_000000_add_group_to_settings_table', 1),
(23, '2017_11_26_013050_add_user_role_relationship', 1),
(24, '2017_11_26_015000_create_user_roles_table', 1),
(25, '2018_03_11_000000_add_user_settings', 1),
(26, '2018_03_14_000000_add_details_to_data_types_table', 1),
(27, '2018_03_16_000000_make_settings_value_nullable', 1),
(31, '2025_06_02_150823_create_groups_table', 4),
(32, '2025_06_02_150830_create_services_table', 5),
(33, '2025_06_04_201649_create_galleries_table', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `excerpt` text DEFAULT NULL,
  `body` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2025-05-31 07:08:20', '2025-05-31 07:08:20'),
(2, 'browse_bread', NULL, '2025-05-31 07:08:20', '2025-05-31 07:08:20'),
(3, 'browse_database', NULL, '2025-05-31 07:08:20', '2025-05-31 07:08:20'),
(4, 'browse_media', NULL, '2025-05-31 07:08:20', '2025-05-31 07:08:20'),
(5, 'browse_compass', NULL, '2025-05-31 07:08:20', '2025-05-31 07:08:20'),
(6, 'browse_menus', 'menus', '2025-05-31 07:08:20', '2025-05-31 07:08:20'),
(7, 'read_menus', 'menus', '2025-05-31 07:08:20', '2025-05-31 07:08:20'),
(8, 'edit_menus', 'menus', '2025-05-31 07:08:20', '2025-05-31 07:08:20'),
(9, 'add_menus', 'menus', '2025-05-31 07:08:20', '2025-05-31 07:08:20'),
(10, 'delete_menus', 'menus', '2025-05-31 07:08:20', '2025-05-31 07:08:20'),
(11, 'browse_roles', 'roles', '2025-05-31 07:08:20', '2025-05-31 07:08:20'),
(12, 'read_roles', 'roles', '2025-05-31 07:08:20', '2025-05-31 07:08:20'),
(13, 'edit_roles', 'roles', '2025-05-31 07:08:20', '2025-05-31 07:08:20'),
(14, 'add_roles', 'roles', '2025-05-31 07:08:20', '2025-05-31 07:08:20'),
(15, 'delete_roles', 'roles', '2025-05-31 07:08:20', '2025-05-31 07:08:20'),
(16, 'browse_users', 'users', '2025-05-31 07:08:20', '2025-05-31 07:08:20'),
(17, 'read_users', 'users', '2025-05-31 07:08:20', '2025-05-31 07:08:20'),
(18, 'edit_users', 'users', '2025-05-31 07:08:20', '2025-05-31 07:08:20'),
(19, 'add_users', 'users', '2025-05-31 07:08:20', '2025-05-31 07:08:20'),
(20, 'delete_users', 'users', '2025-05-31 07:08:20', '2025-05-31 07:08:20'),
(21, 'browse_settings', 'settings', '2025-05-31 07:08:20', '2025-05-31 07:08:20'),
(22, 'read_settings', 'settings', '2025-05-31 07:08:20', '2025-05-31 07:08:20'),
(23, 'edit_settings', 'settings', '2025-05-31 07:08:20', '2025-05-31 07:08:20'),
(24, 'add_settings', 'settings', '2025-05-31 07:08:20', '2025-05-31 07:08:20'),
(25, 'delete_settings', 'settings', '2025-05-31 07:08:20', '2025-05-31 07:08:20'),
(26, 'browse_pages', 'pages', '2025-05-31 07:08:20', '2025-05-31 07:08:20'),
(27, 'read_pages', 'pages', '2025-05-31 07:08:20', '2025-05-31 07:08:20'),
(28, 'edit_pages', 'pages', '2025-05-31 07:08:20', '2025-05-31 07:08:20'),
(29, 'add_pages', 'pages', '2025-05-31 07:08:20', '2025-05-31 07:08:20'),
(30, 'delete_pages', 'pages', '2025-05-31 07:08:20', '2025-05-31 07:08:20'),
(66, 'browse_groups', 'groups', '2025-06-02 14:23:52', '2025-06-02 14:23:52'),
(67, 'read_groups', 'groups', '2025-06-02 14:23:52', '2025-06-02 14:23:52'),
(68, 'edit_groups', 'groups', '2025-06-02 14:23:52', '2025-06-02 14:23:52'),
(69, 'add_groups', 'groups', '2025-06-02 14:23:52', '2025-06-02 14:23:52'),
(70, 'delete_groups', 'groups', '2025-06-02 14:23:52', '2025-06-02 14:23:52'),
(71, 'browse_services', 'services', '2025-06-02 14:24:01', '2025-06-02 14:24:01'),
(72, 'read_services', 'services', '2025-06-02 14:24:01', '2025-06-02 14:24:01'),
(73, 'edit_services', 'services', '2025-06-02 14:24:01', '2025-06-02 14:24:01'),
(74, 'add_services', 'services', '2025-06-02 14:24:01', '2025-06-02 14:24:01'),
(75, 'delete_services', 'services', '2025-06-02 14:24:01', '2025-06-02 14:24:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
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
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(66, 1),
(66, 2),
(67, 1),
(67, 2),
(68, 1),
(68, 2),
(69, 1),
(70, 1),
(71, 1),
(71, 2),
(72, 1),
(72, 2),
(73, 1),
(73, 2),
(74, 1),
(74, 2),
(75, 1),
(75, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrateur', '2025-05-31 07:08:20', '2025-05-31 07:08:20'),
(2, 'user', 'Utilisateur standard', '2025-05-31 07:08:20', '2025-05-31 07:08:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `order_display` int(11) NOT NULL DEFAULT 0,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `services`
--

INSERT INTO `services` (`id`, `group_id`, `title`, `description`, `duration`, `order_display`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 'Naturelle', 'Pose Capsule avec de la résine', 30, 1, 35.00, '2025-06-03 09:54:52', '2025-06-03 11:10:20'),
(2, 1, 'Couleur semi-permanente', 'Pose Capsule avec de la résine', 60, 2, 45.00, '2025-06-03 11:04:27', '2025-06-03 11:10:20'),
(3, 1, 'Baby-Boomer', NULL, 60, 3, 45.00, '2025-06-03 11:08:49', '2025-06-03 11:08:49'),
(4, 1, 'Baby-Boomer couleur', NULL, 60, 4, 48.00, '2025-06-03 11:09:13', '2025-06-03 11:09:13'),
(5, 1, 'French classique', NULL, 60, 5, 45.00, '2025-06-03 11:09:36', '2025-06-03 11:09:36'),
(6, 1, 'French bien remonté', NULL, 60, 6, 50.00, '2025-06-03 11:09:58', '2025-06-03 11:09:58'),
(7, 2, 'Naturelle', 'Remplissage avec de la résine', 30, 7, 28.00, '2025-06-03 11:13:18', '2025-06-03 11:13:18'),
(8, 2, 'Couleur semi-permanente', 'Remplissage avec de la résine', 45, 8, 38.00, '2025-06-03 11:13:44', '2025-06-03 11:13:44'),
(9, 2, 'Baby-Boomer', NULL, 45, 9, 38.00, '2025-06-03 11:14:06', '2025-06-03 11:14:06'),
(10, 2, 'Baby-Boomer couleur', NULL, 45, 10, 40.00, '2025-06-03 11:14:32', '2025-06-03 11:14:32'),
(11, 2, 'French classique', NULL, 45, 11, 40.00, '2025-06-03 11:14:55', '2025-06-03 11:14:55'),
(12, 2, 'French bien remonté', NULL, 45, 12, 45.00, '2025-06-03 11:15:26', '2025-06-03 11:15:26'),
(13, 3, 'Bain des pied', 'Nettoyage complet - homme/femme', 30, 13, 35.00, '2025-06-03 11:16:35', '2025-06-03 11:16:35'),
(14, 3, 'Pieds - Résine + French', 'en semi-permanente ou en couleur semi-permanente', 45, 14, 40.00, '2025-06-03 11:18:09', '2025-06-03 11:18:09'),
(15, 3, 'Pied - French', 'semi-permanente', 30, 15, 30.00, '2025-06-03 11:18:50', '2025-06-03 11:18:50'),
(16, 3, 'Pieds - Vernis', 'semi-permanente', 30, 16, 25.00, '2025-06-03 11:19:27', '2025-06-03 11:19:27'),
(17, 3, 'Pieds - Capsule', 'avec de la résine + French ou en couleur', 45, 17, 45.00, '2025-06-03 11:20:28', '2025-06-03 11:20:28'),
(18, 3, 'Pieds - Résine naturel', 'avec ou sans capsule', 40, 18, 35.00, '2025-06-03 11:21:07', '2025-06-03 11:21:07'),
(19, 3, 'Pieds - Remplissage', 'Remplissage résine naturel', 30, 19, 28.00, '2025-06-03 11:21:50', '2025-06-03 11:21:50'),
(20, 3, 'Pieds - Remplissage', 'Remplissage résine avec couleur ou French', 45, 20, 40.00, '2025-06-03 11:22:20', '2025-06-03 11:22:20'),
(21, 3, 'Pieds - Bain', 'pose couleur semi-permanente', 60, 21, 55.00, '2025-06-03 11:23:26', '2025-06-03 11:23:26'),
(22, 3, 'Pieds - Bain', 'pose french en semi-permanente', 60, 22, 60.00, '2025-06-03 11:23:55', '2025-06-03 11:23:55'),
(23, 4, 'Pose du vernis', 'semi-permanente', 30, 23, 25.00, '2025-06-03 11:24:42', '2025-06-03 11:24:42'),
(24, 4, 'French en vernis', 'semi-permanente', 30, 24, 30.00, '2025-06-03 11:25:11', '2025-06-03 11:25:11'),
(25, 4, 'Manucure simple', 'Retirer les cuticules', 20, 25, 20.00, '2025-06-03 11:26:39', '2025-06-03 11:26:39'),
(26, 4, 'Dépose / Enlevé vernis', 'semi-permanente - Sans capsule AMERICAIN', 10, 26, 10.00, '2025-06-03 11:28:26', '2025-06-03 11:28:26'),
(27, 4, 'Dépose / Enlevé résine ou gel', NULL, 15, 27, 15.00, '2025-06-03 11:28:52', '2025-06-03 11:28:52'),
(28, 4, 'Dépose / Enlevé', 'capsule Américaine, capsule sur tout l\'ongle', 25, 28, 25.00, '2025-06-03 11:29:49', '2025-06-03 11:29:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('FhzvXxiaT8nIvHww7xheI7e2zZ1v8x91WLeTs69P', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoibDhZdElqQzFVRUZzc1lhWVdWMXJXRkFKZ0tGd3VEVHE0WFF3S2pVcSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM4OiJodHRwOi8vbG9jYWxob3N0L2xjdC1uYWlsLXNhbG9uL3B1YmxpYyI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoyMjoiUEhQREVCVUdCQVJfU1RBQ0tfREFUQSI7YTowOnt9fQ==', 1749077495);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `details` text DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Titre du site', 'L\'Onglery des Tanneurs | Manucure à Strasbourg', '', 'text', 1, 'Site'),
(2, 'site.description', 'Description du site', 'L\'Onglery des Tanneurs vous accueille au cœur de Strasbourg pour des prestations de manucure et de beauté des ongles. Dans un cadre élégant et convivial, notre équipe vous propose des soins de qualité : manucure, pose de vernis semi-permanent, nail art et bien plus. Offrez-vous un instant de détente et de raffinement entre des mains expertes.', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Logo du site', 'settings\\June2025\\W89jmYaAY83XkqWTOcP6.png', '', 'image', 4, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics ID de Tracking', NULL, '', 'text', 7, 'Site'),
(5, 'admin.bg_image', 'Image de fond de l\'espace admin', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Titre de l\'espace admin', 'CMS', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Description de l\'espace admin', 'Bienvenue dans CMS, le panneau d\'administration qui manquait à Laravel.', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Chargement de l\'espace admin', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Icône de l\'espace admin', '', '', 'image', 4, 'Admin'),
(11, 'site.icon', 'Icon du site', 'settings\\May2025\\nHdOw6UEX5pt3FghzUJB.png', NULL, 'image', 3, 'Site'),
(12, 'site.logo_secondary', 'Logo du site (secondary)', 'settings\\June2025\\6r70opx3SG7t2OtXzXHT.png', NULL, 'image', 6, 'Site'),
(13, 'site.home_banner', 'Banner', 'settings\\May2025\\L4h6sIabZsH96hQmGKZj.png', NULL, 'image', 14, 'Site'),
(14, 'site.phone', 'Phone', '+33 3 88 98 73 84', NULL, 'text', 9, 'Site'),
(15, 'site.facebook', 'Facebook', NULL, NULL, 'text', 12, 'Site'),
(16, 'site.planity', 'Planity', 'https://www.planity.com/les-ongles-des-tanneurs-67000-strasbourg', NULL, 'text', 11, 'Site'),
(17, 'site.address', 'Adresse', '27 Rue du Fossé-des-Tanneurs, 67000 Strasbourg', NULL, 'text', 10, 'Site'),
(18, 'site.store', 'Boutique', 'L\'Onglery des Tanneurs', NULL, 'text', 8, 'Site'),
(19, 'site.instagram', 'Instagram', 'https://www.instagram.com/ongleriedestanneur', NULL, 'text', 13, 'Site'),
(20, 'site.map', 'Plan iframe', '<p><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d230.08051584562588!2d7.744020879354983!3d48.58300474168041!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4796c928e5c75125%3A0x288109c189ffbe21!2sL\'onglery%20des%20tanneurs%20-%20Strasbourg!5e0!3m2!1sfr!2sfr!4v1748808783976!5m2!1sfr!2sfr\" width=\"600\" height=\"450\" allowfullscreen=\"allowfullscreen\" loading=\"lazy\"></iframe></p>', NULL, 'rich_text_box', 15, 'Site'),
(21, 'site.image_preview', 'Aperçu de l\'image', 'settings\\June2025\\BfxPc2ZlxyuLX9RR18vR.png', NULL, 'image', 16, 'Site'),
(22, 'site.image_service', 'Image de service', 'settings\\June2025\\LWiewQjmychZSMo4GHRq.jpg', NULL, 'image', 17, 'Site'),
(23, 'site.promotion_banner', 'Promotion', '<section id=\"banner-3\" class=\"bg-fixed banner-section division\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-7 col-lg-6\">\r\n<div class=\"banner-3-txt text-center\"><!-- Title -->\r\n<h5 class=\"h5-md\">We want to make every girl pretty, happy, and loved!</h5>\r\n<h2>10% OFF</h2>\r\n<h4 class=\"h4-xs\">on Manicure + Gel Polish</h4>\r\n<a class=\"btn violet-red--btn tra-black--hover\" href=\"http://localhost/lct-nail-salon/public/admin/{{ setting(\'site.planity\') }}\">Rendez-vous</a></div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>', NULL, 'rich_text_box', 18, 'Site'),
(26, 'site.copyright', 'Copyright', '<p>&copy; 2025 Tous droits r&eacute;serv&eacute;s. R&eacute;alisation : <a href=\"https://licortech.com\" target=\"_blank\" rel=\"noopener\">Licortech</a>.</p>', NULL, 'rich_text_box', 19, 'Site');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) NOT NULL,
  `column_name` varchar(255) NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 6, 'pt', 'Post', '2025-05-31 07:09:41', '2025-05-31 07:09:41'),
(2, 'data_types', 'display_name_singular', 4, 'pt', 'Página', '2025-05-31 07:09:41', '2025-05-31 07:09:41'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2025-05-31 07:09:41', '2025-05-31 07:09:41'),
(4, 'data_types', 'display_name_singular', 5, 'pt', 'Categoria', '2025-05-31 07:09:41', '2025-05-31 07:09:41'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2025-05-31 07:09:41', '2025-05-31 07:09:41'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2025-05-31 07:09:41', '2025-05-31 07:09:41'),
(7, 'data_types', 'display_name_plural', 6, 'pt', 'Posts', '2025-05-31 07:09:41', '2025-05-31 07:09:41'),
(8, 'data_types', 'display_name_plural', 4, 'pt', 'Páginas', '2025-05-31 07:09:41', '2025-05-31 07:09:41'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2025-05-31 07:09:41', '2025-05-31 07:09:41'),
(10, 'data_types', 'display_name_plural', 5, 'pt', 'Categorias', '2025-05-31 07:09:41', '2025-05-31 07:09:41'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2025-05-31 07:09:41', '2025-05-31 07:09:41'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2025-05-31 07:09:41', '2025-05-31 07:09:41'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2025-05-31 07:09:41', '2025-05-31 07:09:41'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2025-05-31 07:09:41', '2025-05-31 07:09:41'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2025-05-31 07:09:41', '2025-05-31 07:09:41'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2025-05-31 07:09:41', '2025-05-31 07:09:41'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2025-05-31 07:09:41', '2025-05-31 07:09:41'),
(22, 'menu_items', 'title', 13, 'pt', 'Publicações', '2025-05-31 07:09:41', '2025-05-31 07:09:41'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2025-05-31 07:09:41', '2025-05-31 07:09:41'),
(24, 'menu_items', 'title', 12, 'pt', 'Categorias', '2025-05-31 07:09:41', '2025-05-31 07:09:41'),
(25, 'menu_items', 'title', 11, 'pt', 'Páginas', '2025-05-31 07:09:41', '2025-05-31 07:09:41'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2025-05-31 07:09:41', '2025-05-31 07:09:41'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2025-05-31 07:09:41', '2025-05-31 07:09:41'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2025-05-31 07:09:42', '2025-05-31 07:09:42'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2025-05-31 07:09:42', '2025-05-31 07:09:42'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2025-05-31 07:09:42', '2025-05-31 07:09:42'),
(31, 'data_types', 'display_name_singular', 7, 'pt', 'Categoria', '2025-05-31 08:21:59', '2025-05-31 08:21:59'),
(32, 'data_types', 'display_name_plural', 7, 'pt', 'Categorias', '2025-05-31 08:21:59', '2025-05-31 08:21:59'),
(33, 'menu_items', 'title', 14, 'pt', 'Categorias', '2025-05-31 08:21:59', '2025-05-31 08:21:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `settings` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'super@licortech.com', 'users\\May2025\\JHfHgGnBfIj24Nc7uyvB.jpg', NULL, '$2y$12$JWPWMlzjXCGUvdiTBaBmIOG/w9dJ14pCqUuXjCEc9g3jzQfTNeqhG', 'QIQREjLB1cxZ98NOZKoDAXYbGu2w3KF8GbSlzZRStGh4hl4oMQeq2wsZfgGz', '{\"locale\":\"fr\"}', '2025-05-31 07:08:20', '2025-05-31 19:52:50'),
(3, 2, 'Admin', 'admin@licortech.com', 'users/default.png', NULL, '$2y$12$QmYJ/i5kYs3q2iXI.ebBtOpVUdLLovS2ER.kx/BrVzRKS9ZyuzNDi', NULL, '{\"locale\":\"fr\"}', '2025-06-03 10:44:31', '2025-06-03 10:44:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Chỉ mục cho bảng `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Chỉ mục cho bảng `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Chỉ mục cho bảng `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Chỉ mục cho bảng `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Chỉ mục cho bảng `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Chỉ mục cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Chỉ mục cho bảng `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_group_id_foreign` (`group_id`);

--
-- Chỉ mục cho bảng `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Chỉ mục cho bảng `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT cho bảng `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `groups`
--
ALTER TABLE `groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Các ràng buộc cho bảng `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
