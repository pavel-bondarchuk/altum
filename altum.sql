-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 16, 2022 at 09:16 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `altum`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2022-03-09 09:17:02', '2022-03-09 09:17:02', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://altum.test', 'yes'),
(2, 'home', 'http://altum.test', 'yes'),
(3, 'blogname', 'altum', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'mail@mail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '20', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '20', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:6:{i:0;s:21:\"polylang/polylang.php\";i:1;s:29:\"acf-extended/acf-extended.php\";i:2;s:16:\"acf5.9.3/acf.php\";i:3;s:23:\"altum-cpt/altum-cpt.php\";i:4;s:33:\"classic-editor/classic-editor.php\";i:5;s:23:\"loco-translate/loco.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'altum', 'yes'),
(41, 'stylesheet', 'altum', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '51917', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '21', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '13', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1662369421', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'initial_db_version', '48748', 'yes'),
(96, 'wp_user_roles', 'a:6:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:10:\"loco_admin\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:10:\"translator\";a:2:{s:4:\"name\";s:10:\"Translator\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:10:\"loco_admin\";b:1;}}}', 'yes'),
(97, 'fresh_site', '0', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:7:{i:1647422222;a:3:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1647422223;a:4:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1647422236;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1647422237;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1647422444;a:1:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1647508622;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(119, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1646817950;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(127, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:13:\"mail@mail.com\";s:7:\"version\";s:5:\"5.9.2\";s:9:\"timestamp\";i:1646993457;}', 'no'),
(129, '_site_transient_timeout_browser_6b9a00393fb1607b0ada13520f814ab5', '1647422236', 'no'),
(130, '_site_transient_browser_6b9a00393fb1607b0ada13520f814ab5', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"99.0.4844.51\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(131, '_site_transient_timeout_php_check_7841c854be39099ac1d9b61bb411ecb0', '1647422237', 'no'),
(132, '_site_transient_php_check_7841c854be39099ac1d9b61bb411ecb0', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(149, 'finished_updating_comment_type', '1', 'yes'),
(151, 'widget_block', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(152, 'auto_update_core_dev', 'enabled', 'yes'),
(153, 'auto_update_core_minor', 'enabled', 'yes'),
(154, 'auto_update_core_major', 'unset', 'yes'),
(155, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(156, 'db_upgraded', '', 'yes'),
(160, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:21:\"HTTPS request failed.\";}}', 'yes'),
(161, 'can_compress_scripts', '1', 'no'),
(162, 'current_theme', 'altum', 'yes'),
(163, 'theme_mods_altum', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:6:\"menu-1\";i:2;s:6:\"menu-2\";i:8;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:13;}', 'yes'),
(164, 'theme_switched', '', 'yes'),
(169, 'recently_activated', 'a:0:{}', 'yes'),
(300, 'category_children', 'a:0:{}', 'yes'),
(373, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(435, 'polylang', 'a:15:{s:7:\"browser\";i:0;s:7:\"rewrite\";i:1;s:12:\"hide_default\";i:1;s:10:\"force_lang\";i:1;s:13:\"redirect_lang\";i:0;s:13:\"media_support\";b:0;s:9:\"uninstall\";i:0;s:4:\"sync\";a:0:{}s:10:\"post_types\";a:0:{}s:10:\"taxonomies\";a:0:{}s:7:\"domains\";a:0:{}s:7:\"version\";s:5:\"3.1.4\";s:16:\"first_activation\";i:1646835733;s:12:\"default_lang\";s:2:\"en\";s:9:\"nav_menus\";a:1:{s:5:\"altum\";a:2:{s:6:\"menu-1\";a:2:{s:2:\"en\";i:2;s:2:\"uk\";i:0;}s:6:\"menu-2\";a:2:{s:2:\"en\";i:8;s:2:\"uk\";i:0;}}}}', 'yes'),
(436, 'polylang_wpml_strings', 'a:0:{}', 'yes'),
(437, 'widget_polylang', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(442, 'rewrite_rules', 'a:223:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:53:\"^(uk)/wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:92:\"index.php?lang=$matches[1]&sitemap=$matches[2]&sitemap-subtype=$matches[3]&paged=$matches[4]\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:39:\"^(uk)/wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:64:\"index.php?lang=$matches[1]&sitemap=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:11:\"speakers/?$\";s:27:\"index.php?post_type=speaker\";s:28:\"speakers/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=speaker&paged=$matches[1]\";s:52:\"(uk)/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?lang=$matches[1]&category_name=$matches[2]&feed=$matches[3]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:47:\"(uk)/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?lang=$matches[1]&category_name=$matches[2]&feed=$matches[3]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:28:\"(uk)/category/(.+?)/embed/?$\";s:63:\"index.php?lang=$matches[1]&category_name=$matches[2]&embed=true\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:40:\"(uk)/category/(.+?)/page/?([0-9]{1,})/?$\";s:70:\"index.php?lang=$matches[1]&category_name=$matches[2]&paged=$matches[3]\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:22:\"(uk)/category/(.+?)/?$\";s:52:\"index.php?lang=$matches[1]&category_name=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:49:\"(uk)/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&tag=$matches[2]&feed=$matches[3]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:44:\"(uk)/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&tag=$matches[2]&feed=$matches[3]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:25:\"(uk)/tag/([^/]+)/embed/?$\";s:53:\"index.php?lang=$matches[1]&tag=$matches[2]&embed=true\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:37:\"(uk)/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:60:\"index.php?lang=$matches[1]&tag=$matches[2]&paged=$matches[3]\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:19:\"(uk)/tag/([^/]+)/?$\";s:42:\"index.php?lang=$matches[1]&tag=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:50:\"(uk)/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&post_format=$matches[2]&feed=$matches[3]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=en&post_format=$matches[1]&feed=$matches[2]\";s:45:\"(uk)/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&post_format=$matches[2]&feed=$matches[3]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=en&post_format=$matches[1]&feed=$matches[2]\";s:26:\"(uk)/type/([^/]+)/embed/?$\";s:61:\"index.php?lang=$matches[1]&post_format=$matches[2]&embed=true\";s:21:\"type/([^/]+)/embed/?$\";s:52:\"index.php?lang=en&post_format=$matches[1]&embed=true\";s:38:\"(uk)/type/([^/]+)/page/?([0-9]{1,})/?$\";s:68:\"index.php?lang=$matches[1]&post_format=$matches[2]&paged=$matches[3]\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:59:\"index.php?lang=en&post_format=$matches[1]&paged=$matches[2]\";s:20:\"(uk)/type/([^/]+)/?$\";s:50:\"index.php?lang=$matches[1]&post_format=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:41:\"index.php?lang=en&post_format=$matches[1]\";s:35:\"speaker/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"speaker/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"speaker/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"speaker/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"speaker/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"speaker/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"speaker/([^/]+)/embed/?$\";s:40:\"index.php?speaker=$matches[1]&embed=true\";s:28:\"speaker/([^/]+)/trackback/?$\";s:34:\"index.php?speaker=$matches[1]&tb=1\";s:36:\"speaker/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?speaker=$matches[1]&paged=$matches[2]\";s:43:\"speaker/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?speaker=$matches[1]&cpage=$matches[2]\";s:32:\"speaker/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?speaker=$matches[1]&page=$matches[2]\";s:24:\"speaker/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"speaker/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"speaker/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"speaker/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"speaker/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"speaker/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:49:\"position/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?position=$matches[1]&feed=$matches[2]\";s:44:\"position/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?position=$matches[1]&feed=$matches[2]\";s:25:\"position/([^/]+)/embed/?$\";s:41:\"index.php?position=$matches[1]&embed=true\";s:37:\"position/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?position=$matches[1]&paged=$matches[2]\";s:19:\"position/([^/]+)/?$\";s:30:\"index.php?position=$matches[1]\";s:48:\"country/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?country=$matches[1]&feed=$matches[2]\";s:43:\"country/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?country=$matches[1]&feed=$matches[2]\";s:24:\"country/([^/]+)/embed/?$\";s:40:\"index.php?country=$matches[1]&embed=true\";s:36:\"country/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?country=$matches[1]&paged=$matches[2]\";s:18:\"country/([^/]+)/?$\";s:29:\"index.php?country=$matches[1]\";s:36:\"sessions/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"sessions/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"sessions/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"sessions/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"sessions/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"sessions/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"sessions/([^/]+)/embed/?$\";s:40:\"index.php?session=$matches[1]&embed=true\";s:29:\"sessions/([^/]+)/trackback/?$\";s:34:\"index.php?session=$matches[1]&tb=1\";s:37:\"sessions/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?session=$matches[1]&paged=$matches[2]\";s:44:\"sessions/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?session=$matches[1]&cpage=$matches[2]\";s:33:\"sessions/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?session=$matches[1]&page=$matches[2]\";s:25:\"sessions/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"sessions/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"sessions/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"sessions/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"sessions/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"sessions/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:37:\"(uk)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?lang=$matches[1]&&feed=$matches[2]\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:35:\"index.php?lang=en&&feed=$matches[1]\";s:32:\"(uk)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?lang=$matches[1]&&feed=$matches[2]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:35:\"index.php?lang=en&&feed=$matches[1]\";s:13:\"(uk)/embed/?$\";s:38:\"index.php?lang=$matches[1]&&embed=true\";s:8:\"embed/?$\";s:29:\"index.php?lang=en&&embed=true\";s:25:\"(uk)/page/?([0-9]{1,})/?$\";s:45:\"index.php?lang=$matches[1]&&paged=$matches[2]\";s:20:\"page/?([0-9]{1,})/?$\";s:36:\"index.php?lang=en&&paged=$matches[1]\";s:32:\"(uk)/comment-page-([0-9]{1,})/?$\";s:56:\"index.php?lang=$matches[1]&&page_id=21&cpage=$matches[2]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:47:\"index.php?lang=en&&page_id=21&cpage=$matches[1]\";s:7:\"(uk)/?$\";s:26:\"index.php?lang=$matches[1]\";s:46:\"(uk)/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&&feed=$matches[2]&withcomments=1\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?lang=en&&feed=$matches[1]&withcomments=1\";s:41:\"(uk)/comments/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&&feed=$matches[2]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?lang=en&&feed=$matches[1]&withcomments=1\";s:22:\"(uk)/comments/embed/?$\";s:38:\"index.php?lang=$matches[1]&&embed=true\";s:17:\"comments/embed/?$\";s:29:\"index.php?lang=en&&embed=true\";s:49:\"(uk)/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?lang=$matches[1]&s=$matches[2]&feed=$matches[3]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?lang=en&s=$matches[1]&feed=$matches[2]\";s:44:\"(uk)/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?lang=$matches[1]&s=$matches[2]&feed=$matches[3]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?lang=en&s=$matches[1]&feed=$matches[2]\";s:25:\"(uk)/search/(.+)/embed/?$\";s:51:\"index.php?lang=$matches[1]&s=$matches[2]&embed=true\";s:20:\"search/(.+)/embed/?$\";s:42:\"index.php?lang=en&s=$matches[1]&embed=true\";s:37:\"(uk)/search/(.+)/page/?([0-9]{1,})/?$\";s:58:\"index.php?lang=$matches[1]&s=$matches[2]&paged=$matches[3]\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?lang=en&s=$matches[1]&paged=$matches[2]\";s:19:\"(uk)/search/(.+)/?$\";s:40:\"index.php?lang=$matches[1]&s=$matches[2]\";s:14:\"search/(.+)/?$\";s:31:\"index.php?lang=en&s=$matches[1]\";s:52:\"(uk)/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&author_name=$matches[2]&feed=$matches[3]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=en&author_name=$matches[1]&feed=$matches[2]\";s:47:\"(uk)/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&author_name=$matches[2]&feed=$matches[3]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=en&author_name=$matches[1]&feed=$matches[2]\";s:28:\"(uk)/author/([^/]+)/embed/?$\";s:61:\"index.php?lang=$matches[1]&author_name=$matches[2]&embed=true\";s:23:\"author/([^/]+)/embed/?$\";s:52:\"index.php?lang=en&author_name=$matches[1]&embed=true\";s:40:\"(uk)/author/([^/]+)/page/?([0-9]{1,})/?$\";s:68:\"index.php?lang=$matches[1]&author_name=$matches[2]&paged=$matches[3]\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:59:\"index.php?lang=en&author_name=$matches[1]&paged=$matches[2]\";s:22:\"(uk)/author/([^/]+)/?$\";s:50:\"index.php?lang=$matches[1]&author_name=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:41:\"index.php?lang=en&author_name=$matches[1]\";s:74:\"(uk)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&feed=$matches[5]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:88:\"index.php?lang=en&year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:69:\"(uk)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&feed=$matches[5]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:88:\"index.php?lang=en&year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:50:\"(uk)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:91:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&embed=true\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:82:\"index.php?lang=en&year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:62:\"(uk)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:98:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&paged=$matches[5]\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:89:\"index.php?lang=en&year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:44:\"(uk)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:80:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:71:\"index.php?lang=en&year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:61:\"(uk)/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:81:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&feed=$matches[4]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:72:\"index.php?lang=en&year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:56:\"(uk)/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:81:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&feed=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:72:\"index.php?lang=en&year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:37:\"(uk)/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:75:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&embed=true\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:66:\"index.php?lang=en&year=$matches[1]&monthnum=$matches[2]&embed=true\";s:49:\"(uk)/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:82:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&paged=$matches[4]\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:73:\"index.php?lang=en&year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:31:\"(uk)/([0-9]{4})/([0-9]{1,2})/?$\";s:64:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:55:\"index.php?lang=en&year=$matches[1]&monthnum=$matches[2]\";s:48:\"(uk)/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:60:\"index.php?lang=$matches[1]&year=$matches[2]&feed=$matches[3]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?lang=en&year=$matches[1]&feed=$matches[2]\";s:43:\"(uk)/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:60:\"index.php?lang=$matches[1]&year=$matches[2]&feed=$matches[3]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?lang=en&year=$matches[1]&feed=$matches[2]\";s:24:\"(uk)/([0-9]{4})/embed/?$\";s:54:\"index.php?lang=$matches[1]&year=$matches[2]&embed=true\";s:19:\"([0-9]{4})/embed/?$\";s:45:\"index.php?lang=en&year=$matches[1]&embed=true\";s:36:\"(uk)/([0-9]{4})/page/?([0-9]{1,})/?$\";s:61:\"index.php?lang=$matches[1]&year=$matches[2]&paged=$matches[3]\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:52:\"index.php?lang=en&year=$matches[1]&paged=$matches[2]\";s:18:\"(uk)/([0-9]{4})/?$\";s:43:\"index.php?lang=$matches[1]&year=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:34:\"index.php?lang=en&year=$matches[1]\";s:32:\"(uk)/.?.+?/attachment/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"(uk)/.?.+?/attachment/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"(uk)/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"(uk)/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"(uk)/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"(uk)/.?.+?/attachment/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"(uk)/(.?.+?)/embed/?$\";s:58:\"index.php?lang=$matches[1]&pagename=$matches[2]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:25:\"(uk)/(.?.+?)/trackback/?$\";s:52:\"index.php?lang=$matches[1]&pagename=$matches[2]&tb=1\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:45:\"(uk)/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?lang=$matches[1]&pagename=$matches[2]&feed=$matches[3]\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:40:\"(uk)/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?lang=$matches[1]&pagename=$matches[2]&feed=$matches[3]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:33:\"(uk)/(.?.+?)/page/?([0-9]{1,})/?$\";s:65:\"index.php?lang=$matches[1]&pagename=$matches[2]&paged=$matches[3]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:40:\"(uk)/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?lang=$matches[1]&pagename=$matches[2]&cpage=$matches[3]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:29:\"(uk)/(.?.+?)(?:/([0-9]+))?/?$\";s:64:\"index.php?lang=$matches[1]&pagename=$matches[2]&page=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:32:\"(uk)/[^/]+/attachment/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"(uk)/[^/]+/attachment/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"(uk)/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"(uk)/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"(uk)/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"(uk)/[^/]+/attachment/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"(uk)/([^/]+)/embed/?$\";s:54:\"index.php?lang=$matches[1]&name=$matches[2]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:25:\"(uk)/([^/]+)/trackback/?$\";s:48:\"index.php?lang=$matches[1]&name=$matches[2]&tb=1\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:45:\"(uk)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:60:\"index.php?lang=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:40:\"(uk)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:60:\"index.php?lang=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:33:\"(uk)/([^/]+)/page/?([0-9]{1,})/?$\";s:61:\"index.php?lang=$matches[1]&name=$matches[2]&paged=$matches[3]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:40:\"(uk)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:61:\"index.php?lang=$matches[1]&name=$matches[2]&cpage=$matches[3]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:29:\"(uk)/([^/]+)(?:/([0-9]+))?/?$\";s:60:\"index.php?lang=$matches[1]&name=$matches[2]&page=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:21:\"(uk)/[^/]+/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:31:\"(uk)/[^/]+/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:51:\"(uk)/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"(uk)/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"(uk)/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:27:\"(uk)/[^/]+/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(447, 'pll_dismissed_notices', 'a:1:{i:0;s:6:\"wizard\";}', 'yes'),
(510, 'site_logo', '13', 'yes'),
(695, '_transient_health-check-site-status-result', '{\"good\":15,\"recommended\":4,\"critical\":0}', 'yes'),
(957, 'acf_version', '5.9.3', 'yes'),
(962, 'acfe', 'a:2:{s:7:\"version\";s:7:\"0.8.8.7\";s:7:\"modules\";a:4:{s:11:\"block_types\";a:0:{}s:13:\"options_pages\";a:0:{}s:10:\"post_types\";a:0:{}s:10:\"taxonomies\";a:0:{}}}', 'yes'),
(1035, 'recovery_mode_email_last_sent', '1647108608', 'yes'),
(1040, '_transient_pll_languages_list', 'a:2:{i:0;a:24:{s:7:\"term_id\";i:3;s:4:\"name\";s:2:\"EN\";s:4:\"slug\";s:2:\"en\";s:10:\"term_group\";i:0;s:16:\"term_taxonomy_id\";i:3;s:5:\"count\";i:3;s:10:\"tl_term_id\";i:4;s:19:\"tl_term_taxonomy_id\";i:4;s:8:\"tl_count\";i:1;s:6:\"locale\";s:5:\"en_GB\";s:6:\"is_rtl\";i:0;s:3:\"w3c\";s:5:\"en-GB\";s:8:\"facebook\";s:5:\"en_GB\";s:8:\"home_url\";s:18:\"http://altum.test/\";s:10:\"search_url\";s:18:\"http://altum.test/\";s:4:\"host\";N;s:5:\"mo_id\";s:2:\"11\";s:13:\"page_on_front\";i:21;s:14:\"page_for_posts\";b:0;s:9:\"flag_code\";s:2:\"gb\";s:8:\"flag_url\";s:58:\"http://altum.test/wp-content/plugins/polylang/flags/gb.png\";s:4:\"flag\";s:631:\"<img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAMAAABBPP0LAAAAt1BMVEWSmb66z+18msdig8La3u+tYX9IaLc7W7BagbmcUW+kqMr/q6n+//+hsNv/lIr/jIGMnNLJyOP9/fyQttT/wb3/////aWn+YWF5kNT0oqz0i4ueqtIZNJjhvt/8gn//WVr/6+rN1+o9RKZwgcMPJpX/VFT9UEn+RUX8Ozv2Ly+FGzdYZrfU1e/8LS/lQkG/mbVUX60AE231hHtcdMb0mp3qYFTFwNu3w9prcqSURGNDaaIUMX5FNW5wYt7AAAAAjklEQVR4AR3HNUJEMQCGwf+L8RR36ajR+1+CEuvRdd8kK9MNAiRQNgJmVDAt1yM6kSzYVJUsPNssAk5N7ZFKjVNFAY4co6TAOI+kyQm+LFUEBEKKzuWUNB7rSH/rSnvOulOGk+QlXTBqMIrfYX4tSe2nP3iRa/KNK7uTmWJ5a9+erZ3d+18od4ytiZdvZyuKWy8o3UpTVAAAAABJRU5ErkJggg==\" alt=\"EN\" width=\"16\" height=\"11\" style=\"width: 16px; height: 11px;\" />\";s:15:\"custom_flag_url\";N;s:11:\"custom_flag\";N;}i:1;a:24:{s:7:\"term_id\";i:5;s:4:\"name\";s:2:\"UA\";s:4:\"slug\";s:2:\"uk\";s:10:\"term_group\";i:0;s:16:\"term_taxonomy_id\";i:5;s:5:\"count\";i:1;s:10:\"tl_term_id\";i:6;s:19:\"tl_term_taxonomy_id\";i:6;s:8:\"tl_count\";i:0;s:6:\"locale\";s:2:\"uk\";s:6:\"is_rtl\";i:0;s:3:\"w3c\";s:2:\"uk\";s:8:\"facebook\";s:5:\"uk_UA\";s:8:\"home_url\";s:64:\"http://altum.test/uk/%d0%b3%d0%be%d0%bb%d0%be%d0%b2%d0%bd%d0%b0/\";s:10:\"search_url\";s:21:\"http://altum.test/uk/\";s:4:\"host\";N;s:5:\"mo_id\";s:2:\"12\";s:13:\"page_on_front\";i:25;s:14:\"page_for_posts\";b:0;s:9:\"flag_code\";s:2:\"ua\";s:8:\"flag_url\";s:58:\"http://altum.test/wp-content/plugins/polylang/flags/ua.png\";s:4:\"flag\";s:439:\"<img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAMAAABBPP0LAAAAb1BMVEUAhP8AfP0Ac/oAZ/UAV/B5yv9wxv5iwf1WvP1Ot/gAQOlMt/1Bs/s1rfkpqPdBsfYdovUAkciK0edqwuBautpNtdZAr9IATZr43QD8/GX6+kn5+Tr4+C329iD09BTy8g309DHguQDy8iruzwDnwwAuoRPoAAAASElEQVR4AU3MAQYDQRAF0Ve9WRAQYO5/zUgSDIxf8DQdiGR3I7v0YOLS3ns4PPt8Wq86vn6vVht7NRzG0OHRSpDb8Gt5IvjAHy/kBL+aIRygAAAAAElFTkSuQmCC\" alt=\"UA\" width=\"16\" height=\"11\" style=\"width: 16px; height: 11px;\" />\";s:15:\"custom_flag_url\";N;s:11:\"custom_flag\";N;}}', 'yes'),
(1041, 'speaker_position_children', 'a:0:{}', 'yes'),
(1042, 'speaker_country_children', 'a:0:{}', 'yes'),
(1169, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.9.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.9.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.9.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.9.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.9.2\";s:7:\"version\";s:5:\"5.9.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1647422163;s:15:\"version_checked\";s:5:\"5.9.2\";s:12:\"translations\";a:0:{}}', 'no'),
(1171, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1647422162;s:7:\"checked\";a:1:{s:5:\"altum\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(1174, '_transient_timeout_loco_po_1cb69300ddf42e55a4413246086c5b87', '1647874659', 'no'),
(1175, '_transient_loco_po_1cb69300ddf42e55a4413246086c5b87', 'a:4:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:32:\"themes/altum/languages/altum.pot\";s:5:\"bytes\";i:3761;s:5:\"mtime\";i:1647010658;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:33;s:1:\"p\";i:0;s:1:\"f\";i:0;}}s:1:\"t\";i:1647010659;}', 'no'),
(1176, 'loco_recent', 'a:4:{s:1:\"c\";s:21:\"Loco_data_RecentItems\";s:1:\"v\";i:0;s:1:\"d\";a:1:{s:6:\"bundle\";a:2:{s:11:\"theme.altum\";i:1647010658;s:30:\"plugin.altum-cpt/altum-cpt.php\";i:1647010950;}}s:1:\"t\";i:1647010950;}', 'no'),
(1177, '_transient_timeout_loco_po_e1bb21b6dd73ae7e6b16bb6ed1b5a852', '1647874590', 'no'),
(1178, '_transient_loco_po_e1bb21b6dd73ae7e6b16bb6ed1b5a852', 'a:4:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:31:\"themes/altum/languages/en_GB.po\";s:5:\"bytes\";i:4744;s:5:\"mtime\";i:1647010564;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:39;s:1:\"p\";i:0;s:1:\"f\";i:0;}}s:1:\"t\";i:1647010590;}', 'no'),
(1179, '_transient_timeout_loco_po_200b58c2d2f5df07798219afe02312fd', '1647874944', 'no'),
(1180, '_transient_loco_po_200b58c2d2f5df07798219afe02312fd', 'a:4:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:6:{s:5:\"rpath\";s:41:\"plugins/altum-cpt/languages/altum-cpt.pot\";s:5:\"bytes\";i:1204;s:5:\"mtime\";i:1647010943;s:5:\"valid\";b:1;s:5:\"error\";s:31:\"Invalid POT file: altum-cpt.pot\";s:5:\"stats\";a:3:{s:1:\"t\";i:8;s:1:\"p\";i:0;s:1:\"f\";i:0;}}s:1:\"t\";i:1647010944;}', 'no'),
(1181, 'loco_plugin_config__altum-cpt/altum-cpt.php', 'a:4:{s:1:\"c\";s:23:\"Loco_config_CustomSaved\";s:1:\"v\";i:0;s:1:\"d\";a:3:{i:0;s:6:\"bundle\";i:1;a:1:{s:4:\"name\";s:9:\"altum-cpt\";}i:2;a:1:{i:0;a:3:{i:0;s:6:\"domain\";i:1;a:1:{s:4:\"name\";s:9:\"altum-cpt\";}i:2;a:1:{i:0;a:3:{i:0;s:7:\"project\";i:1;a:2:{s:4:\"name\";s:9:\"altum-cpt\";s:4:\"slug\";s:9:\"altum-cpt\";}i:2;a:3:{i:0;a:3:{i:0;s:6:\"source\";i:1;a:0:{}i:2;a:1:{i:0;a:3:{i:0;s:9:\"directory\";i:1;a:0:{}i:2;a:1:{i:0;s:0:\"\";}}}}i:1;a:3:{i:0;s:6:\"target\";i:1;a:0:{}i:2;a:1:{i:0;a:3:{i:0;s:9:\"directory\";i:1;a:0:{}i:2;a:1:{i:0;s:9:\"languages\";}}}}i:2;a:3:{i:0;s:8:\"template\";i:1;a:0:{}i:2;a:1:{i:0;a:3:{i:0;s:4:\"file\";i:1;a:0:{}i:2;a:1:{i:0;s:23:\"languages/altum-cpt.pot\";}}}}}}}}}}s:1:\"t\";i:1647010730;}', 'no'),
(1182, '_transient_timeout_loco_po_c1c38202c6e4af507a96887828541695', '1647874908', 'no'),
(1183, '_transient_loco_po_c1c38202c6e4af507a96887828541695', 'a:4:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:46:\"plugins/altum-cpt/languages/altum-cpt-en_GB.po\";s:5:\"bytes\";i:1058;s:5:\"mtime\";i:1647010901;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:7;s:1:\"p\";i:0;s:1:\"f\";i:0;}}s:1:\"t\";i:1647010908;}', 'no'),
(1418, 'position_children', 'a:0:{}', 'yes'),
(1598, 'country_children', 'a:0:{}', 'yes'),
(1663, '_transient_timeout_acf_plugin_updates', '1647594961', 'no'),
(1664, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:16:\"acf5.9.3/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:16:\"acf5.9.3/acf.php\";s:11:\"new_version\";s:4:\"5.12\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.9.1\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:16:\"acf5.9.3/acf.php\";s:5:\"5.9.3\";}}', 'no'),
(1665, '_transient_timeout_global_styles_altum', '1647422222', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1666, '_transient_global_styles_altum', 'body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}', 'no'),
(1667, '_site_transient_timeout_theme_roots', '1647423962', 'no'),
(1668, '_site_transient_theme_roots', 'a:1:{s:5:\"altum\";s:7:\"/themes\";}', 'no'),
(1670, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1647422164;s:8:\"response\";a:1:{s:16:\"acf5.9.3/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:16:\"acf5.9.3/acf.php\";s:11:\"new_version\";s:4:\"5.12\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.9.1\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:29:\"acf-extended/acf-extended.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:26:\"w.org/plugins/acf-extended\";s:4:\"slug\";s:12:\"acf-extended\";s:6:\"plugin\";s:29:\"acf-extended/acf-extended.php\";s:11:\"new_version\";s:7:\"0.8.8.7\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/acf-extended/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/acf-extended.0.8.8.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/acf-extended/assets/icon-256x256.png?rev=2071550\";s:2:\"1x\";s:65:\"https://ps.w.org/acf-extended/assets/icon-128x128.png?rev=2071550\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/acf-extended/assets/banner-1544x500.png?rev=2071550\";s:2:\"1x\";s:67:\"https://ps.w.org/acf-extended/assets/banner-772x250.png?rev=2071550\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:23:\"loco-translate/loco.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/loco-translate\";s:4:\"slug\";s:14:\"loco-translate\";s:6:\"plugin\";s:23:\"loco-translate/loco.php\";s:11:\"new_version\";s:5:\"2.6.0\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/loco-translate/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/loco-translate.2.6.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/loco-translate/assets/icon-256x256.png?rev=1000676\";s:2:\"1x\";s:67:\"https://ps.w.org/loco-translate/assets/icon-128x128.png?rev=1000676\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/loco-translate/assets/banner-772x250.jpg?rev=745046\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.2\";}s:21:\"polylang/polylang.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:22:\"w.org/plugins/polylang\";s:4:\"slug\";s:8:\"polylang\";s:6:\"plugin\";s:21:\"polylang/polylang.php\";s:11:\"new_version\";s:5:\"3.1.4\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/polylang/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/polylang.3.1.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:61:\"https://ps.w.org/polylang/assets/icon-256x256.png?rev=1331499\";s:2:\"1x\";s:61:\"https://ps.w.org/polylang/assets/icon-128x128.png?rev=1331499\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/polylang/assets/banner-1544x500.png?rev=1405299\";s:2:\"1x\";s:63:\"https://ps.w.org/polylang/assets/banner-772x250.png?rev=1405299\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.4\";}}s:7:\"checked\";a:6:{s:29:\"acf-extended/acf-extended.php\";s:7:\"0.8.8.7\";s:16:\"acf5.9.3/acf.php\";s:5:\"5.9.3\";s:23:\"altum-cpt/altum-cpt.php\";s:5:\"1.0.0\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.2\";s:23:\"loco-translate/loco.php\";s:5:\"2.6.0\";s:21:\"polylang/polylang.php\";s:5:\"3.1.4\";}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_menu_item_type', 'custom'),
(4, 5, '_menu_item_menu_item_parent', '0'),
(5, 5, '_menu_item_object_id', '5'),
(6, 5, '_menu_item_object', 'custom'),
(7, 5, '_menu_item_target', ''),
(8, 5, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(9, 5, '_menu_item_xfn', ''),
(10, 5, '_menu_item_url', 'http://altum.test/'),
(12, 6, '_menu_item_type', 'post_type'),
(13, 6, '_menu_item_menu_item_parent', '0'),
(14, 6, '_menu_item_object_id', '2'),
(15, 6, '_menu_item_object', 'page'),
(16, 6, '_menu_item_target', ''),
(17, 6, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(18, 6, '_menu_item_xfn', ''),
(19, 6, '_menu_item_url', ''),
(20, 6, '_menu_item_orphaned', '1646832290'),
(21, 7, '_menu_item_type', 'custom'),
(22, 7, '_menu_item_menu_item_parent', '0'),
(23, 7, '_menu_item_object_id', '7'),
(24, 7, '_menu_item_object', 'custom'),
(25, 7, '_menu_item_target', ''),
(26, 7, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(27, 7, '_menu_item_xfn', ''),
(28, 7, '_menu_item_url', '#'),
(30, 8, '_menu_item_type', 'custom'),
(31, 8, '_menu_item_menu_item_parent', '0'),
(32, 8, '_menu_item_object_id', '8'),
(33, 8, '_menu_item_object', 'custom'),
(34, 8, '_menu_item_target', ''),
(35, 8, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(36, 8, '_menu_item_xfn', ''),
(37, 8, '_menu_item_url', '#'),
(39, 9, '_menu_item_type', 'custom'),
(40, 9, '_menu_item_menu_item_parent', '0'),
(41, 9, '_menu_item_object_id', '9'),
(42, 9, '_menu_item_object', 'custom'),
(43, 9, '_menu_item_target', ''),
(44, 9, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(45, 9, '_menu_item_xfn', ''),
(46, 9, '_menu_item_url', '#'),
(48, 10, '_menu_item_type', 'custom'),
(49, 10, '_menu_item_menu_item_parent', '0'),
(50, 10, '_menu_item_object_id', '10'),
(51, 10, '_menu_item_object', 'custom'),
(52, 10, '_menu_item_target', ''),
(53, 10, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(54, 10, '_menu_item_xfn', ''),
(55, 10, '_menu_item_url', '#'),
(57, 11, '_pll_strings_translations', 'a:0:{}'),
(58, 12, '_pll_strings_translations', 'a:0:{}'),
(59, 13, '_wp_attached_file', '2022/03/logo.png'),
(60, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:99;s:6:\"height\";i:46;s:4:\"file\";s:16:\"2022/03/logo.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(61, 14, '_wp_trash_meta_status', 'publish'),
(62, 14, '_wp_trash_meta_time', '1646844398'),
(63, 15, '_wp_trash_meta_status', 'publish'),
(64, 15, '_wp_trash_meta_time', '1646844408'),
(65, 5, '_wp_old_date', '2022-03-09'),
(66, 7, '_wp_old_date', '2022-03-09'),
(67, 8, '_wp_old_date', '2022-03-09'),
(68, 9, '_wp_old_date', '2022-03-09'),
(69, 10, '_wp_old_date', '2022-03-09'),
(70, 16, '_menu_item_type', 'custom'),
(71, 16, '_menu_item_menu_item_parent', '0'),
(72, 16, '_menu_item_object_id', '16'),
(73, 16, '_menu_item_object', 'custom'),
(74, 16, '_menu_item_target', ''),
(75, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(76, 16, '_menu_item_xfn', ''),
(77, 16, '_menu_item_url', '#'),
(79, 17, '_menu_item_type', 'custom'),
(80, 17, '_menu_item_menu_item_parent', '0'),
(81, 17, '_menu_item_object_id', '17'),
(82, 17, '_menu_item_object', 'custom'),
(83, 17, '_menu_item_target', ''),
(84, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(85, 17, '_menu_item_xfn', ''),
(86, 17, '_menu_item_url', '#'),
(88, 18, '_menu_item_type', 'custom'),
(89, 18, '_menu_item_menu_item_parent', '0'),
(90, 18, '_menu_item_object_id', '18'),
(91, 18, '_menu_item_object', 'custom'),
(92, 18, '_menu_item_target', ''),
(93, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(94, 18, '_menu_item_xfn', ''),
(95, 18, '_menu_item_url', '#'),
(97, 19, '_menu_item_type', 'custom'),
(98, 19, '_menu_item_menu_item_parent', '0'),
(99, 19, '_menu_item_object_id', '19'),
(100, 19, '_menu_item_object', 'custom'),
(101, 19, '_menu_item_target', ''),
(102, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(103, 19, '_menu_item_xfn', ''),
(104, 19, '_menu_item_url', '#'),
(106, 20, '_menu_item_type', 'custom'),
(107, 20, '_menu_item_menu_item_parent', '0'),
(108, 20, '_menu_item_object_id', '20'),
(109, 20, '_menu_item_object', 'custom'),
(110, 20, '_menu_item_target', ''),
(111, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(112, 20, '_menu_item_xfn', ''),
(113, 20, '_menu_item_url', 'http://altum.test/'),
(115, 21, '_edit_lock', '1646996770:1'),
(116, 21, '_edit_last', '1'),
(117, 21, '_wp_page_template', 'home.php'),
(118, 25, '_wp_page_template', 'home.php'),
(119, 25, '_edit_last', '1'),
(120, 25, '_edit_lock', '1646936492:1'),
(123, 28, '_edit_last', '1'),
(124, 28, '_edit_lock', '1646940627:1'),
(125, 29, '_edit_last', '1'),
(126, 29, '_edit_lock', '1646938945:1'),
(127, 38, '_wp_attached_file', '2022/03/intro_placeholder.jpg'),
(128, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:810;s:4:\"file\";s:29:\"2022/03/intro_placeholder.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"intro_placeholder-300x162.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:162;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"intro_placeholder-1024x553.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:553;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"intro_placeholder-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"intro_placeholder-768x415.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:415;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(129, 39, '_edit_last', '1'),
(130, 39, '_edit_lock', '1646940624:1'),
(131, 44, '_wp_attached_file', '2022/03/welcome_placeholder.jpg'),
(132, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:700;s:4:\"file\";s:31:\"2022/03/welcome_placeholder.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"welcome_placeholder-300x140.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"welcome_placeholder-1024x478.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:478;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"welcome_placeholder-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"welcome_placeholder-768x358.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:358;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(153, 21, 'home', 'a:2:{i:0;s:5:\"intro\";i:1;s:7:\"welcome\";}'),
(154, 21, '_home', 'field_622a435edf2bd'),
(155, 46, 'home_0_img', ''),
(156, 46, '_home_0_img', 'field_622a4378df2be_field_622a42d3e4c79'),
(157, 46, 'home_0_subtitle', ''),
(158, 46, '_home_0_subtitle', 'field_622a4378df2be_field_622a42e3e38d8'),
(159, 46, 'home_0_date', ''),
(160, 46, '_home_0_date', 'field_622a4378df2be_field_622a431d15120'),
(161, 46, 'home_0_title', ''),
(162, 46, '_home_0_title', 'field_622a4378df2be_field_622a42f2d981f'),
(163, 46, 'home_0_text', ''),
(164, 46, '_home_0_text', 'field_622a4378df2be_field_622a42fbd9820'),
(165, 46, 'home_0_button', ''),
(166, 46, '_home_0_button', 'field_622a4378df2be_field_622a4305d9821'),
(167, 46, 'home_1_img', ''),
(168, 46, '_home_1_img', 'field_622a4603d957b_field_622a45b5e5c35'),
(169, 46, 'home_1_title', ''),
(170, 46, '_home_1_title', 'field_622a4603d957b_field_622a45c2e5c36'),
(171, 46, 'home_1_text', ''),
(172, 46, '_home_1_text', 'field_622a4603d957b_field_622a45cde5c37'),
(173, 46, 'home_1_button', ''),
(174, 46, '_home_1_button', 'field_622a4603d957b_field_622a45d2e5c38'),
(175, 46, 'home', 'a:2:{i:0;s:5:\"intro\";i:1;s:7:\"welcome\";}'),
(176, 46, '_home', 'field_622a435edf2bd'),
(177, 47, '_wp_attached_file', '2022/03/hero.jpg'),
(178, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:791;s:4:\"file\";s:16:\"2022/03/hero.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"hero-300x158.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:158;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"hero-1024x540.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"hero-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"hero-768x405.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:405;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(179, 48, 'home_0_img', '47'),
(180, 48, '_home_0_img', 'field_622a4378df2be_field_622a42d3e4c79'),
(181, 48, 'home_0_subtitle', 'ANNUAL CONGRESS 2021 '),
(182, 48, '_home_0_subtitle', 'field_622a4378df2be_field_622a42e3e38d8'),
(183, 48, 'home_0_date', '10-11 JUNI'),
(184, 48, '_home_0_date', 'field_622a4378df2be_field_622a431d15120'),
(185, 48, 'home_0_title', 'Pediatric Integrative Medicine'),
(186, 48, '_home_0_title', 'field_622a4378df2be_field_622a42f2d981f'),
(187, 48, 'home_0_text', 'Building bridges between conventional and complementary medicine\r\n'),
(188, 48, '_home_0_text', 'field_622a4378df2be_field_622a42fbd9820'),
(189, 48, 'home_0_button', ''),
(190, 48, '_home_0_button', 'field_622a4378df2be_field_622a4305d9821'),
(191, 48, 'home_1_img', ''),
(192, 48, '_home_1_img', 'field_622a4603d957b_field_622a45b5e5c35'),
(193, 48, 'home_1_title', ''),
(194, 48, '_home_1_title', 'field_622a4603d957b_field_622a45c2e5c36'),
(195, 48, 'home_1_text', ''),
(196, 48, '_home_1_text', 'field_622a4603d957b_field_622a45cde5c37'),
(197, 48, 'home_1_button', ''),
(198, 48, '_home_1_button', 'field_622a4603d957b_field_622a45d2e5c38'),
(199, 48, 'home', 'a:2:{i:0;s:5:\"intro\";i:1;s:7:\"welcome\";}'),
(200, 48, '_home', 'field_622a435edf2bd'),
(201, 49, 'home_0_img', '47'),
(202, 49, '_home_0_img', 'field_622a4378df2be_field_622a42d3e4c79'),
(203, 49, 'home_0_subtitle', 'ANNUAL CONGRESS 2021 '),
(204, 49, '_home_0_subtitle', 'field_622a4378df2be_field_622a42e3e38d8'),
(205, 49, 'home_0_date', '10-11 JUNI'),
(206, 49, '_home_0_date', 'field_622a4378df2be_field_622a431d15120'),
(207, 49, 'home_0_title', 'Pediatric Integrative Medicine'),
(208, 49, '_home_0_title', 'field_622a4378df2be_field_622a42f2d981f'),
(209, 49, 'home_0_text', 'Building bridges between conventional and complementary medicine\r\n'),
(210, 49, '_home_0_text', 'field_622a4378df2be_field_622a42fbd9820'),
(211, 49, 'home_0_button', 'a:3:{s:5:\"title\";s:8:\"Register\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}'),
(212, 49, '_home_0_button', 'field_622a4378df2be_field_622a4305d9821'),
(213, 49, 'home_1_img', ''),
(214, 49, '_home_1_img', 'field_622a4603d957b_field_622a45b5e5c35'),
(215, 49, 'home_1_title', ''),
(216, 49, '_home_1_title', 'field_622a4603d957b_field_622a45c2e5c36'),
(217, 49, 'home_1_text', ''),
(218, 49, '_home_1_text', 'field_622a4603d957b_field_622a45cde5c37'),
(219, 49, 'home_1_button', ''),
(220, 49, '_home_1_button', 'field_622a4603d957b_field_622a45d2e5c38'),
(221, 49, 'home', 'a:2:{i:0;s:5:\"intro\";i:1;s:7:\"welcome\";}'),
(222, 49, '_home', 'field_622a435edf2bd'),
(223, 50, '_wp_attached_file', '2022/03/welcome_img.jpg'),
(224, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:670;s:6:\"height\";i:700;s:4:\"file\";s:23:\"2022/03/welcome_img.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"welcome_img-287x300.jpg\";s:5:\"width\";i:287;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"welcome_img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(225, 52, 'home_0_img', '47'),
(226, 52, '_home_0_img', 'field_622a4378df2be_field_622a42d3e4c79'),
(227, 52, 'home_0_subtitle', 'ANNUAL CONGRESS 2021 '),
(228, 52, '_home_0_subtitle', 'field_622a4378df2be_field_622a42e3e38d8'),
(229, 52, 'home_0_date', '10-11 JUNI'),
(230, 52, '_home_0_date', 'field_622a4378df2be_field_622a431d15120'),
(231, 52, 'home_0_title', 'Pediatric Integrative Medicine'),
(232, 52, '_home_0_title', 'field_622a4378df2be_field_622a42f2d981f'),
(233, 52, 'home_0_text', 'Building bridges between conventional and complementary medicine\r\n'),
(234, 52, '_home_0_text', 'field_622a4378df2be_field_622a42fbd9820'),
(235, 52, 'home_0_button', 'a:3:{s:5:\"title\";s:8:\"Register\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}'),
(236, 52, '_home_0_button', 'field_622a4378df2be_field_622a4305d9821'),
(237, 52, 'home_1_img', '50'),
(238, 52, '_home_1_img', 'field_622a4603d957b_field_622a45b5e5c35'),
(239, 52, 'home_1_title', 'Address of Welcome'),
(240, 52, '_home_1_title', 'field_622a4603d957b_field_622a45c2e5c36'),
(241, 52, 'home_1_text', 'On behalf of pédiatrie suisse, the Swiss Society of Paediatrics (SSP), and the Swiss Academy for Psychosomatic and Psychosocial Medicine (SAPPM), we kindly welcome you to the virtual annual conference on June 10-11, 2021. Special circumstances require special measures – and so we are pleased that, due to the ongoing COVID-19 pandemic, we can now hold the congress carefully prepared for June 2020 at least as a virtual meeting.\r\n'),
(242, 52, '_home_1_text', 'field_622a4603d957b_field_622a45cde5c37'),
(243, 52, 'home_1_button', 'a:3:{s:5:\"title\";s:10:\"Learn more\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}'),
(244, 52, '_home_1_button', 'field_622a4603d957b_field_622a45d2e5c38'),
(245, 52, 'home', 'a:2:{i:0;s:5:\"intro\";i:1;s:7:\"welcome\";}'),
(246, 52, '_home', 'field_622a435edf2bd'),
(249, 53, 'home_0_img', '47'),
(250, 53, '_home_0_img', 'field_622a4378df2be_field_622a42d3e4c79'),
(251, 53, 'home_0_subtitle', 'ANNUAL CONGRESS 2021 '),
(252, 53, '_home_0_subtitle', 'field_622a4378df2be_field_622a42e3e38d8'),
(253, 53, 'home_0_date', '10-11 JUNI'),
(254, 53, '_home_0_date', 'field_622a4378df2be_field_622a431d15120'),
(255, 53, 'home_0_title', 'Pediatric Integrative Medicine'),
(256, 53, '_home_0_title', 'field_622a4378df2be_field_622a42f2d981f'),
(257, 53, 'home_0_text', 'Building bridges between conventional and complementary medicine\r\n'),
(258, 53, '_home_0_text', 'field_622a4378df2be_field_622a42fbd9820'),
(259, 53, 'home_0_button', 'a:3:{s:5:\"title\";s:8:\"Register\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}'),
(260, 53, '_home_0_button', 'field_622a4378df2be_field_622a4305d9821'),
(261, 53, 'home_1_img', '50'),
(262, 53, '_home_1_img', 'field_622a4603d957b_field_622a45b5e5c35'),
(263, 53, 'home_1_title', 'Address of '),
(264, 53, '_home_1_title', 'field_622a4603d957b_field_622a45c2e5c36'),
(265, 53, 'home_1_text', 'On behalf of pédiatrie suisse, the Swiss Society of Paediatrics (SSP), and the Swiss Academy for Psychosomatic and Psychosocial Medicine (SAPPM), we kindly welcome you to the virtual annual conference on June 10-11, 2021. Special circumstances require special measures – and so we are pleased that, due to the ongoing COVID-19 pandemic, we can now hold the congress carefully prepared for June 2020 at least as a virtual meeting.\r\n'),
(266, 53, '_home_1_text', 'field_622a4603d957b_field_622a45cde5c37'),
(267, 53, 'home_1_button', 'a:3:{s:5:\"title\";s:10:\"Learn more\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}'),
(268, 53, '_home_1_button', 'field_622a4603d957b_field_622a45d2e5c38'),
(269, 53, 'home', 'a:2:{i:0;s:5:\"intro\";i:1;s:7:\"welcome\";}'),
(270, 53, '_home', 'field_622a435edf2bd'),
(271, 53, 'home_1_title_word', 'Welcome'),
(272, 53, '_home_1_title_word', 'field_622a4603d957b_field_622a49bdaf99b'),
(273, 54, 'home_0_img', '47'),
(274, 54, '_home_0_img', 'field_622a4378df2be_field_622a42d3e4c79'),
(275, 54, 'home_0_subtitle', 'ANNUAL CONGRESS 2021 '),
(276, 54, '_home_0_subtitle', 'field_622a4378df2be_field_622a42e3e38d8'),
(277, 54, 'home_0_date', '10-11 JUNI'),
(278, 54, '_home_0_date', 'field_622a4378df2be_field_622a431d15120'),
(279, 54, 'home_0_title', 'Pediatric Integrative Medicine'),
(280, 54, '_home_0_title', 'field_622a4378df2be_field_622a42f2d981f'),
(281, 54, 'home_0_text', 'Building bridges between conventional and complementary medicine\r\n asda'),
(282, 54, '_home_0_text', 'field_622a4378df2be_field_622a42fbd9820'),
(283, 54, 'home_0_button', 'a:3:{s:5:\"title\";s:8:\"Register\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}'),
(284, 54, '_home_0_button', 'field_622a4378df2be_field_622a4305d9821'),
(285, 54, 'home_1_img', '50'),
(286, 54, '_home_1_img', 'field_622a4603d957b_field_622a45b5e5c35'),
(287, 54, 'home_1_title', 'Address of '),
(288, 54, '_home_1_title', 'field_622a4603d957b_field_622a45c2e5c36'),
(289, 54, 'home_1_text', 'On behalf of pédiatrie suisse, the Swiss Society of Paediatrics (SSP), and the Swiss Academy for Psychosomatic and Psychosocial Medicine (SAPPM), we kindly welcome you to the virtual annual conference on June 10-11, 2021. Special circumstances require special measures – and so we are pleased that, due to the ongoing COVID-19 pandemic, we can now hold the congress carefully prepared for June 2020 at least as a virtual meeting.\r\n'),
(290, 54, '_home_1_text', 'field_622a4603d957b_field_622a45cde5c37'),
(291, 54, 'home_1_button', 'a:3:{s:5:\"title\";s:10:\"Learn more\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}'),
(292, 54, '_home_1_button', 'field_622a4603d957b_field_622a45d2e5c38'),
(293, 54, 'home', 'a:2:{i:0;s:5:\"intro\";i:1;s:7:\"welcome\";}'),
(294, 54, '_home', 'field_622a435edf2bd'),
(295, 54, 'home_1_title_word', 'Welcome'),
(296, 54, '_home_1_title_word', 'field_622a4603d957b_field_622a49bdaf99b'),
(297, 55, 'home_0_img', '47'),
(298, 55, '_home_0_img', 'field_622a4378df2be_field_622a42d3e4c79'),
(299, 55, 'home_0_subtitle', 'ANNUAL CONGRESS 2021 '),
(300, 55, '_home_0_subtitle', 'field_622a4378df2be_field_622a42e3e38d8'),
(301, 55, 'home_0_date', '10-11 JUNI'),
(302, 55, '_home_0_date', 'field_622a4378df2be_field_622a431d15120'),
(303, 55, 'home_0_title', 'Pediatric Integrative Medicine'),
(304, 55, '_home_0_title', 'field_622a4378df2be_field_622a42f2d981f'),
(305, 55, 'home_0_text', 'Building bridges between conventional and complementary medicine'),
(306, 55, '_home_0_text', 'field_622a4378df2be_field_622a42fbd9820'),
(307, 55, 'home_0_button', 'a:3:{s:5:\"title\";s:8:\"Register\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}'),
(308, 55, '_home_0_button', 'field_622a4378df2be_field_622a4305d9821'),
(309, 55, 'home_1_img', '50'),
(310, 55, '_home_1_img', 'field_622a4603d957b_field_622a45b5e5c35'),
(311, 55, 'home_1_title', 'Address of '),
(312, 55, '_home_1_title', 'field_622a4603d957b_field_622a45c2e5c36'),
(313, 55, 'home_1_text', 'On behalf of pédiatrie suisse, the Swiss Society of Paediatrics (SSP), and the Swiss Academy for Psychosomatic and Psychosocial Medicine (SAPPM), we kindly welcome you to the virtual annual conference on June 10-11, 2021. Special circumstances require special measures – and so we are pleased that, due to the ongoing COVID-19 pandemic, we can now hold the congress carefully prepared for June 2020 at least as a virtual meeting.\r\n'),
(314, 55, '_home_1_text', 'field_622a4603d957b_field_622a45cde5c37'),
(315, 55, 'home_1_button', 'a:3:{s:5:\"title\";s:10:\"Learn more\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}'),
(316, 55, '_home_1_button', 'field_622a4603d957b_field_622a45d2e5c38'),
(317, 55, 'home', 'a:2:{i:0;s:5:\"intro\";i:1;s:7:\"welcome\";}'),
(318, 55, '_home', 'field_622a435edf2bd'),
(319, 55, 'home_1_title_word', 'Welcome'),
(320, 55, '_home_1_title_word', 'field_622a4603d957b_field_622a49bdaf99b'),
(321, 56, 'home_0_img', '47'),
(322, 56, '_home_0_img', 'field_622a4378df2be_field_622a42d3e4c79'),
(323, 56, 'home_0_subtitle', 'ANNUAL CONGRESS 2021  ee'),
(324, 56, '_home_0_subtitle', 'field_622a4378df2be_field_622a42e3e38d8'),
(325, 56, 'home_0_date', '10-11 JUNI'),
(326, 56, '_home_0_date', 'field_622a4378df2be_field_622a431d15120'),
(327, 56, 'home_0_title', 'Pediatric Integrative Medicine'),
(328, 56, '_home_0_title', 'field_622a4378df2be_field_622a42f2d981f'),
(329, 56, 'home_0_text', 'Building bridges between conventional and complementary medicine'),
(330, 56, '_home_0_text', 'field_622a4378df2be_field_622a42fbd9820'),
(331, 56, 'home_0_button', 'a:3:{s:5:\"title\";s:8:\"Register\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}'),
(332, 56, '_home_0_button', 'field_622a4378df2be_field_622a4305d9821'),
(333, 56, 'home_1_img', '50'),
(334, 56, '_home_1_img', 'field_622a4603d957b_field_622a45b5e5c35'),
(335, 56, 'home_1_title', 'Address of '),
(336, 56, '_home_1_title', 'field_622a4603d957b_field_622a45c2e5c36'),
(337, 56, 'home_1_text', 'On behalf of pédiatrie suisse, the Swiss Society of Paediatrics (SSP), and the Swiss Academy for Psychosomatic and Psychosocial Medicine (SAPPM), we kindly welcome you to the virtual annual conference on June 10-11, 2021. Special circumstances require special measures – and so we are pleased that, due to the ongoing COVID-19 pandemic, we can now hold the congress carefully prepared for June 2020 at least as a virtual meeting.\r\n'),
(338, 56, '_home_1_text', 'field_622a4603d957b_field_622a45cde5c37'),
(339, 56, 'home_1_button', 'a:3:{s:5:\"title\";s:10:\"Learn more\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}'),
(340, 56, '_home_1_button', 'field_622a4603d957b_field_622a45d2e5c38'),
(341, 56, 'home', 'a:2:{i:0;s:5:\"intro\";i:1;s:7:\"welcome\";}'),
(342, 56, '_home', 'field_622a435edf2bd'),
(343, 56, 'home_1_title_word', 'Welcome'),
(344, 56, '_home_1_title_word', 'field_622a4603d957b_field_622a49bdaf99b'),
(345, 57, 'home_0_img', '47'),
(346, 57, '_home_0_img', 'field_622a4378df2be_field_622a42d3e4c79'),
(347, 57, 'home_0_subtitle', 'ANNUAL CONGRESS 2021 '),
(348, 57, '_home_0_subtitle', 'field_622a4378df2be_field_622a42e3e38d8'),
(349, 57, 'home_0_date', '10-11 JUNI sad'),
(350, 57, '_home_0_date', 'field_622a4378df2be_field_622a431d15120'),
(351, 57, 'home_0_title', 'Pediatric Integrative Medicine'),
(352, 57, '_home_0_title', 'field_622a4378df2be_field_622a42f2d981f'),
(353, 57, 'home_0_text', 'Building bridges between conventional and complementary medicine'),
(354, 57, '_home_0_text', 'field_622a4378df2be_field_622a42fbd9820'),
(355, 57, 'home_0_button', 'a:3:{s:5:\"title\";s:8:\"Register\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}'),
(356, 57, '_home_0_button', 'field_622a4378df2be_field_622a4305d9821'),
(357, 57, 'home_1_img', '50'),
(358, 57, '_home_1_img', 'field_622a4603d957b_field_622a45b5e5c35'),
(359, 57, 'home_1_title', 'Address of '),
(360, 57, '_home_1_title', 'field_622a4603d957b_field_622a45c2e5c36'),
(361, 57, 'home_1_text', 'On behalf of pédiatrie suisse, the Swiss Society of Paediatrics (SSP), and the Swiss Academy for Psychosomatic and Psychosocial Medicine (SAPPM), we kindly welcome you to the virtual annual conference on June 10-11, 2021. Special circumstances require special measures – and so we are pleased that, due to the ongoing COVID-19 pandemic, we can now hold the congress carefully prepared for June 2020 at least as a virtual meeting.\r\n'),
(362, 57, '_home_1_text', 'field_622a4603d957b_field_622a45cde5c37'),
(363, 57, 'home_1_button', 'a:3:{s:5:\"title\";s:10:\"Learn more\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}'),
(364, 57, '_home_1_button', 'field_622a4603d957b_field_622a45d2e5c38'),
(365, 57, 'home', 'a:2:{i:0;s:5:\"intro\";i:1;s:7:\"welcome\";}'),
(366, 57, '_home', 'field_622a435edf2bd'),
(367, 57, 'home_1_title_word', 'Welcome'),
(368, 57, '_home_1_title_word', 'field_622a4603d957b_field_622a49bdaf99b'),
(369, 58, 'home_0_img', '47'),
(370, 58, '_home_0_img', 'field_622a4378df2be_field_622a42d3e4c79'),
(371, 58, 'home_0_subtitle', 'ANNUAL CONGRESS 2021 '),
(372, 58, '_home_0_subtitle', 'field_622a4378df2be_field_622a42e3e38d8'),
(373, 58, 'home_0_date', '10-11 JUNI'),
(374, 58, '_home_0_date', 'field_622a4378df2be_field_622a431d15120'),
(375, 58, 'home_0_title', 'Pediatric Integrative Medicine sadsf4334'),
(376, 58, '_home_0_title', 'field_622a4378df2be_field_622a42f2d981f'),
(377, 58, 'home_0_text', 'Building bridges between conventional and complementary medicine'),
(378, 58, '_home_0_text', 'field_622a4378df2be_field_622a42fbd9820'),
(379, 58, 'home_0_button', 'a:3:{s:5:\"title\";s:8:\"Register\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}'),
(380, 58, '_home_0_button', 'field_622a4378df2be_field_622a4305d9821'),
(381, 58, 'home_1_img', '50'),
(382, 58, '_home_1_img', 'field_622a4603d957b_field_622a45b5e5c35'),
(383, 58, 'home_1_title', 'Address of '),
(384, 58, '_home_1_title', 'field_622a4603d957b_field_622a45c2e5c36'),
(385, 58, 'home_1_text', 'On behalf of pédiatrie suisse, the Swiss Society of Paediatrics (SSP), and the Swiss Academy for Psychosomatic and Psychosocial Medicine (SAPPM), we kindly welcome you to the virtual annual conference on June 10-11, 2021. Special circumstances require special measures – and so we are pleased that, due to the ongoing COVID-19 pandemic, we can now hold the congress carefully prepared for June 2020 at least as a virtual meeting.\r\n'),
(386, 58, '_home_1_text', 'field_622a4603d957b_field_622a45cde5c37'),
(387, 58, 'home_1_button', 'a:3:{s:5:\"title\";s:10:\"Learn more\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}'),
(388, 58, '_home_1_button', 'field_622a4603d957b_field_622a45d2e5c38'),
(389, 58, 'home', 'a:2:{i:0;s:5:\"intro\";i:1;s:7:\"welcome\";}'),
(390, 58, '_home', 'field_622a435edf2bd'),
(391, 58, 'home_1_title_word', 'Welcome'),
(392, 58, '_home_1_title_word', 'field_622a4603d957b_field_622a49bdaf99b'),
(393, 59, 'home_0_img', '47'),
(394, 59, '_home_0_img', 'field_622a4378df2be_field_622a42d3e4c79'),
(395, 59, 'home_0_subtitle', 'ANNUAL CONGRESS 2021 '),
(396, 59, '_home_0_subtitle', 'field_622a4378df2be_field_622a42e3e38d8'),
(397, 59, 'home_0_date', '10-11 JUNI'),
(398, 59, '_home_0_date', 'field_622a4378df2be_field_622a431d15120'),
(399, 59, 'home_0_title', 'Pediatric Integrative Medicine'),
(400, 59, '_home_0_title', 'field_622a4378df2be_field_622a42f2d981f'),
(401, 59, 'home_0_text', 'Building bridges between conventional and complementary medicine'),
(402, 59, '_home_0_text', 'field_622a4378df2be_field_622a42fbd9820'),
(403, 59, 'home_0_button', 'a:3:{s:5:\"title\";s:8:\"Register\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}'),
(404, 59, '_home_0_button', 'field_622a4378df2be_field_622a4305d9821'),
(405, 59, 'home_1_img', '50'),
(406, 59, '_home_1_img', 'field_622a4603d957b_field_622a45b5e5c35'),
(407, 59, 'home_1_title', 'Address of '),
(408, 59, '_home_1_title', 'field_622a4603d957b_field_622a45c2e5c36'),
(409, 59, 'home_1_text', 'On behalf of pédiatrie suisse, the Swiss Society of Paediatrics (SSP), and the Swiss Academy for Psychosomatic and Psychosocial Medicine (SAPPM), we kindly welcome you to the virtual annual conference on June 10-11, 2021. Special circumstances require special measures – and so we are pleased that, due to the ongoing COVID-19 pandemic, we can now hold the congress carefully prepared for June 2020 at least as a virtual meeting.\r\n'),
(410, 59, '_home_1_text', 'field_622a4603d957b_field_622a45cde5c37'),
(411, 59, 'home_1_button', 'a:3:{s:5:\"title\";s:10:\"Learn more\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}'),
(412, 59, '_home_1_button', 'field_622a4603d957b_field_622a45d2e5c38'),
(413, 59, 'home', 'a:2:{i:0;s:5:\"intro\";i:1;s:7:\"welcome\";}'),
(414, 59, '_home', 'field_622a435edf2bd'),
(415, 59, 'home_1_title_word', 'Welcome'),
(416, 59, '_home_1_title_word', 'field_622a4603d957b_field_622a49bdaf99b'),
(417, 60, 'home_0_img', '47'),
(418, 60, '_home_0_img', 'field_622a4378df2be_field_622a42d3e4c79'),
(419, 60, 'home_0_subtitle', 'ANNUAL CONGRESS 2021 '),
(420, 60, '_home_0_subtitle', 'field_622a4378df2be_field_622a42e3e38d8'),
(421, 60, 'home_0_date', '10-11 JUNI'),
(422, 60, '_home_0_date', 'field_622a4378df2be_field_622a431d15120'),
(423, 60, 'home_0_title', 'Pediatric Integrative Medicine'),
(424, 60, '_home_0_title', 'field_622a4378df2be_field_622a42f2d981f'),
(425, 60, 'home_0_text', 'Building bridges between conventional and complementary medicine'),
(426, 60, '_home_0_text', 'field_622a4378df2be_field_622a42fbd9820'),
(427, 60, 'home_0_button', 'a:3:{s:5:\"title\";s:8:\"Register\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:6:\"_blank\";}'),
(428, 60, '_home_0_button', 'field_622a4378df2be_field_622a4305d9821'),
(429, 60, 'home_1_img', '50'),
(430, 60, '_home_1_img', 'field_622a4603d957b_field_622a45b5e5c35'),
(431, 60, 'home_1_title', 'Address of '),
(432, 60, '_home_1_title', 'field_622a4603d957b_field_622a45c2e5c36'),
(433, 60, 'home_1_text', 'On behalf of pédiatrie suisse, the Swiss Society of Paediatrics (SSP), and the Swiss Academy for Psychosomatic and Psychosocial Medicine (SAPPM), we kindly welcome you to the virtual annual conference on June 10-11, 2021. Special circumstances require special measures – and so we are pleased that, due to the ongoing COVID-19 pandemic, we can now hold the congress carefully prepared for June 2020 at least as a virtual meeting.\r\n'),
(434, 60, '_home_1_text', 'field_622a4603d957b_field_622a45cde5c37'),
(435, 60, 'home_1_button', 'a:3:{s:5:\"title\";s:10:\"Learn more\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}'),
(436, 60, '_home_1_button', 'field_622a4603d957b_field_622a45d2e5c38'),
(437, 60, 'home', 'a:2:{i:0;s:5:\"intro\";i:1;s:7:\"welcome\";}'),
(438, 60, '_home', 'field_622a435edf2bd'),
(439, 60, 'home_1_title_word', 'Welcome'),
(440, 60, '_home_1_title_word', 'field_622a4603d957b_field_622a49bdaf99b'),
(441, 61, 'home_0_img', '47'),
(442, 61, '_home_0_img', 'field_622a4378df2be_field_622a42d3e4c79'),
(443, 61, 'home_0_subtitle', 'ANNUAL CONGRESS 2021 '),
(444, 61, '_home_0_subtitle', 'field_622a4378df2be_field_622a42e3e38d8'),
(445, 61, 'home_0_date', '10-11 JUNI'),
(446, 61, '_home_0_date', 'field_622a4378df2be_field_622a431d15120'),
(447, 61, 'home_0_title', 'Pediatric Integrative Medicine'),
(448, 61, '_home_0_title', 'field_622a4378df2be_field_622a42f2d981f'),
(449, 61, 'home_0_text', 'Building bridges between conventional and complementary medicine'),
(450, 61, '_home_0_text', 'field_622a4378df2be_field_622a42fbd9820'),
(451, 61, 'home_0_button', 'a:3:{s:5:\"title\";s:8:\"Register\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}'),
(452, 61, '_home_0_button', 'field_622a4378df2be_field_622a4305d9821'),
(453, 61, 'home_1_img', '50'),
(454, 61, '_home_1_img', 'field_622a4603d957b_field_622a45b5e5c35'),
(455, 61, 'home_1_title', 'Address of '),
(456, 61, '_home_1_title', 'field_622a4603d957b_field_622a45c2e5c36'),
(457, 61, 'home_1_text', 'On behalf of pédiatrie suisse, the Swiss Society of Paediatrics (SSP), and the Swiss Academy for Psychosomatic and Psychosocial Medicine (SAPPM), we kindly welcome you to the virtual annual conference on June 10-11, 2021. Special circumstances require special measures – and so we are pleased that, due to the ongoing COVID-19 pandemic, we can now hold the congress carefully prepared for June 2020 at least as a virtual meeting.\r\n'),
(458, 61, '_home_1_text', 'field_622a4603d957b_field_622a45cde5c37'),
(459, 61, 'home_1_button', 'a:3:{s:5:\"title\";s:10:\"Learn more\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}'),
(460, 61, '_home_1_button', 'field_622a4603d957b_field_622a45d2e5c38'),
(461, 61, 'home', 'a:2:{i:0;s:5:\"intro\";i:1;s:7:\"welcome\";}'),
(462, 61, '_home', 'field_622a435edf2bd'),
(463, 61, 'home_1_title_word', 'Welcome'),
(464, 61, '_home_1_title_word', 'field_622a4603d957b_field_622a49bdaf99b'),
(487, 62, 'home', 'a:2:{i:0;s:7:\"welcome\";i:1;s:5:\"intro\";}'),
(488, 62, '_home', 'field_622a435edf2bd'),
(489, 62, 'home_0_img', '50'),
(490, 62, '_home_0_img', 'field_622a4603d957b_field_622a45b5e5c35'),
(491, 62, 'home_0_title', 'Address of '),
(492, 62, '_home_0_title', 'field_622a4603d957b_field_622a45c2e5c36'),
(493, 62, 'home_0_title_word', 'Welcome'),
(494, 62, '_home_0_title_word', 'field_622a4603d957b_field_622a49bdaf99b'),
(495, 62, 'home_0_text', 'On behalf of pédiatrie suisse, the Swiss Society of Paediatrics (SSP), and the Swiss Academy for Psychosomatic and Psychosocial Medicine (SAPPM), we kindly welcome you to the virtual annual conference on June 10-11, 2021. Special circumstances require special measures – and so we are pleased that, due to the ongoing COVID-19 pandemic, we can now hold the congress carefully prepared for June 2020 at least as a virtual meeting.\r\n'),
(496, 62, '_home_0_text', 'field_622a4603d957b_field_622a45cde5c37'),
(497, 62, 'home_0_button', 'a:3:{s:5:\"title\";s:10:\"Learn more\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}'),
(498, 62, '_home_0_button', 'field_622a4603d957b_field_622a45d2e5c38'),
(499, 62, 'home_1_img', '47'),
(500, 62, '_home_1_img', 'field_622a4378df2be_field_622a42d3e4c79'),
(501, 62, 'home_1_subtitle', 'ANNUAL CONGRESS 2021 '),
(502, 62, '_home_1_subtitle', 'field_622a4378df2be_field_622a42e3e38d8'),
(503, 62, 'home_1_date', '10-11 JUNI'),
(504, 62, '_home_1_date', 'field_622a4378df2be_field_622a431d15120'),
(505, 62, 'home_1_title', 'Pediatric Integrative Medicine'),
(506, 62, '_home_1_title', 'field_622a4378df2be_field_622a42f2d981f'),
(507, 62, 'home_1_text', 'Building bridges between conventional and complementary medicine'),
(508, 62, '_home_1_text', 'field_622a4378df2be_field_622a42fbd9820'),
(509, 62, 'home_1_button', 'a:3:{s:5:\"title\";s:8:\"Register\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}'),
(510, 62, '_home_1_button', 'field_622a4378df2be_field_622a4305d9821'),
(511, 21, 'home_0_img', '47'),
(512, 21, '_home_0_img', 'field_622a4378df2be_field_622a42d3e4c79'),
(513, 21, 'home_0_subtitle', 'ANNUAL CONGRESS 2021 '),
(514, 21, '_home_0_subtitle', 'field_622a4378df2be_field_622a42e3e38d8'),
(515, 21, 'home_0_date', '10-11 JUNI'),
(516, 21, '_home_0_date', 'field_622a4378df2be_field_622a431d15120'),
(517, 21, 'home_0_title', 'Pediatric Integrative Medicine'),
(518, 21, '_home_0_title', 'field_622a4378df2be_field_622a42f2d981f'),
(519, 21, 'home_0_text', 'Building bridges between conventional and complementary medicine'),
(520, 21, '_home_0_text', 'field_622a4378df2be_field_622a42fbd9820'),
(521, 21, 'home_0_button', 'a:3:{s:5:\"title\";s:8:\"Register\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}'),
(522, 21, '_home_0_button', 'field_622a4378df2be_field_622a4305d9821'),
(523, 21, 'home_1_img', '50'),
(524, 21, '_home_1_img', 'field_622a4603d957b_field_622a45b5e5c35'),
(525, 21, 'home_1_title', 'Address of '),
(526, 21, '_home_1_title', 'field_622a4603d957b_field_622a45c2e5c36'),
(527, 21, 'home_1_title_word', 'Welcome'),
(528, 21, '_home_1_title_word', 'field_622a4603d957b_field_622a49bdaf99b'),
(529, 21, 'home_1_text', 'On behalf of pédiatrie suisse, the Swiss Society of Paediatrics (SSP), and the Swiss Academy for Psychosomatic and Psychosocial Medicine (SAPPM), we kindly welcome you to the virtual annual conference on June 10-11, 2021. Special circumstances require special measures – and so we are pleased that, due to the ongoing COVID-19 pandemic, we can now hold the congress carefully prepared for June 2020 at least as a virtual meeting.\r\n'),
(530, 21, '_home_1_text', 'field_622a4603d957b_field_622a45cde5c37'),
(531, 21, 'home_1_button', 'a:3:{s:5:\"title\";s:10:\"Learn more\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}'),
(532, 21, '_home_1_button', 'field_622a4603d957b_field_622a45d2e5c38'),
(533, 63, 'home', 'a:2:{i:0;s:5:\"intro\";i:1;s:7:\"welcome\";}'),
(534, 63, '_home', 'field_622a435edf2bd'),
(535, 63, 'home_0_img', '47'),
(536, 63, '_home_0_img', 'field_622a4378df2be_field_622a42d3e4c79'),
(537, 63, 'home_0_subtitle', 'ANNUAL CONGRESS 2021 '),
(538, 63, '_home_0_subtitle', 'field_622a4378df2be_field_622a42e3e38d8'),
(539, 63, 'home_0_date', '10-11 JUNI'),
(540, 63, '_home_0_date', 'field_622a4378df2be_field_622a431d15120'),
(541, 63, 'home_0_title', 'Pediatric Integrative Medicine'),
(542, 63, '_home_0_title', 'field_622a4378df2be_field_622a42f2d981f'),
(543, 63, 'home_0_text', 'Building bridges between conventional and complementary medicine'),
(544, 63, '_home_0_text', 'field_622a4378df2be_field_622a42fbd9820'),
(545, 63, 'home_0_button', 'a:3:{s:5:\"title\";s:8:\"Register\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}'),
(546, 63, '_home_0_button', 'field_622a4378df2be_field_622a4305d9821'),
(547, 63, 'home_1_img', '50'),
(548, 63, '_home_1_img', 'field_622a4603d957b_field_622a45b5e5c35'),
(549, 63, 'home_1_title', 'Address of '),
(550, 63, '_home_1_title', 'field_622a4603d957b_field_622a45c2e5c36'),
(551, 63, 'home_1_title_word', 'Welcome'),
(552, 63, '_home_1_title_word', 'field_622a4603d957b_field_622a49bdaf99b'),
(553, 63, 'home_1_text', 'On behalf of pédiatrie suisse, the Swiss Society of Paediatrics (SSP), and the Swiss Academy for Psychosomatic and Psychosocial Medicine (SAPPM), we kindly welcome you to the virtual annual conference on June 10-11, 2021. Special circumstances require special measures – and so we are pleased that, due to the ongoing COVID-19 pandemic, we can now hold the congress carefully prepared for June 2020 at least as a virtual meeting.\r\n'),
(554, 63, '_home_1_text', 'field_622a4603d957b_field_622a45cde5c37'),
(555, 63, 'home_1_button', 'a:3:{s:5:\"title\";s:10:\"Learn more\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}'),
(556, 63, '_home_1_button', 'field_622a4603d957b_field_622a45d2e5c38'),
(557, 65, '_edit_last', '1'),
(558, 65, '_edit_lock', '1647005827:1'),
(567, 73, '_edit_last', '1'),
(568, 73, '_edit_lock', '1647000480:1'),
(569, 74, '_edit_last', '1'),
(570, 74, '_edit_lock', '1647000476:1'),
(571, 75, '_edit_last', '1'),
(572, 75, '_edit_lock', '1647000473:1'),
(573, 76, '_edit_last', '1'),
(574, 76, '_edit_lock', '1647000466:1'),
(575, 68, '_edit_last', '1'),
(576, 68, 'sessions', 'a:4:{i:0;s:2:\"75\";i:1;s:2:\"74\";i:2;s:2:\"73\";i:3;s:2:\"76\";}'),
(577, 68, '_sessions', 'field_622b351dd70b4'),
(578, 68, '_edit_lock', '1647109515:1'),
(591, 68, '_wp_old_slug', '68'),
(597, 76, '_wp_old_slug', 'pleine-conscience-2'),
(598, 75, '_wp_old_slug', 'integrative-pediatric-oncology-2'),
(599, 74, '_wp_old_slug', 'medecine-psychosomatique-gastro-nephro-2'),
(600, 73, '_wp_old_slug', 'ouverture-integrative-pediatrics-2'),
(602, 77, '_edit_last', '1'),
(603, 77, 'sessions', ''),
(604, 77, '_sessions', 'field_622b351dd70b4'),
(605, 77, '_edit_lock', '1647038738:1'),
(606, 78, '_edit_last', '1'),
(607, 78, 'sessions', ''),
(608, 78, '_sessions', 'field_622b351dd70b4'),
(609, 78, '_edit_lock', '1647015452:1'),
(610, 79, '_edit_last', '1'),
(611, 79, 'sessions', ''),
(612, 79, '_sessions', 'field_622b351dd70b4'),
(613, 79, '_edit_lock', '1647034356:1'),
(614, 80, '_edit_last', '1'),
(615, 80, 'sessions', ''),
(616, 80, '_sessions', 'field_622b351dd70b4'),
(617, 80, '_edit_lock', '1647017315:1'),
(621, 68, '_wp_old_slug', 'amanda-tea'),
(622, 82, '_edit_last', '1'),
(623, 82, '_edit_lock', '1647032046:1'),
(624, 82, 'sessions', ''),
(625, 82, '_sessions', 'field_622b351dd70b4'),
(626, 83, '_edit_last', '1'),
(627, 83, '_edit_lock', '1647032058:1'),
(628, 83, 'sessions', ''),
(629, 83, '_sessions', 'field_622b351dd70b4'),
(630, 84, '_edit_last', '1'),
(631, 84, '_edit_lock', '1647032068:1'),
(632, 84, 'sessions', ''),
(633, 84, '_sessions', 'field_622b351dd70b4'),
(634, 85, '_edit_last', '1'),
(635, 85, 'sessions', ''),
(636, 85, '_sessions', 'field_622b351dd70b4'),
(637, 85, '_edit_lock', '1647032080:1'),
(638, 86, '_edit_last', '1'),
(639, 86, 'sessions', ''),
(640, 86, '_sessions', 'field_622b351dd70b4'),
(641, 86, '_edit_lock', '1647032092:1'),
(642, 87, '_edit_last', '1'),
(643, 87, 'sessions', ''),
(644, 87, '_sessions', 'field_622b351dd70b4'),
(645, 87, '_edit_lock', '1647032102:1'),
(646, 88, '_edit_last', '1'),
(647, 88, 'sessions', ''),
(648, 88, '_sessions', 'field_622b351dd70b4'),
(649, 88, '_edit_lock', '1647032109:1'),
(650, 89, '_edit_last', '1'),
(651, 89, '_edit_lock', '1647032127:1'),
(652, 89, 'sessions', ''),
(653, 89, '_sessions', 'field_622b351dd70b4'),
(654, 90, '_edit_last', '1'),
(655, 90, 'sessions', ''),
(656, 90, '_sessions', 'field_622b351dd70b4'),
(657, 90, '_edit_lock', '1647032138:1'),
(658, 91, '_edit_last', '1'),
(659, 91, 'sessions', ''),
(660, 91, '_sessions', 'field_622b351dd70b4'),
(661, 91, '_edit_lock', '1647032151:1'),
(662, 92, '_edit_last', '1'),
(663, 92, 'sessions', ''),
(664, 92, '_sessions', 'field_622b351dd70b4'),
(665, 92, '_edit_lock', '1647032164:1'),
(666, 93, '_edit_last', '1'),
(667, 93, 'sessions', ''),
(668, 93, '_sessions', 'field_622b351dd70b4'),
(669, 93, '_edit_lock', '1647032175:1'),
(670, 94, '_edit_last', '1'),
(671, 94, 'sessions', ''),
(672, 94, '_sessions', 'field_622b351dd70b4'),
(673, 94, '_edit_lock', '1647032187:1'),
(674, 95, '_edit_last', '1'),
(675, 95, 'sessions', ''),
(676, 95, '_sessions', 'field_622b351dd70b4'),
(677, 95, '_edit_lock', '1647038653:1'),
(678, 96, '_edit_last', '1'),
(679, 96, 'sessions', ''),
(680, 96, '_sessions', 'field_622b351dd70b4'),
(681, 96, '_edit_lock', '1647038731:1'),
(682, 97, '_edit_last', '1'),
(683, 97, 'sessions', ''),
(684, 97, '_sessions', 'field_622b351dd70b4'),
(685, 97, '_edit_lock', '1647108228:1'),
(686, 98, '_edit_last', '1'),
(687, 98, 'sessions', ''),
(688, 98, '_sessions', 'field_622b351dd70b4'),
(689, 98, '_edit_lock', '1647108224:1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2022-03-09 09:17:02', '2022-03-09 09:17:02', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2022-03-09 09:17:02', '2022-03-09 09:17:02', '', 0, 'http://altum.test/?p=1', 0, 'post', '', 1),
(2, 1, '2022-03-09 09:17:02', '2022-03-09 09:17:02', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://altum.test/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2022-03-09 09:17:02', '2022-03-09 09:17:02', '', 0, 'http://altum.test/?page_id=2', 0, 'page', '', 0),
(3, 1, '2022-03-09 09:17:02', '2022-03-09 09:17:02', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://altum.test.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2022-03-09 09:17:02', '2022-03-09 09:17:02', '', 0, 'http://altum.test/?page_id=3', 0, 'page', '', 0),
(5, 1, '2022-03-10 11:33:18', '2022-03-09 13:25:45', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2022-03-10 11:33:18', '2022-03-10 11:33:18', '', 0, 'http://altum.test/?p=5', 1, 'nav_menu_item', '', 0),
(6, 1, '2022-03-09 13:24:50', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-03-09 13:24:50', '0000-00-00 00:00:00', '', 0, 'http://altum.test/?p=6', 1, 'nav_menu_item', '', 0),
(7, 1, '2022-03-10 11:33:18', '2022-03-09 13:25:45', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2022-03-10 11:33:18', '2022-03-10 11:33:18', '', 0, 'http://altum.test/?p=7', 2, 'nav_menu_item', '', 0),
(8, 1, '2022-03-10 11:33:18', '2022-03-09 13:25:45', '', 'Speakers', '', 'publish', 'closed', 'closed', '', 'speakers', '', '', '2022-03-10 11:33:18', '2022-03-10 11:33:18', '', 0, 'http://altum.test/?p=8', 3, 'nav_menu_item', '', 0),
(9, 1, '2022-03-10 11:33:18', '2022-03-09 13:25:45', '', 'Agenda', '', 'publish', 'closed', 'closed', '', 'agenda', '', '', '2022-03-10 11:33:18', '2022-03-10 11:33:18', '', 0, 'http://altum.test/?p=9', 4, 'nav_menu_item', '', 0),
(10, 1, '2022-03-10 11:33:18', '2022-03-09 13:25:45', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2022-03-10 11:33:18', '2022-03-10 11:33:18', '', 0, 'http://altum.test/?p=10', 5, 'nav_menu_item', '', 0),
(11, 1, '2022-03-09 14:22:52', '2022-03-09 14:22:52', '', 'polylang_mo_3', '', 'private', 'closed', 'closed', '', 'polylang_mo_3', '', '', '2022-03-09 14:22:52', '2022-03-09 14:22:52', '', 0, 'http://altum.test/?post_type=polylang_mo&p=11', 0, 'polylang_mo', '', 0),
(12, 1, '2022-03-09 14:22:54', '2022-03-09 14:22:54', '', 'polylang_mo_5', '', 'private', 'closed', 'closed', '', 'polylang_mo_5', '', '', '2022-03-09 14:22:54', '2022-03-09 14:22:54', '', 0, 'http://altum.test/?post_type=polylang_mo&p=12', 0, 'polylang_mo', '', 0),
(13, 1, '2022-03-09 16:46:32', '2022-03-09 16:46:32', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2022-03-09 16:46:32', '2022-03-09 16:46:32', '', 0, 'http://altum.test/wp-content/uploads/2022/03/logo.png', 0, 'attachment', 'image/png', 0),
(14, 1, '2022-03-09 16:46:38', '2022-03-09 16:46:38', '{\n    \"altum::custom_logo\": {\n        \"value\": 13,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-03-09 16:46:38\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5adb4615-7156-40eb-8750-fff9dab21236', '', '', '2022-03-09 16:46:38', '2022-03-09 16:46:38', '', 0, 'http://altum.test/2022/03/09/5adb4615-7156-40eb-8750-fff9dab21236/', 0, 'customize_changeset', '', 0),
(15, 1, '2022-03-09 16:46:48', '2022-03-09 16:46:48', '{\n    \"site_icon\": {\n        \"value\": 13,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-03-09 16:46:48\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '69d37db4-2304-4248-943c-51a364b2798f', '', '', '2022-03-09 16:46:48', '2022-03-09 16:46:48', '', 0, 'http://altum.test/2022/03/09/69d37db4-2304-4248-943c-51a364b2798f/', 0, 'customize_changeset', '', 0),
(16, 1, '2022-03-10 11:37:27', '2022-03-10 11:37:04', '', 'About', '', 'publish', 'closed', 'closed', '', 'about-2', '', '', '2022-03-10 11:37:27', '2022-03-10 11:37:27', '', 0, 'http://altum.test/?p=16', 2, 'nav_menu_item', '', 0),
(17, 1, '2022-03-10 11:37:27', '2022-03-10 11:37:04', '', 'Speakers', '', 'publish', 'closed', 'closed', '', 'speakers-2', '', '', '2022-03-10 11:37:27', '2022-03-10 11:37:27', '', 0, 'http://altum.test/?p=17', 3, 'nav_menu_item', '', 0),
(18, 1, '2022-03-10 11:37:27', '2022-03-10 11:37:04', '', 'Schedule', '', 'publish', 'closed', 'closed', '', 'schedule', '', '', '2022-03-10 11:37:27', '2022-03-10 11:37:27', '', 0, 'http://altum.test/?p=18', 4, 'nav_menu_item', '', 0),
(19, 1, '2022-03-10 11:37:27', '2022-03-10 11:37:04', '', 'Contacts', '', 'publish', 'closed', 'closed', '', 'contacts', '', '', '2022-03-10 11:37:27', '2022-03-10 11:37:27', '', 0, 'http://altum.test/?p=19', 5, 'nav_menu_item', '', 0),
(20, 1, '2022-03-10 11:37:27', '2022-03-10 11:37:27', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home-2', '', '', '2022-03-10 11:37:27', '2022-03-10 11:37:27', '', 0, 'http://altum.test/?p=20', 1, 'nav_menu_item', '', 0),
(21, 1, '2022-03-10 11:50:55', '2022-03-10 11:50:55', '', 'home', '', 'publish', 'closed', 'closed', '', 'homepage', '', '', '2022-03-10 19:35:30', '2022-03-10 19:35:30', '', 0, 'http://altum.test/?page_id=21', 0, 'page', '', 0),
(22, 1, '2022-03-10 11:50:43', '2022-03-10 11:50:43', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-altum', '', '', '2022-03-10 11:50:43', '2022-03-10 11:50:43', '', 0, 'http://altum.test/2022/03/10/wp-global-styles-altum/', 0, 'wp_global_styles', '', 0),
(23, 1, '2022-03-10 11:50:55', '2022-03-10 11:50:55', '', 'homepage', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2022-03-10 11:50:55', '2022-03-10 11:50:55', '', 21, 'http://altum.test/?p=23', 0, 'revision', '', 0),
(24, 1, '2022-03-10 11:50:59', '2022-03-10 11:50:59', '', 'home', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2022-03-10 11:50:59', '2022-03-10 11:50:59', '', 21, 'http://altum.test/?p=24', 0, 'revision', '', 0),
(25, 1, '2022-03-10 17:58:12', '2022-03-10 17:58:12', '', 'головна', '', 'publish', 'closed', 'closed', '', '%d0%b3%d0%be%d0%bb%d0%be%d0%b2%d0%bd%d0%b0', '', '', '2022-03-10 17:58:12', '2022-03-10 17:58:12', '', 0, 'http://altum.test/?page_id=25', 0, 'page', '', 0),
(26, 1, '2022-03-10 17:58:12', '2022-03-10 17:58:12', '', 'головна', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2022-03-10 17:58:12', '2022-03-10 17:58:12', '', 25, 'http://altum.test/?p=26', 0, 'revision', '', 0),
(28, 1, '2022-03-10 18:26:04', '2022-03-10 18:26:04', 'a:12:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"home.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:8:\"seamless\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:14:{i:0;s:9:\"permalink\";i:1;s:11:\"the_content\";i:2;s:7:\"excerpt\";i:3;s:10:\"discussion\";i:4;s:8:\"comments\";i:5;s:9:\"revisions\";i:6;s:4:\"slug\";i:7;s:6:\"author\";i:8;s:6:\"format\";i:9;s:15:\"page_attributes\";i:10;s:14:\"featured_image\";i:11;s:10:\"categories\";i:12;s:4:\"tags\";i:13;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";s:18:\"acfe_display_title\";s:0:\"\";s:13:\"acfe_autosync\";a:1:{i:0;s:4:\"json\";}s:9:\"acfe_form\";i:0;s:9:\"acfe_meta\";s:0:\"\";s:9:\"acfe_note\";s:0:\"\";}', 'home', 'home', 'publish', 'closed', 'closed', '', 'group_622a42803aade', '', '', '2022-03-10 19:07:02', '2022-03-10 19:07:02', '', 0, 'http://altum.test/?post_type=acf-field-group&#038;p=28', 0, 'acf-field-group', '', 0),
(29, 1, '2022-03-10 18:26:23', '2022-03-10 18:26:23', 'a:12:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:14:{i:0;s:9:\"permalink\";i:1;s:11:\"the_content\";i:2;s:7:\"excerpt\";i:3;s:10:\"discussion\";i:4;s:8:\"comments\";i:5;s:9:\"revisions\";i:6;s:4:\"slug\";i:7;s:6:\"author\";i:8;s:6:\"format\";i:9;s:15:\"page_attributes\";i:10;s:14:\"featured_image\";i:11;s:10:\"categories\";i:12;s:4:\"tags\";i:13;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";s:18:\"acfe_display_title\";s:0:\"\";s:13:\"acfe_autosync\";a:1:{i:0;s:4:\"json\";}s:9:\"acfe_form\";i:0;s:9:\"acfe_meta\";s:0:\"\";s:9:\"acfe_note\";s:0:\"\";}', 'intro', 'intro', 'acf-disabled', 'closed', 'closed', '', 'group_622a42bea1899', '', '', '2022-03-10 18:54:18', '2022-03-10 18:54:18', '', 0, 'http://altum.test/?post_type=acf-field-group&#038;p=29', 0, 'acf-field-group', '', 0),
(30, 1, '2022-03-10 18:26:41', '2022-03-10 18:26:41', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'img', 'img', 'publish', 'closed', 'closed', '', 'field_622a42d3e4c79', '', '', '2022-03-10 18:26:41', '2022-03-10 18:26:41', '', 29, 'http://altum.test/?post_type=acf-field&p=30', 0, 'acf-field', '', 0),
(31, 1, '2022-03-10 18:26:56', '2022-03-10 18:26:56', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'subtitle', 'subtitle', 'publish', 'closed', 'closed', '', 'field_622a42e3e38d8', '', '', '2022-03-10 18:26:56', '2022-03-10 18:26:56', '', 29, 'http://altum.test/?post_type=acf-field&p=31', 1, 'acf-field', '', 0),
(32, 1, '2022-03-10 18:27:30', '2022-03-10 18:27:30', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title', 'title', 'publish', 'closed', 'closed', '', 'field_622a42f2d981f', '', '', '2022-03-10 18:28:38', '2022-03-10 18:28:38', '', 29, 'http://altum.test/?post_type=acf-field&#038;p=32', 3, 'acf-field', '', 0),
(33, 1, '2022-03-10 18:27:30', '2022-03-10 18:27:30', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'text', 'text', 'publish', 'closed', 'closed', '', 'field_622a42fbd9820', '', '', '2022-03-10 18:28:38', '2022-03-10 18:28:38', '', 29, 'http://altum.test/?post_type=acf-field&#038;p=33', 4, 'acf-field', '', 0),
(34, 1, '2022-03-10 18:27:30', '2022-03-10 18:27:30', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'button', 'button', 'publish', 'closed', 'closed', '', 'field_622a4305d9821', '', '', '2022-03-10 18:54:18', '2022-03-10 18:54:18', '', 29, 'http://altum.test/?post_type=acf-field&#038;p=34', 5, 'acf-field', '', 0),
(35, 1, '2022-03-10 18:28:17', '2022-03-10 18:28:17', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'date', 'date', 'publish', 'closed', 'closed', '', 'field_622a431d15120', '', '', '2022-03-10 18:28:38', '2022-03-10 18:28:38', '', 29, 'http://altum.test/?post_type=acf-field&#038;p=35', 2, 'acf-field', '', 0),
(36, 1, '2022-03-10 18:29:37', '2022-03-10 18:29:37', 'a:24:{s:4:\"type\";s:16:\"flexible_content\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:22:\"acfe_flexible_advanced\";i:1;s:29:\"acfe_flexible_stylised_button\";i:1;s:31:\"acfe_flexible_layouts_templates\";i:0;s:33:\"acfe_flexible_layouts_placeholder\";i:0;s:32:\"acfe_flexible_layouts_thumbnails\";i:1;s:30:\"acfe_flexible_layouts_settings\";i:0;s:19:\"acfe_flexible_async\";a:0:{}s:25:\"acfe_flexible_add_actions\";a:0:{}s:27:\"acfe_flexible_remove_button\";a:0:{}s:27:\"acfe_flexible_layouts_state\";s:4:\"user\";s:24:\"acfe_flexible_modal_edit\";a:2:{s:32:\"acfe_flexible_modal_edit_enabled\";s:1:\"0\";s:29:\"acfe_flexible_modal_edit_size\";s:5:\"large\";}s:19:\"acfe_flexible_modal\";a:5:{s:27:\"acfe_flexible_modal_enabled\";s:1:\"1\";s:25:\"acfe_flexible_modal_title\";s:0:\"\";s:24:\"acfe_flexible_modal_size\";s:4:\"full\";s:23:\"acfe_flexible_modal_col\";s:1:\"4\";s:30:\"acfe_flexible_modal_categories\";s:1:\"0\";}s:7:\"layouts\";a:2:{s:20:\"layout_622a4365ab806\";a:14:{s:3:\"key\";s:20:\"layout_622a4365ab806\";s:5:\"label\";s:5:\"intro\";s:4:\"name\";s:5:\"intro\";s:7:\"display\";s:5:\"block\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:29:\"acfe_flexible_render_template\";s:0:\"\";s:26:\"acfe_flexible_render_style\";s:0:\"\";s:27:\"acfe_flexible_render_script\";s:0:\"\";s:23:\"acfe_flexible_thumbnail\";s:2:\"38\";s:22:\"acfe_flexible_settings\";b:0;s:27:\"acfe_flexible_settings_size\";s:6:\"medium\";s:29:\"acfe_flexible_modal_edit_size\";b:0;s:22:\"acfe_flexible_category\";b:0;}s:20:\"layout_622a45f8d957a\";a:14:{s:3:\"key\";s:20:\"layout_622a45f8d957a\";s:5:\"label\";s:7:\"welcome\";s:4:\"name\";s:7:\"welcome\";s:7:\"display\";s:5:\"block\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:29:\"acfe_flexible_render_template\";s:0:\"\";s:26:\"acfe_flexible_render_style\";s:0:\"\";s:27:\"acfe_flexible_render_script\";s:0:\"\";s:23:\"acfe_flexible_thumbnail\";s:2:\"44\";s:22:\"acfe_flexible_settings\";b:0;s:27:\"acfe_flexible_settings_size\";s:6:\"medium\";s:29:\"acfe_flexible_modal_edit_size\";b:0;s:22:\"acfe_flexible_category\";b:0;}}s:12:\"button_label\";s:7:\"Add Row\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:32:\"acfe_flexible_hide_empty_message\";b:0;s:27:\"acfe_flexible_empty_message\";s:0:\"\";s:30:\"acfe_flexible_layouts_previews\";b:0;}', 'home', 'home', 'publish', 'closed', 'closed', '', 'field_622a435edf2bd', '', '', '2022-03-10 19:07:02', '2022-03-10 19:07:02', '', 28, 'http://altum.test/?post_type=acf-field&#038;p=36', 0, 'acf-field', '', 0),
(37, 1, '2022-03-10 18:29:37', '2022-03-10 18:29:37', 'a:11:{s:4:\"type\";s:5:\"clone\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_622a4365ab806\";s:5:\"clone\";a:1:{i:0;s:19:\"group_622a42bea1899\";}s:7:\"display\";s:8:\"seamless\";s:6:\"layout\";s:5:\"block\";s:12:\"prefix_label\";i:0;s:11:\"prefix_name\";i:0;}', 'intro', 'intro', 'publish', 'closed', 'closed', '', 'field_622a4378df2be', '', '', '2022-03-10 18:29:37', '2022-03-10 18:29:37', '', 36, 'http://altum.test/?post_type=acf-field&p=37', 0, 'acf-field', '', 0),
(38, 1, '2022-03-10 18:32:56', '2022-03-10 18:32:56', '', 'intro_placeholder', '', 'inherit', 'open', 'closed', '', 'intro_placeholder', '', '', '2022-03-10 18:32:56', '2022-03-10 18:32:56', '', 28, 'http://altum.test/wp-content/uploads/2022/03/intro_placeholder.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2022-03-10 18:38:39', '2022-03-10 18:38:39', 'a:12:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:4:\"left\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:18:\"acfe_display_title\";s:0:\"\";s:13:\"acfe_autosync\";a:1:{i:0;s:4:\"json\";}s:9:\"acfe_form\";i:0;s:9:\"acfe_meta\";s:0:\"\";s:9:\"acfe_note\";s:0:\"\";}', 'welcome', 'welcome', 'acf-disabled', 'closed', 'closed', '', 'group_622a45a7248a5', '', '', '2022-03-10 19:27:59', '2022-03-10 19:27:59', '', 0, 'http://altum.test/?post_type=acf-field-group&#038;p=39', 0, 'acf-field-group', '', 0),
(40, 1, '2022-03-10 18:39:33', '2022-03-10 18:39:33', 'a:17:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:8:\"uploader\";s:0:\"\";s:14:\"acfe_thumbnail\";i:0;s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:7:\"library\";s:3:\"all\";}', 'img', 'img', 'publish', 'closed', 'closed', '', 'field_622a45b5e5c35', '', '', '2022-03-10 18:39:33', '2022-03-10 18:39:33', '', 39, 'http://altum.test/?post_type=acf-field&p=40', 0, 'acf-field', '', 0),
(41, 1, '2022-03-10 18:39:33', '2022-03-10 18:39:33', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title', 'title', 'publish', 'closed', 'closed', '', 'field_622a45c2e5c36', '', '', '2022-03-10 18:39:33', '2022-03-10 18:39:33', '', 39, 'http://altum.test/?post_type=acf-field&p=41', 1, 'acf-field', '', 0),
(42, 1, '2022-03-10 18:39:33', '2022-03-10 18:39:33', 'a:11:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";s:18:\"acfe_textarea_code\";i:0;}', 'text', 'text', 'publish', 'closed', 'closed', '', 'field_622a45cde5c37', '', '', '2022-03-10 18:56:07', '2022-03-10 18:56:07', '', 39, 'http://altum.test/?post_type=acf-field&#038;p=42', 3, 'acf-field', '', 0),
(43, 1, '2022-03-10 18:39:33', '2022-03-10 18:39:33', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'button', 'button', 'publish', 'closed', 'closed', '', 'field_622a45d2e5c38', '', '', '2022-03-10 18:56:07', '2022-03-10 18:56:07', '', 39, 'http://altum.test/?post_type=acf-field&#038;p=43', 4, 'acf-field', '', 0),
(44, 1, '2022-03-10 18:40:45', '2022-03-10 18:40:45', '', 'welcome_placeholder', '', 'inherit', 'open', 'closed', '', 'welcome_placeholder', '', '', '2022-03-10 18:40:45', '2022-03-10 18:40:45', '', 28, 'http://altum.test/wp-content/uploads/2022/03/welcome_placeholder.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2022-03-10 18:40:49', '2022-03-10 18:40:49', 'a:11:{s:4:\"type\";s:5:\"clone\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_622a45f8d957a\";s:5:\"clone\";a:1:{i:0;s:19:\"group_622a45a7248a5\";}s:7:\"display\";s:8:\"seamless\";s:6:\"layout\";s:5:\"block\";s:12:\"prefix_label\";i:0;s:11:\"prefix_name\";i:0;}', 'welcome', 'welcome', 'publish', 'closed', 'closed', '', 'field_622a4603d957b', '', '', '2022-03-10 18:40:49', '2022-03-10 18:40:49', '', 36, 'http://altum.test/?post_type=acf-field&p=45', 0, 'acf-field', '', 0),
(46, 1, '2022-03-10 18:41:35', '2022-03-10 18:41:35', '', 'home', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2022-03-10 18:41:35', '2022-03-10 18:41:35', '', 21, 'http://altum.test/?p=46', 0, 'revision', '', 0),
(47, 1, '2022-03-10 18:53:10', '2022-03-10 18:53:10', '', 'hero', '', 'inherit', 'open', 'closed', '', 'hero', '', '', '2022-03-10 18:53:10', '2022-03-10 18:53:10', '', 21, 'http://altum.test/wp-content/uploads/2022/03/hero.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2022-03-10 18:53:51', '2022-03-10 18:53:51', '', 'home', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2022-03-10 18:53:51', '2022-03-10 18:53:51', '', 21, 'http://altum.test/?p=48', 0, 'revision', '', 0),
(49, 1, '2022-03-10 18:55:11', '2022-03-10 18:55:11', '', 'home', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2022-03-10 18:55:11', '2022-03-10 18:55:11', '', 21, 'http://altum.test/?p=49', 0, 'revision', '', 0),
(50, 1, '2022-03-10 18:55:43', '2022-03-10 18:55:43', '', 'welcome_img', '', 'inherit', 'open', 'closed', '', 'welcome_img', '', '', '2022-03-10 18:55:43', '2022-03-10 18:55:43', '', 21, 'http://altum.test/wp-content/uploads/2022/03/welcome_img.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2022-03-10 18:56:07', '2022-03-10 18:56:07', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title word', 'title_word', 'publish', 'closed', 'closed', '', 'field_622a49bdaf99b', '', '', '2022-03-10 18:56:07', '2022-03-10 18:56:07', '', 39, 'http://altum.test/?post_type=acf-field&p=51', 2, 'acf-field', '', 0),
(52, 1, '2022-03-10 18:56:25', '2022-03-10 18:56:25', '', 'home', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2022-03-10 18:56:25', '2022-03-10 18:56:25', '', 21, 'http://altum.test/?p=52', 0, 'revision', '', 0),
(53, 1, '2022-03-10 18:56:33', '2022-03-10 18:56:33', '', 'home', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2022-03-10 18:56:33', '2022-03-10 18:56:33', '', 21, 'http://altum.test/?p=53', 0, 'revision', '', 0),
(54, 1, '2022-03-10 19:14:41', '2022-03-10 19:14:41', '', 'home', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2022-03-10 19:14:41', '2022-03-10 19:14:41', '', 21, 'http://altum.test/?p=54', 0, 'revision', '', 0),
(55, 1, '2022-03-10 19:14:49', '2022-03-10 19:14:49', '', 'home', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2022-03-10 19:14:49', '2022-03-10 19:14:49', '', 21, 'http://altum.test/?p=55', 0, 'revision', '', 0),
(56, 1, '2022-03-10 19:17:23', '2022-03-10 19:17:23', '', 'home', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2022-03-10 19:17:23', '2022-03-10 19:17:23', '', 21, 'http://altum.test/?p=56', 0, 'revision', '', 0),
(57, 1, '2022-03-10 19:17:33', '2022-03-10 19:17:33', '', 'home', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2022-03-10 19:17:33', '2022-03-10 19:17:33', '', 21, 'http://altum.test/?p=57', 0, 'revision', '', 0),
(58, 1, '2022-03-10 19:17:42', '2022-03-10 19:17:42', '', 'home', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2022-03-10 19:17:42', '2022-03-10 19:17:42', '', 21, 'http://altum.test/?p=58', 0, 'revision', '', 0),
(59, 1, '2022-03-10 19:17:50', '2022-03-10 19:17:50', '', 'home', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2022-03-10 19:17:50', '2022-03-10 19:17:50', '', 21, 'http://altum.test/?p=59', 0, 'revision', '', 0),
(60, 1, '2022-03-10 19:23:59', '2022-03-10 19:23:59', '', 'home', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2022-03-10 19:23:59', '2022-03-10 19:23:59', '', 21, 'http://altum.test/?p=60', 0, 'revision', '', 0),
(61, 1, '2022-03-10 19:26:48', '2022-03-10 19:26:48', '', 'home', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2022-03-10 19:26:48', '2022-03-10 19:26:48', '', 21, 'http://altum.test/?p=61', 0, 'revision', '', 0),
(62, 1, '2022-03-10 19:32:59', '2022-03-10 19:32:59', '', 'home', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2022-03-10 19:32:59', '2022-03-10 19:32:59', '', 21, 'http://altum.test/?p=62', 0, 'revision', '', 0),
(63, 1, '2022-03-10 19:35:30', '2022-03-10 19:35:30', '', 'home', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2022-03-10 19:35:30', '2022-03-10 19:35:30', '', 21, 'http://altum.test/?p=63', 0, 'revision', '', 0),
(64, 1, '2022-03-11 11:20:32', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-03-11 11:20:32', '0000-00-00 00:00:00', '', 0, 'http://altum.test/?post_type=speaker&p=64', 0, 'speaker', '', 0),
(65, 1, '2022-03-11 11:38:24', '2022-03-11 11:38:24', 'a:12:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"speaker\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:8:\"seamless\";s:15:\"label_placement\";s:4:\"left\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:12:{i:0;s:12:\"block_editor\";i:1;s:7:\"excerpt\";i:2;s:10:\"discussion\";i:3;s:8:\"comments\";i:4;s:9:\"revisions\";i:5;s:4:\"slug\";i:6;s:6:\"author\";i:7;s:6:\"format\";i:8;s:15:\"page_attributes\";i:9;s:10:\"categories\";i:10;s:4:\"tags\";i:11;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";s:18:\"acfe_display_title\";s:0:\"\";s:13:\"acfe_autosync\";a:1:{i:0;s:4:\"json\";}s:9:\"acfe_form\";i:0;s:9:\"acfe_meta\";s:0:\"\";s:9:\"acfe_note\";s:0:\"\";}', 'Speakers', 'speakers', 'publish', 'closed', 'closed', '', 'group_622b34921d1a7', '', '', '2022-03-11 13:23:10', '2022-03-11 13:23:10', '', 0, 'http://altum.test/?post_type=acf-field-group&#038;p=65', 0, 'acf-field-group', '', 0),
(66, 1, '2022-03-11 11:40:03', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-03-11 11:40:03', '0000-00-00 00:00:00', '', 0, 'http://altum.test/?post_type=speaker&p=66', 0, 'speaker', '', 0),
(67, 1, '2022-03-11 11:43:34', '2022-03-11 11:43:34', 'a:14:{s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:7:\"session\";}s:8:\"taxonomy\";s:0:\"\";s:10:\"allow_null\";i:0;s:8:\"multiple\";i:1;s:13:\"return_format\";s:6:\"object\";s:11:\"save_custom\";i:0;s:16:\"save_post_status\";s:7:\"publish\";s:18:\"acfe_bidirectional\";a:1:{s:26:\"acfe_bidirectional_enabled\";s:1:\"0\";}s:2:\"ui\";i:1;}', 'Sessions', 'sessions', 'publish', 'closed', 'closed', '', 'field_622b351dd70b4', '', '', '2022-03-11 11:52:06', '2022-03-11 11:52:06', '', 65, 'http://altum.test/?post_type=acf-field&#038;p=67', 0, 'acf-field', '', 0),
(68, 1, '2022-03-11 11:49:58', '2022-03-11 11:49:58', 'Are you ready? We just announced our fill congress lineup of 50 inspiring speakers, 2 full-day workshop tracks, 5 detailed QnA Sessions and a lot of 1v1 Zoom Rooms to meet new amazing people. The event is for doctors interested in conventional and complementary medicine, and beyond. It’s all happening this Juno 10-11 online. Book your spot today.', 'Dominique Gut', '', 'publish', 'closed', 'closed', '', 'dominique-gut', '', '', '2022-03-12 18:40:45', '2022-03-12 18:40:45', '', 0, 'http://altum.test/?post_type=speaker&#038;p=68', 0, 'speaker', '', 0),
(73, 1, '2022-03-11 11:49:27', '2022-03-11 11:49:27', '', 'Ouverture / Integrative Pediatrics', '', 'publish', 'closed', 'closed', '', 'ouverture-integrative-pediatrics', '', '', '2022-03-11 12:08:00', '2022-03-11 12:08:00', '', 0, 'http://altum.test/?post_type=session&#038;p=73', 0, 'session', '', 0),
(74, 1, '2022-03-11 11:49:35', '2022-03-11 11:49:35', '', 'Médecine psychosomatique (Gastro/Nephro)', '', 'publish', 'closed', 'closed', '', 'medecine-psychosomatique-gastro-nephro', '', '', '2022-03-11 12:07:56', '2022-03-11 12:07:56', '', 0, 'http://altum.test/?post_type=session&#038;p=74', 0, 'session', '', 0),
(75, 1, '2022-03-11 11:49:42', '2022-03-11 11:49:42', '', 'Integrative pediatric oncology', '', 'publish', 'closed', 'closed', '', 'integrative-pediatric-oncology', '', '', '2022-03-11 12:07:53', '2022-03-11 12:07:53', '', 0, 'http://altum.test/?post_type=session&#038;p=75', 0, 'session', '', 0),
(76, 1, '2022-03-11 11:49:56', '2022-03-11 11:49:56', '', 'Pleine conscience', '', 'publish', 'closed', 'closed', '', 'pleine-conscience', '', '', '2022-03-11 12:07:46', '2022-03-11 12:07:46', '', 0, 'http://altum.test/?post_type=session&#038;p=76', 0, 'session', '', 0),
(77, 1, '2022-03-11 16:19:34', '2022-03-11 16:19:34', '', 'Alain Deppen', '', 'publish', 'closed', 'closed', '', 'alain-deppen', '', '', '2022-03-12 18:40:45', '2022-03-12 18:40:45', '', 0, 'http://altum.test/?post_type=speaker&#038;p=77', 0, 'speaker', '', 0),
(78, 1, '2022-03-11 16:19:51', '2022-03-11 16:19:51', '', 'André Thurneysen', '', 'publish', 'closed', 'closed', '', 'andre-thurneysen', '', '', '2022-03-12 18:40:45', '2022-03-12 18:40:45', '', 0, 'http://altum.test/?post_type=speaker&#038;p=78', 0, 'speaker', '', 0),
(79, 1, '2022-03-11 16:20:01', '2022-03-11 16:20:01', '', 'Beatrice Müller', '', 'publish', 'closed', 'closed', '', 'beatrice-muller', '', '', '2022-03-12 18:40:45', '2022-03-12 18:40:45', '', 0, 'http://altum.test/?post_type=speaker&#038;p=79', 0, 'speaker', '', 0),
(80, 1, '2022-03-11 16:20:10', '2022-03-11 16:20:10', '', 'Christiane Sokollik', '', 'publish', 'closed', 'closed', '', 'christiane-sokollik', '', '', '2022-03-12 18:40:45', '2022-03-12 18:40:45', '', 0, 'http://altum.test/?post_type=speaker&#038;p=80', 0, 'speaker', '', 0),
(82, 1, '2022-03-11 20:56:23', '2022-03-11 20:56:23', '', 'Georg Staubli', '', 'publish', 'closed', 'closed', '', 'georg-staubli', '', '', '2022-03-12 18:40:45', '2022-03-12 18:40:45', '', 0, 'http://altum.test/?post_type=speaker&#038;p=82', 0, 'speaker', '', 0),
(83, 1, '2022-03-11 20:56:37', '2022-03-11 20:56:37', '', 'Heiner Frei', '', 'publish', 'closed', 'closed', '', 'heiner-frei', '', '', '2022-03-12 18:40:45', '2022-03-12 18:40:45', '', 0, 'http://altum.test/?post_type=speaker&#038;p=83', 0, 'speaker', '', 0),
(84, 1, '2022-03-11 20:56:46', '2022-03-11 20:56:46', '', 'Josef Laimbacher', '', 'publish', 'closed', 'closed', '', 'josef-laimbacher', '', '', '2022-03-12 18:40:45', '2022-03-12 18:40:45', '', 0, 'http://altum.test/?post_type=speaker&#038;p=84', 0, 'speaker', '', 0),
(85, 1, '2022-03-11 20:56:59', '2022-03-11 20:56:59', '', 'Marianne Caflisch', '', 'publish', 'closed', 'closed', '', 'marianne-caflisch', '', '', '2022-03-12 18:40:45', '2022-03-12 18:40:45', '', 0, 'http://altum.test/?post_type=speaker&#038;p=85', 0, 'speaker', '', 0),
(86, 1, '2022-03-11 20:57:10', '2022-03-11 20:57:10', '', 'Michael Büttcher', '', 'publish', 'closed', 'closed', '', 'michael-buttcher', '', '', '2022-03-12 18:40:45', '2022-03-12 18:40:45', '', 0, 'http://altum.test/?post_type=speaker&#038;p=86', 0, 'speaker', '', 0),
(87, 1, '2022-03-11 20:57:21', '2022-03-11 20:57:21', '', 'Mercedes Ogal', '', 'publish', 'closed', 'closed', '', 'mercedes-ogal', '', '', '2022-03-12 18:40:45', '2022-03-12 18:40:45', '', 0, 'http://altum.test/?post_type=speaker&#038;p=87', 0, 'speaker', '', 0),
(88, 1, '2022-03-11 20:57:32', '2022-03-11 20:57:32', '', 'Oswald Hasselmann', '', 'publish', 'closed', 'closed', '', 'oswald-hasselmann', '', '', '2022-03-12 18:40:45', '2022-03-12 18:40:45', '', 0, 'http://altum.test/?post_type=speaker&#038;p=88', 0, 'speaker', '', 0),
(89, 1, '2022-03-11 20:57:47', '2022-03-11 20:57:47', '', 'Pascal Mueller', '', 'publish', 'closed', 'closed', '', 'pascal-mueller', '', '', '2022-03-12 18:40:45', '2022-03-12 18:40:45', '', 0, 'http://altum.test/?post_type=speaker&#038;p=89', 0, 'speaker', '', 0),
(90, 1, '2022-03-11 20:57:56', '2022-03-11 20:57:56', '', 'Peter Weber', '', 'publish', 'closed', 'closed', '', 'peter-weber', '', '', '2022-03-12 18:40:45', '2022-03-12 18:40:45', '', 0, 'http://altum.test/?post_type=speaker&#038;p=90', 0, 'speaker', '', 0),
(91, 1, '2022-03-11 20:58:08', '2022-03-11 20:58:08', '', 'Petra Zimmermann', '', 'publish', 'closed', 'closed', '', 'petra-zimmermann', '', '', '2022-03-12 18:40:45', '2022-03-12 18:40:45', '', 0, 'http://altum.test/?post_type=speaker&#038;p=91', 0, 'speaker', '', 0),
(92, 1, '2022-03-11 20:58:21', '2022-03-11 20:58:21', '', 'Pierre-Yves Rodondi', '', 'publish', 'closed', 'closed', '', 'pierre-yves-rodondi', '', '', '2022-03-12 18:40:45', '2022-03-12 18:40:45', '', 0, 'http://altum.test/?post_type=speaker&#038;p=92', 0, 'speaker', '', 0),
(93, 1, '2022-03-11 20:58:33', '2022-03-11 20:58:33', '', 'Stefan Wolter', '', 'publish', 'closed', 'closed', '', 'stefan-wolter', '', '', '2022-03-12 18:40:45', '2022-03-12 18:40:45', '', 0, 'http://altum.test/?post_type=speaker&#038;p=93', 0, 'speaker', '', 0),
(94, 1, '2022-03-11 20:58:45', '2022-03-11 20:58:45', '', 'Gian Paolo Ramelli', '', 'publish', 'closed', 'closed', '', 'gian-paolo-ramelli', '', '', '2022-03-12 18:40:45', '2022-03-12 18:40:45', '', 0, 'http://altum.test/?post_type=speaker&#038;p=94', 0, 'speaker', '', 0),
(95, 1, '2022-03-11 20:58:56', '2022-03-11 20:58:56', '', 'Maren Tomaske', '', 'publish', 'closed', 'closed', '', 'maren-tomaske', '', '', '2022-03-12 18:40:45', '2022-03-12 18:40:45', '', 0, 'http://altum.test/?post_type=speaker&#038;p=95', 0, 'speaker', '', 0),
(96, 1, '2022-03-11 20:59:06', '2022-03-11 20:59:06', '', 'François-Pierre Martin', '', 'publish', 'closed', 'closed', '', 'francois-pierre-martin', '', '', '2022-03-12 18:40:45', '2022-03-12 18:40:45', '', 0, 'http://altum.test/?post_type=speaker&#038;p=96', 0, 'speaker', '', 0),
(97, 1, '2022-03-11 20:59:24', '2022-03-11 20:59:24', '', 'Anja Böni', '', 'publish', 'closed', 'closed', '', 'anja-boni', '', '', '2022-03-12 18:40:45', '2022-03-12 18:40:45', '', 0, 'http://altum.test/?post_type=speaker&#038;p=97', 0, 'speaker', '', 0),
(98, 1, '2022-03-11 21:03:52', '2022-03-11 21:03:52', '', 'Katrin Scheinemann', '', 'publish', 'closed', 'closed', '', 'katrin-scheinemann', '', '', '2022-03-12 18:40:45', '2022-03-12 18:40:45', '', 0, 'http://altum.test/?post_type=speaker&#038;p=98', 0, 'speaker', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'header menu', 'header-menu', 0),
(3, 'EN', 'en', 0),
(4, 'EN', 'pll_en', 0),
(5, 'UA', 'uk', 0),
(6, 'UA', 'pll_uk', 0),
(7, 'pll_6228b848c6a96', 'pll_6228b848c6a96', 0),
(8, 'footer menu', 'footer-menu', 0),
(9, 'altum', 'altum', 0),
(10, 'pll_622a3c34c0abb', 'pll_622a3c34c0abb', 0),
(11, 'Fribourg', 'fribourg', 0),
(12, 'therapist', 'therapist', 0),
(13, 'Therapist', 'therapist', 0),
(14, 'Fribourg', 'fribourg', 0),
(15, 'Doctor', 'doctor', 0),
(16, 'Nurse', 'nurse', 0),
(17, 'Medical assistant', 'medical-assistant', 0),
(18, 'Pharmacist', 'pharmacist', 0),
(19, 'Germany', 'germany', 0),
(20, 'Netherlands', 'netherlands', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(1, 3, 0),
(1, 4, 0),
(1, 7, 0),
(2, 3, 0),
(3, 3, 0),
(5, 2, 0),
(7, 2, 0),
(8, 2, 0),
(9, 2, 0),
(10, 2, 0),
(16, 8, 0),
(17, 8, 0),
(18, 8, 0),
(19, 8, 0),
(20, 8, 0),
(21, 3, 0),
(21, 10, 0),
(22, 9, 0),
(25, 5, 0),
(25, 10, 0),
(68, 11, 0),
(68, 12, 0),
(68, 15, 0),
(68, 20, 0),
(77, 14, 0),
(77, 16, 0),
(78, 13, 0),
(78, 14, 0),
(78, 15, 0),
(78, 16, 0),
(78, 17, 0),
(78, 18, 0),
(79, 13, 0),
(79, 14, 0),
(79, 15, 0),
(79, 16, 0),
(79, 17, 0),
(79, 18, 0),
(80, 13, 0),
(80, 14, 0),
(80, 15, 0),
(80, 16, 0),
(80, 17, 0),
(80, 18, 0),
(82, 13, 0),
(82, 14, 0),
(82, 15, 0),
(82, 16, 0),
(82, 17, 0),
(82, 18, 0),
(83, 13, 0),
(83, 14, 0),
(83, 15, 0),
(83, 16, 0),
(83, 17, 0),
(83, 18, 0),
(84, 13, 0),
(84, 14, 0),
(84, 15, 0),
(84, 16, 0),
(84, 17, 0),
(84, 18, 0),
(85, 13, 0),
(85, 14, 0),
(85, 15, 0),
(85, 16, 0),
(85, 17, 0),
(85, 18, 0),
(86, 13, 0),
(86, 14, 0),
(86, 15, 0),
(86, 16, 0),
(86, 17, 0),
(86, 18, 0),
(87, 13, 0),
(87, 14, 0),
(87, 15, 0),
(87, 16, 0),
(87, 17, 0),
(87, 18, 0),
(88, 13, 0),
(88, 14, 0),
(88, 15, 0),
(88, 16, 0),
(88, 17, 0),
(88, 18, 0),
(89, 13, 0),
(89, 14, 0),
(89, 15, 0),
(89, 16, 0),
(89, 17, 0),
(89, 18, 0),
(90, 13, 0),
(90, 14, 0),
(90, 15, 0),
(90, 16, 0),
(90, 17, 0),
(90, 18, 0),
(91, 13, 0),
(91, 14, 0),
(91, 15, 0),
(91, 16, 0),
(91, 17, 0),
(91, 18, 0),
(92, 13, 0),
(92, 14, 0),
(92, 15, 0),
(92, 16, 0),
(92, 17, 0),
(92, 18, 0),
(93, 13, 0),
(93, 14, 0),
(93, 15, 0),
(93, 16, 0),
(93, 17, 0),
(93, 18, 0),
(94, 13, 0),
(94, 14, 0),
(94, 15, 0),
(94, 16, 0),
(94, 17, 0),
(94, 18, 0),
(95, 14, 0),
(95, 18, 0),
(96, 13, 0),
(96, 14, 0),
(97, 13, 0),
(97, 19, 0),
(98, 14, 0),
(98, 15, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'language', 'a:3:{s:6:\"locale\";s:5:\"en_GB\";s:3:\"rtl\";i:0;s:9:\"flag_code\";s:2:\"gb\";}', 0, 3),
(4, 4, 'term_language', '', 0, 1),
(5, 5, 'language', 'a:3:{s:6:\"locale\";s:2:\"uk\";s:3:\"rtl\";i:0;s:9:\"flag_code\";s:2:\"ua\";}', 0, 1),
(6, 6, 'term_language', '', 0, 0),
(7, 7, 'term_translations', 'a:1:{s:2:\"en\";i:1;}', 0, 1),
(8, 8, 'nav_menu', '', 0, 5),
(9, 9, 'wp_theme', '', 0, 1),
(10, 10, 'post_translations', 'a:2:{s:2:\"uk\";i:25;s:2:\"en\";i:21;}', 0, 2),
(11, 11, 'speaker_country', '', 0, 1),
(12, 12, 'speaker_position', '', 0, 1),
(13, 13, 'position', '', 0, 18),
(14, 14, 'country', '', 0, 20),
(15, 15, 'position', '', 0, 18),
(16, 16, 'position', '', 0, 17),
(17, 17, 'position', '', 0, 16),
(18, 18, 'position', '', 0, 17),
(19, 19, 'country', '', 0, 1),
(20, 20, 'country', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
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
(16, 1, 'session_tokens', 'a:1:{s:64:\"b2f462ee92d295e99e1e13df5fb0caa3c7dbcd282d9ac7d7ed22c7d2d7871d06\";a:5:{s:10:\"expiration\";i:1648027036;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36\";s:5:\"login\";i:1646817436;s:4:\"loco\";a:4:{s:1:\"c\";s:17:\"Loco_data_Session\";s:1:\"v\";i:0;s:1:\"d\";a:1:{s:7:\"success\";a:0:{}}s:1:\"t\";i:1647010779;}}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(21, 1, 'nav_menu_recently_edited', '8'),
(22, 1, 'wp_user-settings', 'libraryContent=browse&posts_list_mode=list'),
(23, 1, 'wp_user-settings-time', '1647110446'),
(24, 1, 'edit_speaker_per_page', '40');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BjaFwcbybqx/.Ni0B4Au0nGawuB.Nj.', 'admin', 'mail@mail.com', 'http://altum.test', '2022-03-09 09:17:02', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1671;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=690;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
