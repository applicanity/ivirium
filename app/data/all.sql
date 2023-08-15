-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2023 at 03:59 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `opensource_ivirium`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('admin', '1', 1575602373),
('User', '2', 1663605410),
('User', '3', 1661183081),
('User', '4', 1663602768),
('User', '5', 1663605774),
('User', '6', 1663645253),
('User', '7', 1664249477);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('/admin/*', 2, NULL, NULL, NULL, 1661097906, 1661097906),
('/admin/assignment/*', 2, NULL, NULL, NULL, 1661097901, 1661097901),
('/admin/assignment/assign', 2, NULL, NULL, NULL, 1661097901, 1661097901),
('/admin/assignment/index', 2, NULL, NULL, NULL, 1661097901, 1661097901),
('/admin/assignment/revoke', 2, NULL, NULL, NULL, 1661097901, 1661097901),
('/admin/assignment/view', 2, NULL, NULL, NULL, 1661097901, 1661097901),
('/admin/default/*', 2, NULL, NULL, NULL, 1661097901, 1661097901),
('/admin/default/index', 2, NULL, NULL, NULL, 1661097901, 1661097901),
('/admin/menu/*', 2, NULL, NULL, NULL, 1661097902, 1661097902),
('/admin/menu/create', 2, NULL, NULL, NULL, 1661097902, 1661097902),
('/admin/menu/delete', 2, NULL, NULL, NULL, 1661097902, 1661097902),
('/admin/menu/index', 2, NULL, NULL, NULL, 1661097901, 1661097901),
('/admin/menu/update', 2, NULL, NULL, NULL, 1661097902, 1661097902),
('/admin/menu/view', 2, NULL, NULL, NULL, 1661097902, 1661097902),
('/admin/permission/*', 2, NULL, NULL, NULL, 1661097903, 1661097903),
('/admin/permission/assign', 2, NULL, NULL, NULL, 1661097902, 1661097902),
('/admin/permission/create', 2, NULL, NULL, NULL, 1661097902, 1661097902),
('/admin/permission/delete', 2, NULL, NULL, NULL, 1661097902, 1661097902),
('/admin/permission/get-users', 2, NULL, NULL, NULL, 1661097903, 1661097903),
('/admin/permission/index', 2, NULL, NULL, NULL, 1661097902, 1661097902),
('/admin/permission/remove', 2, NULL, NULL, NULL, 1661097903, 1661097903),
('/admin/permission/update', 2, NULL, NULL, NULL, 1661097902, 1661097902),
('/admin/permission/view', 2, NULL, NULL, NULL, 1661097902, 1661097902),
('/admin/role/*', 2, NULL, NULL, NULL, 1661097903, 1661097903),
('/admin/role/assign', 2, NULL, NULL, NULL, 1661097903, 1661097903),
('/admin/role/create', 2, NULL, NULL, NULL, 1661097903, 1661097903),
('/admin/role/delete', 2, NULL, NULL, NULL, 1661097903, 1661097903),
('/admin/role/get-users', 2, NULL, NULL, NULL, 1661097903, 1661097903),
('/admin/role/index', 2, NULL, NULL, NULL, 1661097903, 1661097903),
('/admin/role/remove', 2, NULL, NULL, NULL, 1661097903, 1661097903),
('/admin/role/update', 2, NULL, NULL, NULL, 1661097903, 1661097903),
('/admin/role/view', 2, NULL, NULL, NULL, 1661097903, 1661097903),
('/admin/route/*', 2, NULL, NULL, NULL, 1661097904, 1661097904),
('/admin/route/assign', 2, NULL, NULL, NULL, 1661097904, 1661097904),
('/admin/route/create', 2, NULL, NULL, NULL, 1661097904, 1661097904),
('/admin/route/index', 2, NULL, NULL, NULL, 1661097904, 1661097904),
('/admin/route/refresh', 2, NULL, NULL, NULL, 1661097904, 1661097904),
('/admin/route/remove', 2, NULL, NULL, NULL, 1661097904, 1661097904),
('/admin/rule/*', 2, NULL, NULL, NULL, 1661097905, 1661097905),
('/admin/rule/create', 2, NULL, NULL, NULL, 1661097904, 1661097904),
('/admin/rule/delete', 2, NULL, NULL, NULL, 1661097905, 1661097905),
('/admin/rule/index', 2, NULL, NULL, NULL, 1661097904, 1661097904),
('/admin/rule/update', 2, NULL, NULL, NULL, 1661097904, 1661097904),
('/admin/rule/view', 2, NULL, NULL, NULL, 1661097904, 1661097904),
('/admin/user/*', 2, NULL, NULL, NULL, 1661097905, 1661097905),
('/admin/user/activate', 2, NULL, NULL, NULL, 1661097905, 1661097905),
('/admin/user/change-password', 2, NULL, NULL, NULL, 1661097905, 1661097905),
('/admin/user/delete', 2, NULL, NULL, NULL, 1661097905, 1661097905),
('/admin/user/index', 2, NULL, NULL, NULL, 1661097905, 1661097905),
('/admin/user/login', 2, NULL, NULL, NULL, 1661097905, 1661097905),
('/admin/user/logout', 2, NULL, NULL, NULL, 1661097905, 1661097905),
('/admin/user/request-password-reset', 2, NULL, NULL, NULL, 1661097905, 1661097905),
('/admin/user/reset-password', 2, NULL, NULL, NULL, 1661097905, 1661097905),
('/admin/user/signup', 2, NULL, NULL, NULL, 1661097905, 1661097905),
('/admin/user/view', 2, NULL, NULL, NULL, 1661097905, 1661097905),
('/administrator/*', 2, NULL, NULL, NULL, 1675696480, 1675696480),
('/administrator/ajax/*', 2, NULL, NULL, NULL, 1675696479, 1675696479),
('/administrator/ajax/upload-tinymce', 2, NULL, NULL, NULL, 1675696479, 1675696479),
('/administrator/default/*', 2, NULL, NULL, NULL, 1675696479, 1675696479),
('/administrator/default/index', 2, NULL, NULL, NULL, 1675696479, 1675696479),
('/administrator/post/*', 2, NULL, NULL, NULL, 1675696480, 1675696480),
('/administrator/post/create', 2, NULL, NULL, NULL, 1675696479, 1675696479),
('/administrator/post/delete', 2, NULL, NULL, NULL, 1675696480, 1675696480),
('/administrator/post/index', 2, NULL, NULL, NULL, 1675696479, 1675696479),
('/administrator/post/update', 2, NULL, NULL, NULL, 1675696479, 1675696479),
('/administrator/post/view', 2, NULL, NULL, NULL, 1675696479, 1675696479),
('/classroom/*', 2, NULL, NULL, NULL, 1661097909, 1661097909),
('/classroom/create', 2, NULL, NULL, NULL, 1661097908, 1661097908),
('/classroom/delete', 2, NULL, NULL, NULL, 1661097908, 1661097908),
('/classroom/index', 2, NULL, NULL, NULL, 1661097908, 1661097908),
('/classroom/update', 2, NULL, NULL, NULL, 1661097908, 1661097908),
('/classroom/view', 2, NULL, NULL, NULL, 1661097908, 1661097908),
('/debug/*', 2, NULL, NULL, NULL, 1661097907, 1661097907),
('/debug/default/*', 2, NULL, NULL, NULL, 1661097907, 1661097907),
('/debug/default/db-explain', 2, NULL, NULL, NULL, 1661097906, 1661097906),
('/debug/default/download-mail', 2, NULL, NULL, NULL, 1661097906, 1661097906),
('/debug/default/index', 2, NULL, NULL, NULL, 1661097906, 1661097906),
('/debug/default/toolbar', 2, NULL, NULL, NULL, 1661097906, 1661097906),
('/debug/default/view', 2, NULL, NULL, NULL, 1661097906, 1661097906),
('/debug/user/*', 2, NULL, NULL, NULL, 1661097907, 1661097907),
('/debug/user/reset-identity', 2, NULL, NULL, NULL, 1661097907, 1661097907),
('/debug/user/set-identity', 2, NULL, NULL, NULL, 1661097907, 1661097907),
('/gii/*', 2, NULL, NULL, NULL, 1661097908, 1661097908),
('/gii/default/*', 2, NULL, NULL, NULL, 1661097908, 1661097908),
('/gii/default/action', 2, NULL, NULL, NULL, 1661097907, 1661097907),
('/gii/default/diff', 2, NULL, NULL, NULL, 1661097907, 1661097907),
('/gii/default/index', 2, NULL, NULL, NULL, 1661097907, 1661097907),
('/gii/default/preview', 2, NULL, NULL, NULL, 1661097907, 1661097907),
('/gii/default/view', 2, NULL, NULL, NULL, 1661097907, 1661097907),
('/gridview/*', 2, NULL, NULL, NULL, 1661097906, 1661097906),
('/gridview/export/*', 2, NULL, NULL, NULL, 1661097906, 1661097906),
('/gridview/export/download', 2, NULL, NULL, NULL, 1661097906, 1661097906),
('/gridview/grid-edited-row/*', 2, NULL, NULL, NULL, 1661097906, 1661097906),
('/gridview/grid-edited-row/back', 2, NULL, NULL, NULL, 1661097906, 1661097906),
('/page/*', 2, NULL, NULL, NULL, 1675696480, 1675696480),
('/page/view', 2, NULL, NULL, NULL, 1675696480, 1675696480),
('/post/*', 2, NULL, NULL, NULL, 1675696480, 1675696480),
('/post/view', 2, NULL, NULL, NULL, 1675696480, 1675696480),
('/question-template/*', 2, NULL, NULL, NULL, 1661097909, 1661097909),
('/question-template/create', 2, NULL, NULL, NULL, 1661097909, 1661097909),
('/question-template/delete', 2, NULL, NULL, NULL, 1661097909, 1661097909),
('/question-template/index', 2, NULL, NULL, NULL, 1661097909, 1661097909),
('/question-template/update', 2, NULL, NULL, NULL, 1661097909, 1661097909),
('/question-template/view', 2, NULL, NULL, NULL, 1661097909, 1661097909),
('/report/*', 2, NULL, NULL, NULL, 1663495864, 1663495864),
('/report/detail', 2, NULL, NULL, NULL, 1663495864, 1663495864),
('/report/export-detail', 2, NULL, NULL, NULL, 1664121779, 1664121779),
('/report/export-training', 2, NULL, NULL, NULL, 1664120070, 1664120070),
('/report/training', 2, NULL, NULL, NULL, 1663495864, 1663495864),
('/site/*', 2, NULL, NULL, NULL, 1661097910, 1661097910),
('/site/about', 2, NULL, NULL, NULL, 1661097910, 1661097910),
('/site/captcha', 2, NULL, NULL, NULL, 1661097909, 1661097909),
('/site/contact', 2, NULL, NULL, NULL, 1661097910, 1661097910),
('/site/error', 2, NULL, NULL, NULL, 1661097909, 1661097909),
('/site/index', 2, NULL, NULL, NULL, 1661097909, 1661097909),
('/site/login', 2, NULL, NULL, NULL, 1661097909, 1661097909),
('/site/logout', 2, NULL, NULL, NULL, 1661097909, 1661097909),
('/submission/*', 2, NULL, NULL, NULL, 1662307061, 1662307061),
('/submission/create', 2, NULL, NULL, NULL, 1662307061, 1662307061),
('/submission/delete', 2, NULL, NULL, NULL, 1662307061, 1662307061),
('/submission/index', 2, NULL, NULL, NULL, 1662307061, 1662307061),
('/submission/update', 2, NULL, NULL, NULL, 1662307061, 1662307061),
('/submission/view', 2, NULL, NULL, NULL, 1662307061, 1662307061),
('/trainer/*', 2, NULL, NULL, NULL, 1661097910, 1661097910),
('/trainer/create', 2, NULL, NULL, NULL, 1661097910, 1661097910),
('/trainer/delete', 2, NULL, NULL, NULL, 1661097910, 1661097910),
('/trainer/index', 2, NULL, NULL, NULL, 1661097910, 1661097910),
('/trainer/update', 2, NULL, NULL, NULL, 1661097910, 1661097910),
('/trainer/view', 2, NULL, NULL, NULL, 1661097910, 1661097910),
('/training/*', 2, NULL, NULL, NULL, 1661097911, 1661097911),
('/training/create', 2, NULL, NULL, NULL, 1661097911, 1661097911),
('/training/delete', 2, NULL, NULL, NULL, 1661097911, 1661097911),
('/training/index', 2, NULL, NULL, NULL, 1661097910, 1661097910),
('/training/update', 2, NULL, NULL, NULL, 1661097911, 1661097911),
('/training/view', 2, NULL, NULL, NULL, 1661097910, 1661097910),
('/user/*', 2, NULL, NULL, NULL, 1661097901, 1661097901),
('/user/admin/*', 2, NULL, NULL, NULL, 1661097899, 1661097899),
('/user/admin/assignments', 2, NULL, NULL, NULL, 1661097898, 1661097898),
('/user/admin/block', 2, NULL, NULL, NULL, 1661097898, 1661097898),
('/user/admin/confirm', 2, NULL, NULL, NULL, 1661097898, 1661097898),
('/user/admin/create', 2, NULL, NULL, NULL, 1661097897, 1661097897),
('/user/admin/delete', 2, NULL, NULL, NULL, 1661097898, 1661097898),
('/user/admin/index', 2, NULL, NULL, NULL, 1661097897, 1661097897),
('/user/admin/info', 2, NULL, NULL, NULL, 1661097898, 1661097898),
('/user/admin/resend-password', 2, NULL, NULL, NULL, 1661097899, 1661097899),
('/user/admin/switch', 2, NULL, NULL, NULL, 1661097898, 1661097898),
('/user/admin/update', 2, NULL, NULL, NULL, 1661097898, 1661097898),
('/user/admin/update-profile', 2, NULL, NULL, NULL, 1661097898, 1661097898),
('/user/login/*', 2, NULL, NULL, NULL, 1662516331, 1662516331),
('/user/login/auth', 2, NULL, NULL, NULL, 1662516331, 1662516331),
('/user/login/login', 2, NULL, NULL, NULL, 1662516331, 1662516331),
('/user/login/logout', 2, NULL, NULL, NULL, 1662516331, 1662516331),
('/user/profile/*', 2, NULL, NULL, NULL, 1661097899, 1661097899),
('/user/profile/index', 2, NULL, NULL, NULL, 1661097899, 1661097899),
('/user/profile/show', 2, NULL, NULL, NULL, 1661097899, 1661097899),
('/user/recovery/*', 2, NULL, NULL, NULL, 1661097899, 1661097899),
('/user/recovery/request', 2, NULL, NULL, NULL, 1661097899, 1661097899),
('/user/recovery/reset', 2, NULL, NULL, NULL, 1661097899, 1661097899),
('/user/registration/*', 2, NULL, NULL, NULL, 1661097900, 1661097900),
('/user/registration/confirm', 2, NULL, NULL, NULL, 1661097899, 1661097899),
('/user/registration/connect', 2, NULL, NULL, NULL, 1661097899, 1661097899),
('/user/registration/register', 2, NULL, NULL, NULL, 1661097899, 1661097899),
('/user/registration/resend', 2, NULL, NULL, NULL, 1661097899, 1661097899),
('/user/security/*', 2, NULL, NULL, NULL, 1661097900, 1661097900),
('/user/security/auth', 2, NULL, NULL, NULL, 1661097900, 1661097900),
('/user/security/login', 2, NULL, NULL, NULL, 1661097900, 1661097900),
('/user/security/logout', 2, NULL, NULL, NULL, 1661097900, 1661097900),
('/user/settings/*', 2, NULL, NULL, NULL, 1661097901, 1661097901),
('/user/settings/account', 2, NULL, NULL, NULL, 1661097900, 1661097900),
('/user/settings/confirm', 2, NULL, NULL, NULL, 1661097900, 1661097900),
('/user/settings/delete', 2, NULL, NULL, NULL, 1661097901, 1661097901),
('/user/settings/disconnect', 2, NULL, NULL, NULL, 1661097901, 1661097901),
('/user/settings/networks', 2, NULL, NULL, NULL, 1661097900, 1661097900),
('/user/settings/profile', 2, NULL, NULL, NULL, 1661097900, 1661097900),
('admin', 1, NULL, NULL, NULL, 1661097949, 1661097949),
('guest', 1, NULL, NULL, NULL, 1663602370, 1663602370),
('User', 1, NULL, NULL, NULL, 1661183073, 1661183073);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('admin', '/admin/*'),
('admin', '/admin/assignment/*'),
('admin', '/admin/assignment/assign'),
('admin', '/admin/assignment/index'),
('admin', '/admin/assignment/revoke'),
('admin', '/admin/assignment/view'),
('admin', '/admin/default/*'),
('admin', '/admin/default/index'),
('admin', '/admin/menu/*'),
('admin', '/admin/menu/create'),
('admin', '/admin/menu/delete'),
('admin', '/admin/menu/index'),
('admin', '/admin/menu/update'),
('admin', '/admin/menu/view'),
('admin', '/admin/permission/*'),
('admin', '/admin/permission/assign'),
('admin', '/admin/permission/create'),
('admin', '/admin/permission/delete'),
('admin', '/admin/permission/get-users'),
('admin', '/admin/permission/index'),
('admin', '/admin/permission/remove'),
('admin', '/admin/permission/update'),
('admin', '/admin/permission/view'),
('admin', '/admin/role/*'),
('admin', '/admin/role/assign'),
('admin', '/admin/role/create'),
('admin', '/admin/role/delete'),
('admin', '/admin/role/get-users'),
('admin', '/admin/role/index'),
('admin', '/admin/role/remove'),
('admin', '/admin/role/update'),
('admin', '/admin/role/view'),
('admin', '/admin/route/*'),
('admin', '/admin/route/assign'),
('admin', '/admin/route/create'),
('admin', '/admin/route/index'),
('admin', '/admin/route/refresh'),
('admin', '/admin/route/remove'),
('admin', '/admin/rule/*'),
('admin', '/admin/rule/create'),
('admin', '/admin/rule/delete'),
('admin', '/admin/rule/index'),
('admin', '/admin/rule/update'),
('admin', '/admin/rule/view'),
('admin', '/admin/user/*'),
('admin', '/admin/user/activate'),
('admin', '/admin/user/change-password'),
('admin', '/admin/user/delete'),
('admin', '/admin/user/index'),
('admin', '/admin/user/login'),
('admin', '/admin/user/logout'),
('admin', '/admin/user/request-password-reset'),
('admin', '/admin/user/reset-password'),
('admin', '/admin/user/signup'),
('admin', '/admin/user/view'),
('admin', '/administrator/*'),
('admin', '/administrator/ajax/*'),
('admin', '/administrator/ajax/upload-tinymce'),
('admin', '/administrator/default/*'),
('admin', '/administrator/default/index'),
('admin', '/administrator/post/*'),
('admin', '/administrator/post/create'),
('admin', '/administrator/post/delete'),
('admin', '/administrator/post/index'),
('admin', '/administrator/post/update'),
('admin', '/administrator/post/view'),
('admin', '/classroom/*'),
('admin', '/classroom/create'),
('admin', '/classroom/delete'),
('admin', '/classroom/index'),
('admin', '/classroom/update'),
('admin', '/classroom/view'),
('admin', '/debug/*'),
('admin', '/debug/default/*'),
('admin', '/debug/default/db-explain'),
('admin', '/debug/default/download-mail'),
('admin', '/debug/default/index'),
('admin', '/debug/default/toolbar'),
('admin', '/debug/default/view'),
('admin', '/debug/user/*'),
('admin', '/debug/user/reset-identity'),
('admin', '/debug/user/set-identity'),
('admin', '/gii/*'),
('admin', '/gii/default/*'),
('admin', '/gii/default/action'),
('admin', '/gii/default/diff'),
('admin', '/gii/default/index'),
('admin', '/gii/default/preview'),
('admin', '/gii/default/view'),
('admin', '/gridview/*'),
('admin', '/gridview/export/*'),
('admin', '/gridview/export/download'),
('admin', '/gridview/grid-edited-row/*'),
('admin', '/gridview/grid-edited-row/back'),
('admin', '/page/*'),
('admin', '/page/view'),
('admin', '/post/*'),
('admin', '/post/view'),
('admin', '/question-template/*'),
('admin', '/question-template/create'),
('admin', '/question-template/delete'),
('admin', '/question-template/index'),
('admin', '/question-template/update'),
('admin', '/question-template/view'),
('admin', '/report/*'),
('admin', '/report/detail'),
('admin', '/report/export-detail'),
('admin', '/report/export-training'),
('admin', '/report/training'),
('admin', '/site/*'),
('admin', '/site/about'),
('admin', '/site/captcha'),
('admin', '/site/contact'),
('admin', '/site/error'),
('admin', '/site/index'),
('admin', '/site/login'),
('admin', '/site/logout'),
('admin', '/submission/*'),
('admin', '/submission/create'),
('admin', '/submission/delete'),
('admin', '/submission/index'),
('admin', '/submission/update'),
('admin', '/submission/view'),
('admin', '/trainer/*'),
('admin', '/trainer/create'),
('admin', '/trainer/delete'),
('admin', '/trainer/index'),
('admin', '/trainer/update'),
('admin', '/trainer/view'),
('admin', '/training/*'),
('admin', '/training/create'),
('admin', '/training/delete'),
('admin', '/training/index'),
('admin', '/training/update'),
('admin', '/training/view'),
('admin', '/user/*'),
('admin', '/user/admin/*'),
('admin', '/user/admin/assignments'),
('admin', '/user/admin/block'),
('admin', '/user/admin/confirm'),
('admin', '/user/admin/create'),
('admin', '/user/admin/delete'),
('admin', '/user/admin/index'),
('admin', '/user/admin/info'),
('admin', '/user/admin/resend-password'),
('admin', '/user/admin/switch'),
('admin', '/user/admin/update'),
('admin', '/user/admin/update-profile'),
('admin', '/user/login/*'),
('admin', '/user/login/auth'),
('admin', '/user/login/login'),
('admin', '/user/login/logout'),
('admin', '/user/profile/*'),
('admin', '/user/profile/index'),
('admin', '/user/profile/show'),
('admin', '/user/recovery/*'),
('admin', '/user/recovery/request'),
('admin', '/user/recovery/reset'),
('admin', '/user/registration/*'),
('admin', '/user/registration/confirm'),
('admin', '/user/registration/connect'),
('admin', '/user/registration/register'),
('admin', '/user/registration/resend'),
('admin', '/user/security/*'),
('admin', '/user/security/auth'),
('admin', '/user/security/login'),
('admin', '/user/security/logout'),
('admin', '/user/settings/*'),
('admin', '/user/settings/account'),
('admin', '/user/settings/confirm'),
('admin', '/user/settings/delete'),
('admin', '/user/settings/disconnect'),
('admin', '/user/settings/networks'),
('admin', '/user/settings/profile'),
('guest', '/page/*'),
('guest', '/page/view'),
('guest', '/post/*'),
('guest', '/post/view'),
('guest', '/site/index'),
('guest', '/user/login/login'),
('guest', '/user/security/login'),
('User', '/admin/user/login'),
('User', '/admin/user/logout'),
('User', '/site/index'),
('User', '/site/login'),
('User', '/site/logout'),
('User', '/submission/*'),
('User', '/submission/create'),
('User', '/submission/delete'),
('User', '/submission/index'),
('User', '/submission/update'),
('User', '/submission/view'),
('User', '/user/security/login'),
('User', '/user/security/logout'),
('User', '/user/settings/*'),
('User', '/user/settings/account'),
('User', '/user/settings/confirm'),
('User', '/user/settings/disconnect'),
('User', '/user/settings/networks'),
('User', '/user/settings/profile');

-- --------------------------------------------------------

--
-- Table structure for table `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `parent`, `route`, `order`, `data`) VALUES
(1, 'Artikel', NULL, '/administrator/post/index', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1575530673),
('m140209_132017_init', 1575530677),
('m140403_174025_create_account_table', 1575530679),
('m140504_113157_update_tables', 1575530683),
('m140504_130429_create_token_table', 1575530684),
('m140506_102106_rbac_init', 1575530932),
('m140602_111327_create_menu_table', 1575530975),
('m140830_171933_fix_ip_field', 1575530685),
('m140830_172703_change_account_table_name', 1575530685),
('m141222_110026_update_ip_field', 1575530685),
('m141222_135246_alter_username_length', 1575530686),
('m150614_103145_update_social_account_table', 1575530691),
('m150623_212711_fix_username_notnull', 1575530691),
('m151218_234654_add_timezone_to_profile', 1575530692),
('m160312_050000_create_user', 1575530975),
('m160929_103127_add_last_login_at_to_user_table', 1575530692),
('m170907_052038_rbac_add_index_on_auth_assignment_user_id', 1575530933),
('m180523_151638_rbac_updates_indexes_without_prefix', 1575530934);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `public_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gravatar_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gravatar_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8_unicode_ci,
  `timezone` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`user_id`, `name`, `photo`, `public_email`, `gravatar_email`, `gravatar_id`, `location`, `website`, `bio`, `timezone`) VALUES
(1, 'Administrators', '4983bd8cd9be192b4e26419602aa16f9_1667147214.png', NULL, NULL, NULL, NULL, NULL, '', NULL),
(2, 'Arief Siswanto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Arief Siswanto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Rio Ganteng', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Rio Ganteng Sekaleh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Rio Ganteng Sekaleh haha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Joko Aja', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_account`
--

CREATE TABLE `social_account` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

CREATE TABLE `token` (
  `user_id` int(11) NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `type` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `token`
--

INSERT INTO `token` (`user_id`, `code`, `created_at`, `type`) VALUES
(1, 'C5PQ3LdKfVJ4eZJj4NJKlGKnKsOYXr0h', 1575532706, 0),
(1, 'F2Gk-yvk6AMFG-UWN1EzKABP-fZ0fYPb', 1661181974, 1),
(2, 'FQJ2FRtgkfnZXboQ0MMl3IDbKR1ylpYk', 1661182889, 0),
(4, 'pRCv_LYX7MXGWfgY8xMXxeVXv9kbKbUm', 1663602678, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `classroom_id` int(11) NOT NULL,
  `name` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `access_token` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `confirmed_at` int(11) DEFAULT NULL,
  `unconfirmed_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blocked_at` int(11) DEFAULT NULL,
  `registration_ip` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL,
  `last_login_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `classroom_id`, `name`, `username`, `email`, `password_hash`, `auth_key`, `access_token`, `confirmed_at`, `unconfirmed_email`, `blocked_at`, `registration_ip`, `created_at`, `updated_at`, `flags`, `status`, `last_login_at`) VALUES
(1, 0, '', 'admin', 'arief7385@yahoo.com', '$2y$10$pb9IG5/DJpvdgszqDxcnguwvWnnDqrzsxUSRNza71hjLiweW.jodi', 'jJDfbICBB0E-g_bO2BUUR6p2u_Sj9SCC', '6282dfe026e7e6c552d0b65ee42dec3e0faa11bd', 2019, NULL, NULL, '::1', 1575532706, 1575605017, 0, 0, 1692107671),
(2, 0, '', 'arief.siswanto', 'arief.siswanto@computesta.com', '$2y$10$4RbgUj.lAFPD.mDtx9EoW.oYasOV9xxDFpExn2eTtumte/ev.sjx.', 'BDR4DadPBHa5qPtZaho3SqGagbgLWzh6', NULL, 1663519651, NULL, NULL, '::1', 1661182889, 1661182889, 0, 0, 1663605396),
(3, 0, '', 'arief.applicanity', 'arief.siswanto@applicanity.com', '$2y$10$DTVc1jYewx3SMYY/2Uz7c.dJIYlTqj.1TSqQBsxO9RjPMBD7Clu3W', 'xFhJhLrkppMK-N0iazoNF1eckkQQW5GY', NULL, 1661183082, NULL, NULL, '::1', 1661182986, 1661182986, 0, 0, 1664156320),
(4, 0, '', 'ridyko_', 'riowidyatmoko@gmail.com', '$2y$10$OxhsPCrIv/qhQBFgEjag4eRn179k8bdbEhLCmYYRDhc.X0NyrvhKK', '7ZAD9v2uDJ0K4J0IVgNejdA86NOScdGK', NULL, 1663602722, NULL, NULL, '180.243.10.3', 1663602678, 1663602678, 0, 0, 1664242339),
(5, 0, '', '_Wakwaw_', 'riowidyatmoko1992@gmail.com', '$2y$10$bwOmknPNXIEWFlg/tyDTU.ons35yjPR.Ids4zpwpYJ7zJhDe0L5hy', 'b4jeGqSWHijZYbRQsAKA5onz71PP47jx', NULL, 1663605774, NULL, NULL, '180.243.10.3', 1663605746, 1663605746, 0, 0, NULL),
(6, 0, '', '_Anon', 'riowidyatmoko69@gmail.com', '$2y$10$m1NZw7aLwosa8M/WMBd5yeVoLHSdOmUO/qEcKzRiheXwP3/VE.hka', '-3Nbb575mQheBxd_MvDzW_cDwLt9a_PY', NULL, 1663645253, NULL, NULL, '180.252.115.125', 1663645188, 1663645188, 0, 0, NULL),
(7, 0, '', 'Joko_', 'questkomputer@gmail.com', '$2y$10$agNBSRK2ZRbWtu/fsLXbZOmYK3tRmELTXBjXfCHfQ7ClIgjvT4zlu', 'gx0zk3dIgnmfwbvXeVZXgohctpATGlLJ', NULL, 1664249477, NULL, NULL, '120.188.67.225', 1664249337, 1664249337, 0, 0, 1664249509);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`),
  ADD KEY `idx-auth_assignment-user_id` (`user_id`);

--
-- Indexes for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `idx-auth_item-type` (`type`);

--
-- Indexes for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Indexes for table `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent` (`parent`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `social_account`
--
ALTER TABLE `social_account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_unique` (`provider`,`client_id`),
  ADD UNIQUE KEY `account_unique_code` (`code`),
  ADD KEY `fk_user_account` (`user_id`);

--
-- Indexes for table `token`
--
ALTER TABLE `token`
  ADD UNIQUE KEY `token_unique` (`user_id`,`code`,`type`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_unique_username` (`username`),
  ADD UNIQUE KEY `user_unique_email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_account`
--
ALTER TABLE `social_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
