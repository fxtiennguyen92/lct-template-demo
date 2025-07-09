-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 09, 2025 lúc 04:57 AM
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
-- Cơ sở dữ liệu: `lct_templates`
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

--
-- Đang đổ dữ liệu cho bảng `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('voyager_menu_admin', 'O:23:\"TCG\\Voyager\\Models\\Menu\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"menus\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:4:{s:2:\"id\";i:1;s:4:\"name\";s:5:\"admin\";s:10:\"created_at\";s:19:\"2025-05-31 09:08:20\";s:10:\"updated_at\";s:19:\"2025-07-02 15:44:47\";}s:11:\"\0*\0original\";a:4:{s:2:\"id\";i:1;s:4:\"name\";s:5:\"admin\";s:10:\"created_at\";s:19:\"2025-05-31 09:08:20\";s:10:\"updated_at\";s:19:\"2025-07-02 15:44:47\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:12:\"parent_items\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:14:{i:0;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:1;s:7:\"menu_id\";i:1;s:5:\"title\";s:15:\"Tableau de bord\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:12:\"voyager-boat\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:1;s:10:\"created_at\";s:19:\"2025-05-31 09:08:20\";s:10:\"updated_at\";s:19:\"2025-05-31 09:08:20\";s:5:\"route\";s:17:\"voyager.dashboard\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:1;s:7:\"menu_id\";i:1;s:5:\"title\";s:15:\"Tableau de bord\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:12:\"voyager-boat\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:1;s:10:\"created_at\";s:19:\"2025-05-31 09:08:20\";s:10:\"updated_at\";s:19:\"2025-05-31 09:08:20\";s:5:\"route\";s:17:\"voyager.dashboard\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:1;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:2;s:7:\"menu_id\";i:1;s:5:\"title\";s:13:\"Médiathèque\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:14:\"voyager-images\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:10;s:10:\"created_at\";s:19:\"2025-05-31 09:08:20\";s:10:\"updated_at\";s:19:\"2025-07-07 13:51:19\";s:5:\"route\";s:19:\"voyager.media.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:2;s:7:\"menu_id\";i:1;s:5:\"title\";s:13:\"Médiathèque\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:14:\"voyager-images\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:10;s:10:\"created_at\";s:19:\"2025-05-31 09:08:20\";s:10:\"updated_at\";s:19:\"2025-07-07 13:51:19\";s:5:\"route\";s:19:\"voyager.media.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:2;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:3;s:7:\"menu_id\";i:1;s:5:\"title\";s:12:\"Utilisateurs\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:14:\"voyager-person\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:11;s:10:\"created_at\";s:19:\"2025-05-31 09:08:20\";s:10:\"updated_at\";s:19:\"2025-07-07 13:51:19\";s:5:\"route\";s:19:\"voyager.users.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:3;s:7:\"menu_id\";i:1;s:5:\"title\";s:12:\"Utilisateurs\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:14:\"voyager-person\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:11;s:10:\"created_at\";s:19:\"2025-05-31 09:08:20\";s:10:\"updated_at\";s:19:\"2025-07-07 13:51:19\";s:5:\"route\";s:19:\"voyager.users.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:3;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:4;s:7:\"menu_id\";i:1;s:5:\"title\";s:6:\"Rôles\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:12:\"voyager-lock\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:12;s:10:\"created_at\";s:19:\"2025-05-31 09:08:20\";s:10:\"updated_at\";s:19:\"2025-07-07 13:51:19\";s:5:\"route\";s:19:\"voyager.roles.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:4;s:7:\"menu_id\";i:1;s:5:\"title\";s:6:\"Rôles\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:12:\"voyager-lock\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:12;s:10:\"created_at\";s:19:\"2025-05-31 09:08:20\";s:10:\"updated_at\";s:19:\"2025-07-07 13:51:19\";s:5:\"route\";s:19:\"voyager.roles.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:4;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:5;s:7:\"menu_id\";i:1;s:5:\"title\";s:6:\"Outils\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:13:\"voyager-tools\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:14;s:10:\"created_at\";s:19:\"2025-05-31 09:08:20\";s:10:\"updated_at\";s:19:\"2025-07-07 13:51:19\";s:5:\"route\";N;s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:5;s:7:\"menu_id\";i:1;s:5:\"title\";s:6:\"Outils\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:13:\"voyager-tools\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:14;s:10:\"created_at\";s:19:\"2025-05-31 09:08:20\";s:10:\"updated_at\";s:19:\"2025-07-07 13:51:19\";s:5:\"route\";N;s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:4:{i:0;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:6;s:7:\"menu_id\";i:1;s:5:\"title\";s:18:\"Créateur de menus\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:12:\"voyager-list\";s:5:\"color\";N;s:9:\"parent_id\";i:5;s:5:\"order\";i:1;s:10:\"created_at\";s:19:\"2025-05-31 09:08:20\";s:10:\"updated_at\";s:19:\"2025-06-02 15:28:20\";s:5:\"route\";s:19:\"voyager.menus.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:6;s:7:\"menu_id\";i:1;s:5:\"title\";s:18:\"Créateur de menus\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:12:\"voyager-list\";s:5:\"color\";N;s:9:\"parent_id\";i:5;s:5:\"order\";i:1;s:10:\"created_at\";s:19:\"2025-05-31 09:08:20\";s:10:\"updated_at\";s:19:\"2025-06-02 15:28:20\";s:5:\"route\";s:19:\"voyager.menus.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:1;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:7;s:7:\"menu_id\";i:1;s:5:\"title\";s:16:\"Base de données\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:12:\"voyager-data\";s:5:\"color\";N;s:9:\"parent_id\";i:5;s:5:\"order\";i:2;s:10:\"created_at\";s:19:\"2025-05-31 09:08:20\";s:10:\"updated_at\";s:19:\"2025-06-02 15:28:20\";s:5:\"route\";s:22:\"voyager.database.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:7;s:7:\"menu_id\";i:1;s:5:\"title\";s:16:\"Base de données\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:12:\"voyager-data\";s:5:\"color\";N;s:9:\"parent_id\";i:5;s:5:\"order\";i:2;s:10:\"created_at\";s:19:\"2025-05-31 09:08:20\";s:10:\"updated_at\";s:19:\"2025-06-02 15:28:20\";s:5:\"route\";s:22:\"voyager.database.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:2;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:9;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"BREAD\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:13:\"voyager-bread\";s:5:\"color\";N;s:9:\"parent_id\";i:5;s:5:\"order\";i:3;s:10:\"created_at\";s:19:\"2025-05-31 09:08:20\";s:10:\"updated_at\";s:19:\"2025-06-02 16:23:34\";s:5:\"route\";s:19:\"voyager.bread.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:9;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"BREAD\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:13:\"voyager-bread\";s:5:\"color\";N;s:9:\"parent_id\";i:5;s:5:\"order\";i:3;s:10:\"created_at\";s:19:\"2025-05-31 09:08:20\";s:10:\"updated_at\";s:19:\"2025-06-02 16:23:34\";s:5:\"route\";s:19:\"voyager.bread.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:3;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:8;s:7:\"menu_id\";i:1;s:5:\"title\";s:7:\"Compass\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:15:\"voyager-compass\";s:5:\"color\";s:7:\"#000000\";s:9:\"parent_id\";i:5;s:5:\"order\";i:4;s:10:\"created_at\";s:19:\"2025-05-31 09:08:20\";s:10:\"updated_at\";s:19:\"2025-06-02 16:23:34\";s:5:\"route\";s:21:\"voyager.compass.index\";s:10:\"parameters\";s:4:\"null\";}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:8;s:7:\"menu_id\";i:1;s:5:\"title\";s:7:\"Compass\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:15:\"voyager-compass\";s:5:\"color\";s:7:\"#000000\";s:9:\"parent_id\";i:5;s:5:\"order\";i:4;s:10:\"created_at\";s:19:\"2025-05-31 09:08:20\";s:10:\"updated_at\";s:19:\"2025-06-02 16:23:34\";s:5:\"route\";s:21:\"voyager.compass.index\";s:10:\"parameters\";s:4:\"null\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:5;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:10;s:7:\"menu_id\";i:1;s:5:\"title\";s:11:\"Paramètres\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:16:\"voyager-settings\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:13;s:10:\"created_at\";s:19:\"2025-05-31 09:08:20\";s:10:\"updated_at\";s:19:\"2025-07-07 13:51:19\";s:5:\"route\";s:22:\"voyager.settings.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:10;s:7:\"menu_id\";i:1;s:5:\"title\";s:11:\"Paramètres\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:16:\"voyager-settings\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:13;s:10:\"created_at\";s:19:\"2025-05-31 09:08:20\";s:10:\"updated_at\";s:19:\"2025-07-07 13:51:19\";s:5:\"route\";s:22:\"voyager.settings.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:6;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:22;s:7:\"menu_id\";i:1;s:5:\"title\";s:7:\"Groupes\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:12:\"voyager-list\";s:5:\"color\";s:7:\"#000000\";s:9:\"parent_id\";N;s:5:\"order\";i:8;s:10:\"created_at\";s:19:\"2025-06-03 12:13:32\";s:10:\"updated_at\";s:19:\"2025-07-07 13:51:19\";s:5:\"route\";s:20:\"voyager.groups.index\";s:10:\"parameters\";s:4:\"null\";}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:22;s:7:\"menu_id\";i:1;s:5:\"title\";s:7:\"Groupes\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:12:\"voyager-list\";s:5:\"color\";s:7:\"#000000\";s:9:\"parent_id\";N;s:5:\"order\";i:8;s:10:\"created_at\";s:19:\"2025-06-03 12:13:32\";s:10:\"updated_at\";s:19:\"2025-07-07 13:51:19\";s:5:\"route\";s:20:\"voyager.groups.index\";s:10:\"parameters\";s:4:\"null\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:7;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:23;s:7:\"menu_id\";i:1;s:5:\"title\";s:8:\"Services\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:17:\"voyager-pie-chart\";s:5:\"color\";s:7:\"#000000\";s:9:\"parent_id\";N;s:5:\"order\";i:7;s:10:\"created_at\";s:19:\"2025-06-03 12:14:22\";s:10:\"updated_at\";s:19:\"2025-07-07 13:51:19\";s:5:\"route\";s:22:\"voyager.services.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:23;s:7:\"menu_id\";i:1;s:5:\"title\";s:8:\"Services\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:17:\"voyager-pie-chart\";s:5:\"color\";s:7:\"#000000\";s:9:\"parent_id\";N;s:5:\"order\";i:7;s:10:\"created_at\";s:19:\"2025-06-03 12:14:22\";s:10:\"updated_at\";s:19:\"2025-07-07 13:51:19\";s:5:\"route\";s:22:\"voyager.services.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:8;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:25;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"Pages\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:15:\"voyager-browser\";s:5:\"color\";s:7:\"#000000\";s:9:\"parent_id\";N;s:5:\"order\";i:4;s:10:\"created_at\";s:19:\"2025-07-01 09:37:27\";s:10:\"updated_at\";s:19:\"2025-07-03 11:01:11\";s:5:\"route\";s:19:\"voyager.pages.index\";s:10:\"parameters\";s:4:\"null\";}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:25;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"Pages\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:15:\"voyager-browser\";s:5:\"color\";s:7:\"#000000\";s:9:\"parent_id\";N;s:5:\"order\";i:4;s:10:\"created_at\";s:19:\"2025-07-01 09:37:27\";s:10:\"updated_at\";s:19:\"2025-07-03 11:01:11\";s:5:\"route\";s:19:\"voyager.pages.index\";s:10:\"parameters\";s:4:\"null\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:9;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:26;s:7:\"menu_id\";i:1;s:5:\"title\";s:8:\"Horaires\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:19:\"voyager-alarm-clock\";s:5:\"color\";s:7:\"#000000\";s:9:\"parent_id\";N;s:5:\"order\";i:9;s:10:\"created_at\";s:19:\"2025-07-01 12:15:30\";s:10:\"updated_at\";s:19:\"2025-07-07 13:51:19\";s:5:\"route\";s:27:\"voyager.opening-hours.index\";s:10:\"parameters\";s:4:\"null\";}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:26;s:7:\"menu_id\";i:1;s:5:\"title\";s:8:\"Horaires\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:19:\"voyager-alarm-clock\";s:5:\"color\";s:7:\"#000000\";s:9:\"parent_id\";N;s:5:\"order\";i:9;s:10:\"created_at\";s:19:\"2025-07-01 12:15:30\";s:10:\"updated_at\";s:19:\"2025-07-07 13:51:19\";s:5:\"route\";s:27:\"voyager.opening-hours.index\";s:10:\"parameters\";s:4:\"null\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:10;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:28;s:7:\"menu_id\";i:1;s:5:\"title\";s:9:\"Templates\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:13:\"voyager-brush\";s:5:\"color\";s:7:\"#000000\";s:9:\"parent_id\";N;s:5:\"order\";i:3;s:10:\"created_at\";s:19:\"2025-07-02 15:45:46\";s:10:\"updated_at\";s:19:\"2025-07-03 11:01:11\";s:5:\"route\";s:23:\"voyager.templates.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:28;s:7:\"menu_id\";i:1;s:5:\"title\";s:9:\"Templates\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:13:\"voyager-brush\";s:5:\"color\";s:7:\"#000000\";s:9:\"parent_id\";N;s:5:\"order\";i:3;s:10:\"created_at\";s:19:\"2025-07-02 15:45:46\";s:10:\"updated_at\";s:19:\"2025-07-03 11:01:11\";s:5:\"route\";s:23:\"voyager.templates.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:11;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:29;s:7:\"menu_id\";i:1;s:5:\"title\";s:18:\"Salle d\'exposition\";s:3:\"url\";s:9:\"templates\";s:6:\"target\";s:6:\"_blank\";s:10:\"icon_class\";s:14:\"voyager-photos\";s:5:\"color\";s:7:\"#000000\";s:9:\"parent_id\";N;s:5:\"order\";i:2;s:10:\"created_at\";s:19:\"2025-07-03 11:01:06\";s:10:\"updated_at\";s:19:\"2025-07-03 11:02:47\";s:5:\"route\";N;s:10:\"parameters\";s:0:\"\";}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:29;s:7:\"menu_id\";i:1;s:5:\"title\";s:18:\"Salle d\'exposition\";s:3:\"url\";s:9:\"templates\";s:6:\"target\";s:6:\"_blank\";s:10:\"icon_class\";s:14:\"voyager-photos\";s:5:\"color\";s:7:\"#000000\";s:9:\"parent_id\";N;s:5:\"order\";i:2;s:10:\"created_at\";s:19:\"2025-07-03 11:01:06\";s:10:\"updated_at\";s:19:\"2025-07-03 11:02:47\";s:5:\"route\";N;s:10:\"parameters\";s:0:\"\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:12;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:31;s:7:\"menu_id\";i:1;s:5:\"title\";s:13:\"Page Sections\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:14:\"voyager-puzzle\";s:5:\"color\";s:7:\"#000000\";s:9:\"parent_id\";N;s:5:\"order\";i:5;s:10:\"created_at\";s:19:\"2025-07-04 20:50:45\";s:10:\"updated_at\";s:19:\"2025-07-07 13:51:19\";s:5:\"route\";s:27:\"voyager.page-sections.index\";s:10:\"parameters\";s:4:\"null\";}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:31;s:7:\"menu_id\";i:1;s:5:\"title\";s:13:\"Page Sections\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:14:\"voyager-puzzle\";s:5:\"color\";s:7:\"#000000\";s:9:\"parent_id\";N;s:5:\"order\";i:5;s:10:\"created_at\";s:19:\"2025-07-04 20:50:45\";s:10:\"updated_at\";s:19:\"2025-07-07 13:51:19\";s:5:\"route\";s:27:\"voyager.page-sections.index\";s:10:\"parameters\";s:4:\"null\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:13;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:32;s:7:\"menu_id\";i:1;s:5:\"title\";s:15:\"Favourite Items\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:17:\"voyager-thumbs-up\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:6;s:10:\"created_at\";s:19:\"2025-07-07 13:50:33\";s:10:\"updated_at\";s:19:\"2025-07-07 13:51:19\";s:5:\"route\";s:29:\"voyager.favourite-items.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:32;s:7:\"menu_id\";i:1;s:5:\"title\";s:15:\"Favourite Items\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:17:\"voyager-thumbs-up\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:6;s:10:\"created_at\";s:19:\"2025-07-07 13:50:33\";s:10:\"updated_at\";s:19:\"2025-07-07 13:51:19\";s:5:\"route\";s:29:\"voyager.favourite-items.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}', 1754488281);

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
(116, 15, 'service_belongsto_group_relationship', 'relationship', 'Groupe', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Group\",\"table\":\"groups\",\"type\":\"belongsTo\",\"column\":\"group_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"cache\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(123, 19, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(124, 19, 'day', 'text', 'Jour', 1, 1, 1, 1, 1, 1, '{}', 2),
(125, 19, 'time', 'text', 'Horaire', 1, 1, 1, 1, 1, 1, '{}', 3),
(126, 19, 'order_display', 'text', 'Affichage d\'ordre', 1, 0, 0, 0, 0, 0, '{}', 4),
(127, 19, 'created_at', 'timestamp', 'Créé à', 0, 0, 0, 0, 0, 0, '{}', 5),
(128, 19, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(129, 20, 'id', 'number', 'Id', 1, 1, 0, 0, 0, 0, '{}', 1),
(130, 20, 'code', 'text', 'Code', 1, 1, 1, 1, 1, 1, '{}', 2),
(131, 20, 'related_code', 'text', 'Code associé', 0, 0, 1, 1, 1, 1, '{}', 3),
(132, 20, 'name', 'text', 'Nom', 1, 1, 1, 1, 1, 1, '{}', 4),
(133, 20, 'description', 'text_area', 'Description', 0, 0, 1, 1, 1, 1, '{}', 5),
(134, 20, 'one_page_flg', 'select_dropdown', 'Site', 1, 1, 1, 1, 1, 1, '{\"default\":\"1\",\"options\":{\"0\":\"Pages multiples\",\"1\":\"Page unique\"}}', 6),
(135, 20, 'category', 'text', 'Catégorie', 0, 1, 1, 1, 1, 1, '{}', 7),
(136, 20, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 8),
(137, 20, 'order_display', 'text', 'Affichage d\'ordre', 1, 0, 0, 0, 0, 0, '{}', 9),
(138, 20, 'created_at', 'timestamp', 'Créé à', 0, 0, 1, 0, 0, 0, '{}', 10),
(139, 20, 'updated_at', 'timestamp', 'Mis à jour', 0, 0, 1, 0, 0, 0, '{}', 11),
(140, 21, 'id', 'number', 'Id', 1, 1, 0, 0, 0, 0, '{}', 1),
(141, 21, 'section_code', 'text', 'Section', 1, 1, 1, 1, 1, 1, '{}', 2),
(142, 21, 'template_code', 'text', 'Template', 0, 1, 1, 1, 1, 1, '{}', 3),
(143, 21, 'name', 'text', 'Nom', 1, 1, 1, 1, 1, 1, '{}', 4),
(144, 21, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 5),
(145, 21, 'sub_title', 'text', 'Sub Title', 0, 1, 1, 1, 1, 1, '{}', 6),
(146, 21, 'content', 'text_area', 'Content', 0, 1, 1, 1, 1, 1, '{}', 7),
(147, 21, 'content_2', 'text_area', 'Content 2', 0, 1, 1, 1, 1, 1, '{}', 8),
(148, 21, 'content_3', 'text_area', 'Content 3', 0, 1, 1, 1, 1, 1, '{}', 9),
(149, 21, 'content_4', 'text_area', 'Content 4', 0, 1, 1, 1, 1, 1, '{}', 10),
(150, 21, 'background', 'image', 'Background', 0, 1, 1, 1, 1, 1, '{}', 11),
(151, 21, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 12),
(152, 21, 'images', 'multiple_images', 'Images', 0, 1, 1, 1, 1, 1, '{}', 13),
(153, 21, 'order_display', 'text', 'Affichage d\'ordre', 1, 0, 0, 0, 0, 0, '{}', 14),
(154, 21, 'created_at', 'timestamp', 'Créé à', 0, 0, 1, 0, 0, 0, '{}', 15),
(155, 21, 'updated_at', 'timestamp', 'Mis à jour', 0, 0, 1, 0, 0, 0, '{}', 16),
(156, 26, 'id', 'text', 'Id', 1, 0, 1, 0, 0, 0, '{}', 1),
(157, 26, 'section_code', 'text', 'Section Code', 1, 1, 1, 1, 1, 1, '{}', 2),
(158, 26, 'template_code', 'text', 'Template Code', 0, 1, 1, 1, 1, 1, '{}', 3),
(159, 26, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 4),
(160, 26, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 5),
(161, 26, 'sub_title', 'text', 'Sub Title', 0, 0, 1, 1, 1, 1, '{}', 6),
(162, 26, 'content', 'rich_text_box', 'Content', 0, 0, 1, 1, 1, 1, '{}', 7),
(163, 26, 'content_2', 'text_area', 'Content 2', 0, 0, 1, 1, 1, 1, '{}', 8),
(164, 26, 'content_3', 'text_area', 'Content 3', 0, 0, 1, 1, 1, 1, '{}', 9),
(165, 26, 'content_4', 'text_area', 'Content 4', 0, 0, 1, 1, 1, 1, '{}', 10),
(166, 26, 'background', 'image', 'Background', 0, 0, 1, 1, 1, 1, '{}', 11),
(167, 26, 'image', 'image', 'Image', 0, 0, 1, 1, 1, 1, '{}', 12),
(168, 26, 'images', 'multiple_images', 'Images', 0, 0, 1, 1, 1, 1, '{}', 13),
(169, 26, 'order_display', 'text', 'Order Display', 1, 0, 0, 0, 0, 0, '{}', 14),
(170, 26, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '{}', 15),
(171, 26, 'updated_at', 'timestamp', 'Updated At', 0, 0, 1, 0, 0, 0, '{}', 16),
(172, 27, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
(173, 27, 'template_code', 'text', 'Template Code', 0, 1, 1, 1, 1, 1, '{}', 2),
(174, 27, 'name', 'text', 'Nom', 1, 1, 1, 1, 1, 1, '{}', 3),
(175, 27, 'title', 'text', 'Titre', 0, 0, 1, 1, 1, 1, '{}', 4),
(176, 27, 'sub_title', 'text', 'Sous-titre', 0, 0, 1, 1, 1, 1, '{}', 5),
(177, 27, 'content', 'text_area', 'Contenu', 0, 0, 1, 1, 1, 1, '{}', 6),
(178, 27, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 7),
(179, 27, 'background', 'image', 'Image d\'arrière-plan', 0, 0, 1, 1, 1, 1, '{}', 8),
(180, 27, 'order_display', 'number', 'Affichage d\'ordre', 1, 1, 1, 1, 1, 0, '{}', 9),
(181, 27, 'created_at', 'timestamp', 'Créé à', 0, 0, 1, 0, 0, 0, '{}', 10),
(182, 27, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11);

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
(15, 'services', 'services', 'Service', 'Services', 'voyager-pie-chart', 'App\\Models\\Service', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order_display\",\"order_display_column\":\"title\",\"order_direction\":\"asc\",\"default_search_key\":\"title\",\"scope\":null}', '2025-06-02 14:24:01', '2025-06-03 11:11:37'),
(19, 'opening_hours', 'opening-hours', 'Horaire d\'ouverture', 'Horaires d\'ouverture', 'voyager-alarm-clock', 'App\\Models\\OpeningHour', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order_display\",\"order_display_column\":\"day\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2025-07-01 10:15:30', '2025-07-01 10:19:08'),
(20, 'templates', 'templates', 'Template', 'Templates', 'voyager-brush', 'App\\Models\\Template', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order_display\",\"order_display_column\":\"code\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2025-07-02 13:41:19', '2025-07-03 12:18:52'),
(21, 'sections', 'sections', 'Section', 'Sections', 'voyager-puzzle', 'App\\Models\\Section', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2025-07-04 18:39:11', '2025-07-04 18:39:11'),
(26, 'page_sections', 'page-sections', 'Page Section', 'Page Sections', NULL, 'App\\Models\\PageSection', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2025-07-04 18:50:45', '2025-07-04 18:56:10'),
(27, 'favourite_items', 'favourite-items', 'Favourite Item', 'Favourite Items', 'voyager-thumbs-up', 'App\\Models\\FavouriteItem', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order_display\",\"order_display_column\":\"name\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2025-07-07 11:50:33', '2025-07-07 12:03:33');

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
-- Cấu trúc bảng cho bảng `favourite_items`
--

CREATE TABLE `favourite_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `template_code` varchar(10) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `sub_title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `background` varchar(255) DEFAULT NULL,
  `order_display` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `favourite_items`
--

INSERT INTO `favourite_items` (`id`, `template_code`, `name`, `title`, `sub_title`, `content`, `image`, `background`, `order_display`, `created_at`, `updated_at`) VALUES
(1, 'mp002', 'Bubble Tea', NULL, NULL, 'Bubble Tea', 'favourite-items\\July2025\\gHBFV18rB2vwVdno9JNT.jpg', NULL, 1, '2025-07-07 12:02:14', '2025-07-07 12:02:14'),
(2, 'mp002', 'Milkshake', NULL, NULL, 'Milkshake', 'favourite-items\\July2025\\JqfQ4gYidzi8pjm96UDz.jpg', NULL, 2, '2025-07-07 12:04:17', '2025-07-07 12:04:17'),
(3, 'mp002', 'Soda', NULL, NULL, 'Soda', 'favourite-items\\July2025\\xJGAJrkIpO6CaX15lWaQ.jpg', NULL, 3, '2025-07-07 12:04:37', '2025-07-07 12:04:37'),
(4, 'mp002', 'Coffee', NULL, NULL, 'Coffee', 'favourite-items\\July2025\\hTm5xiLoj0XAH8H6Wp42.jpg', NULL, 4, '2025-07-07 12:04:55', '2025-07-07 12:04:55');

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
(1, 'admin', '2025-05-31 07:08:20', '2025-07-02 13:44:47');

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
(2, 1, 'Médiathèque', '', '_self', 'voyager-images', NULL, NULL, 10, '2025-05-31 07:08:20', '2025-07-07 11:51:19', 'voyager.media.index', NULL),
(3, 1, 'Utilisateurs', '', '_self', 'voyager-person', NULL, NULL, 11, '2025-05-31 07:08:20', '2025-07-07 11:51:19', 'voyager.users.index', NULL),
(4, 1, 'Rôles', '', '_self', 'voyager-lock', NULL, NULL, 12, '2025-05-31 07:08:20', '2025-07-07 11:51:19', 'voyager.roles.index', NULL),
(5, 1, 'Outils', '', '_self', 'voyager-tools', NULL, NULL, 14, '2025-05-31 07:08:20', '2025-07-07 11:51:19', NULL, NULL),
(6, 1, 'Créateur de menus', '', '_self', 'voyager-list', NULL, 5, 1, '2025-05-31 07:08:20', '2025-06-02 13:28:20', 'voyager.menus.index', NULL),
(7, 1, 'Base de données', '', '_self', 'voyager-data', NULL, 5, 2, '2025-05-31 07:08:20', '2025-06-02 13:28:20', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', '#000000', 5, 4, '2025-05-31 07:08:20', '2025-06-02 14:23:34', 'voyager.compass.index', 'null'),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 3, '2025-05-31 07:08:20', '2025-06-02 14:23:34', 'voyager.bread.index', NULL),
(10, 1, 'Paramètres', '', '_self', 'voyager-settings', NULL, NULL, 13, '2025-05-31 07:08:20', '2025-07-07 11:51:19', 'voyager.settings.index', NULL),
(22, 1, 'Groupes', '', '_self', 'voyager-list', '#000000', NULL, 8, '2025-06-03 10:13:32', '2025-07-07 11:51:19', 'voyager.groups.index', 'null'),
(23, 1, 'Services', '', '_self', 'voyager-pie-chart', '#000000', NULL, 7, '2025-06-03 10:14:22', '2025-07-07 11:51:19', 'voyager.services.index', NULL),
(25, 1, 'Pages', '', '_self', 'voyager-browser', '#000000', NULL, 4, '2025-07-01 07:37:27', '2025-07-03 09:01:11', 'voyager.pages.index', 'null'),
(26, 1, 'Horaires', '', '_self', 'voyager-alarm-clock', '#000000', NULL, 9, '2025-07-01 10:15:30', '2025-07-07 11:51:19', 'voyager.opening-hours.index', 'null'),
(28, 1, 'Templates', '', '_self', 'voyager-brush', '#000000', NULL, 3, '2025-07-02 13:45:46', '2025-07-03 09:01:11', 'voyager.templates.index', NULL),
(29, 1, 'Salle d\'exposition', 'templates', '_blank', 'voyager-photos', '#000000', NULL, 2, '2025-07-03 09:01:06', '2025-07-03 09:02:47', NULL, ''),
(31, 1, 'Page Sections', '', '_self', 'voyager-puzzle', '#000000', NULL, 5, '2025-07-04 18:50:45', '2025-07-07 11:51:19', 'voyager.page-sections.index', 'null'),
(32, 1, 'Favourite Items', '', '_self', 'voyager-thumbs-up', NULL, NULL, 6, '2025-07-07 11:50:33', '2025-07-07 11:51:19', 'voyager.favourite-items.index', NULL);

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
(33, '2025_06_04_201649_create_galleries_table', 6),
(34, '2025_07_01_114640_create_opening_hours_table', 7),
(36, '2025_07_01_133122_create_templates_table', 8),
(37, '2025_07_04_193002_create_sections_table', 9),
(38, '2025_07_04_204303_create_page_sections_table', 10),
(39, '2025_07_07_134504_create_favourite_items_table', 11);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `opening_hours`
--

CREATE TABLE `opening_hours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `day` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `order_display` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `opening_hours`
--

INSERT INTO `opening_hours` (`id`, `day`, `time`, `order_display`, `created_at`, `updated_at`) VALUES
(1, 'Lundi - Jeudi', '09:00 - 18:00', 1, '2025-07-01 10:17:55', '2025-07-01 10:18:29'),
(2, 'Vendredi', '08:00 - 20:00', 2, '2025-07-01 10:18:10', '2025-07-01 10:18:30'),
(3, 'Samedi', '08:00 - 17:00', 3, '2025-07-01 10:18:25', '2025-07-01 10:18:31');

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

--
-- Đang đổ dữ liệu cho bảng `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, 'Politique de confidentialité', 'Politique de confidentialité', '<h3>1 &ndash; Edition du site</h3>\r\n<p>En vertu de <a href=\"https://www.legifrance.gouv.fr/loda/id/JORFTEXT000000801164#LEGIARTI000042038977\" target=\"_blank\" rel=\"noopener\">l&rsquo;article 6 de la loi n&deg; 2004-575 du 21 juin 2004</a> pour la confiance dans l&rsquo;&eacute;conomie num&eacute;rique, il est pr&eacute;cis&eacute; aux utilisateurs du site internet [link web] l&rsquo;identit&eacute; des diff&eacute;rents intervenants dans le cadre de sa r&eacute;alisation et de son suivi:</p>\r\n<p style=\"padding-left: 40px;\"><strong>Propri&eacute;taire du site :</strong> [web owner info: name - email - phone - address].</p>\r\n<p style=\"padding-left: 40px;\"><strong>Identification de l&rsquo;entreprise : </strong>[company info: name - capital - siren - address]</p>\r\n<p style=\"padding-left: 40px;\"><strong>Directeur de la publication :</strong> [directeur info].</p>\r\n<p style=\"padding-left: 40px;\"><strong>H&eacute;bergeur :</strong> IONOS SARL -&nbsp;7, place de la Gare, BP 70109, 57200 Sarreguemines Cedex, France</p>\r\n<p style=\"padding-left: 40px;\"><strong>D&eacute;l&eacute;gu&eacute; &agrave; la protection des donn&eacute;es :</strong> [contact email]</p>\r\n<p>&nbsp;</p>\r\n<h3>2. Utilisation des cookies</h3>\r\n<p>Nous vous informons que notre site n&rsquo;utilise aucun cookie de suivi, de publicit&eacute; ou d&rsquo;analyse. Aucun cookie n&rsquo;est stock&eacute; sur votre appareil &agrave; des fins de collecte d&rsquo;informations personnelles ou de suivi de navigation.</p>\r\n<p>Seuls des cookies strictement n&eacute;cessaires au bon fonctionnement technique du site peuvent &ecirc;tre utilis&eacute;s temporairement (par exemple, pour maintenir une session utilisateur active si vous vous connectez &agrave; un espace s&eacute;curis&eacute;). Ces cookies ne collectent aucune information personnelle et ne sont pas utilis&eacute;s &agrave; des fins commerciales.</p>\r\n<p>&nbsp;</p>\r\n<h3>3. Consentement</h3>\r\n<p>&Eacute;tant donn&eacute; que notre site n&rsquo;utilise pas de cookies non essentiels, aucun bandeau de consentement aux cookies n&rsquo;est n&eacute;cessaire conform&eacute;ment &agrave; la r&eacute;glementation en vigueur (RGPD et directive ePrivacy).</p>\r\n<p>&nbsp;</p>\r\n<h3>4. Contact</h3>\r\n<p>Pour toute question concernant notre politique de cookies, vous pouvez nous contacter &agrave; l\'adresse suivante: <a title=\"Licortech\" href=\"mailto:contact@licortech.com\" target=\"_blank\" rel=\"noopener\">contact@licortech.com</a></p>', 'pages\\July2025\\hWEBWv2AM0ZfYHEHvq2y.png', 'privacy-policy', 'Politique de confidentialité', 'Politique de confidentialité', 'ACTIVE', '2025-07-01 07:48:12', '2025-07-01 08:03:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `page_sections`
--

CREATE TABLE `page_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `section_code` varchar(255) NOT NULL,
  `template_code` varchar(10) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `sub_title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `content_2` text DEFAULT NULL,
  `content_3` text DEFAULT NULL,
  `content_4` text DEFAULT NULL,
  `background` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  `order_display` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `page_sections`
--

INSERT INTO `page_sections` (`id`, `section_code`, `template_code`, `name`, `title`, `sub_title`, `content`, `content_2`, `content_3`, `content_4`, `background`, `image`, `images`, `order_display`, `created_at`, `updated_at`) VALUES
(1, 'foodily.home.banner', 'mp002', 'Home Banner', '<span class=\"first-letter\">Heathly</span><span class=\"second-letter\">Smoothie</span>', 'Consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.', NULL, NULL, NULL, NULL, NULL, 'page-sections\\July2025\\8msj2NsFcv8aaMK6l6SU.png', NULL, 0, '2025-07-04 18:54:54', '2025-07-04 19:54:58'),
(2, 'foodily.home.banner', 'mp002', 'Home Banner', '<span class=\"first-letter\">Heathly</span><span class=\"second-letter\">Smoothie</span>', 'Consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.', NULL, NULL, NULL, NULL, NULL, 'page-sections\\July2025\\PDbBBHn31AvWqeLjyS8d.png', NULL, 0, '2025-07-04 19:58:18', '2025-07-04 19:58:18'),
(3, 'foodily.home.banner', 'mp002', 'Home Banner', '<span class=\"first-letter\">Heathly</span><span class=\"second-letter\">Smoothie</span>', 'Consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.', NULL, NULL, NULL, NULL, NULL, 'page-sections\\July2025\\JUVauLygMuuyrCnRXjnT.png', NULL, 0, '2025-07-04 19:58:45', '2025-07-04 19:58:45'),
(4, 'foodily.home.about', 'mp002', 'Home About', 'Fresh Fruit <span class=\"theme_color\">Juices</span>', 'Drink for Health', '<p>Us percipit urbanitas referrentur ea. Mei at numquam molestiae intellegam. Ansed dictas accumsan. Nam sint atqui voluptatibus an, pro ne malis semper perpetua. Nam sint atqui voluptatibus an, pro ne malis semper perpetua.</p>', NULL, NULL, NULL, NULL, 'page-sections\\July2025\\WnhKvZwpvpAXt4XHKmsl.png', NULL, 0, '2025-07-07 11:01:10', '2025-07-07 11:01:10'),
(5, 'foodily.home.favourite', 'mp002', 'Home Favourite', 'Our Signature', 'Best for You', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2025-07-07 12:12:05', '2025-07-07 12:12:05'),
(6, 'foodily.menu.official', 'mp002', 'Menu', 'Menu <span>Principal</span>', NULL, NULL, NULL, NULL, NULL, NULL, 'page-sections\\July2025\\U000CehopaLfIFWRXxCn.jpg', NULL, 0, '2025-07-08 23:42:09', '2025-07-08 23:45:02');

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
(75, 'delete_services', 'services', '2025-06-02 14:24:01', '2025-06-02 14:24:01'),
(81, 'browse_opening_hours', 'opening_hours', '2025-07-01 10:15:30', '2025-07-01 10:15:30'),
(82, 'read_opening_hours', 'opening_hours', '2025-07-01 10:15:30', '2025-07-01 10:15:30'),
(83, 'edit_opening_hours', 'opening_hours', '2025-07-01 10:15:30', '2025-07-01 10:15:30'),
(84, 'add_opening_hours', 'opening_hours', '2025-07-01 10:15:30', '2025-07-01 10:15:30'),
(85, 'delete_opening_hours', 'opening_hours', '2025-07-01 10:15:30', '2025-07-01 10:15:30'),
(86, 'browse_templates', 'templates', '2025-07-02 13:41:19', '2025-07-02 13:41:19'),
(87, 'read_templates', 'templates', '2025-07-02 13:41:19', '2025-07-02 13:41:19'),
(88, 'edit_templates', 'templates', '2025-07-02 13:41:19', '2025-07-02 13:41:19'),
(89, 'add_templates', 'templates', '2025-07-02 13:41:19', '2025-07-02 13:41:19'),
(90, 'delete_templates', 'templates', '2025-07-02 13:41:19', '2025-07-02 13:41:19'),
(91, 'browse_sections', 'sections', '2025-07-04 18:39:12', '2025-07-04 18:39:12'),
(92, 'read_sections', 'sections', '2025-07-04 18:39:12', '2025-07-04 18:39:12'),
(93, 'edit_sections', 'sections', '2025-07-04 18:39:12', '2025-07-04 18:39:12'),
(94, 'add_sections', 'sections', '2025-07-04 18:39:12', '2025-07-04 18:39:12'),
(95, 'delete_sections', 'sections', '2025-07-04 18:39:12', '2025-07-04 18:39:12'),
(96, 'browse_page_sections', 'page_sections', '2025-07-04 18:50:45', '2025-07-04 18:50:45'),
(97, 'read_page_sections', 'page_sections', '2025-07-04 18:50:45', '2025-07-04 18:50:45'),
(98, 'edit_page_sections', 'page_sections', '2025-07-04 18:50:45', '2025-07-04 18:50:45'),
(99, 'add_page_sections', 'page_sections', '2025-07-04 18:50:45', '2025-07-04 18:50:45'),
(100, 'delete_page_sections', 'page_sections', '2025-07-04 18:50:45', '2025-07-04 18:50:45'),
(101, 'browse_favourite_items', 'favourite_items', '2025-07-07 11:50:33', '2025-07-07 11:50:33'),
(102, 'read_favourite_items', 'favourite_items', '2025-07-07 11:50:33', '2025-07-07 11:50:33'),
(103, 'edit_favourite_items', 'favourite_items', '2025-07-07 11:50:33', '2025-07-07 11:50:33'),
(104, 'add_favourite_items', 'favourite_items', '2025-07-07 11:50:33', '2025-07-07 11:50:33'),
(105, 'delete_favourite_items', 'favourite_items', '2025-07-07 11:50:33', '2025-07-07 11:50:33');

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
(75, 2),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1);

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
(2, 2, 'Couleur semi-permanente', 'Pose Capsule avec de la résine', 60, 2, 45.00, '2025-06-03 11:04:27', '2025-06-30 14:44:26'),
(3, 1, 'Baby-Boomer', NULL, 60, 3, 45.00, '2025-06-03 11:08:49', '2025-06-03 11:08:49'),
(4, 1, 'Baby-Boomer couleur', NULL, 60, 4, 48.00, '2025-06-03 11:09:13', '2025-06-03 11:09:13'),
(9, 2, 'Baby-Boomer', NULL, 45, 9, 38.00, '2025-06-03 11:14:06', '2025-06-03 11:14:06'),
(10, 2, 'Baby-Boomer couleur', NULL, 45, 10, 40.00, '2025-06-03 11:14:32', '2025-06-03 11:14:32'),
(13, 3, 'Bain des pied', 'Nettoyage complet - homme/femme', 30, 13, 35.00, '2025-06-03 11:16:35', '2025-06-03 11:16:35'),
(15, 3, 'Pied - French', 'semi-permanente', 30, 15, 30.00, '2025-06-03 11:18:50', '2025-06-03 11:18:50'),
(20, 3, 'Pieds - Remplissage', 'Remplissage résine avec couleur ou French', 45, 20, 40.00, '2025-06-03 11:22:20', '2025-06-03 11:22:20'),
(21, 3, 'Pieds - Bain', 'pose couleur semi-permanente', 60, 21, 55.00, '2025-06-03 11:23:26', '2025-06-03 11:23:26'),
(23, 4, 'Pose du vernis', 'semi-permanente', 30, 23, 25.00, '2025-06-03 11:24:42', '2025-06-03 11:24:42'),
(24, 4, 'French en vernis', 'semi-permanente', 30, 24, 30.00, '2025-06-03 11:25:11', '2025-06-03 11:25:11'),
(25, 4, 'Manucure simple', 'Retirer les cuticules', 20, 25, 20.00, '2025-06-03 11:26:39', '2025-06-03 11:26:39');

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
('nQq5lEKgJG2xx1pEfGRYTsZoTLJjdyfK376MkXAQ', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiS0VBM2dhampYeDNwMW5TUERrUzZnM3Z0QXo2Nzg1S1lkcVloSWZPRyI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQ2OiJodHRwOi8vbG9jYWxob3N0L2xjdC10ZW1wbGF0ZS1kZW1vL3B1YmxpYy9ob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjEzOiJ0ZW1wbGF0ZV9jb2RlIjtzOjU6Im9wMDAxIjtzOjIyOiJQSFBERUJVR0JBUl9TVEFDS19EQVRBIjthOjA6e319', 1752027278),
('piApGn0T0EDmd6CKNCSewegyt6vOdqXcxJPSgaOV', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiSUpFYkx5WEpiWHRCRFVkeFc1TktkSlZEZ1JyUkJ6MUxQZ01MUm9UViI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQ2OiJodHRwOi8vbG9jYWxob3N0L2xjdC10ZW1wbGF0ZS1kZW1vL3B1YmxpYy9ob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjEzOiJ0ZW1wbGF0ZV9jb2RlIjtzOjU6Im1wMDAyIjtzOjIyOiJQSFBERUJVR0JBUl9TVEFDS19EQVRBIjthOjA6e319', 1751906387);

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
(1, 'site.title', 'Titre du site', 'Kalend Template', '', 'text', 1, 'Site'),
(2, 'site.description', 'Description du site', 'Il s\'agit d\'un modèle de site Web créé et développé par Kalend', '', 'text', 2, 'Site'),
(6, 'admin.title', 'Titre de l\'espace admin', 'Licortech CMS', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Description de l\'espace admin', 'Bienvenue dans Licortech CMS.', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Chargement de l\'espace admin', '', '', 'image', 3, 'Admin'),
(14, 'site.phone', 'Phone', '+33 3 88 88 88 88', NULL, 'text', 11, 'Site'),
(15, 'site.facebook', 'Facebook', NULL, NULL, 'text', 15, 'Site'),
(16, 'site.planity', 'Planity', 'https://www.planity.com', NULL, 'text', 32, 'Site'),
(17, 'site.address', 'Adresse', 'Pl. de l\'Homme de Fer, 67000 Strasbourg', NULL, 'text', 9, 'Site'),
(19, 'site.instagram', 'Instagram', NULL, NULL, 'text', 19, 'Site'),
(20, 'site.map', 'Plan iframe', '<p><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2508.760552034926!2d7.7417642762890395!3d48.58392867129626!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4796c84dd315e797%3A0x89890a5749defab6!2sPl.%20de%20l\'Homme%20de%20Fer%2C%2067000%20Strasbourg!5e1!3m2!1sen!2sfr!4v1751286979066!5m2!1sen!2sfr\" width=\"600\" height=\"450\" allowfullscreen=\"allowfullscreen\" loading=\"lazy\"></iframe></p>', NULL, 'rich_text_box', 12, 'Site'),
(26, 'site.copyright', 'Copyright', '<p>&copy; 2025&nbsp;<a href=\"https://licortech.com\" target=\"_blank\" rel=\"noopener\">Licortech</a>.</p>', NULL, 'rich_text_box', 13, 'Site'),
(28, 'salon.home_banner', 'Home Banner', 'settings\\June2025\\fOBFD2aavXfcCycdh03P.png', NULL, 'image', 24, 'Salon'),
(29, 'salon.service_banner', 'Service Banner', 'settings\\June2025\\sQvxDgtgBLCDEYqjGHz7.jpg', NULL, 'image', 25, 'Salon'),
(30, 'salon.promotion_section', 'Promotion Section', '<section id=\"banner-3\" class=\"bg-fixed banner-section division\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-7 col-lg-6\">\r\n<div class=\"banner-3-txt text-center\"><!-- Title -->\r\n<h5 class=\"h5-md\">Profitez des r&eacute;ductions &eacute;tudiantes <small>(sur pr&eacute;sentation d\'attestation)</small></h5>\r\n<h2>- 5&euro;</h2>\r\n<h4 class=\"h4-xs\">avec prestation minimun de 20&euro;</h4>\r\n<a class=\"btn violet-red--btn tra-black--hover\" href=\"https://www.planity.com\" target=\"_blank\" rel=\"noopener\">Rendez-vous</a></div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>', NULL, 'rich_text_box', 27, 'Salon'),
(31, 'salon.logo', 'Logo du site', 'settings\\June2025\\DPHuiP231GBZbzvEv368.png', NULL, 'image', 21, 'Salon'),
(32, 'salon.logo_secondary', 'Logo du site (secondary)', 'settings\\June2025\\z5Ke8eNmVec139jktgXn.png', NULL, 'image', 22, 'Salon'),
(33, 'salon.icon', 'Icon du site', 'settings\\June2025\\ydLl4dF5beoPbRSJEVYX.png', NULL, 'image', 20, 'Salon'),
(34, 'salon.promotion_banner', 'Promotion Banner', 'settings\\June2025\\diOChJTqgNDbye3DFNXY.jpg', NULL, 'image', 26, 'Salon'),
(35, 'salon.store', 'Boutique', 'La Notté', NULL, 'text', 23, 'Salon'),
(36, 'salon.about_banner', 'About Banner', 'settings\\June2025\\R17chhLf5conZtKLUgz6.jpg', NULL, 'image', 28, 'Salon'),
(37, 'salon.error_page_banner', 'Error Page Banner', 'settings\\June2025\\OW77i0OV80QpSvolfdM3.jpg', NULL, 'image', 30, 'Salon'),
(38, 'salon.price_banner', 'Price Banner', 'settings\\June2025\\dc4CxfaggzZ76hK6Y2IO.png', NULL, 'image', 29, 'Salon'),
(39, 'foodily.logo', 'Logo du site', 'settings\\July2025\\roAT9mqjjml8gzJNN9nd.png', NULL, 'image', 2, 'Foodily'),
(40, 'foodily.logo_secondary', 'Logo du site (secondary)', 'settings\\July2025\\4RMU9AmZV97hdzcE7dg9.png', NULL, 'image', 3, 'Foodily'),
(41, 'foodily.store', 'Boutique', 'Foodily', NULL, 'text', 5, 'Foodily'),
(42, 'foodily.home_banner', 'Home Banner', NULL, NULL, 'image', 6, 'Foodily'),
(43, 'foodily.about_banner', 'About Banner', NULL, NULL, 'image', 31, 'Foodily'),
(44, 'foodily.error_page_banner', 'Error Page Banner', NULL, NULL, 'image', 35, 'Foodily'),
(45, 'foodily.icon', 'Icon du site', 'settings\\July2025\\NHxS3t77dSGceNH0cfJQ.png', NULL, 'image', 1, 'Foodily'),
(47, 'site.deliveroo', 'Deliveroo', NULL, NULL, 'text', 33, 'Site'),
(48, 'site.mail', 'Email', 'contact@licortech.com', NULL, 'text', 10, 'Site'),
(49, 'foodily.preloader', 'Chargement', 'settings\\July2025\\rZvAQJ6cOez1kEOHwV0L.png', NULL, 'image', 4, 'Foodily'),
(50, 'foodily.menu_banner', 'Menu Banner', 'settings\\July2025\\EJ4CO5IYKO6B82hsrOnM.jpg', NULL, 'image', 34, 'Foodily');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `templates`
--

CREATE TABLE `templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(7) NOT NULL,
  `related_code` varchar(7) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `one_page_flg` tinyint(1) NOT NULL DEFAULT 1,
  `category` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `order_display` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `templates`
--

INSERT INTO `templates` (`id`, `code`, `related_code`, `name`, `description`, `one_page_flg`, `category`, `image`, `order_display`, `created_at`, `updated_at`) VALUES
(1, 'op001', NULL, 'La Notté', 'Salon de beauté', 1, 'Nail, beauty', 'templates\\July2025\\jlGeL24e1eSRuCDqQJxM.png', 1, '2025-07-02 13:57:45', '2025-07-04 17:26:51'),
(2, 'mp002', NULL, 'Foodily', 'Bubble tea shop', 0, 'Food, bubble tea', 'templates\\July2025\\7usUD0aby9aaNWERIamP.png', 2, '2025-07-03 12:17:48', '2025-07-03 12:56:34');

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
(1, 1, 'Admin', 'super@licortech.com', 'users\\May2025\\JHfHgGnBfIj24Nc7uyvB.jpg', NULL, '$2y$12$JWPWMlzjXCGUvdiTBaBmIOG/w9dJ14pCqUuXjCEc9g3jzQfTNeqhG', 'Ce3dOUzvirwEXmTlZ6mENePHwaJldQrRuFs9xUtizuw80VlAOTq2565UqGcw', '{\"locale\":\"fr\"}', '2025-05-31 07:08:20', '2025-05-31 19:52:50'),
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
-- Chỉ mục cho bảng `favourite_items`
--
ALTER TABLE `favourite_items`
  ADD PRIMARY KEY (`id`);

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
-- Chỉ mục cho bảng `opening_hours`
--
ALTER TABLE `opening_hours`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `page_sections`
--
ALTER TABLE `page_sections`
  ADD PRIMARY KEY (`id`);

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
-- Chỉ mục cho bảng `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `templates_code_index` (`code`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT cho bảng `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `favourite_items`
--
ALTER TABLE `favourite_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `opening_hours`
--
ALTER TABLE `opening_hours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `page_sections`
--
ALTER TABLE `page_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `templates`
--
ALTER TABLE `templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
