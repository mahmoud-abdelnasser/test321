-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2016 at 05:16 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social_insight2`
--

-- --------------------------------------------------------

--
-- Table structure for table `authclient`
--

CREATE TABLE `authclient` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `source_id` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `authclient`
--

INSERT INTO `authclient` (`id`, `user_id`, `source`, `source_id`, `created`, `updated`) VALUES
(15, 75, 'facebook', '1511713099130026', '2016-02-14 12:11:48', '2016-02-14 12:11:48'),
(16, 75, 'twitter', '2949392938', '2016-02-14 12:15:01', '2016-02-14 12:15:01'),
(17, 75, 'instagram', '1527813113', '2016-02-14 12:15:28', '2016-02-14 12:15:28'),
(18, 75, 'google_plus', '100080852241585525910', '2016-02-28 16:56:14', '2016-02-28 16:56:14'),
(20, 76, 'twitter', '65609932', '2016-03-22 10:04:35', '2016-03-22 10:04:35');

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
('Asterisk', '1', 1424278268);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('/*', 2, NULL, NULL, NULL, 1424278227, 1424278227),
('Asterisk', 1, 'Full Access', NULL, NULL, 1424278062, 1424279109);

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
('Asterisk', '/*');

-- --------------------------------------------------------

--
-- Table structure for table `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `base_content`
--

CREATE TABLE `base_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` tinyint(3) UNSIGNED DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `brief` tinytext NOT NULL,
  `description` text NOT NULL,
  `body` text NOT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `sort` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(3) DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `base_content`
--

INSERT INTO `base_content` (`id`, `type`, `title`, `slug`, `brief`, `description`, `body`, `date`, `end_date`, `sort`, `hits`, `status`, `created`, `updated`) VALUES
(1, 1, 'Home Slider', 'home-slider', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus voluptates sint maiores a doloribus debitis, error repudiandae molestiae eligendi dignissimos id explicabo quo, eveniet accusamus autem commodi iusto voluptatum similique.</p>\r\n			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus voluptates sint maiores a doloribus debitis, error repudiandae molestiae eligendi dignissimos id explicabo quo, eveniet accusamus autem commodi iusto voluptatum similique.</p>\r\n			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus voluptates sint maiores a doloribus debitis, error repudiandae molestiae eligendi dignissimos id explicabo quo, eveniet accusamus autem commodi iusto voluptatum similique.</p>\r\n			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus voluptates sint maiores a doloribus debitis, error repudiandae molestiae eligendi dignissimos id explicabo quo, eveniet accusamus autem commodi iusto voluptatum similique.</p>\r\n			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus voluptates sint maiores a doloribus debitis, error repudiandae molestiae eligendi dignissimos id explicabo quo, eveniet accusamus autem commodi iusto voluptatum similique.</p>\r\n			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus voluptates sint maiores a doloribus debitis, error repudiandae molestiae eligendi dignissimos id explicabo quo, eveniet accusamus autem commodi iusto voluptatum similique.</p>\r\n			\r\n			<video src="/shared/themes/frontend/images/src/chrome.mp4" controls></video>\r\n			\r\n			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus voluptates sint maiores a doloribus debitis, error repudiandae molestiae eligendi dignissimos id explicabo quo, eveniet accusamus autem commodi iusto voluptatum similique.</p>\r\n			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus voluptates sint maiores a doloribus debitis, error repudiandae molestiae eligendi dignissimos id explicabo quo, eveniet accusamus autem commodi iusto voluptatum similique.</p>', NULL, NULL, 1, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 2, 'Arm workout lessons', 'arm-workout-lessons', 'The majority of people i see on here and at my gym i train people, have trouble gaining size and shape to their calves than simply training the gastrocnemius and soleus muscle.', 'The majority of people i see on here and at my gym i train people, have trouble gaining size and shape to their calves than simply training the gastrocnemius and soleus muscle.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus voluptates sint maiores a doloribus debitis, error repudiandae molestiae eligendi dignissimos id explicabo quo, eveniet accusamus autem commodi iusto voluptatum similique.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus voluptates sint maiores a doloribus debitis, error repudiandae molestiae eligendi dignissimos id explicabo quo, eveniet accusamus autem commodi iusto voluptatum similique.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus voluptates sint maiores a doloribus debitis, error repudiandae molestiae eligendi dignissimos id explicabo quo, eveniet accusamus autem commodi iusto voluptatum similique.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus voluptates sint maiores a doloribus debitis, error repudiandae molestiae eligendi dignissimos id explicabo quo, eveniet accusamus autem commodi iusto voluptatum similique.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus voluptates sint maiores a doloribus debitis, error repudiandae molestiae eligendi dignissimos id explicabo quo, eveniet accusamus autem commodi iusto voluptatum similique.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus voluptates sint maiores a doloribus debitis, error repudiandae molestiae eligendi dignissimos id explicabo quo, eveniet accusamus autem commodi iusto voluptatum similique.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus voluptates sint maiores a doloribus debitis, error repudiandae molestiae eligendi dignissimos id explicabo quo, eveniet accusamus autem commodi iusto voluptatum similique.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus voluptates sint maiores a doloribus debitis, error repudiandae molestiae eligendi dignissimos id explicabo quo, eveniet accusamus autem commodi iusto voluptatum similique.</p>\r\n', NULL, NULL, 1, 3, NULL, '0000-00-00 00:00:00', '2015-08-18 09:23:55'),
(3, 2, 'Arm workout lessons', 'arm-workout-lessons-2', 'The majority of people i see on here and at my gym i train people, have trouble gaining size and shape to their calves than simply training the gastrocnemius and soleus muscle.', 'The majority of people i see on here and at my gym i train people, have trouble gaining size and shape to their calves than simply training the gastrocnemius and soleus muscle.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus voluptates sint maiores a doloribus debitis, error repudiandae molestiae eligendi dignissimos id explicabo quo, eveniet accusamus autem commodi iusto voluptatum similique.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus voluptates sint maiores a doloribus debitis, error repudiandae molestiae eligendi dignissimos id explicabo quo, eveniet accusamus autem commodi iusto voluptatum similique.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus voluptates sint maiores a doloribus debitis, error repudiandae molestiae eligendi dignissimos id explicabo quo, eveniet accusamus autem commodi iusto voluptatum similique.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus voluptates sint maiores a doloribus debitis, error repudiandae molestiae eligendi dignissimos id explicabo quo, eveniet accusamus autem commodi iusto voluptatum similique.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus voluptates sint maiores a doloribus debitis, error repudiandae molestiae eligendi dignissimos id explicabo quo, eveniet accusamus autem commodi iusto voluptatum similique.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus voluptates sint maiores a doloribus debitis, error repudiandae molestiae eligendi dignissimos id explicabo quo, eveniet accusamus autem commodi iusto voluptatum similique.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus voluptates sint maiores a doloribus debitis, error repudiandae molestiae eligendi dignissimos id explicabo quo, eveniet accusamus autem commodi iusto voluptatum similique.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus voluptates sint maiores a doloribus debitis, error repudiandae molestiae eligendi dignissimos id explicabo quo, eveniet accusamus autem commodi iusto voluptatum similique.</p>\r\n', '2015-06-02 22:00:00', NULL, 2, 4, NULL, '0000-00-00 00:00:00', '2015-08-18 09:24:16'),
(4, 2, 'Arm workout lessons', 'arm-workout-lessons-3', 'The majority of people i see on here and at my gym i train people, have trouble gaining size and shape to their calves than simply training the gastrocnemius and soleus muscle.', 'The majority of people i see on here and at my gym i train people, have trouble gaining size and shape to their calves than simply training the gastrocnemius and soleus muscle.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus voluptates sint maiores a doloribus debitis, error repudiandae molestiae eligendi dignissimos id explicabo quo, eveniet accusamus autem commodi iusto voluptatum similique.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus voluptates sint maiores a doloribus debitis, error repudiandae molestiae eligendi dignissimos id explicabo quo, eveniet accusamus autem commodi iusto voluptatum similique.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus voluptates sint maiores a doloribus debitis, error repudiandae molestiae eligendi dignissimos id explicabo quo, eveniet accusamus autem commodi iusto voluptatum similique.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus voluptates sint maiores a doloribus debitis, error repudiandae molestiae eligendi dignissimos id explicabo quo, eveniet accusamus autem commodi iusto voluptatum similique.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus voluptates sint maiores a doloribus debitis, error repudiandae molestiae eligendi dignissimos id explicabo quo, eveniet accusamus autem commodi iusto voluptatum similique.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus voluptates sint maiores a doloribus debitis, error repudiandae molestiae eligendi dignissimos id explicabo quo, eveniet accusamus autem commodi iusto voluptatum similique.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus voluptates sint maiores a doloribus debitis, error repudiandae molestiae eligendi dignissimos id explicabo quo, eveniet accusamus autem commodi iusto voluptatum similique.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus voluptates sint maiores a doloribus debitis, error repudiandae molestiae eligendi dignissimos id explicabo quo, eveniet accusamus autem commodi iusto voluptatum similique.</p>\r\n', '2015-06-01 22:00:00', NULL, 3, 1, NULL, '0000-00-00 00:00:00', '2015-08-18 09:24:34'),
(5, 2, 'Arm workout lessons', 'arm-workout-lessons-4', 'The majority of people i see on here and at my gym i train people, have trouble gaining size and shape to their calves than simply training the gastrocnemius and soleus muscle.', 'The majority of people i see on here and at my gym i train people, have trouble gaining size and shape to their calves than simply training the gastrocnemius and soleus muscle.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus voluptates sint maiores a doloribus debitis, error repudiandae molestiae eligendi dignissimos id explicabo quo, eveniet accusamus autem commodi iusto voluptatum similique.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus voluptates sint maiores a doloribus debitis, error repudiandae molestiae eligendi dignissimos id explicabo quo, eveniet accusamus autem commodi iusto voluptatum similique.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus voluptates sint maiores a doloribus debitis, error repudiandae molestiae eligendi dignissimos id explicabo quo, eveniet accusamus autem commodi iusto voluptatum similique.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus voluptates sint maiores a doloribus debitis, error repudiandae molestiae eligendi dignissimos id explicabo quo, eveniet accusamus autem commodi iusto voluptatum similique.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus voluptates sint maiores a doloribus debitis, error repudiandae molestiae eligendi dignissimos id explicabo quo, eveniet accusamus autem commodi iusto voluptatum similique.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus voluptates sint maiores a doloribus debitis, error repudiandae molestiae eligendi dignissimos id explicabo quo, eveniet accusamus autem commodi iusto voluptatum similique.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus voluptates sint maiores a doloribus debitis, error repudiandae molestiae eligendi dignissimos id explicabo quo, eveniet accusamus autem commodi iusto voluptatum similique.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus voluptates sint maiores a doloribus debitis, error repudiandae molestiae eligendi dignissimos id explicabo quo, eveniet accusamus autem commodi iusto voluptatum similique.</p>\r\n', '2015-05-31 22:00:00', NULL, 4, 1, NULL, '0000-00-00 00:00:00', '2015-08-18 09:24:50'),
(6, 1, 'Home Banner', 'home-banner', '', '', '', NULL, NULL, 2, 0, NULL, '2015-07-30 12:48:31', '2015-07-30 12:48:31'),
(7, 1, 'About Us', 'about-us', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus voluptates sint maiores a doloribus debitis, error repudiandae molestiae eligendi dignissimos id explicabo quo, eveniet accusamus autem commodi iusto voluptatum similique.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus voluptates sint maiores a doloribus debitis, error repudiandae molestiae eligendi dignissimos id explicabo quo, eveniet accusamus autem commodi iusto voluptatum similique.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus voluptates sint maiores a doloribus debitis, error repudiandae molestiae eligendi dignissimos id explicabo quo, eveniet accusamus autem commodi iusto voluptatum similique.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus voluptates sint maiores a doloribus debitis, error repudiandae molestiae eligendi dignissimos id explicabo quo, eveniet accusamus autem commodi iusto voluptatum similique.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus voluptates sint maiores a doloribus debitis, error repudiandae molestiae eligendi dignissimos id explicabo quo, eveniet accusamus autem commodi iusto voluptatum similique.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus voluptates sint maiores a doloribus debitis, error repudiandae molestiae eligendi dignissimos id explicabo quo, eveniet accusamus autem commodi iusto voluptatum similique.</p>\r\n', NULL, NULL, 3, 0, NULL, '2015-08-11 11:10:14', '2015-08-18 12:04:15'),
(8, 1, 'Contact Us', 'contact-us', '', '', '<p><strong>Address:</strong> 15 AlFustat Street, 2nd Settelment, Fustat City, Masr Al Qadeema, Cairo, Egypt.</p>\r\n\r\n<p><strong>Telephone:</strong> 02-27429783 - 02-27429783, 19402</p>\r\n\r\n<p><strong>Fax:</strong> 02-27424323</p>\r\n', NULL, NULL, 4, 0, NULL, '2015-08-11 11:20:33', '2015-08-11 13:08:14'),
(9, 1, 'Terms Of Service', 'terms-of-service', '', '', '<p>Terms Of Service</p>\r\n', NULL, NULL, 5, 0, NULL, '2015-08-11 11:21:03', '2015-08-11 11:21:03'),
(10, 1, 'Privacy Policy', 'privacy-policy', '', '', '<p>Privacy Policy</p>\r\n', NULL, NULL, 6, 0, NULL, '2015-08-11 11:21:26', '2015-08-11 11:21:26');

-- --------------------------------------------------------

--
-- Table structure for table `base_media`
--

CREATE TABLE `base_media` (
  `id` int(10) UNSIGNED NOT NULL,
  `model_id` int(10) UNSIGNED DEFAULT NULL,
  `model` varchar(64) NOT NULL,
  `path` varchar(255) NOT NULL,
  `filename` varchar(128) NOT NULL,
  `mime` varchar(128) NOT NULL,
  `size` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `link` varchar(255) NOT NULL,
  `embed` text NOT NULL,
  `status` tinyint(3) UNSIGNED DEFAULT NULL,
  `type` tinyint(3) UNSIGNED DEFAULT NULL,
  `sort` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created` timestamp NULL DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `base_media`
--

INSERT INTO `base_media` (`id`, `model_id`, `model`, `path`, `filename`, `mime`, `size`, `title`, `description`, `link`, `embed`, `status`, `type`, `sort`, `created`, `updated`) VALUES
(1, 1, 'Page', '/shared/uploads/2015/06/01/', 'jjSb34LvXHteIRMd.png', 'image/png', 1439500, 'The BSN Push Training Guide', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Non quod numquam sit magni expedita.', 'http://google.com', '', NULL, NULL, 1, '0000-00-00 00:00:00', '2015-06-02 16:29:32'),
(2, 1, 'Page', '/shared/uploads/2015/06/01/', 'cgRxUPubFyTHodTd.png', 'image/png', 1498917, 'The BSN Push Training Guide', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Non quod numquam sit magni expedita.', 'http://google.com', '', NULL, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 1, 'Page', '/shared/uploads/2015/06/01/', 'rjSi8k3H2Z-Ymtkr.png', 'image/png', 1497535, 'The BSN Push Training Guide', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Non quod numquam sit magni expedita.', 'http://google.com', '', NULL, NULL, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 3, 'Article', '/shared/uploads/2015/06/03/', 'Tk_yI_mEiTCkWq-q.png', 'image/png', 269755, '', '', '', '', NULL, NULL, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 4, 'Article', '/shared/uploads/2015/06/03/', '_ktL48K8fTehO5yP.png', 'image/png', 269755, '', '', '', '', NULL, NULL, 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 3, 'Article', '/shared/uploads/2015/06/03/', 'sB8O3ktmcHLN84Px.png', 'image/png', 420318, '', '', '', '', NULL, NULL, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 5, 'Article', '/shared/uploads/2015/06/03/', '28oP_2QkDz3XY18X.png', 'image/png', 269755, '', '', '', '', NULL, NULL, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 11, 'Brand', '/shared/uploads/2015/06/03/', 'Q5tWNI8i8MSGHWyH.png', 'image/png', 7446, '', '', '', '', NULL, NULL, 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 12, 'Brand', '/shared/uploads/2015/06/03/', 'o4dyfZVg57rZtLZs.png', 'image/png', 15010, '', '', '', '', NULL, NULL, 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 13, 'Brand', '/shared/uploads/2015/06/03/', 'Cd3ICh53TdkhUdfg.png', 'image/png', 9697, '', '', '', '', NULL, NULL, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 14, 'Brand', '/shared/uploads/2015/06/03/', 'RVuSSsOpQqhaMNrP.png', 'image/png', 20098, '', '', '', '', NULL, NULL, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 15, 'Brand', '/shared/uploads/2015/06/03/', '2lzDIatGmUq35V7L.png', 'image/png', 11778, '', '', '', '', NULL, NULL, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 16, 'Brand', '/shared/uploads/2015/06/03/', 'pVs0hitQeiaZs2zP.png', 'image/png', 7642, '', '', '', '', NULL, NULL, 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 19, 'Brand', '/shared/uploads/2015/06/03/', 'nP92NzqqJ9CFvUh4.png', 'image/png', 13410, '', '', '', '', NULL, NULL, 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 17, 'Brand', '/shared/uploads/2015/06/03/', 'oTpNhr6P5OnPDXzI.png', 'image/png', 15322, '', '', '', '', NULL, NULL, 16, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 3, 'Product', '/shared/uploads/2015/06/03/', 'MAZBlgVOc_GGaegZ.png', 'image/png', 527519, '', '', '', '', NULL, NULL, 17, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 4, 'Product', '/shared/uploads/2015/06/03/', 'N3KgK0ZdPNzapdSb.png', 'image/png', 405279, '', '', '', '', NULL, NULL, 19, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 5, 'Product', '/shared/uploads/2015/06/03/', 'QYarRz7hjpxWwQiZ.png', 'image/png', 500922, '', '', '', '', NULL, NULL, 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 4, 'Product', '/shared/uploads/2015/06/03/', '2bwe_y81HPys3H0N.png', 'image/png', 500922, '', '', '', '', NULL, NULL, 18, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 8, 'Product', '/shared/uploads/2015/07/26/', 'Vb1kvYNlfBmSgeHc.png', 'image/png', 527519, '', '', '', '', NULL, NULL, 21, '2015-07-26 17:42:34', '2015-07-26 17:42:34'),
(24, 9, 'Product', '/shared/uploads/2015/07/26/', 'YhdsCjVhHvehBM-E.png', 'image/png', 500922, '', '', '', '', NULL, NULL, 22, '2015-07-26 17:42:49', '2015-07-26 17:42:49'),
(25, 10, 'Product', '/shared/uploads/2015/07/26/', 'EaFPaKo-2zXO5UKK.png', 'image/png', 527519, '', '', '', '', NULL, NULL, 23, '2015-07-26 17:43:10', '2015-07-26 17:43:10'),
(26, 11, 'Product', '/shared/uploads/2015/07/26/', '8FhNHGilZQ6oAWGb.png', 'image/png', 262299, '', '', '', '', NULL, NULL, 24, '2015-07-26 17:43:28', '2015-07-26 17:43:28'),
(27, 13, 'Product', '/shared/uploads/2015/07/26/', 'Yo7vLbeGP2WkUELp.png', 'image/png', 405279, '', '', '', '', NULL, NULL, 25, '2015-07-26 18:16:33', '2015-07-26 18:16:33'),
(29, 14, 'Product', '/shared/uploads/2015/07/26/', 'pN2OPcwI-0uIjI1E.png', 'image/png', 405279, '', '', '', '', NULL, NULL, 27, '2015-07-26 18:17:40', '2015-07-26 18:17:40'),
(32, 16, 'Product', '/shared/uploads/2015/07/26/', 'ltoo9HaTWrlK6qwV.png', 'image/png', 248780, '', '', '', '', NULL, NULL, 30, '2015-07-26 18:19:04', '2015-07-26 18:19:04'),
(33, 15, 'Product', '/shared/uploads/2015/07/26/', 'scVS8GYgBSSQoD2p.png', 'image/png', 158498, '', '', '', '', NULL, NULL, 31, '2015-07-26 18:20:11', '2015-07-26 18:20:11'),
(34, 13, 'Product', '/shared/uploads/2015/07/27/', '1r62u4CZB5gDTxWa.gif', 'image/gif', 117695, '', '', '', '', NULL, NULL, 32, '2015-07-27 13:37:37', '2015-07-27 13:37:37'),
(35, 14, 'Product', '/shared/uploads/2015/07/27/', '7RXLPTSSgGwUnxOK.gif', 'image/gif', 15868, '', '', '', '', NULL, NULL, 33, '2015-07-27 13:37:57', '2015-07-27 13:37:57'),
(36, 17, 'Product', '/shared/uploads/2015/07/27/', '-m0GYynG-MT0BKCL.png', 'image/png', 527519, '', '', '', '', NULL, NULL, 34, '2015-07-27 13:39:21', '2015-07-27 13:39:21'),
(37, 17, 'Product', '/shared/uploads/2015/07/27/', 'mapiLo3fb3YFL5TU.gif', 'image/gif', 15868, '', '', '', '', NULL, NULL, 35, '2015-07-27 13:39:31', '2015-07-27 13:39:31'),
(38, 6, 'Page', '/shared/uploads/2015/07/30/', 'ABo4lIwzH6DxhF9k.png', 'image/png', 247081, 'BLENDER BOTTLE', 'Daily Multivitamin for Overall Men''s Health malum soccer das lansey fall left', 'http://google.com', '', NULL, NULL, 36, '2015-07-30 12:52:26', '2015-07-30 12:58:14'),
(41, 1, 'User', '/shared/uploads/2015/08/18/', 'OQnHhYujtapl_l1n.png', 'image/png', 420318, '', '', '', '', NULL, NULL, 38, '2015-08-18 16:06:50', '2015-08-18 16:06:50'),
(42, 1, 'User', '/shared/uploads/2015/08/18/', 'cIprJwFsblhfv85-.png', 'image/png', 24141, '', '', '', '', NULL, NULL, 39, '2015-08-18 16:08:54', '2015-08-18 16:08:54'),
(43, 60, 'User', '/shared/uploads/2015/08/18/', 'UDIHV2kYTZTTUgfU..jpg', 'image/jpeg', 10984, '', '', '', '', NULL, NULL, 40, '2015-08-18 16:18:14', '2015-08-18 16:18:14'),
(44, 64, 'User', '/shared/uploads/2015/08/18/', 'sV4EMoUniuicFZdr.jpg', 'image/jpeg', 10984, '', '', '', '', NULL, NULL, 41, '2015-08-18 16:51:09', '2015-08-18 16:51:09'),
(45, 65, 'User', '/shared/uploads/2015/08/18/', 'L0CzbyH8adpvQYGr.jpg', 'image/jpeg', 10984, '', '', '', '', NULL, NULL, 42, '2015-08-18 17:38:28', '2015-08-18 17:38:28');

-- --------------------------------------------------------

--
-- Table structure for table `base_messages`
--

CREATE TABLE `base_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `sender_id` int(10) UNSIGNED DEFAULT NULL,
  `receiver_id` int(10) UNSIGNED DEFAULT NULL,
  `model_id` int(10) UNSIGNED DEFAULT NULL,
  `model` varchar(64) NOT NULL,
  `type` tinyint(3) UNSIGNED DEFAULT NULL,
  `subject` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `base_settings`
--

CREATE TABLE `base_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` varchar(500) NOT NULL,
  `description` varchar(500) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `base_settings`
--

INSERT INTO `base_settings` (`id`, `key`, `value`, `description`, `created`, `updated`) VALUES
(1, 'title', 'Digitree CMS', 'Application Url Title', '2015-05-19 15:23:26', '2015-05-19 16:17:17'),
(2, 'test', 'test', '', '0000-00-00 00:00:00', '2015-05-28 14:25:46'),
(3, 'test2', 'test2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `base_tree`
--

CREATE TABLE `base_tree` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Unique tree node identifier',
  `root` int(10) UNSIGNED DEFAULT NULL COMMENT 'Tree root identifier',
  `lft` int(11) NOT NULL COMMENT 'Nested set left property',
  `rgt` int(11) NOT NULL COMMENT 'Nested set right property',
  `lvl` smallint(6) NOT NULL COMMENT 'Nested set level / depth',
  `name` varchar(255) NOT NULL COMMENT 'The tree node name / label',
  `slug` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `icon` varchar(255) DEFAULT NULL COMMENT 'The icon to use for the node',
  `icon_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Icon Type: 1 = CSS Class, 2 = Raw Markup',
  `active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Whether the node is active (will be set to false on deletion)',
  `selected` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Whether the node is selected/checked by default',
  `disabled` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Whether the node is enabled',
  `readonly` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Whether the node is read only (unlike disabled - will allow toolbar actions)',
  `visible` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Whether the node is visible',
  `collapsed` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Whether the node is collapsed by default',
  `movable_u` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Whether the node is movable one position up',
  `movable_d` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Whether the node is movable one position down',
  `movable_l` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Whether the node is movable to the left (from sibling to parent)',
  `movable_r` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Whether the node is movable to the right (from sibling to child)',
  `removable` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Whether the node is removable (any children below will be moved as siblings before deletion)',
  `removable_all` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Whether the node is removable along with descendants',
  `created` timestamp NULL DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `base_tree`
--

INSERT INTO `base_tree` (`id`, `root`, `lft`, `rgt`, `lvl`, `name`, `slug`, `link`, `description`, `icon`, `icon_type`, `active`, `selected`, `disabled`, `readonly`, `visible`, `collapsed`, `movable_u`, `movable_d`, `movable_l`, `movable_r`, `removable`, `removable_all`, `created`, `updated`) VALUES
(1, 1, 1, 14, 0, 'Categories', 'category', '', 'Product Categories', '', 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, '0000-00-00 00:00:00', '2015-05-31 13:08:10'),
(2, 2, 1, 22, 0, 'Brands', 'brands', '', 'Product Brands', '', 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 3, 1, 14, 0, 'Sizes', 'sizes', '', 'Product Sizes', '', 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 4, 1, 6, 0, 'Flavors', 'flavors', '', 'Product Flavors', '', 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 1, 2, 3, 1, 'Muscle Building', 'muscle-building', '', '', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 1, 4, 5, 1, 'Weight Gaining', 'weight-gaining', '', '', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 1, 6, 7, 1, 'Pre-Workout', 'pre-workout', '', '', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 1, 8, 9, 1, 'Weight Loss', 'weight-loss', '', '', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 1, 10, 11, 1, 'Health & Wellness', 'health-wellness', '', '', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 1, 12, 13, 1, 'Accessories', 'accessories', '', '', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 2, 2, 3, 1, 'Universal', 'universal', '', '', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 2, 4, 5, 1, 'BPI', 'bpi', '', '', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 2, 6, 7, 1, 'Inner Armour', 'inner-armour', '', '', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 2, 8, 9, 1, 'Gorilla Wear', 'gorilla-wear', '', '', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 2, 10, 11, 1, 'Grenade', 'grenade', '', '', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 2, 12, 13, 1, 'Betancourt Nutrition', 'betancourt-nutrition', '', '', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, '0000-00-00 00:00:00', '2015-06-03 14:35:03'),
(17, 2, 14, 15, 1, 'BlenderBottle®', 'blenderbottle', '', '', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 2, 16, 17, 1, 'FA Nutrition', 'fa-nutrition', '', '', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 2, 18, 19, 1, 'Muscle Pharm', 'muscle-pharm', '', '', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 2, 20, 21, 1, 'BSN', 'bsn', '', '', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 4, 2, 3, 1, 'Chocolate', 'chocolate', '', '', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 4, 4, 5, 1, 'Vanilla', 'vanilla', '', '', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 3, 2, 3, 1, '1 KG', '1-kg', '', '', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, '0000-00-00 00:00:00', '2015-08-11 16:01:04'),
(24, 3, 4, 5, 1, '2 KG', '2-kg', '', '', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 3, 6, 7, 1, '3 KG', '3-kg', '', '', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 5, 1, 6, 0, 'Cities', 'cities', '', 'Cities', '', 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 5, 2, 3, 1, 'Cairo', 'cairo', '', '', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 5, 4, 5, 1, 'Alex', 'alex', '', '', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 3, 8, 9, 1, 'Large', '4-kg', '', '', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, '0000-00-00 00:00:00', '2015-07-26 18:09:14'),
(31, 3, 10, 11, 1, 'Medium', 'medium', '', '', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, '2015-07-26 18:09:41', '2015-07-26 18:09:41'),
(32, 3, 12, 13, 1, 'Small', 'small', '', '', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, '2015-07-26 18:09:54', '2015-07-26 18:09:54');

-- --------------------------------------------------------

--
-- Table structure for table `base_user`
--

CREATE TABLE `base_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` char(123) NOT NULL,
  `token` char(123) DEFAULT NULL,
  `token_type` tinyint(3) UNSIGNED DEFAULT NULL,
  `auth_key` char(123) DEFAULT NULL,
  `sso_key` char(123) DEFAULT NULL,
  `status` tinyint(3) UNSIGNED DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `base_user`
--

INSERT INTO `base_user` (`id`, `username`, `email`, `password`, `token`, `token_type`, `auth_key`, `sso_key`, `status`, `last_login`, `created`, `updated`) VALUES
(1, 'dalia', 'dalia@digitreeinc.com', '$2y$13$yCHfzayIITzuzvPYBVEp.OVkVMnux7As0niHDNUyQ2suSUpl4cPMK', NULL, NULL, 'AMITSMZCAjVVktBlAx4sZDuCAVSZp3H2', NULL, 2, '2016-03-29 13:25:54', NULL, '2016-02-14 10:08:35'),
(75, 'daliaatef28@gmail.com', 'daliaatef28@gmail.com', '$2y$13$tOSBYC83hlyk8Onbu1i0i.tKKfamKsBBopf5aEUkl0oSpCmoROqlG', NULL, NULL, '2lcSfZig-txkxN7b0IruVgqFJ-DRsbMb', NULL, 2, NULL, '2016-02-14 12:11:48', '2016-02-14 12:11:48'),
(76, 'Tena', 'Mariana@digitreeinc.com', '$2y$13$bCYrX8hpIKnj5R.cbKgmeOjBfCqJrl7gBWyrYi79gGjiMImILZijS', NULL, NULL, 'knoBUbxGJJTLKPPa6X3G1_dkqelAUOWy', NULL, 2, NULL, '2016-03-22 09:57:59', '2016-03-22 09:57:59');

-- --------------------------------------------------------

--
-- Table structure for table `insights`
--

CREATE TABLE `insights` (
  `id` int(10) UNSIGNED NOT NULL,
  `model_id` int(10) UNSIGNED NOT NULL,
  `followers` int(10) DEFAULT NULL,
  `gained_followers` int(10) DEFAULT NULL,
  `lost_followers` int(10) DEFAULT NULL,
  `listed` int(10) DEFAULT NULL,
  `follows` int(10) DEFAULT NULL,
  `number_of_posted_media` int(10) DEFAULT NULL,
  `total_likes` int(10) DEFAULT NULL,
  `total_comments` int(10) DEFAULT NULL,
  `total_shares` int(10) DEFAULT NULL,
  `total_mentions` int(10) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `insights`
--

INSERT INTO `insights` (`id`, `model_id`, `followers`, `gained_followers`, `lost_followers`, `listed`, `follows`, `number_of_posted_media`, `total_likes`, `total_comments`, `total_shares`, `total_mentions`, `created`, `updated`) VALUES
(114, 60, 160, NULL, NULL, NULL, 405, 10, 9, 2, NULL, NULL, '2016-02-16 13:06:39', '0000-00-00 00:00:00'),
(115, 60, 162, NULL, NULL, NULL, 422, 11, 10, 2, NULL, NULL, '2016-02-17 16:46:36', '2016-02-17 16:46:34'),
(116, 60, 162, NULL, NULL, NULL, 424, 11, 11, 2, NULL, NULL, '2016-02-18 16:59:25', '2016-02-18 12:47:19'),
(117, 60, 162, NULL, NULL, NULL, 424, 11, 11, 2, NULL, NULL, '2016-02-19 01:00:00', '0000-00-00 00:00:00'),
(118, 60, 162, NULL, NULL, NULL, 424, 11, 11, 2, NULL, NULL, '2016-02-20 02:00:00', '0000-00-00 00:00:00'),
(119, 60, 162, NULL, NULL, NULL, 424, 11, 11, 2, NULL, NULL, '2016-02-21 00:00:00', '0000-00-00 00:00:00'),
(134, 60, 163, NULL, NULL, NULL, 424, 11, 11, 2, NULL, NULL, '2016-02-22 15:41:01', '2016-02-22 15:40:58'),
(138, 60, 163, 1, -1, NULL, 428, 12, 13, 4, NULL, NULL, '2016-02-23 12:19:25', '2016-02-23 12:19:25'),
(139, 60, 166, 1, -1, NULL, 428, 12, 14, 4, NULL, NULL, '2016-02-24 13:31:06', '2016-02-24 13:31:06'),
(140, 60, 166, 0, 0, NULL, 428, 12, 14, 4, NULL, NULL, '2016-02-25 09:19:12', '2016-02-25 09:19:12'),
(143, 144, 15, NULL, NULL, NULL, NULL, 21, 0, 1, 4, NULL, '2016-02-29 13:24:57', '2016-02-29 13:24:57'),
(144, 144, 15, NULL, NULL, NULL, NULL, 21, 0, 1, 4, NULL, '2016-03-01 09:06:34', '2016-03-01 09:06:34'),
(152, 233, 4, 0, 0, 0, 43, 6, 1, 2, 2, 2, '2016-03-21 16:25:39', '2016-03-21 16:25:39');

-- --------------------------------------------------------

--
-- Table structure for table `meta_tags`
--

CREATE TABLE `meta_tags` (
  `id` int(11) NOT NULL,
  `model` varchar(255) NOT NULL,
  `model_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `meta_tags`
--

INSERT INTO `meta_tags` (`id`, `model`, `model_id`, `title`, `keywords`, `description`, `created`, `updated`) VALUES
(1, 'Page', 10, 'Privacy Policy', 'Privacy Policy', 'Privacy Policy', NULL, '2015-08-11 11:21:26'),
(4, 'Page', 34, 'test', 'test', 'test', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Article', 35, '', '', '', '0000-00-00 00:00:00', '2015-05-31 15:13:43'),
(7, 'Page', 1, '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Article', 2, '', '', '', '0000-00-00 00:00:00', '2015-08-18 09:23:55'),
(9, 'Article', 3, '', '', '', '0000-00-00 00:00:00', '2015-08-18 09:24:16'),
(10, 'Article', 4, 'Arm workout lessons', 'Arm workout lessons', 'The majority of people i see on here and at my gym i train people, have trouble gaining size and shape to their calves than simply training the gastrocnemius and soleus muscle.', '0000-00-00 00:00:00', '2015-08-18 09:24:34'),
(11, 'Article', 5, '', '', '', '0000-00-00 00:00:00', '2015-08-18 09:24:50'),
(17, 'Product', 8, 'Platinum', 'Platinum', 'Platinum is an ultra-premium lean gainer engineered', '2015-07-26 17:30:19', '2015-08-17 20:08:45'),
(18, 'Product', 9, '', '', '', '2015-07-26 17:37:18', '2015-07-26 17:37:18'),
(19, 'Product', 10, '', '', '', '2015-07-26 17:39:27', '2015-07-26 17:44:06'),
(20, 'Product', 11, '', '', '', '2015-07-26 17:41:36', '2015-07-28 13:25:57'),
(21, 'Product', 12, '', '', '', '2015-07-26 17:45:39', '2015-07-26 17:45:39'),
(22, 'Product', 13, '', '', '', '2015-07-26 17:54:11', '2015-07-26 17:54:11'),
(23, 'Product', 14, '', '', '', '2015-07-26 18:07:39', '2015-07-26 18:07:39'),
(24, 'Product', 15, '', '', '', '2015-07-26 18:10:32', '2015-07-26 18:19:31'),
(25, 'Product', 16, '', '', '', '2015-07-26 18:15:32', '2015-07-26 18:15:32'),
(26, 'Product', 17, '', '', '', '2015-07-27 12:48:05', '2015-07-27 13:38:49'),
(27, 'Page', 6, '', '', '', '2015-07-30 12:48:31', '2015-07-30 12:48:31'),
(28, 'Page', 7, 'about us', 'about us', 'about us', '2015-08-11 11:10:14', '2015-08-18 12:04:15'),
(29, 'Page', 8, 'Contact Us', 'Contact Us', 'Contact Us', '2015-08-11 11:20:33', '2015-08-11 13:08:15'),
(30, 'Page', 9, 'Terms Of Service', 'Terms Of Service', 'Terms Of Service', '2015-08-11 11:21:03', '2015-08-11 11:21:03');

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1424090952),
('m010101_100001_init_comment', 1439761184),
('m010102_100002_init_hits', 1439925856),
('m130524_201442_init', 1424090958),
('m140506_102106_rbac_init', 1424263170),
('m150312_172156_meta_tags', 1432805470);

-- --------------------------------------------------------

--
-- Table structure for table `model`
--

CREATE TABLE `model` (
  `id` int(10) UNSIGNED NOT NULL,
  `authclient_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) DEFAULT NULL,
  `entity_id` varchar(100) NOT NULL,
  `type` tinyint(2) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `content` text,
  `media_url` varchar(255) DEFAULT NULL,
  `post_type` tinyint(2) DEFAULT NULL,
  `in_reply_to_id` int(10) DEFAULT NULL,
  `likes` int(10) DEFAULT NULL,
  `comments` int(10) DEFAULT NULL,
  `shares` int(10) DEFAULT NULL,
  `followers` int(10) DEFAULT NULL,
  `creation_time` varchar(30) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `source` varchar(150) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `filter` varchar(32) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `model`
--

INSERT INTO `model` (`id`, `authclient_id`, `parent_id`, `entity_id`, `type`, `name`, `content`, `media_url`, `post_type`, `in_reply_to_id`, `likes`, `comments`, `shares`, `followers`, `creation_time`, `url`, `source`, `tags`, `filter`, `created`, `updated`) VALUES
(60, 17, NULL, '1527813113', 0, 'dassies28', NULL, 'https://igcdn-photos-g-a.akamaihd.net/hphotos-ak-ash/t51.2885-19/10932190_1541450592803278_154574478_a.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-02-28 16:47:56', '2016-02-17 16:46:34'),
(61, 17, 60, '1186924112496339592_1527813113', 1, NULL, NULL, 'https://scontent.cdninstagram.com/t51.2885-15/s150x150/e35/12748354_1661524244097687_1904519039_n.jpg?ig_cache_key=MTE4NjkyNDExMjQ5NjMzOTU5Mg%3D%3D.2', 0, NULL, 2, 0, NULL, 162, '1455712401', 'https://www.instagram.com/p/BB4zTEUsKqIvayjqA08REeJauVSSGORA_2jX5g0/', NULL, 'valentine', 'Juno', '2016-03-15 15:25:37', '2016-03-15 15:25:37'),
(62, 17, 60, '1108177360709003934_1527813113', 1, NULL, NULL, 'https://scontent.cdninstagram.com/t51.2885-15/s150x150/e35/12142137_1013765212019423_156489864_n.jpg?ig_cache_key=MTEwODE3NzM2MDcwOTAwMzkzNA%3D%3D.2', 0, NULL, 1, 1, NULL, NULL, '1446325057', 'https://www.instagram.com/p/9hCXAtMKqeT6fQbEAM-6SNtyPiuypZ_LPK7SY0/', NULL, '', 'Gingham', '2016-03-15 15:25:38', '2016-03-15 15:25:38'),
(63, 17, 60, '1108176533650975363_1527813113', 1, NULL, NULL, 'https://scontent.cdninstagram.com/t51.2885-15/s150x150/e35/c27.0.265.265/12132884_1006161669405435_675713166_n.jpg?ig_cache_key=MTEwODE3NjUzMzY1MDk3NTM2Mw%3D%3D.2.c', 0, NULL, 1, 0, NULL, NULL, '1446324958', 'https://www.instagram.com/p/9hCK-csKqDvZrlQ9LydEtVgpJ1YMcXnSGXV7E0/', NULL, '', 'Normal', '2016-03-15 15:25:38', '2016-03-15 15:25:38'),
(64, 17, 60, '1108175670849088087_1527813113', 1, NULL, NULL, 'https://scontent.cdninstagram.com/t51.2885-15/s150x150/e35/12142312_1663701530537913_1972707725_n.jpg?ig_cache_key=MTEwODE3NTY3MDg0OTA4ODA4Nw%3D%3D.2', 0, NULL, 0, 0, NULL, NULL, '1446324856', 'https://www.instagram.com/p/9hB-a5sKpXWihD_GU1cpzswMthK0GOaF3k6w40/', NULL, '', 'Normal', '2016-03-15 15:25:38', '2016-03-15 15:25:38'),
(65, 17, 60, '1108175612095277651_1527813113', 1, NULL, NULL, 'https://scontent.cdninstagram.com/t51.2885-15/s150x150/e35/11925905_441740952676144_1087695194_n.jpg?ig_cache_key=MTEwODE3NTYxMjA5NTI3NzY1MQ%3D%3D.2', 0, NULL, 0, 0, NULL, NULL, '1446324849', 'https://www.instagram.com/p/9hB9kLsKpT1bj7f1GJRb8RYJTmeG6Vdt8jdko0/', NULL, '', 'Normal', '2016-03-15 15:25:38', '2016-03-15 15:25:38'),
(66, 17, 60, '984873100366621265_1527813113', 1, NULL, NULL, 'https://scontent.cdninstagram.com/t51.2885-15/s150x150/e15/11235929_400973293419625_1568564553_n.jpg?ig_cache_key=OTg0ODczMTAwMzY2NjIxMjY1.2', 0, NULL, 0, 0, NULL, NULL, '1431626044', 'https://www.instagram.com/p/2q-N3gMKpRorux6xwtOJltwnqbmW-Y51Ng0640/', NULL, '', 'Brannan', '2016-03-15 15:25:38', '2016-03-15 15:25:38'),
(67, 17, 60, '984871162287794705_1527813113', 1, NULL, NULL, 'https://scontent.cdninstagram.com/t51.2885-15/s150x150/e15/11273132_676461625792840_651092471_n.jpg?ig_cache_key=OTg0ODcxMTYyMjg3Nzk0NzA1.2', 0, NULL, 0, 0, NULL, NULL, '1431625813', 'https://www.instagram.com/p/2q9xqhsKoRb7dESE4rWyxndt6mprVBLuUd9lA0/', NULL, '', 'Juno', '2016-03-15 15:25:38', '2016-03-15 15:25:38'),
(68, 17, 60, '984870008065665524_1527813113', 1, NULL, NULL, 'https://scontent.cdninstagram.com/t51.2885-15/s150x150/e15/11272167_1666540690243741_926630155_n.jpg?ig_cache_key=OTg0ODcwMDA4MDY1NjY1NTI0.2', 0, NULL, 0, 0, NULL, NULL, '1431625675', 'https://www.instagram.com/p/2q9g3ksKn0dXJApPkfMBccoK7012H-6nLttEc0/', NULL, '', 'Aden', '2016-03-15 15:25:38', '2016-03-15 15:25:38'),
(69, 17, 60, '837972914827471509_1527813113', 1, NULL, NULL, 'https://scontent.cdninstagram.com/t51.2885-15/s150x150/e15/10724899_393492184141221_593646520_n.jpg?ig_cache_key=ODM3OTcyOTE0ODI3NDcxNTA5.2', 0, NULL, 3, 1, NULL, NULL, '1414114177', 'https://www.instagram.com/p/uhE-0fsKqVdhzPKPPp-PdsM_kWMMxOmJ1cHxs0/', NULL, 'darkroomcontest,meltcosmetics,meltdarkroom', 'Normal', '2016-03-15 15:25:38', '2016-03-15 15:25:38'),
(70, 17, 60, '837068490621889469_1527813113', 1, NULL, NULL, 'https://scontent.cdninstagram.com/t51.2885-15/s150x150/e15/10731783_1502185143364597_818856726_n.jpg?ig_cache_key=ODM3MDY4NDkwNjIxODg5NDY5.2', 0, NULL, 1, 0, NULL, NULL, '1414006361', 'https://www.instagram.com/p/ud3Vt0MKu9rVYP2Y5et-JABayZpH7VjOYvQTA0/', NULL, 'wednesdaywisdom,clean', 'Normal', '2016-03-15 15:25:38', '2016-03-15 15:25:38'),
(71, 17, 60, '837000346024847708_1527813113', 1, NULL, NULL, 'https://scontent.cdninstagram.com/t51.2885-15/s150x150/e15/10731707_976124839071200_1897127966_n.jpg?ig_cache_key=ODM3MDAwMzQ2MDI0ODQ3NzA4.2', 0, NULL, 4, 0, NULL, NULL, '1413998238', 'https://www.instagram.com/p/udn2FNsKlcNEHe7yJ3hJYc5ZNZ7lXSo8xQ56s0/', NULL, 'tagyourstyle', 'Normal', '2016-03-15 15:25:38', '2016-03-15 15:25:38'),
(72, 17, 60, '1191261712250087806_1527813113', 1, NULL, NULL, 'https://scontent.cdninstagram.com/t51.2885-15/s150x150/e35/1171977_827818347345739_1432529725_n.jpg?ig_cache_key=MTE5MTI2MTcxMjI1MDA4NzgwNg%3D%3D.2', 0, NULL, 2, 2, NULL, 163, '1456229484', 'https://www.instagram.com/p/BCINjc5MKl-/', NULL, '', 'Gingham', '2016-03-15 15:25:37', '2016-03-15 15:25:37'),
(144, 18, NULL, '100080852241585525910', 0, 'Lamar Egypt', NULL, 'https://lh6.googleusercontent.com/-aME04ZnsnZ8/AAAAAAAAAAI/AAAAAAAAALk/NBNTT13dxnk/photo.jpg?sz=50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-02-29 13:24:52', '2016-02-29 13:24:52'),
(145, 18, 144, 'z13nw1qxhsjrgf2vo23kftapxsvzvx50n', 1, NULL, NULL, 'https://lh3.googleusercontent.com/proxy/s4A4UhNt-BzrQs351S5xSsGz6itoZJcJ-XGbv1XaNKchNVDPR2ffrGSALKRzBKNJojPkIKqd2xMY-X-lZ14u=w506-h284-n', NULL, NULL, 0, 0, 0, 15, '1437215282', 'https://plus.google.com/100080852241585525910/posts/LRDnM4THyv6', NULL, NULL, NULL, '2016-03-01 13:37:40', '2016-03-01 13:37:40'),
(146, 18, 144, 'z13ivfooism0dtp2t23kftapxsvzvx50n', 1, NULL, NULL, 'https://lh3.googleusercontent.com/proxy/SOhqt3ALV3DySJP0Itnjm-FWyTCq-hTXcvIYoazlR4sUopFywKJWX8mcvMMgzroWIu9_ENbePwMomEP1ewL6=w506-h284-n', NULL, NULL, 0, 0, 0, 12, '1437214955', 'https://plus.google.com/100080852241585525910/posts/Fzo5kMo66Uc', NULL, NULL, NULL, '2016-03-01 13:37:40', '2016-03-01 13:37:40'),
(147, 18, 144, 'z12cf5valtqpfxu5f04ci1j4urr3jzjoo2g', 1, NULL, NULL, 'https://lh3.googleusercontent.com/proxy/_wBPQDgmRLVio7_9XzSthPXPaj_4GO_byDRIYQc-4BTZllB7kw6BTdOBgAr6i4vCMpF_u6j_CyrqAJQGAYRH=w506-h284-n', NULL, NULL, 0, 0, 0, 12, '1436876216', 'https://plus.google.com/100080852241585525910/posts/VjqLVLKewrP', NULL, NULL, NULL, '2016-03-01 13:37:40', '2016-03-01 13:37:40'),
(148, 18, 144, 'z12cj5fgjwzvyzqew23kftapxsvzvx50n', 1, NULL, NULL, 'https://lh3.googleusercontent.com/proxy/JYh4fIGq80l6jVUFEmiLLGv0IGoQtr3-329ThZZRGIGJU_yP3wxU4CrUcZvNVcFkWcrFRFjXRY4mlWJP-vRS=w506-h284-n', NULL, NULL, 0, 0, 0, 11, '1436876214', 'https://plus.google.com/100080852241585525910/posts/GWKxn4bwLF9', NULL, NULL, NULL, '2016-03-01 13:37:40', '2016-03-01 13:37:40'),
(149, 18, 144, 'z134s54zxqa5hfrpd04ci1j4urr3jzjoo2g', 1, NULL, NULL, 'https://lh3.googleusercontent.com/proxy/febJTCDcu-ByqxBn2jI_bHuATpFRvncxx4Oi1DF29z9l_3mMXfpBRu5DqvWl1qStZC0s7G_1J91tBiV6PiuV=w506-h284-n', NULL, NULL, 0, 0, 0, 12, '1436876213', 'https://plus.google.com/100080852241585525910/posts/VPgpAQb38pQ', NULL, NULL, NULL, '2016-03-01 13:37:40', '2016-03-01 13:37:40'),
(150, 18, 144, 'z13rivwahmadfpeuf23kftapxsvzvx50n', 1, NULL, NULL, 'https://lh3.googleusercontent.com/proxy/jGHyk1uyUxkMwJl5o68IGARa6k9D4N7qO53--nc40dJzCOwTQL_ApKR0wAEMpTTAmeJ4S3QLiy4wOfp9MRYH=w506-h284-n', NULL, NULL, 0, 0, 0, 10, '1436876212', 'https://plus.google.com/100080852241585525910/posts/DbtUBTUEoC1', NULL, NULL, NULL, '2016-03-01 13:37:40', '2016-03-01 13:37:40'),
(151, 18, 144, 'z13hw1lx2uzuurt0o23kftapxsvzvx50n', 1, NULL, NULL, 'https://lh3.googleusercontent.com/proxy/2MZZCrKPWBMXOW_hStC0eourqiMEeXoQTo8hwFhYUR8ggu57GLf_jJEuIWCpt0hdXaopUY8eoj6UdsLQxzML=w506-h284-n', NULL, NULL, 0, 0, 1, 10, '1435753571', 'https://plus.google.com/100080852241585525910/posts/4UdYsBm4Bsg', NULL, NULL, NULL, '2016-03-01 13:37:40', '2016-03-01 13:37:40'),
(152, 18, 144, 'z13ozftg2taccj5zt04ci1j4urr3jzjoo2g', 1, NULL, NULL, 'https://lh3.googleusercontent.com/proxy/zxe7dDmFHZNWDbBt6BwYpihOIav-ojcHC_gNOvi9REXV6-jG41IA4jp3kvzJ1Nc0IEr5g8WlKFZS2aDmugRW=w506-h284-n', NULL, NULL, 0, 0, 0, 9, '1435753570', 'https://plus.google.com/100080852241585525910/posts/igMqmhHAB5r', NULL, NULL, NULL, '2016-03-01 13:37:41', '2016-03-01 13:37:41'),
(153, 18, 144, 'z13xgl0ysorzfnxdl23kftapxsvzvx50n', 1, NULL, NULL, 'https://lh3.googleusercontent.com/proxy/VeJW-h7F8HUtTc7XhpTmsB2KHql_R6UkdVqrK95jImPpCJ0jZVIdVyqTQJSlpdscDJ24F3EVDGT4nfmxfozi=w506-h284-n', NULL, NULL, 0, 0, 0, 9, '1435753569', 'https://plus.google.com/100080852241585525910/posts/9MGGdNQvuX7', NULL, NULL, NULL, '2016-03-01 13:37:41', '2016-03-01 13:37:41'),
(154, 18, 144, 'z13wc5ioqlb0hjn2223kftapxsvzvx50n', 1, NULL, NULL, 'https://lh3.googleusercontent.com/proxy/p8pkd5-Z9_0i2fenZuwgLcVydb9qB7AQ4eAu1sbcmRitqBY152nqikd5Sm21jw2cXdOd3SHr8pPRZRGAlFNf=w506-h284-n', NULL, NULL, 0, 0, 0, 9, '1435753567', 'https://plus.google.com/100080852241585525910/posts/C96VFSXt8xF', NULL, NULL, NULL, '2016-03-01 13:37:41', '2016-03-01 13:37:41'),
(155, 18, 144, 'z133fh1pmvrkezt5204ci1j4urr3jzjoo2g', 1, NULL, NULL, 'https://lh3.googleusercontent.com/proxy/dH65P3rU8sHgB2FvpHo2xA4bVtHLBMDs9e772xF6z4JXEXXCXDAQ1H_LYs1vY0um50JEHg8NDjUP5QKiK04s=w506-h284-n', NULL, NULL, 0, 0, 1, 8, '1434987047', 'https://plus.google.com/100080852241585525910/posts/UEDCV1zEGzh', NULL, NULL, NULL, '2016-03-01 13:37:41', '2016-03-01 13:37:41'),
(156, 18, 144, 'z13rddgxmoqhhdwex23kftapxsvzvx50n', 1, NULL, NULL, 'https://lh3.googleusercontent.com/proxy/wJDcs6r0h7p5rPafyEvqEIcmtxnkskkfMAIt4LpoZs5dp-zHKb7kMbSH2ugedCJfNLQIEgIai2q_oQzZT9ub=w506-h284-n', NULL, NULL, 0, 0, 0, NULL, '1434985520', 'https://plus.google.com/100080852241585525910/posts/GhqBcxLAy97', NULL, NULL, NULL, '2016-03-01 13:37:41', '2016-03-01 13:37:41'),
(157, 18, 144, 'z12pc5jqrkvkcf2y004ci1j4urr3jzjoo2g', 1, NULL, NULL, 'https://lh3.googleusercontent.com/proxy/Iae1wRqlL7MKqjhlMupPx3HUeT3dBTHC5sqEe4ob20lfBiuHIudlcBwwCg0TofiV86U4M05729xEJQQuPhH7=w506-h284-n', NULL, NULL, 0, 0, 0, NULL, '1434985518', 'https://plus.google.com/100080852241585525910/posts/Z8UhhUWCMgV', NULL, NULL, NULL, '2016-03-01 13:37:41', '2016-03-01 13:37:41'),
(158, 18, 144, 'z12oddeihmuwzliqc04ci1j4urr3jzjoo2g', 1, NULL, NULL, 'https://lh3.googleusercontent.com/proxy/kBoZ13wHd1msMB6Vld5S84tUHWgGvdc5VxOTCutb57_7sEaSyD5bQJmgOcN96YMRZI92rBzVlugbE7uCr7uv=w506-h284-n', NULL, NULL, 0, 0, 0, NULL, '1434984089', 'https://plus.google.com/100080852241585525910/posts/aXidSWyEF2F', NULL, NULL, NULL, '2016-03-01 13:37:41', '2016-03-01 13:37:41'),
(159, 18, 144, 'z13zxtko4kuterubd04ci1j4urr3jzjoo2g', 1, NULL, NULL, 'https://lh3.googleusercontent.com/proxy/Yp2KD64IrtyRQ-XhlmXSCkSLUr67bLwmthP_q_WbdyAQQMrzBwB4lLUinoFBIyYy5uaEH42fbmVZESbPD3On=w506-h284-n', NULL, NULL, 0, 0, 1, NULL, '1431517754', 'https://plus.google.com/100080852241585525910/posts/g7JPd3PsKoU', NULL, NULL, NULL, '2016-03-01 13:37:41', '2016-03-01 13:37:41'),
(160, 18, 144, 'z12hs3ryuk2nh3txw04ci1j4urr3jzjoo2g', 1, NULL, NULL, 'https://lh3.googleusercontent.com/proxy/SXo8jj7V6JdSRfCguAQY2zKImidQwvEa1A45M28lvDzt8NywAPRSmnzZohFVMMZ1rq5366xWJtwMpZap4H_g=w506-h284-n', NULL, NULL, 0, 0, 0, NULL, '1431346116', 'https://plus.google.com/100080852241585525910/posts/Yah2YDdR8yp', NULL, NULL, NULL, '2016-03-01 13:37:41', '2016-03-01 13:37:41'),
(161, 18, 144, 'z132f5g5lsykxhv2w23kftapxsvzvx50n', 1, NULL, NULL, 'https://lh3.googleusercontent.com/proxy/-poslH7HNIluAEn6hYMcjkmE7XvFt8pwXV39KsHRmFzWI_qammwfHXWAJKabTeGvWBAoHN9Kfwq8uXKosw9p=w506-h284-n', NULL, NULL, 0, 0, 0, NULL, '1404320199', 'https://plus.google.com/100080852241585525910/posts/GXkbu4T7txs', NULL, NULL, NULL, '2016-03-01 13:37:41', '2016-03-01 13:37:41'),
(162, 18, 144, 'z12hulwicleyhfyt223kftapxsvzvx50n', 1, NULL, NULL, 'https://lh3.googleusercontent.com/proxy/XKreMsFsBkYThPmwLtnnxYYMezsjFg5PZi1R1VjiGEkYmHZCW7bo5r9O3bnZyk-Lr2cmm0Gcv9JAEw8eorSi=w506-h284-n', NULL, NULL, 0, 0, 0, NULL, '1404318218', 'https://plus.google.com/100080852241585525910/posts/6rDVvmDCCLA', NULL, NULL, NULL, '2016-03-01 13:37:41', '2016-03-01 13:37:41'),
(163, 18, 144, 'z13cfvajlzamxlata23kftapxsvzvx50n', 1, NULL, NULL, 'https://lh3.googleusercontent.com/proxy/szaQGT8AdTsoTkYMAp9Kd4UKw4U8m3wqc6kVHqj5tPpRMpJDCjek_RaJoDy-1J5eHsDzMrvKbaeNy_E56_YA=w506-h284-n', NULL, NULL, 0, 0, 0, NULL, '1404267002', 'https://plus.google.com/100080852241585525910/posts/7PkHMVx9AZV', NULL, NULL, NULL, '2016-03-01 13:37:41', '2016-03-01 13:37:41'),
(164, 18, 144, 'z125htfquuacvtsqm04ci1j4urr3jzjoo2g', 1, NULL, NULL, 'https://lh3.googleusercontent.com/proxy/Aoo3-xRT0HTnUHt2bn2_Tfj1d3DifAE14UiN2wkFgDC7E9zjEHWSVzpymITlrz_cwdhzWLKGIQTOoCJDcSnV=w506-h284-n', NULL, NULL, 0, 1, 1, NULL, '1404234739', 'https://plus.google.com/100080852241585525910/posts/cFj7tn3WV3X', NULL, NULL, NULL, '2016-03-01 13:37:41', '2016-03-01 13:37:41'),
(165, 18, 144, 'z13rzxf4yrftwh3el23kftapxsvzvx50n', 1, NULL, NULL, 'https://lh3.googleusercontent.com/proxy/oQcsS48H7QZoQMlna_zxl_k1EEBzWI4pw-sJzdk5we0Wr-12ncOY7F3cAhiAIqW6w1SGn9F1AnZsuSzYKsCr=w506-h284-n', NULL, NULL, 0, 0, 0, NULL, '1404224894', 'https://plus.google.com/100080852241585525910/posts/EZq4rGRaBhp', NULL, NULL, NULL, '2016-03-01 13:37:41', '2016-03-01 13:37:41'),
(233, 16, NULL, '2949392938', 0, 'Omar_Mohamed_33', NULL, 'http://abs.twimg.com/sticky/default_profile_images/default_profile_2_normal.png', NULL, NULL, 1, NULL, NULL, NULL, '1419864797', NULL, NULL, NULL, NULL, '2016-03-21 16:25:30', '2016-03-21 16:25:30'),
(234, 16, 233, '687659177032986624', 2, NULL, '@Omar_Mohamed_33 second test', NULL, NULL, 2147483647, 0, NULL, 0, NULL, '1452785698', 'https://twitter.com/Dou_lphi/status/687659177032986624', '<a href="http://twitter.com" rel="nofollow">Twitter Web Client</a>', NULL, NULL, '2016-03-21 16:25:32', '2016-03-21 16:25:32'),
(236, 16, 233, '696665077777309696', 1, NULL, 'test retweeting', NULL, NULL, NULL, 1, 1, 1, NULL, '1454932872', 'https://twitter.com/Omar_Mohamed_33/status/696665077777309696', '<a href="http://twitter.com" rel="nofollow">Twitter Web Client</a>', NULL, NULL, '2016-03-21 16:25:36', '2016-03-21 16:25:36'),
(237, 16, 233, '684387871797719040', 1, NULL, 'يا تاجر الصبر.. ماتْخِلِّش في ميزانك..\n\n                   مِن حُوجتى للصبر ساكن جنب دُكَّانك ...\nعبد الرحمن الأبنودي', NULL, NULL, NULL, 1, 1, 1, NULL, '1452005758', 'https://twitter.com/Omar_Mohamed_33/status/684387871797719040', '<a href="http://twitter.com" rel="nofollow">Twitter Web Client</a>', NULL, NULL, '2016-03-21 16:25:36', '2016-03-21 16:25:36');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(128) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `comment` text NOT NULL,
  `payment_method` tinyint(3) UNSIGNED DEFAULT NULL,
  `amount` decimal(8,2) UNSIGNED DEFAULT '0.00',
  `token` char(123) DEFAULT NULL,
  `new` tinyint(1) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED DEFAULT NULL,
  `paid` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `created` timestamp NULL DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `user_id`, `name`, `email`, `phone`, `address`, `comment`, `payment_method`, `amount`, `token`, `new`, `status`, `paid`, `created`, `updated`) VALUES
(1, 1, '', '', '', '', '', NULL, '0.00', NULL, NULL, 0, 0, '2015-08-03 14:46:40', '2015-08-03 14:46:40'),
(2, NULL, 'Ahmed Sharaf1', 'a.sharaf+1@digitreeinc.com', '12345678911', 'Address Address Address, Alex', '', 1, '700.00', 'QnIg-NmBCrJP40_ccvf_1439419289', NULL, 1, 0, '2015-08-05 11:02:32', '2015-08-12 22:41:29'),
(3, NULL, 'Ahmed Sharaf1', 'a.sharaf+1@digitreeinc.com', '12345678911', 'Address Address Address, Alex', '', 1, '200.00', 'fBorSP1BhECXqXZ_1439455213', NULL, 1, 0, '2015-08-12 22:43:35', '2015-08-13 08:40:13'),
(4, NULL, 'Ahmed Sharaf1', 'a.sharaf+1@digitreeinc.com', '12345678911', 'Address Address Address, Alex', '', 1, '2400.00', 'ngqNtNdvkOqIeyM_1439466994', NULL, 1, 0, '2015-08-13 11:47:01', '2015-08-13 11:56:34'),
(5, NULL, 'Ahmed Sharaf1', 'a.sharaf+1@digitreeinc.com', '12345678911', 'Address Address Address, Alex', '', 2, '700.00', 'H8TdACMxOL2_1440008199', NULL, 1, 1, '2015-08-16 12:13:56', '2015-08-19 21:34:57'),
(6, NULL, '', '', '', '', '', NULL, '0.00', NULL, NULL, 0, 0, '2015-08-16 21:10:34', '2015-08-16 21:10:34'),
(7, NULL, 'Ahmed Sharaf', 'sharaf.developer@gmail.com', '1111111111', 'adress', 'comment', 1, '400.00', 'ULkvlQ00lFwItC1hbpohv3g8TMtuwiA4_1439921356', NULL, 1, 0, '2015-08-18 18:08:50', '2015-08-18 18:09:16'),
(8, NULL, 'Ahmed Sharaf', 'sharaf.developer@gmail.com', '1111111111', 'adress', '', 1, '300.00', 'br86pMpeSzok6IcS_1439921476', NULL, 1, 0, '2015-08-18 18:11:04', '2015-08-18 18:11:16');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `gateway` varchar(45) DEFAULT NULL,
  `transaction_reference` varchar(45) DEFAULT NULL,
  `response` text,
  `status` varchar(45) DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `order_id`, `gateway`, `transaction_reference`, `response`, `status`, `created`, `updated`) VALUES
(2, 5, 'Migs_ThreeParty', '523207587497', '{"vpc_3DSXID":"tKUO1yKegVuxvZ+l0mfL+J\\/Pxa8=","vpc_3DSenrolled":"N","vpc_AVSRequestCode":"Z","vpc_AVSResultCode":"Unsupported","vpc_AVS_City":"","vpc_AVS_Country":"EGY","vpc_AVS_PostCode":"12345","vpc_AVS_StateProv":"","vpc_AVS_Street01":"Address","vpc_AcqAVSRespCode":"Unsupported","vpc_AcqCSCRespCode":"Unsupported","vpc_AcqResponseCode":"00","vpc_Amount":"70000","vpc_AuthorizeId":"587497","vpc_BatchNo":"20150820","vpc_CSCResultCode":"Unsupported","vpc_Card":"VC","vpc_CardNum":"xxxxxxxxxxxx0001","vpc_Command":"pay","vpc_Locale":"en","vpc_MerchTxnRef":"H8TdACMxOL2_1440008199","vpc_Merchant":"TEST512345USD","vpc_Message":"Approved","vpc_ReceiptNo":"523207587497","vpc_SecureHash":"731DDD441A63173704E41BD8C3899014","vpc_TransactionNo":"2000069506","vpc_TxnResponseCode":"0","vpc_VerSecurityLevel":"06","vpc_VerStatus":"E","vpc_VerType":"3DS","vpc_Version":"1"}', NULL, '2015-08-19 21:34:57', '2015-08-19 21:34:57');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `city_id` int(10) UNSIGNED DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(32) NOT NULL,
  `bio` text NOT NULL,
  `gender` tinyint(1) UNSIGNED DEFAULT NULL,
  `address` text NOT NULL,
  `country_phone_code` varchar(5) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `recent_followers`
--

CREATE TABLE `recent_followers` (
  `id` int(10) UNSIGNED NOT NULL,
  `model_id` int(10) UNSIGNED NOT NULL,
  `followers_json` text COLLATE utf8_bin NOT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `recent_followers`
--

INSERT INTO `recent_followers` (`id`, `model_id`, `followers_json`, `created`, `updated`) VALUES
(4, 60, '[{"username":"omarmohammed3315","profile_picture":"https:\\/\\/igcdn-photos-e-a.akamaihd.net\\/hphotos-ak-xft1\\/t51.2885-19\\/11906329_960233084022564_1448528159_a.jpg","id":"2475676692","full_name":"omar"},{"username":"dalidou","profile_picture":"https:\\/\\/igcdn-photos-b-a.akamaihd.net\\/hphotos-ak-xaf1\\/t51.2885-19\\/s150x150\\/11373938_883088071771257_52101692_a.jpg","id":"400354021","full_name":"dalia"},{"username":"tena","profile_picture":"https:\\/\\/igcdn-photos-b-a.akamaihd.net\\/hphotos-ak-xaf1\\/t51.2885-19\\/s150x150\\/11373938_883088071771257_52101692_a.jpg","id":"401354021","full_name":"mariana"}]', '2016-02-23 12:19:25', '2016-02-25 09:19:12'),
(32, 233, '[626969776,304007639]', '2016-03-21 16:25:37', '2016-03-21 16:25:39');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `count` int(10) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authclient`
--
ALTER TABLE `authclient`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_authclient_1_idx` (`user_id`);

--
-- Indexes for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`);

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
-- Indexes for table `base_content`
--
ALTER TABLE `base_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `base_media`
--
ALTER TABLE `base_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `base_messages`
--
ALTER TABLE `base_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_base_messages_1` (`parent_id`),
  ADD KEY `fk_base_messages_2` (`sender_id`),
  ADD KEY `fk_base_messages_3` (`receiver_id`);

--
-- Indexes for table `base_settings`
--
ALTER TABLE `base_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key_UNIQUE` (`key`);

--
-- Indexes for table `base_tree`
--
ALTER TABLE `base_tree`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_tree_NK1` (`root`),
  ADD KEY `tbl_tree_NK2` (`lft`),
  ADD KEY `tbl_tree_NK3` (`rgt`),
  ADD KEY `tbl_tree_NK4` (`lvl`),
  ADD KEY `tbl_tree_NK5` (`active`);

--
-- Indexes for table `base_user`
--
ALTER TABLE `base_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username_UNIQUE` (`username`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD UNIQUE KEY `token_UNIQUE` (`token`),
  ADD UNIQUE KEY `signature_UNIQUE` (`auth_key`),
  ADD UNIQUE KEY `login_token_UNIQUE` (`sso_key`);

--
-- Indexes for table `insights`
--
ALTER TABLE `insights`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ModelInsights` (`model_id`);

--
-- Indexes for table `meta_tags`
--
ALTER TABLE `meta_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object` (`model`,`model_id`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `model`
--
ALTER TABLE `model`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_AuthModel` (`authclient_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_order_1_idx` (`user_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_payment_1_idx` (`order_id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_mstql_profiles_1` (`user_id`),
  ADD KEY `fk_mstql_profiles_2` (`city_id`);

--
-- Indexes for table `recent_followers`
--
ALTER TABLE `recent_followers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `model_id` (`model_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authclient`
--
ALTER TABLE `authclient`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `base_content`
--
ALTER TABLE `base_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `base_media`
--
ALTER TABLE `base_media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `base_messages`
--
ALTER TABLE `base_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `base_settings`
--
ALTER TABLE `base_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `base_tree`
--
ALTER TABLE `base_tree`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Unique tree node identifier', AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `base_user`
--
ALTER TABLE `base_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `insights`
--
ALTER TABLE `insights`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;
--
-- AUTO_INCREMENT for table `meta_tags`
--
ALTER TABLE `meta_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `model`
--
ALTER TABLE `model`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=238;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `recent_followers`
--
ALTER TABLE `recent_followers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `authclient`
--
ALTER TABLE `authclient`
  ADD CONSTRAINT `fk_authclient_1` FOREIGN KEY (`user_id`) REFERENCES `base_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `insights`
--
ALTER TABLE `insights`
  ADD CONSTRAINT `fk_ModelInsights` FOREIGN KEY (`model_id`) REFERENCES `model` (`id`);

--
-- Constraints for table `model`
--
ALTER TABLE `model`
  ADD CONSTRAINT `fk_AuthModel` FOREIGN KEY (`authclient_id`) REFERENCES `authclient` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `fk_order_1` FOREIGN KEY (`user_id`) REFERENCES `base_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `fk_payment_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `fk_profile_1` FOREIGN KEY (`user_id`) REFERENCES `base_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_profile_2` FOREIGN KEY (`city_id`) REFERENCES `base_tree` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `recent_followers`
--
ALTER TABLE `recent_followers`
  ADD CONSTRAINT `fk_RecentFollowers` FOREIGN KEY (`model_id`) REFERENCES `model` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
