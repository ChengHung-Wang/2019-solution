-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- 생성 시간: 20-08-14 06:56
-- 서버 버전: 10.4.13-MariaDB
-- PHP 버전: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `200813_cms_module`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `wp_aiowps_events`
--

CREATE TABLE `wp_aiowps_events` (
  `id` bigint(20) NOT NULL,
  `event_type` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `event_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_or_host` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 테이블 구조 `wp_aiowps_failed_logins`
--

CREATE TABLE `wp_aiowps_failed_logins` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_login` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_login_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `login_attempt_ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 테이블의 덤프 데이터 `wp_aiowps_failed_logins`
--

INSERT INTO `wp_aiowps_failed_logins` (`id`, `user_id`, `user_login`, `failed_login_date`, `login_attempt_ip`) VALUES
(1, 0, 'dmin', '2020-08-14 04:18:12', '::1');

-- --------------------------------------------------------

--
-- 테이블 구조 `wp_aiowps_global_meta`
--

CREATE TABLE `wp_aiowps_global_meta` (
  `meta_id` bigint(20) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `meta_key1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_key2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_key3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_key4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_key5` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value3` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value4` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value5` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 테이블 구조 `wp_aiowps_login_activity`
--

CREATE TABLE `wp_aiowps_login_activity` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_login` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `logout_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `login_ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `login_country` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `browser_type` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 테이블의 덤프 데이터 `wp_aiowps_login_activity`
--

INSERT INTO `wp_aiowps_login_activity` (`id`, `user_id`, `user_login`, `login_date`, `logout_date`, `login_ip`, `login_country`, `browser_type`) VALUES
(1, 1, 'admin', '2020-08-13 08:38:34', '2020-08-13 08:47:52', '::1', '', ''),
(2, 1, 'admin', '2020-08-13 08:51:02', '2020-08-13 10:27:35', '::1', '', ''),
(3, 1, 'admin', '2020-08-13 10:27:41', '2020-08-13 10:27:57', '::1', '', ''),
(4, 1, 'admin', '2020-08-13 10:45:00', '2020-08-13 10:45:09', '::1', '', ''),
(5, 1, 'admin', '2020-08-13 11:34:39', '2020-08-13 12:04:45', '::1', '', ''),
(6, 1, 'admin', '2020-08-13 12:04:53', '2020-08-13 12:05:08', '::1', '', ''),
(7, 1, 'admin', '2020-08-13 12:07:38', '2020-08-13 12:18:14', '::1', '', ''),
(8, 1, 'admin', '2020-08-13 12:18:57', '2020-08-13 12:21:05', '::1', '', ''),
(9, 1, 'admin', '2020-08-13 12:25:19', '2020-08-13 12:35:43', '::1', '', ''),
(10, 1, 'admin', '2020-08-13 12:35:49', '0000-00-00 00:00:00', '::1', '', ''),
(11, 1, 'admin', '2020-08-14 04:18:15', '0000-00-00 00:00:00', '::1', '', '');

-- --------------------------------------------------------

--
-- 테이블 구조 `wp_aiowps_login_lockdown`
--

CREATE TABLE `wp_aiowps_login_lockdown` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_login` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lockdown_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `release_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `failed_login_ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lock_reason` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `unlock_key` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 테이블 구조 `wp_aiowps_permanent_block`
--

CREATE TABLE `wp_aiowps_permanent_block` (
  `id` bigint(20) NOT NULL,
  `blocked_ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block_reason` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `country_origin` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `blocked_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `unblock` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 테이블 구조 `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 테이블 구조 `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 테이블 구조 `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 테이블 구조 `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 테이블의 덤프 데이터 `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/19_SOLN_cms_module', 'yes'),
(2, 'home', 'http://localhost/19_SOLN_cms_module', 'yes'),
(3, 'blogname', 'Kazan Museum', 'yes'),
(4, 'blogdescription', 'Discover Best Museums of City Kazan', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'admin@example.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%category%/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:51:\"all-in-one-wp-security-and-firewall/wp-security.php\";i:2;s:33:\"km-page-loader/km-page-loader.php\";i:3;s:35:\"km-social-icons/km-social-icons.php\";i:4;s:24:\"wordpress-seo/wp-seo.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'blankslate', 'yes'),
(41, 'stylesheet', 'Kazan_MuseumTour', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '47018', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1612825524', 'yes'),
(94, 'initial_db_version', '47018', 'yes'),
(95, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:37:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:19:\"primary-widget-area\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:8:{i:1597273534;a:5:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1597273538;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1597273540;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1597274456;a:1:{s:8:\"do_pings\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1597307841;a:2:{s:24:\"aiowps_hourly_cron_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}s:23:\"aiowps_daily_cron_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1597307843;a:2:{s:18:\"wpseo_onpage_fetch\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:19:\"wpseo-reindex-links\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1597359934;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, '_transient_doing_cron', '1597379835.8704380989074707031250', 'yes'),
(118, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:56:\"http://downloads.wordpress.org/release/wordpress-5.5.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:56:\"http://downloads.wordpress.org/release/wordpress-5.5.zip\";s:10:\"no_content\";s:67:\"http://downloads.wordpress.org/release/wordpress-5.5-no-content.zip\";s:11:\"new_bundled\";s:68:\"http://downloads.wordpress.org/release/wordpress-5.5-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.5\";s:7:\"version\";s:3:\"5.5\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1597364287;s:15:\"version_checked\";s:5:\"5.4.2\";s:12:\"translations\";a:0:{}}', 'no'),
(119, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1597378750;s:7:\"checked\";a:7:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.8.0\";s:19:\"akismet/akismet.php\";s:5:\"4.1.5\";s:51:\"all-in-one-wp-security-and-firewall/wp-security.php\";s:7:\"4.3.9.4\";s:9:\"hello.php\";s:5:\"1.7.2\";s:33:\"km-page-loader/km-page-loader.php\";s:10:\"2020.08.14\";s:35:\"km-social-icons/km-social-icons.php\";s:10:\"2020.08.14\";s:24:\"wordpress-seo/wp-seo.php\";s:6:\"11.2.1\";}s:8:\"response\";a:4:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"5.8.14\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"http://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.14.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.5\";s:12:\"requires_php\";s:3:\"5.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.6\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:55:\"http://downloads.wordpress.org/plugin/akismet.4.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.5\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:51:\"all-in-one-wp-security-and-firewall/wp-security.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:49:\"w.org/plugins/all-in-one-wp-security-and-firewall\";s:4:\"slug\";s:35:\"all-in-one-wp-security-and-firewall\";s:6:\"plugin\";s:51:\"all-in-one-wp-security-and-firewall/wp-security.php\";s:11:\"new_version\";s:5:\"4.4.4\";s:3:\"url\";s:66:\"https://wordpress.org/plugins/all-in-one-wp-security-and-firewall/\";s:7:\"package\";s:77:\"http://downloads.wordpress.org/plugin/all-in-one-wp-security-and-firewall.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:88:\"https://ps.w.org/all-in-one-wp-security-and-firewall/assets/icon-128x128.png?rev=1232826\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:91:\"https://ps.w.org/all-in-one-wp-security-and-firewall/assets/banner-1544x500.png?rev=1914011\";s:2:\"1x\";s:90:\"https://ps.w.org/all-in-one-wp-security-and-firewall/assets/banner-772x250.png?rev=1914013\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.5\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:4:\"14.7\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/plugin/wordpress-seo.14.7.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=1834347\";s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1843435\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=1843435\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1843435\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=1843435\";}s:6:\"tested\";s:3:\"5.5\";s:12:\"requires_php\";s:6:\"5.6.20\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:59:\"http://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(122, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1597378744;s:7:\"checked\";a:5:{s:16:\"Kazan_MuseumTour\";s:10:\"2020.08.12\";s:10:\"blankslate\";s:6:\"2019.1\";s:14:\"twentynineteen\";s:3:\"1.5\";s:15:\"twentyseventeen\";s:3:\"2.3\";s:12:\"twentytwenty\";s:3:\"1.2\";}s:8:\"response\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:59:\"http://downloads.wordpress.org/theme/twentynineteen.1.7.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/theme/twentyseventeen.2.4.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:57:\"http://downloads.wordpress.org/theme/twentytwenty.1.5.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(123, 'can_compress_scripts', '1', 'no'),
(124, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1597316742', 'no'),
(125, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 35: OpenSSL SSL_connect: Connection was reset in connection to wordpress.org:443 </p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 35: OpenSSL SSL_connect: Connection was reset in connection to planet.wordpress.org:443 </p></div>', 'no'),
(126, 'recently_activated', 'a:1:{s:41:\"wp-turbolinks-5-master/wp-turbolinks5.php\";i:1597319948;}', 'yes'),
(127, 'acf_version', '5.8.0', 'yes'),
(128, 'theme_mods_twentytwenty', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1597273600;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(129, 'current_theme', 'Kazan_MuseumTour', 'yes'),
(130, 'theme_mods_Kazan_MuseumTour', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:9:\"main-menu\";i:8;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(131, 'theme_switched', '', 'yes'),
(140, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(141, 'category_children', 'a:1:{i:1;a:6:{i:0;i:2;i:1;i:3;i:2;i:4;i:3;i:5;i:4;i:6;i:5;i:7;}}', 'yes'),
(144, 'WPLANG', '', 'yes'),
(145, 'new_admin_email', 'admin@example.com', 'yes'),
(150, 'aiowpsec_db_version', '1.9', 'yes'),
(151, 'aio_wp_security_configs', 'a:92:{s:19:\"aiowps_enable_debug\";s:0:\"\";s:36:\"aiowps_remove_wp_generator_meta_info\";s:0:\"\";s:25:\"aiowps_prevent_hotlinking\";s:0:\"\";s:28:\"aiowps_enable_login_lockdown\";s:0:\"\";s:28:\"aiowps_allow_unlock_requests\";s:0:\"\";s:25:\"aiowps_max_login_attempts\";s:1:\"3\";s:24:\"aiowps_retry_time_period\";s:1:\"5\";s:26:\"aiowps_lockout_time_length\";s:2:\"60\";s:28:\"aiowps_set_generic_login_msg\";s:0:\"\";s:26:\"aiowps_enable_email_notify\";s:0:\"\";s:20:\"aiowps_email_address\";s:17:\"admin@example.com\";s:27:\"aiowps_enable_forced_logout\";s:0:\"\";s:25:\"aiowps_logout_time_period\";s:2:\"60\";s:39:\"aiowps_enable_invalid_username_lockdown\";s:0:\"\";s:43:\"aiowps_instantly_lockout_specific_usernames\";a:0:{}s:32:\"aiowps_unlock_request_secret_key\";s:20:\"i147pfy466jof32e3a4f\";s:35:\"aiowps_lockdown_enable_whitelisting\";s:0:\"\";s:36:\"aiowps_lockdown_allowed_ip_addresses\";s:0:\"\";s:26:\"aiowps_enable_whitelisting\";s:0:\"\";s:27:\"aiowps_allowed_ip_addresses\";s:0:\"\";s:27:\"aiowps_enable_login_captcha\";s:0:\"\";s:34:\"aiowps_enable_custom_login_captcha\";s:0:\"\";s:31:\"aiowps_enable_woo_login_captcha\";s:0:\"\";s:34:\"aiowps_enable_woo_register_captcha\";s:0:\"\";s:38:\"aiowps_enable_woo_lostpassword_captcha\";s:0:\"\";s:25:\"aiowps_captcha_secret_key\";s:20:\"hzdny5e0mbad7r0es8wh\";s:42:\"aiowps_enable_manual_registration_approval\";s:0:\"\";s:39:\"aiowps_enable_registration_page_captcha\";s:0:\"\";s:35:\"aiowps_enable_registration_honeypot\";s:0:\"\";s:27:\"aiowps_enable_random_prefix\";s:0:\"\";s:31:\"aiowps_enable_automated_backups\";s:0:\"\";s:26:\"aiowps_db_backup_frequency\";s:1:\"4\";s:25:\"aiowps_db_backup_interval\";s:1:\"2\";s:26:\"aiowps_backup_files_stored\";s:1:\"2\";s:32:\"aiowps_send_backup_email_address\";s:0:\"\";s:27:\"aiowps_backup_email_address\";s:17:\"admin@example.com\";s:27:\"aiowps_disable_file_editing\";s:0:\"\";s:37:\"aiowps_prevent_default_wp_file_access\";s:0:\"\";s:22:\"aiowps_system_log_file\";s:9:\"error_log\";s:26:\"aiowps_enable_blacklisting\";s:0:\"\";s:26:\"aiowps_banned_ip_addresses\";s:0:\"\";s:28:\"aiowps_enable_basic_firewall\";s:0:\"\";s:31:\"aiowps_enable_pingback_firewall\";s:0:\"\";s:38:\"aiowps_disable_xmlrpc_pingback_methods\";s:0:\"\";s:34:\"aiowps_block_debug_log_file_access\";s:0:\"\";s:26:\"aiowps_disable_index_views\";s:0:\"\";s:30:\"aiowps_disable_trace_and_track\";s:0:\"\";s:28:\"aiowps_forbid_proxy_comments\";s:0:\"\";s:29:\"aiowps_deny_bad_query_strings\";s:0:\"\";s:34:\"aiowps_advanced_char_string_filter\";s:0:\"\";s:25:\"aiowps_enable_5g_firewall\";s:0:\"\";s:25:\"aiowps_enable_6g_firewall\";s:0:\"\";s:26:\"aiowps_enable_custom_rules\";s:0:\"\";s:32:\"aiowps_place_custom_rules_at_top\";s:0:\"\";s:19:\"aiowps_custom_rules\";s:0:\"\";s:25:\"aiowps_enable_404_logging\";s:0:\"\";s:28:\"aiowps_enable_404_IP_lockout\";s:0:\"\";s:30:\"aiowps_404_lockout_time_length\";s:2:\"60\";s:28:\"aiowps_404_lock_redirect_url\";s:16:\"http://127.0.0.1\";s:31:\"aiowps_enable_rename_login_page\";s:1:\"1\";s:28:\"aiowps_enable_login_honeypot\";s:0:\"\";s:43:\"aiowps_enable_brute_force_attack_prevention\";s:0:\"\";s:30:\"aiowps_brute_force_secret_word\";s:0:\"\";s:24:\"aiowps_cookie_brute_test\";s:0:\"\";s:44:\"aiowps_cookie_based_brute_force_redirect_url\";s:16:\"http://127.0.0.1\";s:59:\"aiowps_brute_force_attack_prevention_pw_protected_exception\";s:0:\"\";s:51:\"aiowps_brute_force_attack_prevention_ajax_exception\";s:0:\"\";s:19:\"aiowps_site_lockout\";s:0:\"\";s:23:\"aiowps_site_lockout_msg\";s:0:\"\";s:30:\"aiowps_enable_spambot_blocking\";s:0:\"\";s:29:\"aiowps_enable_comment_captcha\";s:0:\"\";s:31:\"aiowps_enable_autoblock_spam_ip\";s:0:\"\";s:33:\"aiowps_spam_ip_min_comments_block\";s:0:\"\";s:33:\"aiowps_enable_bp_register_captcha\";s:0:\"\";s:35:\"aiowps_enable_bbp_new_topic_captcha\";s:0:\"\";s:32:\"aiowps_enable_automated_fcd_scan\";s:0:\"\";s:25:\"aiowps_fcd_scan_frequency\";s:1:\"4\";s:24:\"aiowps_fcd_scan_interval\";s:1:\"2\";s:28:\"aiowps_fcd_exclude_filetypes\";s:0:\"\";s:24:\"aiowps_fcd_exclude_files\";s:0:\"\";s:26:\"aiowps_send_fcd_scan_email\";s:0:\"\";s:29:\"aiowps_fcd_scan_email_address\";s:17:\"admin@example.com\";s:27:\"aiowps_fcds_change_detected\";b:0;s:22:\"aiowps_copy_protection\";s:0:\"\";s:40:\"aiowps_prevent_site_display_inside_frame\";s:0:\"\";s:32:\"aiowps_prevent_users_enumeration\";s:0:\"\";s:42:\"aiowps_disallow_unauthorized_rest_requests\";s:0:\"\";s:25:\"aiowps_ip_retrieve_method\";s:1:\"0\";s:25:\"aiowps_recaptcha_site_key\";s:0:\"\";s:27:\"aiowps_recaptcha_secret_key\";s:0:\"\";s:24:\"aiowps_default_recaptcha\";s:0:\"\";s:22:\"aiowps_login_page_slug\";s:5:\"admin\";}', 'yes'),
(154, 'wpseo', 'a:20:{s:15:\"ms_defaults_set\";b:0;s:7:\"version\";s:6:\"11.2.1\";s:20:\"disableadvanced_meta\";b:1;s:19:\"onpage_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:4:\"news\";s:20:\"has_multiple_authors\";b:1;s:16:\"environment_type\";s:10:\"production\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:0;s:18:\"first_activated_on\";i:1597307843;s:13:\"myyoast-oauth\";b:0;}', 'yes'),
(155, 'wpseo_titles', 'a:68:{s:10:\"title_test\";i:0;s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:23:\"is-media-purge-relevant\";b:0;s:20:\"breadcrumbs-404crumb\";s:25:\"Error 404: Page not found\";s:29:\"breadcrumbs-display-blog-page\";b:0;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:12:\"Archives for\";s:18:\"breadcrumbs-enable\";b:0;s:16:\"breadcrumbs-home\";s:4:\"Home\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:16:\"You searched for\";s:15:\"breadcrumbs-sep\";s:2:\"»\";s:12:\"website_name\";s:12:\"Kazan Museum\";s:11:\"person_name\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:6:\"person\";s:25:\"company_or_person_user_id\";i:1;s:17:\"stripcategorybase\";b:1;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:13:\"showdate-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";i:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:13:\"showdate-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";i:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:19:\"showdate-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";i:0;s:18:\"title-tax-category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:0;s:23:\"noindex-tax-post_format\";b:1;}', 'yes'),
(156, 'wpseo_social', 'a:19:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:13:\"wikipedia_url\";s:0:\"\";s:10:\"fbadminapp\";s:0:\"\";}', 'yes'),
(158, '_transient_timeout_wpseo_link_table_inaccessible', '1628843843', 'no'),
(159, '_transient_wpseo_link_table_inaccessible', '0', 'no'),
(160, '_transient_timeout_wpseo_meta_table_inaccessible', '1628843843', 'no'),
(161, '_transient_wpseo_meta_table_inaccessible', '0', 'no'),
(167, '_transient_timeout_wpseo_site_information', '1597394276', 'no'),
(168, '_transient_wpseo_site_information', 'O:8:\"stdClass\":2:{s:3:\"url\";s:35:\"http://localhost/19_SOLN_cms_module\";s:13:\"subscriptions\";a:0:{}}', 'no'),
(172, '_transient_timeout_wpseo-statistics-totals', '1597394316', 'no'),
(173, '_transient_wpseo-statistics-totals', 'a:1:{i:1;a:2:{s:6:\"scores\";a:1:{i:0;a:4:{s:8:\"seo_rank\";s:2:\"na\";s:5:\"label\";s:48:\"Posts <strong>without</strong> a focus keyphrase\";s:5:\"count\";s:2:\"10\";s:4:\"link\";s:109:\"http://localhost/19_SOLN_cms_module/wp-admin/edit.php?post_status=publish&#038;post_type=post&#038;seo_filter=na\";}}s:8:\"division\";a:5:{s:3:\"bad\";i:0;s:2:\"ok\";i:0;s:4:\"good\";i:0;s:2:\"na\";i:1;s:7:\"noindex\";i:0;}}}', 'no'),
(186, 'social-icons', 'a:3:{s:8:\"facebook\";a:3:{s:5:\"class\";s:13:\"fa-facebook-f\";s:4:\"show\";s:4:\"true\";s:4:\"link\";s:1:\"#\";}s:7:\"twitter\";a:3:{s:5:\"class\";s:10:\"fa-twitter\";s:4:\"show\";s:4:\"true\";s:4:\"link\";s:1:\"#\";}s:9:\"instagram\";a:3:{s:5:\"class\";s:12:\"fa-instagram\";s:4:\"show\";s:4:\"true\";s:4:\"link\";s:1:\"#\";}}', 'yes'),
(187, '_transient_timeout_users_online', '1597381514', 'no'),
(188, '_transient_users_online', 'a:1:{i:0;a:3:{s:7:\"user_id\";i:1;s:13:\"last_activity\";i:1597379714;s:10:\"ip_address\";s:3:\"::1\";}}', 'no'),
(194, '_site_transient_timeout_theme_roots', '1597380544', 'no'),
(195, '_site_transient_theme_roots', 'a:5:{s:16:\"Kazan_MuseumTour\";s:7:\"/themes\";s:10:\"blankslate\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(197, '_site_transient_timeout_available_translations', '1597389603', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(198, '_site_transient_available_translations', 'a:122:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-07-14 06:20:07\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/5.4.2/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-08-10 16:01:48\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/5.4.2/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.7/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-22 18:59:07\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.15\";s:7:\"updated\";s:19:\"2019-10-29 07:54:22\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:62:\"http://downloads.wordpress.org/translation/core/4.9.15/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-01-22 10:57:09\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.3.3/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:6:\"4.8.14\";s:7:\"updated\";s:19:\"2017-10-01 12:57:10\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"http://downloads.wordpress.org/translation/core/4.8.14/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-07-08 06:57:24\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/5.4.2/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:33:\"མུ་མཐུད་དུ།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-06-17 11:59:40\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.4.2/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-07-22 04:50:37\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/5.4.2/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"5.3.4\";s:7:\"updated\";s:19:\"2020-06-11 08:59:48\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.3.4/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-07-10 08:55:00\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/5.4.2/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-08-04 08:37:35\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.4.2/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-08-02 17:09:40\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.4.2/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-06-19 09:59:11\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.4.2/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-08-02 17:09:01\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:70:\"http://downloads.wordpress.org/translation/core/5.4.2/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-06-17 18:22:34\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.4.2/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-06-19 09:59:34\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:72:\"http://downloads.wordpress.org/translation/core/5.4.2/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-07-08 15:27:00\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/5.4.2/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-07-08 05:40:20\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.4.2/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-07-14 17:55:29\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.4.2/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-03-31 22:29:33\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.4.2/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-08-05 17:32:39\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.4.2/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-08-03 08:37:17\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.4.2/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-07-07 12:15:57\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/5.4.2/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-07-27 10:08:06\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.4.2/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-07-23 23:51:44\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.4.2/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-06-23 16:46:04\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.4.2/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-07-07 21:12:53\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.4.2/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-07-09 08:55:58\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.4.2/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PR\";a:8:{s:8:\"language\";s:5:\"es_PR\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-04-29 15:36:59\";s:12:\"english_name\";s:21:\"Spanish (Puerto Rico)\";s:11:\"native_name\";s:23:\"Español de Puerto Rico\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.4.1/es_PR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-11-12 04:43:11\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Español de Uruguay\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.3.2/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:3:\"5.1\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/5.1/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-07-08 20:42:40\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.4.2/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-07-07 22:47:39\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.4.2/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-07-07 22:49:02\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.4.2/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:9:\"5.0-beta3\";s:7:\"updated\";s:19:\"2018-11-28 16:04:33\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:64:\"http://downloads.wordpress.org/translation/core/5.0-beta3/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-07-08 09:16:23\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/5.4.2/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-07-24 18:19:16\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.4.2/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-07-10 15:26:09\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/5.4.2/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-07-25 08:39:33\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.4.2/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-08-04 12:36:19\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.4.2/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-08-04 11:58:44\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.4.2/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.8.6/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-07-07 22:38:20\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.4.2/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-14 12:33:48\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.9.8/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.4.2/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-07-16 16:33:09\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.4.2/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"4.9.7\";s:7:\"updated\";s:19:\"2018-06-17 09:33:44\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.7/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-06-05 20:35:18\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/5.4.2/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-07-18 16:53:49\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/5.4.2/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-06-03 10:58:08\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.4.2/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-07-11 05:59:40\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.4.2/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.7.11\";s:7:\"updated\";s:19:\"2018-09-20 11:13:37\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:64:\"http://downloads.wordpress.org/translation/core/4.7.11/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-07-16 09:32:36\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.4.2/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-07-08 08:23:23\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/5.4.2/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"次へ\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-24 13:53:29\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.5/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-04-30 07:54:16\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.4.1/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-07-08 06:32:24\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/5.4.2/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-12 08:08:32\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.9.5/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-09 07:34:10\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/5.0.3/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:6:\"4.9.15\";s:7:\"updated\";s:19:\"2019-12-04 12:22:34\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.9.15/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರೆಸಿ\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"5.3.4\";s:7:\"updated\";s:19:\"2020-07-29 06:09:28\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.3.4/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"4.9.9\";s:7:\"updated\";s:19:\"2018-12-18 14:32:44\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.9.9/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"5.2.7\";s:7:\"updated\";s:19:\"2020-07-14 08:45:32\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.2.7/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-07-14 08:34:14\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/5.4.2/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-09-08 12:57:25\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.2.3/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:6:\"4.8.14\";s:7:\"updated\";s:19:\"2018-02-13 07:38:55\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.8.14/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:6:\"4.9.15\";s:7:\"updated\";s:19:\"2018-08-31 11:57:07\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:64:\"http://downloads.wordpress.org/translation/core/4.9.15/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:64:\"http://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-07-07 22:48:25\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.4.2/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-27 10:30:26\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.5/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-07-08 07:06:32\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:70:\"http://downloads.wordpress.org/translation/core/5.4.2/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-07-11 14:56:43\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.4.2/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-08-06 15:47:14\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.4.2/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-01-01 08:53:00\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.3.3/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.8.3/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-08-05 08:53:46\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.4.2/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.1.20/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-07-30 20:34:06\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.4.2/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-07-01 11:09:51\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.4.2/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-07-08 16:20:44\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.4.2/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-07-08 10:35:41\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:68:\"http://downloads.wordpress.org/translation/core/5.4.2/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-08-12 10:27:09\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.4.2/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-08-06 17:30:39\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.4.2/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:3:\"5.3\";s:7:\"updated\";s:19:\"2019-11-12 04:37:38\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"سنڌي\";s:7:\"package\";s:59:\"http://downloads.wordpress.org/translation/core/5.3/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:3:\"snd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"اڳتي هلو\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-07-14 13:57:15\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.4.2/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-08-11 03:43:49\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/5.4.2/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2018-01-04 13:33:13\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-07-20 13:58:58\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/5.4.2/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-04-01 01:42:23\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.4.2/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-07-26 23:48:05\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.4.2/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:5:\"5.2.6\";s:7:\"updated\";s:19:\"2019-10-22 00:19:41\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/5.2.6/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-06-04 18:21:20\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/5.4.2/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-30 02:38:08\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-07-09 14:00:02\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.4.2/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-12 12:31:53\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.5/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-07-27 12:59:35\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/5.4.2/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:5:\"5.1.6\";s:7:\"updated\";s:19:\"2020-04-09 10:48:08\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/5.1.6/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:6:\"5.0.10\";s:7:\"updated\";s:19:\"2019-01-23 12:32:40\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:64:\"http://downloads.wordpress.org/translation/core/5.0.10/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-07-13 09:29:34\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/5.4.2/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-08-03 03:32:27\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.4.2/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-08-12 09:51:58\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.4.2/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-03-08 12:12:22\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.3.3/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(201, 'rewrite_rules', 'a:112:{s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:39:\"index.php?yoast-sitemap-xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:61:\"(news/chak-chak-museum)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:44:\"(news/chak-chak-museum)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:26:\"(news/chak-chak-museum)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:71:\"(news/museum-of-national-culture)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:54:\"(news/museum-of-national-culture)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:36:\"(news/museum-of-national-culture)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:93:\"(news/the-national-museum-of-the-republic-of-tatarstan)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:76:\"(news/the-national-museum-of-the-republic-of-tatarstan)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:58:\"(news/the-national-museum-of-the-republic-of-tatarstan)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"(news)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:27:\"(news)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:9:\"(news)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:60:\"(news/seasonal-events)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:43:\"(news/seasonal-events)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:25:\"(news/seasonal-events)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:57:\"(news/site-updates)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:40:\"(news/site-updates)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:22:\"(news/site-updates)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:68:\"(news/soviet-lifestyle-museum)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:51:\"(news/soviet-lifestyle-museum)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:33:\"(news/soviet-lifestyle-museum)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:14:\"category/(.+)$\";s:45:\"index.php?wpseo_category_redirect=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:31:\".+?/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\".+?/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\".+?/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\".+?/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"(.+?)/([^/]+)/embed/?$\";s:63:\"index.php?category_name=$matches[1]&name=$matches[2]&embed=true\";s:26:\"(.+?)/([^/]+)/trackback/?$\";s:57:\"index.php?category_name=$matches[1]&name=$matches[2]&tb=1\";s:46:\"(.+?)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:41:\"(.+?)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:34:\"(.+?)/([^/]+)/page/?([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&paged=$matches[3]\";s:41:\"(.+?)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&cpage=$matches[3]\";s:30:\"(.+?)/([^/]+)(?:/([0-9]+))?/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&page=$matches[3]\";s:20:\".+?/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\".+?/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:50:\".+?/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\".+?/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:14:\"(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:26:\"(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:33:\"(.+?)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&cpage=$matches[2]\";s:8:\"(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";}', 'yes');

-- --------------------------------------------------------

--
-- 테이블 구조 `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 테이블의 덤프 데이터 `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(3, 5, '_edit_last', '1'),
(4, 5, '_edit_lock', '1597273509:1'),
(5, 6, '_edit_last', '1'),
(6, 6, '_edit_lock', '1597273540:1'),
(17, 11, '_edit_last', '1'),
(18, 11, '_edit_lock', '1597273623:1'),
(19, 11, '_wp_page_template', 'default'),
(20, 13, '_edit_last', '1'),
(21, 13, '_edit_lock', '1597274137:1'),
(22, 14, '_wp_attached_file', '2020/08/chak-chak-museum-4.jpg'),
(23, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:683;s:4:\"file\";s:30:\"2020/08/chak-chak-museum-4.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"chak-chak-museum-4-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"chak-chak-museum-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(24, 14, '_wp_attachment_image_alt', 'chak-chak-museum-4'),
(25, 13, '_thumbnail_id', '14'),
(26, 13, '_wp_page_template', 'selected.php'),
(27, 16, '_edit_last', '1'),
(28, 16, '_edit_lock', '1597274154:1'),
(29, 17, '_wp_attached_file', '2020/08/soviet-lifestyle-museum-1.jpg'),
(30, 17, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:646;s:4:\"file\";s:37:\"2020/08/soviet-lifestyle-museum-1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"soviet-lifestyle-museum-1-300x189.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:189;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"soviet-lifestyle-museum-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.5\";s:6:\"credit\";s:16:\"Niccolo Bertoldi\";s:6:\"camera\";s:10:\"NIKON D700\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1421146082\";s:9:\"copyright\";s:24:\"Creative Commons License\";s:12:\"focal_length\";s:2:\"28\";s:3:\"iso\";s:3:\"800\";s:13:\"shutter_speed\";s:6:\"0.0125\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:3:{i:0;s:4:\"2015\";i:1;s:5:\"Kazan\";i:2;s:6:\"Russia\";}}}'),
(31, 17, '_wp_attachment_image_alt', 'soviet-lifestyle-museum-1'),
(32, 16, '_thumbnail_id', '17'),
(33, 16, '_wp_page_template', 'selected.php'),
(34, 19, '_edit_last', '1'),
(35, 19, '_edit_lock', '1597274167:1'),
(36, 20, '_wp_attached_file', '2020/08/national-museum-of-the-republic-of-tatarstan-2.jpg'),
(37, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1086;s:6:\"height\";i:724;s:4:\"file\";s:58:\"2020/08/national-museum-of-the-republic-of-tatarstan-2.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:58:\"national-museum-of-the-republic-of-tatarstan-2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:59:\"national-museum-of-the-republic-of-tatarstan-2-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:58:\"national-museum-of-the-republic-of-tatarstan-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(38, 20, '_wp_attachment_image_alt', 'national-museum-of-the-republic-of-tatarstan-2'),
(39, 19, '_thumbnail_id', '20'),
(40, 19, '_wp_page_template', 'selected.php'),
(41, 22, '_edit_last', '1'),
(42, 22, '_edit_lock', '1597274148:1'),
(46, 24, '_wp_attached_file', '2020/08/museum-of-national-culture-4.jpg'),
(47, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:650;s:6:\"height\";i:430;s:4:\"file\";s:40:\"2020/08/museum-of-national-culture-4.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"museum-of-national-culture-4-300x198.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:198;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"museum-of-national-culture-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(48, 24, '_wp_attachment_image_alt', 'museum-of-national-culture-4'),
(49, 22, '_thumbnail_id', '24'),
(50, 22, '_wp_page_template', 'selected.php'),
(51, 26, '_edit_last', '1'),
(52, 26, '_edit_lock', '1597273759:1'),
(53, 27, '_wp_attached_file', '2020/08/hermitage-1.png'),
(54, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:639;s:4:\"file\";s:23:\"2020/08/hermitage-1.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"hermitage-1-300x192.png\";s:5:\"width\";i:300;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"hermitage-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(55, 27, '_wp_attachment_image_alt', 'hermitage-1'),
(56, 26, '_thumbnail_id', '27'),
(57, 26, '_wp_page_template', 'default'),
(58, 31, '_edit_last', '1'),
(59, 31, '_edit_lock', '1597274317:1'),
(60, 32, '_wp_attached_file', '2020/08/chak-chak-museum-1.jpeg'),
(61, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:853;s:4:\"file\";s:31:\"2020/08/chak-chak-museum-1.jpeg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"chak-chak-museum-1-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"chak-chak-museum-1-1024x682.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"chak-chak-museum-1-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(62, 32, '_wp_attachment_image_alt', 'chak-chak-museum-1'),
(63, 31, '_thumbnail_id', '32'),
(64, 31, '_pingme', '1'),
(65, 31, '_encloseme', '1'),
(66, 34, '_edit_last', '1'),
(67, 34, '_edit_lock', '1597274342:1'),
(68, 35, '_wp_attached_file', '2020/08/chak-chak-museum-3.jpg'),
(69, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:850;s:4:\"file\";s:30:\"2020/08/chak-chak-museum-3.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"chak-chak-museum-3-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"chak-chak-museum-3-1024x680.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:680;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"chak-chak-museum-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(70, 35, '_wp_attachment_image_alt', 'chak-chak-museum-3'),
(71, 34, '_thumbnail_id', '35'),
(72, 34, '_pingme', '1'),
(73, 34, '_encloseme', '1'),
(74, 37, '_edit_last', '1'),
(75, 37, '_edit_lock', '1597274393:1'),
(76, 38, '_wp_attached_file', '2020/08/museum-of-islamic-culture-3.jpg'),
(77, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1470;s:6:\"height\";i:1103;s:4:\"file\";s:39:\"2020/08/museum-of-islamic-culture-3.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"museum-of-islamic-culture-3-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:40:\"museum-of-islamic-culture-3-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"museum-of-islamic-culture-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(78, 38, '_wp_attachment_image_alt', 'museum-of-islamic-culture-3'),
(79, 37, '_thumbnail_id', '38'),
(80, 37, '_pingme', '1'),
(81, 37, '_encloseme', '1'),
(82, 40, '_edit_last', '1'),
(83, 40, '_edit_lock', '1597274415:1'),
(84, 41, '_wp_attached_file', '2020/08/museum-of-islamic-culture-4.jpg'),
(85, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1400;s:6:\"height\";i:1052;s:4:\"file\";s:39:\"2020/08/museum-of-islamic-culture-4.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"museum-of-islamic-culture-4-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:40:\"museum-of-islamic-culture-4-1024x769.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:769;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"museum-of-islamic-culture-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(86, 41, '_wp_attachment_image_alt', 'museum-of-islamic-culture-4'),
(87, 40, '_thumbnail_id', '41'),
(88, 40, '_pingme', '1'),
(89, 40, '_encloseme', '1'),
(90, 43, '_edit_last', '1'),
(91, 43, '_edit_lock', '1597274461:1'),
(92, 44, '_wp_attached_file', '2020/08/national-museum-of-the-republic-of-tatarstan-1.jpg'),
(93, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2400;s:6:\"height\";i:1600;s:4:\"file\";s:58:\"2020/08/national-museum-of-the-republic-of-tatarstan-1.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:58:\"national-museum-of-the-republic-of-tatarstan-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:59:\"national-museum-of-the-republic-of-tatarstan-1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:58:\"national-museum-of-the-republic-of-tatarstan-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:60:\"national-museum-of-the-republic-of-tatarstan-1-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:60:\"national-museum-of-the-republic-of-tatarstan-1-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(94, 44, '_wp_attachment_image_alt', 'national-museum-of-the-republic-of-tatarstan-1'),
(95, 43, '_thumbnail_id', '44'),
(96, 43, '_pingme', '1'),
(97, 43, '_encloseme', '1'),
(98, 46, '_edit_last', '1'),
(99, 46, '_edit_lock', '1597274494:1'),
(100, 47, '_wp_attached_file', '2020/08/national-museum-of-the-republic-of-tatarstan-3.jpg'),
(101, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2400;s:6:\"height\";i:1600;s:4:\"file\";s:58:\"2020/08/national-museum-of-the-republic-of-tatarstan-3.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:58:\"national-museum-of-the-republic-of-tatarstan-3-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:59:\"national-museum-of-the-republic-of-tatarstan-3-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:58:\"national-museum-of-the-republic-of-tatarstan-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:60:\"national-museum-of-the-republic-of-tatarstan-3-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:60:\"national-museum-of-the-republic-of-tatarstan-3-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(102, 47, '_wp_attachment_image_alt', 'national-museum-of-the-republic-of-tatarstan-3'),
(103, 46, '_thumbnail_id', '47'),
(104, 46, '_pingme', '1'),
(105, 46, '_encloseme', '1'),
(106, 49, '_edit_last', '1'),
(107, 49, '_edit_lock', '1597274548:1'),
(108, 50, '_wp_attached_file', '2020/08/kazan_final_cover.jpg'),
(109, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:800;s:4:\"file\";s:29:\"2020/08/kazan_final_cover.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"kazan_final_cover-300x125.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:125;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"kazan_final_cover-1024x427.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"kazan_final_cover-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:30:\"kazan_final_cover-1536x640.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(110, 50, '_wp_attachment_image_alt', 'kazan_final_cover'),
(111, 49, '_thumbnail_id', '50'),
(112, 49, '_pingme', '1'),
(113, 49, '_encloseme', '1'),
(114, 53, '_wp_attached_file', '2020/08/kazan_final_carrousel_1.jpg'),
(115, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1164;s:6:\"height\";i:532;s:4:\"file\";s:35:\"2020/08/kazan_final_carrousel_1.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"kazan_final_carrousel_1-300x137.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:137;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"kazan_final_carrousel_1-1024x468.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:468;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"kazan_final_carrousel_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(116, 53, '_wp_attachment_image_alt', 'kazan_final_carrousel_1'),
(117, 52, '_edit_last', '1'),
(118, 52, '_thumbnail_id', '53'),
(119, 52, '_pingme', '1'),
(120, 52, '_encloseme', '1'),
(121, 52, '_edit_lock', '1597274567:1'),
(122, 56, '_wp_attached_file', '2020/08/winter-in-kazan-russia-1-small.jpg'),
(123, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:550;s:6:\"height\";i:366;s:4:\"file\";s:42:\"2020/08/winter-in-kazan-russia-1-small.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"winter-in-kazan-russia-1-small-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"winter-in-kazan-russia-1-small-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(124, 56, '_wp_attachment_image_alt', 'winter-in-kazan-russia-1-small'),
(125, 55, '_edit_last', '1'),
(126, 55, '_thumbnail_id', '56'),
(127, 55, '_pingme', '1'),
(128, 55, '_encloseme', '1'),
(129, 55, '_edit_lock', '1597274587:1'),
(130, 58, '_edit_last', '1'),
(131, 58, '_edit_lock', '1597274623:1'),
(132, 59, '_wp_attached_file', '2020/08/soviet-lifestyle-museum-3.jpg'),
(133, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:37:\"2020/08/soviet-lifestyle-museum-3.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"soviet-lifestyle-museum-3-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"soviet-lifestyle-museum-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1378229832\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:1:{i:0;s:6:\"russia\";}}}'),
(134, 59, '_wp_attachment_image_alt', 'soviet-lifestyle-museum-3'),
(135, 58, '_thumbnail_id', '59'),
(136, 58, '_pingme', '1'),
(137, 58, '_encloseme', '1'),
(138, 61, '_menu_item_type', 'custom'),
(139, 61, '_menu_item_menu_item_parent', '0'),
(140, 61, '_menu_item_object_id', '61'),
(141, 61, '_menu_item_object', 'custom'),
(142, 61, '_menu_item_target', ''),
(143, 61, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(144, 61, '_menu_item_xfn', ''),
(145, 61, '_menu_item_url', 'http://localhost/19_SOLN_cms_module/'),
(147, 62, '_menu_item_type', 'post_type'),
(148, 62, '_menu_item_menu_item_parent', '68'),
(149, 62, '_menu_item_object_id', '13'),
(150, 62, '_menu_item_object', 'page'),
(151, 62, '_menu_item_target', ''),
(152, 62, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(153, 62, '_menu_item_xfn', ''),
(154, 62, '_menu_item_url', ''),
(156, 63, '_menu_item_type', 'post_type'),
(157, 63, '_menu_item_menu_item_parent', '68'),
(158, 63, '_menu_item_object_id', '11'),
(159, 63, '_menu_item_object', 'page'),
(160, 63, '_menu_item_target', ''),
(161, 63, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(162, 63, '_menu_item_xfn', ''),
(163, 63, '_menu_item_url', ''),
(165, 64, '_menu_item_type', 'post_type'),
(166, 64, '_menu_item_menu_item_parent', '68'),
(167, 64, '_menu_item_object_id', '26'),
(168, 64, '_menu_item_object', 'page'),
(169, 64, '_menu_item_target', ''),
(170, 64, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(171, 64, '_menu_item_xfn', ''),
(172, 64, '_menu_item_url', ''),
(174, 65, '_menu_item_type', 'post_type'),
(175, 65, '_menu_item_menu_item_parent', '68'),
(176, 65, '_menu_item_object_id', '22'),
(177, 65, '_menu_item_object', 'page'),
(178, 65, '_menu_item_target', ''),
(179, 65, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(180, 65, '_menu_item_xfn', ''),
(181, 65, '_menu_item_url', ''),
(183, 66, '_menu_item_type', 'post_type'),
(184, 66, '_menu_item_menu_item_parent', '68'),
(185, 66, '_menu_item_object_id', '19'),
(186, 66, '_menu_item_object', 'page'),
(187, 66, '_menu_item_target', ''),
(188, 66, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(189, 66, '_menu_item_xfn', ''),
(190, 66, '_menu_item_url', ''),
(192, 67, '_menu_item_type', 'post_type'),
(193, 67, '_menu_item_menu_item_parent', '68'),
(194, 67, '_menu_item_object_id', '16'),
(195, 67, '_menu_item_object', 'page'),
(196, 67, '_menu_item_target', ''),
(197, 67, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(198, 67, '_menu_item_xfn', ''),
(199, 67, '_menu_item_url', ''),
(201, 68, '_menu_item_type', 'custom'),
(202, 68, '_menu_item_menu_item_parent', '0'),
(203, 68, '_menu_item_object_id', '68'),
(204, 68, '_menu_item_object', 'custom'),
(205, 68, '_menu_item_target', ''),
(206, 68, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(207, 68, '_menu_item_xfn', ''),
(208, 68, '_menu_item_url', '#'),
(210, 69, '_menu_item_type', 'taxonomy'),
(211, 69, '_menu_item_menu_item_parent', '0'),
(212, 69, '_menu_item_object_id', '7'),
(213, 69, '_menu_item_object', 'category'),
(214, 69, '_menu_item_target', ''),
(215, 69, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(216, 69, '_menu_item_xfn', ''),
(217, 69, '_menu_item_url', ''),
(219, 70, '_menu_item_type', 'post_type'),
(220, 70, '_menu_item_menu_item_parent', '69'),
(221, 70, '_menu_item_object_id', '55'),
(222, 70, '_menu_item_object', 'post'),
(223, 70, '_menu_item_target', ''),
(224, 70, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(225, 70, '_menu_item_xfn', ''),
(226, 70, '_menu_item_url', ''),
(228, 71, '_menu_item_type', 'post_type'),
(229, 71, '_menu_item_menu_item_parent', '69'),
(230, 71, '_menu_item_object_id', '52'),
(231, 71, '_menu_item_object', 'post'),
(232, 71, '_menu_item_target', ''),
(233, 71, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(234, 71, '_menu_item_xfn', ''),
(235, 71, '_menu_item_url', ''),
(237, 72, '_menu_item_type', 'post_type'),
(238, 72, '_menu_item_menu_item_parent', '69'),
(239, 72, '_menu_item_object_id', '49'),
(240, 72, '_menu_item_object', 'post'),
(241, 72, '_menu_item_target', ''),
(242, 72, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(243, 72, '_menu_item_xfn', ''),
(244, 72, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- 테이블 구조 `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 테이블의 덤프 데이터 `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(4, 1, '2020-08-12 23:05:40', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-08-12 23:05:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/19_SOLN_cms_module/?p=4', 0, 'post', '', 0),
(5, 1, '2020-08-12 23:07:32', '2020-08-12 23:07:32', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:8:\"seamless\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:8:{i:0;s:7:\"excerpt\";i:1;s:10:\"discussion\";i:2;s:8:\"comments\";i:3;s:9:\"revisions\";i:4;s:6:\"format\";i:5;s:15:\"page_attributes\";i:6;s:4:\"tags\";i:7;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'News Post ( Post )', 'news-post-post', 'publish', 'closed', 'closed', '', 'group_5f34760cc1921', '', '', '2020-08-12 23:07:32', '2020-08-12 23:07:32', '', 0, 'http://localhost/19_SOLN_cms_module/?post_type=acf-field-group&#038;p=5', 0, 'acf-field-group', '', 0),
(6, 1, '2020-08-12 23:07:58', '2020-08-12 23:07:58', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"page\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:8:\"seamless\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:8:{i:0;s:7:\"excerpt\";i:1;s:10:\"discussion\";i:2;s:8:\"comments\";i:3;s:9:\"revisions\";i:4;s:6:\"format\";i:5;s:10:\"categories\";i:6;s:4:\"tags\";i:7;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'Museum ( Page )', 'museum-page', 'publish', 'closed', 'closed', '', 'group_5f347635b7cae', '', '', '2020-08-12 23:07:58', '2020-08-12 23:07:58', '', 0, 'http://localhost/19_SOLN_cms_module/?post_type=acf-field-group&#038;p=6', 0, 'acf-field-group', '', 0),
(7, 1, '2020-08-12 23:08:06', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-08-12 23:08:06', '0000-00-00 00:00:00', '', 0, 'http://localhost/19_SOLN_cms_module/?page_id=7', 0, 'page', '', 0),
(11, 1, '2020-08-12 23:09:19', '2020-08-12 23:09:19', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam atque eaque et magni provident voluptate. A aliquid aspernatur atque, consectetur dolore dolorum incidunt itaque non vel veniam! Culpa, enim, ipsam.', 'Default Museum', '', 'publish', 'closed', 'closed', '', 'default-museum', '', '', '2020-08-12 23:09:19', '2020-08-12 23:09:19', '', 0, 'http://localhost/19_SOLN_cms_module/?page_id=11', 0, 'page', '', 0),
(12, 1, '2020-08-12 23:09:19', '2020-08-12 23:09:19', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam atque eaque et magni provident voluptate. A aliquid aspernatur atque, consectetur dolore dolorum incidunt itaque non vel veniam! Culpa, enim, ipsam.', 'Default Museum', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2020-08-12 23:09:19', '2020-08-12 23:09:19', '', 11, 'http://localhost/19_SOLN_cms_module/?p=12', 0, 'revision', '', 0),
(13, 1, '2020-08-12 23:09:48', '2020-08-12 23:09:48', 'The Chak-Chak Museum is located within the historical Old Tatar Quarter complex. Inside the museum, in a homely atmosphere guests can drink fragrant tea from a samovar and taste Tatar desserts such as the traditional chak-chak, baursak and kak-tosh made from almonds, prepared using the recipe of Tatar enlightener Kayum Nasyri. While guests drink tea and sample desserts, the guides share stories and examples about the typical ancient Tatar peoples’ everyday life, traditions, customs, and of course, the secret to making the perfect chak-chak and other Tatar dishes.', 'Chak-Chak Museum', '', 'publish', 'closed', 'closed', '', 'chak-chak-museum', '', '', '2020-08-12 23:15:37', '2020-08-12 23:15:37', '', 0, 'http://localhost/19_SOLN_cms_module/?page_id=13', 0, 'page', '', 0),
(14, 1, '2020-08-12 23:09:41', '2020-08-12 23:09:41', 'chak-chak-museum-4', 'chak-chak-museum-4', 'chak-chak-museum-4', 'inherit', 'open', 'closed', '', 'chak-chak-museum-4', '', '', '2020-08-12 23:09:45', '2020-08-12 23:09:45', '', 13, 'http://localhost/19_SOLN_cms_module/wp-content/uploads/2020/08/chak-chak-museum-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2020-08-12 23:09:48', '2020-08-12 23:09:48', 'The Chak-Chak Museum is located within the historical Old Tatar Quarter complex. Inside the museum, in a homely atmosphere guests can drink fragrant tea from a samovar and taste Tatar desserts such as the traditional chak-chak, baursak and kak-tosh made from almonds, prepared using the recipe of Tatar enlightener Kayum Nasyri. While guests drink tea and sample desserts, the guides share stories and examples about the typical ancient Tatar peoples’ everyday life, traditions, customs, and of course, the secret to making the perfect chak-chak and other Tatar dishes.', 'chak-chak-museum', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-08-12 23:09:48', '2020-08-12 23:09:48', '', 13, 'http://localhost/19_SOLN_cms_module/?p=15', 0, 'revision', '', 0),
(16, 1, '2020-08-12 23:10:14', '2020-08-12 23:10:14', 'The State Russian Museum (Russian: Государственный Русский музей), formerly the Russian Museum of His Imperial Majesty Alexander III (Russian: Русский Музей Императора Александра III), located on Arts Square in Saint Petersburg, is the world\'s largest depository of Russian fine art. It is also one of the largest museums in the country.\r\n\r\nA unique place where every visitor can take a trip into the forgotten Soviet past. The Soviet Lifestyle Museum is located in an authentic Soviet \"kommunalka\" or in English, \"communal apartment\" with brick walls, old wiring and cast-iron wall heaters. Exhibitions here carry titles relevant to the museum: \"USSR in Space\", \"Toys: Made in the USSR\", \"Bad Habits in the USSR\", \"The Rock and Roll Hall of Fame\" and others. The museum’s main goal is to evoke a feeling of pleasant nostalgia and positive emotions among its visitors as they look through items of a bygone era. Exhibits are not chosen based on any particular special value (although among them, some are quite valuable and even rare); the most important thing here is the history and emotions that each item brings to visitors who may or may not have experienced the heyday of the not-so-distant-past era.\r\n\r\nCreation\r\n\r\nThe museum was established on April 13, 1895, upon enthronement of Nicholas II to commemorate his father, Alexander III. Its original collection was composed of artworks taken from the Hermitage Museum, Alexander Palace, and the Imperial Academy of Arts. After the Russian Revolution of 1917, many private collections were nationalized and relocated to the Russian Museum. These included Kazimir Malevich\'s Black Square.', 'Soviet Lifestyle Museum', '', 'publish', 'closed', 'closed', '', 'soviet-lifestyle-museum', '', '', '2020-08-12 23:15:54', '2020-08-12 23:15:54', '', 0, 'http://localhost/19_SOLN_cms_module/?page_id=16', 0, 'page', '', 0),
(17, 1, '2020-08-12 23:10:08', '2020-08-12 23:10:08', 'soviet-lifestyle-museum-1', 'soviet-lifestyle-museum-1', 'soviet-lifestyle-museum-1', 'inherit', 'open', 'closed', '', 'soviet-lifestyle-museum-1', '', '', '2020-08-12 23:10:11', '2020-08-12 23:10:11', '', 16, 'http://localhost/19_SOLN_cms_module/wp-content/uploads/2020/08/soviet-lifestyle-museum-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2020-08-12 23:10:14', '2020-08-12 23:10:14', 'The State Russian Museum (Russian: Государственный Русский музей), formerly the Russian Museum of His Imperial Majesty Alexander III (Russian: Русский Музей Императора Александра III), located on Arts Square in Saint Petersburg, is the world\'s largest depository of Russian fine art. It is also one of the largest museums in the country.\r\n\r\nA unique place where every visitor can take a trip into the forgotten Soviet past. The Soviet Lifestyle Museum is located in an authentic Soviet \"kommunalka\" or in English, \"communal apartment\" with brick walls, old wiring and cast-iron wall heaters. Exhibitions here carry titles relevant to the museum: \"USSR in Space\", \"Toys: Made in the USSR\", \"Bad Habits in the USSR\", \"The Rock and Roll Hall of Fame\" and others. The museum’s main goal is to evoke a feeling of pleasant nostalgia and positive emotions among its visitors as they look through items of a bygone era. Exhibits are not chosen based on any particular special value (although among them, some are quite valuable and even rare); the most important thing here is the history and emotions that each item brings to visitors who may or may not have experienced the heyday of the not-so-distant-past era.\r\n\r\nCreation\r\n\r\nThe museum was established on April 13, 1895, upon enthronement of Nicholas II to commemorate his father, Alexander III. Its original collection was composed of artworks taken from the Hermitage Museum, Alexander Palace, and the Imperial Academy of Arts. After the Russian Revolution of 1917, many private collections were nationalized and relocated to the Russian Museum. These included Kazimir Malevich\'s Black Square.', 'Soviet Lifestyle Museum', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2020-08-12 23:10:14', '2020-08-12 23:10:14', '', 16, 'http://localhost/19_SOLN_cms_module/?p=18', 0, 'revision', '', 0),
(19, 1, '2020-08-12 23:10:34', '2020-08-12 23:10:34', 'The National Museum of the Republic of Tatarstan (NMRT) is the largest museum in Tatarstan. It was founded as a Kazan Town Scientific and Industrial Museum in 1894 and opened on April 5, 1895. The basis of the museum is a private collection of 40 thousandth items of Andrei Fedorovich Likhachev (1832-90), a well-known regional archaeologist, numismatist, collector also the exhibits of scientific and industrial exhibition in 1890. Well-known scientists of Kazan University stood at the roots of the establishment of the museum and of the museum\'s collections formation, such as: A.A. Stuckenberg, N.P. Zagoskin, P.I. Krotov, N.F. Vysotsky, N.F. Catania and others. The museum occupies the former building of Gostinniy dvor (guest house), a monument of architecture and history of Russian Federation and the Republic of Tatarstan.\r\nThere are over 800 thousand units in the museum\'s collection.\r\n\r\nNowadays the museum is in the process of reconstruction, the project of which provides creation of a permanent exhibition on the area of more than 6 000 sq.m. 2001, the Cabinet of Ministers of the Republic of Tatarstan approved the scientific concept of creation of exposition of NM RT in Gostiny Dvor building; consisting of three main parts: \"History of Tatarstan, from ancient times to present days,\" \"Nature and a Man\", \"Culture: the interaction of cultures of peoples of Tatarstan\". Now the museum has the following exhibitions: \"Ancient History of Tatarstan\", \"Money, trade and trade routes in the Middle Ages\", \"Tatar Golden Treasures,\" \"Kazan Province in the XVIII century\", there are also temporary exhibitions.', 'National Museum of the Republic of Tatarstan', '', 'publish', 'closed', 'closed', '', 'the-national-museum-of-the-republic-of-tatarstan', '', '', '2020-08-12 23:16:07', '2020-08-12 23:16:07', '', 0, 'http://localhost/19_SOLN_cms_module/?page_id=19', 0, 'page', '', 0),
(20, 1, '2020-08-12 23:10:29', '2020-08-12 23:10:29', 'national-museum-of-the-republic-of-tatarstan-2', 'national-museum-of-the-republic-of-tatarstan-2', 'national-museum-of-the-republic-of-tatarstan-2', 'inherit', 'open', 'closed', '', 'national-museum-of-the-republic-of-tatarstan-2', '', '', '2020-08-12 23:10:32', '2020-08-12 23:10:32', '', 19, 'http://localhost/19_SOLN_cms_module/wp-content/uploads/2020/08/national-museum-of-the-republic-of-tatarstan-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2020-08-12 23:10:34', '2020-08-12 23:10:34', 'The National Museum of the Republic of Tatarstan (NMRT) is the largest museum in Tatarstan. It was founded as a Kazan Town Scientific and Industrial Museum in 1894 and opened on April 5, 1895. The basis of the museum is a private collection of 40 thousandth items of Andrei Fedorovich Likhachev (1832-90), a well-known regional archaeologist, numismatist, collector also the exhibits of scientific and industrial exhibition in 1890. Well-known scientists of Kazan University stood at the roots of the establishment of the museum and of the museum\'s collections formation, such as: A.A. Stuckenberg, N.P. Zagoskin, P.I. Krotov, N.F. Vysotsky, N.F. Catania and others. The museum occupies the former building of Gostinniy dvor (guest house), a monument of architecture and history of Russian Federation and the Republic of Tatarstan.\r\nThere are over 800 thousand units in the museum\'s collection.\r\n\r\nNowadays the museum is in the process of reconstruction, the project of which provides creation of a permanent exhibition on the area of more than 6 000 sq.m. 2001, the Cabinet of Ministers of the Republic of Tatarstan approved the scientific concept of creation of exposition of NM RT in Gostiny Dvor building; consisting of three main parts: \"History of Tatarstan, from ancient times to present days,\" \"Nature and a Man\", \"Culture: the interaction of cultures of peoples of Tatarstan\". Now the museum has the following exhibitions: \"Ancient History of Tatarstan\", \"Money, trade and trade routes in the Middle Ages\", \"Tatar Golden Treasures,\" \"Kazan Province in the XVIII century\", there are also temporary exhibitions.', 'The National Museum of the Republic of Tatarstan', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2020-08-12 23:10:34', '2020-08-12 23:10:34', '', 19, 'http://localhost/19_SOLN_cms_module/?p=21', 0, 'revision', '', 0),
(22, 1, '2020-08-12 23:11:13', '2020-08-12 23:11:13', 'The museum is located on the site of the original Aztec building that was a part of Moctezuma\'s \"New Palaces\" complex called the \"Casa Denegrida\" (Black House) by Spanish conquerors, who described it as a windowless room painted in black. In here, Moctezuma would meditate on what he was told by professional seers and shamans.[3] During the Conquest, this Black House, along with the rest of Moctezuma\'s New Palaces was nearly destroyed.[4] This site was part of lands given to Hernán Cortés by the Spanish Crown as a reward for the conquest of Mexico,[5] and Cortés rebuilt the New Palaces/Black House complex in Spanish style, using much of the building materials of the old Aztec buildings.[4] Cortes’ son later inherited this palace, only to later sell it back to Felipe V in order to establish the vice-regal palace.[5]\r\nRecently, excavations here and next door at the National Palace have unearthed parts of a wall and a basalt floor believed to be part of the Black House. More excavations are planned.[3]\r\n\r\nThis colonial-era building was named a national monument in 1931,[2] but when the new Museum of Anthropology opened the site was left vacant. Beatriz Barba and Julio César Olivé proposed that the space be converted into a museum featuring world cultures.[8] After renovation, the building opened on 5 December 1965,[9] with Barba serving as its deputy director until 1976[10] as the Cultural Museum, with rooms dedicated to demonstrating cultural artifacts from around the world.[2] This museum dedicated to the world\'s past and present cultures is the only one of its type in Latin America.[11] The museum has sixteen permanent display rooms and three rooms for temporary exhibits. Some of the rooms are dedicated prehistoric cultures remains such as cave paintings and implements associated with the origins of sedentary, agricultural societies. Other rooms are devoted to ancient Mesopotamia as well as ancient Greece and Rome.\r\nIn the Age of Exploration room, items from the time of initial European contact with the Americas are on display. For modern cultures, there are exhibits from all continents and some dedicated to cultures little-known in Mexico such as that of Samoa or New Ireland.[5][12] Since its founding, the museum has received over 12,000 pieces from around the world. These pieces include textiles, glass objects, porcelain, photographs, arms, kimonos, masks, jewelry and sculptures. Many of these objects are originals and some are quite old. The museum still receives donations of objects. One of the most recent is of board inlaid with mother-of-pearl from Vietnam.[5]', 'Museum of National Culture', '', 'publish', 'closed', 'closed', '', 'museum-of-national-culture', '', '', '2020-08-12 23:15:48', '2020-08-12 23:15:48', '', 0, 'http://localhost/19_SOLN_cms_module/?page_id=22', 0, 'page', '', 0),
(24, 1, '2020-08-12 23:11:07', '2020-08-12 23:11:07', 'museum-of-national-culture-4', 'museum-of-national-culture-4', 'museum-of-national-culture-4', 'inherit', 'open', 'closed', '', 'museum-of-national-culture-4', '', '', '2020-08-12 23:11:11', '2020-08-12 23:11:11', '', 22, 'http://localhost/19_SOLN_cms_module/wp-content/uploads/2020/08/museum-of-national-culture-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2020-08-12 23:11:13', '2020-08-12 23:11:13', 'The museum is located on the site of the original Aztec building that was a part of Moctezuma\'s \"New Palaces\" complex called the \"Casa Denegrida\" (Black House) by Spanish conquerors, who described it as a windowless room painted in black. In here, Moctezuma would meditate on what he was told by professional seers and shamans.[3] During the Conquest, this Black House, along with the rest of Moctezuma\'s New Palaces was nearly destroyed.[4] This site was part of lands given to Hernán Cortés by the Spanish Crown as a reward for the conquest of Mexico,[5] and Cortés rebuilt the New Palaces/Black House complex in Spanish style, using much of the building materials of the old Aztec buildings.[4] Cortes’ son later inherited this palace, only to later sell it back to Felipe V in order to establish the vice-regal palace.[5]\r\nRecently, excavations here and next door at the National Palace have unearthed parts of a wall and a basalt floor believed to be part of the Black House. More excavations are planned.[3]\r\n\r\nThis colonial-era building was named a national monument in 1931,[2] but when the new Museum of Anthropology opened the site was left vacant. Beatriz Barba and Julio César Olivé proposed that the space be converted into a museum featuring world cultures.[8] After renovation, the building opened on 5 December 1965,[9] with Barba serving as its deputy director until 1976[10] as the Cultural Museum, with rooms dedicated to demonstrating cultural artifacts from around the world.[2] This museum dedicated to the world\'s past and present cultures is the only one of its type in Latin America.[11] The museum has sixteen permanent display rooms and three rooms for temporary exhibits. Some of the rooms are dedicated prehistoric cultures remains such as cave paintings and implements associated with the origins of sedentary, agricultural societies. Other rooms are devoted to ancient Mesopotamia as well as ancient Greece and Rome.\r\nIn the Age of Exploration room, items from the time of initial European contact with the Americas are on display. For modern cultures, there are exhibits from all continents and some dedicated to cultures little-known in Mexico such as that of Samoa or New Ireland.[5][12] Since its founding, the museum has received over 12,000 pieces from around the world. These pieces include textiles, glass objects, porcelain, photographs, arms, kimonos, masks, jewelry and sculptures. Many of these objects are originals and some are quite old. The museum still receives donations of objects. One of the most recent is of board inlaid with mother-of-pearl from Vietnam.[5]', 'Museum of National Culture', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2020-08-12 23:11:13', '2020-08-12 23:11:13', '', 22, 'http://localhost/19_SOLN_cms_module/?p=25', 0, 'revision', '', 0),
(26, 1, '2020-08-12 23:11:40', '2020-08-12 23:11:40', 'This exhibition centre on the territory of the Kazan Kremlin is the first representative branch of the State Hermitage Museum in Russia (outside of its original location of course being in St Petersburg). Themed exhibitions with exhibits from the collection of the famous St Petersburg museum are regularly held here. The exposition changes approximately twice every year. In addition to its exhibitions, the centre has a rich educational program filled with interactive classes, quests, lectures and master classes.', 'Hermitage-Kazan', '', 'publish', 'closed', 'closed', '', 'hermitage-kazan', '', '', '2020-08-12 23:11:40', '2020-08-12 23:11:40', '', 0, 'http://localhost/19_SOLN_cms_module/?page_id=26', 0, 'page', '', 0),
(27, 1, '2020-08-12 23:11:35', '2020-08-12 23:11:35', 'hermitage-1', 'hermitage-1', 'hermitage-1', 'inherit', 'open', 'closed', '', 'hermitage-1', '', '', '2020-08-12 23:11:38', '2020-08-12 23:11:38', '', 26, 'http://localhost/19_SOLN_cms_module/wp-content/uploads/2020/08/hermitage-1.png', 0, 'attachment', 'image/png', 0),
(28, 1, '2020-08-12 23:11:40', '2020-08-12 23:11:40', 'This exhibition centre on the territory of the Kazan Kremlin is the first representative branch of the State Hermitage Museum in Russia (outside of its original location of course being in St Petersburg). Themed exhibitions with exhibits from the collection of the famous St Petersburg museum are regularly held here. The exposition changes approximately twice every year. In addition to its exhibitions, the centre has a rich educational program filled with interactive classes, quests, lectures and master classes.', 'Hermitage-Kazan', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2020-08-12 23:11:40', '2020-08-12 23:11:40', '', 26, 'http://localhost/19_SOLN_cms_module/?p=28', 0, 'revision', '', 0),
(29, 1, '2020-08-12 23:15:37', '2020-08-12 23:15:37', 'The Chak-Chak Museum is located within the historical Old Tatar Quarter complex. Inside the museum, in a homely atmosphere guests can drink fragrant tea from a samovar and taste Tatar desserts such as the traditional chak-chak, baursak and kak-tosh made from almonds, prepared using the recipe of Tatar enlightener Kayum Nasyri. While guests drink tea and sample desserts, the guides share stories and examples about the typical ancient Tatar peoples’ everyday life, traditions, customs, and of course, the secret to making the perfect chak-chak and other Tatar dishes.', 'Chak-Chak Museum', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-08-12 23:15:37', '2020-08-12 23:15:37', '', 13, 'http://localhost/19_SOLN_cms_module/?p=29', 0, 'revision', '', 0),
(30, 1, '2020-08-12 23:16:07', '2020-08-12 23:16:07', 'The National Museum of the Republic of Tatarstan (NMRT) is the largest museum in Tatarstan. It was founded as a Kazan Town Scientific and Industrial Museum in 1894 and opened on April 5, 1895. The basis of the museum is a private collection of 40 thousandth items of Andrei Fedorovich Likhachev (1832-90), a well-known regional archaeologist, numismatist, collector also the exhibits of scientific and industrial exhibition in 1890. Well-known scientists of Kazan University stood at the roots of the establishment of the museum and of the museum\'s collections formation, such as: A.A. Stuckenberg, N.P. Zagoskin, P.I. Krotov, N.F. Vysotsky, N.F. Catania and others. The museum occupies the former building of Gostinniy dvor (guest house), a monument of architecture and history of Russian Federation and the Republic of Tatarstan.\r\nThere are over 800 thousand units in the museum\'s collection.\r\n\r\nNowadays the museum is in the process of reconstruction, the project of which provides creation of a permanent exhibition on the area of more than 6 000 sq.m. 2001, the Cabinet of Ministers of the Republic of Tatarstan approved the scientific concept of creation of exposition of NM RT in Gostiny Dvor building; consisting of three main parts: \"History of Tatarstan, from ancient times to present days,\" \"Nature and a Man\", \"Culture: the interaction of cultures of peoples of Tatarstan\". Now the museum has the following exhibitions: \"Ancient History of Tatarstan\", \"Money, trade and trade routes in the Middle Ages\", \"Tatar Golden Treasures,\" \"Kazan Province in the XVIII century\", there are also temporary exhibitions.', 'National Museum of the Republic of Tatarstan', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2020-08-12 23:16:07', '2020-08-12 23:16:07', '', 19, 'http://localhost/19_SOLN_cms_module/?p=30', 0, 'revision', '', 0),
(31, 1, '2020-08-12 23:20:56', '2020-08-12 23:20:56', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut aliquet luctus ante quis pulvinar. Sed cursus sed dolor id bibendum. Nunc fringilla lobortis lorem, at malesuada sapien. Duis dui nibh, ullamcorper blandit neque vel, consectetur rutrum elit. Nam euismod lectus sapien, quis hendrerit nulla tincidunt at. Aliquam convallis urna sit amet nisl tempus vehicula. Fusce nec gravida turpis, sed pretium magna. Nunc lectus nibh, vehicula eu quam eu, laoreet consectetur velit. Aliquam erat volutpat.', 'Chak Chak News 1', '', 'publish', 'open', 'open', '', 'chak-chak-news-1', '', '', '2020-08-12 23:20:56', '2020-08-12 23:20:56', '', 0, 'http://localhost/19_SOLN_cms_module/?p=31', 0, 'post', '', 0),
(32, 1, '2020-08-12 23:20:50', '2020-08-12 23:20:50', 'chak-chak-museum-1', 'chak-chak-museum-1', 'chak-chak-museum-1', 'inherit', 'open', 'closed', '', 'chak-chak-museum-1', '', '', '2020-08-12 23:20:54', '2020-08-12 23:20:54', '', 31, 'http://localhost/19_SOLN_cms_module/wp-content/uploads/2020/08/chak-chak-museum-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2020-08-12 23:20:56', '2020-08-12 23:20:56', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut aliquet luctus ante quis pulvinar. Sed cursus sed dolor id bibendum. Nunc fringilla lobortis lorem, at malesuada sapien. Duis dui nibh, ullamcorper blandit neque vel, consectetur rutrum elit. Nam euismod lectus sapien, quis hendrerit nulla tincidunt at. Aliquam convallis urna sit amet nisl tempus vehicula. Fusce nec gravida turpis, sed pretium magna. Nunc lectus nibh, vehicula eu quam eu, laoreet consectetur velit. Aliquam erat volutpat.', 'Chak Chak News 1', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2020-08-12 23:20:56', '2020-08-12 23:20:56', '', 31, 'http://localhost/19_SOLN_cms_module/?p=33', 0, 'revision', '', 0),
(34, 1, '2020-08-12 23:21:26', '2020-08-12 23:21:26', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut aliquet luctus ante quis pulvinar. Sed cursus sed dolor id bibendum. Nunc fringilla lobortis lorem, at malesuada sapien. Duis dui nibh, ullamcorper blandit neque vel, consectetur rutrum elit. Nam euismod lectus sapien, quis hendrerit nulla tincidunt at. Aliquam convallis urna sit amet nisl tempus vehicula. Fusce nec gravida turpis, sed pretium magna. Nunc lectus nibh, vehicula eu quam eu, laoreet consectetur velit. Aliquam erat volutpat.', 'Chak Chak News 2', '', 'publish', 'open', 'open', '', 'chak-chak-news-2', '', '', '2020-08-12 23:21:26', '2020-08-12 23:21:26', '', 0, 'http://localhost/19_SOLN_cms_module/?p=34', 0, 'post', '', 0),
(35, 1, '2020-08-12 23:21:21', '2020-08-12 23:21:21', 'chak-chak-museum-3', 'chak-chak-museum-3', 'chak-chak-museum-3', 'inherit', 'open', 'closed', '', 'chak-chak-museum-3', '', '', '2020-08-12 23:21:24', '2020-08-12 23:21:24', '', 34, 'http://localhost/19_SOLN_cms_module/wp-content/uploads/2020/08/chak-chak-museum-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2020-08-12 23:21:26', '2020-08-12 23:21:26', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut aliquet luctus ante quis pulvinar. Sed cursus sed dolor id bibendum. Nunc fringilla lobortis lorem, at malesuada sapien. Duis dui nibh, ullamcorper blandit neque vel, consectetur rutrum elit. Nam euismod lectus sapien, quis hendrerit nulla tincidunt at. Aliquam convallis urna sit amet nisl tempus vehicula. Fusce nec gravida turpis, sed pretium magna. Nunc lectus nibh, vehicula eu quam eu, laoreet consectetur velit. Aliquam erat volutpat.', 'Chak Chak News 2', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2020-08-12 23:21:26', '2020-08-12 23:21:26', '', 34, 'http://localhost/19_SOLN_cms_module/?p=36', 0, 'revision', '', 0),
(37, 1, '2020-08-12 23:22:16', '2020-08-12 23:22:16', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut aliquet luctus ante quis pulvinar. Sed cursus sed dolor id bibendum. Nunc fringilla lobortis lorem, at malesuada sapien. Duis dui nibh, ullamcorper blandit neque vel, consectetur rutrum elit. Nam euismod lectus sapien, quis hendrerit nulla tincidunt at. Aliquam convallis urna sit amet nisl tempus vehicula. Fusce nec gravida turpis, sed pretium magna. Nunc lectus nibh, vehicula eu quam eu, laoreet consectetur velit. Aliquam erat volutpat.', 'Museum News 1', '', 'publish', 'open', 'open', '', 'museum-news-1', '', '', '2020-08-12 23:22:16', '2020-08-12 23:22:16', '', 0, 'http://localhost/19_SOLN_cms_module/?p=37', 0, 'post', '', 0),
(38, 1, '2020-08-12 23:22:10', '2020-08-12 23:22:10', 'museum-of-islamic-culture-3', 'museum-of-islamic-culture-3', 'museum-of-islamic-culture-3', 'inherit', 'open', 'closed', '', 'museum-of-islamic-culture-3', '', '', '2020-08-12 23:22:14', '2020-08-12 23:22:14', '', 37, 'http://localhost/19_SOLN_cms_module/wp-content/uploads/2020/08/museum-of-islamic-culture-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2020-08-12 23:22:16', '2020-08-12 23:22:16', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut aliquet luctus ante quis pulvinar. Sed cursus sed dolor id bibendum. Nunc fringilla lobortis lorem, at malesuada sapien. Duis dui nibh, ullamcorper blandit neque vel, consectetur rutrum elit. Nam euismod lectus sapien, quis hendrerit nulla tincidunt at. Aliquam convallis urna sit amet nisl tempus vehicula. Fusce nec gravida turpis, sed pretium magna. Nunc lectus nibh, vehicula eu quam eu, laoreet consectetur velit. Aliquam erat volutpat.', 'Museum News 1', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2020-08-12 23:22:16', '2020-08-12 23:22:16', '', 37, 'http://localhost/19_SOLN_cms_module/?p=39', 0, 'revision', '', 0),
(40, 1, '2020-08-12 23:22:38', '2020-08-12 23:22:38', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut aliquet luctus ante quis pulvinar. Sed cursus sed dolor id bibendum. Nunc fringilla lobortis lorem, at malesuada sapien. Duis dui nibh, ullamcorper blandit neque vel, consectetur rutrum elit. Nam euismod lectus sapien, quis hendrerit nulla tincidunt at. Aliquam convallis urna sit amet nisl tempus vehicula. Fusce nec gravida turpis, sed pretium magna. Nunc lectus nibh, vehicula eu quam eu, laoreet consectetur velit. Aliquam erat volutpat.', 'Site update 1', '', 'publish', 'open', 'open', '', 'site-update-1', '', '', '2020-08-12 23:22:38', '2020-08-12 23:22:38', '', 0, 'http://localhost/19_SOLN_cms_module/?p=40', 0, 'post', '', 0),
(41, 1, '2020-08-12 23:22:33', '2020-08-12 23:22:33', 'museum-of-islamic-culture-4', 'museum-of-islamic-culture-4', 'museum-of-islamic-culture-4', 'inherit', 'open', 'closed', '', 'museum-of-islamic-culture-4', '', '', '2020-08-12 23:22:37', '2020-08-12 23:22:37', '', 40, 'http://localhost/19_SOLN_cms_module/wp-content/uploads/2020/08/museum-of-islamic-culture-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2020-08-12 23:22:38', '2020-08-12 23:22:38', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut aliquet luctus ante quis pulvinar. Sed cursus sed dolor id bibendum. Nunc fringilla lobortis lorem, at malesuada sapien. Duis dui nibh, ullamcorper blandit neque vel, consectetur rutrum elit. Nam euismod lectus sapien, quis hendrerit nulla tincidunt at. Aliquam convallis urna sit amet nisl tempus vehicula. Fusce nec gravida turpis, sed pretium magna. Nunc lectus nibh, vehicula eu quam eu, laoreet consectetur velit. Aliquam erat volutpat.', 'Site update 1', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2020-08-12 23:22:38', '2020-08-12 23:22:38', '', 40, 'http://localhost/19_SOLN_cms_module/?p=42', 0, 'revision', '', 0),
(43, 1, '2020-08-12 23:23:25', '2020-08-12 23:23:25', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut aliquet luctus ante quis pulvinar. Sed cursus sed dolor id bibendum. Nunc fringilla lobortis lorem, at malesuada sapien. Duis dui nibh, ullamcorper blandit neque vel, consectetur rutrum elit. Nam euismod lectus sapien, quis hendrerit nulla tincidunt at. Aliquam convallis urna sit amet nisl tempus vehicula. Fusce nec gravida turpis, sed pretium magna. Nunc lectus nibh, vehicula eu quam eu, laoreet consectetur velit. Aliquam erat volutpat.', 'Tatarstan News 1', '', 'publish', 'open', 'open', '', 'tatarstan-news-1', '', '', '2020-08-12 23:23:25', '2020-08-12 23:23:25', '', 0, 'http://localhost/19_SOLN_cms_module/?p=43', 0, 'post', '', 0),
(44, 1, '2020-08-12 23:23:02', '2020-08-12 23:23:02', 'national-museum-of-the-republic-of-tatarstan-1', 'national-museum-of-the-republic-of-tatarstan-1', 'national-museum-of-the-republic-of-tatarstan-1', 'inherit', 'open', 'closed', '', 'national-museum-of-the-republic-of-tatarstan-1', '', '', '2020-08-12 23:23:09', '2020-08-12 23:23:09', '', 43, 'http://localhost/19_SOLN_cms_module/wp-content/uploads/2020/08/national-museum-of-the-republic-of-tatarstan-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2020-08-12 23:23:25', '2020-08-12 23:23:25', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut aliquet luctus ante quis pulvinar. Sed cursus sed dolor id bibendum. Nunc fringilla lobortis lorem, at malesuada sapien. Duis dui nibh, ullamcorper blandit neque vel, consectetur rutrum elit. Nam euismod lectus sapien, quis hendrerit nulla tincidunt at. Aliquam convallis urna sit amet nisl tempus vehicula. Fusce nec gravida turpis, sed pretium magna. Nunc lectus nibh, vehicula eu quam eu, laoreet consectetur velit. Aliquam erat volutpat.', 'Tatarstan News 1', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2020-08-12 23:23:25', '2020-08-12 23:23:25', '', 43, 'http://localhost/19_SOLN_cms_module/?p=45', 0, 'revision', '', 0),
(46, 1, '2020-08-12 23:23:57', '2020-08-12 23:23:57', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut aliquet luctus ante quis pulvinar. Sed cursus sed dolor id bibendum. Nunc fringilla lobortis lorem, at malesuada sapien. Duis dui nibh, ullamcorper blandit neque vel, consectetur rutrum elit. Nam euismod lectus sapien, quis hendrerit nulla tincidunt at. Aliquam convallis urna sit amet nisl tempus vehicula. Fusce nec gravida turpis, sed pretium magna. Nunc lectus nibh, vehicula eu quam eu, laoreet consectetur velit. Aliquam erat volutpat.', 'Tartastan News  2', '', 'publish', 'open', 'open', '', 'tartastan-news-2', '', '', '2020-08-12 23:23:57', '2020-08-12 23:23:57', '', 0, 'http://localhost/19_SOLN_cms_module/?p=46', 0, 'post', '', 0),
(47, 1, '2020-08-12 23:23:50', '2020-08-12 23:23:50', 'national-museum-of-the-republic-of-tatarstan-3', 'national-museum-of-the-republic-of-tatarstan-3', 'national-museum-of-the-republic-of-tatarstan-3', 'inherit', 'open', 'closed', '', 'national-museum-of-the-republic-of-tatarstan-3', '', '', '2020-08-12 23:23:55', '2020-08-12 23:23:55', '', 46, 'http://localhost/19_SOLN_cms_module/wp-content/uploads/2020/08/national-museum-of-the-republic-of-tatarstan-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2020-08-12 23:23:57', '2020-08-12 23:23:57', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut aliquet luctus ante quis pulvinar. Sed cursus sed dolor id bibendum. Nunc fringilla lobortis lorem, at malesuada sapien. Duis dui nibh, ullamcorper blandit neque vel, consectetur rutrum elit. Nam euismod lectus sapien, quis hendrerit nulla tincidunt at. Aliquam convallis urna sit amet nisl tempus vehicula. Fusce nec gravida turpis, sed pretium magna. Nunc lectus nibh, vehicula eu quam eu, laoreet consectetur velit. Aliquam erat volutpat.', 'Tartastan News  2', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2020-08-12 23:23:57', '2020-08-12 23:23:57', '', 46, 'http://localhost/19_SOLN_cms_module/?p=48', 0, 'revision', '', 0),
(49, 1, '2020-08-12 23:24:49', '2020-08-12 23:24:49', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut aliquet luctus ante quis pulvinar. Sed cursus sed dolor id bibendum. Nunc fringilla lobortis lorem, at malesuada sapien. Duis dui nibh, ullamcorper blandit neque vel, consectetur rutrum elit. Nam euismod lectus sapien, quis hendrerit nulla tincidunt at. Aliquam convallis urna sit amet nisl tempus vehicula. Fusce nec gravida turpis, sed pretium magna. Nunc lectus nibh, vehicula eu quam eu, laoreet consectetur velit. Aliquam erat volutpat.', 'Seasonal Events 1', '', 'publish', 'open', 'open', '', 'seasonal-events-1', '', '', '2020-08-12 23:24:49', '2020-08-12 23:24:49', '', 0, 'http://localhost/19_SOLN_cms_module/?p=49', 0, 'post', '', 0),
(50, 1, '2020-08-12 23:24:39', '2020-08-12 23:24:39', 'kazan_final_cover', 'kazan_final_cover', 'kazan_final_cover', 'inherit', 'open', 'closed', '', 'kazan_final_cover', '', '', '2020-08-12 23:24:44', '2020-08-12 23:24:44', '', 49, 'http://localhost/19_SOLN_cms_module/wp-content/uploads/2020/08/kazan_final_cover.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2020-08-12 23:24:49', '2020-08-12 23:24:49', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut aliquet luctus ante quis pulvinar. Sed cursus sed dolor id bibendum. Nunc fringilla lobortis lorem, at malesuada sapien. Duis dui nibh, ullamcorper blandit neque vel, consectetur rutrum elit. Nam euismod lectus sapien, quis hendrerit nulla tincidunt at. Aliquam convallis urna sit amet nisl tempus vehicula. Fusce nec gravida turpis, sed pretium magna. Nunc lectus nibh, vehicula eu quam eu, laoreet consectetur velit. Aliquam erat volutpat.', 'Seasonal Events 1', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2020-08-12 23:24:49', '2020-08-12 23:24:49', '', 49, 'http://localhost/19_SOLN_cms_module/?p=51', 0, 'revision', '', 0),
(52, 1, '2020-08-12 23:25:08', '2020-08-12 23:25:08', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut aliquet luctus ante quis pulvinar. Sed cursus sed dolor id bibendum. Nunc fringilla lobortis lorem, at malesuada sapien. Duis dui nibh, ullamcorper blandit neque vel, consectetur rutrum elit. Nam euismod lectus sapien, quis hendrerit nulla tincidunt at. Aliquam convallis urna sit amet nisl tempus vehicula. Fusce nec gravida turpis, sed pretium magna. Nunc lectus nibh, vehicula eu quam eu, laoreet consectetur velit. Aliquam erat volutpat.', 'Seasonal Events 2', '', 'publish', 'open', 'open', '', 'seasonal-events-2', '', '', '2020-08-12 23:25:08', '2020-08-12 23:25:08', '', 0, 'http://localhost/19_SOLN_cms_module/?p=52', 0, 'post', '', 0),
(53, 1, '2020-08-12 23:25:00', '2020-08-12 23:25:00', 'kazan_final_carrousel_1', 'kazan_final_carrousel_1', 'kazan_final_carrousel_1', 'inherit', 'open', 'closed', '', 'kazan_final_carrousel_1', '', '', '2020-08-12 23:25:04', '2020-08-12 23:25:04', '', 52, 'http://localhost/19_SOLN_cms_module/wp-content/uploads/2020/08/kazan_final_carrousel_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2020-08-12 23:25:08', '2020-08-12 23:25:08', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut aliquet luctus ante quis pulvinar. Sed cursus sed dolor id bibendum. Nunc fringilla lobortis lorem, at malesuada sapien. Duis dui nibh, ullamcorper blandit neque vel, consectetur rutrum elit. Nam euismod lectus sapien, quis hendrerit nulla tincidunt at. Aliquam convallis urna sit amet nisl tempus vehicula. Fusce nec gravida turpis, sed pretium magna. Nunc lectus nibh, vehicula eu quam eu, laoreet consectetur velit. Aliquam erat volutpat.', 'Seasonal Events 2', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2020-08-12 23:25:08', '2020-08-12 23:25:08', '', 52, 'http://localhost/19_SOLN_cms_module/?p=54', 0, 'revision', '', 0),
(55, 1, '2020-08-12 23:25:30', '2020-08-12 23:25:30', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut aliquet luctus ante quis pulvinar. Sed cursus sed dolor id bibendum. Nunc fringilla lobortis lorem, at malesuada sapien. Duis dui nibh, ullamcorper blandit neque vel, consectetur rutrum elit. Nam euismod lectus sapien, quis hendrerit nulla tincidunt at. Aliquam convallis urna sit amet nisl tempus vehicula. Fusce nec gravida turpis, sed pretium magna. Nunc lectus nibh, vehicula eu quam eu, laoreet consectetur velit. Aliquam erat volutpat.', 'Seasonal Events 3', '', 'publish', 'open', 'open', '', 'seasonal-events-3', '', '', '2020-08-12 23:25:30', '2020-08-12 23:25:30', '', 0, 'http://localhost/19_SOLN_cms_module/?p=55', 0, 'post', '', 0),
(56, 1, '2020-08-12 23:25:24', '2020-08-12 23:25:24', 'winter-in-kazan-russia-1-small', 'winter-in-kazan-russia-1-small', 'winter-in-kazan-russia-1-small', 'inherit', 'open', 'closed', '', 'winter-in-kazan-russia-1-small', '', '', '2020-08-12 23:25:28', '2020-08-12 23:25:28', '', 55, 'http://localhost/19_SOLN_cms_module/wp-content/uploads/2020/08/winter-in-kazan-russia-1-small.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2020-08-12 23:25:30', '2020-08-12 23:25:30', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut aliquet luctus ante quis pulvinar. Sed cursus sed dolor id bibendum. Nunc fringilla lobortis lorem, at malesuada sapien. Duis dui nibh, ullamcorper blandit neque vel, consectetur rutrum elit. Nam euismod lectus sapien, quis hendrerit nulla tincidunt at. Aliquam convallis urna sit amet nisl tempus vehicula. Fusce nec gravida turpis, sed pretium magna. Nunc lectus nibh, vehicula eu quam eu, laoreet consectetur velit. Aliquam erat volutpat.', 'Seasonal Events 3', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2020-08-12 23:25:30', '2020-08-12 23:25:30', '', 55, 'http://localhost/19_SOLN_cms_module/?p=57', 0, 'revision', '', 0),
(58, 1, '2020-08-12 23:26:05', '2020-08-12 23:26:05', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut aliquet luctus ante quis pulvinar. Sed cursus sed dolor id bibendum. Nunc fringilla lobortis lorem, at malesuada sapien. Duis dui nibh, ullamcorper blandit neque vel, consectetur rutrum elit. Nam euismod lectus sapien, quis hendrerit nulla tincidunt at. Aliquam convallis urna sit amet nisl tempus vehicula. Fusce nec gravida turpis, sed pretium magna. Nunc lectus nibh, vehicula eu quam eu, laoreet consectetur velit. Aliquam erat volutpat.', 'About Soviet Lifestyle', '', 'publish', 'open', 'open', '', 'about-soviet-lifestyle', '', '', '2020-08-12 23:26:05', '2020-08-12 23:26:05', '', 0, 'http://localhost/19_SOLN_cms_module/?p=58', 0, 'post', '', 0),
(59, 1, '2020-08-12 23:25:59', '2020-08-12 23:25:59', 'soviet-lifestyle-museum-3', 'soviet-lifestyle-museum-3', 'soviet-lifestyle-museum-3', 'inherit', 'open', 'closed', '', 'soviet-lifestyle-museum-3', '', '', '2020-08-12 23:26:02', '2020-08-12 23:26:02', '', 58, 'http://localhost/19_SOLN_cms_module/wp-content/uploads/2020/08/soviet-lifestyle-museum-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2020-08-12 23:26:05', '2020-08-12 23:26:05', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut aliquet luctus ante quis pulvinar. Sed cursus sed dolor id bibendum. Nunc fringilla lobortis lorem, at malesuada sapien. Duis dui nibh, ullamcorper blandit neque vel, consectetur rutrum elit. Nam euismod lectus sapien, quis hendrerit nulla tincidunt at. Aliquam convallis urna sit amet nisl tempus vehicula. Fusce nec gravida turpis, sed pretium magna. Nunc lectus nibh, vehicula eu quam eu, laoreet consectetur velit. Aliquam erat volutpat.', 'About Soviet Lifestyle', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2020-08-12 23:26:05', '2020-08-12 23:26:05', '', 58, 'http://localhost/19_SOLN_cms_module/?p=60', 0, 'revision', '', 0),
(61, 1, '2020-08-12 23:34:32', '2020-08-12 23:34:32', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-08-12 23:38:13', '2020-08-12 23:38:13', '', 0, 'http://localhost/19_SOLN_cms_module/?p=61', 1, 'nav_menu_item', '', 0),
(62, 1, '2020-08-12 23:34:32', '2020-08-12 23:34:32', ' ', '', '', 'publish', 'closed', 'closed', '', '62', '', '', '2020-08-12 23:38:13', '2020-08-12 23:38:13', '', 0, 'http://localhost/19_SOLN_cms_module/?p=62', 6, 'nav_menu_item', '', 0),
(63, 1, '2020-08-12 23:34:32', '2020-08-12 23:34:32', ' ', '', '', 'publish', 'closed', 'closed', '', '63', '', '', '2020-08-12 23:38:13', '2020-08-12 23:38:13', '', 0, 'http://localhost/19_SOLN_cms_module/?p=63', 7, 'nav_menu_item', '', 0),
(64, 1, '2020-08-12 23:34:32', '2020-08-12 23:34:32', ' ', '', '', 'publish', 'closed', 'closed', '', '64', '', '', '2020-08-12 23:38:13', '2020-08-12 23:38:13', '', 0, 'http://localhost/19_SOLN_cms_module/?p=64', 8, 'nav_menu_item', '', 0),
(65, 1, '2020-08-12 23:34:32', '2020-08-12 23:34:32', ' ', '', '', 'publish', 'closed', 'closed', '', '65', '', '', '2020-08-12 23:38:13', '2020-08-12 23:38:13', '', 0, 'http://localhost/19_SOLN_cms_module/?p=65', 5, 'nav_menu_item', '', 0),
(66, 1, '2020-08-12 23:34:32', '2020-08-12 23:34:32', ' ', '', '', 'publish', 'closed', 'closed', '', '66', '', '', '2020-08-12 23:38:13', '2020-08-12 23:38:13', '', 0, 'http://localhost/19_SOLN_cms_module/?p=66', 4, 'nav_menu_item', '', 0),
(67, 1, '2020-08-12 23:34:33', '2020-08-12 23:34:33', ' ', '', '', 'publish', 'closed', 'closed', '', '67', '', '', '2020-08-12 23:38:13', '2020-08-12 23:38:13', '', 0, 'http://localhost/19_SOLN_cms_module/?p=67', 3, 'nav_menu_item', '', 0),
(68, 1, '2020-08-12 23:37:27', '2020-08-12 23:37:27', '', 'Museums', '', 'publish', 'closed', 'closed', '', 'museums', '', '', '2020-08-12 23:38:13', '2020-08-12 23:38:13', '', 0, 'http://localhost/19_SOLN_cms_module/?p=68', 2, 'nav_menu_item', '', 0),
(69, 1, '2020-08-12 23:38:13', '2020-08-12 23:38:13', ' ', '', '', 'publish', 'closed', 'closed', '', '69', '', '', '2020-08-12 23:38:13', '2020-08-12 23:38:13', '', 1, 'http://localhost/19_SOLN_cms_module/?p=69', 9, 'nav_menu_item', '', 0),
(70, 1, '2020-08-12 23:38:14', '2020-08-12 23:38:14', ' ', '', '', 'publish', 'closed', 'closed', '', '70', '', '', '2020-08-12 23:38:14', '2020-08-12 23:38:14', '', 0, 'http://localhost/19_SOLN_cms_module/?p=70', 12, 'nav_menu_item', '', 0),
(71, 1, '2020-08-12 23:38:14', '2020-08-12 23:38:14', ' ', '', '', 'publish', 'closed', 'closed', '', '71', '', '', '2020-08-12 23:38:14', '2020-08-12 23:38:14', '', 0, 'http://localhost/19_SOLN_cms_module/?p=71', 11, 'nav_menu_item', '', 0),
(72, 1, '2020-08-12 23:38:13', '2020-08-12 23:38:13', ' ', '', '', 'publish', 'closed', 'closed', '', '72', '', '', '2020-08-12 23:38:13', '2020-08-12 23:38:13', '', 0, 'http://localhost/19_SOLN_cms_module/?p=72', 10, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- 테이블 구조 `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 테이블 구조 `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 테이블의 덤프 데이터 `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'News', 'news', 0),
(2, 'Chak-Chak Museum', 'chak-chak-museum', 0),
(3, 'Museum of National Culture', 'museum-of-national-culture', 0),
(4, 'Soviet Lifestyle Museum', 'soviet-lifestyle-museum', 0),
(5, 'National Museum of the Republic of Tatarstan', 'the-national-museum-of-the-republic-of-tatarstan', 0),
(6, 'Site Updates', 'site-updates', 0),
(7, 'Seasonal Events', 'seasonal-events', 0),
(8, 'Main Menu', 'main-menu', 0);

-- --------------------------------------------------------

--
-- 테이블 구조 `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 테이블의 덤프 데이터 `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(31, 2, 0),
(34, 2, 0),
(37, 3, 0),
(40, 6, 0),
(43, 5, 0),
(46, 5, 0),
(49, 7, 0),
(52, 7, 0),
(55, 7, 0),
(58, 4, 0),
(61, 8, 0),
(62, 8, 0),
(63, 8, 0),
(64, 8, 0),
(65, 8, 0),
(66, 8, 0),
(67, 8, 0),
(68, 8, 0),
(69, 8, 0),
(70, 8, 0),
(71, 8, 0),
(72, 8, 0);

-- --------------------------------------------------------

--
-- 테이블 구조 `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 테이블의 덤프 데이터 `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 1, 2),
(3, 3, 'category', '', 1, 1),
(4, 4, 'category', '', 1, 1),
(5, 5, 'category', '', 1, 2),
(6, 6, 'category', '', 1, 1),
(7, 7, 'category', '', 1, 3),
(8, 8, 'nav_menu', '', 0, 12);

-- --------------------------------------------------------

--
-- 테이블 구조 `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 테이블의 덤프 데이터 `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_user-settings', 'libraryContent=browse'),
(18, 1, 'wp_user-settings-time', '1597273535'),
(19, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(24, 2, 'nickname', 'editor'),
(25, 2, 'first_name', ''),
(26, 2, 'last_name', ''),
(27, 2, 'description', ''),
(28, 2, 'rich_editing', 'true'),
(29, 2, 'syntax_highlighting', 'true'),
(30, 2, 'comment_shortcuts', 'false'),
(31, 2, 'admin_color', 'fresh'),
(32, 2, 'use_ssl', '0'),
(33, 2, 'show_admin_bar_front', 'true'),
(34, 2, 'locale', ''),
(35, 2, 'wp_capabilities', 'a:1:{s:6:\"editor\";b:1;}'),
(36, 2, 'wp_user_level', '7'),
(37, 2, 'dismissed_wp_pointers', ''),
(40, 1, 'last_login_time', '2020-08-14 04:18:15'),
(42, 1, 'nav_menu_recently_edited', '8'),
(43, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(44, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(52, 1, 'session_tokens', 'a:2:{s:64:\"aabef1da02ebaf7700299da37fc91ae18bc2556fdc805923ad778c58caf24a8c\";a:4:{s:10:\"expiration\";i:1597494949;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36\";s:5:\"login\";i:1597322149;}s:64:\"e945cd6c5e7d11f78a34f5910993a501275fb96be78bd0c569c427b79dd7fd21\";a:4:{s:10:\"expiration\";i:1597551495;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36\";s:5:\"login\";i:1597378695;}}'),
(53, 1, 'wp_yoast_notifications', 'a:1:{i:0;a:2:{s:7:\"message\";s:543:\"Yoast SEO and Advanced Custom Fields can work together a lot better by adding a helper plugin. Please install <a href=\"http://localhost/19_SOLN_cms_module/wp-admin/update.php?action=install-plugin&amp;plugin=acf-content-analysis-for-yoast-seo&amp;_wpnonce=c245bb1c49\">ACF Content Analysis for Yoast SEO</a> to make your life better. <a href=\"https://wordpress.org/plugins/acf-content-analysis-for-yoast-seo/\" aria-label=\"More information about ACF Content Analysis for Yoast SEO\" target=\"_blank\" rel=\"noopener noreferrer\">More information</a>.\";s:7:\"options\";a:9:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:41:\"wpseo-suggested-plugin-yoast-acf-analysis\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";a:1:{i:0;s:15:\"install_plugins\";}s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}');

-- --------------------------------------------------------

--
-- 테이블 구조 `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 테이블의 덤프 데이터 `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BFHBwqHuK/ADeiznFdnS21QArTrOcT0', 'admin', 'admin@example.com', 'http://localhost/19_SOLN_cms_module', '2020-08-12 23:05:24', '', 0, 'admin'),
(2, 'editor', '$P$BGruXLlPJdu.xgWZdrgE5lZR.oX7Mh0', 'editor', 'editor@example.com', '', '2020-08-13 08:30:20', '1597307422:$P$B6RPtj5zcX0X2SA.zahMLD3y.vcGlh1', 0, 'editor');

-- --------------------------------------------------------

--
-- 테이블 구조 `wp_yoast_seo_links`
--

CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `target_post_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 테이블 구조 `wp_yoast_seo_meta`
--

CREATE TABLE `wp_yoast_seo_meta` (
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `internal_link_count` int(10) UNSIGNED DEFAULT NULL,
  `incoming_link_count` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `wp_aiowps_events`
--
ALTER TABLE `wp_aiowps_events`
  ADD PRIMARY KEY (`id`);

--
-- 테이블의 인덱스 `wp_aiowps_failed_logins`
--
ALTER TABLE `wp_aiowps_failed_logins`
  ADD PRIMARY KEY (`id`);

--
-- 테이블의 인덱스 `wp_aiowps_global_meta`
--
ALTER TABLE `wp_aiowps_global_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- 테이블의 인덱스 `wp_aiowps_login_activity`
--
ALTER TABLE `wp_aiowps_login_activity`
  ADD PRIMARY KEY (`id`);

--
-- 테이블의 인덱스 `wp_aiowps_login_lockdown`
--
ALTER TABLE `wp_aiowps_login_lockdown`
  ADD PRIMARY KEY (`id`);

--
-- 테이블의 인덱스 `wp_aiowps_permanent_block`
--
ALTER TABLE `wp_aiowps_permanent_block`
  ADD PRIMARY KEY (`id`);

--
-- 테이블의 인덱스 `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- 테이블의 인덱스 `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- 테이블의 인덱스 `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- 테이블의 인덱스 `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- 테이블의 인덱스 `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- 테이블의 인덱스 `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- 테이블의 인덱스 `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- 테이블의 인덱스 `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- 테이블의 인덱스 `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- 테이블의 인덱스 `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- 테이블의 인덱스 `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- 테이블의 인덱스 `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- 테이블의 인덱스 `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`);

--
-- 테이블의 인덱스 `wp_yoast_seo_meta`
--
ALTER TABLE `wp_yoast_seo_meta`
  ADD UNIQUE KEY `object_id` (`object_id`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `wp_aiowps_events`
--
ALTER TABLE `wp_aiowps_events`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `wp_aiowps_failed_logins`
--
ALTER TABLE `wp_aiowps_failed_logins`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 테이블의 AUTO_INCREMENT `wp_aiowps_global_meta`
--
ALTER TABLE `wp_aiowps_global_meta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `wp_aiowps_login_activity`
--
ALTER TABLE `wp_aiowps_login_activity`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- 테이블의 AUTO_INCREMENT `wp_aiowps_login_lockdown`
--
ALTER TABLE `wp_aiowps_login_lockdown`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `wp_aiowps_permanent_block`
--
ALTER TABLE `wp_aiowps_permanent_block`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 테이블의 AUTO_INCREMENT `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- 테이블의 AUTO_INCREMENT `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- 테이블의 AUTO_INCREMENT `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- 테이블의 AUTO_INCREMENT `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 테이블의 AUTO_INCREMENT `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 테이블의 AUTO_INCREMENT `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- 테이블의 AUTO_INCREMENT `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 테이블의 AUTO_INCREMENT `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
