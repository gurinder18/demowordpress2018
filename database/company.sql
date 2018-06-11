-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 11, 2018 at 06:02 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `company`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-06-06 10:48:54', '2018-06-06 10:48:54', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
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
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=453 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8080/company-website', 'yes'),
(2, 'home', 'http://localhost:8080/company-website', 'yes'),
(3, 'blogname', 'Company', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'admin@gmail.com', 'yes'),
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
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:117:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:37:\"portfolio/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"portfolio/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"portfolio/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"portfolio/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"portfolio/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"portfolio/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"portfolio/([^/]+)/embed/?$\";s:42:\"index.php?portfolio=$matches[1]&embed=true\";s:30:\"portfolio/([^/]+)/trackback/?$\";s:36:\"index.php?portfolio=$matches[1]&tb=1\";s:38:\"portfolio/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?portfolio=$matches[1]&paged=$matches[2]\";s:45:\"portfolio/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?portfolio=$matches[1]&cpage=$matches[2]\";s:34:\"portfolio/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?portfolio=$matches[1]&page=$matches[2]\";s:26:\"portfolio/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"portfolio/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"portfolio/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"portfolio/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"portfolio/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"portfolio/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:59:\"portfolio-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?portfolio-category=$matches[1]&feed=$matches[2]\";s:54:\"portfolio-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?portfolio-category=$matches[1]&feed=$matches[2]\";s:35:\"portfolio-category/([^/]+)/embed/?$\";s:51:\"index.php?portfolio-category=$matches[1]&embed=true\";s:47:\"portfolio-category/([^/]+)/page/?([0-9]{1,})/?$\";s:58:\"index.php?portfolio-category=$matches[1]&paged=$matches[2]\";s:29:\"portfolio-category/([^/]+)/?$\";s:40:\"index.php?portfolio-category=$matches[1]\";s:54:\"portfolio-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?portfolio-tag=$matches[1]&feed=$matches[2]\";s:49:\"portfolio-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?portfolio-tag=$matches[1]&feed=$matches[2]\";s:30:\"portfolio-tag/([^/]+)/embed/?$\";s:46:\"index.php?portfolio-tag=$matches[1]&embed=true\";s:42:\"portfolio-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?portfolio-tag=$matches[1]&paged=$matches[2]\";s:24:\"portfolio-tag/([^/]+)/?$\";s:35:\"index.php?portfolio-tag=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=27&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:29:\"gravityforms/gravityforms.php\";i:1;s:23:\"ml-slider/ml-slider.php\";i:2;s:31:\"tlp-portfolio/tlp-portfolio.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'understrap', 'yes'),
(41, 'stylesheet', 'understrap', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
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
(84, 'page_on_front', '27', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'initial_db_version', '38590', 'yes'),
(93, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(94, 'fresh_site', '0', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:7:{s:19:\"wp_inactive_widgets\";a:1:{i:0;s:10:\"calendar-3\";}s:13:\"right-sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:12:\"left-sidebar\";a:0:{}s:4:\"hero\";a:4:{i:0;s:13:\"media_image-2\";i:1;s:13:\"media_image-3\";i:2;s:13:\"media_image-4\";i:3;s:13:\"media_image-5\";}s:10:\"statichero\";a:0:{}s:10:\"footerfull\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:1:{s:5:\"title\";s:8:\"Calender\";}}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:5:{i:2;a:15:{s:13:\"attachment_id\";i:13;s:3:\"url\";s:101:\"http://localhost:8080/company-website/wp-content/uploads/2018/06/Slider-banner031-1365x400-300x88.jpg\";s:5:\"title\";s:0:\"\";s:4:\"size\";s:6:\"medium\";s:5:\"width\";i:1365;s:6:\"height\";i:400;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:0:\"\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";}i:3;a:15:{s:13:\"attachment_id\";i:13;s:3:\"url\";s:101:\"http://localhost:8080/company-website/wp-content/uploads/2018/06/Slider-banner031-1365x400-300x88.jpg\";s:5:\"title\";s:0:\"\";s:4:\"size\";s:6:\"medium\";s:5:\"width\";i:1365;s:6:\"height\";i:400;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:0:\"\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";}i:4;a:15:{s:13:\"attachment_id\";i:14;s:3:\"url\";s:101:\"http://localhost:8080/company-website/wp-content/uploads/2018/06/Slider-banner041-1365x400-300x88.jpg\";s:5:\"title\";s:0:\"\";s:4:\"size\";s:6:\"medium\";s:5:\"width\";i:1365;s:6:\"height\";i:400;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:0:\"\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";}i:5;a:15:{s:13:\"attachment_id\";i:17;s:3:\"url\";s:103:\"http://localhost:8080/company-website/wp-content/uploads/2018/06/Slider-banner041-1365x400-1-300x88.jpg\";s:5:\"title\";s:0:\"\";s:4:\"size\";s:6:\"medium\";s:5:\"width\";i:1365;s:6:\"height\";i:400;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:0:\"\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'cron', 'a:6:{i:1528696136;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1528714136;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1528714172;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1528715076;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1528721940;a:1:{s:17:\"gravityforms_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1528282877;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(115, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:58:\"http://downloads.wordpress.org/release/wordpress-4.9.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:58:\"http://downloads.wordpress.org/release/wordpress-4.9.6.zip\";s:10:\"no_content\";s:69:\"http://downloads.wordpress.org/release/wordpress-4.9.6-no-content.zip\";s:11:\"new_bundled\";s:70:\"http://downloads.wordpress.org/release/wordpress-4.9.6-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.6\";s:7:\"version\";s:5:\"4.9.6\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1528691740;s:15:\"version_checked\";s:5:\"4.9.6\";s:12:\"translations\";a:0:{}}', 'no'),
(122, '_site_transient_timeout_browser_37852581c9557110c7bab064af517413', '1528886973', 'no'),
(451, '_site_transient_timeout_theme_roots', '1528696287', 'no'),
(452, '_site_transient_theme_roots', 'a:4:{s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:10:\"understrap\";s:7:\"/themes\";}', 'no'),
(223, 'option_tree_settings', 'a:2:{s:8:\"sections\";a:1:{i:0;a:2:{s:2:\"id\";s:7:\"general\";s:5:\"title\";s:7:\"General\";}}s:8:\"settings\";a:1:{i:0;a:10:{s:2:\"id\";s:11:\"sample_text\";s:5:\"label\";s:23:\"Sample Text Field Label\";s:4:\"desc\";s:38:\"Description for the sample text field.\";s:7:\"section\";s:7:\"general\";s:4:\"type\";s:4:\"text\";s:3:\"std\";s:0:\"\";s:5:\"class\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:7:\"choices\";a:0:{}}}}', 'yes'),
(225, 'option_tree', 'a:1:{s:11:\"sample_text\";s:0:\"\";}', 'yes'),
(226, 'ot_media_post_ID', '51', 'yes'),
(123, '_site_transient_browser_37852581c9557110c7bab064af517413', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"66.0.3359.181\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(127, 'can_compress_scripts', '1', 'no'),
(305, 'widget_widget_tlp_port_owl_carousel', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(315, 'rg_form_version', '2.2.2', 'yes'),
(438, '_transient_timeout_gform_update_info', '1528778152', 'no'),
(439, '_transient_gform_update_info', 'a:5:{s:12:\"is_valid_key\";s:1:\"0\";s:15:\"expiration_time\";i:0;s:7:\"version\";s:5:\"1.7.9\";s:3:\"url\";s:0:\"\";s:9:\"offerings\";a:0:{}}', 'no'),
(324, 'rg_gforms_enable_akismet', '1', 'yes'),
(325, 'rg_gforms_currency', 'USD', 'yes'),
(435, '_transient_is_multi_author', '0', 'yes'),
(444, '_transient_timeout_GFCache_553ebc997ba2225e9b3eb18c05e75bd5', '1528694283', 'no'),
(445, '_transient_GFCache_553ebc997ba2225e9b3eb18c05e75bd5', 'a:0:{}', 'no'),
(446, '_transient_timeout_GFCache_b7ae2032105609254e313dda543d5c07', '1528694283', 'no'),
(447, '_transient_GFCache_b7ae2032105609254e313dda543d5c07', 'a:0:{}', 'no'),
(448, '_transient_timeout_plugin_slugs', '1528780679', 'no'),
(449, '_transient_plugin_slugs', 'a:7:{i:0;s:19:\"akismet/akismet.php\";i:1;s:29:\"gravityforms/gravityforms.php\";i:2;s:9:\"hello.php\";i:3;s:23:\"ml-slider/ml-slider.php\";i:4;s:31:\"tlp-portfolio/tlp-portfolio.php\";i:5;s:43:\"portfolio-post-type/portfolio-post-type.php\";i:6;s:32:\"slider-hero/qcld-slider-main.php\";}', 'no'),
(450, '_transient_understrap_categories', '2', 'yes'),
(283, 'awl_portfolio_filter_gallery_categories', 'a:1:{i:0;s:3:\"all\";}', 'yes'),
(141, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1528691757;s:7:\"checked\";a:5:{s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.6\";s:13:\"twentysixteen\";s:3:\"1.5\";s:23:\"understrap-child-master\";s:5:\"0.5.2\";s:10:\"understrap\";s:5:\"0.8.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(158, 'theme_mods_understrap', 'a:6:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:28:\"understrap_posts_index_style\";s:7:\"default\";s:27:\"understrap_sidebar_position\";s:4:\"none\";s:25:\"understrap_container_type\";s:9:\"container\";s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(142, 'current_theme', 'UnderStrap', 'yes'),
(143, 'theme_mods_understrap-child-master', 'a:7:{i:0;b:0;s:28:\"understrap_posts_index_style\";s:7:\"default\";s:27:\"understrap_sidebar_position\";s:5:\"right\";s:25:\"understrap_container_type\";s:9:\"container\";s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1528284622;s:4:\"data\";a:6:{s:19:\"wp_inactive_widgets\";a:0:{}s:13:\"right-sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:12:\"left-sidebar\";a:0:{}s:4:\"hero\";a:1:{i:0;s:15:\"media_gallery-3\";}s:10:\"statichero\";a:0:{}s:10:\"footerfull\";a:0:{}}}}', 'yes'),
(144, 'theme_switched', '', 'yes'),
(148, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:1:{i:0;i:2;}}', 'yes'),
(224, 'sh_plugin_options', 'a:3:{s:15:\"sh_custom_style\";s:0:\"\";s:12:\"sh_custom_js\";s:0:\"\";s:3:\"aid\";s:0:\"\";}', 'yes'),
(190, 'category_children', 'a:0:{}', 'yes'),
(400, 'portfolio-category_children', 'a:0:{}', 'yes'),
(310, 'widget_gform_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(311, 'gravityformsaddon_gravityformswebapi_version', '1.0', 'yes'),
(312, 'gform_enable_background_updates', '', 'yes'),
(313, 'gf_db_version', '2.2.2', 'yes'),
(296, 'portfolio_category_children', 'a:0:{}', 'yes'),
(195, 'recently_activated', 'a:3:{s:43:\"portfolio-post-type/portfolio-post-type.php\";i:1528462078;s:53:\"portfolio-filter-gallery/portfolio-filter-gallery.php\";i:1528457690;s:32:\"slider-hero/qcld-slider-main.php\";i:1528293400;}', 'yes'),
(233, 'widget_metaslider_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(234, 'ms_hide_all_ads_until', '1529503724', 'yes'),
(235, 'metaslider_systemcheck', 'a:2:{s:16:\"wordPressVersion\";b:0;s:12:\"imageLibrary\";b:0;}', 'no'),
(236, 'ml-slider_children', 'a:0:{}', 'yes'),
(237, 'metaslider_tour_cancelled_on', 'step_view_shortcode', 'yes'),
(265, 'page_for_posts', '59', 'yes'),
(314, 'gform_pending_installation', '', 'yes'),
(442, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1528691758;s:7:\"checked\";a:7:{s:19:\"akismet/akismet.php\";s:5:\"4.0.3\";s:29:\"gravityforms/gravityforms.php\";s:5:\"2.2.2\";s:9:\"hello.php\";s:3:\"1.7\";s:23:\"ml-slider/ml-slider.php\";s:5:\"3.7.2\";s:31:\"tlp-portfolio/tlp-portfolio.php\";s:5:\"2.5.4\";s:43:\"portfolio-post-type/portfolio-post-type.php\";s:5:\"0.9.3\";s:32:\"slider-hero/qcld-slider-main.php\";s:5:\"3.9.0\";}s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.7\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.6\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:23:\"ml-slider/ml-slider.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:23:\"w.org/plugins/ml-slider\";s:4:\"slug\";s:9:\"ml-slider\";s:6:\"plugin\";s:23:\"ml-slider/ml-slider.php\";s:11:\"new_version\";s:5:\"3.8.1\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/ml-slider/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/ml-slider.3.8.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:62:\"https://ps.w.org/ml-slider/assets/icon-256x256.png?rev=1837669\";s:2:\"1x\";s:54:\"https://ps.w.org/ml-slider/assets/icon.svg?rev=1837669\";s:3:\"svg\";s:54:\"https://ps.w.org/ml-slider/assets/icon.svg?rev=1837669\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/ml-slider/assets/banner-1544x500.png?rev=1837669\";s:2:\"1x\";s:64:\"https://ps.w.org/ml-slider/assets/banner-772x250.png?rev=1837669\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.0\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:31:\"tlp-portfolio/tlp-portfolio.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/tlp-portfolio\";s:4:\"slug\";s:13:\"tlp-portfolio\";s:6:\"plugin\";s:31:\"tlp-portfolio/tlp-portfolio.php\";s:11:\"new_version\";s:5:\"2.5.4\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/tlp-portfolio/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/tlp-portfolio.2.5.4.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/tlp-portfolio/assets/icon-128x128.png?rev=1340535\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/tlp-portfolio/assets/banner-1544x500.png?rev=1774658\";s:2:\"1x\";s:68:\"https://ps.w.org/tlp-portfolio/assets/banner-772x250.png?rev=1774658\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"portfolio-post-type/portfolio-post-type.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/portfolio-post-type\";s:4:\"slug\";s:19:\"portfolio-post-type\";s:6:\"plugin\";s:43:\"portfolio-post-type/portfolio-post-type.php\";s:11:\"new_version\";s:5:\"0.9.3\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/portfolio-post-type/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/portfolio-post-type.0.9.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/portfolio-post-type/assets/icon-256x256.png?rev=974090\";s:2:\"1x\";s:71:\"https://ps.w.org/portfolio-post-type/assets/icon-256x256.png?rev=974090\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:73:\"https://ps.w.org/portfolio-post-type/assets/banner-772x250.jpg?rev=497144\";}s:11:\"banners_rtl\";a:0:{}}s:32:\"slider-hero/qcld-slider-main.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/slider-hero\";s:4:\"slug\";s:11:\"slider-hero\";s:6:\"plugin\";s:32:\"slider-hero/qcld-slider-main.php\";s:11:\"new_version\";s:5:\"3.9.0\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/slider-hero/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/slider-hero.3.9.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/slider-hero/assets/icon-256x256.png?rev=1853595\";s:2:\"1x\";s:64:\"https://ps.w.org/slider-hero/assets/icon-256x256.png?rev=1853595\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/slider-hero/assets/banner-772x250.jpg?rev=1802635\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(303, 'tlp_portfolio_installed_version', '2.5.4', 'yes'),
(304, 'tpl_portfolio_settings', 'a:5:{s:13:\"primary_color\";s:7:\"#0367bf\";s:16:\"feature_img_size\";s:6:\"medium\";s:4:\"slug\";s:9:\"portfolio\";s:16:\"link_detail_page\";s:3:\"yes\";s:10:\"custom_css\";N;}', 'yes'),
(326, 'gform_enable_toolbar_menu', '1', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=220 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(85, 33, '_edit_lock', '1528290882:1'),
(84, 33, '_edit_last', '1'),
(8, 8, '_menu_item_type', 'custom'),
(7, 7, '_edit_lock', '1528283032:1'),
(9, 8, '_menu_item_menu_item_parent', '0'),
(10, 8, '_menu_item_object_id', '8'),
(11, 8, '_menu_item_object', 'custom'),
(12, 8, '_menu_item_target', ''),
(13, 8, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(14, 8, '_menu_item_xfn', ''),
(15, 8, '_menu_item_url', 'http://localhost:8080/company-website'),
(16, 7, '_wp_trash_meta_status', 'publish'),
(17, 7, '_wp_trash_meta_time', '1528283047'),
(18, 10, '_edit_lock', '1528283610:1'),
(19, 11, '_wp_attached_file', '2018/06/ban1-1365x400.jpg'),
(20, 11, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1365;s:6:\"height\";i:400;s:4:\"file\";s:25:\"2018/06/ban1-1365x400.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"ban1-1365x400-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"ban1-1365x400-300x88.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:88;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"ban1-1365x400-768x225.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"ban1-1365x400-1024x300.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(21, 12, '_wp_attached_file', '2018/06/Slider-banner002-1365x400.jpg'),
(22, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1365;s:6:\"height\";i:400;s:4:\"file\";s:37:\"2018/06/Slider-banner002-1365x400.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"Slider-banner002-1365x400-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"Slider-banner002-1365x400-300x88.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:88;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:37:\"Slider-banner002-1365x400-768x225.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:38:\"Slider-banner002-1365x400-1024x300.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-700x300\";a:4:{s:4:\"file\";s:37:\"Slider-banner002-1365x400-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1000x300\";a:4:{s:4:\"file\";s:38:\"Slider-banner002-1365x400-1000x300.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1100x300\";a:4:{s:4:\"file\";s:38:\"Slider-banner002-1365x400-1100x300.jpg\";s:5:\"width\";i:1100;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1200x300\";a:4:{s:4:\"file\";s:38:\"Slider-banner002-1365x400-1200x300.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(23, 13, '_wp_attached_file', '2018/06/Slider-banner031-1365x400.jpg'),
(24, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1365;s:6:\"height\";i:400;s:4:\"file\";s:37:\"2018/06/Slider-banner031-1365x400.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"Slider-banner031-1365x400-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"Slider-banner031-1365x400-300x88.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:88;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:37:\"Slider-banner031-1365x400-768x225.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:38:\"Slider-banner031-1365x400-1024x300.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-700x300\";a:4:{s:4:\"file\";s:37:\"Slider-banner031-1365x400-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1000x300\";a:4:{s:4:\"file\";s:38:\"Slider-banner031-1365x400-1000x300.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1100x300\";a:4:{s:4:\"file\";s:38:\"Slider-banner031-1365x400-1100x300.jpg\";s:5:\"width\";i:1100;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1200x300\";a:4:{s:4:\"file\";s:38:\"Slider-banner031-1365x400-1200x300.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(25, 14, '_wp_attached_file', '2018/06/Slider-banner041-1365x400.jpg'),
(26, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1365;s:6:\"height\";i:400;s:4:\"file\";s:37:\"2018/06/Slider-banner041-1365x400.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"Slider-banner041-1365x400-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"Slider-banner041-1365x400-300x88.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:88;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:37:\"Slider-banner041-1365x400-768x225.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:38:\"Slider-banner041-1365x400-1024x300.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-700x300\";a:4:{s:4:\"file\";s:37:\"Slider-banner041-1365x400-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1000x300\";a:4:{s:4:\"file\";s:38:\"Slider-banner041-1365x400-1000x300.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1100x300\";a:4:{s:4:\"file\";s:38:\"Slider-banner041-1365x400-1100x300.jpg\";s:5:\"width\";i:1100;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1200x300\";a:4:{s:4:\"file\";s:38:\"Slider-banner041-1365x400-1200x300.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(27, 10, '_wp_trash_meta_status', 'publish'),
(28, 10, '_wp_trash_meta_time', '1528283636'),
(29, 1, '_edit_lock', '1528283931:1'),
(30, 15, '_edit_lock', '1528284630:1'),
(31, 15, '_customize_restore_dismissed', '1'),
(32, 13, '_wp_attachment_is_custom_background', 'understrap'),
(33, 16, '_edit_lock', '1528284897:1'),
(34, 17, '_wp_attached_file', '2018/06/Slider-banner041-1365x400-1.jpg'),
(35, 17, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1365;s:6:\"height\";i:400;s:4:\"file\";s:39:\"2018/06/Slider-banner041-1365x400-1.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"Slider-banner041-1365x400-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"Slider-banner041-1365x400-1-300x88.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:88;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:39:\"Slider-banner041-1365x400-1-768x225.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:40:\"Slider-banner041-1365x400-1-1024x300.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-700x300\";a:4:{s:4:\"file\";s:39:\"Slider-banner041-1365x400-1-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1000x300\";a:4:{s:4:\"file\";s:40:\"Slider-banner041-1365x400-1-1000x300.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1100x300\";a:4:{s:4:\"file\";s:40:\"Slider-banner041-1365x400-1-1100x300.jpg\";s:5:\"width\";i:1100;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1200x300\";a:4:{s:4:\"file\";s:40:\"Slider-banner041-1365x400-1-1200x300.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(36, 18, '_edit_last', '1'),
(37, 18, '_edit_lock', '1528290694:1'),
(38, 18, '_wp_page_template', 'default'),
(39, 16, '_customize_restore_dismissed', '1'),
(40, 20, '_menu_item_type', 'post_type'),
(41, 20, '_menu_item_menu_item_parent', '0'),
(42, 20, '_menu_item_object_id', '18'),
(43, 20, '_menu_item_object', 'page'),
(44, 20, '_menu_item_target', ''),
(45, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(46, 20, '_menu_item_xfn', ''),
(47, 20, '_menu_item_url', ''),
(49, 21, '_edit_last', '1'),
(50, 21, '_wp_page_template', 'default'),
(219, 90, '_wp_trash_meta_time', '1528467894'),
(218, 90, '_wp_trash_meta_status', 'publish'),
(59, 21, '_edit_lock', '1528346109:1'),
(60, 24, '_edit_last', '1'),
(61, 24, '_edit_lock', '1528464930:1'),
(62, 25, '_wp_attached_file', '2018/06/Screenshot_1.png'),
(63, 25, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:859;s:6:\"height\";i:481;s:4:\"file\";s:24:\"2018/06/Screenshot_1.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"Screenshot_1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"Screenshot_1-300x168.png\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"Screenshot_1-768x430.png\";s:5:\"width\";i:768;s:6:\"height\";i:430;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(64, 24, '_thumbnail_id', '25'),
(70, 27, '_wp_page_template', 'page-templates/fullwidthpage.php'),
(69, 27, '_edit_last', '1'),
(88, 34, '_menu_item_menu_item_parent', '0'),
(87, 34, '_menu_item_type', 'post_type'),
(86, 33, '_wp_page_template', 'default'),
(81, 32, '_wp_trash_meta_time', '1528288151'),
(80, 32, '_wp_trash_meta_status', 'publish'),
(79, 27, '_edit_lock', '1528458282:1'),
(89, 34, '_menu_item_object_id', '33'),
(90, 34, '_menu_item_object', 'page'),
(91, 34, '_menu_item_target', ''),
(92, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(93, 34, '_menu_item_xfn', ''),
(94, 34, '_menu_item_url', ''),
(95, 36, '_edit_last', '1'),
(96, 36, '_edit_lock', '1528290770:1'),
(97, 36, '_wp_page_template', 'default'),
(98, 38, '_edit_last', '1'),
(99, 38, '_edit_lock', '1528290808:1'),
(100, 38, '_wp_page_template', 'default'),
(101, 40, '_wp_trash_meta_status', 'publish'),
(102, 40, '_wp_trash_meta_time', '1528290341'),
(103, 41, '_edit_lock', '1528290454:1'),
(104, 42, '_menu_item_type', 'post_type'),
(105, 42, '_menu_item_menu_item_parent', '34'),
(106, 42, '_menu_item_object_id', '36'),
(107, 42, '_menu_item_object', 'page'),
(108, 42, '_menu_item_target', ''),
(109, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(110, 42, '_menu_item_xfn', ''),
(111, 42, '_menu_item_url', ''),
(112, 43, '_menu_item_type', 'post_type'),
(113, 43, '_menu_item_menu_item_parent', '34'),
(114, 43, '_menu_item_object_id', '38'),
(115, 43, '_menu_item_object', 'page'),
(116, 43, '_menu_item_target', ''),
(117, 43, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(118, 43, '_menu_item_xfn', ''),
(119, 43, '_menu_item_url', ''),
(120, 41, '_wp_trash_meta_status', 'publish'),
(121, 41, '_wp_trash_meta_time', '1528290466'),
(122, 33, '_oembed_419a2c32343d7da42fb974fb2b01a150', '<blockquote class=\"wp-embedded-content\" data-secret=\"p0GI4gMaPo\"><a href=\"http://localhost:8080/company-website/\">Home</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" style=\"position: absolute; clip: rect(1px, 1px, 1px, 1px);\" src=\"http://localhost:8080/company-website/embed/#?secret=p0GI4gMaPo\" data-secret=\"p0GI4gMaPo\" width=\"600\" height=\"338\" title=\"&#8220;Home&#8221; &#8212; Company\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>'),
(123, 33, '_oembed_time_419a2c32343d7da42fb974fb2b01a150', '1528290965'),
(124, 50, '_wp_trash_meta_status', 'publish'),
(125, 50, '_wp_trash_meta_time', '1528291891'),
(127, 53, 'ml-slider_settings', 'a:35:{s:4:\"type\";s:4:\"flex\";s:6:\"random\";s:5:\"false\";s:8:\"cssClass\";s:0:\"\";s:8:\"printCss\";s:4:\"true\";s:7:\"printJs\";s:4:\"true\";s:5:\"width\";s:4:\"1100\";s:6:\"height\";s:3:\"300\";s:3:\"spw\";i:7;s:3:\"sph\";i:5;s:5:\"delay\";s:4:\"3000\";s:6:\"sDelay\";i:30;s:7:\"opacity\";d:0.69999999999999996;s:10:\"titleSpeed\";i:500;s:6:\"effect\";s:4:\"fade\";s:10:\"navigation\";s:4:\"true\";s:5:\"links\";s:4:\"true\";s:10:\"hoverPause\";s:4:\"true\";s:5:\"theme\";s:7:\"default\";s:9:\"direction\";s:10:\"horizontal\";s:7:\"reverse\";s:5:\"false\";s:14:\"animationSpeed\";s:3:\"600\";s:8:\"prevText\";s:8:\"Previous\";s:8:\"nextText\";s:4:\"Next\";s:6:\"slices\";i:15;s:6:\"center\";s:5:\"false\";s:9:\"smartCrop\";s:4:\"true\";s:12:\"carouselMode\";s:5:\"false\";s:14:\"carouselMargin\";s:1:\"5\";s:6:\"easing\";s:6:\"linear\";s:8:\"autoPlay\";s:4:\"true\";s:11:\"thumb_width\";i:150;s:12:\"thumb_height\";i:100;s:9:\"fullWidth\";s:5:\"false\";s:10:\"noConflict\";s:4:\"true\";s:12:\"smoothHeight\";s:5:\"false\";}'),
(126, 2, '_edit_lock', '1528292116:1'),
(128, 54, '_thumbnail_id', '17'),
(129, 54, 'ml-slider_type', 'image'),
(130, 54, 'ml-slider_inherit_image_caption', '1'),
(131, 54, 'ml-slider_inherit_image_title', '1'),
(132, 54, 'ml-slider_inherit_image_alt', '1'),
(133, 55, '_thumbnail_id', '14'),
(134, 55, 'ml-slider_type', 'image'),
(135, 55, 'ml-slider_inherit_image_caption', '1'),
(136, 55, 'ml-slider_inherit_image_title', '1'),
(137, 55, 'ml-slider_inherit_image_alt', '1'),
(138, 56, '_thumbnail_id', '13'),
(139, 56, 'ml-slider_type', 'image'),
(140, 56, 'ml-slider_inherit_image_caption', '1'),
(141, 56, 'ml-slider_inherit_image_title', '1'),
(142, 56, 'ml-slider_inherit_image_alt', '1'),
(143, 57, '_thumbnail_id', '12'),
(144, 57, 'ml-slider_type', 'image'),
(145, 57, 'ml-slider_inherit_image_caption', '1'),
(146, 57, 'ml-slider_inherit_image_title', '1'),
(147, 57, 'ml-slider_inherit_image_alt', '1'),
(148, 17, '_wp_attachment_backup_sizes', 'a:4:{s:15:\"resized-700x300\";a:5:{s:4:\"path\";s:93:\"C:wamp64wwwcompany-website/wp-content/uploads/2018/06/Slider-banner041-1365x400-1-700x300.jpg\";s:4:\"file\";s:39:\"Slider-banner041-1365x400-1-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1000x300\";a:5:{s:4:\"path\";s:94:\"C:wamp64wwwcompany-website/wp-content/uploads/2018/06/Slider-banner041-1365x400-1-1000x300.jpg\";s:4:\"file\";s:40:\"Slider-banner041-1365x400-1-1000x300.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1100x300\";a:5:{s:4:\"path\";s:94:\"C:wamp64wwwcompany-website/wp-content/uploads/2018/06/Slider-banner041-1365x400-1-1100x300.jpg\";s:4:\"file\";s:40:\"Slider-banner041-1365x400-1-1100x300.jpg\";s:5:\"width\";i:1100;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1200x300\";a:5:{s:4:\"path\";s:94:\"C:wamp64wwwcompany-website/wp-content/uploads/2018/06/Slider-banner041-1365x400-1-1200x300.jpg\";s:4:\"file\";s:40:\"Slider-banner041-1365x400-1-1200x300.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(149, 14, '_wp_attachment_backup_sizes', 'a:4:{s:15:\"resized-700x300\";a:5:{s:4:\"path\";s:91:\"C:wamp64wwwcompany-website/wp-content/uploads/2018/06/Slider-banner041-1365x400-700x300.jpg\";s:4:\"file\";s:37:\"Slider-banner041-1365x400-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1000x300\";a:5:{s:4:\"path\";s:92:\"C:wamp64wwwcompany-website/wp-content/uploads/2018/06/Slider-banner041-1365x400-1000x300.jpg\";s:4:\"file\";s:38:\"Slider-banner041-1365x400-1000x300.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1100x300\";a:5:{s:4:\"path\";s:92:\"C:wamp64wwwcompany-website/wp-content/uploads/2018/06/Slider-banner041-1365x400-1100x300.jpg\";s:4:\"file\";s:38:\"Slider-banner041-1365x400-1100x300.jpg\";s:5:\"width\";i:1100;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1200x300\";a:5:{s:4:\"path\";s:92:\"C:wamp64wwwcompany-website/wp-content/uploads/2018/06/Slider-banner041-1365x400-1200x300.jpg\";s:4:\"file\";s:38:\"Slider-banner041-1365x400-1200x300.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(150, 13, '_wp_attachment_backup_sizes', 'a:4:{s:15:\"resized-700x300\";a:5:{s:4:\"path\";s:91:\"C:wamp64wwwcompany-website/wp-content/uploads/2018/06/Slider-banner031-1365x400-700x300.jpg\";s:4:\"file\";s:37:\"Slider-banner031-1365x400-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1000x300\";a:5:{s:4:\"path\";s:92:\"C:wamp64wwwcompany-website/wp-content/uploads/2018/06/Slider-banner031-1365x400-1000x300.jpg\";s:4:\"file\";s:38:\"Slider-banner031-1365x400-1000x300.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1100x300\";a:5:{s:4:\"path\";s:92:\"C:wamp64wwwcompany-website/wp-content/uploads/2018/06/Slider-banner031-1365x400-1100x300.jpg\";s:4:\"file\";s:38:\"Slider-banner031-1365x400-1100x300.jpg\";s:5:\"width\";i:1100;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1200x300\";a:5:{s:4:\"path\";s:92:\"C:wamp64wwwcompany-website/wp-content/uploads/2018/06/Slider-banner031-1365x400-1200x300.jpg\";s:4:\"file\";s:38:\"Slider-banner031-1365x400-1200x300.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(151, 12, '_wp_attachment_backup_sizes', 'a:4:{s:15:\"resized-700x300\";a:5:{s:4:\"path\";s:91:\"C:wamp64wwwcompany-website/wp-content/uploads/2018/06/Slider-banner002-1365x400-700x300.jpg\";s:4:\"file\";s:37:\"Slider-banner002-1365x400-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1000x300\";a:5:{s:4:\"path\";s:92:\"C:wamp64wwwcompany-website/wp-content/uploads/2018/06/Slider-banner002-1365x400-1000x300.jpg\";s:4:\"file\";s:38:\"Slider-banner002-1365x400-1000x300.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1100x300\";a:5:{s:4:\"path\";s:92:\"C:wamp64wwwcompany-website/wp-content/uploads/2018/06/Slider-banner002-1365x400-1100x300.jpg\";s:4:\"file\";s:38:\"Slider-banner002-1365x400-1100x300.jpg\";s:5:\"width\";i:1100;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1200x300\";a:5:{s:4:\"path\";s:92:\"C:wamp64wwwcompany-website/wp-content/uploads/2018/06/Slider-banner002-1365x400-1200x300.jpg\";s:4:\"file\";s:38:\"Slider-banner002-1365x400-1200x300.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(152, 54, 'ml-slider_crop_position', 'center-center'),
(153, 54, '_wp_attachment_image_alt', ''),
(154, 55, 'ml-slider_crop_position', 'center-center'),
(155, 55, '_wp_attachment_image_alt', ''),
(156, 56, 'ml-slider_crop_position', 'center-center'),
(157, 56, '_wp_attachment_image_alt', ''),
(158, 57, 'ml-slider_crop_position', 'center-center'),
(159, 57, '_wp_attachment_image_alt', ''),
(160, 21, '_wp_trash_meta_status', 'publish'),
(161, 21, '_wp_trash_meta_time', '1528346111'),
(162, 21, '_wp_desired_post_slug', 'portfolio'),
(163, 3, '_edit_lock', '1528346055:1'),
(164, 59, '_edit_last', '1'),
(165, 59, '_edit_lock', '1528453717:1'),
(166, 59, '_wp_page_template', 'default'),
(167, 60, '_menu_item_type', 'post_type'),
(168, 60, '_menu_item_menu_item_parent', '0'),
(169, 60, '_menu_item_object_id', '59'),
(170, 60, '_menu_item_object', 'page'),
(171, 60, '_menu_item_target', ''),
(172, 60, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(173, 60, '_menu_item_xfn', ''),
(174, 60, '_menu_item_url', ''),
(175, 62, '_wp_trash_meta_status', 'publish'),
(176, 62, '_wp_trash_meta_time', '1528453709'),
(217, 90, '_edit_lock', '1528467886:1'),
(179, 68, '_edit_last', '1'),
(180, 68, '_edit_lock', '1528694137:1'),
(181, 68, '_thumbnail_id', '25'),
(185, 75, '_edit_lock', '1528465618:1'),
(184, 75, '_edit_last', '1'),
(186, 75, '_wp_page_template', 'default'),
(187, 76, '_menu_item_type', 'post_type'),
(188, 76, '_menu_item_menu_item_parent', '0'),
(189, 76, '_menu_item_object_id', '75'),
(190, 76, '_menu_item_object', 'page'),
(191, 76, '_menu_item_target', ''),
(192, 76, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(193, 76, '_menu_item_xfn', ''),
(194, 76, '_menu_item_url', ''),
(195, 80, '_edit_last', '1'),
(196, 80, '_edit_lock', '1528464404:1'),
(197, 80, '_wp_page_template', 'default'),
(198, 81, '_menu_item_type', 'post_type'),
(199, 81, '_menu_item_menu_item_parent', '0'),
(200, 81, '_menu_item_object_id', '80'),
(201, 81, '_menu_item_object', 'page'),
(202, 81, '_menu_item_target', ''),
(203, 81, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(204, 81, '_menu_item_xfn', ''),
(205, 81, '_menu_item_url', ''),
(206, 68, 'short_description', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. '),
(207, 68, 'project_url', 'http://backuptool.customerdemourl.com/'),
(208, 68, 'tools', 'CodeIgniter Framework'),
(209, 88, '_edit_last', '1'),
(210, 88, '_edit_lock', '1528467539:1'),
(211, 89, '_wp_attached_file', '2018/06/abcd.png'),
(212, 89, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:643;s:6:\"height\";i:457;s:4:\"file\";s:16:\"2018/06/abcd.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"abcd-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"abcd-300x213.png\";s:5:\"width\";i:300;s:6:\"height\";i:213;s:9:\"mime-type\";s:9:\"image/png\";}s:19:\"tlp-portfolio-thumb\";a:4:{s:4:\"file\";s:16:\"abcd-350x250.png\";s:5:\"width\";i:350;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(213, 88, '_thumbnail_id', '89'),
(214, 88, 'short_description', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum'),
(215, 88, 'project_url', 'https://www.google.com/'),
(216, 88, 'tools', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
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
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-06-06 10:48:54', '2018-06-06 10:48:54', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-06-06 10:48:54', '2018-06-06 10:48:54', '', 0, 'http://localhost:8080/company-website/?p=1', 0, 'post', '', 1),
(2, 1, '2018-06-06 10:48:54', '2018-06-06 10:48:54', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost:8080/company-website/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-06-06 10:48:54', '2018-06-06 10:48:54', '', 0, 'http://localhost:8080/company-website/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-06-06 10:48:54', '2018-06-06 10:48:54', '<h2>Who we are</h2><p>Our website address is: http://localhost:8080/company-website.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracing your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2018-06-06 10:48:54', '2018-06-06 10:48:54', '', 0, 'http://localhost:8080/company-website/?page_id=3', 0, 'page', '', 0),
(4, 1, '2018-06-06 10:49:34', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-06-06 10:49:34', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/company-website/?p=4', 0, 'post', '', 0),
(33, 1, '2018-06-06 13:03:56', '2018-06-06 13:03:56', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2018-06-06 13:16:29', '2018-06-06 13:16:29', '', 0, 'http://localhost:8080/company-website/?page_id=33', 0, 'page', '', 0),
(34, 1, '2018-06-06 13:03:57', '2018-06-06 13:03:57', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2018-06-08 14:24:53', '2018-06-08 14:24:53', '', 0, 'http://localhost:8080/company-website/2018/06/06/34/', 5, 'nav_menu_item', '', 0),
(7, 1, '2018-06-06 11:04:07', '2018-06-06 11:04:07', '{\n    \"understrap-child-master::nav_menu_locations[primary]\": {\n        \"value\": -337354878,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-06 11:04:07\"\n    },\n    \"nav_menu[-446879031]\": {\n        \"value\": false,\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-06 11:03:52\"\n    },\n    \"nav_menu[-337354878]\": {\n        \"value\": {\n            \"name\": \"Primary Menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-06 11:04:07\"\n    },\n    \"nav_menu_item[-1492077567]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://localhost:8080/company-website\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Home\",\n            \"nav_menu_term_id\": -337354878,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-06 11:04:07\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f0717fb3-e10e-47ac-b880-46250e2c64e8', '', '', '2018-06-06 11:04:07', '2018-06-06 11:04:07', '', 0, 'http://localhost:8080/company-website/?p=7', 0, 'customize_changeset', '', 0),
(8, 1, '2018-06-06 11:04:07', '2018-06-06 11:04:07', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-06-06 12:06:39', '2018-06-06 12:06:39', '', 0, 'http://localhost:8080/company-website/2018/06/06/home/', 1, 'nav_menu_item', '', 0),
(9, 1, '2018-06-06 11:04:36', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-06-06 11:04:36', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/company-website/?p=9', 0, 'post', '', 0),
(10, 1, '2018-06-06 11:13:56', '2018-06-06 11:13:56', '{\n    \"sidebars_widgets[hero]\": {\n        \"value\": [\n            \"media_gallery-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-06 11:11:26\"\n    },\n    \"widget_calendar[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjg6IkNhbGVuZGVyIjt9\",\n            \"title\": \"Calender\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"25a785b848d97c168c3807c39ff9c46c\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-06 11:11:26\"\n    },\n    \"widget_media_gallery[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo2OntzOjU6InRpdGxlIjtzOjExOiJPdXIgQ29tcGFueSI7czo3OiJjb2x1bW5zIjtpOjM7czo0OiJzaXplIjtzOjk6InRodW1ibmFpbCI7czo5OiJsaW5rX3R5cGUiO3M6NDoicG9zdCI7czoxNDoib3JkZXJieV9yYW5kb20iO2I6MDtzOjM6ImlkcyI7YTo0OntpOjA7aToxMTtpOjE7aToxMjtpOjI7aToxMztpOjM7aToxNDt9fQ==\",\n            \"title\": \"Our Company\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"51ef099f95994de2addb3db0f02f186f\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-06 11:13:56\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f2f9e944-8d40-4728-a27c-8d92cb7b2b33', '', '', '2018-06-06 11:13:56', '2018-06-06 11:13:56', '', 0, 'http://localhost:8080/company-website/?p=10', 0, 'customize_changeset', '', 0),
(11, 1, '2018-06-06 11:12:42', '2018-06-06 11:12:42', '', 'ban1-1365x400', '', 'inherit', 'open', 'closed', '', 'ban1-1365x400', '', '', '2018-06-06 11:12:42', '2018-06-06 11:12:42', '', 0, 'http://localhost:8080/company-website/wp-content/uploads/2018/06/ban1-1365x400.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2018-06-06 11:12:44', '2018-06-06 11:12:44', '', 'Slider-banner002-1365x400', '', 'inherit', 'open', 'closed', '', 'slider-banner002-1365x400', '', '', '2018-06-06 11:12:44', '2018-06-06 11:12:44', '', 0, 'http://localhost:8080/company-website/wp-content/uploads/2018/06/Slider-banner002-1365x400.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2018-06-06 11:12:46', '2018-06-06 11:12:46', '', 'Slider-banner031-1365x400', '', 'inherit', 'open', 'closed', '', 'slider-banner031-1365x400', '', '', '2018-06-06 11:12:46', '2018-06-06 11:12:46', '', 0, 'http://localhost:8080/company-website/wp-content/uploads/2018/06/Slider-banner031-1365x400.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2018-06-06 11:12:48', '2018-06-06 11:12:48', '', 'Slider-banner041-1365x400', '', 'inherit', 'open', 'closed', '', 'slider-banner041-1365x400', '', '', '2018-06-06 11:12:48', '2018-06-06 11:12:48', '', 0, 'http://localhost:8080/company-website/wp-content/uploads/2018/06/Slider-banner041-1365x400.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2018-06-06 11:20:13', '0000-00-00 00:00:00', '{\n    \"show_on_front\": {\n        \"value\": \"posts\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-06 11:20:13\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '8b0d342e-c295-4e3c-8910-cdf5846a9816', '', '', '2018-06-06 11:20:13', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/company-website/?p=15', 0, 'customize_changeset', '', 0),
(16, 1, '2018-06-06 11:32:30', '0000-00-00 00:00:00', '{\n    \"sidebars_widgets[hero]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-06 11:32:30\"\n    },\n    \"understrap::background_image\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-06 11:32:30\"\n    },\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-06 11:32:30\"\n    },\n    \"page_on_front\": {\n        \"value\": \"2\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-06 11:32:30\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '374c9775-7187-4bba-aeea-96b657d11758', '', '', '2018-06-06 11:32:30', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/company-website/?p=16', 0, 'customize_changeset', '', 0),
(17, 1, '2018-06-06 11:37:57', '2018-06-06 11:37:57', '', 'Slider-banner041-1365x400', '', 'inherit', 'open', 'closed', '', 'slider-banner041-1365x400-2', '', '', '2018-06-06 11:37:57', '2018-06-06 11:37:57', '', 0, 'http://localhost:8080/company-website/wp-content/uploads/2018/06/Slider-banner041-1365x400-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2018-06-06 12:04:15', '2018-06-06 12:04:15', 'Repository-hosted Themes are required to support display of comments on static Pages as well as on single blog Posts.  This static Page has comments, and these comments should be displayed.\r\nIf the Theme includes a custom option to prevent static Pages from displaying comments, such option must be disabled (i.e. so that static Pages display comments) by default.\r\nAlso, verify that this Page does not display taxonomy information (e.g. categories or tags) or time-stamp information', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2018-06-06 13:13:25', '2018-06-06 13:13:25', '', 0, 'http://localhost:8080/company-website/?page_id=18', 0, 'page', '', 0),
(19, 1, '2018-06-06 12:04:16', '2018-06-06 12:04:16', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2018-06-06 12:04:16', '2018-06-06 12:04:16', '', 18, 'http://localhost:8080/company-website/2018/06/06/18-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2018-06-06 12:06:39', '2018-06-06 12:06:39', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2018-06-06 12:06:39', '2018-06-06 12:06:39', '', 0, 'http://localhost:8080/company-website/?p=20', 2, 'nav_menu_item', '', 0),
(21, 1, '2018-06-06 12:07:26', '2018-06-06 12:07:26', '', 'Portfolio', '', 'trash', 'closed', 'closed', '', 'portfolio__trashed', '', '', '2018-06-07 04:35:11', '2018-06-07 04:35:11', '', 0, 'http://localhost:8080/company-website/?page_id=21', 0, 'page', '', 0),
(23, 1, '2018-06-06 12:07:26', '2018-06-06 12:07:26', '', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-06-06 12:07:26', '2018-06-06 12:07:26', '', 21, 'http://localhost:8080/company-website/2018/06/06/21-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2018-06-06 12:17:49', '2018-06-06 12:17:49', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet.', 'Server Management', '', 'publish', 'open', 'open', '', 'server-management', '', '', '2018-06-06 12:41:25', '2018-06-06 12:41:25', '', 0, 'http://localhost:8080/company-website/?p=24', 0, 'post', '', 0),
(25, 1, '2018-06-06 12:13:13', '2018-06-06 12:13:13', '', 'Screenshot_1', '', 'inherit', 'open', 'closed', '', 'screenshot_1', '', '', '2018-06-06 12:13:13', '2018-06-06 12:13:13', '', 24, 'http://localhost:8080/company-website/wp-content/uploads/2018/06/Screenshot_1.png', 0, 'attachment', 'image/png', 0),
(26, 1, '2018-06-06 12:17:49', '2018-06-06 12:17:49', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet.', 'Server Management', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2018-06-06 12:17:49', '2018-06-06 12:17:49', '', 24, 'http://localhost:8080/company-website/2018/06/06/24-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2018-06-06 12:27:29', '2018-06-06 12:27:29', '[metaslider id=53]Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet.', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-06-08 11:46:46', '2018-06-08 11:46:46', '', 0, 'http://localhost:8080/company-website/?page_id=27', 0, 'page', '', 0),
(35, 1, '2018-06-06 13:03:56', '2018-06-06 13:03:56', '', 'Services', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2018-06-06 13:03:56', '2018-06-06 13:03:56', '', 33, 'http://localhost:8080/company-website/2018/06/06/33-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2018-06-06 12:27:29', '2018-06-06 12:27:29', '', 'Home', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-06-06 12:27:29', '2018-06-06 12:27:29', '', 27, 'http://localhost:8080/company-website/2018/06/06/27-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2018-06-06 12:27:46', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-06-06 12:27:46', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/company-website/?page_id=30', 0, 'page', '', 0),
(31, 1, '2018-06-06 12:27:48', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-06-06 12:27:48', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/company-website/?page_id=31', 0, 'page', '', 0),
(32, 1, '2018-06-06 12:29:11', '2018-06-06 12:29:11', '{\n    \"nav_menu_item[28]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-06 12:29:11\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e818a3bf-7fe6-47e7-b096-b42e9fe29ac3', '', '', '2018-06-06 12:29:11', '2018-06-06 12:29:11', '', 0, 'http://localhost:8080/company-website/2018/06/06/e818a3bf-7fe6-47e7-b096-b42e9fe29ac3/', 0, 'customize_changeset', '', 0),
(36, 1, '2018-06-06 13:04:27', '2018-06-06 13:04:27', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', 'Mobile Development', '', 'publish', 'closed', 'closed', '', 'mobile-development', '', '', '2018-06-06 13:15:03', '2018-06-06 13:15:03', '', 33, 'http://localhost:8080/company-website/?page_id=36', 0, 'page', '', 0),
(37, 1, '2018-06-06 13:04:27', '2018-06-06 13:04:27', '', 'Mobile Development', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2018-06-06 13:04:27', '2018-06-06 13:04:27', '', 36, 'http://localhost:8080/company-website/2018/06/06/36-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2018-06-06 13:04:48', '2018-06-06 13:04:48', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', 'Web Applications', '', 'publish', 'closed', 'closed', '', 'web-applications', '', '', '2018-06-06 13:15:26', '2018-06-06 13:15:26', '', 33, 'http://localhost:8080/company-website/?page_id=38', 0, 'page', '', 0),
(39, 1, '2018-06-06 13:04:48', '2018-06-06 13:04:48', '', 'Web Applications', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2018-06-06 13:04:48', '2018-06-06 13:04:48', '', 38, 'http://localhost:8080/company-website/2018/06/06/38-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2018-06-06 13:05:41', '2018-06-06 13:05:41', '{\n    \"understrap::understrap_sidebar_position\": {\n        \"value\": \"none\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-06 13:05:41\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e7440a69-4d89-4d48-82b2-54fdae1cecb3', '', '', '2018-06-06 13:05:41', '2018-06-06 13:05:41', '', 0, 'http://localhost:8080/company-website/2018/06/06/e7440a69-4d89-4d48-82b2-54fdae1cecb3/', 0, 'customize_changeset', '', 0),
(41, 1, '2018-06-06 13:07:46', '2018-06-06 13:07:46', '{\n    \"nav_menu_item[-1807054324]\": {\n        \"value\": {\n            \"object_id\": 36,\n            \"object\": \"page\",\n            \"menu_item_parent\": 34,\n            \"position\": 5,\n            \"type\": \"post_type\",\n            \"title\": \"Mobile Development\",\n            \"url\": \"http://localhost:8080/company-website/services/mobile-development/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Mobile Development\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-06 13:07:34\"\n    },\n    \"nav_menu_item[-702164810]\": {\n        \"value\": {\n            \"object_id\": 38,\n            \"object\": \"page\",\n            \"menu_item_parent\": 34,\n            \"position\": 6,\n            \"type\": \"post_type\",\n            \"title\": \"Web Applications\",\n            \"url\": \"http://localhost:8080/company-website/services/web-applications/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Web Applications\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-06 13:07:46\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3d0e3c02-c412-49b1-be92-934f3f5f4539', '', '', '2018-06-06 13:07:46', '2018-06-06 13:07:46', '', 0, 'http://localhost:8080/company-website/?p=41', 0, 'customize_changeset', '', 0),
(42, 1, '2018-06-06 13:07:46', '2018-06-06 13:07:46', ' ', '', '', 'publish', 'closed', 'closed', '', '42', '', '', '2018-06-08 14:24:53', '2018-06-08 14:24:53', '', 33, 'http://localhost:8080/company-website/2018/06/06/42/', 6, 'nav_menu_item', '', 0),
(43, 1, '2018-06-06 13:07:46', '2018-06-06 13:07:46', ' ', '', '', 'publish', 'closed', 'closed', '', '43', '', '', '2018-06-08 14:24:53', '2018-06-08 14:24:53', '', 33, 'http://localhost:8080/company-website/2018/06/06/43/', 7, 'nav_menu_item', '', 0),
(44, 1, '2018-06-06 13:13:25', '2018-06-06 13:13:25', 'Repository-hosted Themes are required to support display of comments on static Pages as well as on single blog Posts.  This static Page has comments, and these comments should be displayed.\r\nIf the Theme includes a custom option to prevent static Pages from displaying comments, such option must be disabled (i.e. so that static Pages display comments) by default.\r\nAlso, verify that this Page does not display taxonomy information (e.g. categories or tags) or time-stamp information', 'About Us', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2018-06-06 13:13:25', '2018-06-06 13:13:25', '', 18, 'http://localhost:8080/company-website/2018/06/06/18-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2018-06-06 13:14:10', '2018-06-06 13:14:10', 'Repository-hosted Themes are required to support display of comments on static Pages as well as on single blog Posts.  This static Page has comments, and these comments should be displayed.\r\nIf the Theme includes a custom option to prevent static Pages from displaying comments, such option must be disabled (i.e. so that static Pages display comments) by default.\r\nAlso, verify that this Page does not display taxonomy information (e.g. categories or tags) or time-stamp information', 'Mobile Development', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2018-06-06 13:14:10', '2018-06-06 13:14:10', '', 36, 'http://localhost:8080/company-website/2018/06/06/36-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2018-06-06 13:15:03', '2018-06-06 13:15:03', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', 'Mobile Development', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2018-06-06 13:15:03', '2018-06-06 13:15:03', '', 36, 'http://localhost:8080/company-website/2018/06/06/36-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2018-06-06 13:15:26', '2018-06-06 13:15:26', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', 'Web Applications', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2018-06-06 13:15:26', '2018-06-06 13:15:26', '', 38, 'http://localhost:8080/company-website/2018/06/06/38-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2018-06-06 13:16:29', '2018-06-06 13:16:29', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', 'Services', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2018-06-06 13:16:29', '2018-06-06 13:16:29', '', 33, 'http://localhost:8080/company-website/2018/06/06/33-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2018-06-06 13:29:41', '2018-06-06 13:29:41', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet.', 'Home', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-06-06 13:29:41', '2018-06-06 13:29:41', '', 27, 'http://localhost:8080/company-website/2018/06/06/27-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2018-06-06 13:31:31', '2018-06-06 13:31:31', '{\n    \"page_on_front\": {\n        \"value\": \"27\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-06 13:31:31\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a1b9e2e5-24fb-41f0-84dc-20b9ecb9caf2', '', '', '2018-06-06 13:31:31', '2018-06-06 13:31:31', '', 0, 'http://localhost:8080/company-website/2018/06/06/a1b9e2e5-24fb-41f0-84dc-20b9ecb9caf2/', 0, 'customize_changeset', '', 0),
(51, 1, '2018-06-06 13:53:49', '2018-06-06 13:53:49', '', 'Media', '', 'private', 'closed', 'closed', '', 'media', '', '', '2018-06-06 13:53:49', '2018-06-06 13:53:49', '', 0, 'http://localhost:8080/company-website/?option-tree=media', 0, 'option-tree', '', 0),
(52, 1, '2018-06-06 14:05:19', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-06-06 14:05:19', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/company-website/?p=52', 0, 'post', '', 0),
(53, 1, '2018-06-06 14:08:53', '2018-06-06 14:08:53', '', 'New Slideshow', '', 'publish', 'closed', 'closed', '', 'new-slideshow', '', '', '2018-06-08 11:47:24', '2018-06-08 11:47:24', '', 0, 'http://localhost:8080/company-website/?post_type=ml-slider&#038;p=53', 0, 'ml-slider', '', 0),
(54, 1, '2018-06-06 14:09:24', '2018-06-06 14:09:24', '', 'Slider 53 - image', '', 'publish', 'closed', 'closed', '', 'slider-53-image', '', '', '2018-06-08 11:47:24', '2018-06-08 11:47:24', '', 0, 'http://localhost:8080/company-website/?post_type=ml-slide&#038;p=54', 0, 'ml-slide', '', 0),
(55, 1, '2018-06-06 14:09:25', '2018-06-06 14:09:25', '', 'Slider 53 - image', '', 'publish', 'closed', 'closed', '', 'slider-53-image-2', '', '', '2018-06-08 11:47:24', '2018-06-08 11:47:24', '', 0, 'http://localhost:8080/company-website/?post_type=ml-slide&#038;p=55', 1, 'ml-slide', '', 0),
(56, 1, '2018-06-06 14:09:25', '2018-06-06 14:09:25', '', 'Slider 53 - image', '', 'publish', 'closed', 'closed', '', 'slider-53-image-3', '', '', '2018-06-08 11:47:24', '2018-06-08 11:47:24', '', 0, 'http://localhost:8080/company-website/?post_type=ml-slide&#038;p=56', 2, 'ml-slide', '', 0),
(57, 1, '2018-06-06 14:09:25', '2018-06-06 14:09:25', '', 'Slider 53 - image', '', 'publish', 'closed', 'closed', '', 'slider-53-image-4', '', '', '2018-06-08 11:47:25', '2018-06-08 11:47:25', '', 0, 'http://localhost:8080/company-website/?post_type=ml-slide&#038;p=57', 3, 'ml-slide', '', 0),
(65, 1, '2018-06-08 11:46:21', '2018-06-08 11:46:21', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet.', 'Home', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-06-08 11:46:21', '2018-06-08 11:46:21', '', 27, 'http://localhost:8080/company-website/2018/06/08/27-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2018-06-06 14:13:35', '2018-06-06 14:13:35', '[metaslider id=\"53\"]\r\n\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet.', 'Home', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-06-06 14:13:35', '2018-06-06 14:13:35', '', 27, 'http://localhost:8080/company-website/2018/06/06/27-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2018-06-08 10:26:36', '2018-06-08 10:26:36', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2018-06-08 10:26:36', '2018-06-08 10:26:36', '', 0, 'http://localhost:8080/company-website/?page_id=59', 0, 'page', '', 0),
(60, 1, '2018-06-08 10:26:37', '2018-06-08 10:26:37', ' ', '', '', 'publish', 'closed', 'closed', '', '60', '', '', '2018-06-08 14:24:54', '2018-06-08 14:24:54', '', 0, 'http://localhost:8080/company-website/2018/06/08/60/', 8, 'nav_menu_item', '', 0),
(61, 1, '2018-06-08 10:26:36', '2018-06-08 10:26:36', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2018-06-08 10:26:36', '2018-06-08 10:26:36', '', 59, 'http://localhost:8080/company-website/2018/06/08/59-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2018-06-08 10:28:29', '2018-06-08 10:28:29', '{\n    \"page_for_posts\": {\n        \"value\": \"59\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-08 10:28:29\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1e9843f6-0890-4b08-8153-059023ec47d0', '', '', '2018-06-08 10:28:29', '2018-06-08 10:28:29', '', 0, 'http://localhost:8080/company-website/2018/06/08/1e9843f6-0890-4b08-8153-059023ec47d0/', 0, 'customize_changeset', '', 0),
(63, 1, '2018-06-08 11:29:31', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-06-08 11:29:31', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/company-website/?post_type=awl_filter_gallery&p=63', 0, 'awl_filter_gallery', '', 0),
(64, 1, '2018-06-08 11:46:15', '2018-06-08 11:46:15', '&nbsp;\n\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet.', 'Home', '', 'inherit', 'closed', 'closed', '', '27-autosave-v1', '', '', '2018-06-08 11:46:15', '2018-06-08 11:46:15', '', 27, 'http://localhost:8080/company-website/2018/06/08/27-autosave-v1/', 0, 'revision', '', 0),
(66, 1, '2018-06-08 11:46:46', '2018-06-08 11:46:46', '[metaslider id=53]Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet.', 'Home', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-06-08 11:46:46', '2018-06-08 11:46:46', '', 27, 'http://localhost:8080/company-website/2018/06/08/27-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2018-06-08 14:24:53', '2018-06-08 14:24:53', '{\n    \"nav_menu_item[22]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-08 14:24:46\"\n    },\n    \"nav_menu_item[34]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 33,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost:8080/company-website/services/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 5,\n            \"status\": \"publish\",\n            \"original_title\": \"Services\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-08 14:24:46\"\n    },\n    \"nav_menu_item[42]\": {\n        \"value\": {\n            \"menu_item_parent\": 34,\n            \"object_id\": 36,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost:8080/company-website/services/mobile-development/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 6,\n            \"status\": \"publish\",\n            \"original_title\": \"Mobile Development\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-08 14:24:46\"\n    },\n    \"nav_menu_item[43]\": {\n        \"value\": {\n            \"menu_item_parent\": 34,\n            \"object_id\": 38,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost:8080/company-website/services/web-applications/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 7,\n            \"status\": \"publish\",\n            \"original_title\": \"Web Applications\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-08 14:24:46\"\n    },\n    \"nav_menu_item[60]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 59,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost:8080/company-website/blog/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 8,\n            \"status\": \"publish\",\n            \"original_title\": \"Blog\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-08 14:24:46\"\n    },\n    \"nav_menu_item[76]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 75,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost:8080/company-website/portfolio/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 3,\n            \"status\": \"publish\",\n            \"original_title\": \"Portfolio\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-08 14:24:46\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1236c31f-30d5-4910-b4fb-fdd811af4e8f', '', '', '2018-06-08 14:24:53', '2018-06-08 14:24:53', '', 0, 'http://localhost:8080/company-website/?p=90', 0, 'customize_changeset', '', 0),
(68, 1, '2018-06-08 12:14:27', '2018-06-08 12:14:27', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet.', 'Server Management', '', 'publish', 'open', 'closed', '', 'server-management', '', '', '2018-06-08 13:46:21', '2018-06-08 13:46:21', '', 0, 'http://localhost:8080/company-website/?post_type=portfolio&#038;p=68', 0, 'portfolio', '', 0),
(69, 1, '2018-06-08 12:13:27', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-06-08 12:13:27', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/company-website/?post_type=portfolio&p=69', 0, 'portfolio', '', 0),
(70, 1, '2018-06-08 12:14:27', '2018-06-08 12:14:27', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet.', 'Server Management', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2018-06-08 12:14:27', '2018-06-08 12:14:27', '', 68, 'http://localhost:8080/company-website/2018/06/08/68-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2018-06-08 12:24:46', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-06-08 12:24:46', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/company-website/?page_id=71', 0, 'page', '', 0),
(72, 1, '2018-06-08 12:28:47', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-06-08 12:28:47', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/company-website/?p=72', 0, 'post', '', 0),
(73, 1, '2018-06-08 12:28:53', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-06-08 12:28:53', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/company-website/?page_id=73', 0, 'page', '', 0),
(75, 1, '2018-06-08 12:51:56', '2018-06-08 12:51:56', '[tlpportfolio layout=\"1\" col=\"4\"  cat=\"6\" letter-limit=\"100\"]', 'Portfolio', '', 'publish', 'closed', 'closed', '', 'portfolio', '', '', '2018-06-08 13:48:34', '2018-06-08 13:48:34', '', 0, 'http://localhost:8080/company-website/?page_id=75', 0, 'page', '', 0),
(83, 1, '2018-06-08 13:40:36', '2018-06-08 13:40:36', '[tlpportfolio layout=\"1\" col=\"4\"]', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2018-06-08 13:40:36', '2018-06-08 13:40:36', '', 75, 'http://localhost:8080/company-website/2018/06/08/75-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2018-06-08 12:51:57', '2018-06-08 12:51:57', ' ', '', '', 'publish', 'closed', 'closed', '', '76', '', '', '2018-06-08 14:24:54', '2018-06-08 14:24:54', '', 0, 'http://localhost:8080/company-website/2018/06/08/76/', 3, 'nav_menu_item', '', 0),
(77, 1, '2018-06-08 12:51:56', '2018-06-08 12:51:56', '[tlpportfolio col=\"2\" number=\"4\" cat=\"5,78\" orderby=\"Server Management\" order=\"ASC\" layout=\"1\"]', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2018-06-08 12:51:56', '2018-06-08 12:51:56', '', 75, 'http://localhost:8080/company-website/2018/06/08/75-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2018-06-08 12:53:13', '2018-06-08 12:53:13', '[tlpportfolio col=\"2\" number=\"4\" cat=\"5,78\" orderby=\"title\" order=\"ASC\" layout=\"1\"]', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2018-06-08 12:53:13', '2018-06-08 12:53:13', '', 75, 'http://localhost:8080/company-website/2018/06/08/75-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2018-06-08 13:48:34', '2018-06-08 13:48:34', '[tlpportfolio layout=\"1\" col=\"4\"  cat=\"6\" letter-limit=\"100\"]', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2018-06-08 13:48:34', '2018-06-08 13:48:34', '', 75, 'http://localhost:8080/company-website/2018/06/08/75-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2018-06-08 13:28:23', '2018-06-08 13:28:23', '[gravityform id=\"1\" title=\"true\" description=\"true\"]', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2018-06-08 13:28:23', '2018-06-08 13:28:23', '', 0, 'http://localhost:8080/company-website/?page_id=80', 0, 'page', '', 0),
(81, 1, '2018-06-08 13:28:23', '2018-06-08 13:28:23', ' ', '', '', 'publish', 'closed', 'closed', '', '81', '', '', '2018-06-08 13:28:23', '2018-06-08 13:28:23', '', 0, 'http://localhost:8080/company-website/2018/06/08/81/', 9, 'nav_menu_item', '', 0),
(82, 1, '2018-06-08 13:28:23', '2018-06-08 13:28:23', '[gravityform id=\"1\" title=\"true\" description=\"true\"]', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2018-06-08 13:28:23', '2018-06-08 13:28:23', '', 80, 'http://localhost:8080/company-website/2018/06/08/80-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2018-06-08 13:43:26', '2018-06-08 13:43:26', '[tlpportfolio layout=\"1\" col=\"4\" [tlpportfolio layout=\"1\" letter-limit=\"30\"]', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2018-06-08 13:43:26', '2018-06-08 13:43:26', '', 75, 'http://localhost:8080/company-website/2018/06/08/75-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2018-06-08 13:47:14', '2018-06-08 13:47:14', '[tlpportfolio layout=\"1\" col=\"4\" [tlpportfolio layout=\"1\" letter-limit=\"100\"]', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2018-06-08 13:47:14', '2018-06-08 13:47:14', '', 75, 'http://localhost:8080/company-website/2018/06/08/75-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2018-06-08 13:47:40', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-06-08 13:47:40', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/company-website/?post_type=portfolio&p=86', 0, 'portfolio', '', 0),
(88, 1, '2018-06-08 13:51:57', '2018-06-08 13:51:57', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet.', 'Dummy Project', '', 'publish', 'closed', 'closed', '', 'dummy-project', '', '', '2018-06-08 13:51:57', '2018-06-08 13:51:57', '', 0, 'http://localhost:8080/company-website/?post_type=portfolio&#038;p=88', 0, 'portfolio', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(89, 1, '2018-06-08 13:50:31', '2018-06-08 13:50:31', '', 'abcd', '', 'inherit', 'open', 'closed', '', 'abcd', '', '', '2018-06-08 13:50:31', '2018-06-08 13:50:31', '', 88, 'http://localhost:8080/company-website/wp-content/uploads/2018/06/abcd.png', 0, 'attachment', 'image/png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_qcld_slider_hero_sliders`
--

DROP TABLE IF EXISTS `wp_qcld_slider_hero_sliders`;
CREATE TABLE IF NOT EXISTS `wp_qcld_slider_hero_sliders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(30) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `params` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `time` datetime NOT NULL,
  `slide` longtext COLLATE utf8mb4_unicode_520_ci,
  `style` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `custom` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bg_image_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bg_gradient` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_qcld_slider_hero_sliders`
--

INSERT INTO `wp_qcld_slider_hero_sliders` (`id`, `title`, `type`, `params`, `time`, `slide`, `style`, `custom`, `bg_image_url`, `bg_gradient`) VALUES
(1, 'First Slider', 'particle', '{\"autoplay\":1,\"pauseonhover\":1,\"effect\":{\"interval\":13000},\"titleffect\":\"bounceInLeft\",\"deseffect\":\"bounceInRight\",\"custom\":{\"type\":\"text\"},\"title\":{\"show\":1,\"position\":\"1\",\"align\":\"center\",\"style\":{\"width\":213,\"height\":61,\"left\":\"0%\",\"top\":\"10%\",\"color\":\"FFFFFF\",\"opacity\":0,\"font\":{\"size\":18},\"border\":{\"color\":\"FFFFFF\",\"width\":1,\"radius\":2},\"background\":{\"color\":\"FFFFFF\",\"hover\":\"30FF4F\"}}},\"button1\":{\"show\":1,\"position\":\"1\",\"align\":\"center\",\"style\":{\"width\":213,\"height\":61,\"left\":\"0%\",\"top\":\"60%\"}},\"description\":{\"show\":1,\"position\":\"1\",\"align\":\"center\",\"style\":{\"width\":213,\"height\":61,\"left\":\"0%\",\"top\":\"30%\",\"color\":\"FFFFFF\",\"opacity\":80,\"font\":{\"size\":14},\"border\":{\"color\":\"3478FF\",\"width\":0,\"radius\":2},\"background\":{\"color\":\"000000\",\"hover\":\"000000\"}}},\"arrows\":{\"show\":2,\"type\":1,\"style\":{\"background\":{\"width\":\"49\",\"height\":\"49\",\"left\":\"91px 46px\",\"right\":\"-44px 1px\",\"hover\":{\"left\":\"91px 46px\",\"right\":\"-44px 1px\"}}}},\"bullets\":{\"show\":0,\"type\":\"0\",\"position\":0,\"autocenter\":\"0\",\"rows\":1,\"s_x\":10,\"s_y\":10,\"orientation\":1,\"style\":{\"background\":{\"width\":\"60\",\"height\":\"60\",\"color\":{\"hover\":\"646464\",\"active\":\"30FF4F\",\"link\":\"CCCCCC\"}},\"position\":{\"top\":\"16px\",\"left\":\"10px\"}}}}', '2016-05-02 10:58:58', 'NULL', '{\"background\":\"blue;\",\"border\":\"1px solid red;\",\"color\":\"yellow\",\"width\":\"800\",\"height\":\"480\",\"marginLeft\":\"0\",\"marginRight\":\"0\",\"marginTop\":\"0\",\"marginBottom\":\"0\"}', '{}', '', ''),
(2, 'New Slider Hero', 'no_effect', '{\"autoplay\":1,\"pauseonhover\":1,\"directionnav\":1,\"controlnav\":1,\"effect\":{\"interval\":13000},\"title\":{\"show\":1,\"align\":\"center\",\"style\":{\"width\":213,\"height\":61,\"left\":\"0px\",\"top\":\"10%\"}},\"button1\":{\"show\":1,\"position\":\"1\",\"align\":\"center\",\"style\":{\"width\":213,\"height\":61,\"left\":\"0%\",\"top\":\"80%\"}},\"titleffect\":\"bounceInLeft\",\"deseffect\":\"bounceInRight\",\"description\":{\"show\":1,\"align\":\"center\",\"style\":{\"width\":213,\"height\":61,\"left\":\"0%\",\"top\":\"30%\"}},\"titlefontsize\":20,\"descfontsize\":30,\"background\":\"#4e56fc\",\"titlecolor\":\"#d6d6d6\",\"descriptioncolor\":\"#e8e8e8\"}', '2018-06-06 13:55:10', NULL, '{\"background\":\"blue;\",\"border\":\"1px solid red;\",\"color\":\"yellow\",\"width\":\"800\",\"height\":\"480\",\"marginLeft\":\"0\",\"marginRight\":\"0\",\"marginTop\":\"0\",\"marginBottom\":\"0\"}', '{}', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_qcld_slider_hero_slides`
--

DROP TABLE IF EXISTS `wp_qcld_slider_hero_slides`;
CREATE TABLE IF NOT EXISTS `wp_qcld_slider_hero_slides` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sliderid` int(11) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `slide` longtext COLLATE utf8mb4_unicode_520_ci,
  `description` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `image_link` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `image_link_new_tab` tinyint(1) NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `custom` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ordering` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `btn` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `stomp` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_form`
--

DROP TABLE IF EXISTS `wp_rg_form`;
CREATE TABLE IF NOT EXISTS `wp_rg_form` (
  `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_trash` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_rg_form`
--

INSERT INTO `wp_rg_form` (`id`, `title`, `date_created`, `is_active`, `is_trash`) VALUES
(1, 'Contact Us Form', '2018-06-08 13:00:48', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_form_meta`
--

DROP TABLE IF EXISTS `wp_rg_form_meta`;
CREATE TABLE IF NOT EXISTS `wp_rg_form_meta` (
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `display_meta` longtext COLLATE utf8mb4_unicode_520_ci,
  `entries_grid_meta` longtext COLLATE utf8mb4_unicode_520_ci,
  `confirmations` longtext COLLATE utf8mb4_unicode_520_ci,
  `notifications` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`form_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_rg_form_meta`
--

INSERT INTO `wp_rg_form_meta` (`form_id`, `display_meta`, `entries_grid_meta`, `confirmations`, `notifications`) VALUES
(1, '{\"title\":\"Contact Us Form\",\"description\":\"\",\"labelPlacement\":\"top_label\",\"descriptionPlacement\":\"below\",\"button\":{\"type\":\"text\",\"text\":\"Submit\",\"imageUrl\":\"\"},\"fields\":[{\"type\":\"name\",\"id\":4,\"label\":\"Name\",\"adminLabel\":\"\",\"isRequired\":true,\"size\":\"medium\",\"errorMessage\":\"Name is required\",\"nameFormat\":\"advanced\",\"inputs\":[{\"id\":\"4.2\",\"label\":\"Prefix\",\"name\":\"\",\"choices\":[{\"text\":\"Mr.\",\"value\":\"Mr.\",\"isSelected\":false,\"price\":\"\"},{\"text\":\"Mrs.\",\"value\":\"Mrs.\",\"isSelected\":false,\"price\":\"\"},{\"text\":\"Miss\",\"value\":\"Miss\",\"isSelected\":false,\"price\":\"\"},{\"text\":\"Ms.\",\"value\":\"Ms.\",\"isSelected\":false,\"price\":\"\"},{\"text\":\"Dr.\",\"value\":\"Dr.\",\"isSelected\":false,\"price\":\"\"},{\"text\":\"Prof.\",\"value\":\"Prof.\",\"isSelected\":false,\"price\":\"\"},{\"text\":\"Rev.\",\"value\":\"Rev.\",\"isSelected\":false,\"price\":\"\"}],\"isHidden\":true,\"inputType\":\"radio\"},{\"id\":\"4.3\",\"label\":\"First\",\"name\":\"\",\"isHidden\":false},{\"id\":\"4.4\",\"label\":\"Middle\",\"name\":\"\",\"isHidden\":true},{\"id\":\"4.6\",\"label\":\"Last\",\"name\":\"\",\"isHidden\":false},{\"id\":\"4.8\",\"label\":\"Suffix\",\"name\":\"\",\"isHidden\":true}],\"formId\":1,\"description\":\"\",\"allowsPrepopulate\":false,\"inputMask\":false,\"inputMaskValue\":\"\",\"inputType\":\"\",\"labelPlacement\":\"\",\"descriptionPlacement\":\"\",\"subLabelPlacement\":\"\",\"placeholder\":\"\",\"cssClass\":\"\",\"inputName\":\"\",\"visibility\":\"visible\",\"noDuplicates\":false,\"defaultValue\":\"\",\"choices\":\"\",\"conditionalLogic\":\"\",\"productField\":\"\",\"multipleFiles\":false,\"maxFiles\":\"\",\"calculationFormula\":\"\",\"calculationRounding\":\"\",\"enableCalculation\":\"\",\"disableQuantity\":false,\"displayAllCategories\":false,\"useRichTextEditor\":false,\"pageNumber\":1,\"displayOnly\":\"\"},{\"type\":\"phone\",\"id\":3,\"label\":\"Phone\",\"adminLabel\":\"\",\"isRequired\":true,\"size\":\"medium\",\"errorMessage\":\"Phone is required\",\"inputs\":null,\"phoneFormat\":\"standard\",\"formId\":1,\"description\":\"\",\"allowsPrepopulate\":false,\"inputMask\":false,\"inputMaskValue\":\"\",\"inputType\":\"\",\"labelPlacement\":\"\",\"descriptionPlacement\":\"\",\"subLabelPlacement\":\"\",\"placeholder\":\"\",\"cssClass\":\"\",\"inputName\":\"\",\"visibility\":\"visible\",\"noDuplicates\":false,\"defaultValue\":\"\",\"choices\":\"\",\"conditionalLogic\":\"\",\"form_id\":\"\",\"productField\":\"\",\"multipleFiles\":false,\"maxFiles\":\"\",\"calculationFormula\":\"\",\"calculationRounding\":\"\",\"enableCalculation\":\"\",\"disableQuantity\":false,\"displayAllCategories\":false,\"useRichTextEditor\":false,\"pageNumber\":1,\"displayOnly\":\"\"},{\"type\":\"email\",\"id\":5,\"label\":\"Email\",\"adminLabel\":\"\",\"isRequired\":true,\"size\":\"medium\",\"errorMessage\":\"Email is required\",\"inputs\":null,\"formId\":1,\"description\":\"\",\"allowsPrepopulate\":false,\"inputMask\":false,\"inputMaskValue\":\"\",\"inputType\":\"\",\"labelPlacement\":\"\",\"descriptionPlacement\":\"\",\"subLabelPlacement\":\"\",\"placeholder\":\"\",\"cssClass\":\"\",\"inputName\":\"\",\"visibility\":\"visible\",\"noDuplicates\":false,\"defaultValue\":\"\",\"choices\":\"\",\"conditionalLogic\":\"\",\"productField\":\"\",\"emailConfirmEnabled\":\"\",\"multipleFiles\":false,\"maxFiles\":\"\",\"calculationFormula\":\"\",\"calculationRounding\":\"\",\"enableCalculation\":\"\",\"disableQuantity\":false,\"displayAllCategories\":false,\"useRichTextEditor\":false,\"pageNumber\":1},{\"type\":\"textarea\",\"id\":7,\"label\":\"Message\",\"adminLabel\":\"\",\"isRequired\":true,\"size\":\"medium\",\"errorMessage\":\"\",\"inputs\":null,\"formId\":1,\"description\":\"\",\"allowsPrepopulate\":false,\"inputMask\":false,\"inputMaskValue\":\"\",\"inputType\":\"\",\"labelPlacement\":\"\",\"descriptionPlacement\":\"\",\"subLabelPlacement\":\"\",\"placeholder\":\"\",\"cssClass\":\"\",\"inputName\":\"\",\"visibility\":\"visible\",\"noDuplicates\":false,\"defaultValue\":\"\",\"choices\":\"\",\"conditionalLogic\":\"\",\"productField\":\"\",\"form_id\":\"\",\"useRichTextEditor\":false,\"multipleFiles\":false,\"maxFiles\":\"\",\"calculationFormula\":\"\",\"calculationRounding\":\"\",\"enableCalculation\":\"\",\"disableQuantity\":false,\"displayAllCategories\":false,\"pageNumber\":1}],\"version\":\"2.2.2\",\"id\":1,\"useCurrentUserAsAuthor\":true,\"postContentTemplateEnabled\":false,\"postTitleTemplateEnabled\":false,\"postTitleTemplate\":\"\",\"postContentTemplate\":\"\",\"lastPageButton\":null,\"pagination\":null,\"firstPageCssClass\":null,\"subLabelPlacement\":\"below\",\"cssClass\":\"\",\"enableHoneypot\":false,\"enableAnimation\":false,\"save\":{\"enabled\":false,\"button\":{\"type\":\"link\",\"text\":\"Save and Continue Later\"}},\"limitEntries\":false,\"limitEntriesCount\":\"\",\"limitEntriesPeriod\":\"\",\"limitEntriesMessage\":\"\",\"scheduleForm\":false,\"scheduleStart\":\"\",\"scheduleStartHour\":\"\",\"scheduleStartMinute\":\"\",\"scheduleStartAmpm\":\"\",\"scheduleEnd\":\"\",\"scheduleEndHour\":\"\",\"scheduleEndMinute\":\"\",\"scheduleEndAmpm\":\"\",\"schedulePendingMessage\":\"\",\"scheduleMessage\":\"\",\"requireLogin\":false,\"requireLoginMessage\":\"\",\"notifications\":{\"5b1a7e0048930\":{\"id\":\"5b1a7e0048930\",\"to\":\"{admin_email}\",\"name\":\"Admin Notification\",\"event\":\"form_submission\",\"toType\":\"email\",\"subject\":\"New submission from {form_title}\",\"message\":\"{all_fields}\"}},\"confirmations\":{\"5b1a7e0050e50\":{\"id\":\"5b1a7e0050e50\",\"name\":\"Default Confirmation\",\"isDefault\":true,\"type\":\"message\",\"message\":\"Thanks for contacting us! We will get in touch with you shortly.\",\"url\":\"\",\"pageId\":\"\",\"queryString\":\"\"}}}', '', '{\"5b1a7e0050e50\":{\"id\":\"5b1a7e0050e50\",\"name\":\"Default Confirmation\",\"isDefault\":true,\"type\":\"message\",\"message\":\"Thanks for contacting us! We will get in touch with you shortly.\",\"url\":\"\",\"pageId\":\"\",\"queryString\":\"\"}}', '{\"5b1a7e0048930\":{\"id\":\"5b1a7e0048930\",\"to\":\"{admin_email}\",\"name\":\"Admin Notification\",\"event\":\"form_submission\",\"toType\":\"email\",\"subject\":\"New submission from {form_title}\",\"message\":\"{all_fields}\"}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_form_view`
--

DROP TABLE IF EXISTS `wp_rg_form_view`;
CREATE TABLE IF NOT EXISTS `wp_rg_form_view` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` char(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `count` mediumint(8) UNSIGNED NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `date_created` (`date_created`),
  KEY `form_id` (`form_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_rg_form_view`
--

INSERT INTO `wp_rg_form_view` (`id`, `form_id`, `date_created`, `ip`, `count`) VALUES
(1, 1, '2018-06-11 05:23:27', '::1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_incomplete_submissions`
--

DROP TABLE IF EXISTS `wp_rg_incomplete_submissions`;
CREATE TABLE IF NOT EXISTS `wp_rg_incomplete_submissions` (
  `uuid` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` varchar(39) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `source_url` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `submission` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `form_id` (`form_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_lead`
--

DROP TABLE IF EXISTS `wp_rg_lead`;
CREATE TABLE IF NOT EXISTS `wp_rg_lead` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `is_starred` tinyint(1) NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(39) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `source_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_agent` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `currency` varchar(5) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `payment_status` varchar(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `payment_amount` decimal(19,2) DEFAULT NULL,
  `payment_method` varchar(30) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `transaction_id` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_fulfilled` tinyint(1) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `transaction_type` tinyint(1) DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_lead_detail`
--

DROP TABLE IF EXISTS `wp_rg_lead_detail`;
CREATE TABLE IF NOT EXISTS `wp_rg_lead_detail` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `lead_id` int(10) UNSIGNED NOT NULL,
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `field_number` float NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `lead_id` (`lead_id`),
  KEY `lead_field_number` (`lead_id`,`field_number`),
  KEY `lead_field_value` (`value`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_lead_detail_long`
--

DROP TABLE IF EXISTS `wp_rg_lead_detail_long`;
CREATE TABLE IF NOT EXISTS `wp_rg_lead_detail_long` (
  `lead_detail_id` bigint(20) UNSIGNED NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`lead_detail_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_lead_meta`
--

DROP TABLE IF EXISTS `wp_rg_lead_meta`;
CREATE TABLE IF NOT EXISTS `wp_rg_lead_meta` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `lead_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`id`),
  KEY `meta_key` (`meta_key`(191)),
  KEY `lead_id` (`lead_id`),
  KEY `form_id_meta_key` (`form_id`,`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_lead_notes`
--

DROP TABLE IF EXISTS `wp_rg_lead_notes`;
CREATE TABLE IF NOT EXISTS `wp_rg_lead_notes` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `lead_id` int(10) UNSIGNED NOT NULL,
  `user_name` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_520_ci,
  `note_type` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lead_id` (`lead_id`),
  KEY `lead_user_key` (`lead_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main Menu', 'main-menu', 0),
(3, 'post-format-link', 'post-format-link', 0),
(4, 'Projects', 'projects', 0),
(5, '53', '53', 0),
(6, 'Projects', 'project', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(8, 2, 0),
(20, 2, 0),
(34, 2, 0),
(24, 3, 0),
(24, 4, 0),
(42, 2, 0),
(43, 2, 0),
(54, 5, 0),
(55, 5, 0),
(56, 5, 0),
(57, 5, 0),
(60, 2, 0),
(76, 2, 0),
(81, 2, 0),
(68, 6, 0),
(88, 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 8),
(3, 3, 'post_format', '', 0, 1),
(4, 4, 'category', '', 0, 1),
(5, 5, 'ml-slider', '', 0, 4),
(6, 6, 'portfolio-category', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

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
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"8f384208273cf8866c00b0b677e4de508f9c19c909286af23493baa8c2993b95\";a:4:{s:10:\"expiration\";i:1528867050;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36\";s:5:\"login\";i:1528694250;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'wp_user-settings', 'libraryContent=browse'),
(19, 1, 'wp_user-settings-time', '1528283679'),
(20, 1, 'closedpostboxes_page', 'a:0:{}'),
(21, 1, 'metaboxhidden_page', 'a:4:{i:0;s:10:\"postcustom\";i:1;s:16:\"commentstatusdiv\";i:2;s:7:\"slugdiv\";i:3;s:9:\"authordiv\";}'),
(22, 1, 'nav_menu_recently_edited', '2'),
(23, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(24, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(25, 1, 'gform_recent_forms', 'a:1:{i:0;s:1:\"1\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B24WHdl2Liljc2opaFi6tITkdYdLlU.', 'admin', 'admin@gmail.com', '', '2018-06-06 10:48:54', '', 0, 'admin');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
