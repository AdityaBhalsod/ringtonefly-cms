-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 18, 2021 at 02:36 AM
-- Server version: 10.3.32-MariaDB-cll-lve
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `statxumt_ringtonefly`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads_txt_rule`
--

CREATE TABLE `ads_txt_rule` (
  `id` int(11) NOT NULL,
  `domain` varchar(100) NOT NULL,
  `account_id` varchar(255) NOT NULL,
  `account_type` varchar(100) NOT NULL,
  `authority_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ads_txt_rule_sites`
--

CREATE TABLE `ads_txt_rule_sites` (
  `id` int(11) NOT NULL,
  `rule_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can use Structure mode', 1, 'use_structure'),
(2, 'Can change page', 2, 'change_page'),
(3, 'Can add permission', 3, 'add_permission'),
(4, 'Can change permission', 3, 'change_permission'),
(5, 'Can delete permission', 3, 'delete_permission'),
(6, 'Can view permission', 3, 'view_permission'),
(7, 'Can add group', 4, 'add_group'),
(8, 'Can change group', 4, 'change_group'),
(9, 'Can delete group', 4, 'delete_group'),
(10, 'Can view group', 4, 'view_group'),
(11, 'Can add user', 5, 'add_user'),
(12, 'Can change user', 5, 'change_user'),
(13, 'Can delete user', 5, 'delete_user'),
(14, 'Can view user', 5, 'view_user'),
(15, 'Can add content type', 6, 'add_contenttype'),
(16, 'Can change content type', 6, 'change_contenttype'),
(17, 'Can delete content type', 6, 'delete_contenttype'),
(18, 'Can view content type', 6, 'view_contenttype'),
(19, 'Can add session', 7, 'add_session'),
(20, 'Can change session', 7, 'change_session'),
(21, 'Can delete session', 7, 'delete_session'),
(22, 'Can view session', 7, 'view_session'),
(23, 'Can add log entry', 8, 'add_logentry'),
(24, 'Can change log entry', 8, 'change_logentry'),
(25, 'Can delete log entry', 8, 'delete_logentry'),
(26, 'Can view log entry', 8, 'view_logentry'),
(27, 'Can add site', 9, 'add_site'),
(28, 'Can change site', 9, 'change_site'),
(29, 'Can delete site', 9, 'delete_site'),
(30, 'Can view site', 9, 'view_site'),
(31, 'Can add cms plugin', 10, 'add_cmsplugin'),
(32, 'Can change cms plugin', 10, 'change_cmsplugin'),
(33, 'Can delete cms plugin', 10, 'delete_cmsplugin'),
(34, 'Can view cms plugin', 10, 'view_cmsplugin'),
(35, 'Can add alias plugin model', 11, 'add_aliaspluginmodel'),
(36, 'Can change alias plugin model', 11, 'change_aliaspluginmodel'),
(37, 'Can delete alias plugin model', 11, 'delete_aliaspluginmodel'),
(38, 'Can view alias plugin model', 11, 'view_aliaspluginmodel'),
(39, 'Can add Page global permission', 12, 'add_globalpagepermission'),
(40, 'Can change Page global permission', 12, 'change_globalpagepermission'),
(41, 'Can delete Page global permission', 12, 'delete_globalpagepermission'),
(42, 'Can view Page global permission', 12, 'view_globalpagepermission'),
(43, 'Can add page', 2, 'add_page'),
(44, 'Can delete page', 2, 'delete_page'),
(45, 'Can view page', 2, 'view_page'),
(46, 'Can publish page', 2, 'publish_page'),
(47, 'Can edit static placeholders', 2, 'edit_static_placeholder'),
(48, 'Can add Page permission', 13, 'add_pagepermission'),
(49, 'Can change Page permission', 13, 'change_pagepermission'),
(50, 'Can delete Page permission', 13, 'delete_pagepermission'),
(51, 'Can view Page permission', 13, 'view_pagepermission'),
(52, 'Can add User (page)', 14, 'add_pageuser'),
(53, 'Can change User (page)', 14, 'change_pageuser'),
(54, 'Can delete User (page)', 14, 'delete_pageuser'),
(55, 'Can view User (page)', 14, 'view_pageuser'),
(56, 'Can add User group (page)', 15, 'add_pageusergroup'),
(57, 'Can change User group (page)', 15, 'change_pageusergroup'),
(58, 'Can delete User group (page)', 15, 'delete_pageusergroup'),
(59, 'Can view User group (page)', 15, 'view_pageusergroup'),
(60, 'Can add placeholder', 1, 'add_placeholder'),
(61, 'Can change placeholder', 1, 'change_placeholder'),
(62, 'Can delete placeholder', 1, 'delete_placeholder'),
(63, 'Can view placeholder', 1, 'view_placeholder'),
(64, 'Can add placeholder reference', 16, 'add_placeholderreference'),
(65, 'Can change placeholder reference', 16, 'change_placeholderreference'),
(66, 'Can delete placeholder reference', 16, 'delete_placeholderreference'),
(67, 'Can view placeholder reference', 16, 'view_placeholderreference'),
(68, 'Can add static placeholder', 17, 'add_staticplaceholder'),
(69, 'Can change static placeholder', 17, 'change_staticplaceholder'),
(70, 'Can delete static placeholder', 17, 'delete_staticplaceholder'),
(71, 'Can view static placeholder', 17, 'view_staticplaceholder'),
(72, 'Can add title', 18, 'add_title'),
(73, 'Can change title', 18, 'change_title'),
(74, 'Can delete title', 18, 'delete_title'),
(75, 'Can view title', 18, 'view_title'),
(76, 'Can add user setting', 19, 'add_usersettings'),
(77, 'Can change user setting', 19, 'change_usersettings'),
(78, 'Can delete user setting', 19, 'delete_usersettings'),
(79, 'Can view user setting', 19, 'view_usersettings'),
(80, 'Can add urlconf revision', 20, 'add_urlconfrevision'),
(81, 'Can change urlconf revision', 20, 'change_urlconfrevision'),
(82, 'Can delete urlconf revision', 20, 'delete_urlconfrevision'),
(83, 'Can view urlconf revision', 20, 'view_urlconfrevision'),
(84, 'Can add cache key', 23, 'add_cachekey'),
(85, 'Can change cache key', 23, 'change_cachekey'),
(86, 'Can delete cache key', 23, 'delete_cachekey'),
(87, 'Can view cache key', 23, 'view_cachekey'),
(88, 'Can add text', 24, 'add_text'),
(89, 'Can change text', 24, 'change_text'),
(90, 'Can delete text', 24, 'delete_text'),
(91, 'Can view text', 24, 'view_text'),
(92, 'Can add clipboard', 25, 'add_clipboard'),
(93, 'Can change clipboard', 25, 'change_clipboard'),
(94, 'Can delete clipboard', 25, 'delete_clipboard'),
(95, 'Can view clipboard', 25, 'view_clipboard'),
(96, 'Can add clipboard item', 26, 'add_clipboarditem'),
(97, 'Can change clipboard item', 26, 'change_clipboarditem'),
(98, 'Can delete clipboard item', 26, 'delete_clipboarditem'),
(99, 'Can view clipboard item', 26, 'view_clipboarditem'),
(100, 'Can add file', 27, 'add_file'),
(101, 'Can change file', 27, 'change_file'),
(102, 'Can delete file', 27, 'delete_file'),
(103, 'Can view file', 27, 'view_file'),
(104, 'Can add Folder', 28, 'add_folder'),
(105, 'Can change Folder', 28, 'change_folder'),
(106, 'Can delete Folder', 28, 'delete_folder'),
(107, 'Can view Folder', 28, 'view_folder'),
(108, 'Can use directory listing', 28, 'can_use_directory_listing'),
(109, 'Can add folder permission', 29, 'add_folderpermission'),
(110, 'Can change folder permission', 29, 'change_folderpermission'),
(111, 'Can delete folder permission', 29, 'delete_folderpermission'),
(112, 'Can view folder permission', 29, 'view_folderpermission'),
(113, 'Can add image', 30, 'add_image'),
(114, 'Can change image', 30, 'change_image'),
(115, 'Can delete image', 30, 'delete_image'),
(116, 'Can view image', 30, 'view_image'),
(117, 'Can add thumbnail option', 31, 'add_thumbnailoption'),
(118, 'Can change thumbnail option', 31, 'change_thumbnailoption'),
(119, 'Can delete thumbnail option', 31, 'delete_thumbnailoption'),
(120, 'Can view thumbnail option', 31, 'view_thumbnailoption'),
(121, 'Can add source', 32, 'add_source'),
(122, 'Can change source', 32, 'change_source'),
(123, 'Can delete source', 32, 'delete_source'),
(124, 'Can view source', 32, 'view_source'),
(125, 'Can add thumbnail', 33, 'add_thumbnail'),
(126, 'Can change thumbnail', 33, 'change_thumbnail'),
(127, 'Can delete thumbnail', 33, 'delete_thumbnail'),
(128, 'Can view thumbnail', 33, 'view_thumbnail'),
(129, 'Can add thumbnail dimensions', 34, 'add_thumbnaildimensions'),
(130, 'Can change thumbnail dimensions', 34, 'change_thumbnaildimensions'),
(131, 'Can delete thumbnail dimensions', 34, 'delete_thumbnaildimensions'),
(132, 'Can view thumbnail dimensions', 34, 'view_thumbnaildimensions'),
(133, 'Can add about us plugin', 35, 'add_aboutusplugin'),
(134, 'Can change about us plugin', 35, 'change_aboutusplugin'),
(135, 'Can delete about us plugin', 35, 'delete_aboutusplugin'),
(136, 'Can view about us plugin', 35, 'view_aboutusplugin'),
(137, 'Can add Category', 36, 'add_category'),
(138, 'Can change Category', 36, 'change_category'),
(139, 'Can delete Category', 36, 'delete_category'),
(140, 'Can view Category', 36, 'view_category'),
(141, 'Can add category panel plugin', 37, 'add_categorypanelplugin'),
(142, 'Can change category panel plugin', 37, 'change_categorypanelplugin'),
(143, 'Can delete category panel plugin', 37, 'delete_categorypanelplugin'),
(144, 'Can view category panel plugin', 37, 'view_categorypanelplugin'),
(145, 'Can add category plugin', 38, 'add_categoryplugin'),
(146, 'Can change category plugin', 38, 'change_categoryplugin'),
(147, 'Can delete category plugin', 38, 'delete_categoryplugin'),
(148, 'Can view category plugin', 38, 'view_categoryplugin'),
(149, 'Can add Contact Us', 39, 'add_contactus'),
(150, 'Can change Contact Us', 39, 'change_contactus'),
(151, 'Can delete Contact Us', 39, 'delete_contactus'),
(152, 'Can view Contact Us', 39, 'view_contactus'),
(153, 'Can add contact us plugin', 40, 'add_contactusplugin'),
(154, 'Can change contact us plugin', 40, 'change_contactusplugin'),
(155, 'Can delete contact us plugin', 40, 'delete_contactusplugin'),
(156, 'Can view contact us plugin', 40, 'view_contactusplugin'),
(157, 'Can add container plugin', 41, 'add_containerplugin'),
(158, 'Can change container plugin', 41, 'change_containerplugin'),
(159, 'Can delete container plugin', 41, 'delete_containerplugin'),
(160, 'Can view container plugin', 41, 'view_containerplugin'),
(161, 'Can add favorite plugin', 42, 'add_favoriteplugin'),
(162, 'Can change favorite plugin', 42, 'change_favoriteplugin'),
(163, 'Can delete favorite plugin', 42, 'delete_favoriteplugin'),
(164, 'Can view favorite plugin', 42, 'view_favoriteplugin'),
(165, 'Can add fetch ringtone plugin', 43, 'add_fetchringtoneplugin'),
(166, 'Can change fetch ringtone plugin', 43, 'change_fetchringtoneplugin'),
(167, 'Can delete fetch ringtone plugin', 43, 'delete_fetchringtoneplugin'),
(168, 'Can view fetch ringtone plugin', 43, 'view_fetchringtoneplugin'),
(169, 'Can add Footer', 44, 'add_footerplugin'),
(170, 'Can change Footer', 44, 'change_footerplugin'),
(171, 'Can delete Footer', 44, 'delete_footerplugin'),
(172, 'Can view Footer', 44, 'view_footerplugin'),
(173, 'Can add Page ID', 45, 'add_pageids'),
(174, 'Can change Page ID', 45, 'change_pageids'),
(175, 'Can delete Page ID', 45, 'delete_pageids'),
(176, 'Can view Page ID', 45, 'view_pageids'),
(177, 'Can add Ringtone', 46, 'add_ringtone'),
(178, 'Can change Ringtone', 46, 'change_ringtone'),
(179, 'Can delete Ringtone', 46, 'delete_ringtone'),
(180, 'Can view Ringtone', 46, 'view_ringtone'),
(181, 'Can add SEO Tool', 47, 'add_seotool'),
(182, 'Can change SEO Tool', 47, 'change_seotool'),
(183, 'Can delete SEO Tool', 47, 'delete_seotool'),
(184, 'Can view SEO Tool', 47, 'view_seotool'),
(185, 'Can add single favorite plugin', 48, 'add_singlefavoriteplugin'),
(186, 'Can change single favorite plugin', 48, 'change_singlefavoriteplugin'),
(187, 'Can delete single favorite plugin', 48, 'delete_singlefavoriteplugin'),
(188, 'Can view single favorite plugin', 48, 'view_singlefavoriteplugin'),
(189, 'Can add site config', 49, 'add_siteconfig'),
(190, 'Can change site config', 49, 'change_siteconfig'),
(191, 'Can delete site config', 49, 'delete_siteconfig'),
(192, 'Can view site config', 49, 'view_siteconfig'),
(193, 'Can add top50', 50, 'add_top50'),
(194, 'Can change top50', 50, 'change_top50'),
(195, 'Can delete top50', 50, 'delete_top50'),
(196, 'Can view top50', 50, 'view_top50'),
(197, 'Can add single ringtone plugin', 51, 'add_singleringtoneplugin'),
(198, 'Can change single ringtone plugin', 51, 'change_singleringtoneplugin'),
(199, 'Can delete single ringtone plugin', 51, 'delete_singleringtoneplugin'),
(200, 'Can view single ringtone plugin', 51, 'view_singleringtoneplugin'),
(201, 'Can add Meta field', 52, 'add_metamodel'),
(202, 'Can change Meta field', 52, 'change_metamodel'),
(203, 'Can delete Meta field', 52, 'delete_metamodel'),
(204, 'Can view Meta field', 52, 'view_metamodel'),
(205, 'Can add Link field', 53, 'add_linkmodel'),
(206, 'Can change Link field', 53, 'change_linkmodel'),
(207, 'Can delete Link field', 53, 'delete_linkmodel'),
(208, 'Can view Link field', 53, 'view_linkmodel'),
(209, 'Can add Footer hyperlink', 54, 'add_footerhyperlink'),
(210, 'Can change Footer hyperlink', 54, 'change_footerhyperlink'),
(211, 'Can delete Footer hyperlink', 54, 'delete_footerhyperlink'),
(212, 'Can view Footer hyperlink', 54, 'view_footerhyperlink'),
(213, 'Can add redirect', 55, 'add_redirect'),
(214, 'Can change redirect', 55, 'change_redirect'),
(215, 'Can delete redirect', 55, 'delete_redirect'),
(216, 'Can view redirect', 55, 'view_redirect'),
(217, 'Can add rule', 56, 'add_rule'),
(218, 'Can change rule', 56, 'change_rule'),
(219, 'Can delete rule', 56, 'delete_rule'),
(220, 'Can view rule', 56, 'view_rule'),
(221, 'Can add bootstrap4 alerts', 57, 'add_bootstrap4alerts'),
(222, 'Can change bootstrap4 alerts', 57, 'change_bootstrap4alerts'),
(223, 'Can delete bootstrap4 alerts', 57, 'delete_bootstrap4alerts'),
(224, 'Can view bootstrap4 alerts', 57, 'view_bootstrap4alerts'),
(225, 'Can add bootstrap4 badge', 58, 'add_bootstrap4badge'),
(226, 'Can change bootstrap4 badge', 58, 'change_bootstrap4badge'),
(227, 'Can delete bootstrap4 badge', 58, 'delete_bootstrap4badge'),
(228, 'Can view bootstrap4 badge', 58, 'view_bootstrap4badge'),
(229, 'Can add bootstrap4 card', 59, 'add_bootstrap4card'),
(230, 'Can change bootstrap4 card', 59, 'change_bootstrap4card'),
(231, 'Can delete bootstrap4 card', 59, 'delete_bootstrap4card'),
(232, 'Can view bootstrap4 card', 59, 'view_bootstrap4card'),
(233, 'Can add bootstrap4 card inner', 60, 'add_bootstrap4cardinner'),
(234, 'Can change bootstrap4 card inner', 60, 'change_bootstrap4cardinner'),
(235, 'Can delete bootstrap4 card inner', 60, 'delete_bootstrap4cardinner'),
(236, 'Can view bootstrap4 card inner', 60, 'view_bootstrap4cardinner'),
(237, 'Can add bootstrap4 carousel', 61, 'add_bootstrap4carousel'),
(238, 'Can change bootstrap4 carousel', 61, 'change_bootstrap4carousel'),
(239, 'Can delete bootstrap4 carousel', 61, 'delete_bootstrap4carousel'),
(240, 'Can view bootstrap4 carousel', 61, 'view_bootstrap4carousel'),
(241, 'Can add bootstrap4 carousel slide', 62, 'add_bootstrap4carouselslide'),
(242, 'Can change bootstrap4 carousel slide', 62, 'change_bootstrap4carouselslide'),
(243, 'Can delete bootstrap4 carousel slide', 62, 'delete_bootstrap4carouselslide'),
(244, 'Can view bootstrap4 carousel slide', 62, 'view_bootstrap4carouselslide'),
(245, 'Can add bootstrap4 collapse', 63, 'add_bootstrap4collapse'),
(246, 'Can change bootstrap4 collapse', 63, 'change_bootstrap4collapse'),
(247, 'Can delete bootstrap4 collapse', 63, 'delete_bootstrap4collapse'),
(248, 'Can view bootstrap4 collapse', 63, 'view_bootstrap4collapse'),
(249, 'Can add bootstrap4 collapse container', 64, 'add_bootstrap4collapsecontainer'),
(250, 'Can change bootstrap4 collapse container', 64, 'change_bootstrap4collapsecontainer'),
(251, 'Can delete bootstrap4 collapse container', 64, 'delete_bootstrap4collapsecontainer'),
(252, 'Can view bootstrap4 collapse container', 64, 'view_bootstrap4collapsecontainer'),
(253, 'Can add bootstrap4 collapse trigger', 65, 'add_bootstrap4collapsetrigger'),
(254, 'Can change bootstrap4 collapse trigger', 65, 'change_bootstrap4collapsetrigger'),
(255, 'Can delete bootstrap4 collapse trigger', 65, 'delete_bootstrap4collapsetrigger'),
(256, 'Can view bootstrap4 collapse trigger', 65, 'view_bootstrap4collapsetrigger'),
(257, 'Can add bootstrap4 blockquote', 66, 'add_bootstrap4blockquote'),
(258, 'Can change bootstrap4 blockquote', 66, 'change_bootstrap4blockquote'),
(259, 'Can delete bootstrap4 blockquote', 66, 'delete_bootstrap4blockquote'),
(260, 'Can view bootstrap4 blockquote', 66, 'view_bootstrap4blockquote'),
(261, 'Can add bootstrap4 code', 67, 'add_bootstrap4code'),
(262, 'Can change bootstrap4 code', 67, 'change_bootstrap4code'),
(263, 'Can delete bootstrap4 code', 67, 'delete_bootstrap4code'),
(264, 'Can view bootstrap4 code', 67, 'view_bootstrap4code'),
(265, 'Can add bootstrap4 figure', 68, 'add_bootstrap4figure'),
(266, 'Can change bootstrap4 figure', 68, 'change_bootstrap4figure'),
(267, 'Can delete bootstrap4 figure', 68, 'delete_bootstrap4figure'),
(268, 'Can view bootstrap4 figure', 68, 'view_bootstrap4figure'),
(269, 'Can add bootstrap4 grid column', 69, 'add_bootstrap4gridcolumn'),
(270, 'Can change bootstrap4 grid column', 69, 'change_bootstrap4gridcolumn'),
(271, 'Can delete bootstrap4 grid column', 69, 'delete_bootstrap4gridcolumn'),
(272, 'Can view bootstrap4 grid column', 69, 'view_bootstrap4gridcolumn'),
(273, 'Can add bootstrap4 grid container', 70, 'add_bootstrap4gridcontainer'),
(274, 'Can change bootstrap4 grid container', 70, 'change_bootstrap4gridcontainer'),
(275, 'Can delete bootstrap4 grid container', 70, 'delete_bootstrap4gridcontainer'),
(276, 'Can view bootstrap4 grid container', 70, 'view_bootstrap4gridcontainer'),
(277, 'Can add bootstrap4 grid row', 71, 'add_bootstrap4gridrow'),
(278, 'Can change bootstrap4 grid row', 71, 'change_bootstrap4gridrow'),
(279, 'Can delete bootstrap4 grid row', 71, 'delete_bootstrap4gridrow'),
(280, 'Can view bootstrap4 grid row', 71, 'view_bootstrap4gridrow'),
(281, 'Can add bootstrap4 jumbotron', 72, 'add_bootstrap4jumbotron'),
(282, 'Can change bootstrap4 jumbotron', 72, 'change_bootstrap4jumbotron'),
(283, 'Can delete bootstrap4 jumbotron', 72, 'delete_bootstrap4jumbotron'),
(284, 'Can view bootstrap4 jumbotron', 72, 'view_bootstrap4jumbotron'),
(285, 'Can add bootstrap4 link', 73, 'add_bootstrap4link'),
(286, 'Can change bootstrap4 link', 73, 'change_bootstrap4link'),
(287, 'Can delete bootstrap4 link', 73, 'delete_bootstrap4link'),
(288, 'Can view bootstrap4 link', 73, 'view_bootstrap4link'),
(289, 'Can add bootstrap4 list group', 74, 'add_bootstrap4listgroup'),
(290, 'Can change bootstrap4 list group', 74, 'change_bootstrap4listgroup'),
(291, 'Can delete bootstrap4 list group', 74, 'delete_bootstrap4listgroup'),
(292, 'Can view bootstrap4 list group', 74, 'view_bootstrap4listgroup'),
(293, 'Can add bootstrap4 list group item', 75, 'add_bootstrap4listgroupitem'),
(294, 'Can change bootstrap4 list group item', 75, 'change_bootstrap4listgroupitem'),
(295, 'Can delete bootstrap4 list group item', 75, 'delete_bootstrap4listgroupitem'),
(296, 'Can view bootstrap4 list group item', 75, 'view_bootstrap4listgroupitem'),
(297, 'Can add bootstrap4 media', 76, 'add_bootstrap4media'),
(298, 'Can change bootstrap4 media', 76, 'change_bootstrap4media'),
(299, 'Can delete bootstrap4 media', 76, 'delete_bootstrap4media'),
(300, 'Can view bootstrap4 media', 76, 'view_bootstrap4media'),
(301, 'Can add bootstrap4 media body', 77, 'add_bootstrap4mediabody'),
(302, 'Can change bootstrap4 media body', 77, 'change_bootstrap4mediabody'),
(303, 'Can delete bootstrap4 media body', 77, 'delete_bootstrap4mediabody'),
(304, 'Can view bootstrap4 media body', 77, 'view_bootstrap4mediabody'),
(305, 'Can add bootstrap4 picture', 78, 'add_bootstrap4picture'),
(306, 'Can change bootstrap4 picture', 78, 'change_bootstrap4picture'),
(307, 'Can delete bootstrap4 picture', 78, 'delete_bootstrap4picture'),
(308, 'Can view bootstrap4 picture', 78, 'view_bootstrap4picture'),
(309, 'Can add bootstrap4 tab', 79, 'add_bootstrap4tab'),
(310, 'Can change bootstrap4 tab', 79, 'change_bootstrap4tab'),
(311, 'Can delete bootstrap4 tab', 79, 'delete_bootstrap4tab'),
(312, 'Can view bootstrap4 tab', 79, 'view_bootstrap4tab'),
(313, 'Can add bootstrap4 tab item', 80, 'add_bootstrap4tabitem'),
(314, 'Can change bootstrap4 tab item', 80, 'change_bootstrap4tabitem'),
(315, 'Can delete bootstrap4 tab item', 80, 'delete_bootstrap4tabitem'),
(316, 'Can view bootstrap4 tab item', 80, 'view_bootstrap4tabitem'),
(317, 'Can add bootstrap4 spacing', 81, 'add_bootstrap4spacing'),
(318, 'Can change bootstrap4 spacing', 81, 'change_bootstrap4spacing'),
(319, 'Can delete bootstrap4 spacing', 81, 'delete_bootstrap4spacing'),
(320, 'Can view bootstrap4 spacing', 81, 'view_bootstrap4spacing'),
(321, 'Can add icon', 82, 'add_icon'),
(322, 'Can change icon', 82, 'change_icon'),
(323, 'Can delete icon', 82, 'delete_icon'),
(324, 'Can view icon', 82, 'view_icon'),
(325, 'Can add link', 83, 'add_link'),
(326, 'Can change link', 83, 'change_link'),
(327, 'Can delete link', 83, 'delete_link'),
(328, 'Can view link', 83, 'view_link'),
(329, 'Can add picture', 84, 'add_picture'),
(330, 'Can change picture', 84, 'change_picture'),
(331, 'Can delete picture', 84, 'delete_picture'),
(332, 'Can view picture', 84, 'view_picture'),
(333, 'Can add style', 85, 'add_style'),
(334, 'Can change style', 85, 'change_style'),
(335, 'Can delete style', 85, 'delete_style'),
(336, 'Can view style', 85, 'view_style'),
(337, 'Can add google map', 86, 'add_googlemap'),
(338, 'Can change google map', 86, 'change_googlemap'),
(339, 'Can delete google map', 86, 'delete_googlemap'),
(340, 'Can view google map', 86, 'view_googlemap'),
(341, 'Can add google map marker', 87, 'add_googlemapmarker'),
(342, 'Can change google map marker', 87, 'change_googlemapmarker'),
(343, 'Can delete google map marker', 87, 'delete_googlemapmarker'),
(344, 'Can view google map marker', 87, 'view_googlemapmarker'),
(345, 'Can add google map route', 88, 'add_googlemaproute'),
(346, 'Can change google map route', 88, 'change_googlemaproute'),
(347, 'Can delete google map route', 88, 'delete_googlemaproute'),
(348, 'Can view google map route', 88, 'view_googlemaproute'),
(349, 'Can add container plugin v2', 89, 'add_containerpluginv2'),
(350, 'Can change container plugin v2', 89, 'change_containerpluginv2'),
(351, 'Can delete container plugin v2', 89, 'delete_containerpluginv2'),
(352, 'Can view container plugin v2', 89, 'view_containerpluginv2'),
(353, 'Can add limitation object', 90, 'add_limitationobject'),
(354, 'Can change limitation object', 90, 'change_limitationobject'),
(355, 'Can delete limitation object', 90, 'delete_limitationobject'),
(356, 'Can view limitation object', 90, 'view_limitationobject');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$rVRpUwH3KPe1$s0oOISozJZqWtaOfNyoPWtcSsNIm2QZucQml1J4rb8w=', '2021-12-18 06:45:35.123434', 1, 'ringtonefly', '', '', 'admin@ringtonefly.com', 1, 1, '2021-06-05 10:26:07.636933');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bootstrap4_alerts_bootstrap4alerts`
--

CREATE TABLE `bootstrap4_alerts_bootstrap4alerts` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `alert_context` varchar(255) NOT NULL,
  `alert_dismissable` tinyint(1) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bootstrap4_badge_bootstrap4badge`
--

CREATE TABLE `bootstrap4_badge_bootstrap4badge` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `badge_text` varchar(255) NOT NULL,
  `badge_context` varchar(255) NOT NULL,
  `badge_pills` tinyint(1) NOT NULL,
  `attributes` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bootstrap4_card_bootstrap4card`
--

CREATE TABLE `bootstrap4_card_bootstrap4card` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `card_type` varchar(255) NOT NULL,
  `card_context` varchar(255) NOT NULL,
  `card_alignment` varchar(255) NOT NULL,
  `card_outline` tinyint(1) NOT NULL,
  `card_text_color` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bootstrap4_card_bootstrap4cardinner`
--

CREATE TABLE `bootstrap4_card_bootstrap4cardinner` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `inner_type` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bootstrap4_carousel_bootstrap4carousel`
--

CREATE TABLE `bootstrap4_carousel_bootstrap4carousel` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `template` varchar(255) NOT NULL,
  `carousel_interval` int(11) NOT NULL,
  `carousel_controls` tinyint(1) NOT NULL,
  `carousel_indicators` tinyint(1) NOT NULL,
  `carousel_keyboard` tinyint(1) NOT NULL,
  `carousel_pause` varchar(255) NOT NULL,
  `carousel_ride` varchar(255) NOT NULL,
  `carousel_wrap` tinyint(1) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  `carousel_aspect_ratio` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bootstrap4_carousel_bootstrap4carouselslide`
--

CREATE TABLE `bootstrap4_carousel_bootstrap4carouselslide` (
  `template` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `external_link` varchar(2040) NOT NULL,
  `anchor` varchar(255) NOT NULL,
  `mailto` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `carousel_content` longtext NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `carousel_image_id` int(11) DEFAULT NULL,
  `internal_link_id` int(11) DEFAULT NULL,
  `file_link_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bootstrap4_collapse_bootstrap4collapse`
--

CREATE TABLE `bootstrap4_collapse_bootstrap4collapse` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `siblings` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bootstrap4_collapse_bootstrap4collapsecontainer`
--

CREATE TABLE `bootstrap4_collapse_bootstrap4collapsecontainer` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bootstrap4_collapse_bootstrap4collapsetrigger`
--

CREATE TABLE `bootstrap4_collapse_bootstrap4collapsetrigger` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bootstrap4_content_bootstrap4blockquote`
--

CREATE TABLE `bootstrap4_content_bootstrap4blockquote` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `quote_content` longtext NOT NULL,
  `quote_origin` longtext NOT NULL,
  `quote_alignment` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bootstrap4_content_bootstrap4code`
--

CREATE TABLE `bootstrap4_content_bootstrap4code` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `code_content` longtext NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bootstrap4_content_bootstrap4figure`
--

CREATE TABLE `bootstrap4_content_bootstrap4figure` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `figure_caption` varchar(255) NOT NULL,
  `figure_alignment` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bootstrap4_grid_bootstrap4gridcolumn`
--

CREATE TABLE `bootstrap4_grid_bootstrap4gridcolumn` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `column_type` varchar(255) NOT NULL,
  `column_alignment` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  `xs_col` int(11) DEFAULT NULL,
  `xs_order` int(11) DEFAULT NULL,
  `xs_ml` tinyint(1) NOT NULL,
  `xs_mr` tinyint(1) NOT NULL,
  `sm_col` int(11) DEFAULT NULL,
  `sm_order` int(11) DEFAULT NULL,
  `sm_ml` tinyint(1) NOT NULL,
  `sm_mr` tinyint(1) NOT NULL,
  `md_col` int(11) DEFAULT NULL,
  `md_order` int(11) DEFAULT NULL,
  `md_ml` tinyint(1) NOT NULL,
  `md_mr` tinyint(1) NOT NULL,
  `lg_col` int(11) DEFAULT NULL,
  `lg_order` int(11) DEFAULT NULL,
  `lg_ml` tinyint(1) NOT NULL,
  `lg_mr` tinyint(1) NOT NULL,
  `xl_col` int(11) DEFAULT NULL,
  `xl_order` int(11) DEFAULT NULL,
  `xl_ml` tinyint(1) NOT NULL,
  `xl_mr` tinyint(1) NOT NULL,
  `lg_offset` int(11) DEFAULT NULL,
  `md_offset` int(11) DEFAULT NULL,
  `sm_offset` int(11) DEFAULT NULL,
  `xl_offset` int(11) DEFAULT NULL,
  `xs_offset` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bootstrap4_grid_bootstrap4gridcontainer`
--

CREATE TABLE `bootstrap4_grid_bootstrap4gridcontainer` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `container_type` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bootstrap4_grid_bootstrap4gridrow`
--

CREATE TABLE `bootstrap4_grid_bootstrap4gridrow` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `vertical_alignment` varchar(255) NOT NULL,
  `horizontal_alignment` varchar(255) NOT NULL,
  `gutters` tinyint(1) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bootstrap4_jumbotron_bootstrap4jumbotron`
--

CREATE TABLE `bootstrap4_jumbotron_bootstrap4jumbotron` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `fluid` tinyint(1) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bootstrap4_link_bootstrap4link`
--

CREATE TABLE `bootstrap4_link_bootstrap4link` (
  `template` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `external_link` varchar(2040) NOT NULL,
  `anchor` varchar(255) NOT NULL,
  `mailto` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `link_type` varchar(255) NOT NULL,
  `link_context` varchar(255) NOT NULL,
  `link_size` varchar(255) NOT NULL,
  `link_outline` tinyint(1) NOT NULL,
  `link_block` tinyint(1) NOT NULL,
  `internal_link_id` int(11) DEFAULT NULL,
  `icon_left` varchar(255) NOT NULL,
  `icon_right` varchar(255) NOT NULL,
  `file_link_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bootstrap4_listgroup_bootstrap4listgroup`
--

CREATE TABLE `bootstrap4_listgroup_bootstrap4listgroup` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `list_group_flush` tinyint(1) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bootstrap4_listgroup_bootstrap4listgroupitem`
--

CREATE TABLE `bootstrap4_listgroup_bootstrap4listgroupitem` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `list_context` varchar(255) NOT NULL,
  `list_state` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bootstrap4_media_bootstrap4media`
--

CREATE TABLE `bootstrap4_media_bootstrap4media` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bootstrap4_media_bootstrap4mediabody`
--

CREATE TABLE `bootstrap4_media_bootstrap4mediabody` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bootstrap4_picture_bootstrap4picture`
--

CREATE TABLE `bootstrap4_picture_bootstrap4picture` (
  `template` varchar(255) NOT NULL,
  `external_picture` varchar(255) DEFAULT NULL,
  `width` int(10) UNSIGNED DEFAULT NULL CHECK (`width` >= 0),
  `height` int(10) UNSIGNED DEFAULT NULL CHECK (`height` >= 0),
  `alignment` varchar(255) NOT NULL,
  `caption_text` longtext DEFAULT NULL,
  `attributes` longtext NOT NULL,
  `link_url` varchar(2040) DEFAULT NULL,
  `link_target` varchar(255) NOT NULL,
  `link_attributes` longtext NOT NULL,
  `use_automatic_scaling` tinyint(1) NOT NULL,
  `use_no_cropping` tinyint(1) NOT NULL,
  `use_crop` tinyint(1) NOT NULL,
  `use_upscale` tinyint(1) NOT NULL,
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `picture_fluid` tinyint(1) NOT NULL,
  `picture_rounded` tinyint(1) NOT NULL,
  `picture_thumbnail` tinyint(1) NOT NULL,
  `link_page_id` int(11) DEFAULT NULL,
  `picture_id` int(11) DEFAULT NULL,
  `thumbnail_options_id` int(11) DEFAULT NULL,
  `use_responsive_image` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bootstrap4_tabs_bootstrap4tab`
--

CREATE TABLE `bootstrap4_tabs_bootstrap4tab` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `template` varchar(255) NOT NULL,
  `tab_type` varchar(255) NOT NULL,
  `tab_alignment` varchar(255) NOT NULL,
  `tab_index` int(10) UNSIGNED DEFAULT NULL CHECK (`tab_index` >= 0),
  `tab_effect` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bootstrap4_tabs_bootstrap4tabitem`
--

CREATE TABLE `bootstrap4_tabs_bootstrap4tabitem` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `tab_title` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bootstrap4_utilities_bootstrap4spacing`
--

CREATE TABLE `bootstrap4_utilities_bootstrap4spacing` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `space_property` varchar(255) NOT NULL,
  `space_sides` varchar(255) NOT NULL,
  `space_size` varchar(255) NOT NULL,
  `space_device` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cms_aliaspluginmodel`
--

CREATE TABLE `cms_aliaspluginmodel` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `plugin_id` int(11) DEFAULT NULL,
  `alias_placeholder_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cms_cmsplugin`
--

CREATE TABLE `cms_cmsplugin` (
  `id` int(11) NOT NULL,
  `position` smallint(5) UNSIGNED NOT NULL,
  `language` varchar(15) NOT NULL,
  `plugin_type` varchar(50) NOT NULL,
  `creation_date` datetime(6) NOT NULL,
  `changed_date` datetime(6) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `placeholder_id` int(11) DEFAULT NULL,
  `depth` int(10) UNSIGNED NOT NULL CHECK (`depth` >= 0),
  `numchild` int(10) UNSIGNED NOT NULL CHECK (`numchild` >= 0),
  `path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_cmsplugin`
--

INSERT INTO `cms_cmsplugin` (`id`, `position`, `language`, `plugin_type`, `creation_date`, `changed_date`, `parent_id`, `placeholder_id`, `depth`, `numchild`, `path`) VALUES
(13, 0, '', '', '2021-06-05 11:14:15.368106', '2021-10-25 06:23:10.886044', NULL, NULL, 1, 0, '000D'),
(16, 1, 'en', 'Favorite', '2021-06-05 13:25:04.241676', '2021-12-14 04:01:16.408468', NULL, 2, 1, 0, '000G'),
(26, 3, 'en', 'Container', '2021-06-05 13:49:30.422526', '2021-09-18 08:07:16.788326', NULL, 2, 1, 0, '0075'),
(29, 2, 'en', 'CategoryPanel', '2021-06-05 14:05:29.468525', '2021-06-05 14:05:29.473001', NULL, 2, 1, 0, '000T'),
(33, 0, '', '', '2021-06-05 14:58:03.406457', '2021-07-21 14:55:44.712777', NULL, NULL, 1, 0, '000Y'),
(34, 0, 'en', 'AboutUs', '2021-06-05 18:02:12.336058', '2021-09-05 12:53:58.263879', NULL, 4, 1, 0, '000Z'),
(35, 0, 'en', 'ContactUs', '2021-06-05 18:04:59.289486', '2021-07-21 14:52:39.432026', NULL, 5, 1, 0, '0010'),
(66, 1, 'en', 'FetchRingtone', '2021-06-06 16:37:42.723147', '2021-06-06 16:37:42.726734', NULL, 20, 1, 0, '0017'),
(67, 2, 'en', 'CategoryPanel', '2021-06-06 16:37:42.734431', '2021-06-06 16:37:42.737889', NULL, 20, 1, 0, '0018'),
(71, 0, 'en', 'SingleRingtone', '2021-06-06 16:51:43.871949', '2021-06-06 16:51:43.875649', NULL, 23, 1, 0, '001C'),
(72, 1, 'en', 'SingleFavorite', '2021-06-06 16:51:43.881395', '2021-06-06 16:51:43.884508', NULL, 23, 1, 0, '001D'),
(73, 0, 'en', 'SingleRingtone', '2021-06-06 16:51:43.871949', '2021-06-06 16:53:04.892023', NULL, 24, 1, 0, '001E'),
(74, 1, 'en', 'SingleFavorite', '2021-06-06 16:51:43.881395', '2021-06-06 16:53:04.901440', NULL, 24, 1, 0, '001F'),
(75, 3, 'en', 'Container', '2021-06-06 17:18:08.661247', '2021-08-27 12:19:20.745345', NULL, 20, 1, 0, '001G'),
(87, 0, 'en', 'SingleRingtone', '2021-06-06 19:11:05.384269', '2021-06-06 19:11:05.387807', NULL, 25, 1, 0, '001S'),
(88, 1, 'en', 'SingleFavorite', '2021-06-06 19:11:05.393004', '2021-06-06 19:11:05.396393', NULL, 25, 1, 0, '001T'),
(89, 0, 'en', 'SingleRingtone', '2021-06-06 19:11:05.384269', '2021-06-06 19:12:01.682874', NULL, 26, 1, 0, '001U'),
(90, 1, 'en', 'SingleFavorite', '2021-06-06 19:11:05.393004', '2021-06-06 19:12:01.691704', NULL, 26, 1, 0, '001V'),
(91, 0, 'en', 'SingleRingtone', '2021-06-06 19:18:20.233395', '2021-06-06 19:18:20.236960', NULL, 27, 1, 0, '001W'),
(92, 1, 'en', 'SingleFavorite', '2021-06-06 19:18:20.242762', '2021-06-06 19:18:20.246104', NULL, 27, 1, 0, '001X'),
(93, 0, 'en', 'SingleRingtone', '2021-06-06 19:18:20.233395', '2021-06-06 19:20:26.509994', NULL, 28, 1, 0, '001Y'),
(94, 1, 'en', 'SingleFavorite', '2021-06-06 19:18:20.242762', '2021-06-06 19:20:26.518508', NULL, 28, 1, 0, '001Z'),
(96, 0, 'en', 'SingleRingtone', '2021-06-06 19:27:59.302260', '2021-06-06 19:27:59.305680', NULL, 29, 1, 0, '0021'),
(97, 1, 'en', 'SingleFavorite', '2021-06-06 19:27:59.310939', '2021-06-06 19:27:59.314065', NULL, 29, 1, 0, '0022'),
(98, 0, 'en', 'SingleRingtone', '2021-06-06 19:27:59.302260', '2021-06-06 19:28:37.201353', NULL, 30, 1, 0, '0023'),
(99, 1, 'en', 'SingleFavorite', '2021-06-06 19:27:59.310939', '2021-06-06 19:28:37.205809', NULL, 30, 1, 0, '0024'),
(100, 0, 'en', 'SingleRingtone', '2021-06-06 19:37:00.439593', '2021-06-06 19:37:00.443842', NULL, 31, 1, 0, '0025'),
(101, 1, 'en', 'SingleFavorite', '2021-06-06 19:37:00.449948', '2021-06-06 19:37:00.453121', NULL, 31, 1, 0, '0026'),
(102, 0, 'en', 'SingleRingtone', '2021-06-06 19:37:00.439593', '2021-06-06 19:37:54.082396', NULL, 32, 1, 0, '0027'),
(103, 1, 'en', 'SingleFavorite', '2021-06-06 19:37:00.449948', '2021-06-06 19:37:54.086416', NULL, 32, 1, 0, '0028'),
(104, 0, 'en', 'SingleRingtone', '2021-06-06 19:58:00.496509', '2021-06-06 19:58:00.500173', NULL, 33, 1, 0, '0029'),
(105, 1, 'en', 'SingleFavorite', '2021-06-06 19:58:00.505635', '2021-06-06 19:58:00.508848', NULL, 33, 1, 0, '002A'),
(106, 0, 'en', 'SingleRingtone', '2021-06-06 20:00:37.805647', '2021-06-06 20:00:37.808991', NULL, 34, 1, 0, '002B'),
(107, 1, 'en', 'SingleFavorite', '2021-06-06 20:00:37.814011', '2021-06-06 20:00:37.817422', NULL, 34, 1, 0, '002C'),
(108, 0, 'en', 'SingleRingtone', '2021-06-06 20:01:39.324388', '2021-06-06 20:01:39.327646', NULL, 35, 1, 0, '002D'),
(109, 1, 'en', 'SingleFavorite', '2021-06-06 20:01:39.332964', '2021-06-06 20:01:39.335916', NULL, 35, 1, 0, '002E'),
(110, 0, 'en', 'SingleRingtone', '2021-06-06 20:02:48.305188', '2021-06-06 20:02:48.308332', NULL, 36, 1, 0, '002F'),
(111, 1, 'en', 'SingleFavorite', '2021-06-06 20:02:48.313002', '2021-06-06 20:02:48.315961', NULL, 36, 1, 0, '002G'),
(112, 0, 'en', 'SingleRingtone', '2021-06-06 19:58:00.496509', '2021-06-06 20:15:58.135275', NULL, 37, 1, 0, '002H'),
(113, 1, 'en', 'SingleFavorite', '2021-06-06 19:58:00.505635', '2021-06-06 20:15:58.139063', NULL, 37, 1, 0, '002I'),
(114, 0, 'en', 'SingleRingtone', '2021-06-06 20:00:37.805647', '2021-06-06 20:16:37.962365', NULL, 38, 1, 0, '002J'),
(115, 1, 'en', 'SingleFavorite', '2021-06-06 20:00:37.814011', '2021-06-06 20:16:37.967556', NULL, 38, 1, 0, '002K'),
(116, 0, 'en', 'SingleRingtone', '2021-06-06 20:01:39.324388', '2021-06-06 20:16:58.958652', NULL, 39, 1, 0, '002L'),
(117, 1, 'en', 'SingleFavorite', '2021-06-06 20:01:39.332964', '2021-06-06 20:16:58.962994', NULL, 39, 1, 0, '002M'),
(118, 0, 'en', 'SingleRingtone', '2021-06-06 20:02:48.305188', '2021-06-06 20:17:17.198619', NULL, 40, 1, 0, '002N'),
(119, 1, 'en', 'SingleFavorite', '2021-06-06 20:02:48.313002', '2021-06-06 20:17:17.205702', NULL, 40, 1, 0, '002O'),
(120, 0, 'en', 'SingleRingtone', '2021-06-06 20:21:53.056372', '2021-06-06 20:21:53.059966', NULL, 41, 1, 0, '002P'),
(121, 1, 'en', 'SingleFavorite', '2021-06-06 20:21:53.065489', '2021-06-06 20:21:53.068581', NULL, 41, 1, 0, '002Q'),
(122, 0, 'en', 'SingleRingtone', '2021-06-06 20:24:11.825135', '2021-06-06 20:24:11.828427', NULL, 42, 1, 0, '002R'),
(123, 1, 'en', 'SingleFavorite', '2021-06-06 20:24:11.833208', '2021-06-06 20:24:11.836062', NULL, 42, 1, 0, '002S'),
(124, 0, 'en', 'SingleRingtone', '2021-06-06 20:30:05.536695', '2021-06-06 20:30:05.540012', NULL, 43, 1, 0, '002T'),
(125, 1, 'en', 'SingleFavorite', '2021-06-06 20:30:05.547100', '2021-06-06 20:30:05.550193', NULL, 43, 1, 0, '002U'),
(126, 0, 'en', 'SingleRingtone', '2021-06-06 20:35:30.278801', '2021-06-06 20:35:30.282044', NULL, 44, 1, 0, '002V'),
(127, 1, 'en', 'SingleFavorite', '2021-06-06 20:35:30.286762', '2021-06-06 20:35:30.289631', NULL, 44, 1, 0, '002W'),
(128, 0, 'en', 'SingleRingtone', '2021-06-06 20:21:53.056372', '2021-06-06 20:36:50.549126', NULL, 45, 1, 0, '002X'),
(129, 1, 'en', 'SingleFavorite', '2021-06-06 20:21:53.065489', '2021-06-06 20:36:50.552806', NULL, 45, 1, 0, '002Y'),
(130, 0, 'en', 'SingleRingtone', '2021-06-06 20:24:11.825135', '2021-06-06 20:37:11.343192', NULL, 46, 1, 0, '002Z'),
(131, 1, 'en', 'SingleFavorite', '2021-06-06 20:24:11.833208', '2021-06-06 20:37:11.346972', NULL, 46, 1, 0, '0030'),
(132, 0, 'en', 'SingleRingtone', '2021-06-06 20:30:05.536695', '2021-06-06 20:37:30.662577', NULL, 47, 1, 0, '0031'),
(133, 1, 'en', 'SingleFavorite', '2021-06-06 20:30:05.547100', '2021-06-06 20:37:30.667449', NULL, 47, 1, 0, '0032'),
(134, 0, 'en', 'SingleRingtone', '2021-06-06 20:35:30.278801', '2021-06-06 20:37:57.373144', NULL, 48, 1, 0, '0033'),
(135, 1, 'en', 'SingleFavorite', '2021-06-06 20:35:30.286762', '2021-06-06 20:37:57.376841', NULL, 48, 1, 0, '0034'),
(139, 0, 'en', 'SingleRingtone', '2021-06-07 05:03:28.711990', '2021-06-07 05:03:28.716148', NULL, 49, 1, 0, '0038'),
(140, 1, 'en', 'SingleFavorite', '2021-06-07 05:03:28.723316', '2021-06-07 05:03:28.726707', NULL, 49, 1, 0, '0039'),
(141, 0, 'en', 'SingleRingtone', '2021-06-07 05:03:28.711990', '2021-06-07 05:05:13.323847', NULL, 50, 1, 0, '003A'),
(142, 1, 'en', 'SingleFavorite', '2021-06-07 05:03:28.723316', '2021-06-07 05:05:13.327855', NULL, 50, 1, 0, '003B'),
(143, 0, 'en', 'SingleRingtone', '2021-06-07 07:22:58.174129', '2021-06-07 07:22:58.177738', NULL, 51, 1, 0, '003C'),
(144, 1, 'en', 'SingleFavorite', '2021-06-07 07:22:58.183233', '2021-06-07 07:22:58.186387', NULL, 51, 1, 0, '003D'),
(145, 0, 'en', 'SingleRingtone', '2021-06-07 07:22:58.174129', '2021-06-07 07:23:50.640676', NULL, 52, 1, 0, '003E'),
(146, 1, 'en', 'SingleFavorite', '2021-06-07 07:22:58.183233', '2021-06-07 07:23:50.644798', NULL, 52, 1, 0, '003F'),
(147, 0, 'en', 'SingleRingtone', '2021-06-07 12:48:12.078731', '2021-06-07 12:48:12.082948', NULL, 53, 1, 0, '003G'),
(148, 1, 'en', 'SingleFavorite', '2021-06-07 12:48:12.089151', '2021-06-07 12:48:12.092311', NULL, 53, 1, 0, '003H'),
(149, 0, 'en', 'SingleRingtone', '2021-06-07 12:48:12.078731', '2021-06-07 12:49:02.835164', NULL, 54, 1, 0, '003I'),
(150, 1, 'en', 'SingleFavorite', '2021-06-07 12:48:12.089151', '2021-06-07 12:49:02.838972', NULL, 54, 1, 0, '003J'),
(151, 0, 'en', 'SingleRingtone', '2021-06-08 09:53:30.300567', '2021-06-08 09:53:30.305732', NULL, 55, 1, 0, '003K'),
(152, 1, 'en', 'SingleFavorite', '2021-06-08 09:53:30.312349', '2021-06-08 09:53:30.315561', NULL, 55, 1, 0, '003L'),
(153, 0, 'en', 'SingleRingtone', '2021-06-08 09:53:30.300567', '2021-06-08 09:53:57.865982', NULL, 56, 1, 0, '003M'),
(154, 1, 'en', 'SingleFavorite', '2021-06-08 09:53:30.312349', '2021-06-08 09:53:57.877705', NULL, 56, 1, 0, '003N'),
(155, 0, 'en', 'SingleRingtone', '2021-06-08 14:52:21.771017', '2021-06-08 14:52:21.774838', NULL, 57, 1, 0, '003O'),
(156, 1, 'en', 'SingleFavorite', '2021-06-08 14:52:21.780331', '2021-06-08 14:52:21.786049', NULL, 57, 1, 0, '003P'),
(157, 0, 'en', 'SingleRingtone', '2021-06-08 14:52:21.771017', '2021-06-08 14:54:13.632345', NULL, 58, 1, 0, '003Q'),
(158, 1, 'en', 'SingleFavorite', '2021-06-08 14:52:21.780331', '2021-06-08 14:54:13.636235', NULL, 58, 1, 0, '003R'),
(159, 0, 'en', 'SingleRingtone', '2021-06-09 04:48:13.773337', '2021-06-09 04:48:13.777070', NULL, 59, 1, 0, '003S'),
(160, 1, 'en', 'SingleFavorite', '2021-06-09 04:48:13.783024', '2021-06-09 04:48:13.786203', NULL, 59, 1, 0, '003T'),
(161, 0, 'en', 'SingleRingtone', '2021-06-09 04:48:13.773337', '2021-06-09 04:49:02.319031', NULL, 60, 1, 0, '003U'),
(162, 1, 'en', 'SingleFavorite', '2021-06-09 04:48:13.783024', '2021-06-09 04:49:02.322765', NULL, 60, 1, 0, '003V'),
(163, 0, 'en', 'SingleRingtone', '2021-06-09 04:55:28.595405', '2021-06-09 04:55:28.598603', NULL, 61, 1, 0, '003W'),
(164, 1, 'en', 'SingleFavorite', '2021-06-09 04:55:28.603389', '2021-06-09 04:55:28.606333', NULL, 61, 1, 0, '003X'),
(165, 0, 'en', 'SingleRingtone', '2021-06-09 04:58:38.475666', '2021-06-09 04:58:38.478884', NULL, 62, 1, 0, '003Y'),
(166, 1, 'en', 'SingleFavorite', '2021-06-09 04:58:38.485134', '2021-06-09 04:58:38.488234', NULL, 62, 1, 0, '003Z'),
(167, 0, 'en', 'SingleRingtone', '2021-06-09 04:55:28.595405', '2021-06-09 04:59:12.831426', NULL, 63, 1, 0, '0040'),
(168, 1, 'en', 'SingleFavorite', '2021-06-09 04:55:28.603389', '2021-06-09 04:59:12.835560', NULL, 63, 1, 0, '0041'),
(169, 0, 'en', 'SingleRingtone', '2021-06-09 04:58:38.475666', '2021-06-09 04:59:49.005690', NULL, 64, 1, 0, '0042'),
(170, 1, 'en', 'SingleFavorite', '2021-06-09 04:58:38.485134', '2021-06-09 04:59:49.009544', NULL, 64, 1, 0, '0043'),
(180, 1, 'en', 'FetchRingtone', '2021-06-15 15:10:49.886192', '2021-06-15 15:10:49.892007', NULL, 65, 1, 0, '0047'),
(181, 2, 'en', 'CategoryPanel', '2021-06-15 15:10:49.898288', '2021-06-15 15:10:49.901391', NULL, 65, 1, 0, '0048'),
(184, 3, 'en', 'Container', '2021-06-15 15:27:58.281286', '2021-08-27 12:23:38.537889', NULL, 65, 1, 0, '004B'),
(194, 0, 'en', 'SingleRingtone', '2021-06-15 17:10:54.657079', '2021-06-15 17:10:54.660482', NULL, 67, 1, 0, '004F'),
(195, 1, 'en', 'SingleFavorite', '2021-06-15 17:10:54.665939', '2021-06-15 17:10:54.668955', NULL, 67, 1, 0, '004G'),
(196, 0, 'en', 'SingleRingtone', '2021-06-15 17:14:41.023331', '2021-06-15 17:14:41.026554', NULL, 68, 1, 0, '004H'),
(197, 1, 'en', 'SingleFavorite', '2021-06-15 17:14:41.031346', '2021-06-15 17:14:41.034307', NULL, 68, 1, 0, '004I'),
(198, 0, 'en', 'SingleRingtone', '2021-06-15 17:10:54.657079', '2021-06-15 17:15:35.670388', NULL, 69, 1, 0, '004J'),
(199, 1, 'en', 'SingleFavorite', '2021-06-15 17:10:54.665939', '2021-06-15 17:15:35.674375', NULL, 69, 1, 0, '004K'),
(200, 0, 'en', 'SingleRingtone', '2021-06-15 17:14:41.023331', '2021-06-15 17:21:34.171354', NULL, 70, 1, 0, '004L'),
(201, 1, 'en', 'SingleFavorite', '2021-06-15 17:14:41.031346', '2021-06-15 17:21:34.175253', NULL, 70, 1, 0, '004M'),
(202, 0, 'en', 'SingleRingtone', '2021-06-16 03:17:08.625138', '2021-06-16 03:17:08.633408', NULL, 71, 1, 0, '004N'),
(203, 1, 'en', 'SingleFavorite', '2021-06-16 03:17:08.639132', '2021-06-16 03:17:08.642260', NULL, 71, 1, 0, '004O'),
(204, 0, 'en', 'SingleRingtone', '2021-06-16 03:17:08.625138', '2021-06-16 03:17:46.408772', NULL, 72, 1, 0, '004P'),
(205, 1, 'en', 'SingleFavorite', '2021-06-16 03:17:08.639132', '2021-06-16 03:17:46.412353', NULL, 72, 1, 0, '004Q'),
(206, 0, 'en', 'SingleRingtone', '2021-06-16 03:30:13.375054', '2021-06-16 03:30:13.378526', NULL, 73, 1, 0, '004R'),
(207, 1, 'en', 'SingleFavorite', '2021-06-16 03:30:13.384211', '2021-06-16 03:30:13.387343', NULL, 73, 1, 0, '004S'),
(208, 0, 'en', 'SingleRingtone', '2021-06-16 03:30:13.375054', '2021-06-16 03:30:46.275964', NULL, 74, 1, 0, '004T'),
(209, 1, 'en', 'SingleFavorite', '2021-06-16 03:30:13.384211', '2021-06-16 03:30:46.279715', NULL, 74, 1, 0, '004U'),
(210, 0, 'en', 'SingleRingtone', '2021-06-16 03:52:50.616369', '2021-06-16 03:52:50.619868', NULL, 75, 1, 0, '004V'),
(211, 1, 'en', 'SingleFavorite', '2021-06-16 03:52:50.625354', '2021-06-16 03:52:50.628379', NULL, 75, 1, 0, '004W'),
(212, 0, 'en', 'SingleRingtone', '2021-06-16 03:52:50.616369', '2021-06-16 03:53:52.566824', NULL, 76, 1, 0, '004X'),
(213, 1, 'en', 'SingleFavorite', '2021-06-16 03:52:50.625354', '2021-06-16 03:53:52.570475', NULL, 76, 1, 0, '004Y'),
(214, 0, 'en', 'SingleRingtone', '2021-06-18 03:53:50.917523', '2021-06-18 03:53:50.922178', NULL, 77, 1, 0, '004Z'),
(215, 1, 'en', 'SingleFavorite', '2021-06-18 03:53:50.930757', '2021-06-18 03:53:50.934661', NULL, 77, 1, 0, '0050'),
(216, 0, 'en', 'SingleRingtone', '2021-06-18 03:53:50.917523', '2021-06-18 03:56:07.884424', NULL, 78, 1, 0, '0051'),
(217, 1, 'en', 'SingleFavorite', '2021-06-18 03:53:50.930757', '2021-06-18 03:56:07.888345', NULL, 78, 1, 0, '0052'),
(218, 0, 'en', 'SingleRingtone', '2021-06-18 04:11:13.547295', '2021-06-18 04:11:13.550953', NULL, 79, 1, 0, '0053'),
(219, 1, 'en', 'SingleFavorite', '2021-06-18 04:11:13.556838', '2021-06-18 04:11:13.560010', NULL, 79, 1, 0, '0054'),
(220, 0, 'en', 'SingleRingtone', '2021-06-18 04:11:13.547295', '2021-06-18 04:12:26.425467', NULL, 80, 1, 0, '0055'),
(221, 1, 'en', 'SingleFavorite', '2021-06-18 04:11:13.556838', '2021-06-18 04:12:26.429270', NULL, 80, 1, 0, '0056'),
(222, 1, 'en', 'FetchRingtone', '2021-06-19 14:15:45.326131', '2021-06-19 14:15:45.330192', NULL, 81, 1, 0, '0057'),
(223, 2, 'en', 'CategoryPanel', '2021-06-19 14:15:45.335864', '2021-06-19 14:15:45.339131', NULL, 81, 1, 0, '0058'),
(226, 3, 'en', 'Container', '2021-06-19 14:51:34.857245', '2021-12-17 11:08:29.385776', NULL, 81, 1, 0, '005B'),
(230, 0, 'en', 'SingleRingtone', '2021-06-19 15:20:02.132680', '2021-06-19 15:20:02.136706', NULL, 83, 1, 0, '005F'),
(231, 1, 'en', 'SingleFavorite', '2021-06-19 15:20:02.143253', '2021-06-19 15:20:02.146820', NULL, 83, 1, 0, '005G'),
(232, 0, 'en', 'SingleRingtone', '2021-06-19 15:20:02.132680', '2021-06-19 15:23:39.715518', NULL, 84, 1, 0, '005H'),
(233, 1, 'en', 'SingleFavorite', '2021-06-19 15:20:02.143253', '2021-06-19 15:23:39.719904', NULL, 84, 1, 0, '005I'),
(234, 0, 'en', 'SingleRingtone', '2021-06-19 16:29:11.053469', '2021-06-19 16:29:11.056936', NULL, 85, 1, 0, '005J'),
(235, 1, 'en', 'SingleFavorite', '2021-06-19 16:29:11.062238', '2021-06-19 16:29:11.065284', NULL, 85, 1, 0, '005K'),
(236, 0, 'en', 'SingleRingtone', '2021-06-19 16:29:11.053469', '2021-06-19 16:29:54.258370', NULL, 86, 1, 0, '005L'),
(237, 1, 'en', 'SingleFavorite', '2021-06-19 16:29:11.062238', '2021-06-19 16:29:54.262257', NULL, 86, 1, 0, '005M'),
(238, 0, 'en', 'SingleRingtone', '2021-06-19 16:38:24.996979', '2021-06-19 16:38:25.000420', NULL, 87, 1, 0, '005N'),
(239, 1, 'en', 'SingleFavorite', '2021-06-19 16:38:25.006072', '2021-06-19 16:38:25.009217', NULL, 87, 1, 0, '005O'),
(240, 0, 'en', 'SingleRingtone', '2021-06-19 16:38:24.996979', '2021-06-19 16:39:09.637747', NULL, 88, 1, 0, '005P'),
(241, 1, 'en', 'SingleFavorite', '2021-06-19 16:38:25.006072', '2021-06-19 16:39:09.642113', NULL, 88, 1, 0, '005Q'),
(242, 0, 'en', 'SingleRingtone', '2021-06-19 16:56:56.120923', '2021-06-19 16:56:56.124193', NULL, 89, 1, 0, '005R'),
(243, 1, 'en', 'SingleFavorite', '2021-06-19 16:56:56.129041', '2021-06-19 16:56:56.131946', NULL, 89, 1, 0, '005S'),
(244, 0, 'en', 'SingleRingtone', '2021-06-19 16:56:56.120923', '2021-06-19 16:57:46.395306', NULL, 90, 1, 0, '005T'),
(245, 1, 'en', 'SingleFavorite', '2021-06-19 16:56:56.129041', '2021-06-19 16:57:46.399647', NULL, 90, 1, 0, '005U'),
(246, 0, 'en', 'SingleRingtone', '2021-06-19 17:10:15.407420', '2021-06-19 17:10:15.410961', NULL, 91, 1, 0, '005V'),
(247, 1, 'en', 'SingleFavorite', '2021-06-19 17:10:15.416731', '2021-06-19 17:10:15.419875', NULL, 91, 1, 0, '005W'),
(248, 0, 'en', 'SingleRingtone', '2021-06-19 17:11:19.738235', '2021-06-19 17:11:19.741752', NULL, 92, 1, 0, '005X'),
(249, 1, 'en', 'SingleFavorite', '2021-06-19 17:11:19.747091', '2021-06-19 17:11:19.750427', NULL, 92, 1, 0, '005Y'),
(250, 0, 'en', 'SingleRingtone', '2021-06-19 17:10:15.407420', '2021-06-19 17:11:42.846352', NULL, 93, 1, 0, '005Z'),
(251, 1, 'en', 'SingleFavorite', '2021-06-19 17:10:15.416731', '2021-06-19 17:11:42.850187', NULL, 93, 1, 0, '0060'),
(252, 0, 'en', 'SingleRingtone', '2021-06-19 17:11:19.738235', '2021-06-19 17:12:09.290892', NULL, 94, 1, 0, '0061'),
(253, 1, 'en', 'SingleFavorite', '2021-06-19 17:11:19.747091', '2021-06-19 17:12:09.294693', NULL, 94, 1, 0, '0062'),
(254, 0, 'en', 'SingleRingtone', '2021-06-19 17:15:49.697241', '2021-06-19 17:15:49.700880', NULL, 95, 1, 0, '0063'),
(255, 1, 'en', 'SingleFavorite', '2021-06-19 17:15:49.710712', '2021-06-19 17:15:49.713867', NULL, 95, 1, 0, '0064'),
(256, 0, 'en', 'SingleRingtone', '2021-06-19 17:18:48.935759', '2021-06-19 17:18:48.938992', NULL, 96, 1, 0, '0065'),
(257, 1, 'en', 'SingleFavorite', '2021-06-19 17:18:48.945051', '2021-06-19 17:18:48.948035', NULL, 96, 1, 0, '0066'),
(258, 0, 'en', 'SingleRingtone', '2021-06-19 17:21:09.449496', '2021-06-19 17:21:09.452964', NULL, 97, 1, 0, '0067'),
(259, 1, 'en', 'SingleFavorite', '2021-06-19 17:21:09.458530', '2021-06-19 17:21:09.461801', NULL, 97, 1, 0, '0068'),
(260, 0, 'en', 'SingleRingtone', '2021-06-19 17:15:49.697241', '2021-06-19 17:22:39.805065', NULL, 98, 1, 0, '0069'),
(261, 1, 'en', 'SingleFavorite', '2021-06-19 17:15:49.710712', '2021-06-19 17:22:39.808705', NULL, 98, 1, 0, '006A'),
(262, 0, 'en', 'SingleRingtone', '2021-06-19 17:18:48.935759', '2021-06-19 17:23:09.378144', NULL, 99, 1, 0, '006B'),
(263, 1, 'en', 'SingleFavorite', '2021-06-19 17:18:48.945051', '2021-06-19 17:23:09.383853', NULL, 99, 1, 0, '006C'),
(264, 0, 'en', 'SingleRingtone', '2021-06-19 17:21:09.449496', '2021-06-19 17:25:40.615500', NULL, 100, 1, 0, '006D'),
(265, 1, 'en', 'SingleFavorite', '2021-06-19 17:21:09.458530', '2021-06-19 17:25:40.619448', NULL, 100, 1, 0, '006E'),
(266, 0, 'en', 'SingleRingtone', '2021-06-19 17:25:51.780737', '2021-06-19 17:25:51.784445', NULL, 101, 1, 0, '006F'),
(267, 1, 'en', 'SingleFavorite', '2021-06-19 17:25:51.796386', '2021-06-19 17:25:51.799593', NULL, 101, 1, 0, '006G'),
(268, 0, 'en', 'SingleRingtone', '2021-06-19 17:25:51.780737', '2021-06-19 17:26:48.257416', NULL, 102, 1, 0, '006H'),
(269, 1, 'en', 'SingleFavorite', '2021-06-19 17:25:51.796386', '2021-06-19 17:26:48.261136', NULL, 102, 1, 0, '006I'),
(270, 0, 'en', 'SingleRingtone', '2021-06-19 17:29:06.318063', '2021-06-19 17:29:06.321263', NULL, 103, 1, 0, '006J'),
(271, 1, 'en', 'SingleFavorite', '2021-06-19 17:29:06.325894', '2021-06-19 17:29:06.328763', NULL, 103, 1, 0, '006K'),
(272, 0, 'en', 'SingleRingtone', '2021-06-19 17:29:06.318063', '2021-06-19 17:32:18.430969', NULL, 104, 1, 0, '006L'),
(273, 1, 'en', 'SingleFavorite', '2021-06-19 17:29:06.325894', '2021-06-19 17:32:18.435237', NULL, 104, 1, 0, '006M'),
(274, 0, 'en', 'SingleRingtone', '2021-06-19 17:32:19.614926', '2021-06-19 17:32:19.618521', NULL, 105, 1, 0, '006N'),
(275, 1, 'en', 'SingleFavorite', '2021-06-19 17:32:19.624980', '2021-06-19 17:32:19.628234', NULL, 105, 1, 0, '006O'),
(276, 0, 'en', 'SingleRingtone', '2021-06-19 17:34:52.401069', '2021-06-19 17:34:52.404812', NULL, 106, 1, 0, '006P'),
(277, 1, 'en', 'SingleFavorite', '2021-06-19 17:34:52.410462', '2021-06-19 17:34:52.413850', NULL, 106, 1, 0, '006Q'),
(280, 0, 'en', 'SingleRingtone', '2021-06-19 17:34:52.401069', '2021-06-19 17:35:55.869117', NULL, 108, 1, 0, '006T'),
(281, 1, 'en', 'SingleFavorite', '2021-06-19 17:34:52.410462', '2021-06-19 17:35:55.872979', NULL, 108, 1, 0, '006U'),
(282, 0, 'en', 'SingleRingtone', '2021-06-19 17:32:19.614926', '2021-06-19 17:44:45.968891', NULL, 107, 1, 0, '006V'),
(283, 1, 'en', 'SingleFavorite', '2021-06-19 17:32:19.624980', '2021-06-19 17:44:45.973770', NULL, 107, 1, 0, '006W'),
(284, 0, 'en', 'Container', '2021-06-20 07:11:46.990688', '2021-11-27 06:17:52.842030', NULL, 109, 1, 0, '006X'),
(287, 0, 'en', 'Container', '2021-06-20 07:22:10.427300', '2021-06-20 07:22:10.431991', NULL, 111, 1, 0, '006Z'),
(288, 0, 'en', 'Container', '2021-06-20 07:22:10.427300', '2021-06-20 07:25:40.220633', NULL, 112, 1, 0, '0070'),
(289, 0, 'en', 'Container', '2021-06-20 07:45:13.875442', '2021-06-20 07:47:26.748572', NULL, 113, 1, 0, '0071'),
(290, 0, 'en', 'Container', '2021-06-20 07:45:13.875442', '2021-06-20 07:48:13.880549', NULL, 114, 1, 0, '0072'),
(291, 0, 'en', 'Container', '2021-06-20 07:57:42.141161', '2021-07-21 15:10:33.593290', NULL, 115, 1, 0, '0073'),
(294, 0, 'en', 'SingleRingtone', '2021-06-23 12:37:23.312828', '2021-06-23 12:37:23.318608', NULL, 117, 1, 0, '0076'),
(295, 1, 'en', 'SingleFavorite', '2021-06-23 12:37:23.324809', '2021-06-23 12:37:23.328032', NULL, 117, 1, 0, '0077'),
(296, 0, 'en', 'SingleRingtone', '2021-06-23 12:37:23.312828', '2021-06-23 12:38:34.272530', NULL, 118, 1, 0, '0078'),
(297, 1, 'en', 'SingleFavorite', '2021-06-23 12:37:23.324809', '2021-06-23 12:38:34.276488', NULL, 118, 1, 0, '0079'),
(301, 1, 'en', 'FetchRingtone', '2021-06-26 13:12:11.443303', '2021-06-26 13:12:11.447355', NULL, 119, 1, 0, '007D'),
(302, 2, 'en', 'CategoryPanel', '2021-06-26 13:12:11.453250', '2021-06-26 13:12:11.456497', NULL, 119, 1, 0, '007E'),
(305, 3, 'en', 'Container', '2021-06-26 13:28:16.907844', '2021-08-27 12:27:02.044531', NULL, 119, 1, 0, '007H'),
(309, 0, 'en', 'SingleRingtone', '2021-06-26 14:19:25.978569', '2021-06-26 14:19:25.982175', NULL, 121, 1, 0, '007L'),
(310, 1, 'en', 'SingleFavorite', '2021-06-26 14:19:25.988046', '2021-06-26 14:19:25.991512', NULL, 121, 1, 0, '007M'),
(311, 0, 'en', 'SingleRingtone', '2021-06-26 14:19:25.978569', '2021-06-26 14:21:34.026576', NULL, 122, 1, 0, '007N'),
(312, 1, 'en', 'SingleFavorite', '2021-06-26 14:19:25.988046', '2021-06-26 14:21:34.032083', NULL, 122, 1, 0, '007O'),
(313, 0, 'en', 'SingleRingtone', '2021-06-26 14:28:05.835180', '2021-06-26 14:28:05.838932', NULL, 123, 1, 0, '007P'),
(314, 1, 'en', 'SingleFavorite', '2021-06-26 14:28:05.844637', '2021-06-26 14:28:05.847820', NULL, 123, 1, 0, '007Q'),
(315, 0, 'en', 'SingleRingtone', '2021-06-26 14:31:28.168150', '2021-06-26 14:31:28.171556', NULL, 124, 1, 0, '007R'),
(316, 1, 'en', 'SingleFavorite', '2021-06-26 14:31:28.176620', '2021-06-26 14:31:28.179881', NULL, 124, 1, 0, '007S'),
(320, 0, 'en', 'SingleRingtone', '2021-06-26 14:28:05.835180', '2021-06-26 14:41:48.795355', NULL, 125, 1, 0, '007W'),
(321, 1, 'en', 'SingleFavorite', '2021-06-26 14:28:05.844637', '2021-06-26 14:41:48.799619', NULL, 125, 1, 0, '007X'),
(322, 0, 'en', 'SingleRingtone', '2021-06-26 14:31:28.168150', '2021-06-26 14:42:18.129763', NULL, 126, 1, 0, '007Y'),
(323, 1, 'en', 'SingleFavorite', '2021-06-26 14:31:28.176620', '2021-06-26 14:42:18.133700', NULL, 126, 1, 0, '007Z'),
(324, 0, 'en', 'SingleRingtone', '2021-06-26 14:51:43.241361', '2021-06-26 14:51:43.244781', NULL, 127, 1, 0, '0080'),
(325, 1, 'en', 'SingleFavorite', '2021-06-26 14:51:43.249923', '2021-06-26 14:51:43.253235', NULL, 127, 1, 0, '0081'),
(326, 0, 'en', 'SingleRingtone', '2021-06-26 14:54:51.889525', '2021-06-26 14:54:51.893319', NULL, 128, 1, 0, '0082'),
(327, 1, 'en', 'SingleFavorite', '2021-06-26 14:54:51.900810', '2021-06-26 14:54:51.904540', NULL, 128, 1, 0, '0083'),
(328, 0, 'en', 'SingleRingtone', '2021-06-26 14:57:18.473676', '2021-06-26 14:57:18.477175', NULL, 129, 1, 0, '0084'),
(329, 1, 'en', 'SingleFavorite', '2021-06-26 14:57:18.482162', '2021-06-26 14:57:18.485126', NULL, 129, 1, 0, '0085'),
(330, 0, 'en', 'SingleRingtone', '2021-06-26 14:59:34.747969', '2021-06-26 14:59:34.751521', NULL, 130, 1, 0, '0086'),
(331, 1, 'en', 'SingleFavorite', '2021-06-26 14:59:34.757080', '2021-06-26 14:59:34.760246', NULL, 130, 1, 0, '0087'),
(332, 0, 'en', 'SingleRingtone', '2021-06-26 15:03:16.175107', '2021-06-26 15:03:16.178471', NULL, 131, 1, 0, '0088'),
(333, 1, 'en', 'SingleFavorite', '2021-06-26 15:03:16.183857', '2021-06-26 15:03:16.186981', NULL, 131, 1, 0, '0089'),
(334, 0, 'en', 'SingleRingtone', '2021-06-26 15:06:45.988252', '2021-06-26 15:06:45.992060', NULL, 132, 1, 0, '008A'),
(335, 1, 'en', 'SingleFavorite', '2021-06-26 15:06:45.997498', '2021-06-26 15:06:46.000694', NULL, 132, 1, 0, '008B'),
(336, 0, 'en', 'SingleRingtone', '2021-06-26 15:10:00.423185', '2021-06-26 15:10:00.427001', NULL, 133, 1, 0, '008C'),
(337, 1, 'en', 'SingleFavorite', '2021-06-26 15:10:00.433139', '2021-06-26 15:10:00.436361', NULL, 133, 1, 0, '008D'),
(338, 0, 'en', 'SingleRingtone', '2021-06-26 15:14:54.761143', '2021-06-26 15:14:54.764651', NULL, 134, 1, 0, '008E'),
(339, 1, 'en', 'SingleFavorite', '2021-06-26 15:14:54.770400', '2021-06-26 15:14:54.773555', NULL, 134, 1, 0, '008F'),
(340, 0, 'en', 'SingleRingtone', '2021-06-26 15:17:30.263982', '2021-06-26 15:17:30.267492', NULL, 135, 1, 0, '008G'),
(341, 1, 'en', 'SingleFavorite', '2021-06-26 15:17:30.273143', '2021-06-26 15:17:30.276374', NULL, 135, 1, 0, '008H'),
(342, 0, 'en', 'SingleRingtone', '2021-06-26 15:21:08.140573', '2021-06-26 15:21:08.144054', NULL, 136, 1, 0, '008I'),
(343, 1, 'en', 'SingleFavorite', '2021-06-26 15:21:08.149540', '2021-06-26 15:21:08.152761', NULL, 136, 1, 0, '008J'),
(344, 0, 'en', 'SingleRingtone', '2021-06-26 15:25:21.743135', '2021-06-26 15:25:21.746519', NULL, 137, 1, 0, '008K'),
(345, 1, 'en', 'SingleFavorite', '2021-06-26 15:25:21.752349', '2021-06-26 15:25:21.755518', NULL, 137, 1, 0, '008L'),
(346, 0, 'en', 'SingleRingtone', '2021-06-26 15:28:30.668429', '2021-06-26 15:28:30.672117', NULL, 138, 1, 0, '008M'),
(347, 1, 'en', 'SingleFavorite', '2021-06-26 15:28:30.677928', '2021-06-26 15:28:30.681266', NULL, 138, 1, 0, '008N'),
(348, 0, 'en', 'SingleRingtone', '2021-06-26 14:51:43.241361', '2021-06-26 15:28:59.089365', NULL, 139, 1, 0, '008O'),
(349, 1, 'en', 'SingleFavorite', '2021-06-26 14:51:43.249923', '2021-06-26 15:28:59.093377', NULL, 139, 1, 0, '008P'),
(350, 0, 'en', 'SingleRingtone', '2021-06-26 14:54:51.889525', '2021-06-26 15:29:18.268391', NULL, 140, 1, 0, '008Q'),
(351, 1, 'en', 'SingleFavorite', '2021-06-26 14:54:51.900810', '2021-06-26 15:29:18.272028', NULL, 140, 1, 0, '008R'),
(352, 0, 'en', 'SingleRingtone', '2021-06-26 15:28:30.668429', '2021-06-26 15:29:34.635824', NULL, 141, 1, 0, '008S'),
(353, 1, 'en', 'SingleFavorite', '2021-06-26 15:28:30.677928', '2021-06-26 15:29:34.639329', NULL, 141, 1, 0, '008T'),
(354, 0, 'en', 'SingleRingtone', '2021-06-26 14:57:18.473676', '2021-06-26 15:29:57.704891', NULL, 142, 1, 0, '008U'),
(355, 1, 'en', 'SingleFavorite', '2021-06-26 14:57:18.482162', '2021-06-26 15:29:57.708788', NULL, 142, 1, 0, '008V'),
(356, 0, 'en', 'SingleRingtone', '2021-06-26 14:59:34.747969', '2021-06-26 15:30:23.057908', NULL, 143, 1, 0, '008W'),
(357, 1, 'en', 'SingleFavorite', '2021-06-26 14:59:34.757080', '2021-06-26 15:30:23.061699', NULL, 143, 1, 0, '008X'),
(358, 0, 'en', 'SingleRingtone', '2021-06-26 15:03:16.175107', '2021-06-26 15:30:43.576733', NULL, 144, 1, 0, '008Y'),
(359, 1, 'en', 'SingleFavorite', '2021-06-26 15:03:16.183857', '2021-06-26 15:30:43.580380', NULL, 144, 1, 0, '008Z'),
(360, 0, 'en', 'SingleRingtone', '2021-06-26 15:06:45.988252', '2021-06-26 15:31:01.287337', NULL, 145, 1, 0, '0090'),
(361, 1, 'en', 'SingleFavorite', '2021-06-26 15:06:45.997498', '2021-06-26 15:31:01.290986', NULL, 145, 1, 0, '0091'),
(362, 0, 'en', 'SingleRingtone', '2021-06-26 15:10:00.423185', '2021-06-26 15:31:19.238974', NULL, 146, 1, 0, '0092'),
(363, 1, 'en', 'SingleFavorite', '2021-06-26 15:10:00.433139', '2021-06-26 15:31:19.243226', NULL, 146, 1, 0, '0093'),
(364, 0, 'en', 'SingleRingtone', '2021-06-26 15:14:54.761143', '2021-06-26 15:32:10.759824', NULL, 147, 1, 0, '0094'),
(365, 1, 'en', 'SingleFavorite', '2021-06-26 15:14:54.770400', '2021-06-26 15:32:10.766038', NULL, 147, 1, 0, '0095'),
(366, 0, 'en', 'SingleRingtone', '2021-06-26 15:17:30.263982', '2021-06-26 15:33:27.938795', NULL, 148, 1, 0, '0096'),
(367, 1, 'en', 'SingleFavorite', '2021-06-26 15:17:30.273143', '2021-06-26 15:33:27.942453', NULL, 148, 1, 0, '0097'),
(368, 0, 'en', 'SingleRingtone', '2021-06-26 15:21:08.140573', '2021-06-26 15:33:46.097747', NULL, 149, 1, 0, '0098'),
(369, 1, 'en', 'SingleFavorite', '2021-06-26 15:21:08.149540', '2021-06-26 15:33:46.102016', NULL, 149, 1, 0, '0099'),
(370, 0, 'en', 'SingleRingtone', '2021-06-26 15:25:21.743135', '2021-06-26 15:34:03.817675', NULL, 150, 1, 0, '009A'),
(371, 1, 'en', 'SingleFavorite', '2021-06-26 15:25:21.752349', '2021-06-26 15:34:03.823761', NULL, 150, 1, 0, '009B'),
(374, 0, 'en', 'ContainerV2', '2021-07-12 07:19:23.036884', '2021-10-24 16:01:21.570509', NULL, 2, 1, 0, '009D'),
(379, 1, 'en', 'FetchRingtone', '2021-07-16 12:04:27.936360', '2021-07-16 12:04:27.940331', NULL, 151, 1, 0, '009I'),
(380, 2, 'en', 'CategoryPanel', '2021-07-16 12:04:27.945780', '2021-07-16 12:04:27.948872', NULL, 151, 1, 0, '009J'),
(383, 0, 'en', 'ContainerV2', '2021-07-16 12:19:38.097779', '2021-07-16 12:19:38.102934', NULL, 151, 1, 0, '009M'),
(384, 3, 'en', 'Container', '2021-07-16 12:34:39.360000', '2021-08-27 12:28:30.984019', NULL, 151, 1, 0, '009N'),
(397, 0, 'en', 'SingleRingtone', '2021-07-16 12:55:17.959621', '2021-07-16 12:55:17.963500', NULL, 153, 1, 0, '009S'),
(398, 1, 'en', 'SingleFavorite', '2021-07-16 12:55:17.969573', '2021-07-16 12:55:17.972881', NULL, 153, 1, 0, '009T'),
(399, 0, 'en', 'SingleRingtone', '2021-07-16 12:55:17.959621', '2021-07-16 12:56:31.997885', NULL, 154, 1, 0, '009U'),
(400, 1, 'en', 'SingleFavorite', '2021-07-16 12:55:17.969573', '2021-07-16 12:56:32.001712', NULL, 154, 1, 0, '009V'),
(401, 0, 'en', 'SingleRingtone', '2021-07-16 13:24:25.644972', '2021-07-16 13:24:25.648367', NULL, 155, 1, 0, '009W'),
(402, 1, 'en', 'SingleFavorite', '2021-07-16 13:24:25.653518', '2021-07-16 13:24:25.656467', NULL, 155, 1, 0, '009X'),
(403, 0, 'en', 'SingleRingtone', '2021-07-16 13:24:25.644972', '2021-07-16 13:24:55.235764', NULL, 156, 1, 0, '009Y'),
(404, 1, 'en', 'SingleFavorite', '2021-07-16 13:24:25.653518', '2021-07-16 13:24:55.239553', NULL, 156, 1, 0, '009Z'),
(405, 0, 'en', 'SingleRingtone', '2021-07-16 13:36:19.404521', '2021-07-16 13:36:19.408140', NULL, 157, 1, 0, '00A0'),
(406, 1, 'en', 'SingleFavorite', '2021-07-16 13:36:19.414897', '2021-07-16 13:36:19.418281', NULL, 157, 1, 0, '00A1'),
(407, 0, 'en', 'SingleRingtone', '2021-07-16 13:36:19.404521', '2021-07-16 13:36:54.780478', NULL, 158, 1, 0, '00A2'),
(408, 1, 'en', 'SingleFavorite', '2021-07-16 13:36:19.414897', '2021-07-16 13:36:54.784251', NULL, 158, 1, 0, '00A3'),
(409, 0, 'en', 'SingleRingtone', '2021-07-16 13:42:34.769804', '2021-07-16 13:42:34.773194', NULL, 159, 1, 0, '00A4'),
(410, 1, 'en', 'SingleFavorite', '2021-07-16 13:42:34.778379', '2021-07-16 13:42:34.781491', NULL, 159, 1, 0, '00A5'),
(411, 0, 'en', 'SingleRingtone', '2021-07-16 13:42:34.769804', '2021-07-16 13:43:21.069113', NULL, 160, 1, 0, '00A6'),
(412, 1, 'en', 'SingleFavorite', '2021-07-16 13:42:34.778379', '2021-07-16 13:43:21.073072', NULL, 160, 1, 0, '00A7'),
(413, 0, 'en', 'SingleRingtone', '2021-07-16 13:47:36.181404', '2021-07-16 13:47:36.184588', NULL, 161, 1, 0, '00A8'),
(414, 1, 'en', 'SingleFavorite', '2021-07-16 13:47:36.189592', '2021-07-16 13:47:36.192462', NULL, 161, 1, 0, '00A9'),
(415, 0, 'en', 'SingleRingtone', '2021-07-16 13:47:36.181404', '2021-07-16 13:48:14.936682', NULL, 162, 1, 0, '00AA'),
(416, 1, 'en', 'SingleFavorite', '2021-07-16 13:47:36.189592', '2021-07-16 13:48:14.940318', NULL, 162, 1, 0, '00AB'),
(417, 0, 'en', 'SingleRingtone', '2021-07-17 10:46:59.431265', '2021-07-17 10:46:59.435556', NULL, 163, 1, 0, '00AC'),
(418, 1, 'en', 'SingleFavorite', '2021-07-17 10:46:59.441767', '2021-07-17 10:46:59.445101', NULL, 163, 1, 0, '00AD'),
(419, 0, 'en', 'SingleRingtone', '2021-07-17 10:49:58.003632', '2021-07-17 10:49:58.007624', NULL, 164, 1, 0, '00AE'),
(420, 1, 'en', 'SingleFavorite', '2021-07-17 10:49:58.013835', '2021-07-17 10:49:58.018446', NULL, 164, 1, 0, '00AF'),
(421, 0, 'en', 'SingleRingtone', '2021-07-17 10:51:17.147520', '2021-07-17 10:51:17.152776', NULL, 165, 1, 0, '00AG'),
(422, 1, 'en', 'SingleFavorite', '2021-07-17 10:51:17.158393', '2021-07-17 10:51:17.161525', NULL, 165, 1, 0, '00AH'),
(423, 0, 'en', 'SingleRingtone', '2021-07-17 10:54:59.478384', '2021-07-17 10:54:59.482025', NULL, 166, 1, 0, '00AI'),
(424, 1, 'en', 'SingleFavorite', '2021-07-17 10:54:59.487565', '2021-07-17 10:54:59.490628', NULL, 166, 1, 0, '00AJ'),
(425, 0, 'en', 'SingleRingtone', '2021-07-17 10:56:41.794712', '2021-07-17 10:56:41.798341', NULL, 167, 1, 0, '00AK'),
(426, 1, 'en', 'SingleFavorite', '2021-07-17 10:56:41.804001', '2021-07-17 10:56:41.807403', NULL, 167, 1, 0, '00AL'),
(427, 0, 'en', 'SingleRingtone', '2021-07-17 10:46:59.431265', '2021-07-17 10:57:32.783285', NULL, 168, 1, 0, '00AM'),
(428, 1, 'en', 'SingleFavorite', '2021-07-17 10:46:59.441767', '2021-07-17 10:57:32.787360', NULL, 168, 1, 0, '00AN'),
(429, 0, 'en', 'SingleRingtone', '2021-07-17 10:49:58.003632', '2021-07-17 10:57:53.300254', NULL, 169, 1, 0, '00AO'),
(430, 1, 'en', 'SingleFavorite', '2021-07-17 10:49:58.013835', '2021-07-17 10:57:53.304574', NULL, 169, 1, 0, '00AP'),
(431, 0, 'en', 'SingleRingtone', '2021-07-17 10:51:17.147520', '2021-07-17 10:58:16.437242', NULL, 170, 1, 0, '00AQ'),
(432, 1, 'en', 'SingleFavorite', '2021-07-17 10:51:17.158393', '2021-07-17 10:58:16.441281', NULL, 170, 1, 0, '00AR'),
(433, 0, 'en', 'SingleRingtone', '2021-07-17 10:56:41.794712', '2021-07-17 10:58:40.940113', NULL, 171, 1, 0, '00AS'),
(434, 1, 'en', 'SingleFavorite', '2021-07-17 10:56:41.804001', '2021-07-17 10:58:40.943775', NULL, 171, 1, 0, '00AT'),
(435, 0, 'en', 'SingleRingtone', '2021-07-17 10:54:59.478384', '2021-07-17 10:59:02.345667', NULL, 172, 1, 0, '00AU'),
(436, 1, 'en', 'SingleFavorite', '2021-07-17 10:54:59.487565', '2021-07-17 10:59:02.349443', NULL, 172, 1, 0, '00AV'),
(437, 0, 'en', 'ContainerV2', '2021-07-21 13:39:19.172201', '2021-07-21 13:41:12.349340', NULL, 20, 1, 0, '00AW'),
(442, 0, 'en', 'ContainerV2', '2021-07-21 13:50:41.551154', '2021-07-21 13:50:41.556247', NULL, 65, 1, 0, '00B1'),
(447, 0, 'en', 'ContainerV2', '2021-07-21 13:55:25.918318', '2021-07-21 13:55:25.923193', NULL, 81, 1, 0, '00B6'),
(452, 0, 'en', 'ContainerV2', '2021-07-21 13:57:49.076944', '2021-07-21 13:57:49.083794', NULL, 119, 1, 0, '00BB'),
(461, 1, 'en', 'ContainerV2', '2021-07-21 14:27:35.241062', '2021-07-21 14:27:35.245647', NULL, 5, 1, 0, '00BG'),
(464, 0, 'en', 'ContactUs', '2021-06-05 18:04:59.289486', '2021-07-21 14:55:00.741743', NULL, 18, 1, 0, '00BH'),
(465, 1, 'en', 'ContainerV2', '2021-07-21 14:27:35.241062', '2021-07-21 14:55:00.746441', NULL, 18, 1, 0, '00BI'),
(466, 0, 'en', 'Container', '2021-06-20 07:57:42.141161', '2021-07-21 15:10:47.388136', NULL, 116, 1, 0, '00BJ'),
(467, 1, 'en', 'FetchRingtone', '2021-08-03 12:41:33.840546', '2021-08-03 12:41:33.845197', NULL, 173, 1, 0, '00BK'),
(468, 2, 'en', 'CategoryPanel', '2021-08-03 12:41:33.851593', '2021-08-03 12:41:33.854748', NULL, 173, 1, 0, '00BL'),
(469, 3, 'en', 'Container', '2021-08-03 12:55:07.925728', '2021-08-27 12:29:48.921996', NULL, 173, 1, 0, '00BM'),
(470, 0, 'en', 'ContainerV2', '2021-08-03 13:06:42.003775', '2021-08-03 13:13:15.645497', NULL, 173, 1, 0, '00BN'),
(483, 0, 'en', 'SingleRingtone', '2021-08-03 13:19:05.384825', '2021-08-03 13:19:05.388454', NULL, 175, 1, 0, '00BS'),
(484, 1, 'en', 'SingleFavorite', '2021-08-03 13:19:05.394698', '2021-08-03 13:19:05.397944', NULL, 175, 1, 0, '00BT'),
(485, 0, 'en', 'SingleRingtone', '2021-08-03 13:19:05.384825', '2021-08-03 13:19:59.400663', NULL, 176, 1, 0, '00BU'),
(486, 1, 'en', 'SingleFavorite', '2021-08-03 13:19:05.394698', '2021-08-03 13:19:59.406905', NULL, 176, 1, 0, '00BV'),
(487, 0, 'en', 'SingleRingtone', '2021-08-04 05:35:09.481011', '2021-08-04 05:35:09.485797', NULL, 177, 1, 0, '00BW'),
(488, 1, 'en', 'SingleFavorite', '2021-08-04 05:35:09.491953', '2021-08-04 05:35:09.495240', NULL, 177, 1, 0, '00BX'),
(489, 0, 'en', 'SingleRingtone', '2021-08-04 05:37:33.832786', '2021-08-04 05:37:33.836374', NULL, 178, 1, 0, '00BY'),
(490, 1, 'en', 'SingleFavorite', '2021-08-04 05:37:33.841760', '2021-08-04 05:37:33.844970', NULL, 178, 1, 0, '00BZ'),
(491, 0, 'en', 'SingleRingtone', '2021-08-04 05:35:09.481011', '2021-08-04 05:40:58.581267', NULL, 179, 1, 0, '00C0'),
(492, 1, 'en', 'SingleFavorite', '2021-08-04 05:35:09.491953', '2021-08-04 05:40:58.586525', NULL, 179, 1, 0, '00C1'),
(493, 0, 'en', 'SingleRingtone', '2021-08-04 05:37:33.832786', '2021-08-04 05:41:29.523028', NULL, 180, 1, 0, '00C2'),
(494, 1, 'en', 'SingleFavorite', '2021-08-04 05:37:33.841760', '2021-08-04 05:41:29.529066', NULL, 180, 1, 0, '00C3'),
(495, 0, 'en', 'SingleRingtone', '2021-08-04 05:45:53.021256', '2021-08-04 05:45:53.025383', NULL, 181, 1, 0, '00C4'),
(496, 1, 'en', 'SingleFavorite', '2021-08-04 05:45:53.031731', '2021-08-04 05:45:53.035291', NULL, 181, 1, 0, '00C5'),
(497, 0, 'en', 'SingleRingtone', '2021-08-04 05:48:25.612501', '2021-08-04 05:48:25.615798', NULL, 182, 1, 0, '00C6'),
(498, 1, 'en', 'SingleFavorite', '2021-08-04 05:48:25.620791', '2021-08-04 05:48:25.623861', NULL, 182, 1, 0, '00C7'),
(499, 0, 'en', 'SingleRingtone', '2021-08-04 05:52:08.209655', '2021-08-04 05:52:08.213608', NULL, 183, 1, 0, '00C8'),
(500, 1, 'en', 'SingleFavorite', '2021-08-04 05:52:08.219257', '2021-08-04 05:52:08.222816', NULL, 183, 1, 0, '00C9'),
(501, 0, 'en', 'SingleRingtone', '2021-08-04 05:45:53.021256', '2021-08-04 05:52:35.054106', NULL, 184, 1, 0, '00CA'),
(502, 1, 'en', 'SingleFavorite', '2021-08-04 05:45:53.031731', '2021-08-04 05:52:35.059673', NULL, 184, 1, 0, '00CB'),
(503, 0, 'en', 'SingleRingtone', '2021-08-04 05:48:25.612501', '2021-08-04 05:53:06.961169', NULL, 185, 1, 0, '00CC'),
(504, 1, 'en', 'SingleFavorite', '2021-08-04 05:48:25.620791', '2021-08-04 05:53:06.966060', NULL, 185, 1, 0, '00CD'),
(505, 0, 'en', 'SingleRingtone', '2021-08-04 05:52:08.209655', '2021-08-04 05:53:30.750010', NULL, 186, 1, 0, '00CE'),
(506, 1, 'en', 'SingleFavorite', '2021-08-04 05:52:08.219257', '2021-08-04 05:53:30.754100', NULL, 186, 1, 0, '00CF'),
(515, 0, 'en', 'SingleRingtone', '2021-08-05 10:35:57.392610', '2021-08-05 10:35:57.411184', NULL, 187, 1, 0, '00CK'),
(516, 1, 'en', 'SingleFavorite', '2021-08-05 10:35:57.418126', '2021-08-05 10:35:57.421505', NULL, 187, 1, 0, '00CL'),
(517, 0, 'en', 'SingleRingtone', '2021-08-05 10:47:27.131529', '2021-08-05 10:47:27.135191', NULL, 188, 1, 0, '00CM'),
(518, 1, 'en', 'SingleFavorite', '2021-08-05 10:47:27.140685', '2021-08-05 10:47:27.143768', NULL, 188, 1, 0, '00CN'),
(519, 0, 'en', 'SingleRingtone', '2021-08-05 10:50:59.768768', '2021-08-05 10:50:59.773361', NULL, 189, 1, 0, '00CO'),
(520, 1, 'en', 'SingleFavorite', '2021-08-05 10:50:59.780133', '2021-08-05 10:50:59.784372', NULL, 189, 1, 0, '00CP'),
(521, 0, 'en', 'SingleRingtone', '2021-08-05 10:35:57.392610', '2021-08-05 10:51:31.661100', NULL, 190, 1, 0, '00CQ'),
(522, 1, 'en', 'SingleFavorite', '2021-08-05 10:35:57.418126', '2021-08-05 10:51:31.665246', NULL, 190, 1, 0, '00CR'),
(523, 0, 'en', 'SingleRingtone', '2021-08-05 10:47:27.131529', '2021-08-05 10:52:50.761921', NULL, 191, 1, 0, '00CS'),
(524, 1, 'en', 'SingleFavorite', '2021-08-05 10:47:27.140685', '2021-08-05 10:52:50.766030', NULL, 191, 1, 0, '00CT'),
(525, 0, 'en', 'SingleRingtone', '2021-08-05 10:50:59.768768', '2021-08-05 10:53:19.414683', NULL, 192, 1, 0, '00CU'),
(526, 1, 'en', 'SingleFavorite', '2021-08-05 10:50:59.780133', '2021-08-05 10:53:19.419378', NULL, 192, 1, 0, '00CV'),
(531, 0, 'en', 'SingleRingtone', '2021-08-20 12:17:22.755642', '2021-08-20 12:17:22.760854', NULL, 193, 1, 0, '00D0'),
(532, 1, 'en', 'SingleFavorite', '2021-08-20 12:17:22.768057', '2021-08-20 12:17:22.771855', NULL, 193, 1, 0, '00D1'),
(533, 0, 'en', 'SingleRingtone', '2021-08-20 12:17:22.755642', '2021-08-20 12:17:57.104553', NULL, 194, 1, 0, '00D2'),
(534, 1, 'en', 'SingleFavorite', '2021-08-20 12:17:22.768057', '2021-08-20 12:17:57.108710', NULL, 194, 1, 0, '00D3'),
(535, 0, 'en', 'SingleRingtone', '2021-08-20 12:23:28.250864', '2021-08-20 12:23:28.254580', NULL, 195, 1, 0, '00D4'),
(536, 1, 'en', 'SingleFavorite', '2021-08-20 12:23:28.260368', '2021-08-20 12:23:28.263826', NULL, 195, 1, 0, '00D5'),
(537, 0, 'en', 'SingleRingtone', '2021-08-20 12:23:28.250864', '2021-08-20 12:24:54.644193', NULL, 196, 1, 0, '00D6'),
(538, 1, 'en', 'SingleFavorite', '2021-08-20 12:23:28.260368', '2021-08-20 12:24:54.648177', NULL, 196, 1, 0, '00D7'),
(539, 1, 'en', 'FetchRingtone', '2021-08-27 11:06:03.146771', '2021-08-27 11:06:03.154608', NULL, 197, 1, 0, '00D8'),
(540, 2, 'en', 'CategoryPanel', '2021-08-27 11:06:03.161205', '2021-08-27 11:06:03.164464', NULL, 197, 1, 0, '00D9'),
(543, 0, 'en', 'ContainerV2', '2021-08-27 11:30:20.767066', '2021-08-27 11:36:30.983606', NULL, 197, 1, 0, '00DE'),
(544, 3, 'en', 'Container', '2021-08-27 11:33:59.753284', '2021-08-27 11:41:40.451786', NULL, 197, 1, 0, '00DD'),
(545, 1, 'en', 'FetchRingtone', '2021-08-27 11:06:03.146771', '2021-08-27 11:43:44.166583', NULL, 198, 1, 0, '00DF'),
(546, 2, 'en', 'CategoryPanel', '2021-08-27 11:06:03.161205', '2021-08-27 11:43:44.171172', NULL, 198, 1, 0, '00DG'),
(547, 3, 'en', 'Container', '2021-08-27 11:33:59.753284', '2021-08-27 11:43:44.174694', NULL, 198, 1, 0, '00DH'),
(548, 0, 'en', 'ContainerV2', '2021-08-27 11:30:20.767066', '2021-08-27 11:43:44.179048', NULL, 198, 1, 0, '00DI'),
(549, 0, 'en', 'SingleRingtone', '2021-08-27 11:47:28.344702', '2021-08-27 11:47:28.349065', NULL, 199, 1, 0, '00DJ'),
(550, 1, 'en', 'SingleFavorite', '2021-08-27 11:47:28.355849', '2021-08-27 11:47:28.359361', NULL, 199, 1, 0, '00DK'),
(551, 0, 'en', 'SingleRingtone', '2021-08-27 11:47:28.344702', '2021-08-27 11:47:56.368432', NULL, 200, 1, 0, '00DL'),
(552, 1, 'en', 'SingleFavorite', '2021-08-27 11:47:28.355849', '2021-08-27 11:47:56.372834', NULL, 200, 1, 0, '00DM'),
(553, 0, 'en', 'SingleRingtone', '2021-08-27 11:56:48.293251', '2021-08-27 11:56:48.299283', NULL, 201, 1, 0, '00DN'),
(554, 1, 'en', 'SingleFavorite', '2021-08-27 11:56:48.308250', '2021-08-27 11:56:48.313394', NULL, 201, 1, 0, '00DO'),
(555, 0, 'en', 'SingleRingtone', '2021-08-27 11:58:29.366356', '2021-08-27 11:58:29.370243', NULL, 202, 1, 0, '00DP'),
(556, 1, 'en', 'SingleFavorite', '2021-08-27 11:58:29.375946', '2021-08-27 11:58:29.379147', NULL, 202, 1, 0, '00DQ'),
(557, 0, 'en', 'SingleRingtone', '2021-08-27 12:00:50.339486', '2021-08-27 12:00:50.343261', NULL, 203, 1, 0, '00DR'),
(558, 1, 'en', 'SingleFavorite', '2021-08-27 12:00:50.349167', '2021-08-27 12:00:50.352553', NULL, 203, 1, 0, '00DS'),
(561, 0, 'en', 'SingleRingtone', '2021-08-27 11:58:29.366356', '2021-08-27 12:01:25.208669', NULL, 205, 1, 0, '00DV'),
(562, 1, 'en', 'SingleFavorite', '2021-08-27 11:58:29.375946', '2021-08-27 12:01:25.228241', NULL, 205, 1, 0, '00DW'),
(563, 0, 'en', 'SingleRingtone', '2021-08-27 11:56:48.293251', '2021-08-27 12:02:32.372939', NULL, 204, 1, 0, '00DX'),
(564, 1, 'en', 'SingleFavorite', '2021-08-27 11:56:48.308250', '2021-08-27 12:02:32.378429', NULL, 204, 1, 0, '00DY'),
(565, 0, 'en', 'SingleRingtone', '2021-08-27 12:00:50.339486', '2021-08-27 12:03:01.902373', NULL, 206, 1, 0, '00DZ'),
(566, 1, 'en', 'SingleFavorite', '2021-08-27 12:00:50.349167', '2021-08-27 12:03:01.906295', NULL, 206, 1, 0, '00E0'),
(567, 0, 'en', 'SingleRingtone', '2021-08-27 12:10:03.054885', '2021-08-27 12:10:03.061771', NULL, 207, 1, 0, '00E1'),
(568, 1, 'en', 'SingleFavorite', '2021-08-27 12:10:03.070445', '2021-08-27 12:10:03.074475', NULL, 207, 1, 0, '00E2'),
(569, 0, 'en', 'SingleRingtone', '2021-08-27 12:11:19.351274', '2021-08-27 12:11:19.355817', NULL, 208, 1, 0, '00E3'),
(570, 1, 'en', 'SingleFavorite', '2021-08-27 12:11:19.361139', '2021-08-27 12:11:19.364425', NULL, 208, 1, 0, '00E4'),
(571, 0, 'en', 'SingleRingtone', '2021-08-27 12:12:45.174301', '2021-08-27 12:12:45.179853', NULL, 209, 1, 0, '00E5'),
(572, 1, 'en', 'SingleFavorite', '2021-08-27 12:12:45.188672', '2021-08-27 12:12:45.193918', NULL, 209, 1, 0, '00E6'),
(573, 0, 'en', 'SingleRingtone', '2021-08-27 12:10:03.054885', '2021-08-27 12:13:25.003797', NULL, 210, 1, 0, '00E7'),
(574, 1, 'en', 'SingleFavorite', '2021-08-27 12:10:03.070445', '2021-08-27 12:13:25.008734', NULL, 210, 1, 0, '00E8'),
(575, 0, 'en', 'SingleRingtone', '2021-08-27 12:11:19.351274', '2021-08-27 12:13:25.540733', NULL, 211, 1, 0, '00E9'),
(576, 1, 'en', 'SingleFavorite', '2021-08-27 12:11:19.361139', '2021-08-27 12:13:25.544751', NULL, 211, 1, 0, '00EA'),
(577, 0, 'en', 'SingleRingtone', '2021-08-27 12:12:45.174301', '2021-08-27 12:13:27.041559', NULL, 212, 1, 0, '00EB'),
(578, 1, 'en', 'SingleFavorite', '2021-08-27 12:12:45.188672', '2021-08-27 12:13:27.046122', NULL, 212, 1, 0, '00EC'),
(579, 0, 'en', 'SingleRingtone', '2021-08-27 12:15:20.217296', '2021-08-27 12:15:20.222565', NULL, 213, 1, 0, '00ED'),
(580, 1, 'en', 'SingleFavorite', '2021-08-27 12:15:20.230601', '2021-08-27 12:15:20.234350', NULL, 213, 1, 0, '00EE'),
(581, 0, 'en', 'SingleRingtone', '2021-08-27 12:15:20.217296', '2021-08-27 12:15:48.261913', NULL, 214, 1, 0, '00EF'),
(582, 1, 'en', 'SingleFavorite', '2021-08-27 12:15:20.230601', '2021-08-27 12:15:48.266559', NULL, 214, 1, 0, '00EG'),
(583, 1, 'en', 'FetchRingtone', '2021-06-06 16:37:42.723147', '2021-08-27 12:19:44.307361', NULL, 22, 1, 0, '00EH'),
(584, 2, 'en', 'CategoryPanel', '2021-06-06 16:37:42.734431', '2021-08-27 12:19:44.312163', NULL, 22, 1, 0, '00EI'),
(585, 3, 'en', 'Container', '2021-06-06 17:18:08.661247', '2021-08-27 12:19:44.315781', NULL, 22, 1, 0, '00EJ'),
(586, 0, 'en', 'ContainerV2', '2021-07-21 13:39:19.172201', '2021-08-27 12:19:44.321124', NULL, 22, 1, 0, '00EK'),
(591, 1, 'en', 'FetchRingtone', '2021-06-15 15:10:49.886192', '2021-08-27 12:23:43.806121', NULL, 66, 1, 0, '00EP'),
(592, 2, 'en', 'CategoryPanel', '2021-06-15 15:10:49.898288', '2021-08-27 12:23:43.811268', NULL, 66, 1, 0, '00EQ'),
(593, 3, 'en', 'Container', '2021-06-15 15:27:58.281286', '2021-08-27 12:23:43.815317', NULL, 66, 1, 0, '00ER'),
(594, 0, 'en', 'ContainerV2', '2021-07-21 13:50:41.551154', '2021-08-27 12:23:43.820045', NULL, 66, 1, 0, '00ES'),
(595, 1, 'en', 'FetchRingtone', '2021-06-26 13:12:11.443303', '2021-08-27 12:27:14.736313', NULL, 120, 1, 0, '00ET'),
(596, 2, 'en', 'CategoryPanel', '2021-06-26 13:12:11.453250', '2021-08-27 12:27:14.741141', NULL, 120, 1, 0, '00EU'),
(597, 3, 'en', 'Container', '2021-06-26 13:28:16.907844', '2021-08-27 12:27:14.744930', NULL, 120, 1, 0, '00EV'),
(598, 0, 'en', 'ContainerV2', '2021-07-21 13:57:49.076944', '2021-08-27 12:27:14.749459', NULL, 120, 1, 0, '00EW'),
(599, 1, 'en', 'FetchRingtone', '2021-07-16 12:04:27.936360', '2021-08-27 12:28:42.779179', NULL, 152, 1, 0, '00EX'),
(600, 2, 'en', 'CategoryPanel', '2021-07-16 12:04:27.945780', '2021-08-27 12:28:42.784288', NULL, 152, 1, 0, '00EY'),
(601, 0, 'en', 'ContainerV2', '2021-07-16 12:19:38.097779', '2021-08-27 12:28:42.788066', NULL, 152, 1, 0, '00EZ'),
(602, 3, 'en', 'Container', '2021-07-16 12:34:39.360000', '2021-08-27 12:28:42.791733', NULL, 152, 1, 0, '00F0'),
(603, 1, 'en', 'FetchRingtone', '2021-08-03 12:41:33.840546', '2021-08-27 12:30:04.619490', NULL, 174, 1, 0, '00F1'),
(604, 2, 'en', 'CategoryPanel', '2021-08-03 12:41:33.851593', '2021-08-27 12:30:04.623553', NULL, 174, 1, 0, '00F2'),
(605, 3, 'en', 'Container', '2021-08-03 12:55:07.925728', '2021-08-27 12:30:04.627307', NULL, 174, 1, 0, '00F3'),
(606, 0, 'en', 'ContainerV2', '2021-08-03 13:06:42.003775', '2021-08-27 12:30:04.632148', NULL, 174, 1, 0, '00F4'),
(611, 0, 'en', 'AboutUs', '2021-06-05 18:02:12.336058', '2021-09-05 12:54:13.160067', NULL, 17, 1, 0, '00F9'),
(612, 0, 'en', 'SingleRingtone', '2021-09-13 12:22:03.196819', '2021-09-13 12:22:03.201902', NULL, 215, 1, 0, '00FA'),
(613, 1, 'en', 'SingleFavorite', '2021-09-13 12:22:03.208598', '2021-09-13 12:22:03.212048', NULL, 215, 1, 0, '00FB'),
(614, 0, 'en', 'SingleRingtone', '2021-09-13 12:22:03.196819', '2021-09-13 12:22:51.379119', NULL, 216, 1, 0, '00FC'),
(615, 1, 'en', 'SingleFavorite', '2021-09-13 12:22:03.208598', '2021-09-13 12:22:51.383668', NULL, 216, 1, 0, '00FD'),
(620, 1, 'en', 'FetchRingtone', '2021-09-25 07:28:29.143274', '2021-09-25 07:28:29.148856', NULL, 217, 1, 0, '00FI'),
(621, 2, 'en', 'CategoryPanel', '2021-09-25 07:28:29.156146', '2021-09-25 07:28:29.159610', NULL, 217, 1, 0, '00FJ'),
(624, 0, 'en', 'ContainerV2', '2021-09-25 07:33:08.394077', '2021-09-25 07:33:08.399093', NULL, 217, 1, 0, '00FM'),
(625, 3, 'en', 'Container', '2021-09-25 07:38:29.371551', '2021-09-25 07:43:58.285943', NULL, 217, 1, 0, '00FN'),
(626, 1, 'en', 'FetchRingtone', '2021-09-25 07:28:29.143274', '2021-09-25 07:44:14.287108', NULL, 218, 1, 0, '00FO'),
(627, 2, 'en', 'CategoryPanel', '2021-09-25 07:28:29.156146', '2021-09-25 07:44:14.293012', NULL, 218, 1, 0, '00FP'),
(628, 0, 'en', 'ContainerV2', '2021-09-25 07:33:08.394077', '2021-09-25 07:44:14.297561', NULL, 218, 1, 0, '00FQ'),
(629, 3, 'en', 'Container', '2021-09-25 07:38:29.371551', '2021-09-25 07:44:14.302164', NULL, 218, 1, 0, '00FR'),
(630, 0, 'en', 'SingleRingtone', '2021-09-25 07:49:43.948473', '2021-09-25 07:49:43.952876', NULL, 219, 1, 0, '00FS'),
(631, 1, 'en', 'SingleFavorite', '2021-09-25 07:49:43.960076', '2021-09-25 07:49:43.963337', NULL, 219, 1, 0, '00FT');
INSERT INTO `cms_cmsplugin` (`id`, `position`, `language`, `plugin_type`, `creation_date`, `changed_date`, `parent_id`, `placeholder_id`, `depth`, `numchild`, `path`) VALUES
(634, 0, 'en', 'SingleRingtone', '2021-09-25 08:01:11.463015', '2021-09-25 08:01:11.468416', NULL, 221, 1, 0, '00FW'),
(635, 1, 'en', 'SingleFavorite', '2021-09-25 08:01:11.476721', '2021-09-25 08:01:11.481214', NULL, 221, 1, 0, '00FX'),
(638, 0, 'en', 'SingleRingtone', '2021-09-25 15:06:55.729056', '2021-09-25 15:06:55.739634', NULL, 223, 1, 0, '00G0'),
(639, 1, 'en', 'SingleFavorite', '2021-09-25 15:06:55.777470', '2021-09-25 15:06:55.782698', NULL, 223, 1, 0, '00G1'),
(640, 0, 'en', 'SingleRingtone', '2021-09-25 15:09:17.181977', '2021-09-25 15:09:17.187701', NULL, 224, 1, 0, '00G2'),
(641, 1, 'en', 'SingleFavorite', '2021-09-25 15:09:17.196086', '2021-09-25 15:09:17.200041', NULL, 224, 1, 0, '00G3'),
(650, 0, 'en', 'SingleRingtone', '2021-10-02 04:28:53.761703', '2021-10-02 04:28:53.765899', NULL, 227, 1, 0, '00GA'),
(651, 1, 'en', 'SingleFavorite', '2021-10-02 04:28:53.771979', '2021-10-02 04:28:53.774983', NULL, 227, 1, 0, '00GB'),
(654, 0, 'en', 'SingleRingtone', '2021-10-02 04:42:46.260249', '2021-10-02 04:42:46.263962', NULL, 229, 1, 0, '00GE'),
(655, 1, 'en', 'SingleFavorite', '2021-10-02 04:42:46.269370', '2021-10-02 04:42:46.272241', NULL, 229, 1, 0, '00GF'),
(656, 0, 'en', 'SingleRingtone', '2021-10-02 04:42:46.260249', '2021-10-02 04:53:29.379990', NULL, 230, 1, 0, '00GG'),
(657, 1, 'en', 'SingleFavorite', '2021-10-02 04:42:46.269370', '2021-10-02 04:53:29.388769', NULL, 230, 1, 0, '00GH'),
(658, 0, 'en', 'SingleRingtone', '2021-10-02 05:15:24.501609', '2021-10-02 05:15:24.505202', NULL, 231, 1, 0, '00GI'),
(659, 1, 'en', 'SingleFavorite', '2021-10-02 05:15:24.511020', '2021-10-02 05:15:24.514100', NULL, 231, 1, 0, '00GJ'),
(662, 0, 'en', 'SingleRingtone', '2021-10-10 11:43:00.377220', '2021-10-10 11:43:00.381431', NULL, 233, 1, 0, '00GM'),
(663, 1, 'en', 'SingleFavorite', '2021-10-10 11:43:00.387567', '2021-10-10 11:43:00.390959', NULL, 233, 1, 0, '00GN'),
(666, 0, 'en', 'SingleRingtone', '2021-10-13 04:04:35.496803', '2021-10-13 04:04:35.501049', NULL, 235, 1, 0, '00GQ'),
(667, 1, 'en', 'SingleFavorite', '2021-10-13 04:04:35.507279', '2021-10-13 04:04:35.510513', NULL, 235, 1, 0, '00GR'),
(668, 0, 'en', 'SingleRingtone', '2021-10-13 04:04:35.496803', '2021-10-13 04:07:01.030167', NULL, 236, 1, 0, '00GS'),
(669, 1, 'en', 'SingleFavorite', '2021-10-13 04:04:35.507279', '2021-10-13 04:07:01.035642', NULL, 236, 1, 0, '00GT'),
(670, 0, 'en', 'SingleRingtone', '2021-10-13 04:17:00.564983', '2021-10-13 04:17:00.569172', NULL, 237, 1, 0, '00GU'),
(671, 1, 'en', 'SingleFavorite', '2021-10-13 04:17:00.575546', '2021-10-13 04:17:00.578801', NULL, 237, 1, 0, '00GV'),
(672, 0, 'en', 'SingleRingtone', '2021-10-13 04:23:34.451054', '2021-10-13 04:23:34.454421', NULL, 238, 1, 0, '00GW'),
(673, 1, 'en', 'SingleFavorite', '2021-10-13 04:23:34.460255', '2021-10-13 04:23:34.463354', NULL, 238, 1, 0, '00GX'),
(674, 0, 'en', 'SingleRingtone', '2021-10-13 04:28:39.685383', '2021-10-13 04:28:39.688804', NULL, 239, 1, 0, '00GY'),
(675, 1, 'en', 'SingleFavorite', '2021-10-13 04:28:39.694527', '2021-10-13 04:28:39.697625', NULL, 239, 1, 0, '00GZ'),
(676, 0, 'en', 'SingleRingtone', '2021-10-13 04:17:00.564983', '2021-10-13 04:29:54.968221', NULL, 240, 1, 0, '00H0'),
(677, 1, 'en', 'SingleFavorite', '2021-10-13 04:17:00.575546', '2021-10-13 04:29:54.973655', NULL, 240, 1, 0, '00H1'),
(678, 0, 'en', 'SingleRingtone', '2021-10-13 04:23:34.451054', '2021-10-13 04:31:18.724579', NULL, 241, 1, 0, '00H2'),
(679, 1, 'en', 'SingleFavorite', '2021-10-13 04:23:34.460255', '2021-10-13 04:31:18.730226', NULL, 241, 1, 0, '00H3'),
(680, 0, 'en', 'SingleRingtone', '2021-10-13 04:28:39.685383', '2021-10-13 04:33:56.688835', NULL, 242, 1, 0, '00H4'),
(681, 1, 'en', 'SingleFavorite', '2021-10-13 04:28:39.694527', '2021-10-13 04:33:56.692463', NULL, 242, 1, 0, '00H5'),
(684, 0, 'en', 'SingleRingtone', '2021-09-25 08:01:11.463015', '2021-10-13 09:00:45.433152', NULL, 222, 1, 0, '00H8'),
(685, 1, 'en', 'SingleFavorite', '2021-09-25 08:01:11.476721', '2021-10-13 09:00:45.439206', NULL, 222, 1, 0, '00H9'),
(686, 0, 'en', 'SingleRingtone', '2021-09-25 15:06:55.729056', '2021-10-13 09:02:13.612868', NULL, 225, 1, 0, '00HA'),
(687, 1, 'en', 'SingleFavorite', '2021-09-25 15:06:55.777470', '2021-10-13 09:02:13.618589', NULL, 225, 1, 0, '00HB'),
(688, 0, 'en', 'SingleRingtone', '2021-09-25 15:09:17.181977', '2021-10-13 09:02:38.481056', NULL, 226, 1, 0, '00HC'),
(689, 1, 'en', 'SingleFavorite', '2021-09-25 15:09:17.196086', '2021-10-13 09:02:38.488097', NULL, 226, 1, 0, '00HD'),
(690, 0, 'en', 'SingleRingtone', '2021-10-02 04:28:53.761703', '2021-10-13 09:03:08.671213', NULL, 228, 1, 0, '00HE'),
(691, 1, 'en', 'SingleFavorite', '2021-10-02 04:28:53.771979', '2021-10-13 09:03:08.676284', NULL, 228, 1, 0, '00HF'),
(692, 0, 'en', 'SingleRingtone', '2021-10-02 05:15:24.501609', '2021-10-13 09:03:47.143174', NULL, 232, 1, 0, '00HG'),
(693, 1, 'en', 'SingleFavorite', '2021-10-02 05:15:24.511020', '2021-10-13 09:03:47.149343', NULL, 232, 1, 0, '00HH'),
(694, 0, 'en', 'SingleRingtone', '2021-10-10 11:43:00.377220', '2021-10-13 09:04:35.982144', NULL, 234, 1, 0, '00HI'),
(695, 1, 'en', 'SingleFavorite', '2021-10-10 11:43:00.387567', '2021-10-13 09:04:35.986935', NULL, 234, 1, 0, '00HJ'),
(702, 0, 'en', 'SingleRingtone', '2021-10-15 03:39:42.715461', '2021-10-15 03:39:42.718768', NULL, 245, 1, 0, '00HO'),
(703, 1, 'en', 'SingleFavorite', '2021-10-15 03:39:42.724052', '2021-10-15 03:39:42.727084', NULL, 245, 1, 0, '00HP'),
(704, 0, 'en', 'SingleRingtone', '2021-10-15 03:39:42.715461', '2021-10-15 03:40:05.876746', NULL, 246, 1, 0, '00HQ'),
(705, 1, 'en', 'SingleFavorite', '2021-10-15 03:39:42.724052', '2021-10-15 03:40:05.881339', NULL, 246, 1, 0, '00HR'),
(706, 0, 'en', 'SingleRingtone', '2021-09-25 07:49:43.948473', '2021-10-15 04:04:45.228712', NULL, 220, 1, 0, '00HS'),
(707, 1, 'en', 'SingleFavorite', '2021-09-25 07:49:43.960076', '2021-10-15 04:04:45.233882', NULL, 220, 1, 0, '00HT'),
(708, 0, 'en', 'SingleRingtone', '2021-10-15 05:34:10.899666', '2021-10-15 05:34:10.903259', NULL, 247, 1, 0, '00HU'),
(709, 1, 'en', 'SingleFavorite', '2021-10-15 05:34:10.908578', '2021-10-15 05:34:10.911539', NULL, 247, 1, 0, '00HV'),
(710, 0, 'en', 'SingleRingtone', '2021-10-15 05:34:10.899666', '2021-10-15 05:34:41.886255', NULL, 248, 1, 0, '00HW'),
(711, 1, 'en', 'SingleFavorite', '2021-10-15 05:34:10.908578', '2021-10-15 05:34:41.890132', NULL, 248, 1, 0, '00HX'),
(712, 0, 'en', 'SingleRingtone', '2021-10-15 06:20:22.638389', '2021-10-15 06:20:22.648071', NULL, 249, 1, 0, '00HY'),
(713, 1, 'en', 'SingleFavorite', '2021-10-15 06:20:22.656507', '2021-10-15 06:20:22.661283', NULL, 249, 1, 0, '00HZ'),
(714, 0, 'en', 'SingleRingtone', '2021-10-15 06:20:22.638389', '2021-10-15 06:20:46.134579', NULL, 250, 1, 0, '00I0'),
(715, 1, 'en', 'SingleFavorite', '2021-10-15 06:20:22.656507', '2021-10-15 06:20:46.141254', NULL, 250, 1, 0, '00I1'),
(716, 0, 'en', 'SingleRingtone', '2021-10-16 03:44:56.097008', '2021-10-16 03:44:56.101490', NULL, 251, 1, 0, '00I2'),
(717, 1, 'en', 'SingleFavorite', '2021-10-16 03:44:56.107935', '2021-10-16 03:44:56.111202', NULL, 251, 1, 0, '00I3'),
(718, 0, 'en', 'SingleRingtone', '2021-10-16 03:44:56.097008', '2021-10-16 03:45:19.335904', NULL, 252, 1, 0, '00I4'),
(719, 1, 'en', 'SingleFavorite', '2021-10-16 03:44:56.107935', '2021-10-16 03:45:19.340838', NULL, 252, 1, 0, '00I5'),
(720, 0, 'en', 'SingleRingtone', '2021-10-16 05:41:40.470561', '2021-10-16 05:41:40.474014', NULL, 253, 1, 0, '00I6'),
(721, 1, 'en', 'SingleFavorite', '2021-10-16 05:41:40.479438', '2021-10-16 05:41:40.482312', NULL, 253, 1, 0, '00I7'),
(722, 0, 'en', 'SingleRingtone', '2021-10-16 05:41:40.470561', '2021-10-16 05:42:10.031308', NULL, 254, 1, 0, '00I8'),
(723, 1, 'en', 'SingleFavorite', '2021-10-16 05:41:40.479438', '2021-10-16 05:42:10.035462', NULL, 254, 1, 0, '00I9'),
(724, 0, 'en', 'SingleRingtone', '2021-10-17 06:35:14.029394', '2021-10-17 06:35:14.034300', NULL, 255, 1, 0, '00IA'),
(725, 1, 'en', 'SingleFavorite', '2021-10-17 06:35:14.041072', '2021-10-17 06:35:14.044489', NULL, 255, 1, 0, '00IB'),
(726, 0, 'en', 'SingleRingtone', '2021-10-17 06:35:14.029394', '2021-10-17 06:36:37.333408', NULL, 256, 1, 0, '00IC'),
(727, 1, 'en', 'SingleFavorite', '2021-10-17 06:35:14.041072', '2021-10-17 06:36:37.336974', NULL, 256, 1, 0, '00ID'),
(728, 0, 'en', 'SingleRingtone', '2021-10-18 13:34:01.010800', '2021-10-18 13:34:01.023550', NULL, 257, 1, 0, '00IE'),
(729, 1, 'en', 'SingleFavorite', '2021-10-18 13:34:01.032060', '2021-10-18 13:34:01.037834', NULL, 257, 1, 0, '00IF'),
(730, 0, 'en', 'SingleRingtone', '2021-10-18 13:34:01.010800', '2021-10-18 13:34:33.939454', NULL, 258, 1, 0, '00IG'),
(731, 1, 'en', 'SingleFavorite', '2021-10-18 13:34:01.032060', '2021-10-18 13:34:33.943650', NULL, 258, 1, 0, '00IH'),
(732, 0, 'en', 'SingleRingtone', '2021-10-19 17:20:09.685509', '2021-10-19 17:20:09.689575', NULL, 259, 1, 0, '00II'),
(733, 1, 'en', 'SingleFavorite', '2021-10-19 17:20:09.695793', '2021-10-19 17:20:09.698976', NULL, 259, 1, 0, '00IJ'),
(734, 0, 'en', 'SingleRingtone', '2021-10-19 17:20:09.685509', '2021-10-19 17:28:23.886201', NULL, 260, 1, 0, '00IK'),
(735, 1, 'en', 'SingleFavorite', '2021-10-19 17:20:09.695793', '2021-10-19 17:28:23.892067', NULL, 260, 1, 0, '00IL'),
(736, 0, 'en', 'SingleRingtone', '2021-10-19 17:31:33.038728', '2021-10-19 17:31:33.043858', NULL, 261, 1, 0, '00IM'),
(737, 1, 'en', 'SingleFavorite', '2021-10-19 17:31:33.054426', '2021-10-19 17:31:33.059435', NULL, 261, 1, 0, '00IN'),
(738, 0, 'en', 'SingleRingtone', '2021-10-19 17:31:33.038728', '2021-10-19 17:33:31.113767', NULL, 262, 1, 0, '00IO'),
(739, 1, 'en', 'SingleFavorite', '2021-10-19 17:31:33.054426', '2021-10-19 17:33:31.118437', NULL, 262, 1, 0, '00IP'),
(740, 0, 'en', 'SingleRingtone', '2021-10-20 04:03:47.492694', '2021-10-20 04:03:47.497278', NULL, 263, 1, 0, '00IQ'),
(741, 1, 'en', 'SingleFavorite', '2021-10-20 04:03:47.504643', '2021-10-20 04:03:47.508016', NULL, 263, 1, 0, '00IR'),
(742, 0, 'en', 'SingleRingtone', '2021-10-20 04:03:47.492694', '2021-10-20 04:05:23.468454', NULL, 264, 1, 0, '00IS'),
(743, 1, 'en', 'SingleFavorite', '2021-10-20 04:03:47.504643', '2021-10-20 04:05:23.472901', NULL, 264, 1, 0, '00IT'),
(744, 0, 'en', 'SingleRingtone', '2021-10-20 06:33:48.608427', '2021-10-20 06:33:48.612827', NULL, 265, 1, 0, '00IU'),
(745, 1, 'en', 'SingleFavorite', '2021-10-20 06:33:48.619481', '2021-10-20 06:33:48.622793', NULL, 265, 1, 0, '00IV'),
(746, 0, 'en', 'SingleRingtone', '2021-10-20 06:33:48.608427', '2021-10-20 06:34:27.315745', NULL, 266, 1, 0, '00IW'),
(747, 1, 'en', 'SingleFavorite', '2021-10-20 06:33:48.619481', '2021-10-20 06:34:27.320340', NULL, 266, 1, 0, '00IX'),
(748, 0, 'en', 'SingleRingtone', '2021-10-20 06:38:18.362573', '2021-10-20 06:38:18.366098', NULL, 267, 1, 0, '00IY'),
(749, 1, 'en', 'SingleFavorite', '2021-10-20 06:38:18.371659', '2021-10-20 06:38:18.374882', NULL, 267, 1, 0, '00IZ'),
(750, 0, 'en', 'SingleRingtone', '2021-10-20 06:38:18.362573', '2021-10-20 06:39:03.819904', NULL, 268, 1, 0, '00J0'),
(751, 1, 'en', 'SingleFavorite', '2021-10-20 06:38:18.371659', '2021-10-20 06:39:03.823854', NULL, 268, 1, 0, '00J1'),
(752, 0, 'en', 'SingleRingtone', '2021-10-20 07:51:46.495200', '2021-10-20 07:51:46.500418', NULL, 269, 1, 0, '00J2'),
(753, 1, 'en', 'SingleFavorite', '2021-10-20 07:51:46.507200', '2021-10-20 07:51:46.511052', NULL, 269, 1, 0, '00J3'),
(754, 0, 'en', 'SingleRingtone', '2021-10-20 07:51:46.495200', '2021-10-20 07:52:20.228408', NULL, 270, 1, 0, '00J4'),
(755, 1, 'en', 'SingleFavorite', '2021-10-20 07:51:46.507200', '2021-10-20 07:52:20.232815', NULL, 270, 1, 0, '00J5'),
(756, 0, 'en', 'SingleRingtone', '2021-10-20 17:28:38.395013', '2021-10-20 17:28:38.398968', NULL, 271, 1, 0, '00J6'),
(757, 1, 'en', 'SingleFavorite', '2021-10-20 17:28:38.404312', '2021-10-20 17:28:38.407316', NULL, 271, 1, 0, '00J7'),
(758, 0, 'en', 'SingleRingtone', '2021-10-20 17:28:38.395013', '2021-10-20 17:33:34.524454', NULL, 272, 1, 0, '00J8'),
(759, 1, 'en', 'SingleFavorite', '2021-10-20 17:28:38.404312', '2021-10-20 17:33:34.528730', NULL, 272, 1, 0, '00J9'),
(760, 0, 'en', 'SingleRingtone', '2021-10-21 03:46:33.704097', '2021-10-21 03:46:33.707894', NULL, 273, 1, 0, '00JA'),
(761, 1, 'en', 'SingleFavorite', '2021-10-21 03:46:33.712906', '2021-10-21 03:46:33.715625', NULL, 273, 1, 0, '00JB'),
(762, 0, 'en', 'SingleRingtone', '2021-10-21 03:46:33.704097', '2021-10-21 03:47:10.780520', NULL, 274, 1, 0, '00JC'),
(763, 1, 'en', 'SingleFavorite', '2021-10-21 03:46:33.712906', '2021-10-21 03:47:10.784264', NULL, 274, 1, 0, '00JD'),
(764, 0, 'en', 'SingleRingtone', '2021-10-21 05:03:20.655725', '2021-10-21 05:03:20.660785', NULL, 275, 1, 0, '00JE'),
(765, 1, 'en', 'SingleFavorite', '2021-10-21 05:03:20.669017', '2021-10-21 05:03:20.673665', NULL, 275, 1, 0, '00JF'),
(766, 0, 'en', 'SingleRingtone', '2021-10-21 05:03:20.655725', '2021-10-21 05:03:55.716453', NULL, 276, 1, 0, '00JG'),
(767, 1, 'en', 'SingleFavorite', '2021-10-21 05:03:20.669017', '2021-10-21 05:03:55.720474', NULL, 276, 1, 0, '00JH'),
(768, 0, 'en', 'SingleRingtone', '2021-10-21 06:47:42.706276', '2021-10-21 06:47:42.711152', NULL, 277, 1, 0, '00JI'),
(769, 1, 'en', 'SingleFavorite', '2021-10-21 06:47:42.717785', '2021-10-21 06:47:42.721134', NULL, 277, 1, 0, '00JJ'),
(770, 0, 'en', 'SingleRingtone', '2021-10-21 06:47:42.706276', '2021-10-21 06:48:18.343635', NULL, 278, 1, 0, '00JK'),
(771, 1, 'en', 'SingleFavorite', '2021-10-21 06:47:42.717785', '2021-10-21 06:48:18.347419', NULL, 278, 1, 0, '00JL'),
(772, 0, 'en', 'SingleRingtone', '2021-10-21 06:53:12.887574', '2021-10-21 06:53:12.891178', NULL, 279, 1, 0, '00JM'),
(773, 1, 'en', 'SingleFavorite', '2021-10-21 06:53:12.896752', '2021-10-21 06:53:12.900659', NULL, 279, 1, 0, '00JN'),
(774, 0, 'en', 'SingleRingtone', '2021-10-21 06:53:12.887574', '2021-10-21 06:53:47.404136', NULL, 280, 1, 0, '00JO'),
(775, 1, 'en', 'SingleFavorite', '2021-10-21 06:53:12.896752', '2021-10-21 06:53:47.407818', NULL, 280, 1, 0, '00JP'),
(776, 0, 'en', 'SingleRingtone', '2021-10-22 16:32:27.141327', '2021-10-22 16:32:27.145299', NULL, 281, 1, 0, '00JQ'),
(777, 1, 'en', 'SingleFavorite', '2021-10-22 16:32:27.151304', '2021-10-22 16:32:27.154359', NULL, 281, 1, 0, '00JR'),
(778, 0, 'en', 'SingleRingtone', '2021-10-22 16:32:27.141327', '2021-10-22 16:33:09.976348', NULL, 282, 1, 0, '00JS'),
(779, 1, 'en', 'SingleFavorite', '2021-10-22 16:32:27.151304', '2021-10-22 16:33:09.982254', NULL, 282, 1, 0, '00JT'),
(780, 1, 'en', 'FetchRingtone', '2021-10-23 16:20:55.111791', '2021-10-23 16:20:55.115966', NULL, 283, 1, 0, '00JU'),
(781, 2, 'en', 'CategoryPanel', '2021-10-23 16:20:55.121787', '2021-10-23 16:20:55.124821', NULL, 283, 1, 0, '00JV'),
(782, 0, 'en', 'ContainerV2', '2021-10-23 16:27:04.350981', '2021-10-23 16:40:40.831540', NULL, 283, 1, 0, '00JW'),
(783, 3, 'en', 'Container', '2021-10-23 16:36:25.856632', '2021-10-29 13:35:06.896295', NULL, 283, 1, 0, '00JX'),
(788, 0, 'en', 'SingleRingtone', '2021-10-23 16:50:05.575764', '2021-10-23 16:50:05.580346', NULL, 285, 1, 0, '00K2'),
(789, 1, 'en', 'SingleFavorite', '2021-10-23 16:50:05.587919', '2021-10-23 16:50:05.591473', NULL, 285, 1, 0, '00K3'),
(790, 0, 'en', 'SingleRingtone', '2021-10-23 16:50:05.575764', '2021-10-23 16:52:02.029719', NULL, 286, 1, 0, '00K4'),
(791, 1, 'en', 'SingleFavorite', '2021-10-23 16:50:05.587919', '2021-10-23 16:52:02.035522', NULL, 286, 1, 0, '00K5'),
(800, 0, 'en', 'SingleRingtone', '2021-10-24 05:13:22.935810', '2021-10-24 05:13:22.941368', NULL, 287, 1, 0, '00KE'),
(801, 1, 'en', 'SingleFavorite', '2021-10-24 05:13:22.947928', '2021-10-24 05:13:22.950828', NULL, 287, 1, 0, '00KF'),
(802, 0, 'en', 'SingleRingtone', '2021-10-24 05:13:22.935810', '2021-10-24 05:14:31.011519', NULL, 288, 1, 0, '00KG'),
(803, 1, 'en', 'SingleFavorite', '2021-10-24 05:13:22.947928', '2021-10-24 05:14:31.017142', NULL, 288, 1, 0, '00KH'),
(832, 0, 'en', 'SingleRingtone', '2021-10-26 04:26:08.839984', '2021-10-26 04:26:08.845833', NULL, 290, 1, 0, '00KQ'),
(833, 1, 'en', 'SingleFavorite', '2021-10-26 04:26:08.853110', '2021-10-26 04:26:08.856655', NULL, 290, 1, 0, '00KR'),
(834, 0, 'en', 'SingleRingtone', '2021-10-26 04:26:08.839984', '2021-10-26 04:27:06.551695', NULL, 291, 1, 0, '00KS'),
(835, 1, 'en', 'SingleFavorite', '2021-10-26 04:26:08.853110', '2021-10-26 04:27:06.556482', NULL, 291, 1, 0, '00KT'),
(840, 0, 'en', 'SingleRingtone', '2021-10-26 17:40:08.327094', '2021-10-26 17:40:08.331882', NULL, 292, 1, 0, '00KY'),
(841, 1, 'en', 'SingleFavorite', '2021-10-26 17:40:08.337735', '2021-10-26 17:40:08.340774', NULL, 292, 1, 0, '00KZ'),
(842, 0, 'en', 'SingleRingtone', '2021-10-26 17:40:08.327094', '2021-10-26 17:40:55.413560', NULL, 293, 1, 0, '00L0'),
(843, 1, 'en', 'SingleFavorite', '2021-10-26 17:40:08.337735', '2021-10-26 17:40:55.420156', NULL, 293, 1, 0, '00L1'),
(844, 0, 'en', 'SingleRingtone', '2021-10-26 17:49:44.060688', '2021-10-26 17:49:44.064148', NULL, 294, 1, 0, '00L2'),
(845, 1, 'en', 'SingleFavorite', '2021-10-26 17:49:44.069285', '2021-10-26 17:49:44.072144', NULL, 294, 1, 0, '00L3'),
(846, 0, 'en', 'SingleRingtone', '2021-10-26 17:49:44.060688', '2021-10-26 17:51:50.693620', NULL, 295, 1, 0, '00L4'),
(847, 1, 'en', 'SingleFavorite', '2021-10-26 17:49:44.069285', '2021-10-26 17:51:50.697633', NULL, 295, 1, 0, '00L5'),
(848, 0, 'en', 'SingleRingtone', '2021-10-27 10:13:51.473726', '2021-10-27 10:13:51.477852', NULL, 296, 1, 0, '00L6'),
(849, 1, 'en', 'SingleFavorite', '2021-10-27 10:13:51.484341', '2021-10-27 10:13:51.488142', NULL, 296, 1, 0, '00L7'),
(850, 0, 'en', 'SingleRingtone', '2021-10-27 10:17:26.983987', '2021-10-27 10:17:26.987403', NULL, 297, 1, 0, '00L8'),
(851, 1, 'en', 'SingleFavorite', '2021-10-27 10:17:26.993089', '2021-10-27 10:17:26.996299', NULL, 297, 1, 0, '00L9'),
(852, 0, 'en', 'SingleRingtone', '2021-10-27 10:13:51.473726', '2021-10-27 10:18:00.600315', NULL, 298, 1, 0, '00LA'),
(853, 1, 'en', 'SingleFavorite', '2021-10-27 10:13:51.484341', '2021-10-27 10:18:00.604876', NULL, 298, 1, 0, '00LB'),
(854, 0, 'en', 'SingleRingtone', '2021-10-27 10:17:26.983987', '2021-10-27 10:18:26.503741', NULL, 299, 1, 0, '00LC'),
(855, 1, 'en', 'SingleFavorite', '2021-10-27 10:17:26.993089', '2021-10-27 10:18:26.507523', NULL, 299, 1, 0, '00LD'),
(856, 0, 'en', 'SingleRingtone', '2021-10-28 07:36:23.664057', '2021-10-28 07:36:23.669822', NULL, 300, 1, 0, '00LE'),
(857, 1, 'en', 'SingleFavorite', '2021-10-28 07:36:23.676078', '2021-10-28 07:36:23.679061', NULL, 300, 1, 0, '00LF'),
(858, 0, 'en', 'SingleRingtone', '2021-10-28 07:39:43.024473', '2021-10-28 07:39:43.028446', NULL, 301, 1, 0, '00LG'),
(859, 1, 'en', 'SingleFavorite', '2021-10-28 07:39:43.034173', '2021-10-28 07:39:43.037189', NULL, 301, 1, 0, '00LH'),
(860, 0, 'en', 'SingleRingtone', '2021-10-28 07:43:10.943495', '2021-10-28 07:43:10.948218', NULL, 302, 1, 0, '00LI'),
(861, 1, 'en', 'SingleFavorite', '2021-10-28 07:43:10.956105', '2021-10-28 07:43:10.959567', NULL, 302, 1, 0, '00LJ'),
(862, 0, 'en', 'SingleRingtone', '2021-10-28 07:46:29.846187', '2021-10-28 07:46:29.850118', NULL, 303, 1, 0, '00LK'),
(863, 1, 'en', 'SingleFavorite', '2021-10-28 07:46:29.856017', '2021-10-28 07:46:29.859590', NULL, 303, 1, 0, '00LL'),
(864, 0, 'en', 'SingleRingtone', '2021-10-28 07:50:24.891269', '2021-10-28 07:50:24.895008', NULL, 304, 1, 0, '00LM'),
(865, 1, 'en', 'SingleFavorite', '2021-10-28 07:50:24.900621', '2021-10-28 07:50:24.903932', NULL, 304, 1, 0, '00LN'),
(866, 0, 'en', 'SingleRingtone', '2021-10-28 07:52:40.530290', '2021-10-28 07:52:40.534117', NULL, 305, 1, 0, '00LO'),
(867, 1, 'en', 'SingleFavorite', '2021-10-28 07:52:40.540442', '2021-10-28 07:52:40.543726', NULL, 305, 1, 0, '00LP'),
(868, 0, 'en', 'SingleRingtone', '2021-10-28 07:58:03.961719', '2021-10-28 07:58:03.965547', NULL, 306, 1, 0, '00LQ'),
(869, 1, 'en', 'SingleFavorite', '2021-10-28 07:58:03.971829', '2021-10-28 07:58:03.975140', NULL, 306, 1, 0, '00LR'),
(870, 0, 'en', 'SingleRingtone', '2021-10-28 07:36:23.664057', '2021-10-28 07:59:42.107039', NULL, 307, 1, 0, '00LS'),
(871, 1, 'en', 'SingleFavorite', '2021-10-28 07:36:23.676078', '2021-10-28 07:59:42.111465', NULL, 307, 1, 0, '00LT'),
(872, 0, 'en', 'SingleRingtone', '2021-10-28 07:39:43.024473', '2021-10-28 08:01:30.776947', NULL, 308, 1, 0, '00LU'),
(873, 1, 'en', 'SingleFavorite', '2021-10-28 07:39:43.034173', '2021-10-28 08:01:30.782241', NULL, 308, 1, 0, '00LV'),
(874, 0, 'en', 'SingleRingtone', '2021-10-28 07:43:10.943495', '2021-10-28 08:01:50.472787', NULL, 309, 1, 0, '00LW'),
(875, 1, 'en', 'SingleFavorite', '2021-10-28 07:43:10.956105', '2021-10-28 08:01:50.479803', NULL, 309, 1, 0, '00LX'),
(876, 0, 'en', 'SingleRingtone', '2021-10-28 07:46:29.846187', '2021-10-28 08:02:12.280260', NULL, 310, 1, 0, '00LY'),
(877, 1, 'en', 'SingleFavorite', '2021-10-28 07:46:29.856017', '2021-10-28 08:02:12.285055', NULL, 310, 1, 0, '00LZ'),
(878, 0, 'en', 'SingleRingtone', '2021-10-28 07:50:24.891269', '2021-10-28 08:03:00.515122', NULL, 311, 1, 0, '00M0'),
(879, 1, 'en', 'SingleFavorite', '2021-10-28 07:50:24.900621', '2021-10-28 08:03:00.520428', NULL, 311, 1, 0, '00M1'),
(880, 0, 'en', 'SingleRingtone', '2021-10-28 07:52:40.530290', '2021-10-28 08:03:21.065525', NULL, 312, 1, 0, '00M2'),
(881, 1, 'en', 'SingleFavorite', '2021-10-28 07:52:40.540442', '2021-10-28 08:03:21.069770', NULL, 312, 1, 0, '00M3'),
(882, 0, 'en', 'SingleRingtone', '2021-10-28 07:58:03.961719', '2021-10-28 08:03:47.143374', NULL, 313, 1, 0, '00M4'),
(883, 1, 'en', 'SingleFavorite', '2021-10-28 07:58:03.971829', '2021-10-28 08:03:47.149320', NULL, 313, 1, 0, '00M5'),
(884, 1, 'en', 'FetchRingtone', '2021-10-23 16:20:55.111791', '2021-10-29 13:35:17.191929', NULL, 284, 1, 0, '00M6'),
(885, 2, 'en', 'CategoryPanel', '2021-10-23 16:20:55.121787', '2021-10-29 13:35:17.197221', NULL, 284, 1, 0, '00M7'),
(886, 0, 'en', 'ContainerV2', '2021-10-23 16:27:04.350981', '2021-10-29 13:35:17.200950', NULL, 284, 1, 0, '00M8'),
(887, 3, 'en', 'Container', '2021-10-23 16:36:25.856632', '2021-10-29 13:35:17.204479', NULL, 284, 1, 0, '00M9'),
(888, 0, 'en', 'SingleRingtone', '2021-10-29 14:05:47.831164', '2021-10-29 14:05:47.834826', NULL, 314, 1, 0, '00MA'),
(889, 1, 'en', 'SingleFavorite', '2021-10-29 14:05:47.840909', '2021-10-29 14:05:47.844012', NULL, 314, 1, 0, '00MB'),
(890, 0, 'en', 'SingleRingtone', '2021-10-29 14:05:47.831164', '2021-10-29 14:06:37.761129', NULL, 315, 1, 0, '00MC'),
(891, 1, 'en', 'SingleFavorite', '2021-10-29 14:05:47.840909', '2021-10-29 14:06:37.764980', NULL, 315, 1, 0, '00MD'),
(892, 0, 'en', 'SingleRingtone', '2021-10-30 11:30:52.264029', '2021-10-30 11:30:52.270062', NULL, 316, 1, 0, '00ME'),
(893, 1, 'en', 'SingleFavorite', '2021-10-30 11:30:52.277500', '2021-10-30 11:30:52.281244', NULL, 316, 1, 0, '00MF'),
(894, 0, 'en', 'SingleRingtone', '2021-10-30 11:30:52.264029', '2021-10-30 11:31:55.960922', NULL, 317, 1, 0, '00MG'),
(895, 1, 'en', 'SingleFavorite', '2021-10-30 11:30:52.277500', '2021-10-30 11:31:55.964994', NULL, 317, 1, 0, '00MH'),
(896, 0, 'en', 'SingleRingtone', '2021-11-22 20:36:41.644676', '2021-11-22 20:36:41.651360', NULL, 318, 1, 0, '00MI'),
(897, 1, 'en', 'SingleFavorite', '2021-11-22 20:36:41.658997', '2021-11-22 20:36:41.662699', NULL, 318, 1, 0, '00MJ'),
(898, 0, 'en', 'SingleRingtone', '2021-11-22 20:36:41.644676', '2021-11-22 20:37:06.092393', NULL, 319, 1, 0, '00MK'),
(899, 1, 'en', 'SingleFavorite', '2021-11-22 20:36:41.658997', '2021-11-22 20:37:06.096364', NULL, 319, 1, 0, '00ML'),
(900, 0, 'en', 'Container', '2021-06-20 07:11:46.990688', '2021-11-27 06:18:33.300788', NULL, 110, 1, 0, '00MM'),
(901, 0, 'en', 'SingleRingtone', '2021-11-28 05:24:33.843617', '2021-11-28 05:24:33.851790', NULL, 320, 1, 0, '00MN'),
(902, 1, 'en', 'SingleFavorite', '2021-11-28 05:24:33.860614', '2021-11-28 05:24:33.865158', NULL, 320, 1, 0, '00MO'),
(903, 0, 'en', 'SingleRingtone', '2021-11-28 05:24:33.843617', '2021-11-28 05:25:03.024869', NULL, 321, 1, 0, '00MP'),
(904, 1, 'en', 'SingleFavorite', '2021-11-28 05:24:33.860614', '2021-11-28 05:25:03.032502', NULL, 321, 1, 0, '00MQ'),
(905, 0, 'en', 'SingleRingtone', '2021-12-04 04:18:32.514399', '2021-12-04 04:18:32.519136', NULL, 322, 1, 0, '00MR'),
(906, 1, 'en', 'SingleFavorite', '2021-12-04 04:18:32.525958', '2021-12-04 04:18:32.529534', NULL, 322, 1, 0, '00MS'),
(907, 0, 'en', 'SingleRingtone', '2021-12-04 04:18:32.514399', '2021-12-04 04:19:13.223136', NULL, 323, 1, 0, '00MT'),
(908, 1, 'en', 'SingleFavorite', '2021-12-04 04:18:32.525958', '2021-12-04 04:19:13.228855', NULL, 323, 1, 0, '00MU'),
(909, 0, 'en', 'SingleRingtone', '2021-12-06 06:18:19.138307', '2021-12-06 06:18:19.143178', NULL, 324, 1, 0, '00MV'),
(910, 1, 'en', 'SingleFavorite', '2021-12-06 06:18:19.150390', '2021-12-06 06:18:19.153684', NULL, 324, 1, 0, '00MW'),
(911, 0, 'en', 'SingleRingtone', '2021-12-06 06:18:19.138307', '2021-12-06 06:19:05.340882', NULL, 325, 1, 0, '00MX'),
(912, 1, 'en', 'SingleFavorite', '2021-12-06 06:18:19.150390', '2021-12-06 06:19:05.345062', NULL, 325, 1, 0, '00MY'),
(913, 0, 'en', 'SingleRingtone', '2021-12-08 04:45:35.605796', '2021-12-08 04:45:35.613077', NULL, 326, 1, 0, '00MZ'),
(914, 1, 'en', 'SingleFavorite', '2021-12-08 04:45:35.622062', '2021-12-08 04:45:35.625671', NULL, 326, 1, 0, '00N0'),
(915, 0, 'en', 'SingleRingtone', '2021-12-08 04:45:35.605796', '2021-12-08 04:45:55.892713', NULL, 327, 1, 0, '00N1'),
(916, 1, 'en', 'SingleFavorite', '2021-12-08 04:45:35.622062', '2021-12-08 04:45:55.897501', NULL, 327, 1, 0, '00N2'),
(917, 0, 'en', 'SingleRingtone', '2021-12-09 14:30:40.922790', '2021-12-09 14:30:40.934124', NULL, 328, 1, 0, '00N3'),
(918, 1, 'en', 'SingleFavorite', '2021-12-09 14:30:40.944506', '2021-12-09 14:30:40.949957', NULL, 328, 1, 0, '00N4'),
(919, 0, 'en', 'SingleRingtone', '2021-12-09 14:30:40.922790', '2021-12-09 14:31:27.334405', NULL, 329, 1, 0, '00N5'),
(920, 1, 'en', 'SingleFavorite', '2021-12-09 14:30:40.944506', '2021-12-09 14:31:27.339205', NULL, 329, 1, 0, '00N6'),
(921, 0, 'en', 'SingleRingtone', '2021-12-10 03:16:52.382704', '2021-12-10 03:16:52.386802', NULL, 330, 1, 0, '00N7'),
(922, 1, 'en', 'SingleFavorite', '2021-12-10 03:16:52.392761', '2021-12-10 03:16:52.395867', NULL, 330, 1, 0, '00N8'),
(923, 0, 'en', 'SingleRingtone', '2021-12-10 03:16:52.382704', '2021-12-10 03:17:40.133284', NULL, 331, 1, 0, '00N9'),
(924, 1, 'en', 'SingleFavorite', '2021-12-10 03:16:52.392761', '2021-12-10 03:17:40.137179', NULL, 331, 1, 0, '00NA'),
(925, 0, 'en', 'SingleRingtone', '2021-12-10 05:07:51.576684', '2021-12-10 05:07:51.581004', NULL, 332, 1, 0, '00NB'),
(926, 1, 'en', 'SingleFavorite', '2021-12-10 05:07:51.587346', '2021-12-10 05:07:51.590500', NULL, 332, 1, 0, '00NC'),
(927, 0, 'en', 'SingleRingtone', '2021-12-10 05:07:51.576684', '2021-12-10 05:08:14.346912', NULL, 333, 1, 0, '00ND'),
(928, 1, 'en', 'SingleFavorite', '2021-12-10 05:07:51.587346', '2021-12-10 05:08:14.351320', NULL, 333, 1, 0, '00NE'),
(929, 0, 'en', 'SingleRingtone', '2021-12-11 05:50:22.480166', '2021-12-11 05:50:22.484534', NULL, 334, 1, 0, '00NF'),
(930, 2, 'en', 'SingleFavorite', '2021-12-11 05:50:22.490499', '2021-12-11 05:50:22.493476', NULL, 334, 1, 0, '00NG'),
(933, 1, 'en', 'ContainerV2', '2021-12-12 06:39:18.088907', '2021-12-12 07:04:36.127012', NULL, 334, 1, 0, '00NJ'),
(937, 0, 'en', 'SingleRingtone', '2021-12-11 05:50:22.480166', '2021-12-12 07:04:45.658350', NULL, 335, 1, 0, '00NK'),
(938, 2, 'en', 'SingleFavorite', '2021-12-11 05:50:22.490499', '2021-12-12 07:04:45.666723', NULL, 335, 1, 0, '00NL'),
(939, 1, 'en', 'ContainerV2', '2021-12-12 06:39:18.088907', '2021-12-12 07:04:45.671200', NULL, 335, 1, 0, '00NM'),
(940, 0, 'en', 'SingleRingtone', '2021-12-12 17:33:07.720308', '2021-12-12 17:33:07.725439', NULL, 336, 1, 0, '00NN'),
(941, 1, 'en', 'SingleFavorite', '2021-12-12 17:33:07.732067', '2021-12-12 17:33:07.735186', NULL, 336, 1, 0, '00NO'),
(942, 0, 'en', 'SingleRingtone', '2021-12-12 17:33:07.720308', '2021-12-12 17:34:16.130540', NULL, 337, 1, 0, '00NP'),
(943, 1, 'en', 'SingleFavorite', '2021-12-12 17:33:07.732067', '2021-12-12 17:34:16.137292', NULL, 337, 1, 0, '00NQ'),
(944, 0, 'en', 'SingleRingtone', '2021-12-13 05:39:37.646972', '2021-12-13 05:39:37.651167', NULL, 338, 1, 0, '00NR'),
(945, 1, 'en', 'SingleFavorite', '2021-12-13 05:39:37.658095', '2021-12-13 05:39:37.662664', NULL, 338, 1, 0, '00NS'),
(948, 0, 'en', 'SingleRingtone', '2021-12-13 05:55:48.916115', '2021-12-13 05:55:48.919747', NULL, 340, 1, 0, '00NV'),
(949, 1, 'en', 'SingleFavorite', '2021-12-13 05:55:48.925714', '2021-12-13 05:55:48.929013', NULL, 340, 1, 0, '00NW'),
(950, 0, 'en', 'SingleRingtone', '2021-12-13 06:02:17.689706', '2021-12-13 06:02:17.695790', NULL, 341, 1, 0, '00NX'),
(951, 1, 'en', 'SingleFavorite', '2021-12-13 06:02:17.705592', '2021-12-13 06:02:17.710825', NULL, 341, 1, 0, '00NY'),
(952, 0, 'en', 'SingleRingtone', '2021-12-13 05:39:37.646972', '2021-12-13 06:03:20.414089', NULL, 339, 1, 0, '00NZ'),
(953, 1, 'en', 'SingleFavorite', '2021-12-13 05:39:37.658095', '2021-12-13 06:03:20.418981', NULL, 339, 1, 0, '00O0'),
(954, 0, 'en', 'SingleRingtone', '2021-12-13 05:55:48.916115', '2021-12-13 06:04:20.791109', NULL, 342, 1, 0, '00O1'),
(955, 1, 'en', 'SingleFavorite', '2021-12-13 05:55:48.925714', '2021-12-13 06:04:20.797730', NULL, 342, 1, 0, '00O2'),
(956, 0, 'en', 'SingleRingtone', '2021-12-13 06:02:17.689706', '2021-12-13 06:05:26.949733', NULL, 343, 1, 0, '00O3'),
(957, 1, 'en', 'SingleFavorite', '2021-12-13 06:02:17.705592', '2021-12-13 06:05:26.955743', NULL, 343, 1, 0, '00O4'),
(958, 0, 'en', 'SingleRingtone', '2021-12-13 12:42:50.886922', '2021-12-13 12:42:50.892170', NULL, 344, 1, 0, '00O5'),
(959, 1, 'en', 'SingleFavorite', '2021-12-13 12:42:50.901379', '2021-12-13 12:42:50.905976', NULL, 344, 1, 0, '00O6'),
(960, 0, 'en', 'SingleRingtone', '2021-12-13 12:42:50.886922', '2021-12-13 12:43:25.407138', NULL, 345, 1, 0, '00O7'),
(961, 1, 'en', 'SingleFavorite', '2021-12-13 12:42:50.901379', '2021-12-13 12:43:25.411299', NULL, 345, 1, 0, '00O8'),
(962, 0, 'en', 'SingleRingtone', '2021-12-14 03:24:38.096317', '2021-12-14 03:24:38.101228', NULL, 346, 1, 0, '00O9'),
(963, 1, 'en', 'SingleFavorite', '2021-12-14 03:24:38.108015', '2021-12-14 03:24:38.111559', NULL, 346, 1, 0, '00OA'),
(964, 0, 'en', 'SingleRingtone', '2021-12-14 03:24:38.096317', '2021-12-14 03:25:44.636299', NULL, 347, 1, 0, '00OB'),
(965, 1, 'en', 'SingleFavorite', '2021-12-14 03:24:38.108015', '2021-12-14 03:25:44.639933', NULL, 347, 1, 0, '00OC'),
(966, 1, 'en', 'Favorite', '2021-06-05 13:25:04.241676', '2021-12-14 04:01:37.783509', NULL, 3, 1, 0, '00OD'),
(967, 2, 'en', 'CategoryPanel', '2021-06-05 14:05:29.468525', '2021-12-14 04:01:37.813156', NULL, 3, 1, 0, '00OE'),
(968, 3, 'en', 'Container', '2021-06-05 13:49:30.422526', '2021-12-14 04:01:37.816743', NULL, 3, 1, 0, '00OF'),
(969, 0, 'en', 'ContainerV2', '2021-07-12 07:19:23.036884', '2021-12-14 04:01:37.821459', NULL, 3, 1, 0, '00OG'),
(970, 0, 'en', 'SingleRingtone', '2021-12-15 05:31:44.983507', '2021-12-15 05:31:44.991391', NULL, 348, 1, 0, '00OH'),
(971, 1, 'en', 'SingleFavorite', '2021-12-15 05:31:45.000635', '2021-12-15 05:31:45.004952', NULL, 348, 1, 0, '00OI'),
(972, 0, 'en', 'SingleRingtone', '2021-12-15 05:31:44.983507', '2021-12-15 05:33:06.042977', NULL, 349, 1, 0, '00OJ'),
(973, 1, 'en', 'SingleFavorite', '2021-12-15 05:31:45.000635', '2021-12-15 05:33:06.048503', NULL, 349, 1, 0, '00OK'),
(974, 0, 'en', 'SingleRingtone', '2021-12-15 06:06:50.594372', '2021-12-15 06:06:50.598345', NULL, 350, 1, 0, '00OL'),
(975, 1, 'en', 'SingleFavorite', '2021-12-15 06:06:50.606399', '2021-12-15 06:06:50.610081', NULL, 350, 1, 0, '00OM'),
(976, 0, 'en', 'SingleRingtone', '2021-12-15 06:06:50.594372', '2021-12-15 06:07:18.984660', NULL, 351, 1, 0, '00ON'),
(977, 1, 'en', 'SingleFavorite', '2021-12-15 06:06:50.606399', '2021-12-15 06:07:18.989016', NULL, 351, 1, 0, '00OO'),
(978, 0, 'en', 'SingleRingtone', '2021-12-15 16:55:44.543055', '2021-12-15 16:55:44.547547', NULL, 352, 1, 0, '00OP'),
(979, 1, 'en', 'SingleFavorite', '2021-12-15 16:55:44.553708', '2021-12-15 16:55:44.556890', NULL, 352, 1, 0, '00OQ'),
(980, 0, 'en', 'SingleRingtone', '2021-12-15 16:55:44.543055', '2021-12-15 16:56:14.358344', NULL, 353, 1, 0, '00OR'),
(981, 1, 'en', 'SingleFavorite', '2021-12-15 16:55:44.553708', '2021-12-15 16:56:14.362535', NULL, 353, 1, 0, '00OS'),
(982, 0, 'en', 'SingleRingtone', '2021-12-16 11:40:19.385281', '2021-12-16 11:40:19.390957', NULL, 354, 1, 0, '00OT'),
(983, 1, 'en', 'SingleFavorite', '2021-12-16 11:40:19.397462', '2021-12-16 11:40:19.400820', NULL, 354, 1, 0, '00OU'),
(984, 0, 'en', 'SingleRingtone', '2021-12-16 11:40:19.385281', '2021-12-16 11:41:05.951548', NULL, 355, 1, 0, '00OV'),
(985, 1, 'en', 'SingleFavorite', '2021-12-16 11:40:19.397462', '2021-12-16 11:41:05.955427', NULL, 355, 1, 0, '00OW'),
(986, 0, 'en', 'SingleRingtone', '2021-12-17 10:54:16.663963', '2021-12-17 10:54:16.668335', NULL, 356, 1, 0, '00OX'),
(987, 1, 'en', 'SingleFavorite', '2021-12-17 10:54:16.673751', '2021-12-17 10:54:16.676698', NULL, 356, 1, 0, '00OY'),
(988, 0, 'en', 'SingleRingtone', '2021-12-17 10:54:16.663963', '2021-12-17 10:54:43.238201', NULL, 357, 1, 0, '00OZ'),
(989, 1, 'en', 'SingleFavorite', '2021-12-17 10:54:16.673751', '2021-12-17 10:54:43.243791', NULL, 357, 1, 0, '00P0'),
(990, 1, 'en', 'FetchRingtone', '2021-06-19 14:15:45.326131', '2021-12-17 11:08:40.043965', NULL, 82, 1, 0, '00P1'),
(991, 2, 'en', 'CategoryPanel', '2021-06-19 14:15:45.335864', '2021-12-17 11:08:40.051125', NULL, 82, 1, 0, '00P2'),
(992, 3, 'en', 'Container', '2021-06-19 14:51:34.857245', '2021-12-17 11:08:40.055530', NULL, 82, 1, 0, '00P3'),
(993, 0, 'en', 'ContainerV2', '2021-07-21 13:55:25.918318', '2021-12-17 11:08:40.063785', NULL, 82, 1, 0, '00P4'),
(994, 0, 'en', 'SingleRingtone', '2021-12-18 04:28:35.907437', '2021-12-18 04:28:35.914489', NULL, 358, 1, 0, '00P5'),
(995, 1, 'en', 'SingleFavorite', '2021-12-18 04:28:35.920751', '2021-12-18 04:28:35.923989', NULL, 358, 1, 0, '00P6'),
(996, 0, 'en', 'SingleRingtone', '2021-12-18 04:28:35.907437', '2021-12-18 04:29:04.821291', NULL, 359, 1, 0, '00P7'),
(997, 1, 'en', 'SingleFavorite', '2021-12-18 04:28:35.920751', '2021-12-18 04:29:04.825003', NULL, 359, 1, 0, '00P8'),
(998, 0, 'en', 'SingleRingtone', '2021-12-18 06:20:44.793234', '2021-12-18 06:20:44.797982', NULL, 360, 1, 0, '00P9'),
(999, 1, 'en', 'SingleFavorite', '2021-12-18 06:20:44.804242', '2021-12-18 06:20:44.807569', NULL, 360, 1, 0, '00PA'),
(1000, 0, 'en', 'SingleRingtone', '2021-12-18 06:20:44.793234', '2021-12-18 06:21:46.266946', NULL, 361, 1, 0, '00PB'),
(1001, 1, 'en', 'SingleFavorite', '2021-12-18 06:20:44.804242', '2021-12-18 06:21:46.271191', NULL, 361, 1, 0, '00PC'),
(1002, 0, 'en', 'SingleRingtone', '2021-12-18 06:50:42.187828', '2021-12-18 06:50:42.192340', NULL, 362, 1, 0, '00PD'),
(1003, 1, 'en', 'SingleFavorite', '2021-12-18 06:50:42.198951', '2021-12-18 06:50:42.202480', NULL, 362, 1, 0, '00PE'),
(1004, 0, 'en', 'SingleRingtone', '2021-12-18 06:50:42.187828', '2021-12-18 06:51:06.985178', NULL, 363, 1, 0, '00PF'),
(1005, 1, 'en', 'SingleFavorite', '2021-12-18 06:50:42.198951', '2021-12-18 06:51:06.989534', NULL, 363, 1, 0, '00PG');

-- --------------------------------------------------------

--
-- Table structure for table `cms_globalpagepermission`
--

CREATE TABLE `cms_globalpagepermission` (
  `id` int(11) NOT NULL,
  `can_change` tinyint(1) NOT NULL,
  `can_add` tinyint(1) NOT NULL,
  `can_delete` tinyint(1) NOT NULL,
  `can_change_advanced_settings` tinyint(1) NOT NULL,
  `can_publish` tinyint(1) NOT NULL,
  `can_change_permissions` tinyint(1) NOT NULL,
  `can_move_page` tinyint(1) NOT NULL,
  `can_view` tinyint(1) NOT NULL,
  `can_recover_page` tinyint(1) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cms_globalpagepermission_sites`
--

CREATE TABLE `cms_globalpagepermission_sites` (
  `id` int(11) NOT NULL,
  `globalpagepermission_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cms_page`
--

CREATE TABLE `cms_page` (
  `id` int(11) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `changed_by` varchar(255) NOT NULL,
  `creation_date` datetime(6) NOT NULL,
  `changed_date` datetime(6) NOT NULL,
  `publication_date` datetime(6) DEFAULT NULL,
  `publication_end_date` datetime(6) DEFAULT NULL,
  `in_navigation` tinyint(1) NOT NULL,
  `soft_root` tinyint(1) NOT NULL,
  `reverse_id` varchar(40) DEFAULT NULL,
  `navigation_extenders` varchar(80) DEFAULT NULL,
  `template` varchar(100) NOT NULL,
  `login_required` tinyint(1) NOT NULL,
  `limit_visibility_in_menu` smallint(6) DEFAULT NULL,
  `is_home` tinyint(1) NOT NULL,
  `application_urls` varchar(200) DEFAULT NULL,
  `application_namespace` varchar(200) DEFAULT NULL,
  `publisher_is_draft` tinyint(1) NOT NULL,
  `languages` varchar(255) DEFAULT NULL,
  `xframe_options` int(11) NOT NULL,
  `publisher_public_id` int(11) DEFAULT NULL,
  `is_page_type` tinyint(1) NOT NULL,
  `node_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_page`
--

INSERT INTO `cms_page` (`id`, `created_by`, `changed_by`, `creation_date`, `changed_date`, `publication_date`, `publication_end_date`, `in_navigation`, `soft_root`, `reverse_id`, `navigation_extenders`, `template`, `login_required`, `limit_visibility_in_menu`, `is_home`, `application_urls`, `application_namespace`, `publisher_is_draft`, `languages`, `xframe_options`, `publisher_public_id`, `is_page_type`, `node_id`) VALUES
(1, 'ringtonefly', 'ringtonefly', '2021-06-05 10:26:54.618448', '2021-10-24 15:58:43.291128', '2021-06-05 10:26:54.644630', NULL, 1, 0, NULL, NULL, 'INHERIT', 0, NULL, 1, NULL, NULL, 1, 'en', 0, 2, 0, 1),
(2, 'ringtonefly', 'ringtonefly', '2021-06-05 10:26:54.644952', '2021-12-14 04:01:37.428328', '2021-06-05 10:26:54.644630', NULL, 1, 0, NULL, NULL, 'INHERIT', 0, NULL, 1, NULL, NULL, 0, 'en', 0, 1, 0, 1),
(3, 'ringtonefly', 'ringtonefly', '2021-06-05 10:38:54.451028', '2021-06-05 10:38:54.492508', '2021-06-05 15:36:04.800592', NULL, 1, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 16, 0, 2),
(4, 'ringtonefly', 'ringtonefly', '2021-06-05 10:39:18.514804', '2021-06-05 10:39:18.547114', '2021-06-05 15:36:05.459303', NULL, 1, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 17, 0, 3),
(16, 'ringtonefly', 'ringtonefly', '2021-06-05 15:36:04.801119', '2021-09-05 12:54:12.977902', '2021-06-05 15:36:04.800592', NULL, 1, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 3, 0, 2),
(17, 'ringtonefly', 'ringtonefly', '2021-06-05 15:36:05.473134', '2021-07-21 14:55:00.666037', '2021-06-05 15:36:05.459303', NULL, 1, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 4, 0, 3),
(19, 'script', 'ringtonefly', '2021-06-06 16:37:42.679220', '2021-06-12 07:32:42.050161', '2021-06-06 16:39:55.538411', NULL, 0, 0, NULL, NULL, 'fullwidth.html', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 21, 0, 11),
(21, 'ringtonefly', 'ringtonefly', '2021-06-06 16:39:55.538840', '2021-08-27 12:19:44.214859', '2021-06-06 16:39:55.538411', NULL, 0, 0, NULL, NULL, 'fullwidth.html', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 19, 0, 11),
(22, 'script', 'ringtonefly', '2021-06-06 16:51:43.823840', '2021-06-06 16:51:43.823905', '2021-06-06 16:53:04.862248', NULL, 0, 0, NULL, NULL, 'fullwidth.html', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 23, 0, 12),
(23, 'ringtonefly', 'ringtonefly', '2021-06-06 16:53:04.862676', '2021-06-06 16:53:04.862721', '2021-06-06 16:53:04.862248', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 22, 0, 12),
(24, 'script', 'ringtonefly', '2021-06-06 19:11:05.343554', '2021-06-06 19:11:05.343607', '2021-06-06 19:12:01.656881', NULL, 0, 0, NULL, NULL, 'fullwidth.html', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 25, 0, 13),
(25, 'ringtonefly', 'ringtonefly', '2021-06-06 19:12:01.657252', '2021-06-06 19:12:01.657297', '2021-06-06 19:12:01.656881', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 24, 0, 13),
(26, 'script', 'ringtonefly', '2021-06-06 19:18:20.186907', '2021-06-06 19:18:20.186959', '2021-06-06 19:20:26.482172', NULL, 0, 0, NULL, NULL, 'fullwidth.html', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 27, 0, 14),
(27, 'ringtonefly', 'ringtonefly', '2021-06-06 19:20:26.482549', '2021-06-06 19:20:26.482600', '2021-06-06 19:20:26.482172', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 26, 0, 14),
(28, 'script', 'ringtonefly', '2021-06-06 19:27:59.257242', '2021-06-06 19:27:59.257288', '2021-06-06 19:28:37.172375', NULL, 0, 0, NULL, NULL, 'fullwidth.html', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 29, 0, 15),
(29, 'ringtonefly', 'ringtonefly', '2021-06-06 19:28:37.172763', '2021-06-06 19:28:37.172807', '2021-06-06 19:28:37.172375', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 28, 0, 15),
(30, 'script', 'ringtonefly', '2021-06-06 19:37:00.395014', '2021-06-06 19:37:00.395065', '2021-06-06 19:37:54.055479', NULL, 0, 0, NULL, NULL, 'fullwidth.html', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 31, 0, 16),
(31, 'ringtonefly', 'ringtonefly', '2021-06-06 19:37:54.055864', '2021-06-06 19:37:54.055922', '2021-06-06 19:37:54.055479', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 30, 0, 16),
(32, 'script', 'ringtonefly', '2021-06-06 19:58:00.457721', '2021-06-06 19:58:00.457772', '2021-06-06 20:15:58.103093', NULL, 0, 0, NULL, NULL, 'fullwidth.html', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 36, 0, 17),
(33, 'script', 'ringtonefly', '2021-06-06 20:00:37.765284', '2021-06-06 20:00:37.765331', '2021-06-06 20:16:37.936813', NULL, 0, 0, NULL, NULL, 'fullwidth.html', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 37, 0, 18),
(34, 'script', 'ringtonefly', '2021-06-06 20:01:39.286055', '2021-06-06 20:01:39.286131', '2021-06-06 20:16:58.934500', NULL, 0, 0, NULL, NULL, 'fullwidth.html', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 38, 0, 19),
(35, 'script', 'ringtonefly', '2021-06-06 20:02:48.262338', '2021-06-06 20:02:48.262390', '2021-06-06 20:17:17.167583', NULL, 0, 0, NULL, NULL, 'fullwidth.html', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 39, 0, 20),
(36, 'ringtonefly', 'ringtonefly', '2021-06-06 20:15:58.103708', '2021-06-06 20:15:58.103767', '2021-06-06 20:15:58.103093', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 32, 0, 17),
(37, 'ringtonefly', 'ringtonefly', '2021-06-06 20:16:37.937198', '2021-06-06 20:16:37.937242', '2021-06-06 20:16:37.936813', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 33, 0, 18),
(38, 'ringtonefly', 'ringtonefly', '2021-06-06 20:16:58.934995', '2021-06-06 20:16:58.935037', '2021-06-06 20:16:58.934500', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 34, 0, 19),
(39, 'ringtonefly', 'ringtonefly', '2021-06-06 20:17:17.168005', '2021-06-06 20:17:17.168053', '2021-06-06 20:17:17.167583', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 35, 0, 20),
(40, 'script', 'ringtonefly', '2021-06-06 20:21:53.019443', '2021-06-06 20:21:53.019493', '2021-06-06 20:36:50.479560', NULL, 0, 0, NULL, NULL, 'fullwidth.html', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 44, 0, 21),
(41, 'script', 'ringtonefly', '2021-06-06 20:24:11.782116', '2021-06-06 20:24:11.782204', '2021-06-06 20:37:11.319742', NULL, 0, 0, NULL, NULL, 'fullwidth.html', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 45, 0, 22),
(42, 'script', 'ringtonefly', '2021-06-06 20:30:05.499343', '2021-06-06 20:30:05.499390', '2021-06-06 20:37:30.638461', NULL, 0, 0, NULL, NULL, 'fullwidth.html', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 46, 0, 23),
(43, 'script', 'ringtonefly', '2021-06-06 20:35:30.237355', '2021-06-06 20:35:30.237402', '2021-06-06 20:37:57.346978', NULL, 0, 0, NULL, NULL, 'fullwidth.html', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 47, 0, 24),
(44, 'ringtonefly', 'ringtonefly', '2021-06-06 20:36:50.480015', '2021-06-06 20:36:50.480057', '2021-06-06 20:36:50.479560', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 40, 0, 21),
(45, 'ringtonefly', 'ringtonefly', '2021-06-06 20:37:11.320126', '2021-06-06 20:37:11.320170', '2021-06-06 20:37:11.319742', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 41, 0, 22),
(46, 'ringtonefly', 'ringtonefly', '2021-06-06 20:37:30.638851', '2021-06-06 20:37:30.638895', '2021-06-06 20:37:30.638461', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 42, 0, 23),
(47, 'ringtonefly', 'ringtonefly', '2021-06-06 20:37:57.347338', '2021-06-06 20:37:57.347377', '2021-06-06 20:37:57.346978', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 43, 0, 24),
(48, 'script', 'ringtonefly', '2021-06-07 05:03:28.669111', '2021-06-07 05:03:28.669161', '2021-06-07 05:05:13.300484', NULL, 0, 0, NULL, NULL, 'fullwidth.html', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 49, 0, 25),
(49, 'ringtonefly', 'ringtonefly', '2021-06-07 05:05:13.300858', '2021-06-07 05:05:13.300904', '2021-06-07 05:05:13.300484', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 48, 0, 25),
(50, 'script', 'ringtonefly', '2021-06-07 07:22:58.134172', '2021-06-07 07:22:58.134220', '2021-06-07 07:23:50.610882', NULL, 0, 0, NULL, NULL, 'fullwidth.html', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 51, 0, 26),
(51, 'ringtonefly', 'ringtonefly', '2021-06-07 07:23:50.611322', '2021-06-07 07:23:50.611366', '2021-06-07 07:23:50.610882', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 50, 0, 26),
(52, 'script', 'ringtonefly', '2021-06-07 12:48:12.034413', '2021-06-07 12:48:12.034462', '2021-06-07 12:49:02.810200', NULL, 0, 0, NULL, NULL, 'fullwidth.html', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 53, 0, 27),
(53, 'ringtonefly', 'ringtonefly', '2021-06-07 12:49:02.810556', '2021-06-07 12:49:02.810598', '2021-06-07 12:49:02.810200', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 52, 0, 27),
(54, 'script', 'ringtonefly', '2021-06-08 09:53:30.243895', '2021-06-08 09:53:30.243965', '2021-06-08 09:53:57.843122', NULL, 0, 0, NULL, NULL, 'fullwidth.html', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 55, 0, 28),
(55, 'ringtonefly', 'ringtonefly', '2021-06-08 09:53:57.843484', '2021-06-08 09:53:57.843529', '2021-06-08 09:53:57.843122', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 54, 0, 28),
(56, 'script', 'ringtonefly', '2021-06-08 14:52:21.726730', '2021-06-08 14:52:21.726775', '2021-06-08 14:54:13.606268', NULL, 0, 0, NULL, NULL, 'fullwidth.html', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 57, 0, 29),
(57, 'ringtonefly', 'ringtonefly', '2021-06-08 14:54:13.606717', '2021-06-08 14:54:13.606763', '2021-06-08 14:54:13.606268', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 56, 0, 29),
(58, 'script', 'ringtonefly', '2021-06-09 04:48:13.725391', '2021-06-09 04:48:13.725443', '2021-06-09 04:49:02.294578', NULL, 0, 0, NULL, NULL, 'fullwidth.html', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 59, 0, 30),
(59, 'ringtonefly', 'ringtonefly', '2021-06-09 04:49:02.294956', '2021-06-09 04:49:02.295004', '2021-06-09 04:49:02.294578', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 58, 0, 30),
(60, 'script', 'ringtonefly', '2021-06-09 04:55:28.556281', '2021-06-09 04:55:28.556328', '2021-06-09 04:59:12.802459', NULL, 0, 0, NULL, NULL, 'fullwidth.html', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 62, 0, 31),
(61, 'script', 'ringtonefly', '2021-06-09 04:58:38.437514', '2021-06-09 04:58:38.437563', '2021-06-09 04:59:48.981843', NULL, 0, 0, NULL, NULL, 'fullwidth.html', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 63, 0, 32),
(62, 'ringtonefly', 'ringtonefly', '2021-06-09 04:59:12.802857', '2021-06-09 04:59:12.802906', '2021-06-09 04:59:12.802459', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 60, 0, 31),
(63, 'ringtonefly', 'ringtonefly', '2021-06-09 04:59:48.982239', '2021-06-09 04:59:48.982284', '2021-06-09 04:59:48.981843', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 61, 0, 32),
(64, 'script', 'ringtonefly', '2021-06-15 15:10:49.853023', '2021-06-15 15:13:22.795075', '2021-06-15 15:13:50.121850', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 65, 0, 33),
(65, 'ringtonefly', 'ringtonefly', '2021-06-15 15:13:50.122332', '2021-08-27 12:23:43.718547', '2021-06-15 15:13:50.121850', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 64, 0, 33),
(66, 'script', 'ringtonefly', '2021-06-15 17:10:54.624894', '2021-06-15 17:10:54.624938', '2021-06-15 17:15:35.646179', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 68, 0, 34),
(67, 'script', 'ringtonefly', '2021-06-15 17:14:40.973142', '2021-06-15 17:14:40.973192', '2021-06-15 17:21:34.145335', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 69, 0, 35),
(68, 'ringtonefly', 'ringtonefly', '2021-06-15 17:15:35.646558', '2021-06-15 17:15:35.646603', '2021-06-15 17:15:35.646179', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 66, 0, 34),
(69, 'ringtonefly', 'ringtonefly', '2021-06-15 17:21:34.145716', '2021-06-15 17:21:34.145759', '2021-06-15 17:21:34.145335', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 67, 0, 35),
(70, 'script', 'ringtonefly', '2021-06-16 03:17:08.588932', '2021-06-16 03:17:08.588980', '2021-06-16 03:17:46.385842', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 71, 0, 36),
(71, 'ringtonefly', 'ringtonefly', '2021-06-16 03:17:46.386255', '2021-06-16 03:17:46.386299', '2021-06-16 03:17:46.385842', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 70, 0, 36),
(72, 'script', 'ringtonefly', '2021-06-16 03:30:13.339842', '2021-06-16 03:30:13.339891', '2021-06-16 03:30:46.252495', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 73, 0, 37),
(73, 'ringtonefly', 'ringtonefly', '2021-06-16 03:30:46.252876', '2021-06-16 03:30:46.252917', '2021-06-16 03:30:46.252495', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 72, 0, 37),
(74, 'script', 'ringtonefly', '2021-06-16 03:52:50.582344', '2021-06-16 03:52:50.582394', '2021-06-16 03:53:52.542726', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 75, 0, 38),
(75, 'ringtonefly', 'ringtonefly', '2021-06-16 03:53:52.543119', '2021-06-16 03:53:52.543159', '2021-06-16 03:53:52.542726', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 74, 0, 38),
(76, 'script', 'ringtonefly', '2021-06-18 03:53:50.877207', '2021-06-18 03:53:50.877260', '2021-06-18 03:56:07.860748', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 77, 0, 39),
(77, 'ringtonefly', 'ringtonefly', '2021-06-18 03:56:07.861183', '2021-06-18 03:56:07.861229', '2021-06-18 03:56:07.860748', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 76, 0, 39),
(78, 'script', 'ringtonefly', '2021-06-18 04:11:13.512108', '2021-06-18 04:11:13.512162', '2021-06-18 04:12:26.400476', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 79, 0, 40),
(79, 'ringtonefly', 'ringtonefly', '2021-06-18 04:12:26.400900', '2021-06-18 04:12:26.400947', '2021-06-18 04:12:26.400476', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 78, 0, 40),
(80, 'script', 'ringtonefly', '2021-06-19 14:15:45.293720', '2021-06-19 14:20:27.539427', '2021-06-19 14:20:52.889551', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 81, 0, 41),
(81, 'ringtonefly', 'ringtonefly', '2021-06-19 14:20:52.889961', '2021-12-17 11:08:39.905581', '2021-06-19 14:20:52.889551', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 80, 0, 41),
(82, 'script', 'ringtonefly', '2021-06-19 15:20:02.099436', '2021-06-19 15:20:02.099494', '2021-06-19 15:23:39.685631', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 83, 0, 42),
(83, 'ringtonefly', 'ringtonefly', '2021-06-19 15:23:39.686068', '2021-06-19 15:23:39.686115', '2021-06-19 15:23:39.685631', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 82, 0, 42),
(84, 'script', 'ringtonefly', '2021-06-19 16:29:11.022961', '2021-06-19 16:29:11.023024', '2021-06-19 16:29:54.234767', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 85, 0, 43),
(85, 'ringtonefly', 'ringtonefly', '2021-06-19 16:29:54.235162', '2021-06-19 16:29:54.235211', '2021-06-19 16:29:54.234767', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 84, 0, 43),
(86, 'script', 'ringtonefly', '2021-06-19 16:38:24.963449', '2021-06-19 16:38:24.963499', '2021-06-19 16:39:09.611929', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 87, 0, 44),
(87, 'ringtonefly', 'ringtonefly', '2021-06-19 16:39:09.612317', '2021-06-19 16:39:09.612364', '2021-06-19 16:39:09.611929', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 86, 0, 44),
(88, 'script', 'ringtonefly', '2021-06-19 16:56:56.086596', '2021-06-19 16:56:56.086649', '2021-06-19 16:57:46.370827', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 89, 0, 45),
(89, 'ringtonefly', 'ringtonefly', '2021-06-19 16:57:46.371218', '2021-06-19 16:57:46.371265', '2021-06-19 16:57:46.370827', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 88, 0, 45),
(90, 'script', 'ringtonefly', '2021-06-19 17:10:15.332705', '2021-06-19 17:10:15.332759', '2021-06-19 17:11:42.818062', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 92, 0, 46),
(91, 'script', 'ringtonefly', '2021-06-19 17:11:19.703960', '2021-06-19 17:11:19.704014', '2021-06-19 17:12:09.268382', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 93, 0, 47),
(92, 'ringtonefly', 'ringtonefly', '2021-06-19 17:11:42.818453', '2021-06-19 17:11:42.818497', '2021-06-19 17:11:42.818062', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 90, 0, 46),
(93, 'ringtonefly', 'ringtonefly', '2021-06-19 17:12:09.268743', '2021-06-19 17:12:09.268787', '2021-06-19 17:12:09.268382', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 91, 0, 47),
(94, 'script', 'ringtonefly', '2021-06-19 17:15:49.650541', '2021-06-19 17:15:49.650591', '2021-06-19 17:22:39.778365', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 97, 0, 48),
(95, 'script', 'ringtonefly', '2021-06-19 17:18:48.907030', '2021-06-19 17:18:48.907098', '2021-06-19 17:23:09.345832', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 98, 0, 49),
(96, 'script', 'ringtonefly', '2021-06-19 17:21:09.418634', '2021-06-19 17:21:09.418686', '2021-06-19 17:25:40.586056', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 99, 0, 50),
(97, 'ringtonefly', 'ringtonefly', '2021-06-19 17:22:39.778745', '2021-06-19 17:22:39.778792', '2021-06-19 17:22:39.778365', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 94, 0, 48),
(98, 'ringtonefly', 'ringtonefly', '2021-06-19 17:23:09.346203', '2021-06-19 17:23:09.346258', '2021-06-19 17:23:09.345832', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 95, 0, 49),
(99, 'ringtonefly', 'ringtonefly', '2021-06-19 17:25:40.586603', '2021-06-19 17:25:40.586647', '2021-06-19 17:25:40.586056', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 96, 0, 50),
(100, 'script', 'ringtonefly', '2021-06-19 17:25:51.720926', '2021-06-19 17:25:51.720981', '2021-06-19 17:26:48.233875', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 101, 0, 51),
(101, 'ringtonefly', 'ringtonefly', '2021-06-19 17:26:48.234282', '2021-06-19 17:26:48.234327', '2021-06-19 17:26:48.233875', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 100, 0, 51),
(102, 'script', 'ringtonefly', '2021-06-19 17:29:06.290528', '2021-06-19 17:29:06.290574', '2021-06-19 17:32:18.402894', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 103, 0, 52),
(103, 'ringtonefly', 'ringtonefly', '2021-06-19 17:32:18.403292', '2021-06-19 17:32:18.403338', '2021-06-19 17:32:18.402894', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 102, 0, 52),
(104, 'script', 'ringtonefly', '2021-06-19 17:32:19.570576', '2021-06-19 17:32:19.570654', '2021-06-19 17:35:18.965759', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 106, 0, 53),
(105, 'script', 'ringtonefly', '2021-06-19 17:34:52.364619', '2021-06-19 17:34:52.364675', '2021-06-19 17:35:55.840847', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 107, 0, 54),
(106, 'ringtonefly', 'ringtonefly', '2021-06-19 17:35:18.966115', '2021-06-19 17:44:45.901172', '2021-06-19 17:35:18.965759', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 104, 0, 53),
(107, 'ringtonefly', 'ringtonefly', '2021-06-19 17:35:55.841254', '2021-06-19 17:35:55.841299', '2021-06-19 17:35:55.840847', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 105, 0, 54),
(108, 'ringtonefly', 'ringtonefly', '2021-06-20 07:04:56.586469', '2021-06-20 07:05:53.887670', '2021-06-20 07:06:38.397806', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 109, 0, 55),
(109, 'ringtonefly', 'ringtonefly', '2021-06-20 07:06:38.398189', '2021-11-27 06:18:33.200801', '2021-06-20 07:06:38.397806', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 108, 0, 55),
(110, 'ringtonefly', 'ringtonefly', '2021-06-20 07:16:00.965600', '2021-06-20 07:23:18.619995', '2021-06-20 07:25:40.194973', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 111, 0, 56),
(111, 'ringtonefly', 'ringtonefly', '2021-06-20 07:25:40.195409', '2021-06-20 07:25:40.195456', '2021-06-20 07:25:40.194973', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 110, 0, 56),
(112, 'ringtonefly', 'ringtonefly', '2021-06-20 07:42:57.246483', '2021-06-20 07:47:56.431330', '2021-06-20 07:48:13.857338', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 113, 0, 57),
(113, 'ringtonefly', 'ringtonefly', '2021-06-20 07:48:13.857858', '2021-06-20 07:48:13.857919', '2021-06-20 07:48:13.857338', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 112, 0, 57),
(114, 'ringtonefly', 'ringtonefly', '2021-06-20 07:55:50.685053', '2021-06-20 07:56:14.633916', '2021-06-20 07:56:40.918130', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 115, 0, 58),
(115, 'ringtonefly', 'ringtonefly', '2021-06-20 07:56:40.918514', '2021-07-21 15:10:47.323139', '2021-06-20 07:56:40.918130', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 114, 0, 58),
(116, 'script', 'ringtonefly', '2021-06-23 12:37:23.276609', '2021-06-23 12:37:23.276662', '2021-06-23 12:38:34.248842', NULL, 0, 0, NULL, NULL, 'fullwidth.html', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 117, 0, 59),
(117, 'ringtonefly', 'ringtonefly', '2021-06-23 12:38:34.249209', '2021-06-23 12:38:34.249247', '2021-06-23 12:38:34.248842', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 116, 0, 59),
(118, 'script', 'ringtonefly', '2021-06-26 13:12:11.410346', '2021-06-26 13:20:24.620203', '2021-06-26 13:20:46.445539', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 119, 0, 60),
(119, 'ringtonefly', 'ringtonefly', '2021-06-26 13:20:46.445939', '2021-08-27 12:27:14.629374', '2021-06-26 13:20:46.445539', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 118, 0, 60),
(120, 'script', 'ringtonefly', '2021-06-26 14:19:25.945336', '2021-06-26 14:19:25.945403', '2021-06-26 14:21:33.992956', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 121, 0, 61),
(121, 'ringtonefly', 'ringtonefly', '2021-06-26 14:21:33.993669', '2021-06-26 14:21:33.993739', '2021-06-26 14:21:33.992956', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 120, 0, 61),
(122, 'script', 'ringtonefly', '2021-06-26 14:28:05.798316', '2021-06-26 14:28:05.798380', '2021-06-26 14:41:48.767637', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 124, 0, 62),
(123, 'script', 'ringtonefly', '2021-06-26 14:31:28.137957', '2021-06-26 14:31:28.138007', '2021-06-26 14:42:18.102047', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 125, 0, 63),
(124, 'ringtonefly', 'ringtonefly', '2021-06-26 14:41:48.768034', '2021-06-26 14:41:48.768077', '2021-06-26 14:41:48.767637', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 122, 0, 62),
(125, 'ringtonefly', 'ringtonefly', '2021-06-26 14:42:18.102495', '2021-06-26 14:42:18.102541', '2021-06-26 14:42:18.102047', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 123, 0, 63),
(126, 'script', 'ringtonefly', '2021-06-26 14:51:43.211522', '2021-06-26 14:51:43.211576', '2021-06-26 15:28:59.065354', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 138, 0, 64),
(127, 'script', 'ringtonefly', '2021-06-26 14:54:51.853633', '2021-06-26 14:54:51.853696', '2021-06-26 15:29:18.242176', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 139, 0, 65),
(128, 'script', 'ringtonefly', '2021-06-26 14:57:18.445617', '2021-06-26 14:57:18.445662', '2021-06-26 15:29:57.680844', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 141, 0, 66),
(129, 'script', 'ringtonefly', '2021-06-26 14:59:34.717413', '2021-06-26 14:59:34.717462', '2021-06-26 15:30:23.035137', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 142, 0, 67),
(130, 'script', 'ringtonefly', '2021-06-26 15:03:16.145107', '2021-06-26 15:03:16.145156', '2021-06-26 15:30:43.549570', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 143, 0, 68),
(131, 'script', 'ringtonefly', '2021-06-26 15:06:45.958611', '2021-06-26 15:06:45.958663', '2021-06-26 15:31:01.262194', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 144, 0, 69),
(132, 'script', 'ringtonefly', '2021-06-26 15:10:00.390977', '2021-06-26 15:10:00.391022', '2021-06-26 15:31:19.214378', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 145, 0, 70),
(133, 'script', 'ringtonefly', '2021-06-26 15:14:54.726712', '2021-06-26 15:14:54.726768', '2021-06-26 15:32:10.735361', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 146, 0, 71),
(134, 'script', 'ringtonefly', '2021-06-26 15:17:30.232137', '2021-06-26 15:17:30.232200', '2021-06-26 15:33:27.912104', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 147, 0, 72),
(135, 'script', 'ringtonefly', '2021-06-26 15:21:08.110478', '2021-06-26 15:21:08.110527', '2021-06-26 15:33:46.071200', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 148, 0, 73),
(136, 'script', 'ringtonefly', '2021-06-26 15:25:21.709110', '2021-06-26 15:25:21.709162', '2021-06-26 15:34:03.794999', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 149, 0, 74),
(137, 'script', 'ringtonefly', '2021-06-26 15:28:30.633271', '2021-06-26 15:28:30.633326', '2021-06-26 15:29:34.612998', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 140, 0, 75),
(138, 'ringtonefly', 'ringtonefly', '2021-06-26 15:28:59.065742', '2021-06-26 15:28:59.065785', '2021-06-26 15:28:59.065354', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 126, 0, 64),
(139, 'ringtonefly', 'ringtonefly', '2021-06-26 15:29:18.242603', '2021-06-26 15:29:18.242648', '2021-06-26 15:29:18.242176', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 127, 0, 65),
(140, 'ringtonefly', 'ringtonefly', '2021-06-26 15:29:34.613391', '2021-06-26 15:29:34.613437', '2021-06-26 15:29:34.612998', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 137, 0, 75),
(141, 'ringtonefly', 'ringtonefly', '2021-06-26 15:29:57.681222', '2021-06-26 15:29:57.681273', '2021-06-26 15:29:57.680844', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 128, 0, 66),
(142, 'ringtonefly', 'ringtonefly', '2021-06-26 15:30:23.035514', '2021-06-26 15:30:23.035557', '2021-06-26 15:30:23.035137', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 129, 0, 67),
(143, 'ringtonefly', 'ringtonefly', '2021-06-26 15:30:43.549955', '2021-06-26 15:30:43.549998', '2021-06-26 15:30:43.549570', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 130, 0, 68),
(144, 'ringtonefly', 'ringtonefly', '2021-06-26 15:31:01.262601', '2021-06-26 15:31:01.262650', '2021-06-26 15:31:01.262194', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 131, 0, 69),
(145, 'ringtonefly', 'ringtonefly', '2021-06-26 15:31:19.214754', '2021-06-26 15:31:19.214800', '2021-06-26 15:31:19.214378', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 132, 0, 70),
(146, 'ringtonefly', 'ringtonefly', '2021-06-26 15:32:10.735733', '2021-06-26 15:32:10.735796', '2021-06-26 15:32:10.735361', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 133, 0, 71),
(147, 'ringtonefly', 'ringtonefly', '2021-06-26 15:33:27.912501', '2021-06-26 15:33:27.912546', '2021-06-26 15:33:27.912104', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 134, 0, 72),
(148, 'ringtonefly', 'ringtonefly', '2021-06-26 15:33:46.071581', '2021-06-26 15:33:46.071623', '2021-06-26 15:33:46.071200', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 135, 0, 73),
(149, 'ringtonefly', 'ringtonefly', '2021-06-26 15:34:03.795377', '2021-06-26 15:34:03.795420', '2021-06-26 15:34:03.794999', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 136, 0, 74),
(150, 'script', 'ringtonefly', '2021-07-16 12:04:27.905420', '2021-07-16 12:43:54.651213', '2021-07-16 12:17:37.259922', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 151, 0, 76),
(151, 'ringtonefly', 'ringtonefly', '2021-07-16 12:17:37.260295', '2021-08-27 12:28:42.692776', '2021-07-16 12:17:37.259922', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 150, 0, 76),
(152, 'script', 'ringtonefly', '2021-07-16 12:55:17.922156', '2021-07-16 12:55:17.922206', '2021-07-16 12:56:31.975197', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 153, 0, 77),
(153, 'ringtonefly', 'ringtonefly', '2021-07-16 12:56:31.975541', '2021-07-16 12:56:31.975581', '2021-07-16 12:56:31.975197', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 152, 0, 77),
(154, 'script', 'ringtonefly', '2021-07-16 13:24:25.613954', '2021-07-16 13:24:25.614002', '2021-07-16 13:24:55.212289', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 155, 0, 78),
(155, 'ringtonefly', 'ringtonefly', '2021-07-16 13:24:55.212654', '2021-07-16 13:24:55.212698', '2021-07-16 13:24:55.212289', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 154, 0, 78),
(156, 'script', 'ringtonefly', '2021-07-16 13:36:19.370001', '2021-07-16 13:36:19.370052', '2021-07-16 13:36:54.757181', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 157, 0, 79),
(157, 'ringtonefly', 'ringtonefly', '2021-07-16 13:36:54.757546', '2021-07-16 13:36:54.757589', '2021-07-16 13:36:54.757181', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 156, 0, 79),
(158, 'script', 'ringtonefly', '2021-07-16 13:42:34.689324', '2021-07-16 13:42:34.689369', '2021-07-16 13:43:21.046089', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 159, 0, 80),
(159, 'ringtonefly', 'ringtonefly', '2021-07-16 13:43:21.046467', '2021-07-16 13:43:21.046511', '2021-07-16 13:43:21.046089', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 158, 0, 80),
(160, 'script', 'ringtonefly', '2021-07-16 13:47:36.152666', '2021-07-16 13:47:36.152740', '2021-07-16 13:48:14.913850', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 161, 0, 81),
(161, 'ringtonefly', 'ringtonefly', '2021-07-16 13:48:14.914198', '2021-07-16 13:48:14.914240', '2021-07-16 13:48:14.913850', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 160, 0, 81),
(162, 'script', 'ringtonefly', '2021-07-17 10:46:59.381263', '2021-07-17 10:46:59.381314', '2021-07-17 10:57:32.757317', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 167, 0, 82),
(163, 'script', 'ringtonefly', '2021-07-17 10:49:57.967888', '2021-07-17 10:49:57.967934', '2021-07-17 10:57:53.275250', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 168, 0, 83),
(164, 'script', 'ringtonefly', '2021-07-17 10:51:17.116203', '2021-07-17 10:51:17.116251', '2021-07-17 10:58:16.412556', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 169, 0, 84),
(165, 'script', 'ringtonefly', '2021-07-17 10:54:59.448430', '2021-07-17 10:54:59.448477', '2021-07-17 10:59:02.322193', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 171, 0, 85),
(166, 'script', 'ringtonefly', '2021-07-17 10:56:41.760820', '2021-07-17 10:56:41.760887', '2021-07-17 10:58:40.917614', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 170, 0, 86),
(167, 'ringtonefly', 'ringtonefly', '2021-07-17 10:57:32.757669', '2021-07-17 10:57:32.757712', '2021-07-17 10:57:32.757317', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 162, 0, 82),
(168, 'ringtonefly', 'ringtonefly', '2021-07-17 10:57:53.275618', '2021-07-17 10:57:53.275662', '2021-07-17 10:57:53.275250', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 163, 0, 83),
(169, 'ringtonefly', 'ringtonefly', '2021-07-17 10:58:16.412931', '2021-07-17 10:58:16.412974', '2021-07-17 10:58:16.412556', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 164, 0, 84),
(170, 'ringtonefly', 'ringtonefly', '2021-07-17 10:58:40.917984', '2021-07-17 10:58:40.918041', '2021-07-17 10:58:40.917614', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 166, 0, 86),
(171, 'ringtonefly', 'ringtonefly', '2021-07-17 10:59:02.322557', '2021-07-17 10:59:02.322603', '2021-07-17 10:59:02.322193', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 165, 0, 85),
(172, 'script', 'ringtonefly', '2021-08-03 12:41:33.805973', '2021-08-03 13:11:34.398865', '2021-08-03 13:10:17.090705', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 173, 0, 87),
(173, 'ringtonefly', 'ringtonefly', '2021-08-03 13:10:17.091201', '2021-08-27 12:30:04.512693', '2021-08-03 13:10:17.090705', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 172, 0, 87),
(174, 'script', 'ringtonefly', '2021-08-03 13:19:05.347436', '2021-08-03 13:19:05.347487', '2021-08-03 13:19:59.369782', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 175, 0, 88),
(175, 'ringtonefly', 'ringtonefly', '2021-08-03 13:19:59.370385', '2021-08-03 13:19:59.370453', '2021-08-03 13:19:59.369782', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 174, 0, 88),
(176, 'script', 'ringtonefly', '2021-08-04 05:35:09.437261', '2021-08-04 05:35:09.437313', '2021-08-04 05:40:58.547589', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 178, 0, 89),
(177, 'script', 'ringtonefly', '2021-08-04 05:37:33.800937', '2021-08-04 05:37:33.801006', '2021-08-04 05:41:29.476239', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 179, 0, 90),
(178, 'ringtonefly', 'ringtonefly', '2021-08-04 05:40:58.548245', '2021-08-04 05:40:58.548313', '2021-08-04 05:40:58.547589', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 176, 0, 89),
(179, 'ringtonefly', 'ringtonefly', '2021-08-04 05:41:29.476806', '2021-08-04 05:41:29.476860', '2021-08-04 05:41:29.476239', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 177, 0, 90),
(180, 'script', 'ringtonefly', '2021-08-04 05:45:52.973669', '2021-08-04 05:45:52.973724', '2021-08-04 05:52:35.027601', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 183, 0, 91),
(181, 'script', 'ringtonefly', '2021-08-04 05:48:25.579589', '2021-08-04 05:48:25.579642', '2021-08-04 05:53:06.934821', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 184, 0, 92),
(182, 'script', 'ringtonefly', '2021-08-04 05:52:08.174494', '2021-08-04 05:52:08.174553', '2021-08-04 05:53:30.724474', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 185, 0, 93),
(183, 'ringtonefly', 'ringtonefly', '2021-08-04 05:52:35.027998', '2021-08-04 05:52:35.028046', '2021-08-04 05:52:35.027601', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 180, 0, 91),
(184, 'ringtonefly', 'ringtonefly', '2021-08-04 05:53:06.935214', '2021-08-04 05:53:06.935265', '2021-08-04 05:53:06.934821', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 181, 0, 92),
(185, 'ringtonefly', 'ringtonefly', '2021-08-04 05:53:30.724895', '2021-08-04 05:53:30.724943', '2021-08-04 05:53:30.724474', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 182, 0, 93),
(186, 'script', 'ringtonefly', '2021-08-05 10:35:57.328664', '2021-08-05 10:35:57.328713', '2021-08-05 10:51:31.636093', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 189, 0, 94),
(187, 'script', 'ringtonefly', '2021-08-05 10:47:27.097185', '2021-08-05 10:47:27.097235', '2021-08-05 10:52:50.735841', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 190, 0, 95),
(188, 'script', 'ringtonefly', '2021-08-05 10:50:59.715433', '2021-08-05 10:50:59.715536', '2021-08-05 10:53:19.389160', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 191, 0, 96),
(189, 'ringtonefly', 'ringtonefly', '2021-08-05 10:51:31.636453', '2021-08-05 10:51:31.636508', '2021-08-05 10:51:31.636093', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 186, 0, 94),
(190, 'ringtonefly', 'ringtonefly', '2021-08-05 10:52:50.736222', '2021-08-05 10:52:50.736270', '2021-08-05 10:52:50.735841', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 187, 0, 95),
(191, 'ringtonefly', 'ringtonefly', '2021-08-05 10:53:19.389555', '2021-08-05 10:53:19.389602', '2021-08-05 10:53:19.389160', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 188, 0, 96),
(192, 'script', 'ringtonefly', '2021-08-20 12:17:22.702888', '2021-08-20 12:17:22.702947', '2021-08-20 12:17:57.075897', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 193, 0, 97),
(193, 'ringtonefly', 'ringtonefly', '2021-08-20 12:17:57.076684', '2021-08-20 12:17:57.076733', '2021-08-20 12:17:57.075897', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 192, 0, 97),
(194, 'script', 'ringtonefly', '2021-08-20 12:23:28.214097', '2021-08-20 12:23:28.214157', '2021-08-20 12:24:54.616426', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 195, 0, 98),
(195, 'ringtonefly', 'ringtonefly', '2021-08-20 12:24:54.617195', '2021-08-20 12:24:54.617242', '2021-08-20 12:24:54.616426', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 194, 0, 98),
(196, 'script', 'ringtonefly', '2021-08-27 11:06:03.109555', '2021-08-27 11:07:51.823544', '2021-08-27 11:08:05.925941', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 197, 0, 99),
(197, 'ringtonefly', 'ringtonefly', '2021-08-27 11:08:05.926632', '2021-08-27 11:43:44.091952', '2021-08-27 11:08:05.925941', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 196, 0, 99),
(198, 'script', 'ringtonefly', '2021-08-27 11:47:28.301061', '2021-08-27 11:47:28.301131', '2021-08-27 11:47:56.340765', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 199, 0, 100),
(199, 'ringtonefly', 'ringtonefly', '2021-08-27 11:47:56.341247', '2021-08-27 11:47:56.341295', '2021-08-27 11:47:56.340765', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 198, 0, 100),
(200, 'script', 'ringtonefly', '2021-08-27 11:56:48.248234', '2021-08-27 11:56:48.248293', '2021-08-27 12:01:22.888251', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 203, 0, 101),
(201, 'script', 'ringtonefly', '2021-08-27 11:58:29.332042', '2021-08-27 11:58:29.332091', '2021-08-27 12:01:25.164914', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 204, 0, 102),
(202, 'script', 'ringtonefly', '2021-08-27 12:00:50.296792', '2021-08-27 12:00:50.296877', '2021-08-27 12:03:01.873585', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 205, 0, 103),
(203, 'ringtonefly', 'ringtonefly', '2021-08-27 12:01:22.889125', '2021-08-27 12:02:32.346334', '2021-08-27 12:01:22.888251', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 200, 0, 101),
(204, 'ringtonefly', 'ringtonefly', '2021-08-27 12:01:25.166032', '2021-08-27 12:01:25.166114', '2021-08-27 12:01:25.164914', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 201, 0, 102),
(205, 'ringtonefly', 'ringtonefly', '2021-08-27 12:03:01.874350', '2021-08-27 12:03:01.874405', '2021-08-27 12:03:01.873585', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 202, 0, 103),
(206, 'script', 'ringtonefly', '2021-08-27 12:10:03.003011', '2021-08-27 12:10:03.003087', '2021-08-27 12:13:24.970180', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 209, 0, 104),
(207, 'script', 'ringtonefly', '2021-08-27 12:11:19.312990', '2021-08-27 12:11:19.313063', '2021-08-27 12:13:25.513406', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 210, 0, 105),
(208, 'script', 'ringtonefly', '2021-08-27 12:12:45.115846', '2021-08-27 12:12:45.115917', '2021-08-27 12:13:27.005932', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 211, 0, 106),
(209, 'ringtonefly', 'ringtonefly', '2021-08-27 12:13:24.971124', '2021-08-27 12:13:24.971188', '2021-08-27 12:13:24.970180', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 206, 0, 104),
(210, 'ringtonefly', 'ringtonefly', '2021-08-27 12:13:25.513786', '2021-08-27 12:13:25.513833', '2021-08-27 12:13:25.513406', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 207, 0, 105),
(211, 'ringtonefly', 'ringtonefly', '2021-08-27 12:13:27.006699', '2021-08-27 12:13:27.006765', '2021-08-27 12:13:27.005932', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 208, 0, 106),
(212, 'script', 'ringtonefly', '2021-08-27 12:15:20.177358', '2021-08-27 12:15:20.177414', '2021-08-27 12:15:48.233049', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 213, 0, 107),
(213, 'ringtonefly', 'ringtonefly', '2021-08-27 12:15:48.233463', '2021-08-27 12:15:48.233511', '2021-08-27 12:15:48.233049', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 212, 0, 107),
(214, 'script', 'ringtonefly', '2021-09-13 12:22:03.141970', '2021-09-13 12:22:03.142026', '2021-09-13 12:22:51.349433', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 215, 0, 108),
(215, 'ringtonefly', 'ringtonefly', '2021-09-13 12:22:51.350088', '2021-09-13 12:22:51.350136', '2021-09-13 12:22:51.349433', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 214, 0, 108),
(216, 'script', 'ringtonefly', '2021-09-25 07:28:29.095337', '2021-09-25 07:30:46.336654', '2021-09-25 07:31:13.644787', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 217, 0, 109),
(217, 'ringtonefly', 'ringtonefly', '2021-09-25 07:31:13.645386', '2021-09-25 07:44:14.135082', '2021-09-25 07:31:13.644787', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 216, 0, 109),
(218, 'script', 'ringtonefly', '2021-09-25 07:49:43.897478', '2021-10-15 04:04:29.344000', '2021-09-25 07:51:01.301299', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 219, 0, 110),
(219, 'ringtonefly', 'ringtonefly', '2021-09-25 07:51:01.302192', '2021-10-15 04:04:45.155728', '2021-09-25 07:51:01.301299', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 218, 0, 110),
(220, 'script', 'ringtonefly', '2021-09-25 08:01:11.418443', '2021-09-25 08:01:11.418501', '2021-09-25 08:02:19.239138', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 221, 0, 111),
(221, 'ringtonefly', 'ringtonefly', '2021-09-25 08:02:19.239809', '2021-10-13 09:00:45.404639', '2021-09-25 08:02:19.239138', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 220, 0, 111),
(222, 'script', 'ringtonefly', '2021-09-25 15:06:55.581202', '2021-09-25 15:22:43.614998', '2021-09-25 15:10:58.712153', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 224, 0, 112),
(223, 'script', 'ringtonefly', '2021-09-25 15:09:17.139093', '2021-09-25 15:09:17.139148', '2021-09-25 15:11:19.386677', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 225, 0, 113),
(224, 'ringtonefly', 'ringtonefly', '2021-09-25 15:10:58.712974', '2021-10-13 09:02:13.581360', '2021-09-25 15:10:58.712153', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 222, 0, 112),
(225, 'ringtonefly', 'ringtonefly', '2021-09-25 15:11:19.387477', '2021-10-13 09:02:38.435915', '2021-09-25 15:11:19.386677', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 223, 0, 113),
(226, 'script', 'ringtonefly', '2021-10-02 04:28:53.715467', '2021-10-02 04:28:53.715513', '2021-10-02 04:30:41.666826', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 227, 0, 114),
(227, 'ringtonefly', 'ringtonefly', '2021-10-02 04:30:41.667537', '2021-10-13 09:03:08.646004', '2021-10-02 04:30:41.666826', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 226, 0, 114),
(228, 'script', 'ringtonefly', '2021-10-02 04:42:46.220563', '2021-10-02 04:42:46.220617', '2021-10-02 04:53:29.349795', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 229, 0, 115),
(229, 'ringtonefly', 'ringtonefly', '2021-10-02 04:53:29.350554', '2021-10-02 04:53:29.350604', '2021-10-02 04:53:29.349795', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 228, 0, 115),
(230, 'script', 'ringtonefly', '2021-10-02 05:15:24.462121', '2021-10-02 05:15:24.462173', '2021-10-02 05:15:57.709874', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 231, 0, 116),
(231, 'ringtonefly', 'ringtonefly', '2021-10-02 05:15:57.710457', '2021-10-13 09:03:47.117883', '2021-10-02 05:15:57.709874', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 230, 0, 116),
(232, 'script', 'ringtonefly', '2021-10-10 11:43:00.327351', '2021-10-10 11:43:00.327406', '2021-10-10 11:43:35.194534', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 233, 0, 117),
(233, 'ringtonefly', 'ringtonefly', '2021-10-10 11:43:35.195218', '2021-10-13 09:04:35.958293', '2021-10-10 11:43:35.194534', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 232, 0, 117),
(234, 'script', 'ringtonefly', '2021-10-13 04:04:35.455865', '2021-10-13 04:04:35.455919', '2021-10-13 04:07:00.992665', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 235, 0, 118),
(235, 'ringtonefly', 'ringtonefly', '2021-10-13 04:07:00.993396', '2021-10-13 04:07:00.993441', '2021-10-13 04:07:00.992665', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 234, 0, 118),
(236, 'script', 'ringtonefly', '2021-10-13 04:17:00.522162', '2021-10-13 04:17:00.522215', '2021-10-13 04:29:54.937179', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 239, 0, 119),
(237, 'script', 'ringtonefly', '2021-10-13 04:23:34.417269', '2021-10-13 04:23:34.417323', '2021-10-13 04:31:18.690728', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 240, 0, 120),
(238, 'script', 'ringtonefly', '2021-10-13 04:28:39.643824', '2021-10-13 04:28:39.643874', '2021-10-13 04:33:56.663403', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 241, 0, 121),
(239, 'ringtonefly', 'ringtonefly', '2021-10-13 04:29:54.937733', '2021-10-13 04:29:54.937779', '2021-10-13 04:29:54.937179', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 236, 0, 119),
(240, 'ringtonefly', 'ringtonefly', '2021-10-13 04:31:18.691448', '2021-10-13 04:31:18.691494', '2021-10-13 04:31:18.690728', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 237, 0, 120),
(241, 'ringtonefly', 'ringtonefly', '2021-10-13 04:33:56.664075', '2021-10-13 04:33:56.664116', '2021-10-13 04:33:56.663403', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 238, 0, 121),
(244, 'script', 'ringtonefly', '2021-10-15 03:39:42.679476', '2021-10-15 03:39:42.679527', '2021-10-15 03:40:05.846096', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 245, 0, 123),
(245, 'ringtonefly', 'ringtonefly', '2021-10-15 03:40:05.846965', '2021-10-15 03:40:05.847027', '2021-10-15 03:40:05.846096', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 244, 0, 123),
(246, 'script', 'ringtonefly', '2021-10-15 05:34:10.868705', '2021-10-15 05:34:10.868764', '2021-10-15 05:34:41.860335', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 247, 0, 124),
(247, 'ringtonefly', 'ringtonefly', '2021-10-15 05:34:41.861033', '2021-10-15 05:34:41.861077', '2021-10-15 05:34:41.860335', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 246, 0, 124),
(248, 'script', 'ringtonefly', '2021-10-15 06:20:22.584362', '2021-10-15 06:20:22.584432', '2021-10-15 06:20:46.093120', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 249, 0, 125),
(249, 'ringtonefly', 'ringtonefly', '2021-10-15 06:20:46.093903', '2021-10-15 06:20:46.093969', '2021-10-15 06:20:46.093120', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 248, 0, 125),
(250, 'script', 'ringtonefly', '2021-10-16 03:44:56.052663', '2021-10-16 03:44:56.052715', '2021-10-16 03:45:19.302842', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 251, 0, 126),
(251, 'ringtonefly', 'ringtonefly', '2021-10-16 03:45:19.303554', '2021-10-16 03:45:19.303609', '2021-10-16 03:45:19.302842', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 250, 0, 126),
(252, 'script', 'ringtonefly', '2021-10-16 05:41:40.436113', '2021-10-16 05:41:40.436166', '2021-10-16 05:42:10.001357', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 253, 0, 127),
(253, 'ringtonefly', 'ringtonefly', '2021-10-16 05:42:10.002076', '2021-10-16 05:42:10.002122', '2021-10-16 05:42:10.001357', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 252, 0, 127),
(254, 'script', 'ringtonefly', '2021-10-17 06:35:13.981656', '2021-10-17 06:35:13.981709', '2021-10-17 06:36:37.311096', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 255, 0, 128),
(255, 'ringtonefly', 'ringtonefly', '2021-10-17 06:36:37.311431', '2021-10-17 06:36:37.311471', '2021-10-17 06:36:37.311096', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 254, 0, 128);
INSERT INTO `cms_page` (`id`, `created_by`, `changed_by`, `creation_date`, `changed_date`, `publication_date`, `publication_end_date`, `in_navigation`, `soft_root`, `reverse_id`, `navigation_extenders`, `template`, `login_required`, `limit_visibility_in_menu`, `is_home`, `application_urls`, `application_namespace`, `publisher_is_draft`, `languages`, `xframe_options`, `publisher_public_id`, `is_page_type`, `node_id`) VALUES
(256, 'script', 'ringtonefly', '2021-10-18 13:34:00.939409', '2021-10-18 13:34:00.939482', '2021-10-18 13:34:33.914098', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 257, 0, 129),
(257, 'ringtonefly', 'ringtonefly', '2021-10-18 13:34:33.914458', '2021-10-18 13:34:33.914503', '2021-10-18 13:34:33.914098', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 256, 0, 129),
(258, 'script', 'ringtonefly', '2021-10-19 17:20:09.641691', '2021-10-19 17:20:09.641744', '2021-10-19 17:28:23.846968', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 259, 0, 130),
(259, 'ringtonefly', 'ringtonefly', '2021-10-19 17:28:23.848159', '2021-10-19 17:28:23.848223', '2021-10-19 17:28:23.846968', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 258, 0, 130),
(260, 'script', 'ringtonefly', '2021-10-19 17:31:32.997340', '2021-10-19 17:31:32.997393', '2021-10-19 17:33:31.076319', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 261, 0, 131),
(261, 'ringtonefly', 'ringtonefly', '2021-10-19 17:33:31.077087', '2021-10-19 17:33:31.077137', '2021-10-19 17:33:31.076319', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 260, 0, 131),
(262, 'script', 'ringtonefly', '2021-10-20 04:03:47.445523', '2021-10-20 04:03:47.445573', '2021-10-20 04:05:23.437735', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 263, 0, 132),
(263, 'ringtonefly', 'ringtonefly', '2021-10-20 04:05:23.438553', '2021-10-20 04:05:23.438600', '2021-10-20 04:05:23.437735', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 262, 0, 132),
(264, 'script', 'ringtonefly', '2021-10-20 06:33:48.556815', '2021-10-20 06:33:48.556888', '2021-10-20 06:34:27.285221', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 265, 0, 133),
(265, 'ringtonefly', 'ringtonefly', '2021-10-20 06:34:27.285977', '2021-10-20 06:34:27.286023', '2021-10-20 06:34:27.285221', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 264, 0, 133),
(266, 'script', 'ringtonefly', '2021-10-20 06:38:18.327949', '2021-10-20 06:38:18.328002', '2021-10-20 06:39:03.794232', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 267, 0, 134),
(267, 'ringtonefly', 'ringtonefly', '2021-10-20 06:39:03.794941', '2021-10-20 06:39:03.794986', '2021-10-20 06:39:03.794232', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 266, 0, 134),
(268, 'script', 'ringtonefly', '2021-10-20 07:51:46.451748', '2021-10-20 07:51:46.451834', '2021-10-20 07:52:20.199932', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 269, 0, 135),
(269, 'ringtonefly', 'ringtonefly', '2021-10-20 07:52:20.200640', '2021-10-20 07:52:20.200686', '2021-10-20 07:52:20.199932', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 268, 0, 135),
(270, 'script', 'ringtonefly', '2021-10-20 17:28:38.357284', '2021-10-20 17:28:38.357332', '2021-10-20 17:33:34.494487', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 271, 0, 136),
(271, 'ringtonefly', 'ringtonefly', '2021-10-20 17:33:34.495107', '2021-10-20 17:33:34.495150', '2021-10-20 17:33:34.494487', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 270, 0, 136),
(272, 'script', 'ringtonefly', '2021-10-21 03:46:33.663237', '2021-10-21 03:46:33.663288', '2021-10-21 03:47:10.753213', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 273, 0, 137),
(273, 'ringtonefly', 'ringtonefly', '2021-10-21 03:47:10.753808', '2021-10-21 03:47:10.753856', '2021-10-21 03:47:10.753213', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 272, 0, 137),
(274, 'script', 'ringtonefly', '2021-10-21 05:03:20.620164', '2021-10-21 05:03:20.620214', '2021-10-21 05:03:55.685800', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 275, 0, 138),
(275, 'ringtonefly', 'ringtonefly', '2021-10-21 05:03:55.686476', '2021-10-21 05:03:55.686520', '2021-10-21 05:03:55.685800', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 274, 0, 138),
(276, 'script', 'ringtonefly', '2021-10-21 06:47:42.655506', '2021-10-21 06:47:42.655554', '2021-10-21 06:48:18.317436', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 277, 0, 139),
(277, 'ringtonefly', 'ringtonefly', '2021-10-21 06:48:18.318104', '2021-10-21 06:48:18.318161', '2021-10-21 06:48:18.317436', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 276, 0, 139),
(278, 'script', 'ringtonefly', '2021-10-21 06:53:12.853861', '2021-10-21 06:53:12.853914', '2021-10-21 06:53:47.376625', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 279, 0, 140),
(279, 'ringtonefly', 'ringtonefly', '2021-10-21 06:53:47.377008', '2021-10-21 06:53:47.377051', '2021-10-21 06:53:47.376625', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 278, 0, 140),
(280, 'script', 'ringtonefly', '2021-10-22 16:32:27.101708', '2021-10-22 16:32:27.101759', '2021-10-22 16:33:09.946220', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 281, 0, 141),
(281, 'ringtonefly', 'ringtonefly', '2021-10-22 16:33:09.946826', '2021-10-22 16:33:09.946874', '2021-10-22 16:33:09.946220', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 280, 0, 141),
(282, 'script', 'ringtonefly', '2021-10-23 16:20:55.075798', '2021-10-23 16:26:33.829519', '2021-10-23 16:41:28.990770', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 283, 0, 142),
(283, 'ringtonefly', 'ringtonefly', '2021-10-23 16:41:28.991476', '2021-10-29 13:35:17.065494', '2021-10-23 16:41:28.990770', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 282, 0, 142),
(284, 'script', 'ringtonefly', '2021-10-23 16:50:05.522623', '2021-10-23 16:50:05.522698', '2021-10-23 16:52:01.990479', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 285, 0, 143),
(285, 'ringtonefly', 'ringtonefly', '2021-10-23 16:52:01.991349', '2021-10-23 16:52:01.991415', '2021-10-23 16:52:01.990479', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 284, 0, 143),
(286, 'script', 'ringtonefly', '2021-10-24 05:13:22.897287', '2021-10-24 05:13:22.897332', '2021-10-24 05:14:30.984172', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 287, 0, 144),
(287, 'ringtonefly', 'ringtonefly', '2021-10-24 05:14:30.984672', '2021-10-24 05:14:30.984722', '2021-10-24 05:14:30.984172', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 286, 0, 144),
(288, 'script', 'ringtonefly', '2021-10-26 04:26:08.774560', '2021-10-26 04:26:08.774623', '2021-10-26 04:27:06.517980', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 289, 0, 145),
(289, 'ringtonefly', 'ringtonefly', '2021-10-26 04:27:06.518980', '2021-10-26 04:27:06.519031', '2021-10-26 04:27:06.517980', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 288, 0, 145),
(290, 'script', 'ringtonefly', '2021-10-26 17:40:08.282584', '2021-10-26 17:40:08.282636', '2021-10-26 17:40:55.370726', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 291, 0, 146),
(291, 'ringtonefly', 'ringtonefly', '2021-10-26 17:40:55.371754', '2021-10-26 17:40:55.371820', '2021-10-26 17:40:55.370726', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 290, 0, 146),
(292, 'script', 'ringtonefly', '2021-10-26 17:49:44.028473', '2021-10-26 17:49:44.028528', '2021-10-26 17:51:50.666911', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 293, 0, 147),
(293, 'ringtonefly', 'ringtonefly', '2021-10-26 17:51:50.667612', '2021-10-26 17:51:50.667657', '2021-10-26 17:51:50.666911', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 292, 0, 147),
(294, 'script', 'ringtonefly', '2021-10-27 10:13:51.429586', '2021-10-27 10:13:51.429642', '2021-10-27 10:18:00.574716', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 296, 0, 148),
(295, 'script', 'ringtonefly', '2021-10-27 10:17:26.949866', '2021-10-27 10:17:26.949926', '2021-10-27 10:18:26.474947', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 297, 0, 149),
(296, 'ringtonefly', 'ringtonefly', '2021-10-27 10:18:00.575102', '2021-10-27 10:18:00.575163', '2021-10-27 10:18:00.574716', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 294, 0, 148),
(297, 'ringtonefly', 'ringtonefly', '2021-10-27 10:18:26.475531', '2021-10-27 10:18:26.475574', '2021-10-27 10:18:26.474947', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 295, 0, 149),
(298, 'script', 'ringtonefly', '2021-10-28 07:36:23.615125', '2021-10-28 07:36:23.615174', '2021-10-28 07:59:42.078164', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 305, 0, 150),
(299, 'script', 'ringtonefly', '2021-10-28 07:39:42.973064', '2021-10-28 07:39:42.973114', '2021-10-28 08:01:30.743345', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 306, 0, 151),
(300, 'script', 'ringtonefly', '2021-10-28 07:43:10.902146', '2021-10-28 07:43:10.902198', '2021-10-28 08:01:50.435476', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 307, 0, 152),
(301, 'script', 'ringtonefly', '2021-10-28 07:46:29.801706', '2021-10-28 07:46:29.801776', '2021-10-28 08:02:12.247013', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 308, 0, 153),
(302, 'script', 'ringtonefly', '2021-10-28 07:50:24.855115', '2021-10-28 07:50:24.855171', '2021-10-28 08:03:00.482284', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 309, 0, 154),
(303, 'script', 'ringtonefly', '2021-10-28 07:52:40.490647', '2021-10-28 07:52:40.490702', '2021-10-28 08:03:21.015262', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 310, 0, 155),
(304, 'script', 'ringtonefly', '2021-10-28 07:58:03.925379', '2021-10-28 07:58:03.925436', '2021-10-28 08:03:47.102994', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 311, 0, 156),
(305, 'ringtonefly', 'ringtonefly', '2021-10-28 07:59:42.078697', '2021-10-28 07:59:42.078776', '2021-10-28 07:59:42.078164', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 298, 0, 150),
(306, 'ringtonefly', 'ringtonefly', '2021-10-28 08:01:30.744131', '2021-10-28 08:01:30.744195', '2021-10-28 08:01:30.743345', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 299, 0, 151),
(307, 'ringtonefly', 'ringtonefly', '2021-10-28 08:01:50.436346', '2021-10-28 08:01:50.436397', '2021-10-28 08:01:50.435476', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 300, 0, 152),
(308, 'ringtonefly', 'ringtonefly', '2021-10-28 08:02:12.247932', '2021-10-28 08:02:12.247986', '2021-10-28 08:02:12.247013', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 301, 0, 153),
(309, 'ringtonefly', 'ringtonefly', '2021-10-28 08:03:00.483221', '2021-10-28 08:03:00.483269', '2021-10-28 08:03:00.482284', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 302, 0, 154),
(310, 'ringtonefly', 'ringtonefly', '2021-10-28 08:03:21.015992', '2021-10-28 08:03:21.016038', '2021-10-28 08:03:21.015262', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 303, 0, 155),
(311, 'ringtonefly', 'ringtonefly', '2021-10-28 08:03:47.104003', '2021-10-28 08:03:47.104069', '2021-10-28 08:03:47.102994', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 304, 0, 156),
(312, 'script', 'ringtonefly', '2021-10-29 14:05:47.778708', '2021-10-29 14:05:47.778759', '2021-10-29 14:06:37.734585', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 313, 0, 157),
(313, 'ringtonefly', 'ringtonefly', '2021-10-29 14:06:37.735277', '2021-10-29 14:06:37.735321', '2021-10-29 14:06:37.734585', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 312, 0, 157),
(314, 'script', 'ringtonefly', '2021-10-30 11:30:52.158571', '2021-10-30 11:30:52.158623', '2021-10-30 11:31:55.930348', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 315, 0, 158),
(315, 'ringtonefly', 'ringtonefly', '2021-10-30 11:31:55.931109', '2021-10-30 11:31:55.931171', '2021-10-30 11:31:55.930348', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 314, 0, 158),
(316, 'script', 'ringtonefly', '2021-11-22 20:36:41.599495', '2021-11-22 20:36:41.599557', '2021-11-22 20:37:06.061926', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 317, 0, 159),
(317, 'ringtonefly', 'ringtonefly', '2021-11-22 20:37:06.062511', '2021-11-22 20:37:06.062578', '2021-11-22 20:37:06.061926', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 316, 0, 159),
(318, 'script', 'ringtonefly', '2021-11-28 05:24:33.787788', '2021-11-28 05:24:33.787845', '2021-11-28 05:25:02.987046', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 319, 0, 160),
(319, 'ringtonefly', 'ringtonefly', '2021-11-28 05:25:02.987921', '2021-11-28 05:25:02.987970', '2021-11-28 05:25:02.987046', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 318, 0, 160),
(320, 'script', 'ringtonefly', '2021-12-04 04:18:32.459759', '2021-12-04 04:18:32.459814', '2021-12-04 04:19:13.190017', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 321, 0, 161),
(321, 'ringtonefly', 'ringtonefly', '2021-12-04 04:19:13.190987', '2021-12-04 04:19:13.191054', '2021-12-04 04:19:13.190017', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 320, 0, 161),
(322, 'script', 'ringtonefly', '2021-12-06 06:18:19.089048', '2021-12-06 06:18:19.089118', '2021-12-06 06:19:05.308422', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 323, 0, 162),
(323, 'ringtonefly', 'ringtonefly', '2021-12-06 06:19:05.309213', '2021-12-06 06:19:05.309263', '2021-12-06 06:19:05.308422', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 322, 0, 162),
(324, 'script', 'ringtonefly', '2021-12-08 04:45:35.550063', '2021-12-08 04:45:35.550151', '2021-12-08 04:45:55.854909', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 325, 0, 163),
(325, 'ringtonefly', 'ringtonefly', '2021-12-08 04:45:55.855862', '2021-12-08 04:45:55.855912', '2021-12-08 04:45:55.854909', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 324, 0, 163),
(326, 'script', 'ringtonefly', '2021-12-09 14:30:40.869643', '2021-12-09 14:30:40.869704', '2021-12-09 14:31:27.288099', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 327, 0, 164),
(327, 'ringtonefly', 'ringtonefly', '2021-12-09 14:31:27.289429', '2021-12-09 14:31:27.289509', '2021-12-09 14:31:27.288099', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 326, 0, 164),
(328, 'script', 'ringtonefly', '2021-12-10 03:16:52.341271', '2021-12-10 03:16:52.341325', '2021-12-10 03:17:40.108224', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 329, 0, 165),
(329, 'ringtonefly', 'ringtonefly', '2021-12-10 03:17:40.108898', '2021-12-10 03:17:40.108940', '2021-12-10 03:17:40.108224', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 328, 0, 165),
(330, 'script', 'ringtonefly', '2021-12-10 05:07:51.530623', '2021-12-10 05:07:51.530687', '2021-12-10 05:08:14.316163', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 331, 0, 166),
(331, 'ringtonefly', 'ringtonefly', '2021-12-10 05:08:14.316917', '2021-12-10 05:08:14.316965', '2021-12-10 05:08:14.316163', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 330, 0, 166),
(332, 'script', 'ringtonefly', '2021-12-11 05:50:22.434173', '2021-12-11 05:50:22.434221', '2021-12-11 05:51:02.689687', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 333, 0, 167),
(333, 'ringtonefly', 'ringtonefly', '2021-12-11 05:51:02.690329', '2021-12-12 07:04:45.533500', '2021-12-11 05:51:02.689687', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 332, 0, 167),
(334, 'script', 'ringtonefly', '2021-12-12 17:33:07.664934', '2021-12-12 17:33:07.664992', '2021-12-12 17:34:16.090823', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 335, 0, 168),
(335, 'ringtonefly', 'ringtonefly', '2021-12-12 17:34:16.092013', '2021-12-12 17:34:16.092068', '2021-12-12 17:34:16.090823', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 334, 0, 168),
(336, 'script', 'ringtonefly', '2021-12-13 05:39:37.605946', '2021-12-13 05:39:37.605996', '2021-12-13 05:43:39.622503', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 337, 0, 169),
(337, 'ringtonefly', 'ringtonefly', '2021-12-13 05:43:39.623260', '2021-12-13 06:03:20.274770', '2021-12-13 05:43:39.622503', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 336, 0, 169),
(338, 'script', 'ringtonefly', '2021-12-13 05:55:48.883060', '2021-12-13 05:55:48.883112', '2021-12-13 06:04:20.753662', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 340, 0, 170),
(339, 'script', 'ringtonefly', '2021-12-13 06:02:17.646378', '2021-12-13 06:02:17.646435', '2021-12-13 06:05:26.910774', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 341, 0, 171),
(340, 'ringtonefly', 'ringtonefly', '2021-12-13 06:04:20.754485', '2021-12-13 06:04:20.754551', '2021-12-13 06:04:20.753662', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 338, 0, 170),
(341, 'ringtonefly', 'ringtonefly', '2021-12-13 06:05:26.911330', '2021-12-13 06:05:26.911393', '2021-12-13 06:05:26.910774', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 339, 0, 171),
(342, 'script', 'ringtonefly', '2021-12-13 12:42:50.845159', '2021-12-13 12:42:50.845243', '2021-12-13 12:43:25.375933', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 343, 0, 172),
(343, 'ringtonefly', 'ringtonefly', '2021-12-13 12:43:25.376533', '2021-12-13 12:43:25.376580', '2021-12-13 12:43:25.375933', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 342, 0, 172),
(344, 'script', 'ringtonefly', '2021-12-14 03:24:38.050632', '2021-12-14 03:24:38.050690', '2021-12-14 03:25:44.613607', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 345, 0, 173),
(345, 'ringtonefly', 'ringtonefly', '2021-12-14 03:25:44.613960', '2021-12-14 03:25:44.614005', '2021-12-14 03:25:44.613607', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 344, 0, 173),
(346, 'script', 'ringtonefly', '2021-12-15 05:31:44.932713', '2021-12-15 05:31:44.932778', '2021-12-15 05:33:05.996840', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 347, 0, 174),
(347, 'ringtonefly', 'ringtonefly', '2021-12-15 05:33:05.997839', '2021-12-15 05:33:05.997887', '2021-12-15 05:33:05.996840', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 346, 0, 174),
(348, 'script', 'ringtonefly', '2021-12-15 06:06:50.554770', '2021-12-15 06:06:50.554820', '2021-12-15 06:07:18.954383', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 349, 0, 175),
(349, 'ringtonefly', 'ringtonefly', '2021-12-15 06:07:18.955402', '2021-12-15 06:07:18.955470', '2021-12-15 06:07:18.954383', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 348, 0, 175),
(350, 'script', 'ringtonefly', '2021-12-15 16:55:44.492401', '2021-12-15 16:55:44.492461', '2021-12-15 16:56:14.327538', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 351, 0, 176),
(351, 'ringtonefly', 'ringtonefly', '2021-12-15 16:56:14.328119', '2021-12-15 16:56:14.328161', '2021-12-15 16:56:14.327538', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 350, 0, 176),
(352, 'script', 'ringtonefly', '2021-12-16 11:40:19.335947', '2021-12-16 11:40:19.335998', '2021-12-16 11:41:05.924648', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 353, 0, 177),
(353, 'ringtonefly', 'ringtonefly', '2021-12-16 11:41:05.925353', '2021-12-16 11:41:05.925398', '2021-12-16 11:41:05.924648', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 352, 0, 177),
(354, 'script', 'ringtonefly', '2021-12-17 10:54:16.621334', '2021-12-17 10:54:16.621409', '2021-12-17 10:54:43.200472', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 355, 0, 178),
(355, 'ringtonefly', 'ringtonefly', '2021-12-17 10:54:43.201515', '2021-12-17 10:54:43.201578', '2021-12-17 10:54:43.200472', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 354, 0, 178),
(356, 'script', 'ringtonefly', '2021-12-18 04:28:35.844152', '2021-12-18 04:28:35.844270', '2021-12-18 04:29:04.791589', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 357, 0, 179),
(357, 'ringtonefly', 'ringtonefly', '2021-12-18 04:29:04.792282', '2021-12-18 04:29:04.792329', '2021-12-18 04:29:04.791589', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 356, 0, 179),
(358, 'script', 'ringtonefly', '2021-12-18 06:20:44.745973', '2021-12-18 06:20:44.746027', '2021-12-18 06:21:46.236524', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 359, 0, 180),
(359, 'ringtonefly', 'ringtonefly', '2021-12-18 06:21:46.237129', '2021-12-18 06:21:46.237176', '2021-12-18 06:21:46.236524', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 358, 0, 180),
(360, 'script', 'ringtonefly', '2021-12-18 06:50:42.147408', '2021-12-18 06:50:42.147465', '2021-12-18 06:51:06.950653', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 'en', 0, 361, 0, 181),
(361, 'ringtonefly', 'ringtonefly', '2021-12-18 06:51:06.951441', '2021-12-18 06:51:06.951492', '2021-12-18 06:51:06.950653', NULL, 0, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 'en', 0, 360, 0, 181);

-- --------------------------------------------------------

--
-- Table structure for table `cms_pagepermission`
--

CREATE TABLE `cms_pagepermission` (
  `id` int(11) NOT NULL,
  `can_change` tinyint(1) NOT NULL,
  `can_add` tinyint(1) NOT NULL,
  `can_delete` tinyint(1) NOT NULL,
  `can_change_advanced_settings` tinyint(1) NOT NULL,
  `can_publish` tinyint(1) NOT NULL,
  `can_change_permissions` tinyint(1) NOT NULL,
  `can_move_page` tinyint(1) NOT NULL,
  `can_view` tinyint(1) NOT NULL,
  `grant_on` int(11) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cms_pageuser`
--

CREATE TABLE `cms_pageuser` (
  `user_ptr_id` int(11) NOT NULL,
  `created_by_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cms_pageusergroup`
--

CREATE TABLE `cms_pageusergroup` (
  `group_ptr_id` int(11) NOT NULL,
  `created_by_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cms_page_placeholders`
--

CREATE TABLE `cms_page_placeholders` (
  `id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `placeholder_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_page_placeholders`
--

INSERT INTO `cms_page_placeholders` (`id`, `page_id`, `placeholder_id`) VALUES
(1, 1, 2),
(2, 2, 3),
(3, 3, 4),
(4, 4, 5),
(16, 16, 17),
(17, 17, 18),
(19, 19, 20),
(21, 21, 22),
(22, 22, 23),
(23, 23, 24),
(24, 24, 25),
(25, 25, 26),
(26, 26, 27),
(27, 27, 28),
(28, 28, 29),
(29, 29, 30),
(30, 30, 31),
(31, 31, 32),
(32, 32, 33),
(33, 33, 34),
(34, 34, 35),
(35, 35, 36),
(36, 36, 37),
(37, 37, 38),
(38, 38, 39),
(39, 39, 40),
(40, 40, 41),
(41, 41, 42),
(42, 42, 43),
(43, 43, 44),
(44, 44, 45),
(45, 45, 46),
(46, 46, 47),
(47, 47, 48),
(48, 48, 49),
(49, 49, 50),
(50, 50, 51),
(51, 51, 52),
(52, 52, 53),
(53, 53, 54),
(54, 54, 55),
(55, 55, 56),
(56, 56, 57),
(57, 57, 58),
(58, 58, 59),
(59, 59, 60),
(60, 60, 61),
(61, 61, 62),
(62, 62, 63),
(63, 63, 64),
(64, 64, 65),
(65, 65, 66),
(66, 66, 67),
(67, 67, 68),
(68, 68, 69),
(69, 69, 70),
(70, 70, 71),
(71, 71, 72),
(72, 72, 73),
(73, 73, 74),
(74, 74, 75),
(75, 75, 76),
(76, 76, 77),
(77, 77, 78),
(78, 78, 79),
(79, 79, 80),
(80, 80, 81),
(81, 81, 82),
(82, 82, 83),
(83, 83, 84),
(84, 84, 85),
(85, 85, 86),
(86, 86, 87),
(87, 87, 88),
(88, 88, 89),
(89, 89, 90),
(90, 90, 91),
(91, 91, 92),
(92, 92, 93),
(93, 93, 94),
(94, 94, 95),
(95, 95, 96),
(96, 96, 97),
(97, 97, 98),
(98, 98, 99),
(99, 99, 100),
(100, 100, 101),
(101, 101, 102),
(102, 102, 103),
(103, 103, 104),
(104, 104, 105),
(105, 105, 106),
(106, 106, 107),
(107, 107, 108),
(108, 108, 109),
(109, 109, 110),
(110, 110, 111),
(111, 111, 112),
(112, 112, 113),
(113, 113, 114),
(114, 114, 115),
(115, 115, 116),
(116, 116, 117),
(117, 117, 118),
(118, 118, 119),
(119, 119, 120),
(120, 120, 121),
(121, 121, 122),
(122, 122, 123),
(123, 123, 124),
(124, 124, 125),
(125, 125, 126),
(126, 126, 127),
(127, 127, 128),
(128, 128, 129),
(129, 129, 130),
(130, 130, 131),
(131, 131, 132),
(132, 132, 133),
(133, 133, 134),
(134, 134, 135),
(135, 135, 136),
(136, 136, 137),
(137, 137, 138),
(138, 138, 139),
(139, 139, 140),
(140, 140, 141),
(141, 141, 142),
(142, 142, 143),
(143, 143, 144),
(144, 144, 145),
(145, 145, 146),
(146, 146, 147),
(147, 147, 148),
(148, 148, 149),
(149, 149, 150),
(150, 150, 151),
(151, 151, 152),
(152, 152, 153),
(153, 153, 154),
(154, 154, 155),
(155, 155, 156),
(156, 156, 157),
(157, 157, 158),
(158, 158, 159),
(159, 159, 160),
(160, 160, 161),
(161, 161, 162),
(162, 162, 163),
(163, 163, 164),
(164, 164, 165),
(165, 165, 166),
(166, 166, 167),
(167, 167, 168),
(168, 168, 169),
(169, 169, 170),
(170, 170, 171),
(171, 171, 172),
(172, 172, 173),
(173, 173, 174),
(174, 174, 175),
(175, 175, 176),
(176, 176, 177),
(177, 177, 178),
(178, 178, 179),
(179, 179, 180),
(180, 180, 181),
(181, 181, 182),
(182, 182, 183),
(183, 183, 184),
(184, 184, 185),
(185, 185, 186),
(186, 186, 187),
(187, 187, 188),
(188, 188, 189),
(189, 189, 190),
(190, 190, 191),
(191, 191, 192),
(192, 192, 193),
(193, 193, 194),
(194, 194, 195),
(195, 195, 196),
(196, 196, 197),
(197, 197, 198),
(198, 198, 199),
(199, 199, 200),
(200, 200, 201),
(201, 201, 202),
(202, 202, 203),
(203, 203, 204),
(204, 204, 205),
(205, 205, 206),
(206, 206, 207),
(207, 207, 208),
(208, 208, 209),
(209, 209, 210),
(210, 210, 211),
(211, 211, 212),
(212, 212, 213),
(213, 213, 214),
(214, 214, 215),
(215, 215, 216),
(216, 216, 217),
(217, 217, 218),
(218, 218, 219),
(219, 219, 220),
(220, 220, 221),
(221, 221, 222),
(222, 222, 223),
(223, 223, 224),
(224, 224, 225),
(225, 225, 226),
(226, 226, 227),
(227, 227, 228),
(228, 228, 229),
(229, 229, 230),
(230, 230, 231),
(231, 231, 232),
(232, 232, 233),
(233, 233, 234),
(234, 234, 235),
(235, 235, 236),
(236, 236, 237),
(237, 237, 238),
(238, 238, 239),
(239, 239, 240),
(240, 240, 241),
(241, 241, 242),
(244, 244, 245),
(245, 245, 246),
(246, 246, 247),
(247, 247, 248),
(248, 248, 249),
(249, 249, 250),
(250, 250, 251),
(251, 251, 252),
(252, 252, 253),
(253, 253, 254),
(254, 254, 255),
(255, 255, 256),
(256, 256, 257),
(257, 257, 258),
(258, 258, 259),
(259, 259, 260),
(260, 260, 261),
(261, 261, 262),
(262, 262, 263),
(263, 263, 264),
(264, 264, 265),
(265, 265, 266),
(266, 266, 267),
(267, 267, 268),
(268, 268, 269),
(269, 269, 270),
(270, 270, 271),
(271, 271, 272),
(272, 272, 273),
(273, 273, 274),
(274, 274, 275),
(275, 275, 276),
(276, 276, 277),
(277, 277, 278),
(278, 278, 279),
(279, 279, 280),
(280, 280, 281),
(281, 281, 282),
(282, 282, 283),
(283, 283, 284),
(284, 284, 285),
(285, 285, 286),
(286, 286, 287),
(287, 287, 288),
(288, 288, 290),
(289, 289, 291),
(290, 290, 292),
(291, 291, 293),
(292, 292, 294),
(293, 293, 295),
(294, 294, 296),
(295, 295, 297),
(296, 296, 298),
(297, 297, 299),
(298, 298, 300),
(299, 299, 301),
(300, 300, 302),
(301, 301, 303),
(302, 302, 304),
(303, 303, 305),
(304, 304, 306),
(305, 305, 307),
(306, 306, 308),
(307, 307, 309),
(308, 308, 310),
(309, 309, 311),
(310, 310, 312),
(311, 311, 313),
(312, 312, 314),
(313, 313, 315),
(314, 314, 316),
(315, 315, 317),
(316, 316, 318),
(317, 317, 319),
(318, 318, 320),
(319, 319, 321),
(320, 320, 322),
(321, 321, 323),
(322, 322, 324),
(323, 323, 325),
(324, 324, 326),
(325, 325, 327),
(326, 326, 328),
(327, 327, 329),
(328, 328, 330),
(329, 329, 331),
(330, 330, 332),
(331, 331, 333),
(332, 332, 334),
(333, 333, 335),
(334, 334, 336),
(335, 335, 337),
(336, 336, 338),
(337, 337, 339),
(338, 338, 340),
(339, 339, 341),
(340, 340, 342),
(341, 341, 343),
(342, 342, 344),
(343, 343, 345),
(344, 344, 346),
(345, 345, 347),
(346, 346, 348),
(347, 347, 349),
(348, 348, 350),
(349, 349, 351),
(350, 350, 352),
(351, 351, 353),
(352, 352, 354),
(353, 353, 355),
(354, 354, 356),
(355, 355, 357),
(356, 356, 358),
(357, 357, 359),
(358, 358, 360),
(359, 359, 361),
(360, 360, 362),
(361, 361, 363);

-- --------------------------------------------------------

--
-- Table structure for table `cms_placeholder`
--

CREATE TABLE `cms_placeholder` (
  `id` int(11) NOT NULL,
  `slot` varchar(255) NOT NULL,
  `default_width` smallint(5) UNSIGNED DEFAULT NULL CHECK (`default_width` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_placeholder`
--

INSERT INTO `cms_placeholder` (`id`, `slot`, `default_width`) VALUES
(1, 'clipboard', NULL),
(2, 'content', NULL),
(3, 'content', NULL),
(4, 'content', NULL),
(5, 'content', NULL),
(17, 'content', NULL),
(18, 'content', NULL),
(20, 'content', NULL),
(22, 'content', NULL),
(23, 'content', NULL),
(24, 'content', NULL),
(25, 'content', NULL),
(26, 'content', NULL),
(27, 'content', NULL),
(28, 'content', NULL),
(29, 'content', NULL),
(30, 'content', NULL),
(31, 'content', NULL),
(32, 'content', NULL),
(33, 'content', NULL),
(34, 'content', NULL),
(35, 'content', NULL),
(36, 'content', NULL),
(37, 'content', NULL),
(38, 'content', NULL),
(39, 'content', NULL),
(40, 'content', NULL),
(41, 'content', NULL),
(42, 'content', NULL),
(43, 'content', NULL),
(44, 'content', NULL),
(45, 'content', NULL),
(46, 'content', NULL),
(47, 'content', NULL),
(48, 'content', NULL),
(49, 'content', NULL),
(50, 'content', NULL),
(51, 'content', NULL),
(52, 'content', NULL),
(53, 'content', NULL),
(54, 'content', NULL),
(55, 'content', NULL),
(56, 'content', NULL),
(57, 'content', NULL),
(58, 'content', NULL),
(59, 'content', NULL),
(60, 'content', NULL),
(61, 'content', NULL),
(62, 'content', NULL),
(63, 'content', NULL),
(64, 'content', NULL),
(65, 'content', NULL),
(66, 'content', NULL),
(67, 'content', NULL),
(68, 'content', NULL),
(69, 'content', NULL),
(70, 'content', NULL),
(71, 'content', NULL),
(72, 'content', NULL),
(73, 'content', NULL),
(74, 'content', NULL),
(75, 'content', NULL),
(76, 'content', NULL),
(77, 'content', NULL),
(78, 'content', NULL),
(79, 'content', NULL),
(80, 'content', NULL),
(81, 'content', NULL),
(82, 'content', NULL),
(83, 'content', NULL),
(84, 'content', NULL),
(85, 'content', NULL),
(86, 'content', NULL),
(87, 'content', NULL),
(88, 'content', NULL),
(89, 'content', NULL),
(90, 'content', NULL),
(91, 'content', NULL),
(92, 'content', NULL),
(93, 'content', NULL),
(94, 'content', NULL),
(95, 'content', NULL),
(96, 'content', NULL),
(97, 'content', NULL),
(98, 'content', NULL),
(99, 'content', NULL),
(100, 'content', NULL),
(101, 'content', NULL),
(102, 'content', NULL),
(103, 'content', NULL),
(104, 'content', NULL),
(105, 'content', NULL),
(106, 'content', NULL),
(107, 'content', NULL),
(108, 'content', NULL),
(109, 'content', NULL),
(110, 'content', NULL),
(111, 'content', NULL),
(112, 'content', NULL),
(113, 'content', NULL),
(114, 'content', NULL),
(115, 'content', NULL),
(116, 'content', NULL),
(117, 'content', NULL),
(118, 'content', NULL),
(119, 'content', NULL),
(120, 'content', NULL),
(121, 'content', NULL),
(122, 'content', NULL),
(123, 'content', NULL),
(124, 'content', NULL),
(125, 'content', NULL),
(126, 'content', NULL),
(127, 'content', NULL),
(128, 'content', NULL),
(129, 'content', NULL),
(130, 'content', NULL),
(131, 'content', NULL),
(132, 'content', NULL),
(133, 'content', NULL),
(134, 'content', NULL),
(135, 'content', NULL),
(136, 'content', NULL),
(137, 'content', NULL),
(138, 'content', NULL),
(139, 'content', NULL),
(140, 'content', NULL),
(141, 'content', NULL),
(142, 'content', NULL),
(143, 'content', NULL),
(144, 'content', NULL),
(145, 'content', NULL),
(146, 'content', NULL),
(147, 'content', NULL),
(148, 'content', NULL),
(149, 'content', NULL),
(150, 'content', NULL),
(151, 'content', NULL),
(152, 'content', NULL),
(153, 'content', NULL),
(154, 'content', NULL),
(155, 'content', NULL),
(156, 'content', NULL),
(157, 'content', NULL),
(158, 'content', NULL),
(159, 'content', NULL),
(160, 'content', NULL),
(161, 'content', NULL),
(162, 'content', NULL),
(163, 'content', NULL),
(164, 'content', NULL),
(165, 'content', NULL),
(166, 'content', NULL),
(167, 'content', NULL),
(168, 'content', NULL),
(169, 'content', NULL),
(170, 'content', NULL),
(171, 'content', NULL),
(172, 'content', NULL),
(173, 'content', NULL),
(174, 'content', NULL),
(175, 'content', NULL),
(176, 'content', NULL),
(177, 'content', NULL),
(178, 'content', NULL),
(179, 'content', NULL),
(180, 'content', NULL),
(181, 'content', NULL),
(182, 'content', NULL),
(183, 'content', NULL),
(184, 'content', NULL),
(185, 'content', NULL),
(186, 'content', NULL),
(187, 'content', NULL),
(188, 'content', NULL),
(189, 'content', NULL),
(190, 'content', NULL),
(191, 'content', NULL),
(192, 'content', NULL),
(193, 'content', NULL),
(194, 'content', NULL),
(195, 'content', NULL),
(196, 'content', NULL),
(197, 'content', NULL),
(198, 'content', NULL),
(199, 'content', NULL),
(200, 'content', NULL),
(201, 'content', NULL),
(202, 'content', NULL),
(203, 'content', NULL),
(204, 'content', NULL),
(205, 'content', NULL),
(206, 'content', NULL),
(207, 'content', NULL),
(208, 'content', NULL),
(209, 'content', NULL),
(210, 'content', NULL),
(211, 'content', NULL),
(212, 'content', NULL),
(213, 'content', NULL),
(214, 'content', NULL),
(215, 'content', NULL),
(216, 'content', NULL),
(217, 'content', NULL),
(218, 'content', NULL),
(219, 'content', NULL),
(220, 'content', NULL),
(221, 'content', NULL),
(222, 'content', NULL),
(223, 'content', NULL),
(224, 'content', NULL),
(225, 'content', NULL),
(226, 'content', NULL),
(227, 'content', NULL),
(228, 'content', NULL),
(229, 'content', NULL),
(230, 'content', NULL),
(231, 'content', NULL),
(232, 'content', NULL),
(233, 'content', NULL),
(234, 'content', NULL),
(235, 'content', NULL),
(236, 'content', NULL),
(237, 'content', NULL),
(238, 'content', NULL),
(239, 'content', NULL),
(240, 'content', NULL),
(241, 'content', NULL),
(242, 'content', NULL),
(245, 'content', NULL),
(246, 'content', NULL),
(247, 'content', NULL),
(248, 'content', NULL),
(249, 'content', NULL),
(250, 'content', NULL),
(251, 'content', NULL),
(252, 'content', NULL),
(253, 'content', NULL),
(254, 'content', NULL),
(255, 'content', NULL),
(256, 'content', NULL),
(257, 'content', NULL),
(258, 'content', NULL),
(259, 'content', NULL),
(260, 'content', NULL),
(261, 'content', NULL),
(262, 'content', NULL),
(263, 'content', NULL),
(264, 'content', NULL),
(265, 'content', NULL),
(266, 'content', NULL),
(267, 'content', NULL),
(268, 'content', NULL),
(269, 'content', NULL),
(270, 'content', NULL),
(271, 'content', NULL),
(272, 'content', NULL),
(273, 'content', NULL),
(274, 'content', NULL),
(275, 'content', NULL),
(276, 'content', NULL),
(277, 'content', NULL),
(278, 'content', NULL),
(279, 'content', NULL),
(280, 'content', NULL),
(281, 'content', NULL),
(282, 'content', NULL),
(283, 'content', NULL),
(284, 'content', NULL),
(285, 'content', NULL),
(286, 'content', NULL),
(287, 'content', NULL),
(288, 'content', NULL),
(289, 'clipboard', NULL),
(290, 'content', NULL),
(291, 'content', NULL),
(292, 'content', NULL),
(293, 'content', NULL),
(294, 'content', NULL),
(295, 'content', NULL),
(296, 'content', NULL),
(297, 'content', NULL),
(298, 'content', NULL),
(299, 'content', NULL),
(300, 'content', NULL),
(301, 'content', NULL),
(302, 'content', NULL),
(303, 'content', NULL),
(304, 'content', NULL),
(305, 'content', NULL),
(306, 'content', NULL),
(307, 'content', NULL),
(308, 'content', NULL),
(309, 'content', NULL),
(310, 'content', NULL),
(311, 'content', NULL),
(312, 'content', NULL),
(313, 'content', NULL),
(314, 'content', NULL),
(315, 'content', NULL),
(316, 'content', NULL),
(317, 'content', NULL),
(318, 'content', NULL),
(319, 'content', NULL),
(320, 'content', NULL),
(321, 'content', NULL),
(322, 'content', NULL),
(323, 'content', NULL),
(324, 'content', NULL),
(325, 'content', NULL),
(326, 'content', NULL),
(327, 'content', NULL),
(328, 'content', NULL),
(329, 'content', NULL),
(330, 'content', NULL),
(331, 'content', NULL),
(332, 'content', NULL),
(333, 'content', NULL),
(334, 'content', NULL),
(335, 'content', NULL),
(336, 'content', NULL),
(337, 'content', NULL),
(338, 'content', NULL),
(339, 'content', NULL),
(340, 'content', NULL),
(341, 'content', NULL),
(342, 'content', NULL),
(343, 'content', NULL),
(344, 'content', NULL),
(345, 'content', NULL),
(346, 'content', NULL),
(347, 'content', NULL),
(348, 'content', NULL),
(349, 'content', NULL),
(350, 'content', NULL),
(351, 'content', NULL),
(352, 'content', NULL),
(353, 'content', NULL),
(354, 'content', NULL),
(355, 'content', NULL),
(356, 'content', NULL),
(357, 'content', NULL),
(358, 'content', NULL),
(359, 'content', NULL),
(360, 'content', NULL),
(361, 'content', NULL),
(362, 'content', NULL),
(363, 'content', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_placeholderreference`
--

CREATE TABLE `cms_placeholderreference` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `placeholder_ref_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cms_staticplaceholder`
--

CREATE TABLE `cms_staticplaceholder` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `dirty` tinyint(1) NOT NULL,
  `creation_method` varchar(20) NOT NULL,
  `draft_id` int(11) DEFAULT NULL,
  `public_id` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cms_title`
--

CREATE TABLE `cms_title` (
  `id` int(11) NOT NULL,
  `language` varchar(15) NOT NULL,
  `title` varchar(255) NOT NULL,
  `page_title` varchar(255) DEFAULT NULL,
  `menu_title` varchar(255) DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `has_url_overwrite` tinyint(1) NOT NULL,
  `redirect` varchar(2048) DEFAULT NULL,
  `creation_date` datetime(6) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `publisher_is_draft` tinyint(1) NOT NULL,
  `publisher_state` smallint(6) NOT NULL,
  `page_id` int(11) NOT NULL,
  `publisher_public_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_title`
--

INSERT INTO `cms_title` (`id`, `language`, `title`, `page_title`, `menu_title`, `meta_description`, `slug`, `path`, `has_url_overwrite`, `redirect`, `creation_date`, `published`, `publisher_is_draft`, `publisher_state`, `page_id`, `publisher_public_id`) VALUES
(1, 'en', 'New Mp3 Ringtones Download Free for Mobile Phones', 'Home', 'Home', '', 'home', '', 0, NULL, '2021-06-05 10:26:54.620272', 1, 1, 0, 1, 2),
(2, 'en', 'New Mp3 Ringtones Download Free for Mobile Phones', 'Home', 'Home', '', 'home', '', 0, NULL, '2021-06-05 10:26:54.620272', 1, 0, 0, 2, 1),
(3, 'en', 'About Us', '', '', '', 'about-us', 'about-us', 0, NULL, '2021-06-05 10:38:54.453877', 1, 1, 0, 3, 16),
(4, 'en', 'Contact Us', '', '', '', 'contact-us', 'contact-us', 0, NULL, '2021-06-05 10:39:18.516557', 1, 1, 0, 4, 17),
(16, 'en', 'About Us', '', '', '', 'about-us', 'about-us', 0, NULL, '2021-06-05 10:38:54.453877', 1, 0, 0, 16, 3),
(17, 'en', 'Contact Us', '', '', '', 'contact-us', 'contact-us', 0, NULL, '2021-06-05 10:39:18.516557', 1, 0, 0, 17, 4),
(19, 'en', 'Gujarati Ringtones', 'Gujarati Ringtone Download Mp3 or M4r', '', '', 'gujarati-ringtones', 'gujarati-ringtones', 0, NULL, '2021-06-06 16:37:42.711176', 1, 1, 0, 19, 21),
(21, 'en', 'Gujarati Ringtones', 'Gujarati Ringtone Download Mp3 or M4r', '', '', 'gujarati-ringtones', 'gujarati-ringtones', 0, NULL, '2021-06-06 16:37:42.711176', 1, 0, 0, 21, 19),
(22, 'en', 'Jodi Shyam Ne Radha Ni Ringtone Download', NULL, NULL, NULL, 'jodi-shyam-ne-radha-ni-ringtone-download', 'jodi-shyam-ne-radha-ni-ringtone-download', 0, NULL, '2021-06-06 16:51:43.854761', 1, 1, 0, 22, 23),
(23, 'en', 'Jodi Shyam Ne Radha Ni Ringtone Download', NULL, NULL, NULL, 'jodi-shyam-ne-radha-ni-ringtone-download', 'jodi-shyam-ne-radha-ni-ringtone-download', 0, NULL, '2021-06-06 16:51:43.854761', 1, 0, 0, 23, 22),
(24, 'en', 'Ek Vaar Shyam Tame Radha Ne Kahido Ringtone Download', NULL, NULL, NULL, 'ek-vaar-shyam-tame-radha-ne-kahido-ringtone-download', 'ek-vaar-shyam-tame-radha-ne-kahido-ringtone-download', 0, NULL, '2021-06-06 19:11:05.370929', 1, 1, 0, 24, 25),
(25, 'en', 'Ek Vaar Shyam Tame Radha Ne Kahido Ringtone Download', NULL, NULL, NULL, 'ek-vaar-shyam-tame-radha-ne-kahido-ringtone-download', 'ek-vaar-shyam-tame-radha-ne-kahido-ringtone-download', 0, NULL, '2021-06-06 19:11:05.370929', 1, 0, 0, 25, 24),
(26, 'en', 'Mara Ghat Ma Birajta Shrinathji Ringtone Download', NULL, NULL, NULL, 'mara-ghat-ma-birajta-shrinathji-ringtone-download', 'mara-ghat-ma-birajta-shrinathji-ringtone-download', 0, NULL, '2021-06-06 19:18:20.217172', 1, 1, 0, 26, 27),
(27, 'en', 'Mara Ghat Ma Birajta Shrinathji Ringtone Download', NULL, NULL, NULL, 'mara-ghat-ma-birajta-shrinathji-ringtone-download', 'mara-ghat-ma-birajta-shrinathji-ringtone-download', 0, NULL, '2021-06-06 19:18:20.217172', 1, 0, 0, 27, 26),
(28, 'en', 'Tara Namni Chundadi Odhi Ringtone Download', NULL, NULL, NULL, 'tara-namni-chundadi-odhi-ringtone-download', 'tara-namni-chundadi-odhi-ringtone-download', 0, NULL, '2021-06-06 19:27:59.287940', 1, 1, 0, 28, 29),
(29, 'en', 'Tara Namni Chundadi Odhi Ringtone Download', NULL, NULL, NULL, 'tara-namni-chundadi-odhi-ringtone-download', 'tara-namni-chundadi-odhi-ringtone-download', 0, NULL, '2021-06-06 19:27:59.287940', 1, 0, 0, 29, 28),
(30, 'en', 'Rudi Rite Jivo Ruda Karjo Kam Ringtone Download', NULL, NULL, NULL, 'rudi-rite-jivo-ruda-karjo-kam-ringtone-download', 'rudi-rite-jivo-ruda-karjo-kam-ringtone-download', 0, NULL, '2021-06-06 19:37:00.421111', 1, 1, 0, 30, 31),
(31, 'en', 'Rudi Rite Jivo Ruda Karjo Kam Ringtone Download', NULL, NULL, NULL, 'rudi-rite-jivo-ruda-karjo-kam-ringtone-download', 'rudi-rite-jivo-ruda-karjo-kam-ringtone-download', 0, NULL, '2021-06-06 19:37:00.421111', 1, 0, 0, 31, 30),
(32, 'en', 'Bairu Gayu Piyar Ringtone Download', NULL, NULL, NULL, 'bairu-gayu-piyar-ringtone-download', 'bairu-gayu-piyar-ringtone-download', 0, NULL, '2021-06-06 19:58:00.483690', 1, 1, 0, 32, 36),
(33, 'en', 'Bewafa Sanam Gujarati Ringtone Download', NULL, NULL, NULL, 'bewafa-sanam-gujarati-ringtone-download', 'bewafa-sanam-gujarati-ringtone-download', 0, NULL, '2021-06-06 20:00:37.792626', 1, 1, 0, 33, 37),
(34, 'en', 'Dholida Dhol Re Vagad Ringtone Download', NULL, NULL, NULL, 'dholida-dhol-re-vagad-ringtone-download', 'dholida-dhol-re-vagad-ringtone-download', 0, NULL, '2021-06-06 20:01:39.312350', 1, 1, 0, 34, 38),
(35, 'en', 'Dur Thi Salam Ringtone Download', NULL, NULL, NULL, 'dur-thi-salam-ringtone-download', 'dur-thi-salam-ringtone-download', 0, NULL, '2021-06-06 20:02:48.290721', 1, 1, 0, 35, 39),
(36, 'en', 'Bairu Gayu Piyar Ringtone Download', NULL, NULL, NULL, 'bairu-gayu-piyar-ringtone-download', 'bairu-gayu-piyar-ringtone-download', 0, NULL, '2021-06-06 19:58:00.483690', 1, 0, 0, 36, 32),
(37, 'en', 'Bewafa Sanam Gujarati Ringtone Download', NULL, NULL, NULL, 'bewafa-sanam-gujarati-ringtone-download', 'bewafa-sanam-gujarati-ringtone-download', 0, NULL, '2021-06-06 20:00:37.792626', 1, 0, 0, 37, 33),
(38, 'en', 'Dholida Dhol Re Vagad Ringtone Download', NULL, NULL, NULL, 'dholida-dhol-re-vagad-ringtone-download', 'dholida-dhol-re-vagad-ringtone-download', 0, NULL, '2021-06-06 20:01:39.312350', 1, 0, 0, 38, 34),
(39, 'en', 'Dur Thi Salam Ringtone Download', NULL, NULL, NULL, 'dur-thi-salam-ringtone-download', 'dur-thi-salam-ringtone-download', 0, NULL, '2021-06-06 20:02:48.290721', 1, 0, 0, 39, 35),
(40, 'en', 'Dwarkadhish Ji Aarti Ringtone Download', NULL, NULL, NULL, 'dwarkadhish-ji-aarti-ringtone-download', 'dwarkadhish-ji-aarti-ringtone-download', 0, NULL, '2021-06-06 20:21:53.044543', 1, 1, 0, 40, 44),
(41, 'en', 'Gomda Nu Dil Ringtone download', NULL, NULL, NULL, 'gomda-nu-dil-ringtone-download', 'gomda-nu-dil-ringtone-download', 0, NULL, '2021-06-06 20:24:11.811499', 1, 1, 0, 41, 45),
(42, 'en', 'Mohabbat Khape Ringtone Download', NULL, NULL, NULL, 'mohabbat-khape-ringtone-download', 'mohabbat-khape-ringtone-download', 0, NULL, '2021-06-06 20:30:05.524346', 1, 1, 0, 42, 46),
(43, 'en', 'Leri La La Ringtone Download', NULL, NULL, NULL, 'leri-la-la-ringtone-download', 'leri-la-la-ringtone-download', 0, NULL, '2021-06-06 20:35:30.265114', 1, 1, 0, 43, 47),
(44, 'en', 'Dwarkadhish Ji Aarti Ringtone Download', NULL, NULL, NULL, 'dwarkadhish-ji-aarti-ringtone-download', 'dwarkadhish-ji-aarti-ringtone-download', 0, NULL, '2021-06-06 20:21:53.044543', 1, 0, 0, 44, 40),
(45, 'en', 'Gomda Nu Dil Ringtone download', NULL, NULL, NULL, 'gomda-nu-dil-ringtone-download', 'gomda-nu-dil-ringtone-download', 0, NULL, '2021-06-06 20:24:11.811499', 1, 0, 0, 45, 41),
(46, 'en', 'Mohabbat Khape Ringtone Download', NULL, NULL, NULL, 'mohabbat-khape-ringtone-download', 'mohabbat-khape-ringtone-download', 0, NULL, '2021-06-06 20:30:05.524346', 1, 0, 0, 46, 42),
(47, 'en', 'Leri La La Ringtone Download', NULL, NULL, NULL, 'leri-la-la-ringtone-download', 'leri-la-la-ringtone-download', 0, NULL, '2021-06-06 20:35:30.265114', 1, 0, 0, 47, 43),
(48, 'en', 'Hal Kana Mane Dwarika Dekhad Ringtone Download', NULL, NULL, NULL, 'hal-kana-mane-dwarika-dekhad-ringtone-download', 'hal-kana-mane-dwarika-dekhad-ringtone-download', 0, NULL, '2021-06-07 05:03:28.695482', 1, 1, 0, 48, 49),
(49, 'en', 'Hal Kana Mane Dwarika Dekhad Ringtone Download', NULL, NULL, NULL, 'hal-kana-mane-dwarika-dekhad-ringtone-download', 'hal-kana-mane-dwarika-dekhad-ringtone-download', 0, NULL, '2021-06-07 05:03:28.695482', 1, 0, 0, 49, 48),
(50, 'en', 'Muj Gareeb Ne Bhuli Gayi Ringtone Download', NULL, NULL, NULL, 'muj-gareeb-ne-bhuli-gayi-ringtone-download', 'muj-gareeb-ne-bhuli-gayi-ringtone-download', 0, NULL, '2021-06-07 07:22:58.161044', 1, 1, 0, 50, 51),
(51, 'en', 'Muj Gareeb Ne Bhuli Gayi Ringtone Download', NULL, NULL, NULL, 'muj-gareeb-ne-bhuli-gayi-ringtone-download', 'muj-gareeb-ne-bhuli-gayi-ringtone-download', 0, NULL, '2021-06-07 07:22:58.161044', 1, 0, 0, 51, 50),
(52, 'en', 'Haso To Khara Ringtone Download', NULL, NULL, NULL, 'haso-to-khara-ringtone-download', 'haso-to-khara-ringtone-download', 0, NULL, '2021-06-07 12:48:12.063053', 1, 1, 0, 52, 53),
(53, 'en', 'Haso To Khara Ringtone Download', NULL, NULL, NULL, 'haso-to-khara-ringtone-download', 'haso-to-khara-ringtone-download', 0, NULL, '2021-06-07 12:48:12.063053', 1, 0, 0, 53, 52),
(54, 'en', 'Char Bangdi Wali Audi Ringtone Download', NULL, NULL, NULL, 'char-bangdi-wali-audi-ringtone-download', 'char-bangdi-wali-audi-ringtone-download', 0, NULL, '2021-06-08 09:53:30.276617', 1, 1, 0, 54, 55),
(55, 'en', 'Char Bangdi Wali Audi Ringtone Download', NULL, NULL, NULL, 'char-bangdi-wali-audi-ringtone-download', 'char-bangdi-wali-audi-ringtone-download', 0, NULL, '2021-06-08 09:53:30.276617', 1, 0, 0, 55, 54),
(56, 'en', 'Dholida Dhol Dhimo Navratri Garba Ringtone Download', NULL, NULL, NULL, 'dholida-dhol-dhimo-navratri-garba-ringtone-download', 'dholida-dhol-dhimo-navratri-garba-ringtone-download', 0, NULL, '2021-06-08 14:52:21.755177', 1, 1, 0, 56, 57),
(57, 'en', 'Dholida Dhol Dhimo Navratri Garba Ringtone Download', NULL, NULL, NULL, 'dholida-dhol-dhimo-navratri-garba-ringtone-download', 'dholida-dhol-dhimo-navratri-garba-ringtone-download', 0, NULL, '2021-06-08 14:52:21.755177', 1, 0, 0, 57, 56),
(58, 'en', 'Nayan Ne Bandh Rakhi Ne Ringtone Download', NULL, NULL, NULL, 'nayan-ne-bandh-rakhine-gujarati-ringtone-download', 'nayan-ne-bandh-rakhine-gujarati-ringtone-download', 0, NULL, '2021-06-09 04:48:13.759062', 1, 1, 0, 58, 59),
(59, 'en', 'Nayan Ne Bandh Rakhi Ne Ringtone Download', NULL, NULL, NULL, 'nayan-ne-bandh-rakhine-gujarati-ringtone-download', 'nayan-ne-bandh-rakhine-gujarati-ringtone-download', 0, NULL, '2021-06-09 04:48:13.759062', 1, 0, 0, 59, 58),
(60, 'en', 'Bhuli Nathi Ke Tane Nathi Bhulvani Ringtone Download', NULL, NULL, NULL, 'bhuli-nathi-ke-tane-nathi-bhulvani-ringtone-download', 'bhuli-nathi-ke-tane-nathi-bhulvani-ringtone-download', 0, NULL, '2021-06-09 04:55:28.581902', 1, 1, 0, 60, 62),
(61, 'en', 'Mata Amba Garbo Ringtone Download', NULL, NULL, NULL, 'mata-amba-garbo-ringtone-download', 'mata-amba-garbo-ringtone-download', 0, NULL, '2021-06-09 04:58:38.463422', 1, 1, 0, 61, 63),
(62, 'en', 'Bhuli Nathi Ke Tane Nathi Bhulvani Ringtone Download', NULL, NULL, NULL, 'bhuli-nathi-ke-tane-nathi-bhulvani-ringtone-download', 'bhuli-nathi-ke-tane-nathi-bhulvani-ringtone-download', 0, NULL, '2021-06-09 04:55:28.581902', 1, 0, 0, 62, 60),
(63, 'en', 'Mata Amba Garbo Ringtone Download', NULL, NULL, NULL, 'mata-amba-garbo-ringtone-download', 'mata-amba-garbo-ringtone-download', 0, NULL, '2021-06-09 04:58:38.463422', 1, 0, 0, 63, 61),
(64, 'en', 'Rajasthani Ringtones', 'Rajasthani Ringtones Download Mp3 or M4r', '', '', 'rajasthani-ringtones', 'rajasthani-ringtones', 0, NULL, '2021-06-15 15:10:49.874032', 1, 1, 0, 64, 65),
(65, 'en', 'Rajasthani Ringtones', 'Rajasthani Ringtones Download Mp3 or M4r', '', '', 'rajasthani-ringtones', 'rajasthani-ringtones', 0, NULL, '2021-06-15 15:10:49.874032', 1, 0, 0, 65, 64),
(66, 'en', 'Banni Tharo Chand So Mukhdo Ringtone Download', NULL, NULL, NULL, 'banni-tharo-chand-so-mukhdo-ringtone-download', 'banni-tharo-chand-so-mukhdo-ringtone-download', 0, NULL, '2021-06-15 17:10:54.642557', 1, 1, 0, 66, 68),
(67, 'en', 'Lahariyo Ra 900 Rupiya Rokda Sa Ringtone Download', NULL, NULL, NULL, 'lahariyo-ra-900-rupiya-rokda-sa-ringtone-download', 'lahariyo-ra-900-rupiya-rokda-sa-ringtone-download', 0, NULL, '2021-06-15 17:14:40.999374', 1, 1, 0, 67, 69),
(68, 'en', 'Banni Tharo Chand So Mukhdo Ringtone Download', NULL, NULL, NULL, 'banni-tharo-chand-so-mukhdo-ringtone-download', 'banni-tharo-chand-so-mukhdo-ringtone-download', 0, NULL, '2021-06-15 17:10:54.642557', 1, 0, 0, 68, 66),
(69, 'en', 'Lahariyo Ra 900 Rupiya Rokda Sa Ringtone Download', NULL, NULL, NULL, 'lahariyo-ra-900-rupiya-rokda-sa-ringtone-download', 'lahariyo-ra-900-rupiya-rokda-sa-ringtone-download', 0, NULL, '2021-06-15 17:14:40.999374', 1, 0, 0, 69, 67),
(70, 'en', 'Rajasthani Folk Tune Ringtone Download', NULL, NULL, NULL, 'rajasthani-folk-tune-ringtone-download', 'rajasthani-folk-tune-ringtone-download', 0, NULL, '2021-06-16 03:17:08.610284', 1, 1, 0, 70, 71),
(71, 'en', 'Rajasthani Folk Tune Ringtone Download', NULL, NULL, NULL, 'rajasthani-folk-tune-ringtone-download', 'rajasthani-folk-tune-ringtone-download', 0, NULL, '2021-06-16 03:17:08.610284', 1, 0, 0, 71, 70),
(72, 'en', 'Piya Aao To Mande Ri Baat kar Liya Ringtone Download', NULL, NULL, NULL, 'piya-aao-to-mande-ri-baat-kar-liya-ringtone-download', 'piya-aao-to-mande-ri-baat-kar-liya-ringtone-download', 0, NULL, '2021-06-16 03:30:13.359109', 1, 1, 0, 72, 73),
(73, 'en', 'Piya Aao To Mande Ri Baat kar Liya Ringtone Download', NULL, NULL, NULL, 'piya-aao-to-mande-ri-baat-kar-liya-ringtone-download', 'piya-aao-to-mande-ri-baat-kar-liya-ringtone-download', 0, NULL, '2021-06-16 03:30:13.359109', 1, 0, 0, 73, 72),
(74, 'en', 'Hariyala Banna Rajasthani Ringtone Download', NULL, NULL, NULL, 'hariyala-banna-rajasthani-ringtone-download', 'hariyala-banna-rajasthani-ringtone-download', 0, NULL, '2021-06-16 03:52:50.601374', 1, 1, 0, 74, 75),
(75, 'en', 'Hariyala Banna Rajasthani Ringtone Download', NULL, NULL, NULL, 'hariyala-banna-rajasthani-ringtone-download', 'hariyala-banna-rajasthani-ringtone-download', 0, NULL, '2021-06-16 03:52:50.601374', 1, 0, 0, 75, 74),
(76, 'en', 'Kajaliyo Rajasthani Ringtone Download', NULL, NULL, NULL, 'kajaliyo-rajasthani-ringtone-download', 'kajaliyo-rajasthani-ringtone-download', 0, NULL, '2021-06-18 03:53:50.896836', 1, 1, 0, 76, 77),
(77, 'en', 'Kajaliyo Rajasthani Ringtone Download', NULL, NULL, NULL, 'kajaliyo-rajasthani-ringtone-download', 'kajaliyo-rajasthani-ringtone-download', 0, NULL, '2021-06-18 03:53:50.896836', 1, 0, 0, 77, 76),
(78, 'en', 'Rajasthani flute ringtone download', NULL, NULL, NULL, 'rajasthani-flute-ringtone-download', 'rajasthani-flute-ringtone-download', 0, NULL, '2021-06-18 04:11:13.530454', 1, 1, 0, 78, 79),
(79, 'en', 'Rajasthani flute ringtone download', NULL, NULL, NULL, 'rajasthani-flute-ringtone-download', 'rajasthani-flute-ringtone-download', 0, NULL, '2021-06-18 04:11:13.530454', 1, 0, 0, 79, 78),
(80, 'en', 'iPhone Ringtones', 'iPhone Ringtones Download Mp3 or M4r', '', '', 'iphone-ringtones', 'iphone-ringtones', 0, NULL, '2021-06-19 14:15:45.314024', 1, 1, 0, 80, 81),
(81, 'en', 'iPhone Ringtones', 'iPhone Ringtones Download Mp3 or M4r', '', '', 'iphone-ringtones', 'iphone-ringtones', 0, NULL, '2021-06-19 14:15:45.314024', 1, 0, 0, 81, 80),
(82, 'en', 'iPhone Ringtone Download', NULL, NULL, NULL, 'iphone-ringtone-download', 'iphone-ringtone-download', 0, NULL, '2021-06-19 15:20:02.117871', 1, 1, 0, 82, 83),
(83, 'en', 'iPhone Ringtone Download', NULL, NULL, NULL, 'iphone-ringtone-download', 'iphone-ringtone-download', 0, NULL, '2021-06-19 15:20:02.117871', 1, 0, 0, 83, 82),
(84, 'en', 'iPhone X Ringtone Download', NULL, NULL, NULL, 'iphone-x-ringtone-download', 'iphone-x-ringtone-download', 0, NULL, '2021-06-19 16:29:11.040217', 1, 1, 0, 84, 85),
(85, 'en', 'iPhone X Ringtone Download', NULL, NULL, NULL, 'iphone-x-ringtone-download', 'iphone-x-ringtone-download', 0, NULL, '2021-06-19 16:29:11.040217', 1, 0, 0, 85, 84),
(86, 'en', 'iPhone X Remix Ringtone Download', NULL, NULL, NULL, 'iphone-x-remix-ringtone-download', 'iphone-x-remix-ringtone-download', 0, NULL, '2021-06-19 16:38:24.983441', 1, 1, 0, 86, 87),
(87, 'en', 'iPhone X Remix Ringtone Download', NULL, NULL, NULL, 'iphone-x-remix-ringtone-download', 'iphone-x-remix-ringtone-download', 0, NULL, '2021-06-19 16:38:24.983441', 1, 0, 0, 87, 86),
(88, 'en', 'iPhone Dubstep Ringtone Download', NULL, NULL, NULL, 'iphone-dubstep-ringtone-download', 'iphone-dubstep-ringtone-download', 0, NULL, '2021-06-19 16:56:56.105612', 1, 1, 0, 88, 89),
(89, 'en', 'iPhone Dubstep Ringtone Download', NULL, NULL, NULL, 'iphone-dubstep-ringtone-download', 'iphone-dubstep-ringtone-download', 0, NULL, '2021-06-19 16:56:56.105612', 1, 0, 0, 89, 88),
(90, 'en', 'iPhone X Faded Ringtone Download', NULL, NULL, NULL, 'iphone-x-faded-ringtone-download', 'iphone-x-faded-ringtone-download', 0, NULL, '2021-06-19 17:10:15.394605', 1, 1, 0, 90, 92),
(91, 'en', 'iPhone Remix Lol Ringtone Download', NULL, NULL, NULL, 'iphone-remix-lol-ringtone-download', 'iphone-remix-lol-ringtone-download', 0, NULL, '2021-06-19 17:11:19.721525', 1, 1, 0, 91, 93),
(92, 'en', 'iPhone X Faded Ringtone Download', NULL, NULL, NULL, 'iphone-x-faded-ringtone-download', 'iphone-x-faded-ringtone-download', 0, NULL, '2021-06-19 17:10:15.394605', 1, 0, 0, 92, 90),
(93, 'en', 'iPhone Remix Lol Ringtone Download', NULL, NULL, NULL, 'iphone-remix-lol-ringtone-download', 'iphone-remix-lol-ringtone-download', 0, NULL, '2021-06-19 17:11:19.721525', 1, 0, 0, 93, 91),
(94, 'en', 'iPhone X Taki Taki Ringtone Download', NULL, NULL, NULL, 'iphone-x-taki-taki-ringtone-download', 'iphone-x-taki-taki-ringtone-download', 0, NULL, '2021-06-19 17:15:49.681636', 1, 1, 0, 94, 97),
(95, 'en', 'iPhone X Mi Gente Ringtone Download', NULL, NULL, NULL, 'iphone-x-mi-gente-ringtone-download', 'iphone-x-mi-gente-ringtone-download', 0, NULL, '2021-06-19 17:18:48.924099', 1, 1, 0, 95, 98),
(96, 'en', 'iPhone Trap Remix Ringtone Download', NULL, NULL, NULL, 'iphone-trap-remix-ringtone-download', 'iphone-trap-remix-ringtone-download', 0, NULL, '2021-06-19 17:21:09.435561', 1, 1, 0, 96, 99),
(97, 'en', 'iPhone X Taki Taki Ringtone Download', NULL, NULL, NULL, 'iphone-x-taki-taki-ringtone-download', 'iphone-x-taki-taki-ringtone-download', 0, NULL, '2021-06-19 17:15:49.681636', 1, 0, 0, 97, 94),
(98, 'en', 'iPhone X Mi Gente Ringtone Download', NULL, NULL, NULL, 'iphone-x-mi-gente-ringtone-download', 'iphone-x-mi-gente-ringtone-download', 0, NULL, '2021-06-19 17:18:48.924099', 1, 0, 0, 98, 95),
(99, 'en', 'iPhone Trap Remix Ringtone Download', NULL, NULL, NULL, 'iphone-trap-remix-ringtone-download', 'iphone-trap-remix-ringtone-download', 0, NULL, '2021-06-19 17:21:09.435561', 1, 0, 0, 99, 96),
(100, 'en', 'iPhone X Despacito Ringtone Download', NULL, NULL, NULL, 'iphone-x-despacito-ringtone-download', 'iphone-x-despacito-ringtone-download', 0, NULL, '2021-06-19 17:25:51.758693', 1, 1, 0, 100, 101),
(101, 'en', 'iPhone X Despacito Ringtone Download', NULL, NULL, NULL, 'iphone-x-despacito-ringtone-download', 'iphone-x-despacito-ringtone-download', 0, NULL, '2021-06-19 17:25:51.758693', 1, 0, 0, 101, 100),
(102, 'en', 'iPhone X Shape of You Ringtone Download', NULL, NULL, NULL, 'iphone-x-shape-of-you-ringtone-download', 'iphone-x-shape-of-you-ringtone-download', 0, NULL, '2021-06-19 17:29:06.306584', 1, 1, 0, 102, 103),
(103, 'en', 'iPhone X Shape of You Ringtone Download', NULL, NULL, NULL, 'iphone-x-shape-of-you-ringtone-download', 'iphone-x-shape-of-you-ringtone-download', 0, NULL, '2021-06-19 17:29:06.306584', 1, 0, 0, 103, 102),
(104, 'en', 'iPhone Marimba Ringtone Download', NULL, NULL, NULL, 'iphone-marimba-ringtone-download', 'iphone-marimba-ringtone-download', 0, NULL, '2021-06-19 17:32:19.599161', 1, 1, 0, 104, 106),
(105, 'en', 'iPhone Original Ringtone Download', NULL, NULL, NULL, 'iphone-original-ringtone-download', 'iphone-original-ringtone-download', 0, NULL, '2021-06-19 17:34:52.387060', 1, 1, 0, 105, 107),
(106, 'en', 'iPhone Marimba Ringtone Download', NULL, NULL, NULL, 'iphone-marimba-ringtone-download', 'iphone-marimba-ringtone-download', 0, NULL, '2021-06-19 17:32:19.599161', 1, 0, 0, 106, 104),
(107, 'en', 'iPhone Original Ringtone Download', NULL, NULL, NULL, 'iphone-original-ringtone-download', 'iphone-original-ringtone-download', 0, NULL, '2021-06-19 17:34:52.387060', 1, 0, 0, 107, 105),
(108, 'en', 'Privacy Policy', '', '', '', 'privacy-policy', 'privacy-policy', 0, NULL, '2021-06-20 07:04:56.588841', 1, 1, 0, 108, 109),
(109, 'en', 'Privacy Policy', '', '', '', 'privacy-policy', 'privacy-policy', 0, NULL, '2021-06-20 07:04:56.588841', 1, 0, 0, 109, 108),
(110, 'en', 'Disclaimer', '', '', '', 'disclaimer', 'disclaimer', 0, NULL, '2021-06-20 07:16:00.968150', 1, 1, 0, 110, 111),
(111, 'en', 'Disclaimer', '', '', '', 'disclaimer', 'disclaimer', 0, NULL, '2021-06-20 07:16:00.968150', 1, 0, 0, 111, 110),
(112, 'en', 'Terms & Conditions', '', '', '', 'terms-conditions', 'terms-conditions', 0, NULL, '2021-06-20 07:42:57.248404', 1, 1, 0, 112, 113),
(113, 'en', 'Terms & Conditions', '', '', '', 'terms-conditions', 'terms-conditions', 0, NULL, '2021-06-20 07:42:57.248404', 1, 0, 0, 113, 112),
(114, 'en', 'DMCA', '', '', '', 'dmca', 'dmca', 0, NULL, '2021-06-20 07:55:50.686866', 1, 1, 0, 114, 115),
(115, 'en', 'DMCA', '', '', '', 'dmca', 'dmca', 0, NULL, '2021-06-20 07:55:50.686866', 1, 0, 0, 115, 114),
(116, 'en', 'Thade Rahiyo Rajasthani Ringtone Download', NULL, NULL, NULL, 'thade-rahiyo-rajasthani-ringtone-download', 'thade-rahiyo-rajasthani-ringtone-download', 0, NULL, '2021-06-23 12:37:23.297259', 1, 1, 0, 116, 117),
(117, 'en', 'Thade Rahiyo Rajasthani Ringtone Download', NULL, NULL, NULL, 'thade-rahiyo-rajasthani-ringtone-download', 'thade-rahiyo-rajasthani-ringtone-download', 0, NULL, '2021-06-23 12:37:23.297259', 1, 0, 0, 117, 116),
(118, 'en', 'Krishna Ringtones', 'Krishna Ringtones & Krishna Flute Ringtones Download Mp3 or M4r', '', '', 'krishna-ringtones', 'krishna-ringtones', 0, NULL, '2021-06-26 13:12:11.432294', 1, 1, 0, 118, 119),
(119, 'en', 'Krishna Ringtones', 'Krishna Ringtones & Krishna Flute Ringtones Download Mp3 or M4r', '', '', 'krishna-ringtones', 'krishna-ringtones', 0, NULL, '2021-06-26 13:12:11.432294', 1, 0, 0, 119, 118),
(120, 'en', 'Krishna Flute Ringtone Download', NULL, NULL, NULL, 'krishna-flute-ringtone-download', 'krishna-flute-ringtone-download', 0, NULL, '2021-06-26 14:19:25.963004', 1, 1, 0, 120, 121),
(121, 'en', 'Krishna Flute Ringtone Download', NULL, NULL, NULL, 'krishna-flute-ringtone-download', 'krishna-flute-ringtone-download', 0, NULL, '2021-06-26 14:19:25.963004', 1, 0, 0, 121, 120),
(122, 'en', 'Nice Krishna Flute Ringtone Download', NULL, NULL, NULL, 'nice-krishna-flute-ringtone-download', 'nice-krishna-flute-ringtone-download', 0, NULL, '2021-06-26 14:28:05.820407', 1, 1, 0, 122, 124),
(123, 'en', 'Radha Krishna Flute Serial Ringtone Download', NULL, NULL, NULL, 'radha-krishna-flute-serial-ringtone-download', 'radha-krishna-flute-serial-ringtone-download', 0, NULL, '2021-06-26 14:31:28.155592', 1, 1, 0, 123, 125),
(124, 'en', 'Nice Krishna Flute Ringtone Download', NULL, NULL, NULL, 'nice-krishna-flute-ringtone-download', 'nice-krishna-flute-ringtone-download', 0, NULL, '2021-06-26 14:28:05.820407', 1, 0, 0, 124, 122),
(125, 'en', 'Radha Krishna Flute Serial Ringtone Download', NULL, NULL, NULL, 'radha-krishna-flute-serial-ringtone-download', 'radha-krishna-flute-serial-ringtone-download', 0, NULL, '2021-06-26 14:31:28.155592', 1, 0, 0, 125, 123),
(126, 'en', 'Shri Krishna Govind Hare Murari Ringtone Download', NULL, NULL, NULL, 'shri-krishna-govind-hare-murari-ringtone-download', 'shri-krishna-govind-hare-murari-ringtone-download', 0, NULL, '2021-06-26 14:51:43.228366', 1, 1, 0, 126, 138),
(127, 'en', 'Hare Rama Hare Krishna Ringtone Download', NULL, NULL, NULL, 'hare-rama-hare-krishna-ringtone-download', 'hare-rama-hare-krishna-ringtone-download', 0, NULL, '2021-06-26 14:54:51.872122', 1, 1, 0, 127, 139),
(128, 'en', 'Mahabharat Krishna Flute Ringtone Download', NULL, NULL, NULL, 'mahabharat-krishna-flute-ringtone-download', 'mahabharat-krishna-flute-ringtone-download', 0, NULL, '2021-06-26 14:57:18.461923', 1, 1, 0, 128, 141),
(129, 'en', 'Kaun Kehate Hai Ringtone Download', NULL, NULL, NULL, 'kaun-kehate-hai-ringtone-download', 'kaun-kehate-hai-ringtone-download', 0, NULL, '2021-06-26 14:59:34.734465', 1, 1, 0, 129, 142),
(130, 'en', 'Meethi Meethi Mere Sanware Ki Banshi Baaje Ringtone Download', NULL, NULL, NULL, 'meethi-meethi-mere-sanware-ki-banshi-baaje-ringtone-download', 'meethi-meethi-mere-sanware-ki-banshi-baaje-ringtone-download', 0, NULL, '2021-06-26 15:03:16.162508', 1, 1, 0, 130, 143),
(131, 'en', 'Radha Kaise Na Jale Ringtone Download', NULL, NULL, NULL, 'radha-kaise-na-jale-ringtone-download', 'radha-kaise-na-jale-ringtone-download', 0, NULL, '2021-06-26 15:06:45.975473', 1, 1, 0, 131, 144),
(132, 'en', 'Hey Gopal Krishna Karu Aarti Teri Ringtone Download', NULL, NULL, NULL, 'hey-gopal-krishna-karu-aarti-teri-ringtone-download', 'hey-gopal-krishna-karu-aarti-teri-ringtone-download', 0, NULL, '2021-06-26 15:10:00.408935', 1, 1, 0, 132, 145),
(133, 'en', 'O Kanha Ab to Murli Ringtone Download', NULL, NULL, NULL, 'o-kanha-ab-to-murli-ringtone-download', 'o-kanha-ab-to-murli-ringtone-download', 0, NULL, '2021-06-26 15:14:54.747074', 1, 1, 0, 133, 146),
(134, 'en', 'Radha Rani Laage Krishna Ringtone Download', NULL, NULL, NULL, 'radha-rani-laage-krishna-ringtone-download', 'radha-rani-laage-krishna-ringtone-download', 0, NULL, '2021-06-26 15:17:30.251322', 1, 1, 0, 134, 147),
(135, 'en', 'Raghupati Raghava Krishna Ringtone Download', NULL, NULL, NULL, 'raghupati-raghava-krishna-ringtone-download', 'raghupati-raghava-krishna-ringtone-download', 0, NULL, '2021-06-26 15:21:08.127526', 1, 1, 0, 135, 148),
(136, 'en', 'Sanwali Surat Pe Dil Mohan Ringtone Download', NULL, NULL, NULL, 'sanwali-surat-pe-dil-mohan-ringtone-download', 'sanwali-surat-pe-dil-mohan-ringtone-download', 0, NULL, '2021-06-26 15:25:21.729272', 1, 1, 0, 136, 149),
(137, 'en', 'Radhe Radhe Barsane Wali Radhe Krishna Ringtone Download', NULL, NULL, NULL, 'radhe-radhe-barsane-wali-radhe-krishna-ringtone-download', 'radhe-radhe-barsane-wali-radhe-krishna-ringtone-download', 0, NULL, '2021-06-26 15:28:30.653976', 1, 1, 0, 137, 140),
(138, 'en', 'Shri Krishna Govind Hare Murari Ringtone Download', NULL, NULL, NULL, 'shri-krishna-govind-hare-murari-ringtone-download', 'shri-krishna-govind-hare-murari-ringtone-download', 0, NULL, '2021-06-26 14:51:43.228366', 1, 0, 0, 138, 126),
(139, 'en', 'Hare Rama Hare Krishna Ringtone Download', NULL, NULL, NULL, 'hare-rama-hare-krishna-ringtone-download', 'hare-rama-hare-krishna-ringtone-download', 0, NULL, '2021-06-26 14:54:51.872122', 1, 0, 0, 139, 127),
(140, 'en', 'Radhe Radhe Barsane Wali Radhe Krishna Ringtone Download', NULL, NULL, NULL, 'radhe-radhe-barsane-wali-radhe-krishna-ringtone-download', 'radhe-radhe-barsane-wali-radhe-krishna-ringtone-download', 0, NULL, '2021-06-26 15:28:30.653976', 1, 0, 0, 140, 137),
(141, 'en', 'Mahabharat Krishna Flute Ringtone Download', NULL, NULL, NULL, 'mahabharat-krishna-flute-ringtone-download', 'mahabharat-krishna-flute-ringtone-download', 0, NULL, '2021-06-26 14:57:18.461923', 1, 0, 0, 141, 128),
(142, 'en', 'Kaun Kehate Hai Ringtone Download', NULL, NULL, NULL, 'kaun-kehate-hai-ringtone-download', 'kaun-kehate-hai-ringtone-download', 0, NULL, '2021-06-26 14:59:34.734465', 1, 0, 0, 142, 129),
(143, 'en', 'Meethi Meethi Mere Sanware Ki Banshi Baaje Ringtone Download', NULL, NULL, NULL, 'meethi-meethi-mere-sanware-ki-banshi-baaje-ringtone-download', 'meethi-meethi-mere-sanware-ki-banshi-baaje-ringtone-download', 0, NULL, '2021-06-26 15:03:16.162508', 1, 0, 0, 143, 130),
(144, 'en', 'Radha Kaise Na Jale Ringtone Download', NULL, NULL, NULL, 'radha-kaise-na-jale-ringtone-download', 'radha-kaise-na-jale-ringtone-download', 0, NULL, '2021-06-26 15:06:45.975473', 1, 0, 0, 144, 131),
(145, 'en', 'Hey Gopal Krishna Karu Aarti Teri Ringtone Download', NULL, NULL, NULL, 'hey-gopal-krishna-karu-aarti-teri-ringtone-download', 'hey-gopal-krishna-karu-aarti-teri-ringtone-download', 0, NULL, '2021-06-26 15:10:00.408935', 1, 0, 0, 145, 132),
(146, 'en', 'O Kanha Ab to Murli Ringtone Download', NULL, NULL, NULL, 'o-kanha-ab-to-murli-ringtone-download', 'o-kanha-ab-to-murli-ringtone-download', 0, NULL, '2021-06-26 15:14:54.747074', 1, 0, 0, 146, 133),
(147, 'en', 'Radha Rani Laage Krishna Ringtone Download', NULL, NULL, NULL, 'radha-rani-laage-krishna-ringtone-download', 'radha-rani-laage-krishna-ringtone-download', 0, NULL, '2021-06-26 15:17:30.251322', 1, 0, 0, 147, 134),
(148, 'en', 'Raghupati Raghava Krishna Ringtone Download', NULL, NULL, NULL, 'raghupati-raghava-krishna-ringtone-download', 'raghupati-raghava-krishna-ringtone-download', 0, NULL, '2021-06-26 15:21:08.127526', 1, 0, 0, 148, 135),
(149, 'en', 'Sanwali Surat Pe Dil Mohan Ringtone Download', NULL, NULL, NULL, 'sanwali-surat-pe-dil-mohan-ringtone-download', 'sanwali-surat-pe-dil-mohan-ringtone-download', 0, NULL, '2021-06-26 15:25:21.729272', 1, 0, 0, 149, 136),
(150, 'en', 'Telugu Ringtones', 'Telugu Ringtones Download Mp3 or M4r Ringtones', '', '', 'telugu-ringtones', 'telugu-ringtones', 0, NULL, '2021-07-16 12:04:27.924740', 1, 1, 0, 150, 151),
(151, 'en', 'Telugu Ringtones', 'Telugu Ringtones Download Mp3 or M4r Ringtones', '', '', 'telugu-ringtones', 'telugu-ringtones', 0, NULL, '2021-07-16 12:04:27.924740', 1, 0, 0, 151, 150),
(152, 'en', 'Saranga Dariya Telugu Ringtone Download', NULL, NULL, NULL, 'saranga-dariya-telugu-ringtone-download', 'saranga-dariya-telugu-ringtone-download', 0, NULL, '2021-07-16 12:55:17.939588', 1, 1, 0, 152, 153),
(153, 'en', 'Saranga Dariya Telugu Ringtone Download', NULL, NULL, NULL, 'saranga-dariya-telugu-ringtone-download', 'saranga-dariya-telugu-ringtone-download', 0, NULL, '2021-07-16 12:55:17.939588', 1, 0, 0, 153, 152),
(154, 'en', 'Naa Bc Center Lu Telugu Ringtone Download', NULL, NULL, NULL, 'naa-bc-center-lu-telugu-ringtone-download', 'naa-bc-center-lu-telugu-ringtone-download', 0, NULL, '2021-07-16 13:24:25.631740', 1, 1, 0, 154, 155),
(155, 'en', 'Naa Bc Center Lu Telugu Ringtone Download', NULL, NULL, NULL, 'naa-bc-center-lu-telugu-ringtone-download', 'naa-bc-center-lu-telugu-ringtone-download', 0, NULL, '2021-07-16 13:24:25.631740', 1, 0, 0, 155, 154),
(156, 'en', 'O Sakkanoda Telugu Ringtone Download', NULL, NULL, NULL, 'o-sakkanoda-telugu-ringtone-download', 'o-sakkanoda-telugu-ringtone-download', 0, NULL, '2021-07-16 13:36:19.389606', 1, 1, 0, 156, 157),
(157, 'en', 'O Sakkanoda Telugu Ringtone Download', NULL, NULL, NULL, 'o-sakkanoda-telugu-ringtone-download', 'o-sakkanoda-telugu-ringtone-download', 0, NULL, '2021-07-16 13:36:19.389606', 1, 0, 0, 157, 156),
(158, 'en', 'Kanaka Durga Telugu Ringtone Download', NULL, NULL, NULL, 'kanaka-durga-telugu-ringtone-download', 'kanaka-durga-telugu-ringtone-download', 0, NULL, '2021-07-16 13:42:34.756020', 1, 1, 0, 158, 159),
(159, 'en', 'Kanaka Durga Telugu Ringtone Download', NULL, NULL, NULL, 'kanaka-durga-telugu-ringtone-download', 'kanaka-durga-telugu-ringtone-download', 0, NULL, '2021-07-16 13:42:34.756020', 1, 0, 0, 159, 158),
(160, 'en', 'Ey Pataakey Telugu Ringtone Download', NULL, NULL, NULL, 'ey-pataakey-telugu-ringtone-download', 'ey-pataakey-telugu-ringtone-download', 0, NULL, '2021-07-16 13:47:36.169591', 1, 1, 0, 160, 161),
(161, 'en', 'Ey Pataakey Telugu Ringtone Download', NULL, NULL, NULL, 'ey-pataakey-telugu-ringtone-download', 'ey-pataakey-telugu-ringtone-download', 0, NULL, '2021-07-16 13:47:36.169591', 1, 0, 0, 161, 160),
(162, 'en', 'Nee Vente Nenunte Instrumental Telugu Ringtone Download', NULL, NULL, NULL, 'nee-vente-nenunte-instrumental-telugu-ringtone-download', 'nee-vente-nenunte-instrumental-telugu-ringtone-download', 0, NULL, '2021-07-17 10:46:59.411754', 1, 1, 0, 162, 167),
(163, 'en', 'Paata Paadada Mounam Telugu Ringtone Download', NULL, NULL, NULL, 'paata-paadada-mounam-telugu-ringtone-download', 'paata-paadada-mounam-telugu-ringtone-download', 0, NULL, '2021-07-17 10:49:57.987365', 1, 1, 0, 163, 168),
(164, 'en', 'Avunanna Nuv Telugu Ringtone Download', NULL, NULL, NULL, 'avunanna-nuv-telugu-ringtone-download', 'avunanna-nuv-telugu-ringtone-download', 0, NULL, '2021-07-17 10:51:17.134441', 1, 1, 0, 164, 169),
(165, 'en', 'Tholi Prema Love Dailouge Telugu Ringtone Download', NULL, NULL, NULL, 'tholi-prema-love-dailouge-telugu-ringtone-download', 'tholi-prema-love-dailouge-telugu-ringtone-download', 0, NULL, '2021-07-17 10:54:59.465344', 1, 1, 0, 165, 171),
(166, 'en', 'Swagatham Krishna Telugu Ringtone Download', NULL, NULL, NULL, 'swagatham-krishna-telugu-ringtone-download', 'swagatham-krishna-telugu-ringtone-download', 0, NULL, '2021-07-17 10:56:41.780122', 1, 1, 0, 166, 170),
(167, 'en', 'Nee Vente Nenunte Instrumental Telugu Ringtone Download', NULL, NULL, NULL, 'nee-vente-nenunte-instrumental-telugu-ringtone-download', 'nee-vente-nenunte-instrumental-telugu-ringtone-download', 0, NULL, '2021-07-17 10:46:59.411754', 1, 0, 0, 167, 162),
(168, 'en', 'Paata Paadada Mounam Telugu Ringtone Download', NULL, NULL, NULL, 'paata-paadada-mounam-telugu-ringtone-download', 'paata-paadada-mounam-telugu-ringtone-download', 0, NULL, '2021-07-17 10:49:57.987365', 1, 0, 0, 168, 163),
(169, 'en', 'Avunanna Nuv Telugu Ringtone Download', NULL, NULL, NULL, 'avunanna-nuv-telugu-ringtone-download', 'avunanna-nuv-telugu-ringtone-download', 0, NULL, '2021-07-17 10:51:17.134441', 1, 0, 0, 169, 164),
(170, 'en', 'Swagatham Krishna Telugu Ringtone Download', NULL, NULL, NULL, 'swagatham-krishna-telugu-ringtone-download', 'swagatham-krishna-telugu-ringtone-download', 0, NULL, '2021-07-17 10:56:41.780122', 1, 0, 0, 170, 166),
(171, 'en', 'Tholi Prema Love Dailouge Telugu Ringtone Download', NULL, NULL, NULL, 'tholi-prema-love-dailouge-telugu-ringtone-download', 'tholi-prema-love-dailouge-telugu-ringtone-download', 0, NULL, '2021-07-17 10:54:59.465344', 1, 0, 0, 171, 165),
(172, 'en', 'Tamil Ringtones', 'Tamil Ringtones Download Mp3 or M4r', '', '', 'tamil-ringtones', 'tamil-ringtones', 0, NULL, '2021-08-03 12:41:33.827397', 1, 1, 0, 172, 173),
(173, 'en', 'Tamil Ringtones', 'Tamil Ringtones Download Mp3 or M4r', '', '', 'tamil-ringtones', 'tamil-ringtones', 0, NULL, '2021-08-03 12:41:33.827397', 1, 0, 0, 173, 172),
(174, 'en', 'Mustafa Mustafa Tamil Ringtone', NULL, NULL, NULL, 'mustafa-mustafa-tamil-ringtone', 'mustafa-mustafa-tamil-ringtone', 0, NULL, '2021-08-03 13:19:05.367148', 1, 1, 0, 174, 175),
(175, 'en', 'Mustafa Mustafa Tamil Ringtone', NULL, NULL, NULL, 'mustafa-mustafa-tamil-ringtone', 'mustafa-mustafa-tamil-ringtone', 0, NULL, '2021-08-03 13:19:05.367148', 1, 0, 0, 175, 174),
(176, 'en', 'Tamil Song Ringtone Download', NULL, NULL, NULL, 'tamil-song-ringtone-download', 'tamil-song-ringtone-download', 0, NULL, '2021-08-04 05:35:09.462264', 1, 1, 0, 176, 178),
(177, 'en', 'Bigil Rayappan Bgm Ringtone Download', NULL, NULL, NULL, 'bigil-rayappan-bgm-ringtone-download', 'bigil-rayappan-bgm-ringtone-download', 0, NULL, '2021-08-04 05:37:33.818534', 1, 1, 0, 177, 179),
(178, 'en', 'Tamil Song Ringtone Download', NULL, NULL, NULL, 'tamil-song-ringtone-download', 'tamil-song-ringtone-download', 0, NULL, '2021-08-04 05:35:09.462264', 1, 0, 0, 178, 176),
(179, 'en', 'Bigil Rayappan Bgm Ringtone Download', NULL, NULL, NULL, 'bigil-rayappan-bgm-ringtone-download', 'bigil-rayappan-bgm-ringtone-download', 0, NULL, '2021-08-04 05:37:33.818534', 1, 0, 0, 179, 177),
(180, 'en', 'KGF Tamil Ringtone Download', NULL, NULL, NULL, 'kgf-tamil-ringtone-download', 'kgf-tamil-ringtone-download', 0, NULL, '2021-08-04 05:45:52.995310', 1, 1, 0, 180, 183),
(181, 'en', 'Unna Nenachu Nenachu Urugi Poneaan Psycho Ringtone Download', NULL, NULL, NULL, 'unna-nenachu-nenachu-urugi-poneaan-psycho-ringtone-download', 'unna-nenachu-nenachu-urugi-poneaan-psycho-ringtone-download', 0, NULL, '2021-08-04 05:48:25.598120', 1, 1, 0, 181, 184),
(182, 'en', 'Unakena Uruginen Tamil Ringtone Download', NULL, NULL, NULL, 'unakena-uruginen-tamil-ringtone-download', 'unakena-uruginen-tamil-ringtone-download', 0, NULL, '2021-08-04 05:52:08.194051', 1, 1, 0, 182, 185),
(183, 'en', 'KGF Tamil Ringtone Download', NULL, NULL, NULL, 'kgf-tamil-ringtone-download', 'kgf-tamil-ringtone-download', 0, NULL, '2021-08-04 05:45:52.995310', 1, 0, 0, 183, 180),
(184, 'en', 'Unna Nenachu Nenachu Urugi Poneaan Psycho Ringtone Download', NULL, NULL, NULL, 'unna-nenachu-nenachu-urugi-poneaan-psycho-ringtone-download', 'unna-nenachu-nenachu-urugi-poneaan-psycho-ringtone-download', 0, NULL, '2021-08-04 05:48:25.598120', 1, 0, 0, 184, 181),
(185, 'en', 'Unakena Uruginen Tamil Ringtone Download', NULL, NULL, NULL, 'unakena-uruginen-tamil-ringtone-download', 'unakena-uruginen-tamil-ringtone-download', 0, NULL, '2021-08-04 05:52:08.194051', 1, 0, 0, 185, 182),
(186, 'en', 'Darbar Thalaivar Bgm Theme Ringtone Download', NULL, NULL, NULL, 'darbar-thalaivar-bgm-theme-ringtone-download', 'darbar-thalaivar-bgm-theme-ringtone-download', 0, NULL, '2021-08-05 10:35:57.350552', 1, 1, 0, 186, 189),
(187, 'en', 'Vishwaroopam Humming Ringtone Download', NULL, NULL, NULL, 'vishwaroopam-humming-ringtone-download', 'vishwaroopam-humming-ringtone-download', 0, NULL, '2021-08-05 10:47:27.116678', 1, 1, 0, 187, 190),
(188, 'en', 'Hey Single Pasanga Natpe Thunai Tamil Ringtone Download', NULL, NULL, NULL, 'hey-single-pasanga-natpe-thunai-tamil-ringtone-download', 'hey-single-pasanga-natpe-thunai-tamil-ringtone-download', 0, NULL, '2021-08-05 10:50:59.749538', 1, 1, 0, 188, 191),
(189, 'en', 'Darbar Thalaivar Bgm Theme Ringtone Download', NULL, NULL, NULL, 'darbar-thalaivar-bgm-theme-ringtone-download', 'darbar-thalaivar-bgm-theme-ringtone-download', 0, NULL, '2021-08-05 10:35:57.350552', 1, 0, 0, 189, 186),
(190, 'en', 'Vishwaroopam Humming Ringtone Download', NULL, NULL, NULL, 'vishwaroopam-humming-ringtone-download', 'vishwaroopam-humming-ringtone-download', 0, NULL, '2021-08-05 10:47:27.116678', 1, 0, 0, 190, 187),
(191, 'en', 'Hey Single Pasanga Natpe Thunai Tamil Ringtone Download', NULL, NULL, NULL, 'hey-single-pasanga-natpe-thunai-tamil-ringtone-download', 'hey-single-pasanga-natpe-thunai-tamil-ringtone-download', 0, NULL, '2021-08-05 10:50:59.749538', 1, 0, 0, 191, 188),
(192, 'en', 'Gayatri Mantra Ringtone Download', NULL, NULL, NULL, 'gayatri-mantra-ringtone-download', 'gayatri-mantra-ringtone-download', 0, NULL, '2021-08-20 12:17:22.728234', 1, 1, 0, 192, 193),
(193, 'en', 'Gayatri Mantra Ringtone Download', NULL, NULL, NULL, 'gayatri-mantra-ringtone-download', 'gayatri-mantra-ringtone-download', 0, NULL, '2021-08-20 12:17:22.728234', 1, 0, 0, 193, 192),
(194, 'en', 'Unna Chota Unnana ringtone download', NULL, NULL, NULL, 'unna-chota-unnana-ringtone-download', 'unna-chota-unnana-ringtone-download', 0, NULL, '2021-08-20 12:23:28.235572', 1, 1, 0, 194, 195),
(195, 'en', 'Unna Chota Unnana ringtone download', NULL, NULL, NULL, 'unna-chota-unnana-ringtone-download', 'unna-chota-unnana-ringtone-download', 0, NULL, '2021-08-20 12:23:28.235572', 1, 0, 0, 195, 194),
(196, 'en', 'Punjabi Ringtones', 'Punjabi Ringtones Download Mp3 or M4r', '', '', 'punjabi-ringtones', 'punjabi-ringtones', 0, NULL, '2021-08-27 11:06:03.134307', 1, 1, 0, 196, 197),
(197, 'en', 'Punjabi Ringtones', 'Punjabi Ringtones Download Mp3 or M4r', '', '', 'punjabi-ringtones', 'punjabi-ringtones', 0, NULL, '2021-08-27 11:06:03.134307', 1, 0, 0, 197, 196),
(198, 'en', 'Waalian Punjabi Ringtone Download', NULL, NULL, NULL, 'waalian-punjabi-ringtone-download', 'waalian-punjabi-ringtone-download', 0, NULL, '2021-08-27 11:47:28.323789', 1, 1, 0, 198, 199),
(199, 'en', 'Waalian Punjabi Ringtone Download', NULL, NULL, NULL, 'waalian-punjabi-ringtone-download', 'waalian-punjabi-ringtone-download', 0, NULL, '2021-08-27 11:47:28.323789', 1, 0, 0, 199, 198),
(200, 'en', 'Relation by Nikk Ringtone Download', NULL, NULL, NULL, 'relation-by-nikk-ringtone-download', 'relation-by-nikk-ringtone-download', 0, NULL, '2021-08-27 11:56:48.272673', 1, 1, 0, 200, 203),
(201, 'en', 'Bapu Tere Karke Ringtone Download', NULL, NULL, NULL, 'bapu-tere-karke-ringtone-download', 'bapu-tere-karke-ringtone-download', 0, NULL, '2021-08-27 11:58:29.352228', 1, 1, 0, 201, 204),
(202, 'en', 'One Life Ringtone Download', NULL, NULL, NULL, 'one-life-ringtone-download', 'one-life-ringtone-download', 0, NULL, '2021-08-27 12:00:50.324066', 1, 1, 0, 202, 205),
(203, 'en', 'Relation by Nikk Ringtone Download', NULL, NULL, NULL, 'relation-by-nikk-ringtone-download', 'relation-by-nikk-ringtone-download', 0, NULL, '2021-08-27 11:56:48.272673', 1, 0, 0, 203, 200),
(204, 'en', 'Bapu Tere Karke Ringtone Download', NULL, NULL, NULL, 'bapu-tere-karke-ringtone-download', 'bapu-tere-karke-ringtone-download', 0, NULL, '2021-08-27 11:58:29.352228', 1, 0, 0, 204, 201),
(205, 'en', 'One Life Ringtone Download', NULL, NULL, NULL, 'one-life-ringtone-download', 'one-life-ringtone-download', 0, NULL, '2021-08-27 12:00:50.324066', 1, 0, 0, 205, 202),
(206, 'en', 'Kala Rang by Kaka Ringtone Download', NULL, NULL, NULL, 'kala-rang-by-kaka-ringtone-download', 'kala-rang-by-kaka-ringtone-download', 0, NULL, '2021-08-27 12:10:03.029202', 1, 1, 0, 206, 209),
(207, 'en', 'Keh Len De Ringtone Dwonload', NULL, NULL, NULL, 'keh-len-de-ringtone-dwonload', 'keh-len-de-ringtone-dwonload', 0, NULL, '2021-08-27 12:11:19.334278', 1, 1, 0, 207, 210),
(208, 'en', 'Parche Ringtone Download', NULL, NULL, NULL, 'parche-ringtone-download', 'parche-ringtone-download', 0, NULL, '2021-08-27 12:12:45.153345', 1, 1, 0, 208, 211),
(209, 'en', 'Kala Rang by Kaka Ringtone Download', NULL, NULL, NULL, 'kala-rang-by-kaka-ringtone-download', 'kala-rang-by-kaka-ringtone-download', 0, NULL, '2021-08-27 12:10:03.029202', 1, 0, 0, 209, 206),
(210, 'en', 'Keh Len De Ringtone Dwonload', NULL, NULL, NULL, 'keh-len-de-ringtone-dwonload', 'keh-len-de-ringtone-dwonload', 0, NULL, '2021-08-27 12:11:19.334278', 1, 0, 0, 210, 207),
(211, 'en', 'Parche Ringtone Download', NULL, NULL, NULL, 'parche-ringtone-download', 'parche-ringtone-download', 0, NULL, '2021-08-27 12:12:45.153345', 1, 0, 0, 211, 208),
(212, 'en', 'Jee Nai Skda Ringtone Download', NULL, NULL, NULL, 'jee-nai-skda-ringtone-download', 'jee-nai-skda-ringtone-download', 0, NULL, '2021-08-27 12:15:20.197356', 1, 1, 0, 212, 213),
(213, 'en', 'Jee Nai Skda Ringtone Download', NULL, NULL, NULL, 'jee-nai-skda-ringtone-download', 'jee-nai-skda-ringtone-download', 0, NULL, '2021-08-27 12:15:20.197356', 1, 0, 0, 213, 212),
(214, 'en', 'Love You Punjabi Ringtone Download Amar Sehmbi', NULL, NULL, NULL, 'love-you-punjabi-ringtone-download-amar-sehmbi', 'love-you-punjabi-ringtone-download-amar-sehmbi', 0, NULL, '2021-09-13 12:22:03.166635', 1, 1, 0, 214, 215),
(215, 'en', 'Love You Punjabi Ringtone Download Amar Sehmbi', NULL, NULL, NULL, 'love-you-punjabi-ringtone-download-amar-sehmbi', 'love-you-punjabi-ringtone-download-amar-sehmbi', 0, NULL, '2021-09-13 12:22:03.166635', 1, 0, 0, 215, 214),
(216, 'en', 'Hindi Ringtones', 'Download Hindi Ringtones & Latest Ringtones Download Mp3 or M4r', '', '', 'hindi-ringtones', 'hindi-ringtones', 0, NULL, '2021-09-25 07:28:29.128868', 1, 1, 0, 216, 217),
(217, 'en', 'Hindi Ringtones', 'Download Hindi Ringtones & Latest Ringtones Download Mp3 or M4r', '', '', 'hindi-ringtones', 'hindi-ringtones', 0, NULL, '2021-09-25 07:28:29.128868', 1, 0, 0, 217, 216),
(218, 'en', 'Raataan Lambiyan Ringtone Download Mp3', '', '', '', 'raataan-lambiyan-ringtone-download', 'raataan-lambiyan-ringtone-download', 0, NULL, '2021-09-25 07:49:43.926534', 1, 1, 0, 218, 219),
(219, 'en', 'Raataan Lambiyan Ringtone Download Mp3', '', '', '', 'raataan-lambiyan-ringtone-download', 'raataan-lambiyan-ringtone-download', 0, NULL, '2021-09-25 07:49:43.926534', 1, 0, 0, 219, 218),
(220, 'en', 'Dil Ko Karar Aya Ringtone Download', NULL, NULL, NULL, 'dil-ko-karar-aya-ringtone-download', 'dil-ko-karar-aya-ringtone-download', 0, NULL, '2021-09-25 08:01:11.439231', 1, 1, 0, 220, 221),
(221, 'en', 'Dil Ko Karar Aya Ringtone Download', NULL, NULL, NULL, 'dil-ko-karar-aya-ringtone-download', 'dil-ko-karar-aya-ringtone-download', 0, NULL, '2021-09-25 08:01:11.439231', 1, 0, 0, 221, 220),
(222, 'en', 'Jab Main Badal Ban Jau Tum Bhi Barish Ban Jana Ringtone Download', '', '', '', 'jab-main-badal-ban-jau-tum-bhi-barish-ban-jana-ringtone-download', 'jab-main-badal-ban-jau-tum-bhi-barish-ban-jana-ringtone-download', 0, NULL, '2021-09-25 15:06:55.605928', 1, 1, 0, 222, 224),
(223, 'en', 'Tu Bhi Satya Jayega Ringtone', NULL, NULL, NULL, 'tu-bhi-satya-jayega-ringtone', 'tu-bhi-satya-jayega-ringtone', 0, NULL, '2021-09-25 15:09:17.160504', 1, 1, 0, 223, 225),
(224, 'en', 'Jab Main Badal Ban Jau Tum Bhi Barish Ban Jana Ringtone Download', '', '', '', 'jab-main-badal-ban-jau-tum-bhi-barish-ban-jana-ringtone-download', 'jab-main-badal-ban-jau-tum-bhi-barish-ban-jana-ringtone-download', 0, NULL, '2021-09-25 15:06:55.605928', 1, 0, 0, 224, 222),
(225, 'en', 'Tu Bhi Satya Jayega Ringtone', NULL, NULL, NULL, 'tu-bhi-satya-jayega-ringtone', 'tu-bhi-satya-jayega-ringtone', 0, NULL, '2021-09-25 15:09:17.160504', 1, 0, 0, 225, 223),
(226, 'en', 'Wafa Na Raas Aayi Ringtone Download', NULL, NULL, NULL, 'wafa-na-raas-aayi-ringtone-download', 'wafa-na-raas-aayi-ringtone-download', 0, NULL, '2021-10-02 04:28:53.736060', 1, 1, 0, 226, 227),
(227, 'en', 'Wafa Na Raas Aayi Ringtone Download', NULL, NULL, NULL, 'wafa-na-raas-aayi-ringtone-download', 'wafa-na-raas-aayi-ringtone-download', 0, NULL, '2021-10-02 04:28:53.736060', 1, 0, 0, 227, 226),
(228, 'en', 'Rim Jhim Ringtone Download', NULL, NULL, NULL, 'rim-jhim-ringtone-download', 'rim-jhim-ringtone-download', 0, NULL, '2021-10-02 04:42:46.240772', 1, 1, 0, 228, 229),
(229, 'en', 'Rim Jhim Ringtone Download', NULL, NULL, NULL, 'rim-jhim-ringtone-download', 'rim-jhim-ringtone-download', 0, NULL, '2021-10-02 04:42:46.240772', 1, 0, 0, 229, 228),
(230, 'en', 'Bepanah Ishq Ringtone Download', NULL, NULL, NULL, 'bepanah-ishq-ringtone-download', 'bepanah-ishq-ringtone-download', 0, NULL, '2021-10-02 05:15:24.481597', 1, 1, 0, 230, 231),
(231, 'en', 'Bepanah Ishq Ringtone Download', NULL, NULL, NULL, 'bepanah-ishq-ringtone-download', 'bepanah-ishq-ringtone-download', 0, NULL, '2021-10-02 05:15:24.481597', 1, 0, 0, 231, 230),
(232, 'en', 'Mere Paas Ek Dil Tha Wo Bhi Tumne Chura Liya Ringtone Download', NULL, NULL, NULL, 'mere-paas-ek-dil-tha-wo-bhi-tumne-chura-liya-ringtone-download', 'mere-paas-ek-dil-tha-wo-bhi-tumne-chura-liya-ringtone-download', 0, NULL, '2021-10-10 11:43:00.355539', 1, 1, 0, 232, 233),
(233, 'en', 'Mere Paas Ek Dil Tha Wo Bhi Tumne Chura Liya Ringtone Download', NULL, NULL, NULL, 'mere-paas-ek-dil-tha-wo-bhi-tumne-chura-liya-ringtone-download', 'mere-paas-ek-dil-tha-wo-bhi-tumne-chura-liya-ringtone-download', 0, NULL, '2021-10-10 11:43:00.355539', 1, 0, 0, 233, 232),
(234, 'en', 'Dil Galti Kar Baitha Hai Ringtone Download Jubin Nautiyal', NULL, NULL, NULL, 'dil-galti-kar-baitha-hai-ringtone-download-jubin-nautiyal', 'dil-galti-kar-baitha-hai-ringtone-download-jubin-nautiyal', 0, NULL, '2021-10-13 04:04:35.478835', 1, 1, 0, 234, 235),
(235, 'en', 'Dil Galti Kar Baitha Hai Ringtone Download Jubin Nautiyal', NULL, NULL, NULL, 'dil-galti-kar-baitha-hai-ringtone-download-jubin-nautiyal', 'dil-galti-kar-baitha-hai-ringtone-download-jubin-nautiyal', 0, NULL, '2021-10-13 04:04:35.478835', 1, 0, 0, 235, 234),
(236, 'en', 'mene aasman pe likh diya ringtone download', NULL, NULL, NULL, 'mene-aasman-pe-likh-diya-ringtone-download', 'mene-aasman-pe-likh-diya-ringtone-download', 0, NULL, '2021-10-13 04:17:00.543893', 1, 1, 0, 236, 239),
(237, 'en', 'tu samne ho jahan bhi main jaaun ringtone Download', NULL, NULL, NULL, 'tu-samne-ho-jahan-bhi-main-jaaun-ringtone-download', 'tu-samne-ho-jahan-bhi-main-jaaun-ringtone-download', 0, NULL, '2021-10-13 04:23:34.436269', 1, 1, 0, 237, 240),
(238, 'en', 'Bepanah Ishq hindi ringtone Download', NULL, NULL, NULL, 'bepanah-ishq-hindi-ringtone-download', 'bepanah-ishq-hindi-ringtone-download', 0, NULL, '2021-10-13 04:28:39.670548', 1, 1, 0, 238, 241),
(239, 'en', 'mene aasman pe likh diya ringtone download', NULL, NULL, NULL, 'mene-aasman-pe-likh-diya-ringtone-download', 'mene-aasman-pe-likh-diya-ringtone-download', 0, NULL, '2021-10-13 04:17:00.543893', 1, 0, 0, 239, 236),
(240, 'en', 'tu samne ho jahan bhi main jaaun ringtone Download', NULL, NULL, NULL, 'tu-samne-ho-jahan-bhi-main-jaaun-ringtone-download', 'tu-samne-ho-jahan-bhi-main-jaaun-ringtone-download', 0, NULL, '2021-10-13 04:23:34.436269', 1, 0, 0, 240, 237),
(241, 'en', 'Bepanah Ishq hindi ringtone Download', NULL, NULL, NULL, 'bepanah-ishq-hindi-ringtone-download', 'bepanah-ishq-hindi-ringtone-download', 0, NULL, '2021-10-13 04:28:39.670548', 1, 0, 0, 241, 238),
(244, 'en', 'O Yaara Dil Lagana Ringtone Download', NULL, NULL, NULL, 'o-yaara-dil-lagana-ringtone-download', 'o-yaara-dil-lagana-ringtone-download', 0, NULL, '2021-10-15 03:39:42.698353', 1, 1, 0, 244, 245),
(245, 'en', 'O Yaara Dil Lagana Ringtone Download', NULL, NULL, NULL, 'o-yaara-dil-lagana-ringtone-download', 'o-yaara-dil-lagana-ringtone-download', 0, NULL, '2021-10-15 03:39:42.698353', 1, 0, 0, 245, 244),
(246, 'en', 'Kar Sako To Sanam Ringtone Download', NULL, NULL, NULL, 'kar-sako-to-sanam-ringtone-download', 'kar-sako-to-sanam-ringtone-download', 0, NULL, '2021-10-15 05:34:10.886153', 1, 1, 0, 246, 247),
(247, 'en', 'Kar Sako To Sanam Ringtone Download', NULL, NULL, NULL, 'kar-sako-to-sanam-ringtone-download', 'kar-sako-to-sanam-ringtone-download', 0, NULL, '2021-10-15 05:34:10.886153', 1, 0, 0, 247, 246),
(248, 'en', 'Bansuri - Hum Do Hamare Do Ringtone Download', NULL, NULL, NULL, 'bansuri-hum-do-hamare-do-ringtone-download', 'bansuri-hum-do-hamare-do-ringtone-download', 0, NULL, '2021-10-15 06:20:22.611807', 1, 1, 0, 248, 249),
(249, 'en', 'Bansuri - Hum Do Hamare Do Ringtone Download', NULL, NULL, NULL, 'bansuri-hum-do-hamare-do-ringtone-download', 'bansuri-hum-do-hamare-do-ringtone-download', 0, NULL, '2021-10-15 06:20:22.611807', 1, 0, 0, 249, 248),
(250, 'en', 'Pyaar Ho Jayega Ringtone Download Vishal Mishra', NULL, NULL, NULL, 'pyaar-ho-jayega-ringtone-download-vishal-mishra', 'pyaar-ho-jayega-ringtone-download-vishal-mishra', 0, NULL, '2021-10-16 03:44:56.077724', 1, 1, 0, 250, 251),
(251, 'en', 'Pyaar Ho Jayega Ringtone Download Vishal Mishra', NULL, NULL, NULL, 'pyaar-ho-jayega-ringtone-download-vishal-mishra', 'pyaar-ho-jayega-ringtone-download-vishal-mishra', 0, NULL, '2021-10-16 03:44:56.077724', 1, 0, 0, 251, 250),
(252, 'en', 'Apsraa Ringtone Download Jaani', NULL, NULL, NULL, 'apsraa-ringtone-download-jaani', 'apsraa-ringtone-download-jaani', 0, NULL, '2021-10-16 05:41:40.454714', 1, 1, 0, 252, 253),
(253, 'en', 'Apsraa Ringtone Download Jaani', NULL, NULL, NULL, 'apsraa-ringtone-download-jaani', 'apsraa-ringtone-download-jaani', 0, NULL, '2021-10-16 05:41:40.454714', 1, 0, 0, 253, 252);
INSERT INTO `cms_title` (`id`, `language`, `title`, `page_title`, `menu_title`, `meta_description`, `slug`, `path`, `has_url_overwrite`, `redirect`, `creation_date`, `published`, `publisher_is_draft`, `publisher_state`, `page_id`, `publisher_public_id`) VALUES
(254, 'en', 'Lut Gaye Ringtone Download Jubin Nautiyal', NULL, NULL, NULL, 'lut-gaye-ringtone-download-jubin-nautiyal', 'lut-gaye-ringtone-download-jubin-nautiyal', 0, NULL, '2021-10-17 06:35:14.004235', 1, 1, 0, 254, 255),
(255, 'en', 'Lut Gaye Ringtone Download Jubin Nautiyal', NULL, NULL, NULL, 'lut-gaye-ringtone-download-jubin-nautiyal', 'lut-gaye-ringtone-download-jubin-nautiyal', 0, NULL, '2021-10-17 06:35:14.004235', 1, 0, 0, 255, 254),
(256, 'en', 'Aise Na Choro Ringtone Guru Randhawa', NULL, NULL, NULL, 'aise-na-choro-ringtone-guru-randhawa', 'aise-na-choro-ringtone-guru-randhawa', 0, NULL, '2021-10-18 13:34:00.970588', 1, 1, 0, 256, 257),
(257, 'en', 'Aise Na Choro Ringtone Guru Randhawa', NULL, NULL, NULL, 'aise-na-choro-ringtone-guru-randhawa', 'aise-na-choro-ringtone-guru-randhawa', 0, NULL, '2021-10-18 13:34:00.970588', 1, 0, 0, 257, 256),
(258, 'en', 'Ankhein Mili Ringtone Download', NULL, NULL, NULL, 'ankhein-mili-ringtone-download', 'ankhein-mili-ringtone-download', 0, NULL, '2021-10-19 17:20:09.665234', 1, 1, 0, 258, 259),
(259, 'en', 'Ankhein Mili Ringtone Download', NULL, NULL, NULL, 'ankhein-mili-ringtone-download', 'ankhein-mili-ringtone-download', 0, NULL, '2021-10-19 17:20:09.665234', 1, 0, 0, 259, 258),
(260, 'en', 'Kash Aisa Ho Sakta Ringtone Download', NULL, NULL, NULL, 'kash-aisa-ho-sakta-ringtone-download', 'kash-aisa-ho-sakta-ringtone-download', 0, NULL, '2021-10-19 17:31:33.019179', 1, 1, 0, 260, 261),
(261, 'en', 'Kash Aisa Ho Sakta Ringtone Download', NULL, NULL, NULL, 'kash-aisa-ho-sakta-ringtone-download', 'kash-aisa-ho-sakta-ringtone-download', 0, NULL, '2021-10-19 17:31:33.019179', 1, 0, 0, 261, 260),
(262, 'en', 'Sorry Jaan Sorry Ringtone Download Mickey Singh', NULL, NULL, NULL, 'sorry-jaan-sorry-ringtone-download-mickey-singh', 'sorry-jaan-sorry-ringtone-download-mickey-singh', 0, NULL, '2021-10-20 04:03:47.468163', 1, 1, 0, 262, 263),
(263, 'en', 'Sorry Jaan Sorry Ringtone Download Mickey Singh', NULL, NULL, NULL, 'sorry-jaan-sorry-ringtone-download-mickey-singh', 'sorry-jaan-sorry-ringtone-download-mickey-singh', 0, NULL, '2021-10-20 04:03:47.468163', 1, 0, 0, 263, 262),
(264, 'en', 'Kamli - Hum Do Hamare Do Ringtone Download Jubin Nautiyal', NULL, NULL, NULL, 'kamli-hum-do-hamare-do-ringtone-download-jubin-nautiyal', 'kamli-hum-do-hamare-do-ringtone-download-jubin-nautiyal', 0, NULL, '2021-10-20 06:33:48.587922', 1, 1, 0, 264, 265),
(265, 'en', 'Kamli - Hum Do Hamare Do Ringtone Download Jubin Nautiyal', NULL, NULL, NULL, 'kamli-hum-do-hamare-do-ringtone-download-jubin-nautiyal', 'kamli-hum-do-hamare-do-ringtone-download-jubin-nautiyal', 0, NULL, '2021-10-20 06:33:48.587922', 1, 0, 0, 265, 264),
(266, 'en', 'Kamli Ringtone Download Jubin Nautiyal', NULL, NULL, NULL, 'kamli-ringtone-download-jubin-nautiyal', 'kamli-ringtone-download-jubin-nautiyal', 0, NULL, '2021-10-20 06:38:18.347741', 1, 1, 0, 266, 267),
(267, 'en', 'Kamli Ringtone Download Jubin Nautiyal', NULL, NULL, NULL, 'kamli-ringtone-download-jubin-nautiyal', 'kamli-ringtone-download-jubin-nautiyal', 0, NULL, '2021-10-20 06:38:18.347741', 1, 0, 0, 267, 266),
(268, 'en', 'Aise Na Chhodo Mujhe Ringtone Download GuruRandhawa', NULL, NULL, NULL, 'aise-na-chhodo-mujhe-ringtone-download-gururandhawa', 'aise-na-chhodo-mujhe-ringtone-download-gururandhawa', 0, NULL, '2021-10-20 07:51:46.477418', 1, 1, 0, 268, 269),
(269, 'en', 'Aise Na Chhodo Mujhe Ringtone Download GuruRandhawa', NULL, NULL, NULL, 'aise-na-chhodo-mujhe-ringtone-download-gururandhawa', 'aise-na-chhodo-mujhe-ringtone-download-gururandhawa', 0, NULL, '2021-10-20 07:51:46.477418', 1, 0, 0, 269, 268),
(270, 'en', 'Gallan Bholiyan Ringtone Download', NULL, NULL, NULL, 'gallan-bholiyan-ringtone-download', 'gallan-bholiyan-ringtone-download', 0, NULL, '2021-10-20 17:28:38.377622', 1, 1, 0, 270, 271),
(271, 'en', 'Gallan Bholiyan Ringtone Download', NULL, NULL, NULL, 'gallan-bholiyan-ringtone-download', 'gallan-bholiyan-ringtone-download', 0, NULL, '2021-10-20 17:28:38.377622', 1, 0, 0, 271, 270),
(272, 'en', 'Aila Re Aila Sooryavanshi Ringtone Download', NULL, NULL, NULL, 'aila-re-aila-sooryavanshi-ringtone-download', 'aila-re-aila-sooryavanshi-ringtone-download', 0, NULL, '2021-10-21 03:46:33.683301', 1, 1, 0, 272, 273),
(273, 'en', 'Aila Re Aila Sooryavanshi Ringtone Download', NULL, NULL, NULL, 'aila-re-aila-sooryavanshi-ringtone-download', 'aila-re-aila-sooryavanshi-ringtone-download', 0, NULL, '2021-10-21 03:46:33.683301', 1, 0, 0, 273, 272),
(274, 'en', 'Ishq Da Rog by Stebin Ben Ringtone Download 2021', NULL, NULL, NULL, 'ishq-da-rog-by-stebin-ben-ringtone-download-2021', 'ishq-da-rog-by-stebin-ben-ringtone-download-2021', 0, NULL, '2021-10-21 05:03:20.639375', 1, 1, 0, 274, 275),
(275, 'en', 'Ishq Da Rog by Stebin Ben Ringtone Download 2021', NULL, NULL, NULL, 'ishq-da-rog-by-stebin-ben-ringtone-download-2021', 'ishq-da-rog-by-stebin-ben-ringtone-download-2021', 0, NULL, '2021-10-21 05:03:20.639375', 1, 0, 0, 275, 274),
(276, 'en', 'Sahi Sahi Ringtone Download Lakhwinder Wadali', NULL, NULL, NULL, 'sahi-sahi-ringtone-download-lakhwinder-wadali', 'sahi-sahi-ringtone-download-lakhwinder-wadali', 0, NULL, '2021-10-21 06:47:42.678756', 1, 1, 0, 276, 277),
(277, 'en', 'Sahi Sahi Ringtone Download Lakhwinder Wadali', NULL, NULL, NULL, 'sahi-sahi-ringtone-download-lakhwinder-wadali', 'sahi-sahi-ringtone-download-lakhwinder-wadali', 0, NULL, '2021-10-21 06:47:42.678756', 1, 0, 0, 277, 276),
(278, 'en', 'Khoye Se Lag Rahe Ho Ringtone Download', NULL, NULL, NULL, 'khoye-se-lag-rahe-ho-ringtone-download', 'khoye-se-lag-rahe-ho-ringtone-download', 0, NULL, '2021-10-21 06:53:12.872388', 1, 1, 0, 278, 279),
(279, 'en', 'Khoye Se Lag Rahe Ho Ringtone Download', NULL, NULL, NULL, 'khoye-se-lag-rahe-ho-ringtone-download', 'khoye-se-lag-rahe-ho-ringtone-download', 0, NULL, '2021-10-21 06:53:12.872388', 1, 0, 0, 279, 278),
(280, 'en', 'Tere Bina Jina Saza ho Gaya Ringtone Download', NULL, NULL, NULL, 'tere-bina-jina-saza-ho-gaya-ringtone-download', 'tere-bina-jina-saza-ho-gaya-ringtone-download', 0, NULL, '2021-10-22 16:32:27.122434', 1, 1, 0, 280, 281),
(281, 'en', 'Tere Bina Jina Saza ho Gaya Ringtone Download', NULL, NULL, NULL, 'tere-bina-jina-saza-ho-gaya-ringtone-download', 'tere-bina-jina-saza-ho-gaya-ringtone-download', 0, NULL, '2021-10-22 16:32:27.122434', 1, 0, 0, 281, 280),
(282, 'en', 'Mahadev Ringtones', 'Mahadev Ringtones & Shiv Mahakal Ringtones Download Mp3 or M4r', '', '', 'mahadev-ringtones', 'mahadev-ringtones', 0, NULL, '2021-10-23 16:20:55.098531', 1, 1, 0, 282, 283),
(283, 'en', 'Mahadev Ringtones', 'Mahadev Ringtones & Shiv Mahakal Ringtones Download Mp3 or M4r', '', '', 'mahadev-ringtones', 'mahadev-ringtones', 0, NULL, '2021-10-23 16:20:55.098531', 1, 0, 0, 283, 282),
(284, 'en', 'Devo Ke Dev Mahadev Theme Ringtone Download', NULL, NULL, NULL, 'devo-ke-dev-mahadev-theme-ringtone-download', 'devo-ke-dev-mahadev-theme-ringtone-download', 0, NULL, '2021-10-23 16:50:05.547911', 1, 1, 0, 284, 285),
(285, 'en', 'Devo Ke Dev Mahadev Theme Ringtone Download', NULL, NULL, NULL, 'devo-ke-dev-mahadev-theme-ringtone-download', 'devo-ke-dev-mahadev-theme-ringtone-download', 0, NULL, '2021-10-23 16:50:05.547911', 1, 0, 0, 285, 284),
(286, 'en', 'Mera Bhola Hai Bhandari Ringtone', NULL, NULL, NULL, 'mera-bhola-hai-bhandari-ringtone', 'mera-bhola-hai-bhandari-ringtone', 0, NULL, '2021-10-24 05:13:22.917244', 1, 1, 0, 286, 287),
(287, 'en', 'Mera Bhola Hai Bhandari Ringtone', NULL, NULL, NULL, 'mera-bhola-hai-bhandari-ringtone', 'mera-bhola-hai-bhandari-ringtone', 0, NULL, '2021-10-24 05:13:22.917244', 1, 0, 0, 287, 286),
(288, 'en', 'Aisa Damru Bajaya Bholenath Ne Ringtone Download', NULL, NULL, NULL, 'aisa-damru-bajaya-bholenath-ne-ringtone-download', 'aisa-damru-bajaya-bholenath-ne-ringtone-download', 0, NULL, '2021-10-26 04:26:08.812941', 1, 1, 0, 288, 289),
(289, 'en', 'Aisa Damru Bajaya Bholenath Ne Ringtone Download', NULL, NULL, NULL, 'aisa-damru-bajaya-bholenath-ne-ringtone-download', 'aisa-damru-bajaya-bholenath-ne-ringtone-download', 0, NULL, '2021-10-26 04:26:08.812941', 1, 0, 0, 289, 288),
(290, 'en', 'Lagi Meri Tere Sang Shankara Ringtone Download', NULL, NULL, NULL, 'lagi-meri-tere-sang-shankara-ringtone-download', 'lagi-meri-tere-sang-shankara-ringtone-download', 0, NULL, '2021-10-26 17:40:08.302079', 1, 1, 0, 290, 291),
(291, 'en', 'Lagi Meri Tere Sang Shankara Ringtone Download', NULL, NULL, NULL, 'lagi-meri-tere-sang-shankara-ringtone-download', 'lagi-meri-tere-sang-shankara-ringtone-download', 0, NULL, '2021-10-26 17:40:08.302079', 1, 0, 0, 291, 290),
(292, 'en', 'Shiv Sama Rahe Mujhme Ringtone Download', NULL, NULL, NULL, 'shiv-sama-rahe-mujhme-ringtone-download', 'shiv-sama-rahe-mujhme-ringtone-download', 0, NULL, '2021-10-26 17:49:44.049133', 1, 1, 0, 292, 293),
(293, 'en', 'Shiv Sama Rahe Mujhme Ringtone Download', NULL, NULL, NULL, 'shiv-sama-rahe-mujhme-ringtone-download', 'shiv-sama-rahe-mujhme-ringtone-download', 0, NULL, '2021-10-26 17:49:44.049133', 1, 0, 0, 293, 292),
(294, 'en', 'Meri Zindagi Hai Tu - Jubin Nautiyal Ringtone Download', NULL, NULL, NULL, 'meri-zindagi-hai-tu-jubin-nautiyal-ringtone-download', 'meri-zindagi-hai-tu-jubin-nautiyal-ringtone-download', 0, NULL, '2021-10-27 10:13:51.450753', 1, 1, 0, 294, 296),
(295, 'en', 'Mere Yaara Ringtone Download', NULL, NULL, NULL, 'mere-yaara-ringtone-download', 'mere-yaara-ringtone-download', 0, NULL, '2021-10-27 10:17:26.968456', 1, 1, 0, 295, 297),
(296, 'en', 'Meri Zindagi Hai Tu - Jubin Nautiyal Ringtone Download', NULL, NULL, NULL, 'meri-zindagi-hai-tu-jubin-nautiyal-ringtone-download', 'meri-zindagi-hai-tu-jubin-nautiyal-ringtone-download', 0, NULL, '2021-10-27 10:13:51.450753', 1, 0, 0, 296, 294),
(297, 'en', 'Mere Yaara Ringtone Download', NULL, NULL, NULL, 'mere-yaara-ringtone-download', 'mere-yaara-ringtone-download', 0, NULL, '2021-10-27 10:17:26.968456', 1, 0, 0, 297, 295),
(298, 'en', 'East Nepal BGM Ringtone Download', NULL, NULL, NULL, 'east-nepal-bgm-ringtone-download', 'east-nepal-bgm-ringtone-download', 0, NULL, '2021-10-28 07:36:23.636392', 1, 1, 0, 298, 305),
(299, 'en', 'Rang Leke Khelte Gulal Leke Khelte Ringtone Download', NULL, NULL, NULL, 'rang-leke-khelte-gulal-leke-khelte-ringtone-download', 'rang-leke-khelte-gulal-leke-khelte-ringtone-download', 0, NULL, '2021-10-28 07:39:42.991880', 1, 1, 0, 299, 306),
(300, 'en', 'Chhatrapati Shivaji Maharaj Ringtone Download', NULL, NULL, NULL, 'chhatrapati-shivaji-maharaj-ringtone-download', 'chhatrapati-shivaji-maharaj-ringtone-download', 0, NULL, '2021-10-28 07:43:10.922607', 1, 1, 0, 300, 307),
(301, 'en', 'Manike Mage Hithe Ringtone Download', NULL, NULL, NULL, 'manike-mage-hithe-ringtone-download', 'manike-mage-hithe-ringtone-download', 0, NULL, '2021-10-28 07:46:29.820632', 1, 1, 0, 301, 308),
(302, 'en', 'Tu Ada Hai Tu Mohabbat Ringtone Download', NULL, NULL, NULL, 'tu-ada-hai-tu-mohabbat-ringtone-download', 'tu-ada-hai-tu-mohabbat-ringtone-download', 0, NULL, '2021-10-28 07:50:24.874656', 1, 1, 0, 302, 309),
(303, 'en', 'Yeh Dua Hai Meri Rab Se Ringtone Download', NULL, NULL, NULL, 'yeh-dua-hai-meri-rab-se-ringtone-download', 'yeh-dua-hai-meri-rab-se-ringtone-download', 0, NULL, '2021-10-28 07:52:40.509856', 1, 1, 0, 303, 310),
(304, 'en', 'Main Barish Ka Mausam Hoon B Praak DJ Ringtone Download', NULL, NULL, NULL, 'main-barish-ka-mausam-hoon-b-praak-dj-ringtone-download', 'main-barish-ka-mausam-hoon-b-praak-dj-ringtone-download', 0, NULL, '2021-10-28 07:58:03.944349', 1, 1, 0, 304, 311),
(305, 'en', 'East Nepal BGM Ringtone Download', NULL, NULL, NULL, 'east-nepal-bgm-ringtone-download', 'east-nepal-bgm-ringtone-download', 0, NULL, '2021-10-28 07:36:23.636392', 1, 0, 0, 305, 298),
(306, 'en', 'Rang Leke Khelte Gulal Leke Khelte Ringtone Download', NULL, NULL, NULL, 'rang-leke-khelte-gulal-leke-khelte-ringtone-download', 'rang-leke-khelte-gulal-leke-khelte-ringtone-download', 0, NULL, '2021-10-28 07:39:42.991880', 1, 0, 0, 306, 299),
(307, 'en', 'Chhatrapati Shivaji Maharaj Ringtone Download', NULL, NULL, NULL, 'chhatrapati-shivaji-maharaj-ringtone-download', 'chhatrapati-shivaji-maharaj-ringtone-download', 0, NULL, '2021-10-28 07:43:10.922607', 1, 0, 0, 307, 300),
(308, 'en', 'Manike Mage Hithe Ringtone Download', NULL, NULL, NULL, 'manike-mage-hithe-ringtone-download', 'manike-mage-hithe-ringtone-download', 0, NULL, '2021-10-28 07:46:29.820632', 1, 0, 0, 308, 301),
(309, 'en', 'Tu Ada Hai Tu Mohabbat Ringtone Download', NULL, NULL, NULL, 'tu-ada-hai-tu-mohabbat-ringtone-download', 'tu-ada-hai-tu-mohabbat-ringtone-download', 0, NULL, '2021-10-28 07:50:24.874656', 1, 0, 0, 309, 302),
(310, 'en', 'Yeh Dua Hai Meri Rab Se Ringtone Download', NULL, NULL, NULL, 'yeh-dua-hai-meri-rab-se-ringtone-download', 'yeh-dua-hai-meri-rab-se-ringtone-download', 0, NULL, '2021-10-28 07:52:40.509856', 1, 0, 0, 310, 303),
(311, 'en', 'Main Barish Ka Mausam Hoon B Praak DJ Ringtone Download', NULL, NULL, NULL, 'main-barish-ka-mausam-hoon-b-praak-dj-ringtone-download', 'main-barish-ka-mausam-hoon-b-praak-dj-ringtone-download', 0, NULL, '2021-10-28 07:58:03.944349', 1, 0, 0, 311, 304),
(312, 'en', 'Ishq Tera Lae Dooba Ringtone Download', NULL, NULL, NULL, 'ishq-tera-lae-dooba-ringtone-download', 'ishq-tera-lae-dooba-ringtone-download', 0, NULL, '2021-10-29 14:05:47.802264', 1, 1, 0, 312, 313),
(313, 'en', 'Ishq Tera Lae Dooba Ringtone Download', NULL, NULL, NULL, 'ishq-tera-lae-dooba-ringtone-download', 'ishq-tera-lae-dooba-ringtone-download', 0, NULL, '2021-10-29 14:05:47.802264', 1, 0, 0, 313, 312),
(314, 'en', 'Bijlee Bijlee Ringtone Download Harrdy Sandhu', NULL, NULL, NULL, 'bijlee-bijlee-ringtone-download-harrdy-sandhu', 'bijlee-bijlee-ringtone-download-harrdy-sandhu', 0, NULL, '2021-10-30 11:30:52.185423', 1, 1, 0, 314, 315),
(315, 'en', 'Bijlee Bijlee Ringtone Download Harrdy Sandhu', NULL, NULL, NULL, 'bijlee-bijlee-ringtone-download-harrdy-sandhu', 'bijlee-bijlee-ringtone-download-harrdy-sandhu', 0, NULL, '2021-10-30 11:30:52.185423', 1, 0, 0, 315, 314),
(316, 'en', 'Natu Natu Telugu Ringtone Download(Rrr)', NULL, NULL, NULL, 'natu-natu-telugu-ringtone-downloadrrr', 'natu-natu-telugu-ringtone-downloadrrr', 0, NULL, '2021-11-22 20:36:41.621685', 1, 1, 0, 316, 317),
(317, 'en', 'Natu Natu Telugu Ringtone Download(Rrr)', NULL, NULL, NULL, 'natu-natu-telugu-ringtone-downloadrrr', 'natu-natu-telugu-ringtone-downloadrrr', 0, NULL, '2021-11-22 20:36:41.621685', 1, 0, 0, 317, 316),
(318, 'en', 'Hoye Ishq Na Ringtone Download', NULL, NULL, NULL, 'hoye-ishq-na-ringtone-download', 'hoye-ishq-na-ringtone-download', 0, NULL, '2021-11-28 05:24:33.809173', 1, 1, 0, 318, 319),
(319, 'en', 'Hoye Ishq Na Ringtone Download', NULL, NULL, NULL, 'hoye-ishq-na-ringtone-download', 'hoye-ishq-na-ringtone-download', 0, NULL, '2021-11-28 05:24:33.809173', 1, 0, 0, 319, 318),
(320, 'en', 'Mere Shankara Ringtone Download', NULL, NULL, NULL, 'mere-shankara-ringtone-download', 'mere-shankara-ringtone-download', 0, NULL, '2021-12-04 04:18:32.484674', 1, 1, 0, 320, 321),
(321, 'en', 'Mere Shankara Ringtone Download', NULL, NULL, NULL, 'mere-shankara-ringtone-download', 'mere-shankara-ringtone-download', 0, NULL, '2021-12-04 04:18:32.484674', 1, 0, 0, 321, 320),
(322, 'en', 'Rait Zara Si Ringtone Download (Atrangi re )', NULL, NULL, NULL, 'rait-zara-si-ringtone-download-atrangi-re', 'rait-zara-si-ringtone-download-atrangi-re', 0, NULL, '2021-12-06 06:18:19.114606', 1, 1, 0, 322, 323),
(323, 'en', 'Rait Zara Si Ringtone Download (Atrangi re )', NULL, NULL, NULL, 'rait-zara-si-ringtone-download-atrangi-re', 'rait-zara-si-ringtone-download-atrangi-re', 0, NULL, '2021-12-06 06:18:19.114606', 1, 0, 0, 323, 322),
(324, 'en', 'Tera name hai likha ringtone Download', NULL, NULL, NULL, 'tera-name-hai-likha-ringtone-download', 'tera-name-hai-likha-ringtone-download', 0, NULL, '2021-12-08 04:45:35.578979', 1, 1, 0, 324, 325),
(325, 'en', 'Tera name hai likha ringtone Download', NULL, NULL, NULL, 'tera-name-hai-likha-ringtone-download', 'tera-name-hai-likha-ringtone-download', 0, NULL, '2021-12-08 04:45:35.578979', 1, 0, 0, 325, 324),
(326, 'en', 'Ghana Kasuta Lage Re Ringtone Download (Rafttar)', NULL, NULL, NULL, 'ghana-kasuta-lage-re-ringtone-download-rafttar', 'ghana-kasuta-lage-re-ringtone-download-rafttar', 0, NULL, '2021-12-09 14:30:40.897510', 1, 1, 0, 326, 327),
(327, 'en', 'Ghana Kasuta Lage Re Ringtone Download (Rafttar)', NULL, NULL, NULL, 'ghana-kasuta-lage-re-ringtone-download-rafttar', 'ghana-kasuta-lage-re-ringtone-download-rafttar', 0, NULL, '2021-12-09 14:30:40.897510', 1, 0, 0, 327, 326),
(328, 'en', 'Fakir Ringtone Download (Hansraj Raghuwanshi)', NULL, NULL, NULL, 'fakir-ringtone-download-hansraj-raghuwanshi', 'fakir-ringtone-download-hansraj-raghuwanshi', 0, NULL, '2021-12-10 03:16:52.361805', 1, 1, 0, 328, 329),
(329, 'en', 'Fakir Ringtone Download (Hansraj Raghuwanshi)', NULL, NULL, NULL, 'fakir-ringtone-download-hansraj-raghuwanshi', 'fakir-ringtone-download-hansraj-raghuwanshi', 0, NULL, '2021-12-10 03:16:52.361805', 1, 0, 0, 329, 328),
(330, 'en', 'Duaa Mein Yaad Rakhna Ringtone Download', NULL, NULL, NULL, 'duaa-mein-yaad-rakhna-ringtone-download', 'duaa-mein-yaad-rakhna-ringtone-download', 0, NULL, '2021-12-10 05:07:51.553206', 1, 1, 0, 330, 331),
(331, 'en', 'Duaa Mein Yaad Rakhna Ringtone Download', NULL, NULL, NULL, 'duaa-mein-yaad-rakhna-ringtone-download', 'duaa-mein-yaad-rakhna-ringtone-download', 0, NULL, '2021-12-10 05:07:51.553206', 1, 0, 0, 331, 330),
(332, 'en', 'Jag Ghoomeya Ringtone Download', NULL, NULL, NULL, 'jag-ghoomeya-ringtone-download', 'jag-ghoomeya-ringtone-download', 0, NULL, '2021-12-11 05:50:22.455422', 1, 1, 0, 332, 333),
(333, 'en', 'Jag Ghoomeya Ringtone Download', NULL, NULL, NULL, 'jag-ghoomeya-ringtone-download', 'jag-ghoomeya-ringtone-download', 0, NULL, '2021-12-11 05:50:22.455422', 1, 0, 0, 333, 332),
(334, 'en', 'Dastaan E Ishq Ringtone Download', NULL, NULL, NULL, 'dastaan-e-ishq-ringtone-download', 'dastaan-e-ishq-ringtone-download', 0, NULL, '2021-12-12 17:33:07.689504', 1, 1, 0, 334, 335),
(335, 'en', 'Dastaan E Ishq Ringtone Download', NULL, NULL, NULL, 'dastaan-e-ishq-ringtone-download', 'dastaan-e-ishq-ringtone-download', 0, NULL, '2021-12-12 17:33:07.689504', 1, 0, 0, 335, 334),
(336, 'en', 'Humsafar ringtone download', NULL, NULL, NULL, 'humsafar-ringtone-download', 'humsafar-ringtone-download', 0, NULL, '2021-12-13 05:39:37.629517', 1, 1, 0, 336, 337),
(337, 'en', 'Humsafar ringtone download', NULL, NULL, NULL, 'humsafar-ringtone-download', 'humsafar-ringtone-download', 0, NULL, '2021-12-13 05:39:37.629517', 1, 0, 0, 337, 336),
(338, 'en', '89 | Bigadne De Ringtone Download', NULL, NULL, NULL, '89-bigadne-de-ringtone-download', '89-bigadne-de-ringtone-download', 0, NULL, '2021-12-13 05:55:48.902390', 1, 1, 0, 338, 340),
(339, 'en', 'Ram Tumhara Naam Ringtone Download', NULL, NULL, NULL, 'ram-tumhara-naam-ringtone-download', 'ram-tumhara-naam-ringtone-download', 0, NULL, '2021-12-13 06:02:17.669016', 1, 1, 0, 339, 341),
(340, 'en', '89 | Bigadne De Ringtone Download', NULL, NULL, NULL, '89-bigadne-de-ringtone-download', '89-bigadne-de-ringtone-download', 0, NULL, '2021-12-13 05:55:48.902390', 1, 0, 0, 340, 338),
(341, 'en', 'Ram Tumhara Naam Ringtone Download', NULL, NULL, NULL, 'ram-tumhara-naam-ringtone-download', 'ram-tumhara-naam-ringtone-download', 0, NULL, '2021-12-13 06:02:17.669016', 1, 0, 0, 341, 339),
(342, 'en', 'Chan chanani ringtone download', NULL, NULL, NULL, 'chan-chanani-ringtone-download', 'chan-chanani-ringtone-download', 0, NULL, '2021-12-13 12:42:50.867391', 1, 1, 0, 342, 343),
(343, 'en', 'Chan chanani ringtone download', NULL, NULL, NULL, 'chan-chanani-ringtone-download', 'chan-chanani-ringtone-download', 0, NULL, '2021-12-13 12:42:50.867391', 1, 0, 0, 343, 342),
(344, 'en', 'Param Sundari Ringtone Download', NULL, NULL, NULL, 'param-sundari-ringtone-download', 'param-sundari-ringtone-download', 0, NULL, '2021-12-14 03:24:38.074673', 1, 1, 0, 344, 345),
(345, 'en', 'Param Sundari Ringtone Download', NULL, NULL, NULL, 'param-sundari-ringtone-download', 'param-sundari-ringtone-download', 0, NULL, '2021-12-14 03:24:38.074673', 1, 0, 0, 345, 344),
(346, 'en', 'Udd Jaa Parindey Ringtone Download', NULL, NULL, NULL, 'udd-jaa-parindey-ringtone-download', 'udd-jaa-parindey-ringtone-download', 0, NULL, '2021-12-15 05:31:44.956706', 1, 1, 0, 346, 347),
(347, 'en', 'Udd Jaa Parindey Ringtone Download', NULL, NULL, NULL, 'udd-jaa-parindey-ringtone-download', 'udd-jaa-parindey-ringtone-download', 0, NULL, '2021-12-15 05:31:44.956706', 1, 0, 0, 347, 346),
(348, 'en', 'Baliye Re Ringtone Download (Jersey)', NULL, NULL, NULL, 'baliye-re-ringtone-download-jersey', 'baliye-re-ringtone-download-jersey', 0, NULL, '2021-12-15 06:06:50.575546', 1, 1, 0, 348, 349),
(349, 'en', 'Baliye Re Ringtone Download (Jersey)', NULL, NULL, NULL, 'baliye-re-ringtone-download-jersey', 'baliye-re-ringtone-download-jersey', 0, NULL, '2021-12-15 06:06:50.575546', 1, 0, 0, 349, 348),
(350, 'en', 'Teri Meri Gallan Hogi Mashhur ( Raatan Lambiyan ) Ringtone Download', NULL, NULL, NULL, 'teri-meri-gallan-hogi-mashhur-raatan-lambiyan-ringtone-download', 'teri-meri-gallan-hogi-mashhur-raatan-lambiyan-ringtone-download', 0, NULL, '2021-12-15 16:55:44.513541', 1, 1, 0, 350, 351),
(351, 'en', 'Teri Meri Gallan Hogi Mashhur ( Raatan Lambiyan ) Ringtone Download', NULL, NULL, NULL, 'teri-meri-gallan-hogi-mashhur-raatan-lambiyan-ringtone-download', 'teri-meri-gallan-hogi-mashhur-raatan-lambiyan-ringtone-download', 0, NULL, '2021-12-15 16:55:44.513541', 1, 0, 0, 351, 350),
(352, 'en', 'Saazish ringtone download bb ki vines | Bhuvan bam | Dhindhora ringtone', NULL, NULL, NULL, 'saazish-ringtone-download-bb-ki-vines-bhuvan-bam-dhindhora-ringtone', 'saazish-ringtone-download-bb-ki-vines-bhuvan-bam-dhindhora-ringtone', 0, NULL, '2021-12-16 11:40:19.359658', 1, 1, 0, 352, 353),
(353, 'en', 'Saazish ringtone download bb ki vines | Bhuvan bam | Dhindhora ringtone', NULL, NULL, NULL, 'saazish-ringtone-download-bb-ki-vines-bhuvan-bam-dhindhora-ringtone', 'saazish-ringtone-download-bb-ki-vines-bhuvan-bam-dhindhora-ringtone', 0, NULL, '2021-12-16 11:40:19.359658', 1, 0, 0, 353, 352),
(354, 'en', 'Iphone Notification Ringtone Download', NULL, NULL, NULL, 'iphone-notification-ringtone-download', 'iphone-notification-ringtone-download', 0, NULL, '2021-12-17 10:54:16.647675', 1, 1, 0, 354, 355),
(355, 'en', 'Iphone Notification Ringtone Download', NULL, NULL, NULL, 'iphone-notification-ringtone-download', 'iphone-notification-ringtone-download', 0, NULL, '2021-12-17 10:54:16.647675', 1, 0, 0, 355, 354),
(356, 'en', 'Dance Meri Rani Ringtone Download | Guru Randhawa', NULL, NULL, NULL, 'dance-meri-rani-ringtone-download-guru-randhawa', 'dance-meri-rani-ringtone-download-guru-randhawa', 0, NULL, '2021-12-18 04:28:35.877265', 1, 1, 0, 356, 357),
(357, 'en', 'Dance Meri Rani Ringtone Download | Guru Randhawa', NULL, NULL, NULL, 'dance-meri-rani-ringtone-download-guru-randhawa', 'dance-meri-rani-ringtone-download-guru-randhawa', 0, NULL, '2021-12-18 04:28:35.877265', 1, 0, 0, 357, 356),
(358, 'en', 'Teri Life Meri Life Ringtone Download | Punjabi Ringtones', NULL, NULL, NULL, 'teri-life-meri-life-ringtone-download-punjabi-ringtones', 'teri-life-meri-life-ringtone-download-punjabi-ringtones', 0, NULL, '2021-12-18 06:20:44.768803', 1, 1, 0, 358, 359),
(359, 'en', 'Teri Life Meri Life Ringtone Download | Punjabi Ringtones', NULL, NULL, NULL, 'teri-life-meri-life-ringtone-download-punjabi-ringtones', 'teri-life-meri-life-ringtone-download-punjabi-ringtones', 0, NULL, '2021-12-18 06:20:44.768803', 1, 0, 0, 359, 358),
(360, 'en', 'Jai Kara Ringtone Download • Hansraj Raghuwanshi', NULL, NULL, NULL, 'jai-kara-ringtone-download-hansraj-raghuwanshi', 'jai-kara-ringtone-download-hansraj-raghuwanshi', 0, NULL, '2021-12-18 06:50:42.169683', 1, 1, 0, 360, 361),
(361, 'en', 'Jai Kara Ringtone Download • Hansraj Raghuwanshi', NULL, NULL, NULL, 'jai-kara-ringtone-download-hansraj-raghuwanshi', 'jai-kara-ringtone-download-hansraj-raghuwanshi', 0, NULL, '2021-12-18 06:50:42.169683', 1, 0, 0, 361, 360);

-- --------------------------------------------------------

--
-- Table structure for table `cms_treenode`
--

CREATE TABLE `cms_treenode` (
  `id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `depth` int(10) UNSIGNED NOT NULL CHECK (`depth` >= 0),
  `numchild` int(10) UNSIGNED NOT NULL CHECK (`numchild` >= 0),
  `parent_id` int(11) DEFAULT NULL,
  `site_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_treenode`
--

INSERT INTO `cms_treenode` (`id`, `path`, `depth`, `numchild`, `parent_id`, `site_id`) VALUES
(1, '0001', 1, 0, NULL, 1),
(2, '0003', 1, 0, NULL, 1),
(3, '0004', 1, 0, NULL, 1),
(11, '0006', 1, 0, NULL, 1),
(12, '000R', 1, 0, NULL, 1),
(13, '000Q', 1, 0, NULL, 1),
(14, '000P', 1, 0, NULL, 1),
(15, '000O', 1, 0, NULL, 1),
(16, '000N', 1, 0, NULL, 1),
(17, '000M', 1, 0, NULL, 1),
(18, '000L', 1, 0, NULL, 1),
(19, '000K', 1, 0, NULL, 1),
(20, '000J', 1, 0, NULL, 1),
(21, '000I', 1, 0, NULL, 1),
(22, '000G', 1, 0, NULL, 1),
(23, '000F', 1, 0, NULL, 1),
(24, '000E', 1, 0, NULL, 1),
(25, '000D', 1, 0, NULL, 1),
(26, '000C', 1, 0, NULL, 1),
(27, '000B', 1, 0, NULL, 1),
(28, '000A', 1, 0, NULL, 1),
(29, '0009', 1, 0, NULL, 1),
(30, '0008', 1, 0, NULL, 1),
(31, '0007', 1, 0, NULL, 1),
(32, '000H', 1, 0, NULL, 1),
(33, '000S', 1, 0, NULL, 1),
(34, '000T', 1, 0, NULL, 1),
(35, '000U', 1, 0, NULL, 1),
(36, '000V', 1, 0, NULL, 1),
(37, '000W', 1, 0, NULL, 1),
(38, '000X', 1, 0, NULL, 1),
(39, '000Y', 1, 0, NULL, 1),
(40, '0010', 1, 0, NULL, 1),
(41, '0012', 1, 0, NULL, 1),
(42, '0013', 1, 0, NULL, 1),
(43, '0014', 1, 0, NULL, 1),
(44, '0015', 1, 0, NULL, 1),
(45, '0016', 1, 0, NULL, 1),
(46, '0017', 1, 0, NULL, 1),
(47, '0018', 1, 0, NULL, 1),
(48, '0019', 1, 0, NULL, 1),
(49, '001A', 1, 0, NULL, 1),
(50, '001B', 1, 0, NULL, 1),
(51, '001C', 1, 0, NULL, 1),
(52, '001D', 1, 0, NULL, 1),
(53, '001E', 1, 0, NULL, 1),
(54, '001F', 1, 0, NULL, 1),
(55, '001G', 1, 0, NULL, 1),
(56, '001H', 1, 0, NULL, 1),
(57, '001I', 1, 0, NULL, 1),
(58, '001J', 1, 0, NULL, 1),
(59, '0011', 1, 0, NULL, 1),
(60, '001K', 1, 0, NULL, 1),
(61, '001L', 1, 0, NULL, 1),
(62, '001M', 1, 0, NULL, 1),
(63, '001N', 1, 0, NULL, 1),
(64, '001O', 1, 0, NULL, 1),
(65, '001P', 1, 0, NULL, 1),
(66, '001Q', 1, 0, NULL, 1),
(67, '001R', 1, 0, NULL, 1),
(68, '001S', 1, 0, NULL, 1),
(69, '001T', 1, 0, NULL, 1),
(70, '001U', 1, 0, NULL, 1),
(71, '001V', 1, 0, NULL, 1),
(72, '001W', 1, 0, NULL, 1),
(73, '001X', 1, 0, NULL, 1),
(74, '001Y', 1, 0, NULL, 1),
(75, '001Z', 1, 0, NULL, 1),
(76, '0020', 1, 0, NULL, 1),
(77, '0021', 1, 0, NULL, 1),
(78, '0022', 1, 0, NULL, 1),
(79, '0023', 1, 0, NULL, 1),
(80, '0024', 1, 0, NULL, 1),
(81, '0025', 1, 0, NULL, 1),
(82, '0026', 1, 0, NULL, 1),
(83, '0027', 1, 0, NULL, 1),
(84, '0028', 1, 0, NULL, 1),
(85, '0029', 1, 0, NULL, 1),
(86, '002A', 1, 0, NULL, 1),
(87, '002B', 1, 0, NULL, 1),
(88, '002C', 1, 0, NULL, 1),
(89, '002D', 1, 0, NULL, 1),
(90, '002E', 1, 0, NULL, 1),
(91, '002F', 1, 0, NULL, 1),
(92, '002G', 1, 0, NULL, 1),
(93, '002H', 1, 0, NULL, 1),
(94, '002I', 1, 0, NULL, 1),
(95, '002J', 1, 0, NULL, 1),
(96, '002K', 1, 0, NULL, 1),
(97, '002L', 1, 0, NULL, 1),
(98, '002M', 1, 0, NULL, 1),
(99, '002N', 1, 0, NULL, 1),
(100, '002O', 1, 0, NULL, 1),
(101, '002P', 1, 0, NULL, 1),
(102, '002Q', 1, 0, NULL, 1),
(103, '002R', 1, 0, NULL, 1),
(104, '002S', 1, 0, NULL, 1),
(105, '002T', 1, 0, NULL, 1),
(106, '002U', 1, 0, NULL, 1),
(107, '002V', 1, 0, NULL, 1),
(108, '002W', 1, 0, NULL, 1),
(109, '002X', 1, 0, NULL, 1),
(110, '002Y', 1, 0, NULL, 1),
(111, '002Z', 1, 0, NULL, 1),
(112, '0030', 1, 0, NULL, 1),
(113, '0031', 1, 0, NULL, 1),
(114, '0032', 1, 0, NULL, 1),
(115, '0033', 1, 0, NULL, 1),
(116, '0034', 1, 0, NULL, 1),
(117, '0035', 1, 0, NULL, 1),
(118, '0036', 1, 0, NULL, 1),
(119, '0037', 1, 0, NULL, 1),
(120, '0038', 1, 0, NULL, 1),
(121, '0039', 1, 0, NULL, 1),
(123, '003B', 1, 0, NULL, 1),
(124, '003C', 1, 0, NULL, 1),
(125, '003D', 1, 0, NULL, 1),
(126, '003E', 1, 0, NULL, 1),
(127, '003F', 1, 0, NULL, 1),
(128, '003G', 1, 0, NULL, 1),
(129, '003H', 1, 0, NULL, 1),
(130, '003I', 1, 0, NULL, 1),
(131, '003J', 1, 0, NULL, 1),
(132, '003K', 1, 0, NULL, 1),
(133, '003L', 1, 0, NULL, 1),
(134, '003M', 1, 0, NULL, 1),
(135, '003N', 1, 0, NULL, 1),
(136, '003O', 1, 0, NULL, 1),
(137, '003P', 1, 0, NULL, 1),
(138, '003Q', 1, 0, NULL, 1),
(139, '003R', 1, 0, NULL, 1),
(140, '003S', 1, 0, NULL, 1),
(141, '003T', 1, 0, NULL, 1),
(142, '003U', 1, 0, NULL, 1),
(143, '003V', 1, 0, NULL, 1),
(144, '003W', 1, 0, NULL, 1),
(145, '003X', 1, 0, NULL, 1),
(146, '003Y', 1, 0, NULL, 1),
(147, '003Z', 1, 0, NULL, 1),
(148, '0040', 1, 0, NULL, 1),
(149, '0041', 1, 0, NULL, 1),
(150, '0042', 1, 0, NULL, 1),
(151, '0043', 1, 0, NULL, 1),
(152, '0044', 1, 0, NULL, 1),
(153, '0045', 1, 0, NULL, 1),
(154, '0046', 1, 0, NULL, 1),
(155, '0047', 1, 0, NULL, 1),
(156, '0048', 1, 0, NULL, 1),
(157, '0049', 1, 0, NULL, 1),
(158, '004A', 1, 0, NULL, 1),
(159, '004B', 1, 0, NULL, 1),
(160, '004C', 1, 0, NULL, 1),
(161, '004D', 1, 0, NULL, 1),
(162, '004E', 1, 0, NULL, 1),
(163, '004F', 1, 0, NULL, 1),
(164, '004G', 1, 0, NULL, 1),
(165, '004H', 1, 0, NULL, 1),
(166, '004I', 1, 0, NULL, 1),
(167, '004J', 1, 0, NULL, 1),
(168, '004K', 1, 0, NULL, 1),
(169, '004L', 1, 0, NULL, 1),
(170, '004M', 1, 0, NULL, 1),
(171, '004N', 1, 0, NULL, 1),
(172, '004O', 1, 0, NULL, 1),
(173, '004P', 1, 0, NULL, 1),
(174, '004Q', 1, 0, NULL, 1),
(175, '004R', 1, 0, NULL, 1),
(176, '004S', 1, 0, NULL, 1),
(177, '004T', 1, 0, NULL, 1),
(178, '004U', 1, 0, NULL, 1),
(179, '004V', 1, 0, NULL, 1),
(180, '004W', 1, 0, NULL, 1),
(181, '004X', 1, 0, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_urlconfrevision`
--

CREATE TABLE `cms_urlconfrevision` (
  `id` int(11) NOT NULL,
  `revision` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_urlconfrevision`
--

INSERT INTO `cms_urlconfrevision` (`id`, `revision`) VALUES
(1, '2f305757-802d-4e38-ae6e-06672700bedf');

-- --------------------------------------------------------

--
-- Table structure for table `cms_usersettings`
--

CREATE TABLE `cms_usersettings` (
  `id` int(11) NOT NULL,
  `language` varchar(10) NOT NULL,
  `clipboard_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_usersettings`
--

INSERT INTO `cms_usersettings` (`id`, `language`, `clipboard_id`, `user_id`) VALUES
(1, 'en', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `config_aboutusplugin`
--

CREATE TABLE `config_aboutusplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `config_aboutusplugin`
--

INSERT INTO `config_aboutusplugin` (`cmsplugin_ptr_id`, `title`, `subtitle`, `content`) VALUES
(34, 'About Us', 'RingtoneFly.co', '<p>We Are <strong>RingtoneFly.co</strong> Family Here is Some Brief Introdution of Our Team</p>\r\n\r\n<p>In Our Family, We All are Passionate About to Internet And Exploring New Thing Daily This Website: RingtoneFly.co is &nbsp;Piece of Our Hard Work &amp; Made With In-Depth from Our Heart.</p>\r\n\r\n<p>What You Get On RingtoneFly.co?</p>\r\n\r\n<p>RingtoneFly.co Helps you to Download Your Favourite Music Ringtones for Android And iPhone.&nbsp;</p>\r\n\r\n<p>By <strong>RingtoneFly.co...</strong></p>'),
(611, 'About Us', 'RingtoneFly.co', '<p>We Are <strong>RingtoneFly.co</strong> Family Here is Some Brief Introdution of Our Team</p>\r\n\r\n<p>In Our Family, We All are Passionate About to Internet And Exploring New Thing Daily This Website: RingtoneFly.co is &nbsp;Piece of Our Hard Work &amp; Made With In-Depth from Our Heart.</p>\r\n\r\n<p>What You Get On RingtoneFly.co?</p>\r\n\r\n<p>RingtoneFly.co Helps you to Download Your Favourite Music Ringtones for Android And iPhone.&nbsp;</p>\r\n\r\n<p>By <strong>RingtoneFly.co...</strong></p>');

-- --------------------------------------------------------

--
-- Table structure for table `config_category`
--

CREATE TABLE `config_category` (
  `id` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `sortable_id` int(11) DEFAULT NULL,
  `title_id` int(11) DEFAULT NULL,
  `meta_tag` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `config_category`
--

INSERT INTO `config_category` (`id`, `created_at`, `updated_at`, `name`, `slug`, `page_id`, `sortable_id`, `title_id`, `meta_tag`) VALUES
(3, '2021-06-06 16:37:42.741702', '2021-06-06 16:42:41.703728', 'Gujarati Ringtones', 'gujarati-ringtones', 19, NULL, 19, '<meta name=\"description\" content=\" Download Gujarati Ringtone  #1 Trending New Mp3 Or M4r Ringtones Popular Gujarati Ringtones - New Mp3 Ringtone Download Now 2021!\" />\r\n<meta name=\"keywords\" content=\"Gujarati ringtones, Gujarati Mp3 ringtones,  Mp3 Gujarati Ringtone\">'),
(4, '2021-06-15 15:10:49.905218', '2021-06-15 15:10:49.905259', 'Rajasthani Ringtones', 'rajasthani-ringtones', 64, NULL, 64, '<meta name=\"description\" content=\"Download Rajasthani Ringtone #1 Trending New Mp3 Or M4r Ringtones Popular Rajasthani Ringtones - New Mp3 Marwadi Ringtones Download Now 2021!\" />\r\n<meta name=\"keywords\" content=\" Rajasthani Ringtones, New Rajasthani Ringtones Download, Mp3 Rajasthani Ringtones, Rajasthani Mp3 Ringtones\">'),
(5, '2021-06-19 14:15:45.342776', '2021-06-19 14:15:45.342818', 'iPhone Ringtones', 'iphone-ringtones', 80, NULL, 80, '<meta name=\"description\" content=\"Download iPhone Ringtones #1 Trending New Mp3 Ringtones Popular iPhone Ringtones - New Mp3 Ringtone Download Now 2021! \" />\r\n<meta name=\"keywords\" content=\"iPhone Ringtone, iPhone Ringtone Download, Download iPhone Ringtone, iPhone Ringtone Mp3 Download, Apply iPhone Ringtone, Mp3 Ringtone For iPhone, iPhone Ringtone for Mp3, Apple iPhone Ringtone, iPhone Ringtone in Mp3, iPhone Ringing tone \">'),
(6, '2021-06-26 13:12:11.460303', '2021-06-26 13:12:11.460343', 'Krishna Ringtones', 'krishna-ringtones', 118, NULL, 118, '<meta name=\"description\" content=\"Download Krishna Ringtones  #1 Trending Krishna Flute Ringtones - New Mp3 or M4r Popular Ringtones Download Now for iPhone And Android 2021!\" />\r\n<meta name=\"keywords\" content=\" Krishna Ringtones , New Krishna Ringtones  Download, Krishna Ringtone, Krishna Flute Ringtones, Mp3 Krishna Ringtones, Krishna  Mp3 Ringtones\">'),
(7, '2021-07-16 12:04:27.952790', '2021-07-16 12:04:27.952829', 'Telugu Ringtones', 'telugu-ringtones', 150, NULL, 150, '<meta name=\"description\" content=\"Download Telugu Ringtones  #1 Trending Telugu Love Ringtones - New Mp3 or M4r Popular Ringtones Download Now for iPhone And Android 2021!\" />\r\n<meta name=\"keywords\" content=\"Telugu Ringtones , New Telugu Ringtones  Download, Telugu Ringtone, Ringtones Telugu, Mp3 Telugu Ringtones, Telugu Love Ringtones, Mp3 Ringtones, M4r Ringtones\">'),
(8, '2021-08-03 12:41:33.858318', '2021-08-03 12:42:59.526888', 'Tamil Ringtones', 'tamil-ringtones', 172, NULL, 172, '<meta name=\"description\" content=\"Download Tamil Ringtones  #1 Trending Tamil Love Ringtones - New Mp3 or M4r Popular Ringtones Download Now for iPhone And Android 2021!\" />\r\n<meta name=\"keywords\" content=\"Tamil Ringtones , New tamil Ringtones  Download, Tamil Ringtone, Tamil Ringtones Cut Songs, Best Tamil Ringtones, Tamil Mp3 Ringtone Download,  Mp3 Tamil Ringtones, Tamil Love Ringtones, Mp3 Ringtones, M4r Ringtones\">'),
(9, '2021-08-27 11:06:03.168533', '2021-08-27 11:06:26.351565', 'Punjabi Ringtones', 'punjabi-ringtones', 196, NULL, 196, '<meta name=\"description\" content=\"Download Punjabi Ringtones  #1 Trending Punjabi Ringtones Songs - New Mp3 or M4r Popular Ringtones Download Now for iPhone And Android 2021!\" />\r\n<meta name=\"keywords\" content=\"Punjabi Ringtones, New Punjabi Ringtones Download, Punjabi Ringtone, Punjabi Ringtones Songs, Best Punjabi Ringtones, Punjabi Mp3 Ringtone Download,  Mp3 Punjabi Ringtones, Punjabi Love Ringtones, Ringtones, Mp3 Ringtones Download, M4r Ringtones\">'),
(10, '2021-09-25 07:28:29.163962', '2021-09-25 07:28:29.164006', 'Hindi Ringtones', 'hindi-ringtones', 216, NULL, 216, '<meta name=\"description\" content=\"Download Hindi Ringtones  #1 Trending Hindi Ringtones Songs - New Mp3 or M4r Popular Bollywood Ringtones Download Now for iPhone And Android 2021!\" />\r\n<meta name=\"keywords\" content=\"Hindi Ringtones, New Hindi Ringtones Download, Hindi Ringtone, Hindi Ringtones Songs, Best Hindi Ringtones, Hindi Mp3 Ringtone Download,  Mp3 Hindi Ringtones, Bollywood  Hindi Ringtones, Hindi Love Ringtones, Ringtones, Mp3 Ringtones Download, M4r Ringtones\">'),
(11, '2021-10-23 16:20:55.128745', '2021-10-25 06:18:24.913468', 'Mahadev Ringtones', 'mahadev-ringtones', 282, NULL, 282, '<meta name=\"description\" content=\"Mahadev Ringtones Download #1 Trending Shiv Ringtones Songs - New Mp3 or M4r Popular Mahakal Ringtones Download Now for iPhone And Android\" />\r\n<meta name=\"keywords\" content=\" Mahadev Ringtones, Mahadev Ringtones Download, Mahadev Ringtone, Mahakal Ringtones Songs, Best Shiv Ringtones, Lord Shiva Mp3 Ringtone Download,  Mp3 Mahakal Ringtones,  Mahadev New Ringtones, Shiva Mahadev Ringtones, Ringtones, Mp3 Ringtones Download, M4r Ringtones\">');

-- --------------------------------------------------------

--
-- Table structure for table `config_categorypanelplugin`
--

CREATE TABLE `config_categorypanelplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `config_categorypanelplugin`
--

INSERT INTO `config_categorypanelplugin` (`cmsplugin_ptr_id`) VALUES
(29),
(67),
(181),
(223),
(302),
(380),
(468),
(540),
(546),
(584),
(592),
(596),
(600),
(604),
(621),
(627),
(781),
(885),
(967),
(991);

-- --------------------------------------------------------

--
-- Table structure for table `config_categoryplugin`
--

CREATE TABLE `config_categoryplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `config_contactus`
--

CREATE TABLE `config_contactus` (
  `id` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `your_name` varchar(255) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `config_contactus`
--

INSERT INTO `config_contactus` (`id`, `created_at`, `updated_at`, `your_name`, `email_address`, `subject`, `message`) VALUES
(181, '2021-12-09 13:07:46.560951', '2021-12-09 13:07:46.561009', 'Keren Thelma', 'kerenthelma@gmail.com', 'Express Documents Services', 'Visit Our Website https://www.expressdocumentserv.com/ We are a Team of IT Experts specialized in the production of Real and authentic Documents such as Passport, Driving License , Diploma Certificates, PhD\'s, \r\nIELTS Certificate, Bachelor  degrees, NCLEX Certificate, MBA, ID Cards, SS Cards, Associate Certificate, University Certificates, Green Cards, Death Certificate, Master Degree, Working Permits, Visa\'s etc. Contact us on WhatsApp for more information +44 7459 268535. or Email us at... info@expressdocumentserv.com. Visit Our Website   https://www.expressdocumentserv.com/'),
(182, '2021-12-10 00:53:07.958627', '2021-12-10 00:53:07.958697', 'Elane', 'moten.elane@gmail.com', '¿Quiere ganar $ 10,000 cada día? Es realmente posible y así es como:  Invertir en Bitcoin System', '¡Bitcoin System está haciendo rica a la gente! \r\n\r\nMultiplica tus ingresos con la innovadora aplicación de trading.\r\n\r\nQué ofrece Bitcoin System\r\n\r\nCUENTA DEMO\r\n\r\nPara los que acaban de empezar, la cuenta de prueba de Bitcoin System está bien.\r\n \r\nOfrece una comprensión de cómo funciona todo, mostrando la máxima capacidad de la plataforma y permitiendo que el consumidor se familiarice con el entorno de la compra y venta de bitcoins.\r\n\r\n\r\nCONTROL DE LAS OPERACIONES\r\n\r\nBitcoin System tiene una lista de todas las operaciones activas y la utiliza en su beneficio, junto con la capacidad de anticipación. \r\n\r\nEl robot sigue operando de la manera en que fue \"enseñado\" a trabajar, basándose en el perfil de cada cliente. Esto le permite empezar a operar inmediatamente cuando se une.\r\n\r\n\r\nASISTENCIA AL CLIENTE\r\n\r\nEl servicio web de atención al cliente es accesible las 24 horas del día y en muchos idiomas, por no hablar de que la agilidad se supera en cualquier asunto. \r\n\r\nEso hace una gran diferencia con seguridad en términos de ir con una plataforma de negociación de confianza, la aplicación Bitcoin System.\r\n\r\nComience a invertir ahora - http://www.congreso-hidalgo.gob.mx/urls/798667\r\n\r\n\r\nPara ayudar a los operadores a realizar previsiones precisas sobre la demanda de transacciones de criptodivisas, \r\n\r\nlos desarrolladores diseñaron el programa para que fuera como una máquina que utiliza técnicas computacionales.\r\n\r\nDado que proporciona datos útiles para los comerciantes de criptodivisas, los ingenieros han considerado el programa como un gran avance en Bitcoin System. \r\n\r\nObservaría y evaluaría el sector de las criptomonedas y haría proyecciones sobre el éxito potencial de las transacciones. \r\n\r\nLa aplicación funciona con un robot de intercambio autónomo. Cuando se inicia una sesión de intercambio en vivo, se activa el robot.\r\n\r\nAdemás, Bitcoin System es un programa de comercio popular y está destinado a apoyar el comercio de CFD. \r\n\r\nLos inversores no pueden adquirir o vender propiedades financieras o bonos cuando venden CFDs. Los operadores o compradores tendrían que anticiparse a la acción direccional del valor de un activo, \r\n\r\nya que mientras los operadores pronostiquen con precisión el ciclo del mercado, ganarán dinero en las oscilaciones de precios tanto al alza como a la baja de un recurso.\r\n\r\nComience a invertir ahora: http://ilov.us/64923\r\n'),
(183, '2021-12-10 02:14:02.433788', '2021-12-10 02:14:02.433843', 'WilliamTheal', 'jfkok@live.com.au', 'Passive income more $ 7579 per day', 'Change your life and get passive income from $ 6755 per day >>>>>>>>>>>>>>>>>>>>>>>>>>> https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc8Prmu&sa=D&57=70&usg=AFQjCNH_EGwAiiB8MpWHxZlE1C27oj3Rvw <<<<<<<<<<<<<<<<<<<<<<<<'),
(184, '2021-12-10 02:14:03.925740', '2021-12-10 02:14:03.925784', 'WilliamTheal', 'jfkok@live.com.au', 'Passive income more $ 7579 per day', 'Change your life and get passive income from $ 6755 per day >>>>>>>>>>>>>>>>>>>>>>>>>>> https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc8Prmu&sa=D&57=70&usg=AFQjCNH_EGwAiiB8MpWHxZlE1C27oj3Rvw <<<<<<<<<<<<<<<<<<<<<<<<'),
(185, '2021-12-10 02:14:05.500931', '2021-12-10 02:14:05.500972', 'WilliamTheal', 'jfkok@live.com.au', 'Passive income more $ 7579 per day', 'Change your life and get passive income from $ 6755 per day >>>>>>>>>>>>>>>>>>>>>>>>>>> https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc8Prmu&sa=D&57=70&usg=AFQjCNH_EGwAiiB8MpWHxZlE1C27oj3Rvw <<<<<<<<<<<<<<<<<<<<<<<<'),
(186, '2021-12-10 02:14:06.989251', '2021-12-10 02:14:06.989295', 'WilliamTheal', 'jfkok@live.com.au', 'Passive income more $ 7579 per day', 'Change your life and get passive income from $ 6755 per day >>>>>>>>>>>>>>>>>>>>>>>>>>> https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc8Prmu&sa=D&57=70&usg=AFQjCNH_EGwAiiB8MpWHxZlE1C27oj3Rvw <<<<<<<<<<<<<<<<<<<<<<<<'),
(187, '2021-12-10 02:14:10.568018', '2021-12-10 02:14:10.568070', 'WilliamTheal', 'jfkok@live.com.au', 'Passive income more $ 7579 per day', 'Change your life and get passive income from $ 6755 per day >>>>>>>>>>>>>>>>>>>>>>>>>>> https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc8Prmu&sa=D&57=70&usg=AFQjCNH_EGwAiiB8MpWHxZlE1C27oj3Rvw <<<<<<<<<<<<<<<<<<<<<<<<'),
(188, '2021-12-11 02:09:23.080186', '2021-12-11 02:09:23.080244', 'WilliamTheal', 'marcusboman2@spray.se', 'Change your life and get passive income from $ 8667 in a day', 'Confessions of a Bitcoin billionaire or passive income more $ 6997 in a day >>>>>>>>>>>>>>>>>>>>>>>>>>> https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc8Prmu&sa=D&52=59&usg=AFQjCNH_EGwAiiB8MpWHxZlE1C27oj3Rvw <<<<<<<<<<<<<<<<<<<<<<<<'),
(189, '2021-12-11 02:09:24.638327', '2021-12-11 02:09:24.638375', 'WilliamTheal', 'marcusboman2@spray.se', 'Change your life and get passive income from $ 8667 in a day', 'Confessions of a Bitcoin billionaire or passive income more $ 6997 in a day >>>>>>>>>>>>>>>>>>>>>>>>>>> https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc8Prmu&sa=D&52=59&usg=AFQjCNH_EGwAiiB8MpWHxZlE1C27oj3Rvw <<<<<<<<<<<<<<<<<<<<<<<<'),
(190, '2021-12-11 02:09:28.362896', '2021-12-11 02:09:28.362940', 'WilliamTheal', 'marcusboman2@spray.se', 'Change your life and get passive income from $ 8667 in a day', 'Confessions of a Bitcoin billionaire or passive income more $ 6997 in a day >>>>>>>>>>>>>>>>>>>>>>>>>>> https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc8Prmu&sa=D&52=59&usg=AFQjCNH_EGwAiiB8MpWHxZlE1C27oj3Rvw <<<<<<<<<<<<<<<<<<<<<<<<'),
(191, '2021-12-11 02:09:33.716542', '2021-12-11 02:09:33.716591', 'WilliamTheal', 'marcusboman2@spray.se', 'Change your life and get passive income from $ 8667 in a day', 'Confessions of a Bitcoin billionaire or passive income more $ 6997 in a day >>>>>>>>>>>>>>>>>>>>>>>>>>> https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc8Prmu&sa=D&52=59&usg=AFQjCNH_EGwAiiB8MpWHxZlE1C27oj3Rvw <<<<<<<<<<<<<<<<<<<<<<<<'),
(192, '2021-12-11 02:09:35.204223', '2021-12-11 02:09:35.204272', 'WilliamTheal', 'marcusboman2@spray.se', 'Change your life and get passive income from $ 8667 in a day', 'Confessions of a Bitcoin billionaire or passive income more $ 6997 in a day >>>>>>>>>>>>>>>>>>>>>>>>>>> https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc8Prmu&sa=D&52=59&usg=AFQjCNH_EGwAiiB8MpWHxZlE1C27oj3Rvw <<<<<<<<<<<<<<<<<<<<<<<<'),
(193, '2021-12-11 20:58:15.295589', '2021-12-11 20:58:15.295649', 'WilliamTheal', 'selinimiglis@hotmail.se', 'Bitcoin Miiliarder told how he makes money from $ 8696 per day', 'Confessions of a Bitcoin billionaire or passive income from $ 6587 per day >>>>>>>>>>>>>>>>>>>>>>>>>>> https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc8Prmu&sa=D&98=01&usg=AFQjCNH_EGwAiiB8MpWHxZlE1C27oj3Rvw <<<<<<<<<<<<<<<<<<<<<<<<'),
(194, '2021-12-11 20:58:18.189157', '2021-12-11 20:58:18.189201', 'WilliamTheal', 'selinimiglis@hotmail.se', 'Bitcoin Miiliarder told how he makes money from $ 8696 per day', 'Confessions of a Bitcoin billionaire or passive income from $ 6587 per day >>>>>>>>>>>>>>>>>>>>>>>>>>> https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc8Prmu&sa=D&98=01&usg=AFQjCNH_EGwAiiB8MpWHxZlE1C27oj3Rvw <<<<<<<<<<<<<<<<<<<<<<<<'),
(195, '2021-12-11 20:58:19.768965', '2021-12-11 20:58:19.769009', 'WilliamTheal', 'selinimiglis@hotmail.se', 'Bitcoin Miiliarder told how he makes money from $ 8696 per day', 'Confessions of a Bitcoin billionaire or passive income from $ 6587 per day >>>>>>>>>>>>>>>>>>>>>>>>>>> https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc8Prmu&sa=D&98=01&usg=AFQjCNH_EGwAiiB8MpWHxZlE1C27oj3Rvw <<<<<<<<<<<<<<<<<<<<<<<<'),
(196, '2021-12-11 20:58:24.651387', '2021-12-11 20:58:24.651429', 'WilliamTheal', 'selinimiglis@hotmail.se', 'Bitcoin Miiliarder told how he makes money from $ 8696 per day', 'Confessions of a Bitcoin billionaire or passive income from $ 6587 per day >>>>>>>>>>>>>>>>>>>>>>>>>>> https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc8Prmu&sa=D&98=01&usg=AFQjCNH_EGwAiiB8MpWHxZlE1C27oj3Rvw <<<<<<<<<<<<<<<<<<<<<<<<'),
(197, '2021-12-11 20:58:27.690518', '2021-12-11 20:58:27.690569', 'WilliamTheal', 'selinimiglis@hotmail.se', 'Bitcoin Miiliarder told how he makes money from $ 8696 per day', 'Confessions of a Bitcoin billionaire or passive income from $ 6587 per day >>>>>>>>>>>>>>>>>>>>>>>>>>> https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc8Prmu&sa=D&98=01&usg=AFQjCNH_EGwAiiB8MpWHxZlE1C27oj3Rvw <<<<<<<<<<<<<<<<<<<<<<<<'),
(198, '2021-12-13 20:55:55.737976', '2021-12-13 20:55:55.738044', 'WilliamTheal', 'jullan_meyer@yahoo.se', 'Change your life and get passive income more $ 6658 per day', 'Income from one investment more $ 5875 per day >>>>>>>>>>>>>>>>>>>>>>>>>>> https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc8Prmu&sa=D&65=37&usg=AFQjCNH_EGwAiiB8MpWHxZlE1C27oj3Rvw <<<<<<<<<<<<<<<<<<<<<<<<'),
(199, '2021-12-13 20:55:57.402918', '2021-12-13 20:55:57.402962', 'WilliamTheal', 'jullan_meyer@yahoo.se', 'Change your life and get passive income more $ 6658 per day', 'Income from one investment more $ 5875 per day >>>>>>>>>>>>>>>>>>>>>>>>>>> https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc8Prmu&sa=D&65=37&usg=AFQjCNH_EGwAiiB8MpWHxZlE1C27oj3Rvw <<<<<<<<<<<<<<<<<<<<<<<<'),
(200, '2021-12-13 20:55:59.874410', '2021-12-13 20:55:59.874461', 'WilliamTheal', 'jullan_meyer@yahoo.se', 'Change your life and get passive income more $ 6658 per day', 'Income from one investment more $ 5875 per day >>>>>>>>>>>>>>>>>>>>>>>>>>> https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc8Prmu&sa=D&65=37&usg=AFQjCNH_EGwAiiB8MpWHxZlE1C27oj3Rvw <<<<<<<<<<<<<<<<<<<<<<<<'),
(201, '2021-12-13 20:56:02.776976', '2021-12-13 20:56:02.777049', 'WilliamTheal', 'jullan_meyer@yahoo.se', 'Change your life and get passive income more $ 6658 per day', 'Income from one investment more $ 5875 per day >>>>>>>>>>>>>>>>>>>>>>>>>>> https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc8Prmu&sa=D&65=37&usg=AFQjCNH_EGwAiiB8MpWHxZlE1C27oj3Rvw <<<<<<<<<<<<<<<<<<<<<<<<'),
(202, '2021-12-13 20:56:05.716587', '2021-12-13 20:56:05.716636', 'WilliamTheal', 'jullan_meyer@yahoo.se', 'Change your life and get passive income more $ 6658 per day', 'Income from one investment more $ 5875 per day >>>>>>>>>>>>>>>>>>>>>>>>>>> https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc8Prmu&sa=D&65=37&usg=AFQjCNH_EGwAiiB8MpWHxZlE1C27oj3Rvw <<<<<<<<<<<<<<<<<<<<<<<<'),
(203, '2021-12-15 06:29:19.139187', '2021-12-15 06:29:19.139335', 'Gopal', 'gm1851298@gmail.com', 'Gopal manna', 'Gopal'),
(204, '2021-12-15 08:09:40.749080', '2021-12-15 08:09:40.749130', 'Gopal Manna', 'gm1851298@gmail.com', 'Gopal', 'Manna'),
(205, '2021-12-15 08:13:52.600448', '2021-12-15 08:13:52.600520', 'Gopal Manna', 'gm1851298@gmail.com', '7074141820', 'Manna'),
(206, '2021-12-15 13:58:52.909182', '2021-12-15 13:58:52.909240', 'Mike Raleigh\r\n', 'no-replyMaw@gmail.com', 'DA60+ for ringtonefly.co with -35%', 'Howdy \r\n \r\nDo you want a quick boost in ranks and sales for your website? \r\nHaving a high DA score, always helps \r\n \r\nApply this -35% code ( MEGAPROMOTER ) while getting your ringtonefly.co to have a DA above 60 points in Moz with us today and reap the benefits of such a great feat at an affordable rate. \r\n \r\n \r\n \r\nSee our offers here: \r\nhttps://www.strictlydigital.net/product/moz-da50-seo-plan/ \r\nhttps://www.strictlydigital.net/product/moz-da60-seo-plan/ \r\n \r\nNEW: ahrefs DR70 is now possible: \r\nhttps://www.strictlydigital.net/product/ahrefs-seo-plan/ \r\n \r\n \r\nThank you \r\nMike Raleigh\r\n \r\nmike@strictlydigital.net'),
(207, '2021-12-15 23:41:57.795847', '2021-12-15 23:41:57.795906', 'WilliamTheal', 'oliver2000@hotmail.se', 'REGISTER NOW and get from $ 5989 per day', 'Register, press one button and get passive income from $ 6856 in a day >>>>>>>>>>>>>>>>>>>>>>>>>>> http://www.google.com/url?q=http%3A%2F%2Fgo.nirulugo.com%2F0bnl&sa=D&46=48&usg=AFQjCNErknOO8eaNhDQCQiKaUi6wsp9KfA <<<<<<<<<<<<<<<<<<<<<<<<'),
(208, '2021-12-15 23:42:00.720943', '2021-12-15 23:42:00.720992', 'WilliamTheal', 'oliver2000@hotmail.se', 'REGISTER NOW and get from $ 5989 per day', 'Register, press one button and get passive income from $ 6856 in a day >>>>>>>>>>>>>>>>>>>>>>>>>>> http://www.google.com/url?q=http%3A%2F%2Fgo.nirulugo.com%2F0bnl&sa=D&46=48&usg=AFQjCNErknOO8eaNhDQCQiKaUi6wsp9KfA <<<<<<<<<<<<<<<<<<<<<<<<'),
(209, '2021-12-15 23:42:02.327235', '2021-12-15 23:42:02.327298', 'WilliamTheal', 'oliver2000@hotmail.se', 'REGISTER NOW and get from $ 5989 per day', 'Register, press one button and get passive income from $ 6856 in a day >>>>>>>>>>>>>>>>>>>>>>>>>>> http://www.google.com/url?q=http%3A%2F%2Fgo.nirulugo.com%2F0bnl&sa=D&46=48&usg=AFQjCNErknOO8eaNhDQCQiKaUi6wsp9KfA <<<<<<<<<<<<<<<<<<<<<<<<'),
(210, '2021-12-15 23:42:04.958988', '2021-12-15 23:42:04.959032', 'WilliamTheal', 'oliver2000@hotmail.se', 'REGISTER NOW and get from $ 5989 per day', 'Register, press one button and get passive income from $ 6856 in a day >>>>>>>>>>>>>>>>>>>>>>>>>>> http://www.google.com/url?q=http%3A%2F%2Fgo.nirulugo.com%2F0bnl&sa=D&46=48&usg=AFQjCNErknOO8eaNhDQCQiKaUi6wsp9KfA <<<<<<<<<<<<<<<<<<<<<<<<'),
(211, '2021-12-15 23:42:06.441916', '2021-12-15 23:42:06.441971', 'WilliamTheal', 'oliver2000@hotmail.se', 'REGISTER NOW and get from $ 5989 per day', 'Register, press one button and get passive income from $ 6856 in a day >>>>>>>>>>>>>>>>>>>>>>>>>>> http://www.google.com/url?q=http%3A%2F%2Fgo.nirulugo.com%2F0bnl&sa=D&46=48&usg=AFQjCNErknOO8eaNhDQCQiKaUi6wsp9KfA <<<<<<<<<<<<<<<<<<<<<<<<'),
(212, '2021-12-16 23:25:05.238595', '2021-12-16 23:25:05.238649', 'WilliamTheal', 'natursauerteig@online.de', 'Passive income from $ 5579 in a day', 'Fast income from one investment from $ 7797 per day >>>>>>>>>>>>>>>>>>>>>>>>>>> http://www.google.com/url?q=http%3A%2F%2Fgo.nirulugo.com%2F0bnl&sa=D&58=48&usg=AFQjCNErknOO8eaNhDQCQiKaUi6wsp9KfA <<<<<<<<<<<<<<<<<<<<<<<<'),
(213, '2021-12-16 23:25:07.879378', '2021-12-16 23:25:07.879440', 'WilliamTheal', 'natursauerteig@online.de', 'Passive income from $ 5579 in a day', 'Fast income from one investment from $ 7797 per day >>>>>>>>>>>>>>>>>>>>>>>>>>> http://www.google.com/url?q=http%3A%2F%2Fgo.nirulugo.com%2F0bnl&sa=D&58=48&usg=AFQjCNErknOO8eaNhDQCQiKaUi6wsp9KfA <<<<<<<<<<<<<<<<<<<<<<<<'),
(214, '2021-12-16 23:25:10.425170', '2021-12-16 23:25:10.425216', 'WilliamTheal', 'natursauerteig@online.de', 'Passive income from $ 5579 in a day', 'Fast income from one investment from $ 7797 per day >>>>>>>>>>>>>>>>>>>>>>>>>>> http://www.google.com/url?q=http%3A%2F%2Fgo.nirulugo.com%2F0bnl&sa=D&58=48&usg=AFQjCNErknOO8eaNhDQCQiKaUi6wsp9KfA <<<<<<<<<<<<<<<<<<<<<<<<'),
(215, '2021-12-16 23:25:11.981074', '2021-12-16 23:25:11.981127', 'WilliamTheal', 'natursauerteig@online.de', 'Passive income from $ 5579 in a day', 'Fast income from one investment from $ 7797 per day >>>>>>>>>>>>>>>>>>>>>>>>>>> http://www.google.com/url?q=http%3A%2F%2Fgo.nirulugo.com%2F0bnl&sa=D&58=48&usg=AFQjCNErknOO8eaNhDQCQiKaUi6wsp9KfA <<<<<<<<<<<<<<<<<<<<<<<<'),
(216, '2021-12-16 23:25:15.413440', '2021-12-16 23:25:15.413513', 'WilliamTheal', 'natursauerteig@online.de', 'Passive income from $ 5579 in a day', 'Fast income from one investment from $ 7797 per day >>>>>>>>>>>>>>>>>>>>>>>>>>> http://www.google.com/url?q=http%3A%2F%2Fgo.nirulugo.com%2F0bnl&sa=D&58=48&usg=AFQjCNErknOO8eaNhDQCQiKaUi6wsp9KfA <<<<<<<<<<<<<<<<<<<<<<<<'),
(217, '2021-12-17 23:37:13.137752', '2021-12-17 23:37:13.137807', 'WilliamTheal', 'j.rebbert@t-online.de', 'Quit your job and get passive income more $ 8686 per day', 'Bitcoin Miiliarder told how he makes money from $ 6757 in a day >>>>>>>>>>>>>>>>>>>>>>>>>>> http://www.google.com/url?q=http%3A%2F%2Fgo.nirulugo.com%2F0bnl&sa=D&48=83&usg=AFQjCNErknOO8eaNhDQCQiKaUi6wsp9KfA <<<<<<<<<<<<<<<<<<<<<<<<'),
(218, '2021-12-17 23:37:14.610741', '2021-12-17 23:37:14.610785', 'WilliamTheal', 'j.rebbert@t-online.de', 'Quit your job and get passive income more $ 8686 per day', 'Bitcoin Miiliarder told how he makes money from $ 6757 in a day >>>>>>>>>>>>>>>>>>>>>>>>>>> http://www.google.com/url?q=http%3A%2F%2Fgo.nirulugo.com%2F0bnl&sa=D&48=83&usg=AFQjCNErknOO8eaNhDQCQiKaUi6wsp9KfA <<<<<<<<<<<<<<<<<<<<<<<<'),
(219, '2021-12-17 23:37:16.170651', '2021-12-17 23:37:16.170694', 'WilliamTheal', 'j.rebbert@t-online.de', 'Quit your job and get passive income more $ 8686 per day', 'Bitcoin Miiliarder told how he makes money from $ 6757 in a day >>>>>>>>>>>>>>>>>>>>>>>>>>> http://www.google.com/url?q=http%3A%2F%2Fgo.nirulugo.com%2F0bnl&sa=D&48=83&usg=AFQjCNErknOO8eaNhDQCQiKaUi6wsp9KfA <<<<<<<<<<<<<<<<<<<<<<<<'),
(220, '2021-12-17 23:37:18.928736', '2021-12-17 23:37:18.928791', 'WilliamTheal', 'j.rebbert@t-online.de', 'Quit your job and get passive income more $ 8686 per day', 'Bitcoin Miiliarder told how he makes money from $ 6757 in a day >>>>>>>>>>>>>>>>>>>>>>>>>>> http://www.google.com/url?q=http%3A%2F%2Fgo.nirulugo.com%2F0bnl&sa=D&48=83&usg=AFQjCNErknOO8eaNhDQCQiKaUi6wsp9KfA <<<<<<<<<<<<<<<<<<<<<<<<'),
(221, '2021-12-17 23:37:20.408950', '2021-12-17 23:37:20.408993', 'WilliamTheal', 'j.rebbert@t-online.de', 'Quit your job and get passive income more $ 8686 per day', 'Bitcoin Miiliarder told how he makes money from $ 6757 in a day >>>>>>>>>>>>>>>>>>>>>>>>>>> http://www.google.com/url?q=http%3A%2F%2Fgo.nirulugo.com%2F0bnl&sa=D&48=83&usg=AFQjCNErknOO8eaNhDQCQiKaUi6wsp9KfA <<<<<<<<<<<<<<<<<<<<<<<<');

-- --------------------------------------------------------

--
-- Table structure for table `config_contactusplugin`
--

CREATE TABLE `config_contactusplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `tagline` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `config_contactusplugin`
--

INSERT INTO `config_contactusplugin` (`cmsplugin_ptr_id`, `title`, `tagline`) VALUES
(35, 'Contact Us', 'Feel free to get in touch with me with anything related to Ringtone Download or you can just say Hi. I will get back to you as soon as possible.'),
(464, 'Contact Us', 'Feel free to get in touch with me with anything related to Ringtone Download or you can just say Hi. I will get back to you as soon as possible.');

-- --------------------------------------------------------

--
-- Table structure for table `config_containerplugin`
--

CREATE TABLE `config_containerplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` longtext NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `config_containerplugin`
--

INSERT INTO `config_containerplugin` (`cmsplugin_ptr_id`, `title`, `content`, `updated_at`) VALUES
(26, NULL, '<p>Everyone likes to listen to music and everyone likes to listen to the ringtone of their favorite music around them and in this craze of such ringtones, those people get involved in the search of good and new <strong>ringtones</strong> to download, but what is the use unless someone You won&#39;t be able to download the ringtone until the ringtone group is found.</p>\r\n\r\n<p>The solution to this problem is brought to you by our ringtonefly.co, ringtonefly is the modern ringtone collection site of today&#39;s era, which brings you the best collection of ringtones.</p>\r\n\r\n<p>On Ringtone Fly you have a ringtone collection of more than <strong>500K</strong>, in which you will get all kinds of ringtones that you can download in just one click. You can listen to the preview of every ringtone here, which will make it easy for you to download the <strong>best ringtones</strong>.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Features of RingtoneFly.co</span></h2>\r\n\r\n<p>Here are Some Super Cool Features of Ringtone Fly That Easy your Life During <strong>Ringtone Download</strong> So Just Stay Tuned With Our Mind Blown Ringtone Downloading Site. We Provide what Which Best for you So Make Trust in Us Enjoy Your Heaven Ride With RingtoneFly. Now here is Some Peaceful RingtoneFly.co&nbsp; Features.&nbsp;</p>\r\n\r\n<p><strong>New Ringtone:</strong> Every Want&rsquo;s to Up to Date with Modern Generation Which Means you have to&nbsp; Update yourself With New Ringtone That Infuse Infinity Energy in Yours.&nbsp; So Go through New Ringtone Collection And Change The World With Music</p>\r\n\r\n<p><strong>Popular Ringtone:</strong> This is Another Fantastic Feature of RingtoneFly, That is RingtoneFly Having Popular Ringtone Section on Top of the Homepage in Which All Time Most Popular Ringtone Listed That Help You very Much to Explore New Feeling.</p>\r\n\r\n<p><strong>Top 100 Trending Ringtone:</strong> On Top Section of Homepage Having Best Top 100 Trending Ringtone That Download Most Download And Played By Users So It Help you to Drill down Great Choice.</p>\r\n\r\n<p><strong>Pre- Ready Ringtone Preview:</strong> This is the Most Requested And Lovely Feature RingtoneFly That is you Can Play Ringtone in Preview&nbsp; Which Means you can Play and Listen to Which One Best for you, Without Entering in Any Particular Ringtone.</p>\r\n\r\n<p>After Choose the Best one You Can Download it Easily with One Click.</p>\r\n\r\n<p><strong>Most Downloaded Ringtone:</strong> Here is One Another Interesting Feature of RingtoneFly that is the Most Downloading Ringtone Label. That Means you Can estimate Which One Ringtone Highly Download By Users And Which One You Should Try Out.</p>\r\n\r\n<p><strong>Choose Best Ringtone With Category Map:</strong> It is the Most Awaiting Feature of RingtoneFly.co That is Easy Category Explorer.</p>\r\n\r\n<p>Here is Super Personalized Ringtone Collection That Made easy your Life, Here User Can Use Category Map to Choose their Favorite Ringtone Category, And also By Just Clicking On That&nbsp; They Can Easily Jump Direct to Their Favorite Ringtone Collection Which one Want to Download.&nbsp;</p>\r\n\r\n<p><strong>Add to Favorite List:</strong> Here RingtoneFly Bring Amazing New Feature That is Giving Heart to your Favorite Ringtone It Will Gives you More Better Feeling And Direct below from you can Download Ringtone in Mp3 (Android) &amp; M4r (iPhone) in One-Click.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Popular Ringtone Category</span></h2>\r\n\r\n<p>Our Website RingtoneFly.co Having Largest Collection of New Mp3 Ringtones Upto 500K Ringtones. This is So Huge Collection That Can Help to Find the Best One Ringtone. Let&rsquo;s Get Start With Popular Ringtone Category.</p>\r\n\r\n<p><strong>iPhone Ringtone:</strong>&nbsp; Every iPhone Lover Wants to Set an iPhone ringtone instead of his Existing Mobile Ringtone, and for that, He wants an iPhone ringtone. So here is the Solution We Done Well Collection for iPhone Ringtones for All iPhone Models.</p>\r\n\r\n<p><strong>Hindi Ringtones:</strong> Almost Every Indian Want to Listen to Hindi Ringtone as Their Default Mobile Ringtone That Means it Most Requested Ringtone&nbsp; Category So Here We Collected Some Golden Pieces of Hindi Ringtone.</p>\r\n\r\n<p><strong>Telugu Ringtone:</strong> In 21st Century Most Popular Movie Industry is Tollywood Having Huge Fan Following in India That Why Most Of Fans Want to Download the Telugu Ringtone So also we Collected this Piece Here.</p>\r\n\r\n<p><strong>Tamil Ringtone:</strong> This Another Part Of Tollywood That Also Knows as Kollywood So That Why It is Another Trending Ringtone Category That Demanded By Users.</p>\r\n\r\n<p>These All Ringtone Categories Almost Update once in Week. So Don&rsquo;t Worry Just Enjoy And Feel The World.&nbsp;</p>\r\n\r\n<p>Above We Discussed Just Small Piece of Ringtone Category For More Check Top Section. On RingtoneFly You Will Get More Than 50+ Ringtone Categories in Which Almost We Shared Up to 500K Ringtone. Just Go through With Navigation Bar Their Weekly Update New Ringtone Category.</p>\r\n\r\n<p>Now, Don&rsquo;t Waste Time And Drill Down Whole Site.</p>\r\n\r\n<p><strong>Quick Guide:</strong>&nbsp;How to Download Ringtones: Here Are Some Basic Guide for Downloading Ringtone From RingtoneFly.co&nbsp;</p>\r\n\r\n<p><strong>1 STEP:-</strong> Listen to Preview Of Ringtones And Choose Best One From the Whole&nbsp; Collection&nbsp;</p>\r\n\r\n<p><strong>2 STEP:-</strong> Now Just Click On Ringtone Title That Showed in Green Color And Now You Will Entered in New Page That Call&rsquo;s Player Page in This Page You Can Dow Many Do Thing Like Download Your Ringtone That You Listened in Preview, Give Heart to That Ringtone, Share That Tune Via WhatsApp, Instagram, Facebook.. etc.&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p><strong>Play Preview &amp; Download:</strong> Click On Player Button to Play Direct Ringtone Even With Out Entering in any page Player Page. And Download That Ringtone With One Click Features,&nbsp;Download File Available For iPhone &amp; Android</p>\r\n\r\n<p><strong>FAQ:</strong></p>\r\n\r\n<p>Q.1 Is This Website Safe for My Device?</p>\r\n\r\n<p>Ans. Absolutely Safe for Your Device And It No Harm to your Device.</p>\r\n\r\n<p>Q.2 How do I Download Ringtone?</p>\r\n\r\n<p>Ans. On Google Just Search RingtoneFly It Will Shows You WonderFull Site That Name is RingtoneFly.co</p>\r\n\r\n<p>Q3. Is RingtoneFly Provide Free Ringtone?</p>\r\n\r\n<p>Ans. Yes! Absolutely Free Service.</p>\r\n\r\n<p>Q4. Is There Any Trending Ringtone Collection That We Can Download?</p>\r\n\r\n<p>Ans. Yes Here is the <strong>Top #100 Trending Ringtones</strong> Collection That Shows on Top Site.</p>\r\n\r\n<p>Gift from Our Heart: In the Last Few Words We Having a Great Surprise for You That is We Launch Soon a Mobile Application About to RingtoneFly Where You Can Download And Upload Ringtone And Grab Likes On It That Means Every Interact With Your Ringtones So Stay Tuned With Us.</p>\r\n\r\n<p>From In-Depth of Our heart By <strong>RingtoneFly.co</strong></p>', '2021-09-18 08:07:16.790215'),
(75, NULL, '<p>Do You Want to Download <strong>Gujarati Ringtone</strong>? Then You are in The Correct Place for Downloading Gujarati Ringtones, Because We Are One Only That Provides you High Audio Quality Gujarati Ringtones for Fantasy feeling &amp; also for your Gujarati Nature.</p>\r\n\r\n<p>We Know What is Right for you because That Our Team Belongs to Gujarat And We Know Taste Gujarati&rsquo;s Peoples. Enjoy ringtones and Ride your fantasy world.</p>\r\n\r\n<p>We sincerely hope that after listening to this tremendous collection of Music Ringtone, you will definitely share it on your social media.<br />\r\n&nbsp;<br />\r\nSo without any delay listen and download this sweet collection of ringtones.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Best Gujarati Ringtone Collection of Top Singers</span></h2>\r\n\r\n<p>Here We have Prepared the Top <strong>Gujarati Ringtones</strong> of Popular Gujarati Singers, So That You Can Download The Best Ringtones.</p>\r\n\r\n<p>Here Are Some Popular Singers: SANJAY Oza, Parth Chaudhary, Geeta&nbsp;Rabari, Vijay Suvada, Jighnesh Kaviraj, Kinjal Dave, Sachin &amp; Jigar, Aishwarya Majumdar.</p>\r\n\r\n<p>Their Best Ringtones: Dhun Laagi, Vhalam Aavo Ne, Sapna Vinani Raat, Pehla Varsad, Gomda Nu Dil, Gayatri Mantra, Radha Ne Shyam Mali Jashe, Mahelo Ni Rani, Leri Lala,etc..</p>\r\n\r\n<p>Here Is The Most Await Collection <strong>Gujarati Ringtones</strong>.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Top User Rated Gujarati Ringtones</span></h2>\r\n\r\n<p>Every category of our site RingtoneFly.co will show you top-rated ringtones like the <a href=\"https://www.ringtonefly.co/gujarati-ringtones/\">Gujarati ringtones</a> category so that you will be able to download the best ringtones easily,</p>\r\n\r\n<p>You can also help the user by rating your favorite Gujarati ringtone.</p>\r\n\r\n<ul>\r\n	<li>Dholi Dhol Re Vagad - Gujarati Ringtone</li>\r\n	<li>Dholida - Gujarati Ringtone</li>\r\n	<li>Bairu Gayu Piyar Ringtone</li>\r\n	<li>Eklo &nbsp;Rabari - Gujarati Ringtone</li>\r\n	<li>Baby Ne Bonvita Pivdavu Ringtone</li>\r\n	<li>Bewafa Tane Dur Thi Salam</li>\r\n	<li>Char Bangdi Vali Audi Ringtone</li>\r\n	<li>Mohabbat Khape Ringtone</li>\r\n	<li>Gomda Nu Dil Ringtone</li>\r\n	<li>Jay Dwarkadhish Gujarati ringtone</li>\r\n</ul>\r\n\r\n<p>Check Out All Above One By One And Feel The Love &amp; Sweetness of Gujarati Ringtone</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Download Popular Gujarati Ringtone</span></h2>\r\n\r\n<p>In Gujarati Ringtone&rsquo;s Category, We Share Almost Up to 250+ Ringtone That is So Huge for One Single Category in Which from You Downloading Popular Ringtone Just Check Highest Downloaded Ringtone And It Will Easy Your Work for Searching Popular Ringtone</p>\r\n\r\n<p>Some Popular Gujarati &nbsp;Ringtone That Collected With Our Heart.</p>\r\n\r\n<ul>\r\n	<li>Ek Vaar Shyam Tame Radha Ne - Ringtone</li>\r\n	<li>Rudi Rite Jivo Ruda Karjo - Ringtone</li>\r\n	<li>Jodi Shyam ne Radha Ni - Ringtone</li>\r\n	<li>Tu Mari Nai To Koini Nai- Ringtone</li>\r\n	<li>Leri Lala - Ringtone</li>\r\n</ul>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"font-size:24px\">Type of Gujarati Ringtone</span></h3>\r\n\r\n<p>Below we have shared with you some famous Genre of Gujarati ringtones which you can see above as ringtones.</p>\r\n\r\n<ul>\r\n	<li>Gujarati Bhakti Ringtone</li>\r\n	<li>Gujarati Songs Ringtones</li>\r\n	<li>Gujarati Love Ringtone</li>\r\n	<li>Sad Ringtone in Gujarati</li>\r\n	<li>Happy Gujarati Ringtone</li>\r\n</ul>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Download Gujarati Ringtone for Android &amp; iPhone</span></h2>\r\n\r\n<p>You can download Gujarati ringtones for both <strong>android and iPhone</strong> from here in both formats Mp3 and M4r. you will show two buttons below the fancy ringtone player box in which you can select according to your device and enjoy with your Favorite ringtone.</p>\r\n\r\n<p>The only means of having this feature is that we want to give our users a completely satisfied and better user experience.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Add Gujarati Ringtones to your Favorite List</span></h2>\r\n\r\n<p>This is Another Fantastic Feature That Comes from RingtoneFly.co That is Add Heart to your Favorite Ringtone That Will Shows on Fancy Ringtone Player Box&rsquo;s Bottom,&nbsp;By Doing This Users Like Yours Can Predict Which One Mostly Liked By Ringtone Lovers.</p>\r\n\r\n<p>That Sound Cool! Then Just Go Through With This.</p>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"font-size:24px\">One-Click Ringtones&nbsp;Download Feature Available!</span></h3>\r\n\r\n<p>Yes! It is True that You Can Download Any Gujarati Ringtones in Just One Click, which Means By Just a Single Click On Download Button Your Ringtone Added to your download Manager &amp; Notification Panel.&nbsp;</p>\r\n\r\n<p>We know that there are many such websites on the internet that keep showing redirects &amp; Popups to the user from one window to another. To overcome this problem our site <a href=\"https://www.ringtonefly.co/\">RingtoneFly.co</a> has added this feature. Which the user does not have any problem and they can feel the music with their soul.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Quik Sharing! Options for Gujarati Ringtone</span></h2>\r\n\r\n<p>You will find all the features on our site RingtoneFly.co which you have not seen before on any other site like we have given you a quick sharing option to share your favorite Gujarati ringtone, so that you can share on WhatsApp, Facebook, Twitter &amp; Telegram, it Will share directly from our site.&nbsp;<br />\r\nBy sharing these Gujarati ringtones with your friends, Family &amp; Relatives, provide them with the Best Gujarati ringtones.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">About Gujarati Ringtones</span></h2>\r\n\r\n<p>We all know that the culture of Gujarat and Gujarati people has become very famous in the last few years. The primary language of Gujarat is Gujarati, due to which it is commonly spoken there in conversation.&nbsp;</p>\r\n\r\n<p>The Biggest Achievement of Gujarat is its culture which is famous all over the country.</p>\r\n\r\n<p>Gujarati brothers are also very good in Singing Music, some of whom are famous musicians like Geeta Rabari, Kinjal Dave, Jignesh Kaviraj, etc., whose melody is heard in every voice when one gets addicted to this sweet music.&nbsp;</p>\r\n\r\n<p>To keep this melody alive, we have come up with Gujarati ringtones for you. By downloading these Gujarati Ringtones, you can listen to the sound of this music as your mobile ringtone every moment.</p>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"font-size:24px\">Gift From Our Heart!</span></h3>\r\n\r\n<p>We have also prepared a special gift for all of you, that is we are going to launch our mobile application soon,&nbsp;</p>\r\n\r\n<p>in which there will be a special <strong>Gujarati ringtones</strong> category for Gujarati brothers so that you can change your mobile ringtone anytime directly from our mobile application. And you will get to see even more awesome features.</p>\r\n\r\n<p>In-Depth from our Heart By <strong>RingtoneFly.co<span style=\"font-size:8px\"><img alt=\"heart\" src=\"https://www.ringtonefly.co/static/ckeditor/ckeditor/plugins/smiley/images/heart.png\" style=\"height:15px; width:15px\" title=\"heart\" /></span></strong></p>', '2021-08-27 12:19:20.746933'),
(184, NULL, '<p>Do You Want to Download <strong>Rajasthani Ringtones</strong>? Then You are on The Right Place to Download Rajasthani Ringtones or Marwadi Ringtones, Because We Are One Only That Provides you High Audio Quality Rajasthani Ringtones for feeling &amp; also for your Rajsthani Nature.</p>\r\n\r\n<p>We Really Know Which One Ringtones Collection Best For Your just&nbsp;Because of That Our Team Belongs to Rajasthan And We Know What Types of Ringtone Do You Love So That Why Just Stay Calm With Us &amp; Get Amazing Ride of <strong>Rajastani Ringtones</strong>.</p>\r\n\r\n<p>And after listening to this tremendous collection of Rajasthani Ringtone, you will definitely share it on your social media Also With Your Friends And Family.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Best Rajasthani Ringtones Collection of Top Singers</span></h2>\r\n\r\n<p>Some Most Popular Rajasthani Singers; Mame Khan, Hemlata, Rapperiya Balam, Mangal Singh, Mirabai, Sultan Khan, Ravindra Upadhyay, Rajnigandha Shekhawat, Aminuddin Dagar, Priya Barve, Swaroop Khan, Sartaj Khan And Sarwar Khan And Their Songs Ringtones</p>\r\n\r\n<ul>\r\n	<li>Thade Rahiyo - Rajasthani Ringtones</li>\r\n	<li>Janudi Milgi Re - Rajasthani Ringtones</li>\r\n	<li>Banna O - Rajasthani Ringtones</li>\r\n	<li>Ghagra - Rajasthani Ringtones</li>\r\n	<li>In Janam Mein Milgi - Rajasthani Ringtones</li>\r\n	<li>Mukdo Dhekne - Rajasthani Ringtones</li>\r\n	<li>Sona Babu Liyado - Rajasthani Ringtones</li>\r\n</ul>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Top User Rated Rajasthani Ringtones</span></h2>\r\n\r\n<p>Below We Listed Some Piece of Cake That Really Liked By Rajasthani Ringtone Lovers And I Also Hope That You May Also Like Below One.</p>\r\n\r\n<p>Here We Go With Top User Rated Rajasthani And Marwadi Ringtones</p>\r\n\r\n<ul>\r\n	<li>Banni Tharo Chand So Mukhdo Ringtone</li>\r\n	<li>Hariyala Banna Ringtone</li>\r\n	<li>Lahariyo Ra 900 Rupiya Rokda Sa Ringtone</li>\r\n	<li>Kajaliyo Rajasthani Ringtone</li>\r\n	<li>Nakhrala Banna Rajasthani Ringtone</li>\r\n</ul>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Download Popular Rajasthani Ringtones</span></h2>\r\n\r\n<p>If you are a fan of popular<strong> Rajasthani ringtones</strong> like me, then this is special for you. With this feature you will be able to find out which Marwari and Rajasthani ringtones are the most popular.</p>\r\n\r\n<p>You will find the download score of each ringtone under the name of each ringtone so that you know. It will be easy to do which ringtone is most popular and this feature is the most amazing feature ever. This is special for my dear Rajasthani brothers.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Types of Rajasthani &amp; Marwadi Ringtones</span></h2>\r\n\r\n<p>On the basis of many festivals, events, folk music, etc. in Rajasthan, we have told the music there in some parts, which we have added for you in this Rajasthani ringtone category. We have shared with you the types of major music heard in Rajasthan. what we gave below.</p>\r\n\r\n<ul>\r\n	<li>Rajasthani Song Ringtones</li>\r\n	<li>Rajasthani Folk Ringtones</li>\r\n	<li>Rajasthani Ghoomar Ringtones</li>\r\n	<li>Rajasthani DJ Ringtones</li>\r\n	<li>Rajasthani Bhajan Ringtone</li>\r\n</ul>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Download Rajasthani Ringtone for Android &amp; iPhone</span></h2>\r\n\r\n<p>We know that the users of our site use both iPhone and Android, that&#39;s why in order to satisfy both of our users, we have made available <strong>Rajasthani ringtones</strong> for both Android and iPhone for you, which you can Helpful for Both users So Try it in Mp3 &amp; M4r for iPhone.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Add Rajasthani Ringtones to Favorite List</span></h2>\r\n\r\n<p>Now Listen Here is Awesome Feature That You Can Give Heart to Your Favorite Rajasthani Ringtones That Will Helps Other Users to Identify That Which One Is Best Rajasthani Ringtone And I Think It So Tremendous Feature for You And for Other Users. Just Go And Hit The Heart Button.</p>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"font-size:24px\">One-Click Download Feature Available!</span></h3>\r\n\r\n<p>Yes! It is Absolutely True that You Can Download Any Rajasthani or Marwari Ringtones By Just One Click, That Means in Just a Single Click On Download Button Your Ringtone Added to your Download Task Manager.</p>\r\n\r\n<p>You know that when you go to download a ringtone on a website, it takes more than 5 minutes to download that one ringtone, that is because almost all the websites available on the internet have a lot of popups &amp; Redirected Function That is Annoying.</p>\r\n\r\n<p>Users have a lot of trouble When They download ringtones. For this particular reason we have added this feature in our site, Now you can tell by contacting us how you liked this feature.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Quik Sharing Options of Rajasthani Ringtones</span></h2>\r\n\r\n<p>There was a moment when we used to download any ringtone on any website, then we used to download that ringtone, but it was very difficult to share it, we could never find the right link, which could be shared, for removing this problem.</p>\r\n\r\n<p>We have given a quick sharing option in <strong>Rajasthani ringtones</strong> so that you can easily share any Rajasthani ringtone on any social media account like WhatsApp, Facebook, Twitter, Telegram.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">About Rajasthani Ringtones &amp; Marwadi Ringtones</span></h2>\r\n\r\n<p>Rajasthan has been the land of SoorVeer&rsquo;s and Rajasthan has made a lot of progress in all fields, especially in dance and music.</p>\r\n\r\n<p>Although Rajasthan is famous for some reasons, some of them are special for their art works, food, tourism etc. There are many common languages spoken here like Marwari, Mewari, Godwadi.</p>\r\n\r\n<p>There is some famous music of Rajasthan, which is still sitting in the hearts of people. To keep this music near you every moment, we have brought this collection of Rajasthani ringtones for you.</p>\r\n\r\n<p>You can set these marwari or <a href=\"https://www.ringtonefly.co/rajasthani-ringtones\">rajasthani ringtones</a> on your mobile and listen to their catchy sounds again and again on every one, we have specially prepared this collection for rajasthani people. You share them with all your Rajasthani brothers and make their hearts happy too.</p>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"font-size:24px\">Gift from Our Heart:</span></h3>\r\n\r\n<p>We have also prepared a Super special gift for all of you( Rajasthani Ringtones Lover&rsquo;s), that is we are going to launch our Ringtones mobile application soon, in which there will be a special Rajasthani &amp; Marwadi ringtones category for All My <strong>Rajasthani Ringtones</strong> Fans, so After that you can change your mobile ringtone anytime directly from our mobile application. And you will get to see even more awesome features.</p>\r\n\r\n<p>In This Application You Can Upload Yours Favorite Ringtones And Grab Like &amp; Follower From It And also you will Get Awesome Rewards from it.</p>\r\n\r\n<p>So Stay Tuned With Us. By <a href=\"https://www.ringtonefly.co/\">RingtoneFly.co</a> ...</p>', '2021-08-27 12:23:38.539386'),
(226, NULL, '<p><strong>iPhone Ringtones Download</strong> - Mobile is a short word to say but only the person who uses it knows to what extent it can be used</p>\r\n\r\n<p>A mobile user knows How to personalize his mobile. To improve this personalization, we have come up with <strong>iPhone ringtones</strong> for you so that you can use your normal ringtones. Android devices can set the caller tune of the iPhone.</p>\r\n\r\n<p>Now you will ask about the iPhone ringtone, so let me tell you that because of social media and a rich personality, today everyone wants to get an iPhone, but due to the high price of the iPhone, one has to buy an Android smartphone with a sad heart. To overcome this, we bring you a tremendous collection of <strong>iPhone ringtones</strong>.</p>\r\n\r\n<p>In today&#39;s modern era, people&#39;s choice is more for iPhone than Android, but due to the low budget, Android smartphones remain in a lot of discussion even today.</p>\r\n\r\n<p>But that rich feel of iPhone does not leave the people behind, retaining the same feeling, people download iPhone ringtones and set it instead of their default mobile ringtone.</p>\r\n\r\n<p>For your information, let us tell you that there are mainly two types of operating time in mobile.</p>\r\n\r\n<ul>\r\n	<li>iOS and Android</li>\r\n</ul>\r\n\r\n<p>Both of these are mainly used systems.</p>\r\n\r\n<p>To personalize these two systems, you have to format the file differently.</p>\r\n\r\n<ul>\r\n	<li>iPhone Music File Extension : M4r Ringtone Format</li>\r\n	<li>Android Music File Extension : Mp3 Ringtone Format</li>\r\n</ul>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Why Do You Need iPhone Ringtones?</span></h2>\r\n\r\n<p>Setting an iPhone ringtone for a normal iPhone user is a very minor thing, but later when it comes to Android users, it becomes a bit difficult, because in that Madness for <a href=\"https://www.ringtonefly.co/iphone-ringtones/\">iPhone ringtones</a>, they become so crazy that they can find all the websites on the internet. but still no one can find them any iPhone ringtone. For Solving This Problem RingtoneFly.co Bring Super Fantastic Collection of iPhone Ringtones.</p>\r\n\r\n<p>iPhone Ringtones are a way to feel the rich feeling of an iPhone.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">All iPhone Ringtones of Apple Devices&nbsp;</span></h2>\r\n\r\n<ul>\r\n	<li>iPhone 5s Ringtone - This Ringtone Comes from Iphone 5s.</li>\r\n	<li>iPhone 6 Ringtone- This iPhone Ringtone Comes from Apple Iphone 6 That is So Amazing Tune</li>\r\n	<li>iPhone 6 Plus Ringtone- This Ringtone Comes from IPhone 6 Plus That Calms Your Pulse.</li>\r\n	<li>iPhone 6s Ringtone- This Ringtone Comes from iPhone 6s</li>\r\n	<li>iPhone SE (1st generation) Ringtone- This Ringtone Comes from iPhone SE (1st generation) Ringtone</li>\r\n	<li>iPhone 7 Ringtone- This Ringtone Comes from iPhone 7 Ringtone</li>\r\n	<li>iPhone 7 Plus Ringtone- This Ringtone Comes from iPhone 7 Plus</li>\r\n	<li>iPhone 8 Ringtone- This Ringtone Comes from iPhone 8</li>\r\n	<li>iPhone 8 Plus Ringtone- This Ringtone Comes from iPhone 8 Plus</li>\r\n</ul>\r\n\r\n<p>Here From We Started Iphone X Series That Having More Fabulous Ringtones</p>\r\n\r\n<ul>\r\n	<li>iPhone X Ringtone- This Ringtone Comes from iPhone X</li>\r\n	<li>iPhone XR Ringtone- This Ringtone Comes from iPhone XR</li>\r\n	<li>iPhone XS Ringtone- This Ringtone Comes from iPhone XS</li>\r\n	<li>iPhone XS Max Ringtone- This Ringtone Comes from iPhone XS Max</li>\r\n	<li>iPhone 11 Ringtone- This Ringtone Comes from iPhone 11</li>\r\n	<li>iPhone 11 Pro Ringtone- This Ringtone Comes from iPhone 11 Pro</li>\r\n	<li>iPhone 11 Pro Max Ringtone- This Ringtone Comes from iPhone 11 Pro Max</li>\r\n	<li>iPhone SE (2nd generation) Ringtone- This Ringtone Comes from iPhone SE (2nd generation)</li>\r\n	<li>iPhone 12 mini Ringtone- This Ringtone Comes from iPhone 12 mini</li>\r\n	<li>iPhone 12 Ringtone- This Ringtone Comes from iPhone 12</li>\r\n	<li>iPhone 12 Pro Ringtone- This Ringtone Comes from iPhone 12 Pro</li>\r\n</ul>\r\n\r\n<p>Also, Download iPhone Notification Tone That Use for Personalizing SMS Tone So Check Above Collection.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">How to Download iPhone Ringtones from Our Site RingtoneFly.co ?</span></h2>\r\n\r\n<p>To download iPhone ringtones from our site ringtonefly.co you Just need to follow Some Steps that are Given Below. Step1: Go To iPhone Ringtones Category And Listen to Your Favorite Ringtone Pre-Audio And Just Click on Title You Will Land on Download Page Where you Can See Two Download Button one for Androids And Second for iPhone, By Just One Click you Ringtone Will Start Downloading.</p>\r\n\r\n<p>Also Here From you Can Give Heart to Your Favorite Ringtone And Check Popular iPhone Ringtones.</p>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"font-size:24px\">How to Set iPhone Ringtone?</span></h3>\r\n\r\n<ul>\r\n	<li><strong>In Android</strong> - for Changing your Default Ringtone to Iphone Ringtone in Android Device Follow Below Steps:\r\n\r\n	<ul>\r\n		<li><strong>Step1:</strong> Open Settings App,</li>\r\n		<li><strong>Step2:</strong> Tap on &ldquo;<strong>Sounds And Vibration</strong>&rdquo;</li>\r\n		<li><strong>Step3:</strong> Tap on &ldquo;<strong>Ringtone</strong>&rdquo; Option,</li>\r\n		<li><strong>Step4:</strong> Choose Your Ringtone And Set it as Your Default Ringtone.</li>\r\n	</ul>\r\n	</li>\r\n	<li><strong>In iPhone</strong> -&nbsp;for Changing your Ringtone iPhone Device Just&nbsp;Go Through Some Easy Steps:\r\n	<ul>\r\n		<li><strong>Step1:</strong> Go to Settings,</li>\r\n		<li><strong>Step2:</strong> Sounds &amp; Haptics,<strong> </strong></li>\r\n		<li><strong>Step3:</strong> Under Sounds And Vibration Patterns, Tao the Sounds That You Want to Set as Ringtone.<strong> </strong></li>\r\n		<li><strong>Step4:</strong> Tao a Ringtone or Alert tone to hear and Set it as That New <strong>Iphone Ringing Tone</strong>.</li>\r\n	</ul>\r\n	</li>\r\n	<li>Make Sure You Do It Properly.</li>\r\n</ul>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">FAQ About iPhone Ringtones</span></h2>\r\n\r\n<p>Q1. How Can I Download iPhone Ringtone?</p>\r\n\r\n<p>Ans. You Can Download iPhone Ringtones from <a href=\"https://www.ringtonefly.co\">RingtoneFly.co</a> That is So Reliable Source.</p>\r\n\r\n<p>Q2. Which iPhone Ringtone is Best?</p>\r\n\r\n<p>Ans. &ldquo;Opening&rdquo; iPhone Ringtone is Best Ringtone.</p>\r\n\r\n<p>Q3. Is Our Site Secure for Downloading iPhone Ringtone?</p>\r\n\r\n<p>Ans. Yes! It Absolutely Secure Website for <a href=\"https://www.ringtonefly.co/iphone-ringtones/\">Download iPhone Ringtones</a>.</p>\r\n\r\n<h4 style=\"text-align:center\"><span style=\"font-size:24px\">Special Gift for Iphone Ringtone Lover&#39;s:</span></h4>\r\n\r\n<p>We have also prepared a Super Fabulous&nbsp; gift for all iPhone Ringtones Lover, that is we are going to launch our Ringtones Appliaction for mobile soon, in which there will be a special iPhone Ringtones category for All My&nbsp;<strong>iPhone&nbsp;Ringtones</strong>&nbsp;Fans, so After that you can change your fantasay&nbsp;mobile ringtone anytime directly from our mobile application. And you will get to see even more awesome features.</p>\r\n\r\n<p>In This Application You Can Upload Yours Favorite Ringtones And Grab Like &amp; Follower From It And also you will Get Awesome Rewards from it.</p>\r\n\r\n<p>In-Depth from Our Heart By <a href=\"https://www.ringtonefly.co\">RingtoneFly.co</a>...</p>', '2021-12-17 11:08:29.387252'),
(284, 'Privacy Policy', '<p><strong>Privacy Policy </strong>for<strong>&nbsp;</strong>Our Mobile App &quot;<strong>RingtoneFly - Ringtones</strong>&quot;</p>\r\n\r\n<p>RingtoneFly built the RingtoneFly - Ringtones app as a Free app. This SERVICE is provided by RingtoneFly at no cost and is intended for use as is.</p>\r\n\r\n<p>This page is used to inform visitors regarding my policies with the collection, use, and disclosure of Personal Information if anyone decided to use my Service.</p>\r\n\r\n<p>If you choose to use my Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that I collect is used for providing and improving the Service. I will not use or share your information with anyone except as described in this Privacy Policy.</p>\r\n\r\n<p>The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which are accessible at RingtoneFly - Ringtones unless otherwise defined in this Privacy Policy.</p>\r\n\r\n<p><strong>Information Collection and Use</strong></p>\r\n\r\n<p>For a better experience, while using our Service, I may require you to provide us with certain personally identifiable information. The information that I request will be retained on your device and is not collected by me in any way.</p>\r\n\r\n<div>\r\n<p>The app does use third-party services that may collect information used to identify you.</p>\r\n\r\n<p>Link to the privacy policy of third-party service providers used by the app</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://www.google.com/policies/privacy/\" rel=\"noopener noreferrer\" target=\"_blank\">Google Play Services</a></li>\r\n	<li><a href=\"https://support.google.com/admob/answer/6128543?hl=en\" rel=\"noopener noreferrer\" target=\"_blank\">AdMob</a></li>\r\n</ul>\r\n</div>\r\n\r\n<p><strong>Log Data</strong></p>\r\n\r\n<p>I want to inform you that whenever you use my Service, in a case of an error in the app I collect data and information (through third-party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol (&ldquo;IP&rdquo;) address, device name, operating system version, the configuration of the app when utilizing my Service, the time and date of your use of the Service, and other statistics.</p>\r\n\r\n<p><strong>Cookies</strong></p>\r\n\r\n<p>Cookies are files with a small amount of data that are commonly used as anonymous unique identifiers. These are sent to your browser from the websites that you visit and are stored on your device&#39;s internal memory.</p>\r\n\r\n<p>This Service does not use these &ldquo;cookies&rdquo; explicitly. However, the app may use third-party code and libraries that use &ldquo;cookies&rdquo; to collect information and improve their services. You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device. If you choose to refuse our cookies, you may not be able to use some portions of this Service.</p>\r\n\r\n<p><strong>Service Providers</strong></p>\r\n\r\n<p>I may employ third-party companies and individuals due to the following reasons:</p>\r\n\r\n<ul>\r\n	<li>To facilitate our Service;</li>\r\n	<li>To provide the Service on our behalf;</li>\r\n	<li>To perform Service-related services; or</li>\r\n	<li>To assist us in analyzing how our Service is used.</li>\r\n</ul>\r\n\r\n<p>I want to inform users of this Service that these third parties have access to their Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose.</p>\r\n\r\n<p><strong>Security</strong></p>\r\n\r\n<p>I value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and I cannot guarantee its absolute security.</p>\r\n\r\n<p><strong>Links to Other Sites</strong></p>\r\n\r\n<p>This Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by me. Therefore, I strongly advise you to review the Privacy Policy of these websites. I have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.</p>\r\n\r\n<p><strong>Children&rsquo;s Privacy</strong></p>\r\n\r\n<div>\r\n<p>These Services do not address anyone under the age of 13. I do not knowingly collect personally identifiable information from children under 13 years of age. In the case I discover that a child under 13 has provided me with personal information, I immediately delete this from our servers. If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact me so that I will be able to do the necessary actions.</p>\r\n</div>\r\n\r\n<p><strong>Changes to This Privacy Policy</strong></p>\r\n\r\n<p>I may update our Privacy Policy from time to time. Thus, you are advised to review this page periodically for any changes. I will notify you of any changes by posting the new Privacy Policy on this page.</p>\r\n\r\n<p>This policy is effective as of 2021-11-27</p>\r\n\r\n<p><strong>Contact Us</strong></p>\r\n\r\n<p>If you have any questions or suggestions about my Privacy Policy, do not hesitate to contact me at ringtonefly.co@gmail.com.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2 style=\"text-align:center\">Privacy Policy For Our Website RingtoneFly.co</h2>\r\n\r\n<p>At RingtoneFly.co, accessible from https://www.ringtonefly.co, one of our main priorities is the privacy of our visitors. This Privacy Policy document contains types of information that is collected and recorded by RingtoneFly.co and how we use it.</p>\r\n\r\n<p>If you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us.</p>\r\n\r\n<p>This Privacy Policy applies only to our online activities and is valid for visitors to our website with regards to the information that they shared and/or collect in RingtoneFly.co. This policy is not applicable to any information collected offline or via channels other than this website.</p>\r\n\r\n<h2>Consent</h2>\r\n\r\n<p>By using our website, you hereby consent to our Privacy Policy and agree to its terms.</p>\r\n\r\n<h2>Information we collect</h2>\r\n\r\n<p>The personal information that you are asked to provide, and the reasons why you are asked to provide it, will be made clear to you at the point we ask you to provide your personal information.</p>\r\n\r\n<p>If you contact us directly, we may receive additional information about you such as your name, email address, phone number, the contents of the message and/or attachments you may send us, and any other information you may choose to provide.</p>\r\n\r\n<p>When you register for an Account, we may ask for your contact information, including items such as name, company name, address, email address, and telephone number.</p>\r\n\r\n<h2>How we use your information</h2>\r\n\r\n<p>We use the information we collect in various ways, including to:</p>\r\n\r\n<ul>\r\n	<li>Provide, operate, and maintain our website</li>\r\n	<li>Improve, personalize, and expand our website</li>\r\n	<li>Understand and analyze how you use our website</li>\r\n	<li>Develop new products, services, features, and functionality</li>\r\n	<li>Communicate with you, either directly or through one of our partners, including for customer service, to provide you with updates and other information relating to the website, and for marketing and promotional purposes</li>\r\n	<li>Send you emails</li>\r\n	<li>Find and prevent fraud</li>\r\n</ul>\r\n\r\n<h2>Log Files</h2>\r\n\r\n<p>RingtoneFly.co follows a standard procedure of using log files. These files log visitors when they visit websites. All hosting companies do this and a part of hosting services&#39; analytics. The information collected by log files include internet protocol (IP) addresses, browser type, Internet Service Provider (ISP), date and time stamp, referring/exit pages, and possibly the number of clicks. These are not linked to any information that is personally identifiable. The purpose of the information is for analyzing trends, administering the site, tracking users&#39; movement on the website, and gathering demographic information.</p>\r\n\r\n<h2>Cookies and Web Beacons</h2>\r\n\r\n<p>Like any other website, RingtoneFly.co uses &#39;cookies&#39;. These cookies are used to store information including visitors&#39; preferences, and the pages on the website that the visitor accessed or visited. The information is used to optimize the users&#39; experience by customizing our web page content based on visitors&#39; browser type and/or other information.</p>\r\n\r\n<p>For more general information on cookies, please read <a href=\"https://www.privacypolicyonline.com/what-are-cookies/\">&quot;What Are Cookies&quot;</a>.</p>\r\n\r\n<h2>Google DoubleClick DART Cookie</h2>\r\n\r\n<p>Google is one of a third-party vendor on our site. It also uses cookies, known as DART cookies, to serve ads to our site visitors based upon their visit to www.website.com and other sites on the internet. However, visitors may choose to decline the use of DART cookies by visiting the Google ad and content network Privacy Policy at the following URL &ndash; <a href=\"https://policies.google.com/technologies/ads\">https://policies.google.com/technologies/ads</a></p>\r\n\r\n<h2>Our Advertising Partners</h2>\r\n\r\n<p>Some of advertisers on our site may use cookies and web beacons. Our advertising partners are listed below. Each of our advertising partners has their own Privacy Policy for their policies on user data. For easier access, we hyperlinked to their Privacy Policies below.</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Google</p>\r\n\r\n	<p><a href=\"https://policies.google.com/technologies/ads\">https://policies.google.com/technologies/ads</a></p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Advertising Partners Privacy Policies</h2>\r\n\r\n<p>You may consult this list to find the Privacy Policy for each of the advertising partners of RingtoneFly.co.</p>\r\n\r\n<p>Third-party ad servers or ad networks uses technologies like cookies, JavaScript, or Web Beacons that are used in their respective advertisements and links that appear on RingtoneFly.co, which are sent directly to users&#39; browser. They automatically receive your IP address when this occurs. These technologies are used to measure the effectiveness of their advertising campaigns and/or to personalize the advertising content that you see on websites that you visit.</p>\r\n\r\n<p>Note that RingtoneFly.co has no access to or control over these cookies that are used by third-party advertisers.</p>\r\n\r\n<h2>Third Party Privacy Policies</h2>\r\n\r\n<p>RingtoneFly.co&#39;s Privacy Policy does not apply to other advertisers or websites. Thus, we are advising you to consult the respective Privacy Policies of these third-party ad servers for more detailed information. It may include their practices and instructions about how to opt-out of certain options.</p>\r\n\r\n<p>You can choose to disable cookies through your individual browser options. To know more detailed information about cookie management with specific web browsers, it can be found at the browsers&#39; respective websites.</p>\r\n\r\n<h2>CCPA Privacy Rights (Do Not Sell My Personal Information)</h2>\r\n\r\n<p>Under the CCPA, among other rights, California consumers have the right to:</p>\r\n\r\n<p>Request that a business that collects a consumer&#39;s personal data disclose the categories and specific pieces of personal data that a business has collected about consumers.</p>\r\n\r\n<p>Request that a business delete any personal data about the consumer that a business has collected.</p>\r\n\r\n<p>Request that a business that sells a consumer&#39;s personal data, not sell the consumer&#39;s personal data.</p>\r\n\r\n<p>If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</p>\r\n\r\n<h2>GDPR Data Protection Rights</h2>\r\n\r\n<p>We would like to make sure you are fully aware of all of your data protection rights. Every user is entitled to the following:</p>\r\n\r\n<p>The right to access &ndash; You have the right to request copies of your personal data. We may charge you a small fee for this service.</p>\r\n\r\n<p>The right to rectification &ndash; You have the right to request that we correct any information you believe is inaccurate. You also have the right to request that we complete the information you believe is incomplete.</p>\r\n\r\n<p>The right to erasure &ndash; You have the right to request that we erase your personal data, under certain conditions.</p>\r\n\r\n<p>The right to restrict processing &ndash; You have the right to request that we restrict the processing of your personal data, under certain conditions.</p>\r\n\r\n<p>The right to object to processing &ndash; You have the right to object to our processing of your personal data, under certain conditions.</p>\r\n\r\n<p>The right to data portability &ndash; You have the right to request that we transfer the data that we have collected to another organization, or directly to you, under certain conditions.</p>\r\n\r\n<p>If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</p>\r\n\r\n<h2>Children&#39;s Information</h2>\r\n\r\n<p>Another part of our priority is adding protection for children while using the internet. We encourage parents and guardians to observe, participate in, and/or monitor and guide their online activity.</p>\r\n\r\n<p>RingtoneFly.co does not knowingly collect any Personal Identifiable Information from children under the age of 13. If you think that your child provided this kind of information on our website, we strongly encourage you to contact us immediately and we will do our best efforts to promptly remove such information from our records.</p>', '2021-11-27 06:17:52.843633'),
(287, 'Disclaimer', '<p>If you require any more information or have any questions about our site&#39;s disclaimer, please feel free to contact us by email at ringtonefly.co@gmail.com.</p>\r\n\r\n<h2>Disclaimers for RingtoneFly.co</h2>\r\n\r\n<p>All the information on this website - https://www.ringtonefly.co - is published in good faith and for general information purpose only. RingtoneFly.co does not make any warranties about the completeness, reliability and accuracy of this information. Any action you take upon the information you find on this website (RingtoneFly.co), is strictly at your own risk. RingtoneFly.co will not be liable for any losses and/or damages in connection with the use of our website.</p>\r\n\r\n<p>From our website, you can visit other websites by following hyperlinks to such external sites. While we strive to provide only quality links to useful and ethical websites, we have no control over the content and nature of these sites. These links to other websites do not imply a recommendation for all the content found on these sites. Site owners and content may change without notice and may occur before we have the opportunity to remove a link which may have gone &#39;bad&#39;.</p>\r\n\r\n<p>Please be also aware that when you leave our website, other sites may have different privacy policies and terms which are beyond our control. Please be sure to check the Privacy Policies of these sites as well as their &quot;Terms of Service&quot; before engaging in any business or uploading any information.</p>\r\n\r\n<h2>Consent</h2>\r\n\r\n<p>By using our website, you hereby consent to our disclaimer and agree to its terms.</p>\r\n\r\n<h2>Update</h2>\r\n\r\n<p>Should we update, amend or make any changes to this document, those changes will be prominently posted here.</p>', '2021-06-20 07:22:10.433173'),
(288, 'Disclaimer', '<p>If you require any more information or have any questions about our site&#39;s disclaimer, please feel free to contact us by email at ringtonefly.co@gmail.com.</p>\r\n\r\n<h2>Disclaimers for RingtoneFly.co</h2>\r\n\r\n<p>All the information on this website - https://www.ringtonefly.co - is published in good faith and for general information purpose only. RingtoneFly.co does not make any warranties about the completeness, reliability and accuracy of this information. Any action you take upon the information you find on this website (RingtoneFly.co), is strictly at your own risk. RingtoneFly.co will not be liable for any losses and/or damages in connection with the use of our website.</p>\r\n\r\n<p>From our website, you can visit other websites by following hyperlinks to such external sites. While we strive to provide only quality links to useful and ethical websites, we have no control over the content and nature of these sites. These links to other websites do not imply a recommendation for all the content found on these sites. Site owners and content may change without notice and may occur before we have the opportunity to remove a link which may have gone &#39;bad&#39;.</p>\r\n\r\n<p>Please be also aware that when you leave our website, other sites may have different privacy policies and terms which are beyond our control. Please be sure to check the Privacy Policies of these sites as well as their &quot;Terms of Service&quot; before engaging in any business or uploading any information.</p>\r\n\r\n<h2>Consent</h2>\r\n\r\n<p>By using our website, you hereby consent to our disclaimer and agree to its terms.</p>\r\n\r\n<h2>Update</h2>\r\n\r\n<p>Should we update, amend or make any changes to this document, those changes will be prominently posted here.</p>', '2021-06-20 07:25:40.221676');
INSERT INTO `config_containerplugin` (`cmsplugin_ptr_id`, `title`, `content`, `updated_at`) VALUES
(289, 'Terms & Conditions', '<p>Welcome to RingtoneFly.co!</p>\r\n\r\n<p>These terms and conditions outline the rules and regulations for the use of RingtoneFly&#39;s Website, located at https://www.ringtonefly.co.</p>\r\n\r\n<p>By accessing this website we assume you accept these terms and conditions. Do not continue to use RingtoneFly.co if you do not agree to take all of the terms and conditions stated on this page.</p>\r\n\r\n<p>The following terminology applies to these Terms and Conditions, Privacy Statement and Disclaimer Notice and all Agreements: &quot;Client&quot;, &quot;You&quot; and &quot;Your&quot; refers to you, the person log on this website and compliant to the Company&rsquo;s terms and conditions. &quot;The Company&quot;, &quot;Ourselves&quot;, &quot;We&quot;, &quot;Our&quot; and &quot;Us&quot;, refers to our Company. &quot;Party&quot;, &quot;Parties&quot;, or &quot;Us&quot;, refers to both the Client and ourselves. All terms refer to the offer, acceptance and consideration of payment necessary to undertake the process of our assistance to the Client in the most appropriate manner for the express purpose of meeting the Client&rsquo;s needs in respect of provision of the Company&rsquo;s stated services, in accordance with and subject to, prevailing law of Netherlands. Any use of the above terminology or other words in the singular, plural, capitalization and/or he/she or they, are taken as interchangeable and therefore as referring to same.</p>\r\n\r\n<h3><strong>Cookies</strong></h3>\r\n\r\n<p>We employ the use of cookies. By accessing RingtoneFly.co, you agreed to use cookies in agreement with the RingtoneFly&#39;s Privacy Policy.</p>\r\n\r\n<p>Most interactive websites use cookies to let us retrieve the user&rsquo;s details for each visit. Cookies are used by our website to enable the functionality of certain areas to make it easier for people visiting our website. Some of our affiliate/advertising partners may also use cookies.</p>\r\n\r\n<h3><strong>License</strong></h3>\r\n\r\n<p>Unless otherwise stated, RingtoneFly and/or its licensors own the intellectual property rights for all material on RingtoneFly.co. All intellectual property rights are reserved. You may access this from RingtoneFly.co for your own personal use subjected to restrictions set in these terms and conditions.</p>\r\n\r\n<p>You must not:</p>\r\n\r\n<ul>\r\n	<li>Republish material from RingtoneFly.co</li>\r\n	<li>Sell, rent or sub-license material from RingtoneFly.co</li>\r\n	<li>Reproduce, duplicate or copy material from RingtoneFly.co</li>\r\n	<li>Redistribute content from RingtoneFly.co</li>\r\n</ul>\r\n\r\n<p>This Agreement shall begin on the date hereof.&nbsp;</p>\r\n\r\n<p>Parts of this website offer an opportunity for users to post and exchange opinions and information in certain areas of the website. RingtoneFly does not filter, edit, publish or review Comments prior to their presence on the website. Comments do not reflect the views and opinions of RingtoneFly,its agents and/or affiliates. Comments reflect the views and opinions of the person who post their views and opinions. To the extent permitted by applicable laws, RingtoneFly shall not be liable for the Comments or for any liability, damages or expenses caused and/or suffered as a result of any use of and/or posting of and/or appearance of the Comments on this website.</p>\r\n\r\n<p>RingtoneFly reserves the right to monitor all Comments and to remove any Comments which can be considered inappropriate, offensive or causes breach of these Terms and Conditions.</p>\r\n\r\n<p>You warrant and represent that:</p>\r\n\r\n<ul>\r\n	<li>You are entitled to post the Comments on our website and have all necessary licenses and consents to do so;</li>\r\n	<li>The Comments do not invade any intellectual property right, including without limitation copyright, patent or trademark of any third party;</li>\r\n	<li>The Comments do not contain any defamatory, libelous, offensive, indecent or otherwise unlawful material which is an invasion of privacy</li>\r\n	<li>The Comments will not be used to solicit or promote business or custom or present commercial activities or unlawful activity.</li>\r\n</ul>\r\n\r\n<p>You hereby grant RingtoneFly a non-exclusive license to use, reproduce, edit and authorize others to use, reproduce and edit any of your Comments in any and all forms, formats or media.</p>\r\n\r\n<h3><strong>Hyperlinking to our Content</strong></h3>\r\n\r\n<p>The following organizations may link to our Website without prior written approval:</p>\r\n\r\n<ul>\r\n	<li>Government agencies;</li>\r\n	<li>Search engines;</li>\r\n	<li>News organizations;</li>\r\n	<li>Online directory distributors may link to our Website in the same manner as they hyperlink to the Websites of other listed businesses; and</li>\r\n	<li>System wide Accredited Businesses except soliciting non-profit organizations, charity shopping malls, and charity fundraising groups which may not hyperlink to our Web site.</li>\r\n</ul>\r\n\r\n<p>These organizations may link to our home page, to publications or to other Website information so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products and/or services; and (c) fits within the context of the linking party&rsquo;s site.</p>\r\n\r\n<p>We may consider and approve other link requests from the following types of organizations:</p>\r\n\r\n<ul>\r\n	<li>commonly-known consumer and/or business information sources;</li>\r\n	<li>dot.com community sites;</li>\r\n	<li>associations or other groups representing charities;</li>\r\n	<li>online directory distributors;</li>\r\n	<li>internet portals;</li>\r\n	<li>accounting, law and consulting firms; and</li>\r\n	<li>educational institutions and trade associations.</li>\r\n</ul>\r\n\r\n<p>We will approve link requests from these organizations if we decide that: (a) the link would not make us look unfavorably to ourselves or to our accredited businesses; (b) the organization does not have any negative records with us; (c) the benefit to us from the visibility of the hyperlink compensates the absence of RingtoneFly; and (d) the link is in the context of general resource information.</p>\r\n\r\n<p>These organizations may link to our home page so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products or services; and (c) fits within the context of the linking party&rsquo;s site.</p>\r\n\r\n<p>If you are one of the organizations listed in paragraph 2 above and are interested in linking to our website, you must inform us by sending an e-mail to RingtoneFly. Please include your name, your organization name, contact information as well as the URL of your site, a list of any URLs from which you intend to link to our Website, and a list of the URLs on our site to which you would like to link. Wait 2-3 weeks for a response.</p>\r\n\r\n<p>Approved organizations may hyperlink to our Website as follows:</p>\r\n\r\n<ul>\r\n	<li>By use of our corporate name; or</li>\r\n	<li>By use of the uniform resource locator being linked to; or</li>\r\n	<li>By use of any other description of our Website being linked to that makes sense within the context and format of content on the linking party&rsquo;s site.</li>\r\n</ul>\r\n\r\n<p>No use of RingtoneFly&#39;s logo or other artwork will be allowed for linking absent a trademark license agreement.</p>\r\n\r\n<h3><strong>iFrames</strong></h3>\r\n\r\n<p>Without prior approval and written permission, you may not create frames around our Webpages that alter in any way the visual presentation or appearance of our Website.</p>\r\n\r\n<h3><strong>Content Liability</strong></h3>\r\n\r\n<p>We shall not be hold responsible for any content that appears on your Website. You agree to protect and defend us against all claims that is rising on your Website. No link(s) should appear on any Website that may be interpreted as libelous, obscene or criminal, or which infringes, otherwise violates, or advocates the infringement or other violation of, any third party rights.</p>\r\n\r\n<h3><strong>Your Privacy</strong></h3>\r\n\r\n<p>Please read <a href=\"https://www.ringtonefly.co/privacy-policy/\">Privacy Policy</a></p>\r\n\r\n<h3><strong>Reservation of Rights</strong></h3>\r\n\r\n<p>We reserve the right to request that you remove all links or any particular link to our Website. You approve to immediately remove all links to our Website upon request. We also reserve the right to amen these terms and conditions and it&rsquo;s linking policy at any time. By continuously linking to our Website, you agree to be bound to and follow these linking terms and conditions.</p>\r\n\r\n<h3><strong>Removal of links from our website</strong></h3>\r\n\r\n<p>If you find any link on our Website that is offensive for any reason, you are free to contact and inform us any moment. We will consider requests to remove links but we are not obligated to or so or to respond to you directly.</p>\r\n\r\n<p>We do not ensure that the information on this website is correct, we do not warrant its completeness or accuracy; nor do we promise to ensure that the website remains available or that the material on the website is kept up to date.</p>\r\n\r\n<h3><strong>Disclaimer</strong></h3>\r\n\r\n<p>To the maximum extent permitted by applicable law, we exclude all representations, warranties and conditions relating to our website and the use of this website. Nothing in this disclaimer will:</p>\r\n\r\n<ul>\r\n	<li>limit or exclude our or your liability for death or personal injury;</li>\r\n	<li>limit or exclude our or your liability for fraud or fraudulent misrepresentation;</li>\r\n	<li>limit any of our or your liabilities in any way that is not permitted under applicable law; or</li>\r\n	<li>exclude any of our or your liabilities that may not be excluded under applicable law.</li>\r\n</ul>\r\n\r\n<p>The limitations and prohibitions of liability set in this Section and elsewhere in this disclaimer: (a) are subject to the preceding paragraph; and (b) govern all liabilities arising under the disclaimer, including liabilities arising in contract, in tort and for breach of statutory duty.</p>\r\n\r\n<p>As long as the website and the information and services on the website are provided free of charge, we will not be liable for any loss or damage of any nature.</p>', '2021-06-20 07:47:26.750355'),
(290, 'Terms & Conditions', '<p>Welcome to RingtoneFly.co!</p>\r\n\r\n<p>These terms and conditions outline the rules and regulations for the use of RingtoneFly&#39;s Website, located at https://www.ringtonefly.co.</p>\r\n\r\n<p>By accessing this website we assume you accept these terms and conditions. Do not continue to use RingtoneFly.co if you do not agree to take all of the terms and conditions stated on this page.</p>\r\n\r\n<p>The following terminology applies to these Terms and Conditions, Privacy Statement and Disclaimer Notice and all Agreements: &quot;Client&quot;, &quot;You&quot; and &quot;Your&quot; refers to you, the person log on this website and compliant to the Company&rsquo;s terms and conditions. &quot;The Company&quot;, &quot;Ourselves&quot;, &quot;We&quot;, &quot;Our&quot; and &quot;Us&quot;, refers to our Company. &quot;Party&quot;, &quot;Parties&quot;, or &quot;Us&quot;, refers to both the Client and ourselves. All terms refer to the offer, acceptance and consideration of payment necessary to undertake the process of our assistance to the Client in the most appropriate manner for the express purpose of meeting the Client&rsquo;s needs in respect of provision of the Company&rsquo;s stated services, in accordance with and subject to, prevailing law of Netherlands. Any use of the above terminology or other words in the singular, plural, capitalization and/or he/she or they, are taken as interchangeable and therefore as referring to same.</p>\r\n\r\n<h3><strong>Cookies</strong></h3>\r\n\r\n<p>We employ the use of cookies. By accessing RingtoneFly.co, you agreed to use cookies in agreement with the RingtoneFly&#39;s Privacy Policy.</p>\r\n\r\n<p>Most interactive websites use cookies to let us retrieve the user&rsquo;s details for each visit. Cookies are used by our website to enable the functionality of certain areas to make it easier for people visiting our website. Some of our affiliate/advertising partners may also use cookies.</p>\r\n\r\n<h3><strong>License</strong></h3>\r\n\r\n<p>Unless otherwise stated, RingtoneFly and/or its licensors own the intellectual property rights for all material on RingtoneFly.co. All intellectual property rights are reserved. You may access this from RingtoneFly.co for your own personal use subjected to restrictions set in these terms and conditions.</p>\r\n\r\n<p>You must not:</p>\r\n\r\n<ul>\r\n	<li>Republish material from RingtoneFly.co</li>\r\n	<li>Sell, rent or sub-license material from RingtoneFly.co</li>\r\n	<li>Reproduce, duplicate or copy material from RingtoneFly.co</li>\r\n	<li>Redistribute content from RingtoneFly.co</li>\r\n</ul>\r\n\r\n<p>This Agreement shall begin on the date hereof.&nbsp;</p>\r\n\r\n<p>Parts of this website offer an opportunity for users to post and exchange opinions and information in certain areas of the website. RingtoneFly does not filter, edit, publish or review Comments prior to their presence on the website. Comments do not reflect the views and opinions of RingtoneFly,its agents and/or affiliates. Comments reflect the views and opinions of the person who post their views and opinions. To the extent permitted by applicable laws, RingtoneFly shall not be liable for the Comments or for any liability, damages or expenses caused and/or suffered as a result of any use of and/or posting of and/or appearance of the Comments on this website.</p>\r\n\r\n<p>RingtoneFly reserves the right to monitor all Comments and to remove any Comments which can be considered inappropriate, offensive or causes breach of these Terms and Conditions.</p>\r\n\r\n<p>You warrant and represent that:</p>\r\n\r\n<ul>\r\n	<li>You are entitled to post the Comments on our website and have all necessary licenses and consents to do so;</li>\r\n	<li>The Comments do not invade any intellectual property right, including without limitation copyright, patent or trademark of any third party;</li>\r\n	<li>The Comments do not contain any defamatory, libelous, offensive, indecent or otherwise unlawful material which is an invasion of privacy</li>\r\n	<li>The Comments will not be used to solicit or promote business or custom or present commercial activities or unlawful activity.</li>\r\n</ul>\r\n\r\n<p>You hereby grant RingtoneFly a non-exclusive license to use, reproduce, edit and authorize others to use, reproduce and edit any of your Comments in any and all forms, formats or media.</p>\r\n\r\n<h3><strong>Hyperlinking to our Content</strong></h3>\r\n\r\n<p>The following organizations may link to our Website without prior written approval:</p>\r\n\r\n<ul>\r\n	<li>Government agencies;</li>\r\n	<li>Search engines;</li>\r\n	<li>News organizations;</li>\r\n	<li>Online directory distributors may link to our Website in the same manner as they hyperlink to the Websites of other listed businesses; and</li>\r\n	<li>System wide Accredited Businesses except soliciting non-profit organizations, charity shopping malls, and charity fundraising groups which may not hyperlink to our Web site.</li>\r\n</ul>\r\n\r\n<p>These organizations may link to our home page, to publications or to other Website information so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products and/or services; and (c) fits within the context of the linking party&rsquo;s site.</p>\r\n\r\n<p>We may consider and approve other link requests from the following types of organizations:</p>\r\n\r\n<ul>\r\n	<li>commonly-known consumer and/or business information sources;</li>\r\n	<li>dot.com community sites;</li>\r\n	<li>associations or other groups representing charities;</li>\r\n	<li>online directory distributors;</li>\r\n	<li>internet portals;</li>\r\n	<li>accounting, law and consulting firms; and</li>\r\n	<li>educational institutions and trade associations.</li>\r\n</ul>\r\n\r\n<p>We will approve link requests from these organizations if we decide that: (a) the link would not make us look unfavorably to ourselves or to our accredited businesses; (b) the organization does not have any negative records with us; (c) the benefit to us from the visibility of the hyperlink compensates the absence of RingtoneFly; and (d) the link is in the context of general resource information.</p>\r\n\r\n<p>These organizations may link to our home page so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products or services; and (c) fits within the context of the linking party&rsquo;s site.</p>\r\n\r\n<p>If you are one of the organizations listed in paragraph 2 above and are interested in linking to our website, you must inform us by sending an e-mail to RingtoneFly. Please include your name, your organization name, contact information as well as the URL of your site, a list of any URLs from which you intend to link to our Website, and a list of the URLs on our site to which you would like to link. Wait 2-3 weeks for a response.</p>\r\n\r\n<p>Approved organizations may hyperlink to our Website as follows:</p>\r\n\r\n<ul>\r\n	<li>By use of our corporate name; or</li>\r\n	<li>By use of the uniform resource locator being linked to; or</li>\r\n	<li>By use of any other description of our Website being linked to that makes sense within the context and format of content on the linking party&rsquo;s site.</li>\r\n</ul>\r\n\r\n<p>No use of RingtoneFly&#39;s logo or other artwork will be allowed for linking absent a trademark license agreement.</p>\r\n\r\n<h3><strong>iFrames</strong></h3>\r\n\r\n<p>Without prior approval and written permission, you may not create frames around our Webpages that alter in any way the visual presentation or appearance of our Website.</p>\r\n\r\n<h3><strong>Content Liability</strong></h3>\r\n\r\n<p>We shall not be hold responsible for any content that appears on your Website. You agree to protect and defend us against all claims that is rising on your Website. No link(s) should appear on any Website that may be interpreted as libelous, obscene or criminal, or which infringes, otherwise violates, or advocates the infringement or other violation of, any third party rights.</p>\r\n\r\n<h3><strong>Your Privacy</strong></h3>\r\n\r\n<p>Please read <a href=\"https://www.ringtonefly.co/privacy-policy/\">Privacy Policy</a></p>\r\n\r\n<h3><strong>Reservation of Rights</strong></h3>\r\n\r\n<p>We reserve the right to request that you remove all links or any particular link to our Website. You approve to immediately remove all links to our Website upon request. We also reserve the right to amen these terms and conditions and it&rsquo;s linking policy at any time. By continuously linking to our Website, you agree to be bound to and follow these linking terms and conditions.</p>\r\n\r\n<h3><strong>Removal of links from our website</strong></h3>\r\n\r\n<p>If you find any link on our Website that is offensive for any reason, you are free to contact and inform us any moment. We will consider requests to remove links but we are not obligated to or so or to respond to you directly.</p>\r\n\r\n<p>We do not ensure that the information on this website is correct, we do not warrant its completeness or accuracy; nor do we promise to ensure that the website remains available or that the material on the website is kept up to date.</p>\r\n\r\n<h3><strong>Disclaimer</strong></h3>\r\n\r\n<p>To the maximum extent permitted by applicable law, we exclude all representations, warranties and conditions relating to our website and the use of this website. Nothing in this disclaimer will:</p>\r\n\r\n<ul>\r\n	<li>limit or exclude our or your liability for death or personal injury;</li>\r\n	<li>limit or exclude our or your liability for fraud or fraudulent misrepresentation;</li>\r\n	<li>limit any of our or your liabilities in any way that is not permitted under applicable law; or</li>\r\n	<li>exclude any of our or your liabilities that may not be excluded under applicable law.</li>\r\n</ul>\r\n\r\n<p>The limitations and prohibitions of liability set in this Section and elsewhere in this disclaimer: (a) are subject to the preceding paragraph; and (b) govern all liabilities arising under the disclaimer, including liabilities arising in contract, in tort and for breach of statutory duty.</p>\r\n\r\n<p>As long as the website and the information and services on the website are provided free of charge, we will not be liable for any loss or damage of any nature.</p>', '2021-06-20 07:48:13.881685'),
(291, 'DMCA', '<h2><span style=\"font-size:20px\">The process of Claiming the Copyright Infringement</span></h2>\r\n\r\n<p>If you want unauthorized content removed from ringtonefly.co, please read the instructions below:</p>\r\n\r\n<p>It is ringtonefly.co&#39;s policy to work with copyright owners to protect their intellectual property and to insure that unauthorized content is not distributed via the ringtonefly.co network.</p>\r\n\r\n<p>If you believe in good faith that any material provided through the Service infringes upon your copyright, you may send notice to ringtonefly.co requesting that the material or access to the material be removed, pursuant to the Digital Millennium Copyright Act (&quot;DMCA&quot;), by providing our Copyright Agent with the following information in writing (see 17 U.S.C 512(c)(3) and <a href=\"http://www.loc.gov/copyright\">http://www.loc.gov/copyright</a> for further details). The notice must include all of the following:</p>\r\n\r\n<ul>\r\n	<li>A physical or electronic signature of a person authorized to act on behalf of the owner of an exclusive right that is allegedly infringed. (Simply typing your name at the end of an email or electronically transmitted letter will suffice as an &quot;electronic signature.&quot;)</li>\r\n	<li>Identification of the copyrighted work claimed to have been infringed, or, if multiple copyrighted works at a single online site are covered by a single notification, a representative list of such works at that site. (You can give us a list of the copyrighted works you own and a brief description of the works, attach a copy of the works or send us the URL for a website that displays the works you own.)</li>\r\n	<li>Identification of the material that is claimed to be infringing or to be the subject of infringing activity and that is to be removed or access to which is to be disabled, and information reasonably sufficient to permit the service provider to locate the material. (Identify the infringing material by sending us the URL or item ID for the content you claim is infringing and identify the portion that is infringing. Please note that item ID usually can be found on the page where the material is previewed.)</li>\r\n	<li>Information reasonably sufficient to permit ringtonefly.co to contact you, such as an address, telephone number, and, if available, an electronic mail address at which the complaining party may be contacted.</li>\r\n	<li>A statement that you &quot;have a good faith belief that use of the material in the manner complained of is not authorized by the copyright owner, its agent, or the law.&quot; (You can simply copy this statement and put it in your letter, as long as the statement is true.)</li>\r\n	<li>A statement that &quot;the information in the notification is accurate, and under penalty of perjury, that the complaining party is authorized to act on behalf of the owner of an exclusive right that is allegedly infringed.&quot; (You can simply copy this statement and put it in your letter, as long as the statement is true.)</li>\r\n</ul>\r\n\r\n<p>Without such information, ringtonefly.co cannot reasonably comply with its obligations to intellectual property owners and to the members of the ringtonefly.co community.</p>\r\n\r\n<p>Please note that under Section 512(f) of the Copyright Act, any person who knowingly materially misrepresents that material or activity was removed or disabled by mistake or misidentification may be subject to liability.</p>\r\n\r\n<p>Be assured that ringtonefly.co is designed to fully respect intellectual property rights. ringtonefly.co enforces and will continue to enforce its Terms of Service which strictly prohibit the public posting of copyrighted material to which the poster does not have rights and together with the aforementioned activities ringtonefly.co brings further protection to content owners seeking to prohibit the distribution of their copyrighted works while offering a user the best collaborative mobile platform. Please also be advised that we enforce a policy that provides for the termination in appropriate circumstances of subscribers who are repeat infringers.</p>\r\n\r\n<p>Please note that ringtonefly.co operates globally and had adopted this policy to meet the many legal requirements it must comply with.</p>\r\n\r\n<p>For more information about the ringtonefly.co Terms of Service, please see<br />\r\n<a href=\"https://www.ringtonefly.co/privacy-policy/\">https://www.ringtonefly.co/privacy-policy/</a></p>\r\n\r\n<p>Ringtonefly.co Copyright Agent contact information:</p>\r\n\r\n<p>Copyright Agent<br />\r\nRingtoneFly.co,</p>\r\n\r\n<p>Email: <a href=\"mailto:dmca@ringtonefly.co\">dmca@ringtonefly.co</a></p>\r\n\r\n<p>Counter-Notification</p>\r\n\r\n<p>If you believe in good faith that a notice of copyright infringement has been wrongly filed against you, you may send ringtonefly.co a counter-notice. All notices with respect to ringtonefly.co should be sent to the ringtonefly.co Copyright Agent. ringtonefly.co suggests that you consult your legal advisor before filing a notice or counter-notice. You expressly acknowledge and agree that ringtonefly.co shall not be liable to you under any circumstances for declining to replace material. Also, be aware that there can be penalties for false claims under the DMCA.</p>', '2021-07-21 15:10:33.594756'),
(305, NULL, '<p><strong>Krishna Ringtones</strong> - Nowadays everyone is so busy in their daily work that they cannot get a breath of peace even for a moment and it is very important to have God with you in such rare times. Chanting of Lord Shri Krishna in this delicate time can pacify your mind and will make you absorbed in the devotion of Lord Shri Krishna. <strong>Download Krishna Ringtones</strong> from Above.&nbsp;</p>\r\n\r\n<p>To keep the devotion of Shri Krishna always alive in your heart, we bring you <strong>Krishna ringtones</strong>. These Krishna ringtones will give you spiritual philosophy with Lord Shri Krishna.</p>\r\n\r\n<p>Krishna ringtones will enchant you in Krishna devotion, their melodious sounds will pass through your ears and awaken the Krishna light in your mind. Space Everyone wants to change the ringtone of their mobile, why not address Lord Krishna in the desire to change something, the simple meaning of saying this is that Krishna music should be playing in your ears all the time.</p>\r\n\r\n<p>To fulfill this wish, we have prepared for you an amazing collection of Krishna ringtones that will immerse you in the sweet honey of Krishna devotion.</p>\r\n\r\n<p>You can set these Krishna ringtones as the default ringtone of your mobile By Just Following the Below Guidelines That Makes It Easier for You.&nbsp;</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Best Krishna Ringtones Collection of Top Singers</span></h2>\r\n\r\n<p>Devotee&rsquo;s We Prepared Super Energetic and Popular <strong>Krishna Ringtones</strong> for your true devotion So, Here you will get to see a unique collection of Krishna Ringtones from the best singers that will touch your heart.</p>\r\n\r\n<p>Here Are Some Popular Singers And Their Popular Krishna Songs Ringtone: Jagjit Singhal, Pankaj Doshi, etc.</p>\r\n\r\n<p>It took us a lot of hard work to collect these Krishna ringtones. If you like these ringtones then definitely don&#39;t forget to set them as mobile ringtones and also share them with your friends.</p>\r\n\r\n<ul>\r\n	<li>O Palan Haare Ringtone Maiya Yashoda,</li>\r\n	<li>Ye Tera Kanhaiya Ringtone</li>\r\n	<li>Bada Natkhat Hai Re Krishna Ringtone</li>\r\n	<li>Woh Kisna Hai Ringtone</li>\r\n	<li>Are Dwarpalo, Us Kanhaiya Se Kehdo Ringtone</li>\r\n	<li>Radha Kaise Na Jale Ringtone</li>\r\n	<li>Radha Nachegi Ringtone</li>\r\n	<li>Govinda Aala Re Ringtone</li>\r\n	<li>Radhey Krishna Ki Jyoti Ringtone</li>\r\n	<li>Mohe Chedo Na Nand Ke Lala Ringtone</li>\r\n	<li>Mach Gaya Shor Sari Nagri Re Ringtone</li>\r\n</ul>\r\n\r\n<p>If You Like This Awesome Collection of Krishna Ringtone Then don&rsquo;t Forget to Spread This Devotion Power with Krishna Bhakt&#39;s.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Top User Rated Krishna Ringtones</span></h2>\r\n\r\n<p>We all know that everyone wants to customize their mobile with the best ringtone, but how many of you are trying to find the best ringtone?</p>\r\n\r\n<p>To do this hard work, we have brought this amazing feature for you, so that you will be able to find out which ringtone is most liked by the user.</p>\r\n\r\n<p>For Knowing it Just Go With This Feature from Above.</p>\r\n\r\n<ul>\r\n	<li>Radha Krishna Fluet Ringtone</li>\r\n	<li>Radhe Radhe Radhe, Barsane Wali Radhe Ringtone</li>\r\n	<li>Yashomati Maiyya Se Bole Nandlaala Ringtone</li>\r\n	<li>Are Dwarpalo, Us Kanhaiya Se Kehdo Ringtone</li>\r\n	<li>Radha Rani Laage Ringtone</li>\r\n	<li>Kaun Kehte Hai Ringtone</li>\r\n</ul>\r\n\r\n<p>We Hope That The Above Collection of Krishna Ringtones is Best for Your Devotion.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Download Popular Krishna Ringtones</span></h2>\r\n\r\n<p>Download Most Popular Krishna Ringtone or Krishna Flute Ringtone By Just Grinding Above Melodious Collection, Download Trending And Popular Krishna Ringtone With Mind Calming Flute Tune, Krishna Ringtone Available for iPhone And Android Users.</p>\r\n\r\n<ul>\r\n	<li>Mere Nishaan Ringtone</li>\r\n	<li>Krishna Flute Ringtone</li>\r\n	<li>Shri Krishna Govind Hare Marari Ringtone</li>\r\n	<li>Hare Rama Hare Krishna Ringtone</li>\r\n	<li>Mere Sanware Ki Bashu Baaje Ringtone</li>\r\n	<li>Raghupati Raghava Ringtone</li>\r\n	<li>Sanwali Surat Pe Dil Mohan Ringtone</li>\r\n</ul>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Type of Krishna Ringtones</span></h2>\r\n\r\n<p>We know that to express Krishna devotion, people have created many types of music, which we have given below and we have shared with you the ringtones related to these types of music, which you can listen to.</p>\r\n\r\n<ul>\r\n	<li>Krishna Fluet Ringtones</li>\r\n	<li>Krishna Bhajan Ringtones</li>\r\n	<li>Krishna Songs Ringtones&nbsp;</li>\r\n	<li>Sweet Krishna Melody Ringtones</li>\r\n	<li>Fluet Ringtones</li>\r\n</ul>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Download Krishna Ringtone for Android &amp; iPhone</span></h2>\r\n\r\n<p>My dear Krishna devotees, your search ends here because today we have brought a tremendous collection of <strong>Krishna ringtones</strong> especially for you,</p>\r\n\r\n<p>we have provided two versions of Krishna ringtones in which Mp3 and M4r which you can use as Krishna ringtone on both iPhone and Android devices. One can easily set up and get absorbed in Krishna Bhakti.</p>\r\n\r\n<p>This awesome collection of Krishna ringtones and <a href=\"https://www.ringtonefly.co/krishna-ringtones/\">Krishna flute ringtones</a> will calm down your romance and immerse you in the ocean of Krishna devotion so download these Krishna ringtones now and let Krishna name sound in your ears every moment.</p>\r\n\r\n<p>These sounds will purify your surroundings and infuse your mind with new energy, so download these Krishna ringtones now from our site ringtonefly.co</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Add Krishna Ringtones to your Favorite List</span></h2>\r\n\r\n<p>Now you can add any of your Krishna ringtone to your favorite list and play it at any time, to add a Krishna ringtone to your wishlist, you will add it by giving a heart button below the play button of the fancy player box.</p>\r\n\r\n<p>By giving heart to a special <strong>Krishna ringtone</strong>, With This, you can also help the rest of the user in downloading the best ringtone. Your one heart can make another&#39;s life easier So Please Do it.</p>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"font-size:24px\">One-Click Ringtones Download Feature Available!</span></h3>\r\n\r\n<p>We all know how difficult it is to download any file or music ringtone on the internet, for what reason you know very well that there are many such websites which show only aids and popups in the name of ringtones,</p>\r\n\r\n<p>To overcome such a problem, our website RingtoneFly.co has brought for you, single-click download button with a simple interface so that you will be able to download any ringtone in just one click, this super fantastic feature will only be Supported in RingtoneFly.co.</p>\r\n\r\n<p>Hit The Download Button And Get <a href=\"https://www.ringtonefly.co/krishna-ringtones/\">Krishna Ringtone</a> And Krishna Flute Ringtones.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Quik Sharing! Options for Krishna Ringtone</span></h2>\r\n\r\n<p>Now ringtone sharing is done because you get a super quick sharing option in our site <a href=\"https://www.ringtonefly.co/\">ringtonefly.co</a> so that you can share any ringtone from <a href=\"https://www.ringtonefly.co\">Ringtonefly.co</a> in few seconds to share your favorite ringtone with your relatives. For sharing arrow has been given at the bottom of the player box, from that you will be able to share the same Krishna ringtone that you have heard,</p>\r\n\r\n<p>And if you want to share all ringtones at once, you can click on the three dots in the mobile window and click on the share button, which will share the entire ringtone page.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">&nbsp;About Krishna Ringtones</span></h2>\r\n\r\n<p>We all want to be absorbed in the worship of Lord Shri Krishna and reach that eternal end where no bondage can bind you and you want to sleep in the womb of this infinite creation,&nbsp;<br />\r\nthen download these Krishna ringtones now and Shri Krishna every time. Be dyed in the color of devotion.</p>\r\n\r\n<p>This Krishna ringtone is very attractive and full of melodious sounds. It contains a collection of miraculous sounds of the Shri Krishna flute.&nbsp;</p>\r\n\r\n<p>This Krishna ringtone will give your mental calmness, concentration, and calmness. This mind-blowing Krishna ringtones collection has been brought for you.</p>\r\n\r\n<h4 style=\"text-align:center\"><span style=\"font-size:24px\">Gift From Our Heart!</span></h4>\r\n\r\n<p>We have also prepared Tremendous Gift for all of you, that is we are going to Release our mobile application soon, in which there will be a special Krishna Ringtones or <strong>Krishna Flute Ringtones</strong> category for all of My <strong>Lord Krishna&#39;s</strong> Devotee&rsquo;s so After Using Our Mobile Application you can change your mobile ringtone anytime directly from our mobile application.&nbsp;<br />\r\nAnd you will get to see even more awesome features related to your devotion.&nbsp;</p>\r\n\r\n<p>In-Depth from our Heart&nbsp;</p>\r\n\r\n<p>By<a href=\"https://www.ringtonefly.co\"> </a><strong><a href=\"https://www.ringtonefly.co\">RingtoneFly.co</a>...</strong></p>', '2021-08-27 12:27:02.046307'),
(384, NULL, '<p><strong>Telugu Ringtones</strong> - It seems that you are also a huge fan of Telugu cinema, that&#39;s why you have set out in search of Telugu ringtones and for your information, let me tell you that you will find all the <strong>Telugu ringtones</strong> collection available on the internet at your only one place named <strong>RingtoneFly</strong>.</p>\r\n\r\n<p>Nowadays everyone wants to customize their mobile ringtone in their favorite way and when it comes to a Telugu ringtone lover he must spend his precious time setting which ringtone is best for him? We are there to help you when this happens because we know that Telugu ringtones are not just ringtones for you but also calm and relax your mind.</p>\r\n\r\n<p>And we cannot spoil this feeling like this, so we have prepared such a wonderful gift for special ringtone lovers, apart from this we have also brought a special gift for you, which you can see below.</p>\r\n\r\n<p>And if we talk about recent times, then do not ask for so much craze in the people of the <strong>Telugu musi</strong>c industry, people like to listen to Telugu songs and Telugu ringtones again and again.</p>\r\n\r\n<p>To continue with this feeling, we bring you a collection of Telugu Ringtones with <strong>High-Quality Audio &amp; Smooth Voice</strong>.</p>\r\n\r\n<p>You can read the below instruction to <strong>Download Telugu Ringtones</strong>.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Best Telugu Ringtones Collection of Top Singers</span></h2>\r\n\r\n<p>Here we shared with you a collection of <a href=\"https://www.ringtonefly.co/telugu-ringtones/\">Telugu ringtones</a> of all the famous Telugu singers&#39; songs so far to help you download the best Telugu ringtones.</p>\r\n\r\n<p>These are some of the popular telugu singers whose ringtone we have collected here. Telugu Singers : Shreya Ghoshal, S.P. Sailaja, S. Janaki, LV Revanth, Malavika, Noel Sean, Sunita, Chinmayi, Mangli, Sid Sriram, Ananya Bhat, Srikrishna,&nbsp;</p>\r\n\r\n<p>Ringtones of Some Famous Telugu Singers.</p>\r\n\r\n<ul>\r\n	<li>Veyi Naamaala Vaada Ringtone</li>\r\n	<li>Uppena BGM Ringtone</li>\r\n	<li>Jala Jala Patham Ringtone</li>\r\n	<li>Kgf 2 Ringtone</li>\r\n	<li>O Sakkanoda Telugu Ringtone</li>\r\n	<li>Okey Oka Lokam Ringtone</li>\r\n	<li>Dheera Dheera Kgf Ringtone</li>\r\n</ul>\r\n\r\n<p>Let&#39;s get started with the most awaited collection of Telugu ringtones.<br />\r\nBecause it will refresh your heart and mind, will give you such a refreshment which you have never felt before.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Top User Rated Telugu Ringtones</span></h2>\r\n\r\n<p>Our website <a href=\"https://www.ringtonefly.co/\">RingtoneFly.co</a> has selected some top user rated ringtones in each category, which you can see in any category, with the help of these top user rated ringtones, you will get to know a lot in downloading great ringtones Which ringtone is most liked by people and you can easily choose yours too. Here are some Top user Rated Ringtones.</p>\r\n\r\n<ul>\r\n	<li>Ramuloo Ramulaa Ringtone</li>\r\n	<li>Podham Ringtone</li>\r\n	<li>Gira Gira Gira Ringtone</li>\r\n	<li>Nee Chitram Choosi Ringtone</li>\r\n	<li>Kolu Kolu Ringtone</li>\r\n	<li>Bhoom Bhaddhal Ringtone</li>\r\n</ul>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Download Popular Telugu Ringtones</span></h2>\r\n\r\n<p>In this great category of telugu ringtones we have shared with you more than 300+ ringtones, in them you will find all types of ringtones like - Telugu Love Ringtones, Old Telugu Ringtones, Telugu Melody Ringtones, many such amazing You will get to see the collection of ringtones.&nbsp;</p>\r\n\r\n<p>Also you can download the most popular telugu ringtones which you will get to see above</p>\r\n\r\n<ul>\r\n	<li>Kgf Ringtone</li>\r\n	<li>Saranga Dariya Ringtone</li>\r\n	<li>Kanti Papa Ringtone</li>\r\n	<li>Naa Kanulu Yepudu Ringtone</li>\r\n	<li>Oorantha Ringtone</li>\r\n	<li>Laahe Laahe Ringtone</li>\r\n</ul>\r\n\r\n<p>Above List of Ringtones Share with you a great Piece of Ringtone that is So Popular.&nbsp;</p>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"font-size:24px\">Type of Telugu Ringtones&nbsp;</span></h3>\r\n\r\n<p>We have shared with you about almost 4+ telugu ringtones genres in the category of <strong>telugu ringtones</strong> which are given below</p>\r\n\r\n<ul>\r\n	<li>BGM Telugu Ringtones</li>\r\n	<li>Love Telugu Ringtones</li>\r\n	<li>Telugu Sad Ringtones</li>\r\n	<li>Telugu Melody Ringtones</li>\r\n</ul>\r\n\r\n<p>These all genres are most popular in Telugu songs that&rsquo;s why we shared their ringtones.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Download Telugu Ringtones for Android &amp; iPhone</span></h2>\r\n\r\n<p>Pretty Sure that these Ringtones play an important role in your life not just as a tune , rather it gives you immense energy to your body and feels good.</p>\r\n\r\n<p>That&#39;s why, we don&rsquo;t want to take any to spoil this awesome feel so here we done great job for you that is;</p>\r\n\r\n<p>We know that you can be either an iPhone or Android user, for this special we have made Telugu Ringtones available for both iPhones and Androids devices.</p>\r\n\r\n<p>From which you can download <strong>Telugu ringtone</strong> according to your handset, see the below given instruction to download it now.<br />\r\nDownload for iPhones: To download Telugu ringtone for iPhone, click on the green color button which will start downloading your ringtone in M4r format.</p>\r\n\r\n<p>Download for Androids : To download Telugu ringtone for Android device, click on the blue color download button which will start downloading your ringtone in Mp3 format.</p>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"font-size:24px\">Add Telugu Ringtones to your Favorite List</span></h3>\r\n\r\n<p>Music is not a word, it is the soul of that pain, that joy, that anger that comes out of your heart,</p>\r\n\r\n<p>It would give this pain a golden voice that strikes straight into the heart<br />\r\nThe waves of music can drown the ocean, so much so that even the waves of pain shed tears.</p>\r\n\r\n<p>Telugu music ringtones are also such that everyone wants to add it to their favorite list.</p>\r\n\r\n<p>To overcome this shortcoming, a Favorite List feature has been added for you, which is that you can add heart to any Telugu ringtone and add it to your favorite list, so that it will be easy for you to find your favorite ringtone.</p>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"font-size:24px\">One-Click Download Feature Available!</span></h3>\r\n\r\n<p>This feature is my personal best so far which allows you to download any ringtone in one click. Now this is why, you know that there are many sites which just show pop ups for downloading ringtones.&nbsp;</p>\r\n\r\n<p>You have to face this problem but here you don&#39;t have to face it on our site <a href=\"https://www.ringtonefly.co/\">RingtoneFly.co</a>, so we have this awesome feature that is only added for my users who want to feel music every time. With this you can download Telugu ringtones more easily.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Quick Sharing! Options for Telugu Ringtones</span></h2>\r\n\r\n<p>Telugu Ringtones have a huge fan following but it&#39;s not enough for this type of god level soul touching Music Then I think Telugu Ringtone deserve more popularity also for their musician who made this awesome piece for this we have to spread telugu ringtones on every social media platform for this you can use Quick Sharing Option for <a href=\"https://www.ringtonefly.co/telugu-ringtones/\">Telugu Ringtones</a>, Just Click on Sharing option it show you many social media option where you want to spread this piece.<br />\r\nYou can check it out at the bottom of the player box.&nbsp;</p>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"font-size:24px\">About Telugu Ringtones</span></h3>\r\n\r\n<p>Although the Telugu language is mostly spoken in Andhra Pradesh and Telangana, when it comes to music, there is no language barrier in it, that is because the music of Telugu language goes straight to the heart and everyone feels such a feeling. That&#39;s why people are very interested in Telugu Songs and their ringtones.</p>\r\n\r\n<p>Talking about the Telugu language, it is considered as the main dialect of Andhra Pradesh and Telangana, and not only this, such a language is prevalent in the nearby places as well.</p>\r\n\r\n<p>Telugu ringtones can be a means of calming the mind as it has a great effect on who Listens to it again and again and calms the soul.</p>\r\n\r\n<h4 style=\"text-align:center\"><span style=\"font-size:24px\">Gift From Our Heart!</span></h4>\r\n\r\n<p>Every time this time also we have brought a lovely gift for you, that is we have provided all the collection of <a href=\"https://www.ringtonefly.co/telugu-ringtones/\">Telugu ringtones</a> for you in our mobile application ringtoneFly so you can download these ringtones from our mobile application RingtoneFly.</p>\r\n\r\n<p>You can download it directly and at the same time, even more, the amazing features you will see there.</p>\r\n\r\n<p>You can tell us how you liked this collection, do not forget to share it with your friends and family, if you have any ringtone in your mind that we have missed, then you can tell us by contacting us, we will definitely add it.</p>\r\n\r\n<p>By <strong>RingtoneFly.co ...</strong></p>', '2021-08-27 12:28:30.986521');
INSERT INTO `config_containerplugin` (`cmsplugin_ptr_id`, `title`, `content`, `updated_at`) VALUES
(466, 'DMCA', '<h2><span style=\"font-size:20px\">The process of Claiming the Copyright Infringement</span></h2>\r\n\r\n<p>If you want unauthorized content removed from ringtonefly.co, please read the instructions below:</p>\r\n\r\n<p>It is ringtonefly.co&#39;s policy to work with copyright owners to protect their intellectual property and to insure that unauthorized content is not distributed via the ringtonefly.co network.</p>\r\n\r\n<p>If you believe in good faith that any material provided through the Service infringes upon your copyright, you may send notice to ringtonefly.co requesting that the material or access to the material be removed, pursuant to the Digital Millennium Copyright Act (&quot;DMCA&quot;), by providing our Copyright Agent with the following information in writing (see 17 U.S.C 512(c)(3) and <a href=\"http://www.loc.gov/copyright\">http://www.loc.gov/copyright</a> for further details). The notice must include all of the following:</p>\r\n\r\n<ul>\r\n	<li>A physical or electronic signature of a person authorized to act on behalf of the owner of an exclusive right that is allegedly infringed. (Simply typing your name at the end of an email or electronically transmitted letter will suffice as an &quot;electronic signature.&quot;)</li>\r\n	<li>Identification of the copyrighted work claimed to have been infringed, or, if multiple copyrighted works at a single online site are covered by a single notification, a representative list of such works at that site. (You can give us a list of the copyrighted works you own and a brief description of the works, attach a copy of the works or send us the URL for a website that displays the works you own.)</li>\r\n	<li>Identification of the material that is claimed to be infringing or to be the subject of infringing activity and that is to be removed or access to which is to be disabled, and information reasonably sufficient to permit the service provider to locate the material. (Identify the infringing material by sending us the URL or item ID for the content you claim is infringing and identify the portion that is infringing. Please note that item ID usually can be found on the page where the material is previewed.)</li>\r\n	<li>Information reasonably sufficient to permit ringtonefly.co to contact you, such as an address, telephone number, and, if available, an electronic mail address at which the complaining party may be contacted.</li>\r\n	<li>A statement that you &quot;have a good faith belief that use of the material in the manner complained of is not authorized by the copyright owner, its agent, or the law.&quot; (You can simply copy this statement and put it in your letter, as long as the statement is true.)</li>\r\n	<li>A statement that &quot;the information in the notification is accurate, and under penalty of perjury, that the complaining party is authorized to act on behalf of the owner of an exclusive right that is allegedly infringed.&quot; (You can simply copy this statement and put it in your letter, as long as the statement is true.)</li>\r\n</ul>\r\n\r\n<p>Without such information, ringtonefly.co cannot reasonably comply with its obligations to intellectual property owners and to the members of the ringtonefly.co community.</p>\r\n\r\n<p>Please note that under Section 512(f) of the Copyright Act, any person who knowingly materially misrepresents that material or activity was removed or disabled by mistake or misidentification may be subject to liability.</p>\r\n\r\n<p>Be assured that ringtonefly.co is designed to fully respect intellectual property rights. ringtonefly.co enforces and will continue to enforce its Terms of Service which strictly prohibit the public posting of copyrighted material to which the poster does not have rights and together with the aforementioned activities ringtonefly.co brings further protection to content owners seeking to prohibit the distribution of their copyrighted works while offering a user the best collaborative mobile platform. Please also be advised that we enforce a policy that provides for the termination in appropriate circumstances of subscribers who are repeat infringers.</p>\r\n\r\n<p>Please note that ringtonefly.co operates globally and had adopted this policy to meet the many legal requirements it must comply with.</p>\r\n\r\n<p>For more information about the ringtonefly.co Terms of Service, please see<br />\r\n<a href=\"https://www.ringtonefly.co/privacy-policy/\">https://www.ringtonefly.co/privacy-policy/</a></p>\r\n\r\n<p>Ringtonefly.co Copyright Agent contact information:</p>\r\n\r\n<p>Copyright Agent<br />\r\nRingtoneFly.co,</p>\r\n\r\n<p>Email: <a href=\"mailto:dmca@ringtonefly.co\">dmca@ringtonefly.co</a></p>\r\n\r\n<p>Counter-Notification</p>\r\n\r\n<p>If you believe in good faith that a notice of copyright infringement has been wrongly filed against you, you may send ringtonefly.co a counter-notice. All notices with respect to ringtonefly.co should be sent to the ringtonefly.co Copyright Agent. ringtonefly.co suggests that you consult your legal advisor before filing a notice or counter-notice. You expressly acknowledge and agree that ringtonefly.co shall not be liable to you under any circumstances for declining to replace material. Also, be aware that there can be penalties for false claims under the DMCA.</p>', '2021-07-21 15:10:47.389082'),
(469, NULL, '<p><strong>Tamil Ringtones</strong> - It seems that you are also searching for Tamil ringtones, if I am right then your destination is in front of you, which means you have come to the right place from where you can easily download <a href=\"https://www.ringtonefly.co/tamil-ringtones/\">Tamil ringtones</a>.</p>\r\n\r\n<p>Nowadays everyone likes to customize their mobile according to their mood and their choice, which their most favorite customization is, ringtone means the heart of a smartphone that when someone calls on his phone, then someone Make your ringtone sound and attracts everyone towards you and you know how much craze of Tamil ringtones is due to the increasing popularity of Kollywood in the market, today everyone is a Tamil cinema lover and for him, there is no better option than Tamil ringtones.&nbsp;</p>\r\n\r\n<p>And these <a href=\"https://www.ringtonefly.co/tamil-ringtones/\">Tamil Ringtones</a> lovers want to download Tamil ringtone songs, Tamil ringtone cut songs, Love Tamil Ringtones, and set them as the default ringtone of their mobile.<br />\r\nAnd to make your user experience even better, we bring you a grand collection of <strong>High-Quality Audio</strong> &amp; <strong>Smooth Voice</strong> Best Tamil Ringtones.</p>\r\n\r\n<p>trust me it&#39;s going to be awesome and Rocking your ringtone experience so without wasting any time just jump in it.&nbsp;</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Best Tamil Ringtones Collection of Top Singers</span></h2>\r\n\r\n<p>Tamil Ringtones Lover We have shared here a beautiful collection of Tamil ringtones for you, in which we have provided ringtones of the most popular Tamil singer&rsquo;s songs so far, this Tamil ringtones collection will help you to download the best ringtone, so you will know. Which ringtone is best for personalizing your mobile so check out the New ringtones collection of Top Singers.</p>\r\n\r\n<p>Here are some popular Tamil singers and their Ringtones that we collected here; SP. Balasubramaniam, Chitra, Yesudas, Illayaraja, Vijay,&nbsp;Janaki, Shreya Ghoshal, Mano, Anuradha Sriram, Karthik, Hariharan, Srinivas, Sujaatha, Susheela, Chinmayi, Harini.</p>\r\n\r\n<p>Ringtones of Some Famous Tamil Singers</p>\r\n\r\n<ul>\r\n	<li>Kutty Pattas tamil ringtone</li>\r\n	<li>Asku Maaro Tamil ringtone</li>\r\n	<li>Manike Mage Mithe tamil ringtone</li>\r\n	<li>Unnodu Naanum Tamil Ringtone</li>\r\n	<li>Esswaran Mangalyam Tamil Ringtone</li>\r\n	<li>Djjohal Tamil ringtone</li>\r\n</ul>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Top User Rated Tamil Ringtones</span></h2>\r\n\r\n<p>Our Website <a href=\"https://www.ringtonefly.co/\">RingtoneFly.co</a> has selected some top user rated ringtones in each category, which you can see in any category, with the help of these top user rated ringtones, you will get to know a lot in downloading great ringtones Which ringtone is most liked by people and you can easily choose yours too.</p>\r\n\r\n<p>Also like this Tamil Ringtones Category having top user-rated ringtones helps Tamil ringtones lovers to get the best one.</p>\r\n\r\n<p>Here are some Top User Rated Tamil Ringtones.</p>\r\n\r\n<ul>\r\n	<li>Master Bhawani Tamil Ringtone</li>\r\n	<li>Holi Khel Rahe Banke Bihari Tamil Ringtone</li>\r\n	<li>Kutty Pattas Tamil Ringtone</li>\r\n	<li>Kannoojal aadi Tamil Ringtone</li>\r\n	<li>Darbar Thalaivar Tamil Ringtone</li>\r\n</ul>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Download Popular Tamil Ringtones</span></h2>\r\n\r\n<p>In this category of our Tamil ringtones, we have shared with you a collection of more than <strong>400+ Tamil ringtones</strong>, out of which you can download the most popular ringtones by looking at them, our site <a href=\"https://www.ringtonefly.co/\">RingtoneFly.co</a>&nbsp;has a feature that allows you to download the most downloaded ringtones. Above all, it means that you can directly download popular ringtones without any effort,&nbsp;</p>\r\n\r\n<p>And some of those special ringtones which are most popular, we have added their names below.<br />\r\nHere are some Most Downloaded Tamil Ringtones</p>\r\n\r\n<ul>\r\n	<li>Tamil Cut Songs Ringtone</li>\r\n	<li>Bigil Rayappan Tamil Ringtone</li>\r\n	<li>KGF Tamil Ringtone</li>\r\n	<li>Hey Single Pasanga Natpe Tamil Ringtone</li>\r\n	<li>Unakena Urug Tamil Ringtone</li>\r\n</ul>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Type of Tamil Ringtones</span>&nbsp;</h2>\r\n\r\n<p>Tamil Ringtones Lover do you know? We have shared with you about almost 6+ <strong>Tamil ringtones</strong> genres in the category of Tamil ringtones which are given below so you can check from here.&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Tamil Melody Ringtones</li>\r\n	<li>Old Tamil Ringtones</li>\r\n	<li>Tamil Cute Love Ringtones</li>\r\n	<li>BGM Tamil Ringtones</li>\r\n	<li>Tamil Sad Ringtones</li>\r\n	<li>Cute Songs Tamil Ringtones</li>\r\n</ul>\r\n\r\n<p>These all Ringtone genres are most popular in Tamil Ringtones that&rsquo;s why we mention them in this List of Tamil Ringtones.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Download Tamil Ringtone for Android &amp; iPhone</span></h2>\r\n\r\n<p><br />\r\nNow no matter whether the user is Android or IOS, both are crazy about Tamil ringtones and both like to set Tamil ringtone as the default ringtone in their mobile but now the matter comes here that most of it are available on the internet.</p>\r\n\r\n<p>The website does not make available ringtones for iOS devices or simply says ringtones are not available for iPhone users. To solve this problem, our site RingtoneFly.co has made available Tamil ringtones for both iOS and Android devices.</p>\r\n\r\n<p>This means you can now enjoy Tamil ringtones on both <strong>Android</strong> and <strong>IOS</strong> devices.</p>\r\n\r\n<p>Now it comes to where you will download Tamil ringtones for IOS and Android, then suppose you have selected any of your favorite ringtones, our website is ringtone class and click on it and from there you will find the option with a fancy player box. Go there you will see two buttons, one ringtone download for android and ringtone download for ios now whatever user you are iOS android users from there you can download ringtone for yourself and apply your device according to your operating system From.</p>\r\n\r\n<p>For Android users, there is the MP3 format and for iPhone users or IOS&nbsp;users, the m4r format is given as will be visible in blue and green Download Buttons.</p>\r\n\r\n<p>So simply download and set your favorite Tamil ringtone on your mobile and feel the world with music.</p>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"font-size:24px\">Add Tamil Ringtones to your Favorite List</span></h3>\r\n\r\n<p>Who doesn&#39;t like to make a list of their favorite ringtones? Every Tamil ringtone lover wants to create a personal life favorite list of their favorite Tamil ringtones or rather to have quick access to their favorite Tamil ringtones. Now you can download Tamil ringtones on our site. You can add this ringtone to your favorite list by giving it a hot Hey I sincerely hope you have liked this picture very much.</p>\r\n\r\n<p>Adore this beautiful collection of Tamil ringtones by giving a heart to your favorite ringtone now.</p>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"font-size:24px\">One-Click Download Feature Available for Tamil Ringtones!</span></h3>\r\n\r\n<p>Like me, if you are a daily internet consumer then you must have needed to download a file online at some point in time and when you went to download it, you will find many popups windows, many fake download buttons, etc and many more in it. Must have seen such a site in which there are 3- 4 download buttons which are all fake and on pressing any download button, only pop-ups are opened, no file is downloaded and even if the file is found, the file is corrupted,</p>\r\n\r\n<p>so many problems Faced when you want to download an online file but you will not see all this on our site you can directly click on any ringtone and download it directly from there that too in a single click without any alternate Window This ultimate feature makes our website ringtone fly differently from others</p>\r\n\r\n<p>You can check the download option on the fancy player box to download the ringtone from where the ringtone will be added directly to your download manager.</p>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"font-size:24px\">Quik Sharing! Options for Tamil Ringtones</span></h3>\r\n\r\n<p>Today in 2021, the content and news is spreading like fire where everyone wants to share tremendous and quality content further or whether it is a ringtone,&nbsp;</p>\r\n\r\n<p>today a new trend comes on social media every day and that trend Along comes his beat which is very much discussed, people like to download this trending beat ringtone and also like to share it with friends and family to come ahead</p>\r\n\r\n<p>that&#39;s why we have got these popular and banging Tamil ringtones for you with quick sharing option to share anywhere in social media so that you can see it in the bottom of the ringtone player box and from that, you can share ringtone directly and do you know your one share can make this ringtone popular and also in trends&nbsp;</p>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"font-size:24px\">About Tamil Ringtones</span></h3>\r\n\r\n<p><strong>Tamil Nadu</strong> is an important part of our India which is in the southern region and the Tamil language is spoken widely in Tamil Nadu and Tamil Nadu has the ability to reflect the culture of our India, Tamil Nadu is very skilled in dance, music, and handmade items.</p>\r\n\r\n<p>The most popular in Tamil Nadu is the cinema in which the whole country has been attracted towards it and why you know this, we also know Tamil cinema by another name which we call <strong>Kollywood</strong>.</p>\r\n\r\n<p>Kollywood movies are very much a hit and their songs also rule the hearts of all Indians.That&#39;s why even today the craze of Kollywood is so much that people personalize their mobile by making the songs of their movies as ringtones, Tamil ringtones are the most popular ringtones today which are searched a lot on the internet and to meet the demand of the same users.</p>\r\n\r\n<p>That&#39;s why we have come up with this powerful collection of <strong>Tamil ringtones</strong>.</p>\r\n\r\n<p>And we hope you liked this collection of Tamil ringtones and don&#39;t forget to share such an amazing collection on your social media.</p>\r\n\r\n<h4 style=\"text-align:center\"><span style=\"font-size:24px\">Gift From Our Heart!</span></h4>\r\n\r\n<p>As always, today we have brought some special gifts for you. You will also get to see tremendous features which you will like very much.</p>\r\n\r\n<p>If you find any ringtone missing in our <a href=\"https://www.ringtonefly.co/tamil-ringtones/\">Tamil ringtones</a> collection and are sure that the Tamil ringtone is incomplete without that ringtone, then we will definitely add that ringtone to us.</p>\r\n\r\n<p>You can also tell us your favorite Tamil ringtone, you can contact us by visiting the Contact Us page to tell us about the ringtone you have in mind.</p>\r\n\r\n<p>Thank you very much for visiting our website <strong>RingtoneFly.co</strong></p>\r\n\r\n<p>And yes you don&#39;t forget to bookmark our site so that you can access our site fast and easily.</p>\r\n\r\n<p>In-Depth from our heart By <a href=\"https://www.ringtonefly.co\">RingtoneFly.co</a>&nbsp;...</p>', '2021-08-27 12:29:48.923998'),
(544, NULL, '<p><strong>Punjabi&nbsp;Ringtones</strong> - &nbsp;Music or the choice of those who listen to them is very different, but even today Punjabi songs and their ringtones are the most popular among all of them.</p>\r\n\r\n<p>People love to start their day with a sweet ringtone that gives them freshness in the morning and it will make their whole day better and trust me guys these <a href=\"https://www.ringtonefly.co/punjabi-ringtones/\">Punjabi Ringtones</a> will remind you of your sweet moments every moment because of their sweet beats and heart touching lyrics.&nbsp;</p>\r\n\r\n<p>And you know that in 2021 Punjabi Song has won the hearts of people and maybe you will be one of them too. That&#39;s why we have brought an awesome collection of <strong>Punjabi ringtones</strong> for you too.</p>\r\n\r\n<p>Now your wait is over now you can listen to these Punjabi Songs as ringtone on every bar and enjoy them then without any delay download these Punjabi ringtones now and set use as your default ringtone.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Best Punjabi &nbsp;Ringtones Collection of Top Singers</span></h2>\r\n\r\n<p>For all of you, we have also prepared a special collection in which you will get to see Punjabi ringtones of Best and Popular Punjabi Singers.</p>\r\n\r\n<p>Today till 2021 there are many Punjabi singers in the music industry and everyone performs their best, some of them are the best, whose music touches your heart, and their collection has been shared with you.&nbsp;</p>\r\n\r\n<p>Most popular singers of all time: Jass Manak, Guri, Guru Randhawa, Hardy Sandhu, Jassie Gill, Sidhu Moose Wala, Diljit Dosanjh, B Praak, Pav Dharia, Ammy Virk, Honey Singh, etc.</p>\r\n\r\n<p>These most popular singers have shared with you the <strong>heart-touching</strong> Punjabi ringtones of songs.</p>\r\n\r\n<p>Below is the collection of Best Punjabi Ringtones of These Most Popular Punjabi Singers</p>\r\n\r\n<ul>\r\n	<li>Waalian Punjabi Ringtnone</li>\r\n	<li>Bapu tere Karke Ringtone</li>\r\n	<li>Kaala Rang Ringtone</li>\r\n	<li>Relation Ringtone</li>\r\n</ul>\r\n\r\n<p>You can easily play and download all these Punjabi ringtones, check them above to download Punjabi ringtones.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Top User Rated Punjabi &nbsp;Ringtones</span></h2>\r\n\r\n<p>Punjabi ringtones which are liked by everyone, listening to their sweet best, everyone&#39;s mind swells and how would it be that if you get to hear some such Punjabi ringtones which are very much liked by all the people, then present in front of you. Top User Rated Punjabi Ringtones<br />\r\nIn which all the users of our website have liked to listen and download which ringtone most often</p>\r\n\r\n<p>Here is most liked Punjabi Ringtones</p>\r\n\r\n<ul>\r\n	<li>Lehnga Ringtone</li>\r\n	<li>Dil tod Ke Ringtone</li>\r\n	<li>Prada Ringtone</li>\r\n	<li>Rabb Wangu Ringtone</li>\r\n	<li>Pulkhari Ringtone</li>\r\n	<li>8 Parche Ringtone</li>\r\n</ul>\r\n\r\n<p>And now one thing is confirmed that you have liked this collection, so now what are you afraid of, I think you should add your favorite page to the collection and our site so that you can easily access our site.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Download Popular Punjabi &nbsp;Ringtones</span></h2>\r\n\r\n<p>You know that many people have listened to a popular Punjabi ringtone, but probably forget its name, maybe it must have happened to you too because it happened to me somewhere, for this, we did something for you. Your life will become even easier that is that you can easily download the most popular ringtones of Punjabi ringtones on our site, and that&#39;s how you will get to see the most downloaded ringtones on top of each category, which means that ringtone most downloaded<br />\r\nAmong them, we have added some of the most popular Punjabi ringtones for you to this list, which has been downloaded the most.</p>\r\n\r\n<p>These are some of the most popular and downloaded Punjabi ringtones.</p>\r\n\r\n<ul>\r\n	<li>Brown Munde Ringtone</li>\r\n	<li>Lahore Ringtone</li>\r\n	<li>Libaas Ringtone</li>\r\n	<li>Temporary Pyar Ringtone</li>\r\n	<li>Qismat Ringtone</li>\r\n	<li>Pani Di Gal Ringtone</li>\r\n	<li>High Rated Gabru Ringtone</li>\r\n	<li>Made in India Ringtone</li>\r\n</ul>\r\n\r\n<p>Now you can find these ringtones by searching the name in the search box and you can also download the top most popular ringtones by going to the category of Punjabi ringtones.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Type of Punjabi &nbsp;Ringtones&nbsp;</span></h2>\r\n\r\n<p>Punjabi Ringtones Lover do you know? We have shared with you almost 6+ Punjabi ringtones genres in the category of Punjabi ringtones which are given below so you can check from here.</p>\r\n\r\n<ul>\r\n	<li>Punjabi Melody Ringtones</li>\r\n	<li>New Punjabi Ringtones</li>\r\n	<li>Punjabi Love Ringtones&nbsp;</li>\r\n	<li>BGM Punjabi Ringtones&nbsp;</li>\r\n	<li>Punjabi Sad Ringtones&nbsp;</li>\r\n	<li>Cute Songs Punjabi Ringtones&nbsp;</li>\r\n</ul>\r\n\r\n<p>These all Ringtone genres are most popular in PunjabiRingtones that&rsquo;s why we mention them in this List of Punjabi Ringtones.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Download Punjabi &nbsp;RingtoneS for Android &amp; iPhone</span></h2>\r\n\r\n<p>You can download any format ringtone from our site RingtoneFly like <strong>Mp3 and M4r</strong>.</p>\r\n\r\n<p>We feature ringtones for both iPhone or Android users according to their supported formats and It has become quite a common thing that nowadays everyone likes IOS and android devices according to their own choice, so we have also made this option available so that the site is friendly for both the users and they can easily download <a href=\"https://www.ringtonefly.co/punjabi-ringtones/\">Punjabi ringtone</a>.</p>\r\n\r\n<p>iPhone and Android users will see two download buttons at the bottom of the fancy player box to download the ringtone in their format, in which they can choose and download either Mp3 or M4r.</p>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"font-size:24px\">Add Punjabi Ringtones to your Favorite List</span></h3>\r\n\r\n<p>Often many people are fond of collecting their favorite things and when it comes to music, everyone likes to collect their favorites very much, to make it easier, we can call you favorite list or wish-list feature. Yes, in this you have to add your favorite Punjabi ringtone by giving a heart and adding it to your wish list, which will be easy in two ways, one, you will be able to access your collection easily and secondly, your given heart will help the other viewer.</p>\r\n\r\n<p>Users will be able to find out which <strong>Punjabi ringtone</strong>&nbsp;is the most liked, so that they will be able to play and download it easily, then give heart to their favorite ringtone right now.</p>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"font-size:24px\">One-Click Download Feature Available!</span></h3>\r\n\r\n<p>Friends, it is a bit difficult to access anything in the internet world, but even more difficult is to download any content from there, in the same way, you download Punjabi ringtones and download it on people, it becomes very complicated when If you go to download any ringtone, then many websites offer you to subscribe to their monthly or yearly plans, then you can download the ringtone.</p>\r\n\r\n<p>Some sites show you the ad above and bar popup shows and Keep doing those who take you to the unwanted site instead of downloading you only do ad show but believe me guys our site is the most user friendly and in this, you can download Punjabi ringtone without any problem and that too just <strong>one click</strong> In this means if you want to download any ringtone for that you have to do just one click.</p>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"font-size:24px\">Quik Sharing! Options for Punjabi &nbsp;Ringtone</span></h3>\r\n\r\n<p>Now everyone&#39;s wish is to download their <strong>favorite ringtones</strong> and share them, you would like to share these Punjabi ringtones with Oro and want them to enjoy these ringtones too, then we have fulfilled this wish for you too.</p>\r\n\r\n<p>This means that now you can share any Punjabi ringtone with your friend, family, anyone, just you have to choose any of your favorite ringtone to share ringtone and by clicking on it you will get a player.</p>\r\n\r\n<p>The box will be visible, there will be a share option, from there you can share that ringtone and you can also listen to it.</p>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"font-size:24px\">About Punjabi Ringtones</span></h3>\r\n\r\n<p>Punjab India is very famous for its culture and its artwork and if we talk about the language of Punjabi people, then they speak the Punjabi language which is a very sweet language and one more special thing about Punjabi people is that their singer&#39;s songs are his.</p>\r\n\r\n<p>Even though in their own language, there is no problem or hindrance in their hearing, and one who does not know Punjabi can also easily listen to the songs and feel them. Singers who make <strong>Punjabi songs</strong> express their feelings in them.</p>\r\n\r\n<p>It is such that it touches the heart and people feel like listening to it, because of this people prefer to set the ringtone of those songs on their mobile so that they can listen to Punjabi ringtone and feel it. If you can, then download and listen to <strong>Punjabi Ringtones</strong> now.</p>\r\n\r\n<h4 style=\"text-align:center\"><span style=\"font-size:24px\">Gift From Our Heart!</span></h4>\r\n\r\n<p>Like every time, this time also we have brought a special gift or just a heart touching gift for all of you Punjabi ringtone lovers and that is that we have launched our one mobile application in which we have almost all categories added. And we have also added the category of <strong>Punjabi ringtones</strong> in it, which means now you can play and download your favorite and latest ringtone at any time.</p>\r\n\r\n<p>Now tell me how did you like this surprise, so now what is the matter, quickly bookmark our <a href=\"https://www.ringtonefly.co/\">RingtoneFly</a> site and share it with your friends and Family, Thank you from the bottom of my heart for visiting our website.</p>', '2021-08-27 11:41:40.453951'),
(547, NULL, '<p><strong>Punjabi&nbsp;Ringtones</strong> - &nbsp;Music or the choice of those who listen to them is very different, but even today Punjabi songs and their ringtones are the most popular among all of them.</p>\r\n\r\n<p>People love to start their day with a sweet ringtone that gives them freshness in the morning and it will make their whole day better and trust me guys these <a href=\"https://www.ringtonefly.co/punjabi-ringtones/\">Punjabi Ringtones</a> will remind you of your sweet moments every moment because of their sweet beats and heart touching lyrics.&nbsp;</p>\r\n\r\n<p>And you know that in 2021 Punjabi Song has won the hearts of people and maybe you will be one of them too. That&#39;s why we have brought an awesome collection of <strong>Punjabi ringtones</strong> for you too.</p>\r\n\r\n<p>Now your wait is over now you can listen to these Punjabi Songs as ringtone on every bar and enjoy them then without any delay download these Punjabi ringtones now and set use as your default ringtone.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Best Punjabi &nbsp;Ringtones Collection of Top Singers</span></h2>\r\n\r\n<p>For all of you, we have also prepared a special collection in which you will get to see Punjabi ringtones of Best and Popular Punjabi Singers.</p>\r\n\r\n<p>Today till 2021 there are many Punjabi singers in the music industry and everyone performs their best, some of them are the best, whose music touches your heart, and their collection has been shared with you.&nbsp;</p>\r\n\r\n<p>Most popular singers of all time: Jass Manak, Guri, Guru Randhawa, Hardy Sandhu, Jassie Gill, Sidhu Moose Wala, Diljit Dosanjh, B Praak, Pav Dharia, Ammy Virk, Honey Singh, etc.</p>\r\n\r\n<p>These most popular singers have shared with you the <strong>heart-touching</strong> Punjabi ringtones of songs.</p>\r\n\r\n<p>Below is the collection of Best Punjabi Ringtones of These Most Popular Punjabi Singers</p>\r\n\r\n<ul>\r\n	<li>Waalian Punjabi Ringtnone</li>\r\n	<li>Bapu tere Karke Ringtone</li>\r\n	<li>Kaala Rang Ringtone</li>\r\n	<li>Relation Ringtone</li>\r\n</ul>\r\n\r\n<p>You can easily play and download all these Punjabi ringtones, check them above to download Punjabi ringtones.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Top User Rated Punjabi &nbsp;Ringtones</span></h2>\r\n\r\n<p>Punjabi ringtones which are liked by everyone, listening to their sweet best, everyone&#39;s mind swells and how would it be that if you get to hear some such Punjabi ringtones which are very much liked by all the people, then present in front of you. Top User Rated Punjabi Ringtones<br />\r\nIn which all the users of our website have liked to listen and download which ringtone most often</p>\r\n\r\n<p>Here is most liked Punjabi Ringtones</p>\r\n\r\n<ul>\r\n	<li>Lehnga Ringtone</li>\r\n	<li>Dil tod Ke Ringtone</li>\r\n	<li>Prada Ringtone</li>\r\n	<li>Rabb Wangu Ringtone</li>\r\n	<li>Pulkhari Ringtone</li>\r\n	<li>8 Parche Ringtone</li>\r\n</ul>\r\n\r\n<p>And now one thing is confirmed that you have liked this collection, so now what are you afraid of, I think you should add your favorite page to the collection and our site so that you can easily access our site.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Download Popular Punjabi &nbsp;Ringtones</span></h2>\r\n\r\n<p>You know that many people have listened to a popular Punjabi ringtone, but probably forget its name, maybe it must have happened to you too because it happened to me somewhere, for this, we did something for you. Your life will become even easier that is that you can easily download the most popular ringtones of Punjabi ringtones on our site, and that&#39;s how you will get to see the most downloaded ringtones on top of each category, which means that ringtone most downloaded<br />\r\nAmong them, we have added some of the most popular Punjabi ringtones for you to this list, which has been downloaded the most.</p>\r\n\r\n<p>These are some of the most popular and downloaded Punjabi ringtones.</p>\r\n\r\n<ul>\r\n	<li>Brown Munde Ringtone</li>\r\n	<li>Lahore Ringtone</li>\r\n	<li>Libaas Ringtone</li>\r\n	<li>Temporary Pyar Ringtone</li>\r\n	<li>Qismat Ringtone</li>\r\n	<li>Pani Di Gal Ringtone</li>\r\n	<li>High Rated Gabru Ringtone</li>\r\n	<li>Made in India Ringtone</li>\r\n</ul>\r\n\r\n<p>Now you can find these ringtones by searching the name in the search box and you can also download the top most popular ringtones by going to the category of Punjabi ringtones.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Type of Punjabi &nbsp;Ringtones&nbsp;</span></h2>\r\n\r\n<p>Punjabi Ringtones Lover do you know? We have shared with you almost 6+ Punjabi ringtones genres in the category of Punjabi ringtones which are given below so you can check from here.</p>\r\n\r\n<ul>\r\n	<li>Punjabi Melody Ringtones</li>\r\n	<li>New Punjabi Ringtones</li>\r\n	<li>Punjabi Love Ringtones&nbsp;</li>\r\n	<li>BGM Punjabi Ringtones&nbsp;</li>\r\n	<li>Punjabi Sad Ringtones&nbsp;</li>\r\n	<li>Cute Songs Punjabi Ringtones&nbsp;</li>\r\n</ul>\r\n\r\n<p>These all Ringtone genres are most popular in PunjabiRingtones that&rsquo;s why we mention them in this List of Punjabi Ringtones.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Download Punjabi &nbsp;RingtoneS for Android &amp; iPhone</span></h2>\r\n\r\n<p>You can download any format ringtone from our site RingtoneFly like <strong>Mp3 and M4r</strong>.</p>\r\n\r\n<p>We feature ringtones for both iPhone or Android users according to their supported formats and It has become quite a common thing that nowadays everyone likes IOS and android devices according to their own choice, so we have also made this option available so that the site is friendly for both the users and they can easily download <a href=\"https://www.ringtonefly.co/punjabi-ringtones/\">Punjabi ringtone</a>.</p>\r\n\r\n<p>iPhone and Android users will see two download buttons at the bottom of the fancy player box to download the ringtone in their format, in which they can choose and download either Mp3 or M4r.</p>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"font-size:24px\">Add Punjabi Ringtones to your Favorite List</span></h3>\r\n\r\n<p>Often many people are fond of collecting their favorite things and when it comes to music, everyone likes to collect their favorites very much, to make it easier, we can call you favorite list or wish-list feature. Yes, in this you have to add your favorite Punjabi ringtone by giving a heart and adding it to your wish list, which will be easy in two ways, one, you will be able to access your collection easily and secondly, your given heart will help the other viewer.</p>\r\n\r\n<p>Users will be able to find out which <strong>Punjabi ringtone</strong>&nbsp;is the most liked, so that they will be able to play and download it easily, then give heart to their favorite ringtone right now.</p>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"font-size:24px\">One-Click Download Feature Available!</span></h3>\r\n\r\n<p>Friends, it is a bit difficult to access anything in the internet world, but even more difficult is to download any content from there, in the same way, you download Punjabi ringtones and download it on people, it becomes very complicated when If you go to download any ringtone, then many websites offer you to subscribe to their monthly or yearly plans, then you can download the ringtone.</p>\r\n\r\n<p>Some sites show you the ad above and bar popup shows and Keep doing those who take you to the unwanted site instead of downloading you only do ad show but believe me guys our site is the most user friendly and in this, you can download Punjabi ringtone without any problem and that too just <strong>one click</strong> In this means if you want to download any ringtone for that you have to do just one click.</p>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"font-size:24px\">Quik Sharing! Options for Punjabi &nbsp;Ringtone</span></h3>\r\n\r\n<p>Now everyone&#39;s wish is to download their <strong>favorite ringtones</strong> and share them, you would like to share these Punjabi ringtones with Oro and want them to enjoy these ringtones too, then we have fulfilled this wish for you too.</p>\r\n\r\n<p>This means that now you can share any Punjabi ringtone with your friend, family, anyone, just you have to choose any of your favorite ringtone to share ringtone and by clicking on it you will get a player.</p>\r\n\r\n<p>The box will be visible, there will be a share option, from there you can share that ringtone and you can also listen to it.</p>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"font-size:24px\">About Punjabi Ringtones</span></h3>\r\n\r\n<p>Punjab India is very famous for its culture and its artwork and if we talk about the language of Punjabi people, then they speak the Punjabi language which is a very sweet language and one more special thing about Punjabi people is that their singer&#39;s songs are his.</p>\r\n\r\n<p>Even though in their own language, there is no problem or hindrance in their hearing, and one who does not know Punjabi can also easily listen to the songs and feel them. Singers who make <strong>Punjabi songs</strong> express their feelings in them.</p>\r\n\r\n<p>It is such that it touches the heart and people feel like listening to it, because of this people prefer to set the ringtone of those songs on their mobile so that they can listen to Punjabi ringtone and feel it. If you can, then download and listen to <strong>Punjabi Ringtones</strong> now.</p>\r\n\r\n<h4 style=\"text-align:center\"><span style=\"font-size:24px\">Gift From Our Heart!</span></h4>\r\n\r\n<p>Like every time, this time also we have brought a special gift or just a heart touching gift for all of you Punjabi ringtone lovers and that is that we have launched our one mobile application in which we have almost all categories added. And we have also added the category of <strong>Punjabi ringtones</strong> in it, which means now you can play and download your favorite and latest ringtone at any time.</p>\r\n\r\n<p>Now tell me how did you like this surprise, so now what is the matter, quickly bookmark our <a href=\"https://www.ringtonefly.co/\">RingtoneFly</a> site and share it with your friends and Family, Thank you from the bottom of my heart for visiting our website.</p>', '2021-08-27 11:43:44.175585'),
(585, NULL, '<p>Do You Want to Download <strong>Gujarati Ringtone</strong>? Then You are in The Correct Place for Downloading Gujarati Ringtones, Because We Are One Only That Provides you High Audio Quality Gujarati Ringtones for Fantasy feeling &amp; also for your Gujarati Nature.</p>\r\n\r\n<p>We Know What is Right for you because That Our Team Belongs to Gujarat And We Know Taste Gujarati&rsquo;s Peoples. Enjoy ringtones and Ride your fantasy world.</p>\r\n\r\n<p>We sincerely hope that after listening to this tremendous collection of Music Ringtone, you will definitely share it on your social media.<br />\r\n&nbsp;<br />\r\nSo without any delay listen and download this sweet collection of ringtones.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Best Gujarati Ringtone Collection of Top Singers</span></h2>\r\n\r\n<p>Here We have Prepared the Top <strong>Gujarati Ringtones</strong> of Popular Gujarati Singers, So That You Can Download The Best Ringtones.</p>\r\n\r\n<p>Here Are Some Popular Singers: SANJAY Oza, Parth Chaudhary, Geeta&nbsp;Rabari, Vijay Suvada, Jighnesh Kaviraj, Kinjal Dave, Sachin &amp; Jigar, Aishwarya Majumdar.</p>\r\n\r\n<p>Their Best Ringtones: Dhun Laagi, Vhalam Aavo Ne, Sapna Vinani Raat, Pehla Varsad, Gomda Nu Dil, Gayatri Mantra, Radha Ne Shyam Mali Jashe, Mahelo Ni Rani, Leri Lala,etc..</p>\r\n\r\n<p>Here Is The Most Await Collection <strong>Gujarati Ringtones</strong>.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Top User Rated Gujarati Ringtones</span></h2>\r\n\r\n<p>Every category of our site RingtoneFly.co will show you top-rated ringtones like the <a href=\"https://www.ringtonefly.co/gujarati-ringtones/\">Gujarati ringtones</a> category so that you will be able to download the best ringtones easily,</p>\r\n\r\n<p>You can also help the user by rating your favorite Gujarati ringtone.</p>\r\n\r\n<ul>\r\n	<li>Dholi Dhol Re Vagad - Gujarati Ringtone</li>\r\n	<li>Dholida - Gujarati Ringtone</li>\r\n	<li>Bairu Gayu Piyar Ringtone</li>\r\n	<li>Eklo &nbsp;Rabari - Gujarati Ringtone</li>\r\n	<li>Baby Ne Bonvita Pivdavu Ringtone</li>\r\n	<li>Bewafa Tane Dur Thi Salam</li>\r\n	<li>Char Bangdi Vali Audi Ringtone</li>\r\n	<li>Mohabbat Khape Ringtone</li>\r\n	<li>Gomda Nu Dil Ringtone</li>\r\n	<li>Jay Dwarkadhish Gujarati ringtone</li>\r\n</ul>\r\n\r\n<p>Check Out All Above One By One And Feel The Love &amp; Sweetness of Gujarati Ringtone</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Download Popular Gujarati Ringtone</span></h2>\r\n\r\n<p>In Gujarati Ringtone&rsquo;s Category, We Share Almost Up to 250+ Ringtone That is So Huge for One Single Category in Which from You Downloading Popular Ringtone Just Check Highest Downloaded Ringtone And It Will Easy Your Work for Searching Popular Ringtone</p>\r\n\r\n<p>Some Popular Gujarati &nbsp;Ringtone That Collected With Our Heart.</p>\r\n\r\n<ul>\r\n	<li>Ek Vaar Shyam Tame Radha Ne - Ringtone</li>\r\n	<li>Rudi Rite Jivo Ruda Karjo - Ringtone</li>\r\n	<li>Jodi Shyam ne Radha Ni - Ringtone</li>\r\n	<li>Tu Mari Nai To Koini Nai- Ringtone</li>\r\n	<li>Leri Lala - Ringtone</li>\r\n</ul>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"font-size:24px\">Type of Gujarati Ringtone</span></h3>\r\n\r\n<p>Below we have shared with you some famous Genre of Gujarati ringtones which you can see above as ringtones.</p>\r\n\r\n<ul>\r\n	<li>Gujarati Bhakti Ringtone</li>\r\n	<li>Gujarati Songs Ringtones</li>\r\n	<li>Gujarati Love Ringtone</li>\r\n	<li>Sad Ringtone in Gujarati</li>\r\n	<li>Happy Gujarati Ringtone</li>\r\n</ul>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Download Gujarati Ringtone for Android &amp; iPhone</span></h2>\r\n\r\n<p>You can download Gujarati ringtones for both <strong>android and iPhone</strong> from here in both formats Mp3 and M4r. you will show two buttons below the fancy ringtone player box in which you can select according to your device and enjoy with your Favorite ringtone.</p>\r\n\r\n<p>The only means of having this feature is that we want to give our users a completely satisfied and better user experience.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Add Gujarati Ringtones to your Favorite List</span></h2>\r\n\r\n<p>This is Another Fantastic Feature That Comes from RingtoneFly.co That is Add Heart to your Favorite Ringtone That Will Shows on Fancy Ringtone Player Box&rsquo;s Bottom,&nbsp;By Doing This Users Like Yours Can Predict Which One Mostly Liked By Ringtone Lovers.</p>\r\n\r\n<p>That Sound Cool! Then Just Go Through With This.</p>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"font-size:24px\">One-Click Ringtones&nbsp;Download Feature Available!</span></h3>\r\n\r\n<p>Yes! It is True that You Can Download Any Gujarati Ringtones in Just One Click, which Means By Just a Single Click On Download Button Your Ringtone Added to your download Manager &amp; Notification Panel.&nbsp;</p>\r\n\r\n<p>We know that there are many such websites on the internet that keep showing redirects &amp; Popups to the user from one window to another. To overcome this problem our site <a href=\"https://www.ringtonefly.co/\">RingtoneFly.co</a> has added this feature. Which the user does not have any problem and they can feel the music with their soul.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Quik Sharing! Options for Gujarati Ringtone</span></h2>\r\n\r\n<p>You will find all the features on our site RingtoneFly.co which you have not seen before on any other site like we have given you a quick sharing option to share your favorite Gujarati ringtone, so that you can share on WhatsApp, Facebook, Twitter &amp; Telegram, it Will share directly from our site.&nbsp;<br />\r\nBy sharing these Gujarati ringtones with your friends, Family &amp; Relatives, provide them with the Best Gujarati ringtones.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">About Gujarati Ringtones</span></h2>\r\n\r\n<p>We all know that the culture of Gujarat and Gujarati people has become very famous in the last few years. The primary language of Gujarat is Gujarati, due to which it is commonly spoken there in conversation.&nbsp;</p>\r\n\r\n<p>The Biggest Achievement of Gujarat is its culture which is famous all over the country.</p>\r\n\r\n<p>Gujarati brothers are also very good in Singing Music, some of whom are famous musicians like Geeta Rabari, Kinjal Dave, Jignesh Kaviraj, etc., whose melody is heard in every voice when one gets addicted to this sweet music.&nbsp;</p>\r\n\r\n<p>To keep this melody alive, we have come up with Gujarati ringtones for you. By downloading these Gujarati Ringtones, you can listen to the sound of this music as your mobile ringtone every moment.</p>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"font-size:24px\">Gift From Our Heart!</span></h3>\r\n\r\n<p>We have also prepared a special gift for all of you, that is we are going to launch our mobile application soon,&nbsp;</p>\r\n\r\n<p>in which there will be a special <strong>Gujarati ringtones</strong> category for Gujarati brothers so that you can change your mobile ringtone anytime directly from our mobile application. And you will get to see even more awesome features.</p>\r\n\r\n<p>In-Depth from our Heart By <strong>RingtoneFly.co<span style=\"font-size:8px\"><img alt=\"heart\" src=\"https://www.ringtonefly.co/static/ckeditor/ckeditor/plugins/smiley/images/heart.png\" style=\"height:15px; width:15px\" title=\"heart\" /></span></strong></p>', '2021-08-27 12:19:44.316649');
INSERT INTO `config_containerplugin` (`cmsplugin_ptr_id`, `title`, `content`, `updated_at`) VALUES
(593, NULL, '<p>Do You Want to Download <strong>Rajasthani Ringtones</strong>? Then You are on The Right Place to Download Rajasthani Ringtones or Marwadi Ringtones, Because We Are One Only That Provides you High Audio Quality Rajasthani Ringtones for feeling &amp; also for your Rajsthani Nature.</p>\r\n\r\n<p>We Really Know Which One Ringtones Collection Best For Your just&nbsp;Because of That Our Team Belongs to Rajasthan And We Know What Types of Ringtone Do You Love So That Why Just Stay Calm With Us &amp; Get Amazing Ride of <strong>Rajastani Ringtones</strong>.</p>\r\n\r\n<p>And after listening to this tremendous collection of Rajasthani Ringtone, you will definitely share it on your social media Also With Your Friends And Family.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Best Rajasthani Ringtones Collection of Top Singers</span></h2>\r\n\r\n<p>Some Most Popular Rajasthani Singers; Mame Khan, Hemlata, Rapperiya Balam, Mangal Singh, Mirabai, Sultan Khan, Ravindra Upadhyay, Rajnigandha Shekhawat, Aminuddin Dagar, Priya Barve, Swaroop Khan, Sartaj Khan And Sarwar Khan And Their Songs Ringtones</p>\r\n\r\n<ul>\r\n	<li>Thade Rahiyo - Rajasthani Ringtones</li>\r\n	<li>Janudi Milgi Re - Rajasthani Ringtones</li>\r\n	<li>Banna O - Rajasthani Ringtones</li>\r\n	<li>Ghagra - Rajasthani Ringtones</li>\r\n	<li>In Janam Mein Milgi - Rajasthani Ringtones</li>\r\n	<li>Mukdo Dhekne - Rajasthani Ringtones</li>\r\n	<li>Sona Babu Liyado - Rajasthani Ringtones</li>\r\n</ul>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Top User Rated Rajasthani Ringtones</span></h2>\r\n\r\n<p>Below We Listed Some Piece of Cake That Really Liked By Rajasthani Ringtone Lovers And I Also Hope That You May Also Like Below One.</p>\r\n\r\n<p>Here We Go With Top User Rated Rajasthani And Marwadi Ringtones</p>\r\n\r\n<ul>\r\n	<li>Banni Tharo Chand So Mukhdo Ringtone</li>\r\n	<li>Hariyala Banna Ringtone</li>\r\n	<li>Lahariyo Ra 900 Rupiya Rokda Sa Ringtone</li>\r\n	<li>Kajaliyo Rajasthani Ringtone</li>\r\n	<li>Nakhrala Banna Rajasthani Ringtone</li>\r\n</ul>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Download Popular Rajasthani Ringtones</span></h2>\r\n\r\n<p>If you are a fan of popular<strong> Rajasthani ringtones</strong> like me, then this is special for you. With this feature you will be able to find out which Marwari and Rajasthani ringtones are the most popular.</p>\r\n\r\n<p>You will find the download score of each ringtone under the name of each ringtone so that you know. It will be easy to do which ringtone is most popular and this feature is the most amazing feature ever. This is special for my dear Rajasthani brothers.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Types of Rajasthani &amp; Marwadi Ringtones</span></h2>\r\n\r\n<p>On the basis of many festivals, events, folk music, etc. in Rajasthan, we have told the music there in some parts, which we have added for you in this Rajasthani ringtone category. We have shared with you the types of major music heard in Rajasthan. what we gave below.</p>\r\n\r\n<ul>\r\n	<li>Rajasthani Song Ringtones</li>\r\n	<li>Rajasthani Folk Ringtones</li>\r\n	<li>Rajasthani Ghoomar Ringtones</li>\r\n	<li>Rajasthani DJ Ringtones</li>\r\n	<li>Rajasthani Bhajan Ringtone</li>\r\n</ul>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Download Rajasthani Ringtone for Android &amp; iPhone</span></h2>\r\n\r\n<p>We know that the users of our site use both iPhone and Android, that&#39;s why in order to satisfy both of our users, we have made available <strong>Rajasthani ringtones</strong> for both Android and iPhone for you, which you can Helpful for Both users So Try it in Mp3 &amp; M4r for iPhone.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Add Rajasthani Ringtones to Favorite List</span></h2>\r\n\r\n<p>Now Listen Here is Awesome Feature That You Can Give Heart to Your Favorite Rajasthani Ringtones That Will Helps Other Users to Identify That Which One Is Best Rajasthani Ringtone And I Think It So Tremendous Feature for You And for Other Users. Just Go And Hit The Heart Button.</p>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"font-size:24px\">One-Click Download Feature Available!</span></h3>\r\n\r\n<p>Yes! It is Absolutely True that You Can Download Any Rajasthani or Marwari Ringtones By Just One Click, That Means in Just a Single Click On Download Button Your Ringtone Added to your Download Task Manager.</p>\r\n\r\n<p>You know that when you go to download a ringtone on a website, it takes more than 5 minutes to download that one ringtone, that is because almost all the websites available on the internet have a lot of popups &amp; Redirected Function That is Annoying.</p>\r\n\r\n<p>Users have a lot of trouble When They download ringtones. For this particular reason we have added this feature in our site, Now you can tell by contacting us how you liked this feature.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Quik Sharing Options of Rajasthani Ringtones</span></h2>\r\n\r\n<p>There was a moment when we used to download any ringtone on any website, then we used to download that ringtone, but it was very difficult to share it, we could never find the right link, which could be shared, for removing this problem.</p>\r\n\r\n<p>We have given a quick sharing option in <strong>Rajasthani ringtones</strong> so that you can easily share any Rajasthani ringtone on any social media account like WhatsApp, Facebook, Twitter, Telegram.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">About Rajasthani Ringtones &amp; Marwadi Ringtones</span></h2>\r\n\r\n<p>Rajasthan has been the land of SoorVeer&rsquo;s and Rajasthan has made a lot of progress in all fields, especially in dance and music.</p>\r\n\r\n<p>Although Rajasthan is famous for some reasons, some of them are special for their art works, food, tourism etc. There are many common languages spoken here like Marwari, Mewari, Godwadi.</p>\r\n\r\n<p>There is some famous music of Rajasthan, which is still sitting in the hearts of people. To keep this music near you every moment, we have brought this collection of Rajasthani ringtones for you.</p>\r\n\r\n<p>You can set these marwari or <a href=\"https://www.ringtonefly.co/rajasthani-ringtones\">rajasthani ringtones</a> on your mobile and listen to their catchy sounds again and again on every one, we have specially prepared this collection for rajasthani people. You share them with all your Rajasthani brothers and make their hearts happy too.</p>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"font-size:24px\">Gift from Our Heart:</span></h3>\r\n\r\n<p>We have also prepared a Super special gift for all of you( Rajasthani Ringtones Lover&rsquo;s), that is we are going to launch our Ringtones mobile application soon, in which there will be a special Rajasthani &amp; Marwadi ringtones category for All My <strong>Rajasthani Ringtones</strong> Fans, so After that you can change your mobile ringtone anytime directly from our mobile application. And you will get to see even more awesome features.</p>\r\n\r\n<p>In This Application You Can Upload Yours Favorite Ringtones And Grab Like &amp; Follower From It And also you will Get Awesome Rewards from it.</p>\r\n\r\n<p>So Stay Tuned With Us. By <a href=\"https://www.ringtonefly.co/\">RingtoneFly.co</a> ...</p>', '2021-08-27 12:23:43.816325'),
(597, NULL, '<p><strong>Krishna Ringtones</strong> - Nowadays everyone is so busy in their daily work that they cannot get a breath of peace even for a moment and it is very important to have God with you in such rare times. Chanting of Lord Shri Krishna in this delicate time can pacify your mind and will make you absorbed in the devotion of Lord Shri Krishna. <strong>Download Krishna Ringtones</strong> from Above.&nbsp;</p>\r\n\r\n<p>To keep the devotion of Shri Krishna always alive in your heart, we bring you <strong>Krishna ringtones</strong>. These Krishna ringtones will give you spiritual philosophy with Lord Shri Krishna.</p>\r\n\r\n<p>Krishna ringtones will enchant you in Krishna devotion, their melodious sounds will pass through your ears and awaken the Krishna light in your mind. Space Everyone wants to change the ringtone of their mobile, why not address Lord Krishna in the desire to change something, the simple meaning of saying this is that Krishna music should be playing in your ears all the time.</p>\r\n\r\n<p>To fulfill this wish, we have prepared for you an amazing collection of Krishna ringtones that will immerse you in the sweet honey of Krishna devotion.</p>\r\n\r\n<p>You can set these Krishna ringtones as the default ringtone of your mobile By Just Following the Below Guidelines That Makes It Easier for You.&nbsp;</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Best Krishna Ringtones Collection of Top Singers</span></h2>\r\n\r\n<p>Devotee&rsquo;s We Prepared Super Energetic and Popular <strong>Krishna Ringtones</strong> for your true devotion So, Here you will get to see a unique collection of Krishna Ringtones from the best singers that will touch your heart.</p>\r\n\r\n<p>Here Are Some Popular Singers And Their Popular Krishna Songs Ringtone: Jagjit Singhal, Pankaj Doshi, etc.</p>\r\n\r\n<p>It took us a lot of hard work to collect these Krishna ringtones. If you like these ringtones then definitely don&#39;t forget to set them as mobile ringtones and also share them with your friends.</p>\r\n\r\n<ul>\r\n	<li>O Palan Haare Ringtone Maiya Yashoda,</li>\r\n	<li>Ye Tera Kanhaiya Ringtone</li>\r\n	<li>Bada Natkhat Hai Re Krishna Ringtone</li>\r\n	<li>Woh Kisna Hai Ringtone</li>\r\n	<li>Are Dwarpalo, Us Kanhaiya Se Kehdo Ringtone</li>\r\n	<li>Radha Kaise Na Jale Ringtone</li>\r\n	<li>Radha Nachegi Ringtone</li>\r\n	<li>Govinda Aala Re Ringtone</li>\r\n	<li>Radhey Krishna Ki Jyoti Ringtone</li>\r\n	<li>Mohe Chedo Na Nand Ke Lala Ringtone</li>\r\n	<li>Mach Gaya Shor Sari Nagri Re Ringtone</li>\r\n</ul>\r\n\r\n<p>If You Like This Awesome Collection of Krishna Ringtone Then don&rsquo;t Forget to Spread This Devotion Power with Krishna Bhakt&#39;s.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Top User Rated Krishna Ringtones</span></h2>\r\n\r\n<p>We all know that everyone wants to customize their mobile with the best ringtone, but how many of you are trying to find the best ringtone?</p>\r\n\r\n<p>To do this hard work, we have brought this amazing feature for you, so that you will be able to find out which ringtone is most liked by the user.</p>\r\n\r\n<p>For Knowing it Just Go With This Feature from Above.</p>\r\n\r\n<ul>\r\n	<li>Radha Krishna Fluet Ringtone</li>\r\n	<li>Radhe Radhe Radhe, Barsane Wali Radhe Ringtone</li>\r\n	<li>Yashomati Maiyya Se Bole Nandlaala Ringtone</li>\r\n	<li>Are Dwarpalo, Us Kanhaiya Se Kehdo Ringtone</li>\r\n	<li>Radha Rani Laage Ringtone</li>\r\n	<li>Kaun Kehte Hai Ringtone</li>\r\n</ul>\r\n\r\n<p>We Hope That The Above Collection of Krishna Ringtones is Best for Your Devotion.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Download Popular Krishna Ringtones</span></h2>\r\n\r\n<p>Download Most Popular Krishna Ringtone or Krishna Flute Ringtone By Just Grinding Above Melodious Collection, Download Trending And Popular Krishna Ringtone With Mind Calming Flute Tune, Krishna Ringtone Available for iPhone And Android Users.</p>\r\n\r\n<ul>\r\n	<li>Mere Nishaan Ringtone</li>\r\n	<li>Krishna Flute Ringtone</li>\r\n	<li>Shri Krishna Govind Hare Marari Ringtone</li>\r\n	<li>Hare Rama Hare Krishna Ringtone</li>\r\n	<li>Mere Sanware Ki Bashu Baaje Ringtone</li>\r\n	<li>Raghupati Raghava Ringtone</li>\r\n	<li>Sanwali Surat Pe Dil Mohan Ringtone</li>\r\n</ul>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Type of Krishna Ringtones</span></h2>\r\n\r\n<p>We know that to express Krishna devotion, people have created many types of music, which we have given below and we have shared with you the ringtones related to these types of music, which you can listen to.</p>\r\n\r\n<ul>\r\n	<li>Krishna Fluet Ringtones</li>\r\n	<li>Krishna Bhajan Ringtones</li>\r\n	<li>Krishna Songs Ringtones&nbsp;</li>\r\n	<li>Sweet Krishna Melody Ringtones</li>\r\n	<li>Fluet Ringtones</li>\r\n</ul>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Download Krishna Ringtone for Android &amp; iPhone</span></h2>\r\n\r\n<p>My dear Krishna devotees, your search ends here because today we have brought a tremendous collection of <strong>Krishna ringtones</strong> especially for you,</p>\r\n\r\n<p>we have provided two versions of Krishna ringtones in which Mp3 and M4r which you can use as Krishna ringtone on both iPhone and Android devices. One can easily set up and get absorbed in Krishna Bhakti.</p>\r\n\r\n<p>This awesome collection of Krishna ringtones and <a href=\"https://www.ringtonefly.co/krishna-ringtones/\">Krishna flute ringtones</a> will calm down your romance and immerse you in the ocean of Krishna devotion so download these Krishna ringtones now and let Krishna name sound in your ears every moment.</p>\r\n\r\n<p>These sounds will purify your surroundings and infuse your mind with new energy, so download these Krishna ringtones now from our site ringtonefly.co</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Add Krishna Ringtones to your Favorite List</span></h2>\r\n\r\n<p>Now you can add any of your Krishna ringtone to your favorite list and play it at any time, to add a Krishna ringtone to your wishlist, you will add it by giving a heart button below the play button of the fancy player box.</p>\r\n\r\n<p>By giving heart to a special <strong>Krishna ringtone</strong>, With This, you can also help the rest of the user in downloading the best ringtone. Your one heart can make another&#39;s life easier So Please Do it.</p>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"font-size:24px\">One-Click Ringtones Download Feature Available!</span></h3>\r\n\r\n<p>We all know how difficult it is to download any file or music ringtone on the internet, for what reason you know very well that there are many such websites which show only aids and popups in the name of ringtones,</p>\r\n\r\n<p>To overcome such a problem, our website RingtoneFly.co has brought for you, single-click download button with a simple interface so that you will be able to download any ringtone in just one click, this super fantastic feature will only be Supported in RingtoneFly.co.</p>\r\n\r\n<p>Hit The Download Button And Get <a href=\"https://www.ringtonefly.co/krishna-ringtones/\">Krishna Ringtone</a> And Krishna Flute Ringtones.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Quik Sharing! Options for Krishna Ringtone</span></h2>\r\n\r\n<p>Now ringtone sharing is done because you get a super quick sharing option in our site <a href=\"https://www.ringtonefly.co/\">ringtonefly.co</a> so that you can share any ringtone from <a href=\"https://www.ringtonefly.co\">Ringtonefly.co</a> in few seconds to share your favorite ringtone with your relatives. For sharing arrow has been given at the bottom of the player box, from that you will be able to share the same Krishna ringtone that you have heard,</p>\r\n\r\n<p>And if you want to share all ringtones at once, you can click on the three dots in the mobile window and click on the share button, which will share the entire ringtone page.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">&nbsp;About Krishna Ringtones</span></h2>\r\n\r\n<p>We all want to be absorbed in the worship of Lord Shri Krishna and reach that eternal end where no bondage can bind you and you want to sleep in the womb of this infinite creation,&nbsp;<br />\r\nthen download these Krishna ringtones now and Shri Krishna every time. Be dyed in the color of devotion.</p>\r\n\r\n<p>This Krishna ringtone is very attractive and full of melodious sounds. It contains a collection of miraculous sounds of the Shri Krishna flute.&nbsp;</p>\r\n\r\n<p>This Krishna ringtone will give your mental calmness, concentration, and calmness. This mind-blowing Krishna ringtones collection has been brought for you.</p>\r\n\r\n<h4 style=\"text-align:center\"><span style=\"font-size:24px\">Gift From Our Heart!</span></h4>\r\n\r\n<p>We have also prepared Tremendous Gift for all of you, that is we are going to Release our mobile application soon, in which there will be a special Krishna Ringtones or <strong>Krishna Flute Ringtones</strong> category for all of My <strong>Lord Krishna&#39;s</strong> Devotee&rsquo;s so After Using Our Mobile Application you can change your mobile ringtone anytime directly from our mobile application.&nbsp;<br />\r\nAnd you will get to see even more awesome features related to your devotion.&nbsp;</p>\r\n\r\n<p>In-Depth from our Heart&nbsp;</p>\r\n\r\n<p>By<a href=\"https://www.ringtonefly.co\"> </a><strong><a href=\"https://www.ringtonefly.co\">RingtoneFly.co</a>...</strong></p>', '2021-08-27 12:27:14.745862'),
(602, NULL, '<p><strong>Telugu Ringtones</strong> - It seems that you are also a huge fan of Telugu cinema, that&#39;s why you have set out in search of Telugu ringtones and for your information, let me tell you that you will find all the <strong>Telugu ringtones</strong> collection available on the internet at your only one place named <strong>RingtoneFly</strong>.</p>\r\n\r\n<p>Nowadays everyone wants to customize their mobile ringtone in their favorite way and when it comes to a Telugu ringtone lover he must spend his precious time setting which ringtone is best for him? We are there to help you when this happens because we know that Telugu ringtones are not just ringtones for you but also calm and relax your mind.</p>\r\n\r\n<p>And we cannot spoil this feeling like this, so we have prepared such a wonderful gift for special ringtone lovers, apart from this we have also brought a special gift for you, which you can see below.</p>\r\n\r\n<p>And if we talk about recent times, then do not ask for so much craze in the people of the <strong>Telugu musi</strong>c industry, people like to listen to Telugu songs and Telugu ringtones again and again.</p>\r\n\r\n<p>To continue with this feeling, we bring you a collection of Telugu Ringtones with <strong>High-Quality Audio &amp; Smooth Voice</strong>.</p>\r\n\r\n<p>You can read the below instruction to <strong>Download Telugu Ringtones</strong>.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Best Telugu Ringtones Collection of Top Singers</span></h2>\r\n\r\n<p>Here we shared with you a collection of <a href=\"https://www.ringtonefly.co/telugu-ringtones/\">Telugu ringtones</a> of all the famous Telugu singers&#39; songs so far to help you download the best Telugu ringtones.</p>\r\n\r\n<p>These are some of the popular telugu singers whose ringtone we have collected here. Telugu Singers : Shreya Ghoshal, S.P. Sailaja, S. Janaki, LV Revanth, Malavika, Noel Sean, Sunita, Chinmayi, Mangli, Sid Sriram, Ananya Bhat, Srikrishna,&nbsp;</p>\r\n\r\n<p>Ringtones of Some Famous Telugu Singers.</p>\r\n\r\n<ul>\r\n	<li>Veyi Naamaala Vaada Ringtone</li>\r\n	<li>Uppena BGM Ringtone</li>\r\n	<li>Jala Jala Patham Ringtone</li>\r\n	<li>Kgf 2 Ringtone</li>\r\n	<li>O Sakkanoda Telugu Ringtone</li>\r\n	<li>Okey Oka Lokam Ringtone</li>\r\n	<li>Dheera Dheera Kgf Ringtone</li>\r\n</ul>\r\n\r\n<p>Let&#39;s get started with the most awaited collection of Telugu ringtones.<br />\r\nBecause it will refresh your heart and mind, will give you such a refreshment which you have never felt before.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Top User Rated Telugu Ringtones</span></h2>\r\n\r\n<p>Our website <a href=\"https://www.ringtonefly.co/\">RingtoneFly.co</a> has selected some top user rated ringtones in each category, which you can see in any category, with the help of these top user rated ringtones, you will get to know a lot in downloading great ringtones Which ringtone is most liked by people and you can easily choose yours too. Here are some Top user Rated Ringtones.</p>\r\n\r\n<ul>\r\n	<li>Ramuloo Ramulaa Ringtone</li>\r\n	<li>Podham Ringtone</li>\r\n	<li>Gira Gira Gira Ringtone</li>\r\n	<li>Nee Chitram Choosi Ringtone</li>\r\n	<li>Kolu Kolu Ringtone</li>\r\n	<li>Bhoom Bhaddhal Ringtone</li>\r\n</ul>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Download Popular Telugu Ringtones</span></h2>\r\n\r\n<p>In this great category of telugu ringtones we have shared with you more than 300+ ringtones, in them you will find all types of ringtones like - Telugu Love Ringtones, Old Telugu Ringtones, Telugu Melody Ringtones, many such amazing You will get to see the collection of ringtones.&nbsp;</p>\r\n\r\n<p>Also you can download the most popular telugu ringtones which you will get to see above</p>\r\n\r\n<ul>\r\n	<li>Kgf Ringtone</li>\r\n	<li>Saranga Dariya Ringtone</li>\r\n	<li>Kanti Papa Ringtone</li>\r\n	<li>Naa Kanulu Yepudu Ringtone</li>\r\n	<li>Oorantha Ringtone</li>\r\n	<li>Laahe Laahe Ringtone</li>\r\n</ul>\r\n\r\n<p>Above List of Ringtones Share with you a great Piece of Ringtone that is So Popular.&nbsp;</p>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"font-size:24px\">Type of Telugu Ringtones&nbsp;</span></h3>\r\n\r\n<p>We have shared with you about almost 4+ telugu ringtones genres in the category of <strong>telugu ringtones</strong> which are given below</p>\r\n\r\n<ul>\r\n	<li>BGM Telugu Ringtones</li>\r\n	<li>Love Telugu Ringtones</li>\r\n	<li>Telugu Sad Ringtones</li>\r\n	<li>Telugu Melody Ringtones</li>\r\n</ul>\r\n\r\n<p>These all genres are most popular in Telugu songs that&rsquo;s why we shared their ringtones.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Download Telugu Ringtones for Android &amp; iPhone</span></h2>\r\n\r\n<p>Pretty Sure that these Ringtones play an important role in your life not just as a tune , rather it gives you immense energy to your body and feels good.</p>\r\n\r\n<p>That&#39;s why, we don&rsquo;t want to take any to spoil this awesome feel so here we done great job for you that is;</p>\r\n\r\n<p>We know that you can be either an iPhone or Android user, for this special we have made Telugu Ringtones available for both iPhones and Androids devices.</p>\r\n\r\n<p>From which you can download <strong>Telugu ringtone</strong> according to your handset, see the below given instruction to download it now.<br />\r\nDownload for iPhones: To download Telugu ringtone for iPhone, click on the green color button which will start downloading your ringtone in M4r format.</p>\r\n\r\n<p>Download for Androids : To download Telugu ringtone for Android device, click on the blue color download button which will start downloading your ringtone in Mp3 format.</p>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"font-size:24px\">Add Telugu Ringtones to your Favorite List</span></h3>\r\n\r\n<p>Music is not a word, it is the soul of that pain, that joy, that anger that comes out of your heart,</p>\r\n\r\n<p>It would give this pain a golden voice that strikes straight into the heart<br />\r\nThe waves of music can drown the ocean, so much so that even the waves of pain shed tears.</p>\r\n\r\n<p>Telugu music ringtones are also such that everyone wants to add it to their favorite list.</p>\r\n\r\n<p>To overcome this shortcoming, a Favorite List feature has been added for you, which is that you can add heart to any Telugu ringtone and add it to your favorite list, so that it will be easy for you to find your favorite ringtone.</p>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"font-size:24px\">One-Click Download Feature Available!</span></h3>\r\n\r\n<p>This feature is my personal best so far which allows you to download any ringtone in one click. Now this is why, you know that there are many sites which just show pop ups for downloading ringtones.&nbsp;</p>\r\n\r\n<p>You have to face this problem but here you don&#39;t have to face it on our site <a href=\"https://www.ringtonefly.co/\">RingtoneFly.co</a>, so we have this awesome feature that is only added for my users who want to feel music every time. With this you can download Telugu ringtones more easily.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Quick Sharing! Options for Telugu Ringtones</span></h2>\r\n\r\n<p>Telugu Ringtones have a huge fan following but it&#39;s not enough for this type of god level soul touching Music Then I think Telugu Ringtone deserve more popularity also for their musician who made this awesome piece for this we have to spread telugu ringtones on every social media platform for this you can use Quick Sharing Option for <a href=\"https://www.ringtonefly.co/telugu-ringtones/\">Telugu Ringtones</a>, Just Click on Sharing option it show you many social media option where you want to spread this piece.<br />\r\nYou can check it out at the bottom of the player box.&nbsp;</p>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"font-size:24px\">About Telugu Ringtones</span></h3>\r\n\r\n<p>Although the Telugu language is mostly spoken in Andhra Pradesh and Telangana, when it comes to music, there is no language barrier in it, that is because the music of Telugu language goes straight to the heart and everyone feels such a feeling. That&#39;s why people are very interested in Telugu Songs and their ringtones.</p>\r\n\r\n<p>Talking about the Telugu language, it is considered as the main dialect of Andhra Pradesh and Telangana, and not only this, such a language is prevalent in the nearby places as well.</p>\r\n\r\n<p>Telugu ringtones can be a means of calming the mind as it has a great effect on who Listens to it again and again and calms the soul.</p>\r\n\r\n<h4 style=\"text-align:center\"><span style=\"font-size:24px\">Gift From Our Heart!</span></h4>\r\n\r\n<p>Every time this time also we have brought a lovely gift for you, that is we have provided all the collection of <a href=\"https://www.ringtonefly.co/telugu-ringtones/\">Telugu ringtones</a> for you in our mobile application ringtoneFly so you can download these ringtones from our mobile application RingtoneFly.</p>\r\n\r\n<p>You can download it directly and at the same time, even more, the amazing features you will see there.</p>\r\n\r\n<p>You can tell us how you liked this collection, do not forget to share it with your friends and family, if you have any ringtone in your mind that we have missed, then you can tell us by contacting us, we will definitely add it.</p>\r\n\r\n<p>By <strong>RingtoneFly.co ...</strong></p>', '2021-08-27 12:28:42.792597'),
(605, NULL, '<p><strong>Tamil Ringtones</strong> - It seems that you are also searching for Tamil ringtones, if I am right then your destination is in front of you, which means you have come to the right place from where you can easily download <a href=\"https://www.ringtonefly.co/tamil-ringtones/\">Tamil ringtones</a>.</p>\r\n\r\n<p>Nowadays everyone likes to customize their mobile according to their mood and their choice, which their most favorite customization is, ringtone means the heart of a smartphone that when someone calls on his phone, then someone Make your ringtone sound and attracts everyone towards you and you know how much craze of Tamil ringtones is due to the increasing popularity of Kollywood in the market, today everyone is a Tamil cinema lover and for him, there is no better option than Tamil ringtones.&nbsp;</p>\r\n\r\n<p>And these <a href=\"https://www.ringtonefly.co/tamil-ringtones/\">Tamil Ringtones</a> lovers want to download Tamil ringtone songs, Tamil ringtone cut songs, Love Tamil Ringtones, and set them as the default ringtone of their mobile.<br />\r\nAnd to make your user experience even better, we bring you a grand collection of <strong>High-Quality Audio</strong> &amp; <strong>Smooth Voice</strong> Best Tamil Ringtones.</p>\r\n\r\n<p>trust me it&#39;s going to be awesome and Rocking your ringtone experience so without wasting any time just jump in it.&nbsp;</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Best Tamil Ringtones Collection of Top Singers</span></h2>\r\n\r\n<p>Tamil Ringtones Lover We have shared here a beautiful collection of Tamil ringtones for you, in which we have provided ringtones of the most popular Tamil singer&rsquo;s songs so far, this Tamil ringtones collection will help you to download the best ringtone, so you will know. Which ringtone is best for personalizing your mobile so check out the New ringtones collection of Top Singers.</p>\r\n\r\n<p>Here are some popular Tamil singers and their Ringtones that we collected here; SP. Balasubramaniam, Chitra, Yesudas, Illayaraja, Vijay,&nbsp;Janaki, Shreya Ghoshal, Mano, Anuradha Sriram, Karthik, Hariharan, Srinivas, Sujaatha, Susheela, Chinmayi, Harini.</p>\r\n\r\n<p>Ringtones of Some Famous Tamil Singers</p>\r\n\r\n<ul>\r\n	<li>Kutty Pattas tamil ringtone</li>\r\n	<li>Asku Maaro Tamil ringtone</li>\r\n	<li>Manike Mage Mithe tamil ringtone</li>\r\n	<li>Unnodu Naanum Tamil Ringtone</li>\r\n	<li>Esswaran Mangalyam Tamil Ringtone</li>\r\n	<li>Djjohal Tamil ringtone</li>\r\n</ul>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Top User Rated Tamil Ringtones</span></h2>\r\n\r\n<p>Our Website <a href=\"https://www.ringtonefly.co/\">RingtoneFly.co</a> has selected some top user rated ringtones in each category, which you can see in any category, with the help of these top user rated ringtones, you will get to know a lot in downloading great ringtones Which ringtone is most liked by people and you can easily choose yours too.</p>\r\n\r\n<p>Also like this Tamil Ringtones Category having top user-rated ringtones helps Tamil ringtones lovers to get the best one.</p>\r\n\r\n<p>Here are some Top User Rated Tamil Ringtones.</p>\r\n\r\n<ul>\r\n	<li>Master Bhawani Tamil Ringtone</li>\r\n	<li>Holi Khel Rahe Banke Bihari Tamil Ringtone</li>\r\n	<li>Kutty Pattas Tamil Ringtone</li>\r\n	<li>Kannoojal aadi Tamil Ringtone</li>\r\n	<li>Darbar Thalaivar Tamil Ringtone</li>\r\n</ul>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Download Popular Tamil Ringtones</span></h2>\r\n\r\n<p>In this category of our Tamil ringtones, we have shared with you a collection of more than <strong>400+ Tamil ringtones</strong>, out of which you can download the most popular ringtones by looking at them, our site <a href=\"https://www.ringtonefly.co/\">RingtoneFly.co</a>&nbsp;has a feature that allows you to download the most downloaded ringtones. Above all, it means that you can directly download popular ringtones without any effort,&nbsp;</p>\r\n\r\n<p>And some of those special ringtones which are most popular, we have added their names below.<br />\r\nHere are some Most Downloaded Tamil Ringtones</p>\r\n\r\n<ul>\r\n	<li>Tamil Cut Songs Ringtone</li>\r\n	<li>Bigil Rayappan Tamil Ringtone</li>\r\n	<li>KGF Tamil Ringtone</li>\r\n	<li>Hey Single Pasanga Natpe Tamil Ringtone</li>\r\n	<li>Unakena Urug Tamil Ringtone</li>\r\n</ul>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Type of Tamil Ringtones</span>&nbsp;</h2>\r\n\r\n<p>Tamil Ringtones Lover do you know? We have shared with you about almost 6+ <strong>Tamil ringtones</strong> genres in the category of Tamil ringtones which are given below so you can check from here.&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Tamil Melody Ringtones</li>\r\n	<li>Old Tamil Ringtones</li>\r\n	<li>Tamil Cute Love Ringtones</li>\r\n	<li>BGM Tamil Ringtones</li>\r\n	<li>Tamil Sad Ringtones</li>\r\n	<li>Cute Songs Tamil Ringtones</li>\r\n</ul>\r\n\r\n<p>These all Ringtone genres are most popular in Tamil Ringtones that&rsquo;s why we mention them in this List of Tamil Ringtones.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Download Tamil Ringtone for Android &amp; iPhone</span></h2>\r\n\r\n<p><br />\r\nNow no matter whether the user is Android or IOS, both are crazy about Tamil ringtones and both like to set Tamil ringtone as the default ringtone in their mobile but now the matter comes here that most of it are available on the internet.</p>\r\n\r\n<p>The website does not make available ringtones for iOS devices or simply says ringtones are not available for iPhone users. To solve this problem, our site RingtoneFly.co has made available Tamil ringtones for both iOS and Android devices.</p>\r\n\r\n<p>This means you can now enjoy Tamil ringtones on both <strong>Android</strong> and <strong>IOS</strong> devices.</p>\r\n\r\n<p>Now it comes to where you will download Tamil ringtones for IOS and Android, then suppose you have selected any of your favorite ringtones, our website is ringtone class and click on it and from there you will find the option with a fancy player box. Go there you will see two buttons, one ringtone download for android and ringtone download for ios now whatever user you are iOS android users from there you can download ringtone for yourself and apply your device according to your operating system From.</p>\r\n\r\n<p>For Android users, there is the MP3 format and for iPhone users or IOS&nbsp;users, the m4r format is given as will be visible in blue and green Download Buttons.</p>\r\n\r\n<p>So simply download and set your favorite Tamil ringtone on your mobile and feel the world with music.</p>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"font-size:24px\">Add Tamil Ringtones to your Favorite List</span></h3>\r\n\r\n<p>Who doesn&#39;t like to make a list of their favorite ringtones? Every Tamil ringtone lover wants to create a personal life favorite list of their favorite Tamil ringtones or rather to have quick access to their favorite Tamil ringtones. Now you can download Tamil ringtones on our site. You can add this ringtone to your favorite list by giving it a hot Hey I sincerely hope you have liked this picture very much.</p>\r\n\r\n<p>Adore this beautiful collection of Tamil ringtones by giving a heart to your favorite ringtone now.</p>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"font-size:24px\">One-Click Download Feature Available for Tamil Ringtones!</span></h3>\r\n\r\n<p>Like me, if you are a daily internet consumer then you must have needed to download a file online at some point in time and when you went to download it, you will find many popups windows, many fake download buttons, etc and many more in it. Must have seen such a site in which there are 3- 4 download buttons which are all fake and on pressing any download button, only pop-ups are opened, no file is downloaded and even if the file is found, the file is corrupted,</p>\r\n\r\n<p>so many problems Faced when you want to download an online file but you will not see all this on our site you can directly click on any ringtone and download it directly from there that too in a single click without any alternate Window This ultimate feature makes our website ringtone fly differently from others</p>\r\n\r\n<p>You can check the download option on the fancy player box to download the ringtone from where the ringtone will be added directly to your download manager.</p>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"font-size:24px\">Quik Sharing! Options for Tamil Ringtones</span></h3>\r\n\r\n<p>Today in 2021, the content and news is spreading like fire where everyone wants to share tremendous and quality content further or whether it is a ringtone,&nbsp;</p>\r\n\r\n<p>today a new trend comes on social media every day and that trend Along comes his beat which is very much discussed, people like to download this trending beat ringtone and also like to share it with friends and family to come ahead</p>\r\n\r\n<p>that&#39;s why we have got these popular and banging Tamil ringtones for you with quick sharing option to share anywhere in social media so that you can see it in the bottom of the ringtone player box and from that, you can share ringtone directly and do you know your one share can make this ringtone popular and also in trends&nbsp;</p>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"font-size:24px\">About Tamil Ringtones</span></h3>\r\n\r\n<p><strong>Tamil Nadu</strong> is an important part of our India which is in the southern region and the Tamil language is spoken widely in Tamil Nadu and Tamil Nadu has the ability to reflect the culture of our India, Tamil Nadu is very skilled in dance, music, and handmade items.</p>\r\n\r\n<p>The most popular in Tamil Nadu is the cinema in which the whole country has been attracted towards it and why you know this, we also know Tamil cinema by another name which we call <strong>Kollywood</strong>.</p>\r\n\r\n<p>Kollywood movies are very much a hit and their songs also rule the hearts of all Indians.That&#39;s why even today the craze of Kollywood is so much that people personalize their mobile by making the songs of their movies as ringtones, Tamil ringtones are the most popular ringtones today which are searched a lot on the internet and to meet the demand of the same users.</p>\r\n\r\n<p>That&#39;s why we have come up with this powerful collection of <strong>Tamil ringtones</strong>.</p>\r\n\r\n<p>And we hope you liked this collection of Tamil ringtones and don&#39;t forget to share such an amazing collection on your social media.</p>\r\n\r\n<h4 style=\"text-align:center\"><span style=\"font-size:24px\">Gift From Our Heart!</span></h4>\r\n\r\n<p>As always, today we have brought some special gifts for you. You will also get to see tremendous features which you will like very much.</p>\r\n\r\n<p>If you find any ringtone missing in our <a href=\"https://www.ringtonefly.co/tamil-ringtones/\">Tamil ringtones</a> collection and are sure that the Tamil ringtone is incomplete without that ringtone, then we will definitely add that ringtone to us.</p>\r\n\r\n<p>You can also tell us your favorite Tamil ringtone, you can contact us by visiting the Contact Us page to tell us about the ringtone you have in mind.</p>\r\n\r\n<p>Thank you very much for visiting our website <strong>RingtoneFly.co</strong></p>\r\n\r\n<p>And yes you don&#39;t forget to bookmark our site so that you can access our site fast and easily.</p>\r\n\r\n<p>In-Depth from our heart By <a href=\"https://www.ringtonefly.co\">RingtoneFly.co</a>&nbsp;...</p>', '2021-08-27 12:30:04.628265'),
(625, NULL, '<p><strong>Hindi Ringtones</strong> - We all like Hindi Songs very much and when it comes to any favorite song, then we express our desire to listen to it in every sound of our mobile and to fulfill this wish, We have brought a tremendous collection of Hindi Ringtones which is so loved by Hindi ringtones lover.</p>\r\n\r\n<p>These Hindi Ringtones will mesmerize your heart and mind with its sweet tune and it is a pleasure to listen to your favorite songs more than once.</p>\r\n\r\n<p>You can replace the Hindi ringtone with the default ringtone of your mobile and listen to it again and Fagain before receiving the call, which will give you a lot of pleasure.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Best Hindi Ringtones Collection of Top Singers</span></h2>\r\n\r\n<p>There are many Hindi singers in Bollywood whose songs are very popular, Jin Mee Hum has given you a collection of <strong>Hindi ringtones</strong> of some very amazing singers, in which Hindi ringtones of these popular singers have been given. Some Popular Hindi Singers Sonu Nigam, Jubin Nautiyal, Udit Narayan, Arijit Singh, Neha Kakkar, Armaan Malik, Atif Aslam, HR, Shaan, A.R Rahman, Lata Mangeshkar,&nbsp;</p>\r\n\r\n<p>Some Popular Ringtones of These Singers</p>\r\n\r\n<ul>\r\n	<li>Raataan Lambiyan Ringtone</li>\r\n	<li>Filhaal Ringtone</li>\r\n	<li>Is Qadar Ringtone</li>\r\n	<li>Surroor Ringtone</li>\r\n	<li>Dil Ko Karar Aya hai Ringtone</li>\r\n	<li>Abhi Mujh Mein Kahi Ringtone</li>\r\n	<li>Barish Ki Dhun Ringtone</li>\r\n</ul>\r\n\r\n<p>You will get to hear the Hindi ringtones of these popular Hindi singers and you can download them from our <a href=\"https://www.ringtonefly.co/\">RingtoneFly</a>.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Top User Rated Hindi Ringtones</span></h2>\r\n\r\n<p>&nbsp;Here you will get to see some different categories on our site, one of them is the top user rated ringtone, in which you will get to see the ringtone of which Hindi ringtone is most liked by our site. So some special Hindi ringtones are given below.</p>\r\n\r\n<ul>\r\n	<li>Ranjha Ringtone</li>\r\n	<li>Dil Ko Karar Aya Hai</li>\r\n	<li>Jogi Ringtone</li>\r\n	<li>Raataan Lambiyan Ringtone</li>\r\n	<li>Thoda Thoda Pyaar Ringtone</li>\r\n	<li>Bewafa Ringtone</li>\r\n	<li>Baithe Baithe Ringtone</li>\r\n	<li>Bepanah Pyaar Ringtone</li>\r\n</ul>\r\n\r\n<p>That is Not it you can check more at above.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Download Popular Hindi Ringtones</span></h2>\r\n\r\n<p>Now everyone likes popular ringtones, so how will it be if your task becomes easy to know which ringtone is the most popular, then it will be good, that&#39;s why in our RingtoneFly you will get to see the popular ringtone section in every category in which &nbsp;You will see the most popular ringtones in the top. &nbsp;Some of them are Hindi ringtones we have listed below.</p>\r\n\r\n<ul>\r\n	<li>Raataan Lambiyan Ringtone</li>\r\n	<li>Ranjha Ringtone</li>\r\n	<li>Filhaal2 Ringtone</li>\r\n	<li>Mehandi Walw Haath Ringtone</li>\r\n	<li>Ik Mulaqaat Ringtone</li>\r\n	<li>Pal Ringtone</li>\r\n</ul>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"font-size:24px\">Type of Hindi Ringtones</span>&nbsp;</h3>\r\n\r\n<p>We have shared with you about almost 3+ Hindi ringtones genres in the category of Hindi ringtones which are given below</p>\r\n\r\n<ul>\r\n	<li>Love Hindi Ringtones</li>\r\n	<li>Old Hindi Ringtones</li>\r\n	<li>Bollywood Hindi Ringtone</li>\r\n	<li>Heart Broken Hindi Ringtones</li>\r\n</ul>\r\n\r\n<p>These all Hindi Ringtones genres are most popular in Hindi songs that&rsquo;s why we shared their ringtones.</p>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"font-size:24px\">Download Hindi Ringtones for Android &amp; iPhone</span></h3>\r\n\r\n<p>Now everyone&#39;s device is different, with both Android and iOS users needing different ringtone formats for devices.</p>\r\n\r\n<p>M4R for iPhone or Mp3 format is used for Android, so we have provided you two types for each Hindi ringtone in which M4R OR MP3 is both.You can download any of the suitable formats and you will get the download instruction on the download button.</p>\r\n\r\n<h4 style=\"text-align:center\"><span style=\"font-size:24px\">Gift From Our Heart!</span></h4>\r\n\r\n<p>We hope that you have liked this collection of Hindi ringtones and we have recently added an awesome category of <strong>Hindi Ringtones</strong> to our mobile app for Hindi ringtone lovers, then you can check that too.&nbsp;</p>', '2021-09-25 07:43:58.287709'),
(629, NULL, '<p><strong>Hindi Ringtones</strong> - We all like Hindi Songs very much and when it comes to any favorite song, then we express our desire to listen to it in every sound of our mobile and to fulfill this wish, We have brought a tremendous collection of Hindi Ringtones which is so loved by Hindi ringtones lover.</p>\r\n\r\n<p>These Hindi Ringtones will mesmerize your heart and mind with its sweet tune and it is a pleasure to listen to your favorite songs more than once.</p>\r\n\r\n<p>You can replace the Hindi ringtone with the default ringtone of your mobile and listen to it again and Fagain before receiving the call, which will give you a lot of pleasure.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Best Hindi Ringtones Collection of Top Singers</span></h2>\r\n\r\n<p>There are many Hindi singers in Bollywood whose songs are very popular, Jin Mee Hum has given you a collection of <strong>Hindi ringtones</strong> of some very amazing singers, in which Hindi ringtones of these popular singers have been given. Some Popular Hindi Singers Sonu Nigam, Jubin Nautiyal, Udit Narayan, Arijit Singh, Neha Kakkar, Armaan Malik, Atif Aslam, HR, Shaan, A.R Rahman, Lata Mangeshkar,&nbsp;</p>\r\n\r\n<p>Some Popular Ringtones of These Singers</p>\r\n\r\n<ul>\r\n	<li>Raataan Lambiyan Ringtone</li>\r\n	<li>Filhaal Ringtone</li>\r\n	<li>Is Qadar Ringtone</li>\r\n	<li>Surroor Ringtone</li>\r\n	<li>Dil Ko Karar Aya hai Ringtone</li>\r\n	<li>Abhi Mujh Mein Kahi Ringtone</li>\r\n	<li>Barish Ki Dhun Ringtone</li>\r\n</ul>\r\n\r\n<p>You will get to hear the Hindi ringtones of these popular Hindi singers and you can download them from our <a href=\"https://www.ringtonefly.co/\">RingtoneFly</a>.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Top User Rated Hindi Ringtones</span></h2>\r\n\r\n<p>&nbsp;Here you will get to see some different categories on our site, one of them is the top user rated ringtone, in which you will get to see the ringtone of which Hindi ringtone is most liked by our site. So some special Hindi ringtones are given below.</p>\r\n\r\n<ul>\r\n	<li>Ranjha Ringtone</li>\r\n	<li>Dil Ko Karar Aya Hai</li>\r\n	<li>Jogi Ringtone</li>\r\n	<li>Raataan Lambiyan Ringtone</li>\r\n	<li>Thoda Thoda Pyaar Ringtone</li>\r\n	<li>Bewafa Ringtone</li>\r\n	<li>Baithe Baithe Ringtone</li>\r\n	<li>Bepanah Pyaar Ringtone</li>\r\n</ul>\r\n\r\n<p>That is Not it you can check more at above.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Download Popular Hindi Ringtones</span></h2>\r\n\r\n<p>Now everyone likes popular ringtones, so how will it be if your task becomes easy to know which ringtone is the most popular, then it will be good, that&#39;s why in our RingtoneFly you will get to see the popular ringtone section in every category in which &nbsp;You will see the most popular ringtones in the top. &nbsp;Some of them are Hindi ringtones we have listed below.</p>\r\n\r\n<ul>\r\n	<li>Raataan Lambiyan Ringtone</li>\r\n	<li>Ranjha Ringtone</li>\r\n	<li>Filhaal2 Ringtone</li>\r\n	<li>Mehandi Walw Haath Ringtone</li>\r\n	<li>Ik Mulaqaat Ringtone</li>\r\n	<li>Pal Ringtone</li>\r\n</ul>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"font-size:24px\">Type of Hindi Ringtones</span>&nbsp;</h3>\r\n\r\n<p>We have shared with you about almost 3+ Hindi ringtones genres in the category of Hindi ringtones which are given below</p>\r\n\r\n<ul>\r\n	<li>Love Hindi Ringtones</li>\r\n	<li>Old Hindi Ringtones</li>\r\n	<li>Bollywood Hindi Ringtone</li>\r\n	<li>Heart Broken Hindi Ringtones</li>\r\n</ul>\r\n\r\n<p>These all Hindi Ringtones genres are most popular in Hindi songs that&rsquo;s why we shared their ringtones.</p>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"font-size:24px\">Download Hindi Ringtones for Android &amp; iPhone</span></h3>\r\n\r\n<p>Now everyone&#39;s device is different, with both Android and iOS users needing different ringtone formats for devices.</p>\r\n\r\n<p>M4R for iPhone or Mp3 format is used for Android, so we have provided you two types for each Hindi ringtone in which M4R OR MP3 is both.You can download any of the suitable formats and you will get the download instruction on the download button.</p>\r\n\r\n<h4 style=\"text-align:center\"><span style=\"font-size:24px\">Gift From Our Heart!</span></h4>\r\n\r\n<p>We hope that you have liked this collection of Hindi ringtones and we have recently added an awesome category of <strong>Hindi Ringtones</strong> to our mobile app for Hindi ringtone lovers, then you can check that too.&nbsp;</p>', '2021-09-25 07:44:14.303340');
INSERT INTO `config_containerplugin` (`cmsplugin_ptr_id`, `title`, `content`, `updated_at`) VALUES
(783, NULL, '<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>Mahadev Ringtones</strong>: In today&#39;s era, everyone is so busy that there is no rest for a moment and in this busy life, everyone needs the company of God Mahadev or <strong>Goddess</strong> and you can download Mahadev Ringtone to sleep in the shadow of Faith that gives belief in God.&nbsp;Huh...</span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Such Type of Mahadev Ringtones are available here&nbsp;</span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Mahadev Tandav Ringtone, Mahadev Damru Ringtone, Mahakal Ringtones, Mahadev Bhajan Ringtones, Shiv Ringtones, Mahakal Ringtones, Lord Shiva Ringtones 2021, etc type ringtone are available for Mahakal Devotee&#39;s.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">This mahadev ringtone will connect you with your adorable mahakal and will immerse you in his devotional devotion, you can easily download these mahadev ringtones from our site <a href=\"https://ringtonefly.co\">ringtonefly.co</a>.</span></span></span></p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">&nbsp;</span></span></span><span style=\"font-size:24px\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Mahadev Ringtone</span></span></span></h2>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">All Mahadev Devotee&rsquo;s Just Take a heaven ride with Mahadev ringtone and get Refreshed with Sweet Tune like honey, Without Wasting any time you can easily download all Mahadev ringtones in Mp3 or M4r format, Set the ringtone as your default Mobile ringtone and listen to&nbsp;<strong>Mahadev Ringtone</strong> every time.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Lord Shiva&#39;s Ringtones are freely available for everyone so that anyone can download them easily.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Just go ahead and download these amazing tunes and make your day&nbsp;joyful.</span></span></span></p>', '2021-10-29 13:35:06.897830'),
(887, NULL, '<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>Mahadev Ringtones</strong>: In today&#39;s era, everyone is so busy that there is no rest for a moment and in this busy life, everyone needs the company of God Mahadev or <strong>Goddess</strong> and you can download Mahadev Ringtone to sleep in the shadow of Faith that gives belief in God.&nbsp;Huh...</span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Such Type of Mahadev Ringtones are available here&nbsp;</span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Mahadev Tandav Ringtone, Mahadev Damru Ringtone, Mahakal Ringtones, Mahadev Bhajan Ringtones, Shiv Ringtones, Mahakal Ringtones, Lord Shiva Ringtones 2021, etc type ringtone are available for Mahakal Devotee&#39;s.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">This mahadev ringtone will connect you with your adorable mahakal and will immerse you in his devotional devotion, you can easily download these mahadev ringtones from our site <a href=\"https://ringtonefly.co\">ringtonefly.co</a>.</span></span></span></p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">&nbsp;</span></span></span><span style=\"font-size:24px\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Mahadev Ringtone</span></span></span></h2>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">All Mahadev Devotee&rsquo;s Just Take a heaven ride with Mahadev ringtone and get Refreshed with Sweet Tune like honey, Without Wasting any time you can easily download all Mahadev ringtones in Mp3 or M4r format, Set the ringtone as your default Mobile ringtone and listen to&nbsp;<strong>Mahadev Ringtone</strong> every time.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Lord Shiva&#39;s Ringtones are freely available for everyone so that anyone can download them easily.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Just go ahead and download these amazing tunes and make your day&nbsp;joyful.</span></span></span></p>', '2021-10-29 13:35:17.205339'),
(900, 'Privacy Policy', '<p><strong>Privacy Policy </strong>for<strong>&nbsp;</strong>Our Mobile App &quot;<strong>RingtoneFly - Ringtones</strong>&quot;</p>\r\n\r\n<p>RingtoneFly built the RingtoneFly - Ringtones app as a Free app. This SERVICE is provided by RingtoneFly at no cost and is intended for use as is.</p>\r\n\r\n<p>This page is used to inform visitors regarding my policies with the collection, use, and disclosure of Personal Information if anyone decided to use my Service.</p>\r\n\r\n<p>If you choose to use my Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that I collect is used for providing and improving the Service. I will not use or share your information with anyone except as described in this Privacy Policy.</p>\r\n\r\n<p>The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which are accessible at RingtoneFly - Ringtones unless otherwise defined in this Privacy Policy.</p>\r\n\r\n<p><strong>Information Collection and Use</strong></p>\r\n\r\n<p>For a better experience, while using our Service, I may require you to provide us with certain personally identifiable information. The information that I request will be retained on your device and is not collected by me in any way.</p>\r\n\r\n<div>\r\n<p>The app does use third-party services that may collect information used to identify you.</p>\r\n\r\n<p>Link to the privacy policy of third-party service providers used by the app</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://www.google.com/policies/privacy/\" rel=\"noopener noreferrer\" target=\"_blank\">Google Play Services</a></li>\r\n	<li><a href=\"https://support.google.com/admob/answer/6128543?hl=en\" rel=\"noopener noreferrer\" target=\"_blank\">AdMob</a></li>\r\n</ul>\r\n</div>\r\n\r\n<p><strong>Log Data</strong></p>\r\n\r\n<p>I want to inform you that whenever you use my Service, in a case of an error in the app I collect data and information (through third-party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol (&ldquo;IP&rdquo;) address, device name, operating system version, the configuration of the app when utilizing my Service, the time and date of your use of the Service, and other statistics.</p>\r\n\r\n<p><strong>Cookies</strong></p>\r\n\r\n<p>Cookies are files with a small amount of data that are commonly used as anonymous unique identifiers. These are sent to your browser from the websites that you visit and are stored on your device&#39;s internal memory.</p>\r\n\r\n<p>This Service does not use these &ldquo;cookies&rdquo; explicitly. However, the app may use third-party code and libraries that use &ldquo;cookies&rdquo; to collect information and improve their services. You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device. If you choose to refuse our cookies, you may not be able to use some portions of this Service.</p>\r\n\r\n<p><strong>Service Providers</strong></p>\r\n\r\n<p>I may employ third-party companies and individuals due to the following reasons:</p>\r\n\r\n<ul>\r\n	<li>To facilitate our Service;</li>\r\n	<li>To provide the Service on our behalf;</li>\r\n	<li>To perform Service-related services; or</li>\r\n	<li>To assist us in analyzing how our Service is used.</li>\r\n</ul>\r\n\r\n<p>I want to inform users of this Service that these third parties have access to their Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose.</p>\r\n\r\n<p><strong>Security</strong></p>\r\n\r\n<p>I value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and I cannot guarantee its absolute security.</p>\r\n\r\n<p><strong>Links to Other Sites</strong></p>\r\n\r\n<p>This Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by me. Therefore, I strongly advise you to review the Privacy Policy of these websites. I have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.</p>\r\n\r\n<p><strong>Children&rsquo;s Privacy</strong></p>\r\n\r\n<div>\r\n<p>These Services do not address anyone under the age of 13. I do not knowingly collect personally identifiable information from children under 13 years of age. In the case I discover that a child under 13 has provided me with personal information, I immediately delete this from our servers. If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact me so that I will be able to do the necessary actions.</p>\r\n</div>\r\n\r\n<p><strong>Changes to This Privacy Policy</strong></p>\r\n\r\n<p>I may update our Privacy Policy from time to time. Thus, you are advised to review this page periodically for any changes. I will notify you of any changes by posting the new Privacy Policy on this page.</p>\r\n\r\n<p>This policy is effective as of 2021-11-27</p>\r\n\r\n<p><strong>Contact Us</strong></p>\r\n\r\n<p>If you have any questions or suggestions about my Privacy Policy, do not hesitate to contact me at ringtonefly.co@gmail.com.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2 style=\"text-align:center\">Privacy Policy For Our Website RingtoneFly.co</h2>\r\n\r\n<p>At RingtoneFly.co, accessible from https://www.ringtonefly.co, one of our main priorities is the privacy of our visitors. This Privacy Policy document contains types of information that is collected and recorded by RingtoneFly.co and how we use it.</p>\r\n\r\n<p>If you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us.</p>\r\n\r\n<p>This Privacy Policy applies only to our online activities and is valid for visitors to our website with regards to the information that they shared and/or collect in RingtoneFly.co. This policy is not applicable to any information collected offline or via channels other than this website.</p>\r\n\r\n<h2>Consent</h2>\r\n\r\n<p>By using our website, you hereby consent to our Privacy Policy and agree to its terms.</p>\r\n\r\n<h2>Information we collect</h2>\r\n\r\n<p>The personal information that you are asked to provide, and the reasons why you are asked to provide it, will be made clear to you at the point we ask you to provide your personal information.</p>\r\n\r\n<p>If you contact us directly, we may receive additional information about you such as your name, email address, phone number, the contents of the message and/or attachments you may send us, and any other information you may choose to provide.</p>\r\n\r\n<p>When you register for an Account, we may ask for your contact information, including items such as name, company name, address, email address, and telephone number.</p>\r\n\r\n<h2>How we use your information</h2>\r\n\r\n<p>We use the information we collect in various ways, including to:</p>\r\n\r\n<ul>\r\n	<li>Provide, operate, and maintain our website</li>\r\n	<li>Improve, personalize, and expand our website</li>\r\n	<li>Understand and analyze how you use our website</li>\r\n	<li>Develop new products, services, features, and functionality</li>\r\n	<li>Communicate with you, either directly or through one of our partners, including for customer service, to provide you with updates and other information relating to the website, and for marketing and promotional purposes</li>\r\n	<li>Send you emails</li>\r\n	<li>Find and prevent fraud</li>\r\n</ul>\r\n\r\n<h2>Log Files</h2>\r\n\r\n<p>RingtoneFly.co follows a standard procedure of using log files. These files log visitors when they visit websites. All hosting companies do this and a part of hosting services&#39; analytics. The information collected by log files include internet protocol (IP) addresses, browser type, Internet Service Provider (ISP), date and time stamp, referring/exit pages, and possibly the number of clicks. These are not linked to any information that is personally identifiable. The purpose of the information is for analyzing trends, administering the site, tracking users&#39; movement on the website, and gathering demographic information.</p>\r\n\r\n<h2>Cookies and Web Beacons</h2>\r\n\r\n<p>Like any other website, RingtoneFly.co uses &#39;cookies&#39;. These cookies are used to store information including visitors&#39; preferences, and the pages on the website that the visitor accessed or visited. The information is used to optimize the users&#39; experience by customizing our web page content based on visitors&#39; browser type and/or other information.</p>\r\n\r\n<p>For more general information on cookies, please read <a href=\"https://www.privacypolicyonline.com/what-are-cookies/\">&quot;What Are Cookies&quot;</a>.</p>\r\n\r\n<h2>Google DoubleClick DART Cookie</h2>\r\n\r\n<p>Google is one of a third-party vendor on our site. It also uses cookies, known as DART cookies, to serve ads to our site visitors based upon their visit to www.website.com and other sites on the internet. However, visitors may choose to decline the use of DART cookies by visiting the Google ad and content network Privacy Policy at the following URL &ndash; <a href=\"https://policies.google.com/technologies/ads\">https://policies.google.com/technologies/ads</a></p>\r\n\r\n<h2>Our Advertising Partners</h2>\r\n\r\n<p>Some of advertisers on our site may use cookies and web beacons. Our advertising partners are listed below. Each of our advertising partners has their own Privacy Policy for their policies on user data. For easier access, we hyperlinked to their Privacy Policies below.</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Google</p>\r\n\r\n	<p><a href=\"https://policies.google.com/technologies/ads\">https://policies.google.com/technologies/ads</a></p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Advertising Partners Privacy Policies</h2>\r\n\r\n<p>You may consult this list to find the Privacy Policy for each of the advertising partners of RingtoneFly.co.</p>\r\n\r\n<p>Third-party ad servers or ad networks uses technologies like cookies, JavaScript, or Web Beacons that are used in their respective advertisements and links that appear on RingtoneFly.co, which are sent directly to users&#39; browser. They automatically receive your IP address when this occurs. These technologies are used to measure the effectiveness of their advertising campaigns and/or to personalize the advertising content that you see on websites that you visit.</p>\r\n\r\n<p>Note that RingtoneFly.co has no access to or control over these cookies that are used by third-party advertisers.</p>\r\n\r\n<h2>Third Party Privacy Policies</h2>\r\n\r\n<p>RingtoneFly.co&#39;s Privacy Policy does not apply to other advertisers or websites. Thus, we are advising you to consult the respective Privacy Policies of these third-party ad servers for more detailed information. It may include their practices and instructions about how to opt-out of certain options.</p>\r\n\r\n<p>You can choose to disable cookies through your individual browser options. To know more detailed information about cookie management with specific web browsers, it can be found at the browsers&#39; respective websites.</p>\r\n\r\n<h2>CCPA Privacy Rights (Do Not Sell My Personal Information)</h2>\r\n\r\n<p>Under the CCPA, among other rights, California consumers have the right to:</p>\r\n\r\n<p>Request that a business that collects a consumer&#39;s personal data disclose the categories and specific pieces of personal data that a business has collected about consumers.</p>\r\n\r\n<p>Request that a business delete any personal data about the consumer that a business has collected.</p>\r\n\r\n<p>Request that a business that sells a consumer&#39;s personal data, not sell the consumer&#39;s personal data.</p>\r\n\r\n<p>If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</p>\r\n\r\n<h2>GDPR Data Protection Rights</h2>\r\n\r\n<p>We would like to make sure you are fully aware of all of your data protection rights. Every user is entitled to the following:</p>\r\n\r\n<p>The right to access &ndash; You have the right to request copies of your personal data. We may charge you a small fee for this service.</p>\r\n\r\n<p>The right to rectification &ndash; You have the right to request that we correct any information you believe is inaccurate. You also have the right to request that we complete the information you believe is incomplete.</p>\r\n\r\n<p>The right to erasure &ndash; You have the right to request that we erase your personal data, under certain conditions.</p>\r\n\r\n<p>The right to restrict processing &ndash; You have the right to request that we restrict the processing of your personal data, under certain conditions.</p>\r\n\r\n<p>The right to object to processing &ndash; You have the right to object to our processing of your personal data, under certain conditions.</p>\r\n\r\n<p>The right to data portability &ndash; You have the right to request that we transfer the data that we have collected to another organization, or directly to you, under certain conditions.</p>\r\n\r\n<p>If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</p>\r\n\r\n<h2>Children&#39;s Information</h2>\r\n\r\n<p>Another part of our priority is adding protection for children while using the internet. We encourage parents and guardians to observe, participate in, and/or monitor and guide their online activity.</p>\r\n\r\n<p>RingtoneFly.co does not knowingly collect any Personal Identifiable Information from children under the age of 13. If you think that your child provided this kind of information on our website, we strongly encourage you to contact us immediately and we will do our best efforts to promptly remove such information from our records.</p>', '2021-11-27 06:18:33.302793'),
(968, NULL, '<p>Everyone likes to listen to music and everyone likes to listen to the ringtone of their favorite music around them and in this craze of such ringtones, those people get involved in the search of good and new <strong>ringtones</strong> to download, but what is the use unless someone You won&#39;t be able to download the ringtone until the ringtone group is found.</p>\r\n\r\n<p>The solution to this problem is brought to you by our ringtonefly.co, ringtonefly is the modern ringtone collection site of today&#39;s era, which brings you the best collection of ringtones.</p>\r\n\r\n<p>On Ringtone Fly you have a ringtone collection of more than <strong>500K</strong>, in which you will get all kinds of ringtones that you can download in just one click. You can listen to the preview of every ringtone here, which will make it easy for you to download the <strong>best ringtones</strong>.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Features of RingtoneFly.co</span></h2>\r\n\r\n<p>Here are Some Super Cool Features of Ringtone Fly That Easy your Life During <strong>Ringtone Download</strong> So Just Stay Tuned With Our Mind Blown Ringtone Downloading Site. We Provide what Which Best for you So Make Trust in Us Enjoy Your Heaven Ride With RingtoneFly. Now here is Some Peaceful RingtoneFly.co&nbsp; Features.&nbsp;</p>\r\n\r\n<p><strong>New Ringtone:</strong> Every Want&rsquo;s to Up to Date with Modern Generation Which Means you have to&nbsp; Update yourself With New Ringtone That Infuse Infinity Energy in Yours.&nbsp; So Go through New Ringtone Collection And Change The World With Music</p>\r\n\r\n<p><strong>Popular Ringtone:</strong> This is Another Fantastic Feature of RingtoneFly, That is RingtoneFly Having Popular Ringtone Section on Top of the Homepage in Which All Time Most Popular Ringtone Listed That Help You very Much to Explore New Feeling.</p>\r\n\r\n<p><strong>Top 100 Trending Ringtone:</strong> On Top Section of Homepage Having Best Top 100 Trending Ringtone That Download Most Download And Played By Users So It Help you to Drill down Great Choice.</p>\r\n\r\n<p><strong>Pre- Ready Ringtone Preview:</strong> This is the Most Requested And Lovely Feature RingtoneFly That is you Can Play Ringtone in Preview&nbsp; Which Means you can Play and Listen to Which One Best for you, Without Entering in Any Particular Ringtone.</p>\r\n\r\n<p>After Choose the Best one You Can Download it Easily with One Click.</p>\r\n\r\n<p><strong>Most Downloaded Ringtone:</strong> Here is One Another Interesting Feature of RingtoneFly that is the Most Downloading Ringtone Label. That Means you Can estimate Which One Ringtone Highly Download By Users And Which One You Should Try Out.</p>\r\n\r\n<p><strong>Choose Best Ringtone With Category Map:</strong> It is the Most Awaiting Feature of RingtoneFly.co That is Easy Category Explorer.</p>\r\n\r\n<p>Here is Super Personalized Ringtone Collection That Made easy your Life, Here User Can Use Category Map to Choose their Favorite Ringtone Category, And also By Just Clicking On That&nbsp; They Can Easily Jump Direct to Their Favorite Ringtone Collection Which one Want to Download.&nbsp;</p>\r\n\r\n<p><strong>Add to Favorite List:</strong> Here RingtoneFly Bring Amazing New Feature That is Giving Heart to your Favorite Ringtone It Will Gives you More Better Feeling And Direct below from you can Download Ringtone in Mp3 (Android) &amp; M4r (iPhone) in One-Click.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Popular Ringtone Category</span></h2>\r\n\r\n<p>Our Website RingtoneFly.co Having Largest Collection of New Mp3 Ringtones Upto 500K Ringtones. This is So Huge Collection That Can Help to Find the Best One Ringtone. Let&rsquo;s Get Start With Popular Ringtone Category.</p>\r\n\r\n<p><strong>iPhone Ringtone:</strong>&nbsp; Every iPhone Lover Wants to Set an iPhone ringtone instead of his Existing Mobile Ringtone, and for that, He wants an iPhone ringtone. So here is the Solution We Done Well Collection for iPhone Ringtones for All iPhone Models.</p>\r\n\r\n<p><strong>Hindi Ringtones:</strong> Almost Every Indian Want to Listen to Hindi Ringtone as Their Default Mobile Ringtone That Means it Most Requested Ringtone&nbsp; Category So Here We Collected Some Golden Pieces of Hindi Ringtone.</p>\r\n\r\n<p><strong>Telugu Ringtone:</strong> In 21st Century Most Popular Movie Industry is Tollywood Having Huge Fan Following in India That Why Most Of Fans Want to Download the Telugu Ringtone So also we Collected this Piece Here.</p>\r\n\r\n<p><strong>Tamil Ringtone:</strong> This Another Part Of Tollywood That Also Knows as Kollywood So That Why It is Another Trending Ringtone Category That Demanded By Users.</p>\r\n\r\n<p>These All Ringtone Categories Almost Update once in Week. So Don&rsquo;t Worry Just Enjoy And Feel The World.&nbsp;</p>\r\n\r\n<p>Above We Discussed Just Small Piece of Ringtone Category For More Check Top Section. On RingtoneFly You Will Get More Than 50+ Ringtone Categories in Which Almost We Shared Up to 500K Ringtone. Just Go through With Navigation Bar Their Weekly Update New Ringtone Category.</p>\r\n\r\n<p>Now, Don&rsquo;t Waste Time And Drill Down Whole Site.</p>\r\n\r\n<p><strong>Quick Guide:</strong>&nbsp;How to Download Ringtones: Here Are Some Basic Guide for Downloading Ringtone From RingtoneFly.co&nbsp;</p>\r\n\r\n<p><strong>1 STEP:-</strong> Listen to Preview Of Ringtones And Choose Best One From the Whole&nbsp; Collection&nbsp;</p>\r\n\r\n<p><strong>2 STEP:-</strong> Now Just Click On Ringtone Title That Showed in Green Color And Now You Will Entered in New Page That Call&rsquo;s Player Page in This Page You Can Dow Many Do Thing Like Download Your Ringtone That You Listened in Preview, Give Heart to That Ringtone, Share That Tune Via WhatsApp, Instagram, Facebook.. etc.&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p><strong>Play Preview &amp; Download:</strong> Click On Player Button to Play Direct Ringtone Even With Out Entering in any page Player Page. And Download That Ringtone With One Click Features,&nbsp;Download File Available For iPhone &amp; Android</p>\r\n\r\n<p><strong>FAQ:</strong></p>\r\n\r\n<p>Q.1 Is This Website Safe for My Device?</p>\r\n\r\n<p>Ans. Absolutely Safe for Your Device And It No Harm to your Device.</p>\r\n\r\n<p>Q.2 How do I Download Ringtone?</p>\r\n\r\n<p>Ans. On Google Just Search RingtoneFly It Will Shows You WonderFull Site That Name is RingtoneFly.co</p>\r\n\r\n<p>Q3. Is RingtoneFly Provide Free Ringtone?</p>\r\n\r\n<p>Ans. Yes! Absolutely Free Service.</p>\r\n\r\n<p>Q4. Is There Any Trending Ringtone Collection That We Can Download?</p>\r\n\r\n<p>Ans. Yes Here is the <strong>Top #100 Trending Ringtones</strong> Collection That Shows on Top Site.</p>\r\n\r\n<p>Gift from Our Heart: In the Last Few Words We Having a Great Surprise for You That is We Launch Soon a Mobile Application About to RingtoneFly Where You Can Download And Upload Ringtone And Grab Likes On It That Means Every Interact With Your Ringtones So Stay Tuned With Us.</p>\r\n\r\n<p>From In-Depth of Our heart By <strong>RingtoneFly.co</strong></p>', '2021-12-14 04:01:37.817736'),
(992, NULL, '<p><strong>iPhone Ringtones Download</strong> - Mobile is a short word to say but only the person who uses it knows to what extent it can be used</p>\r\n\r\n<p>A mobile user knows How to personalize his mobile. To improve this personalization, we have come up with <strong>iPhone ringtones</strong> for you so that you can use your normal ringtones. Android devices can set the caller tune of the iPhone.</p>\r\n\r\n<p>Now you will ask about the iPhone ringtone, so let me tell you that because of social media and a rich personality, today everyone wants to get an iPhone, but due to the high price of the iPhone, one has to buy an Android smartphone with a sad heart. To overcome this, we bring you a tremendous collection of <strong>iPhone ringtones</strong>.</p>\r\n\r\n<p>In today&#39;s modern era, people&#39;s choice is more for iPhone than Android, but due to the low budget, Android smartphones remain in a lot of discussion even today.</p>\r\n\r\n<p>But that rich feel of iPhone does not leave the people behind, retaining the same feeling, people download iPhone ringtones and set it instead of their default mobile ringtone.</p>\r\n\r\n<p>For your information, let us tell you that there are mainly two types of operating time in mobile.</p>\r\n\r\n<ul>\r\n	<li>iOS and Android</li>\r\n</ul>\r\n\r\n<p>Both of these are mainly used systems.</p>\r\n\r\n<p>To personalize these two systems, you have to format the file differently.</p>\r\n\r\n<ul>\r\n	<li>iPhone Music File Extension : M4r Ringtone Format</li>\r\n	<li>Android Music File Extension : Mp3 Ringtone Format</li>\r\n</ul>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">Why Do You Need iPhone Ringtones?</span></h2>\r\n\r\n<p>Setting an iPhone ringtone for a normal iPhone user is a very minor thing, but later when it comes to Android users, it becomes a bit difficult, because in that Madness for <a href=\"https://www.ringtonefly.co/iphone-ringtones/\">iPhone ringtones</a>, they become so crazy that they can find all the websites on the internet. but still no one can find them any iPhone ringtone. For Solving This Problem RingtoneFly.co Bring Super Fantastic Collection of iPhone Ringtones.</p>\r\n\r\n<p>iPhone Ringtones are a way to feel the rich feeling of an iPhone.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">All iPhone Ringtones of Apple Devices&nbsp;</span></h2>\r\n\r\n<ul>\r\n	<li>iPhone 5s Ringtone - This Ringtone Comes from Iphone 5s.</li>\r\n	<li>iPhone 6 Ringtone- This iPhone Ringtone Comes from Apple Iphone 6 That is So Amazing Tune</li>\r\n	<li>iPhone 6 Plus Ringtone- This Ringtone Comes from IPhone 6 Plus That Calms Your Pulse.</li>\r\n	<li>iPhone 6s Ringtone- This Ringtone Comes from iPhone 6s</li>\r\n	<li>iPhone SE (1st generation) Ringtone- This Ringtone Comes from iPhone SE (1st generation) Ringtone</li>\r\n	<li>iPhone 7 Ringtone- This Ringtone Comes from iPhone 7 Ringtone</li>\r\n	<li>iPhone 7 Plus Ringtone- This Ringtone Comes from iPhone 7 Plus</li>\r\n	<li>iPhone 8 Ringtone- This Ringtone Comes from iPhone 8</li>\r\n	<li>iPhone 8 Plus Ringtone- This Ringtone Comes from iPhone 8 Plus</li>\r\n</ul>\r\n\r\n<p>Here From We Started Iphone X Series That Having More Fabulous Ringtones</p>\r\n\r\n<ul>\r\n	<li>iPhone X Ringtone- This Ringtone Comes from iPhone X</li>\r\n	<li>iPhone XR Ringtone- This Ringtone Comes from iPhone XR</li>\r\n	<li>iPhone XS Ringtone- This Ringtone Comes from iPhone XS</li>\r\n	<li>iPhone XS Max Ringtone- This Ringtone Comes from iPhone XS Max</li>\r\n	<li>iPhone 11 Ringtone- This Ringtone Comes from iPhone 11</li>\r\n	<li>iPhone 11 Pro Ringtone- This Ringtone Comes from iPhone 11 Pro</li>\r\n	<li>iPhone 11 Pro Max Ringtone- This Ringtone Comes from iPhone 11 Pro Max</li>\r\n	<li>iPhone SE (2nd generation) Ringtone- This Ringtone Comes from iPhone SE (2nd generation)</li>\r\n	<li>iPhone 12 mini Ringtone- This Ringtone Comes from iPhone 12 mini</li>\r\n	<li>iPhone 12 Ringtone- This Ringtone Comes from iPhone 12</li>\r\n	<li>iPhone 12 Pro Ringtone- This Ringtone Comes from iPhone 12 Pro</li>\r\n</ul>\r\n\r\n<p>Also, Download iPhone Notification Tone That Use for Personalizing SMS Tone So Check Above Collection.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">How to Download iPhone Ringtones from Our Site RingtoneFly.co ?</span></h2>\r\n\r\n<p>To download iPhone ringtones from our site ringtonefly.co you Just need to follow Some Steps that are Given Below. Step1: Go To iPhone Ringtones Category And Listen to Your Favorite Ringtone Pre-Audio And Just Click on Title You Will Land on Download Page Where you Can See Two Download Button one for Androids And Second for iPhone, By Just One Click you Ringtone Will Start Downloading.</p>\r\n\r\n<p>Also Here From you Can Give Heart to Your Favorite Ringtone And Check Popular iPhone Ringtones.</p>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"font-size:24px\">How to Set iPhone Ringtone?</span></h3>\r\n\r\n<ul>\r\n	<li><strong>In Android</strong> - for Changing your Default Ringtone to Iphone Ringtone in Android Device Follow Below Steps:\r\n\r\n	<ul>\r\n		<li><strong>Step1:</strong> Open Settings App,</li>\r\n		<li><strong>Step2:</strong> Tap on &ldquo;<strong>Sounds And Vibration</strong>&rdquo;</li>\r\n		<li><strong>Step3:</strong> Tap on &ldquo;<strong>Ringtone</strong>&rdquo; Option,</li>\r\n		<li><strong>Step4:</strong> Choose Your Ringtone And Set it as Your Default Ringtone.</li>\r\n	</ul>\r\n	</li>\r\n	<li><strong>In iPhone</strong> -&nbsp;for Changing your Ringtone iPhone Device Just&nbsp;Go Through Some Easy Steps:\r\n	<ul>\r\n		<li><strong>Step1:</strong> Go to Settings,</li>\r\n		<li><strong>Step2:</strong> Sounds &amp; Haptics,<strong> </strong></li>\r\n		<li><strong>Step3:</strong> Under Sounds And Vibration Patterns, Tao the Sounds That You Want to Set as Ringtone.<strong> </strong></li>\r\n		<li><strong>Step4:</strong> Tao a Ringtone or Alert tone to hear and Set it as That New <strong>Iphone Ringing Tone</strong>.</li>\r\n	</ul>\r\n	</li>\r\n	<li>Make Sure You Do It Properly.</li>\r\n</ul>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\">FAQ About iPhone Ringtones</span></h2>\r\n\r\n<p>Q1. How Can I Download iPhone Ringtone?</p>\r\n\r\n<p>Ans. You Can Download iPhone Ringtones from <a href=\"https://www.ringtonefly.co\">RingtoneFly.co</a> That is So Reliable Source.</p>\r\n\r\n<p>Q2. Which iPhone Ringtone is Best?</p>\r\n\r\n<p>Ans. &ldquo;Opening&rdquo; iPhone Ringtone is Best Ringtone.</p>\r\n\r\n<p>Q3. Is Our Site Secure for Downloading iPhone Ringtone?</p>\r\n\r\n<p>Ans. Yes! It Absolutely Secure Website for <a href=\"https://www.ringtonefly.co/iphone-ringtones/\">Download iPhone Ringtones</a>.</p>\r\n\r\n<h4 style=\"text-align:center\"><span style=\"font-size:24px\">Special Gift for Iphone Ringtone Lover&#39;s:</span></h4>\r\n\r\n<p>We have also prepared a Super Fabulous&nbsp; gift for all iPhone Ringtones Lover, that is we are going to launch our Ringtones Appliaction for mobile soon, in which there will be a special iPhone Ringtones category for All My&nbsp;<strong>iPhone&nbsp;Ringtones</strong>&nbsp;Fans, so After that you can change your fantasay&nbsp;mobile ringtone anytime directly from our mobile application. And you will get to see even more awesome features.</p>\r\n\r\n<p>In This Application You Can Upload Yours Favorite Ringtones And Grab Like &amp; Follower From It And also you will Get Awesome Rewards from it.</p>\r\n\r\n<p>In-Depth from Our Heart By <a href=\"https://www.ringtonefly.co\">RingtoneFly.co</a>...</p>', '2021-12-17 11:08:40.056696');

-- --------------------------------------------------------

--
-- Table structure for table `config_containerpluginv2`
--

CREATE TABLE `config_containerpluginv2` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `config_containerpluginv2`
--

INSERT INTO `config_containerpluginv2` (`cmsplugin_ptr_id`, `title`, `content`) VALUES
(374, 'New Mp3 Ringtones Download Free', '<p style=\"text-align:center\">Download #1 Trending Ringtones for Android or iPhone, Feel The World with Music, Ringtone Download That Best for You.</p>'),
(383, 'Telugu Ringtones Download Mp3 or M4r Ringtones', '<p>Download Telugu Ringtones &nbsp;#1 Trending Telugu Love Ringtones - New Mp3 or M4r Popular Ringtones Download Now for iPhone And Android 2021!</p>'),
(437, 'Gujarati Ringtones Download Mp3 or M4r', '<p>Download Gujarati Ringtone #1 Trending New Mp3 Or M4r Ringtones Popular Gujarati Ringtones - New Mp3 Ringtone Download Now 2021!</p>'),
(442, 'Rajasthani Ringtones Download Mp3 or M4r', '<p>Download Rajasthani Ringtone #1 Trending New Mp3 Or M4r Ringtones Popular Rajasthani Ringtones - New Mp3 Marwadi Ringtones Download Now 2021!</p>'),
(447, 'iPhone Ringtones Download Mp3 or M4r', '<p>Download iPhone Ringtones #1 Trending New Mp3 Ringtones Popular iPhone Ringtones - New Mp3 Ringtone Download Now 2021!</p>'),
(452, 'Krishna Ringtone & Krishna Flute Ringtone Download Mp3 or M4r', '<p>Download Krishna Ringtones #1 Trending Krishna Flute Ringtones - New Mp3 or M4r Popular Ringtones Download Now for iPhone And Android 2021!</p>'),
(461, NULL, '<p>This is a promotional website only, All files placed here are for introducing purposes only. All files found on this site have been collected from various sources across the web and are believed to be in the &ldquo;public domain&rdquo;. If You still have an issue with our Uploads or Have Copyright Claim, Feel Free to submit your issue in the below form, We will take action within 24 Hours.</p>'),
(465, NULL, '<p>This is a promotional website only, All files placed here are for introducing purposes only. All files found on this site have been collected from various sources across the web and are believed to be in the &ldquo;public domain&rdquo;. If You still have an issue with our Uploads or Have Copyright Claim, Feel Free to submit your issue in the below form, We will take action within 24 Hours.</p>'),
(470, 'Tamil Ringtones Download Mp3 or M4r', '<p>Download Tamil Ringtones &nbsp;#1 Trending Tamil Love Ringtones - New Mp3 or M4r Popular Ringtones Download Now for iPhone And Android 2021!</p>'),
(543, 'Punjabi Ringtones Download Mp3 or M4r', '<p>Download Punjabi Ringtones #1 Trending Punjabi Ringtones Songs - New Mp3 or M4r Popular Ringtones Download Now for iPhone And Android 2021!</p>'),
(548, 'Punjabi Ringtones Download Mp3 or M4r', '<p>Download Punjabi Ringtones #1 Trending Punjabi Ringtones Songs - New Mp3 or M4r Popular Ringtones Download Now for iPhone And Android 2021!</p>'),
(586, 'Gujarati Ringtones Download Mp3 or M4r', '<p>Download Gujarati Ringtone #1 Trending New Mp3 Or M4r Ringtones Popular Gujarati Ringtones - New Mp3 Ringtone Download Now 2021!</p>'),
(594, 'Rajasthani Ringtones Download Mp3 or M4r', '<p>Download Rajasthani Ringtone #1 Trending New Mp3 Or M4r Ringtones Popular Rajasthani Ringtones - New Mp3 Marwadi Ringtones Download Now 2021!</p>'),
(598, 'Krishna Ringtone & Krishna Flute Ringtone Download Mp3 or M4r', '<p>Download Krishna Ringtones #1 Trending Krishna Flute Ringtones - New Mp3 or M4r Popular Ringtones Download Now for iPhone And Android 2021!</p>'),
(601, 'Telugu Ringtones Download Mp3 or M4r Ringtones', '<p>Download Telugu Ringtones &nbsp;#1 Trending Telugu Love Ringtones - New Mp3 or M4r Popular Ringtones Download Now for iPhone And Android 2021!</p>'),
(606, 'Tamil Ringtones Download Mp3 or M4r', '<p>Download Tamil Ringtones &nbsp;#1 Trending Tamil Love Ringtones - New Mp3 or M4r Popular Ringtones Download Now for iPhone And Android 2021!</p>'),
(624, 'Hindi Ringtones Download Mp3 or M4r', '<p>Download Hindi Ringtones #1 Trending Hindi Ringtones Songs - New Mp3 or M4r Popular Bollywood Ringtones Download Now for iPhone And Android 2021!</p>'),
(628, 'Hindi Ringtones Download Mp3 or M4r', '<p>Download Hindi Ringtones #1 Trending Hindi Ringtones Songs - New Mp3 or M4r Popular Bollywood Ringtones Download Now for iPhone And Android 2021!</p>'),
(782, 'Mahadev Ringtones Download Mp3 or M4r', '<p>Mahadev Ringtones Download #1 Trending Shiv Ringtones Songs - New Mp3 or M4r Popular Mahakal Ringtones Download Now for iPhone And Android</p>'),
(886, 'Mahadev Ringtones Download Mp3 or M4r', '<p>Mahadev Ringtones Download #1 Trending Shiv Ringtones Songs - New Mp3 or M4r Popular Mahakal Ringtones Download Now for iPhone And Android</p>'),
(933, NULL, '<table border=\"1\" cellpadding=\"1\" cellspacing=\"0\" style=\"border-collapse:collapse; width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Ringtone Name</td>\r\n			<td>&nbsp;Jag Ghoomeya Ringtone&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Category</td>\r\n			<td><a href=\"https://www.ringtonefly.co/hindi-ringtones/\">&nbsp;Hindi Ringtones</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size&nbsp;</td>\r\n			<td>&nbsp;351KB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Duration</td>\r\n			<td>&nbsp;29 Seconds</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Audio Format</td>\r\n			<td>&nbsp;Mp3 or M4r Audio</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Quality</td>\r\n			<td>&nbsp;320Kbps</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Listen &amp; Download to Awesome Jag Ghoomeya Ringtone in Mp3 or M4r Format + High Quality for Android and iPhone Devices</p>'),
(939, NULL, '<table border=\"1\" cellpadding=\"1\" cellspacing=\"0\" style=\"border-collapse:collapse; width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Ringtone Name</td>\r\n			<td>&nbsp;Jag Ghoomeya Ringtone&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Category</td>\r\n			<td><a href=\"https://www.ringtonefly.co/hindi-ringtones/\">&nbsp;Hindi Ringtones</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size&nbsp;</td>\r\n			<td>&nbsp;351KB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Duration</td>\r\n			<td>&nbsp;29 Seconds</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Audio Format</td>\r\n			<td>&nbsp;Mp3 or M4r Audio</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Quality</td>\r\n			<td>&nbsp;320Kbps</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Listen &amp; Download to Awesome Jag Ghoomeya Ringtone in Mp3 or M4r Format + High Quality for Android and iPhone Devices</p>'),
(969, 'New Mp3 Ringtones Download Free', '<p style=\"text-align:center\">Download #1 Trending Ringtones for Android or iPhone, Feel The World with Music, Ringtone Download That Best for You.</p>'),
(993, 'iPhone Ringtones Download Mp3 or M4r', '<p>Download iPhone Ringtones #1 Trending New Mp3 Ringtones Popular iPhone Ringtones - New Mp3 Ringtone Download Now 2021!</p>');

-- --------------------------------------------------------

--
-- Table structure for table `config_favoriteplugin`
--

CREATE TABLE `config_favoriteplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `config_favoriteplugin`
--

INSERT INTO `config_favoriteplugin` (`cmsplugin_ptr_id`) VALUES
(16),
(966);

-- --------------------------------------------------------

--
-- Table structure for table `config_fetchringtoneplugin`
--

CREATE TABLE `config_fetchringtoneplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `config_fetchringtoneplugin`
--

INSERT INTO `config_fetchringtoneplugin` (`cmsplugin_ptr_id`) VALUES
(66),
(180),
(222),
(301),
(379),
(467),
(539),
(545),
(583),
(591),
(595),
(599),
(603),
(620),
(626),
(780),
(884),
(990);

-- --------------------------------------------------------

--
-- Table structure for table `config_footerhyperlink`
--

CREATE TABLE `config_footerhyperlink` (
  `id` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `title` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `sortable_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `config_footerhyperlink`
--

INSERT INTO `config_footerhyperlink` (`id`, `created_at`, `updated_at`, `title`, `link`, `sortable_id`) VALUES
(1, '2021-06-07 05:54:44.533219', '2021-06-07 05:54:44.533261', 'Home', 'https://www.ringtonefly.co', 33),
(2, '2021-06-07 05:54:44.535406', '2021-06-07 05:54:44.535444', 'About', 'https://www.ringtonefly.co/about-us/', 33),
(3, '2021-06-07 05:54:44.536411', '2021-06-07 05:54:44.536445', 'Contact Us', 'https://www.ringtonefly.co/contact-us/', 33),
(4, '2021-06-20 07:31:17.666110', '2021-06-20 07:31:17.666158', 'Privacy Policy', 'https://www.ringtonefly.co/privacy-policy/', 33),
(5, '2021-06-20 07:31:17.667012', '2021-06-20 07:31:17.667054', 'Disclaimer', 'https://www.ringtonefly.co/disclaimer/', 33),
(6, '2021-06-20 08:13:55.528689', '2021-06-20 08:13:55.528738', 'DMCA', 'https://www.ringtonefly.co/dmca/', 33),
(7, '2021-06-20 08:13:55.529648', '2021-06-20 08:13:55.529688', 'Terms & Conditions', 'https://www.ringtonefly.co/terms-conditions/', 33);

-- --------------------------------------------------------

--
-- Table structure for table `config_footerplugin`
--

CREATE TABLE `config_footerplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `tagline` varchar(255) NOT NULL,
  `copyright` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `config_footerplugin`
--

INSERT INTO `config_footerplugin` (`cmsplugin_ptr_id`, `tagline`, `copyright`) VALUES
(33, '-', 'All Copyrights are Reserved to Orignal Owners - We are promoting content.');

-- --------------------------------------------------------

--
-- Table structure for table `config_limitationobject`
--

CREATE TABLE `config_limitationobject` (
  `id` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `popular_container` int(10) UNSIGNED NOT NULL CHECK (`popular_container` >= 0),
  `new_container` int(10) UNSIGNED NOT NULL CHECK (`new_container` >= 0),
  `top_50_container` int(10) UNSIGNED NOT NULL CHECK (`top_50_container` >= 0),
  `category_page` int(10) UNSIGNED NOT NULL CHECK (`category_page` >= 0),
  `individual_ringtone_page` int(10) UNSIGNED NOT NULL CHECK (`individual_ringtone_page` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `config_limitationobject`
--

INSERT INTO `config_limitationobject` (`id`, `created_at`, `updated_at`, `popular_container`, `new_container`, `top_50_container`, `category_page`, `individual_ringtone_page`) VALUES
(1, '2021-07-12 07:13:38.434951', '2021-12-17 09:30:59.460361', 12, 12, 12, 100000, 12);

-- --------------------------------------------------------

--
-- Table structure for table `config_linkmodel`
--

CREATE TABLE `config_linkmodel` (
  `id` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `rel` varchar(255) NOT NULL,
  `href` varchar(255) NOT NULL,
  `crossorigin` tinyint(1) NOT NULL,
  `sortable_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `config_metamodel`
--

CREATE TABLE `config_metamodel` (
  `id` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `tag_name` varchar(255) NOT NULL,
  `tag_value` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `sortable_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `config_ringtone`
--

CREATE TABLE `config_ringtone` (
  `id` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `name` varchar(255) NOT NULL,
  `like_count` bigint(20) NOT NULL,
  `download_count` bigint(20) NOT NULL,
  `android_ringtone_file` varchar(100) DEFAULT NULL,
  `iphone_ringtone_file` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `page_id` int(11) DEFAULT NULL,
  `title_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `config_ringtone`
--

INSERT INTO `config_ringtone` (`id`, `created_at`, `updated_at`, `name`, `like_count`, `download_count`, `android_ringtone_file`, `iphone_ringtone_file`, `image`, `description`, `slug`, `category_id`, `page_id`, `title_id`) VALUES
(4, '2021-06-06 16:51:43.863598', '2021-06-06 18:54:20.542610', 'Jodi Shyam Ne Radha Ni Ringtone Download', 13, 15, 'android/Jodi_shyam_ne_radha_ni_Ringtone_Download_RingtoneFly.co.mp3', 'iphone/Jodi_shyam_ne_radha_ni_Ringtone_Download_RingtoneFly.co.m4r', '', 'Jodi Shyam Ne Radha Ni Ringtone', 'jodi-shyam-ne-radha-ni-ringtone-download', 3, 22, 22),
(5, '2021-06-06 19:11:05.376104', '2021-06-06 19:11:05.400047', 'Ek Vaar Shyam Tame Radha Ne Kahido Ringtone Download', 71, 81, 'android/EkVaarShyamTameRadhaNeKahidoringtonefly.co.mp3', 'iphone/EkVaarShyamTameRadhaNeKahidoringtonefly.co_1.m4r', '', 'Ek Vaar Shyam Tame Radha Ne Kahido Ringtone Download', 'ek-vaar-shyam-tame-radha-ne-kahido-ringtone-download', 3, 24, 24),
(6, '2021-06-06 19:18:20.224036', '2021-06-06 19:18:20.249808', 'Mara Ghat Ma Birajta Shrinathji Ringtone Download', 14, 26, 'android/MaraGhatMaBirajtaShrinathji_ringtonefly.co.mp3', 'iphone/MaraGhatMaBirajtaShrinathji_ringtonefly.co_1.m4r', '', 'Mara Ghat Ma Birajta Shrinathji Ringtone Download', 'mara-ghat-ma-birajta-shrinathji-ringtone-download', 3, 26, 26),
(7, '2021-06-06 19:27:59.294996', '2021-06-06 19:27:59.319350', 'Tara Namni Chundadi Odhi Ringtone Download', 28, 52, 'android/TaraNamniChundadiOdhiRingtone_ringtonefly.co.mp3', 'iphone/TaraNamniChundadiOdhiRingtone_ringtonefly.co_1.m4r', '', 'Tara Namni Chundadi Odhi Ringtone Download', 'tara-namni-chundadi-odhi-ringtone-download', 3, 28, 28),
(8, '2021-06-06 19:37:00.429400', '2021-06-06 19:37:00.458391', 'Rudi Rite Jivo Ruda Karjo Kam Ringtone Download', 7, 11, 'android/RudiRiteJivoRudaKarjoKam_ringtonefly.co.mp3', 'iphone/RudiRiteJivoRudaKarjoKam_ringtonefly.co_1.m4r', '', 'Rudi Rite Jivo Ruda Karjo Kam Ringtone Download', 'rudi-rite-jivo-ruda-karjo-kam-ringtone-download', 3, 30, 30),
(9, '2021-06-06 19:58:00.488907', '2021-06-06 19:58:00.512383', 'Bairu Gayu Piyar Ringtone Download', 19, 26, 'android/bairu-jaye-piyar.mp3', 'iphone/bairu-jaye-piyar.m4r', '', 'Bairu Gayu Piyar Ringtone Download', 'bairu-gayu-piyar-ringtone-download', 3, 32, 32),
(10, '2021-06-06 20:00:37.798230', '2021-06-06 20:14:59.423186', 'Bewafa Sanam Gujarati Ringtone Download', 25, 40, 'android/bewafa-sanam.mp3', 'iphone/bewafa-sanam.m4r', '', 'Bewafa Sanam Gujarati Ringtone Download', 'bewafa-sanam-gujarati-ringtone-download', 3, 33, 33),
(11, '2021-06-06 20:01:39.317445', '2021-06-06 20:01:39.339085', 'Dholida Dhol Re Vagad Ringtone Download', 18, 27, 'android/dholida-dhol-ve.mp3', 'iphone/dholida-dhol-ve.m4r', '', 'Dholida Dhol Re Vagad Ringtone Download', 'dholida-dhol-re-vagad-ringtone-download', 3, 34, 34),
(12, '2021-06-06 20:02:48.297482', '2021-06-06 20:02:48.320407', 'Dur Thi Salam Ringtone Download', 25, 30, 'android/dur-thi-salam.mp3', 'iphone/dur-thi-salam.m4r', '', 'Dur Thi Salam Ringtone Download', 'dur-thi-salam-ringtone-download', 3, 35, 35),
(13, '2021-06-06 20:21:53.049567', '2021-06-06 20:21:53.072019', 'Dwarkadhish Ji Aarti Ringtone Download', 15, 32, 'android/dwarakadish-ji-aarti.mp3', 'iphone/dwarakadish-ji-aarti.m4r', '', 'Dwarkadhish Ji Aarti Ringtone Download', 'dwarkadhish-ji-aarti-ringtone-download', 3, 40, 40),
(14, '2021-06-06 20:24:11.816491', '2021-06-06 20:24:11.839272', 'Gomda Nu Dil Ringtone download', 17, 16, 'android/gomda-nu-dil.mp3', 'iphone/gomda-nu-dil.m4r', '', 'Gomda Nu Dil Ringtone Download', 'gomda-nu-dil-ringtone-download', 3, 41, 41),
(15, '2021-06-06 20:30:05.529477', '2021-06-06 20:30:05.553578', 'Mohabbat Khape Ringtone Download', 19, 24, 'android/mohabbat-khappe.mp3', 'iphone/gomda-nu-dil_nHpAhFj.m4r', '', 'Mohabbat Khape Ringtone Download', 'mohabbat-khape-ringtone-download', 3, 42, 42),
(16, '2021-06-06 20:35:30.270261', '2021-06-06 20:35:30.292718', 'Leri La La Ringtone Download', 17, 41, 'android/leri-la-la.mp3', 'iphone/leri-la-la_.m4r', '', 'Leri La La Ringtone Download', 'leri-la-la-ringtone-download', 3, 43, 43),
(17, '2021-06-07 05:03:28.702399', '2021-06-07 05:03:28.730401', 'Hal Kana Mane Dwarika Dekhad Ringtone Download', 6, 12, 'android/HalKanaManeDwarikaDekhadRingtonefly.co.MP3', 'iphone/HalKanaManeDwarikaDekhadRingtoneFly.co.m4r', '', 'Hal Kana Mane Dwarika Dekhad Ringtone Download', 'hal-kana-mane-dwarika-dekhad-ringtone-download', 3, 48, 48),
(18, '2021-06-07 07:22:58.166470', '2021-06-07 07:22:58.190268', 'Muj Gareeb Ne Bhuli Gayi Ringtone Download', 16, 20, 'android/muj-gareeb-ne-bhul.mp3', 'iphone/muj-gareeb-ne-bhul.m4r', '', 'Muj Gareeb Ne Bhuli Gayi Ringtone Download', 'muj-gareeb-ne-bhuli-gayi-ringtone-download', 3, 50, 50),
(19, '2021-06-07 12:48:12.069727', '2021-06-07 12:48:12.095930', 'Haso To Khara Ringtone Download', 7, 16, 'android/muj-gareeb-ne-bhul_drqYMoc.mp3', 'iphone/haso-toh-khara.m4r', '', 'Haso To Khara Ringtone Download Mp3', 'haso-to-khara-ringtone-download', 3, 52, 52),
(20, '2021-06-08 09:53:30.287814', '2021-06-08 09:53:30.319528', 'Char Bangdi Wali Audi Ringtone Download', 22, 31, 'android/gaadi-layi-dau.mp3', 'iphone/gaadi-layi-dau.m4r', '', 'Char Bangdi Wali Audi Ringtone Download', 'char-bangdi-wali-audi-ringtone-download', 3, 54, 54),
(21, '2021-06-08 14:52:21.762183', '2021-06-13 17:30:53.364417', 'Dholida Dhol Dhimo Navratri Garba Ringtone Download', 7, 13, 'android/DholidaDholDhimoNavratriGarbaGujratiRingtone_fly.co.mp3', 'iphone/DholidaDholDhimoNavratriGarbaGujratiRingtone_fly.co.m4r', '', 'Dholida Dhol Dhimo Navratri Garba Ringtone', 'dholida-dhol-dhimo-navratri-garba-ringtone-download', 3, 56, 56),
(22, '2021-06-09 04:48:13.765054', '2021-06-13 17:31:31.352419', 'Nayan Ne Bandh Rakhi Ne Ringtone Download', 9, 14, 'android/HoHoHoNayanNeBandhRakhiNeGujaratiRingtoneringtone_fly.co.mp3', 'iphone/HoHoHoNayanNeBandhRakhiNeGujaratiRingtoneringtone_fly.co.m4r', '', 'Nayan Ne Bandh Rakhi Ne Ringtone', 'nayan-ne-bandh-rakhine-gujarati-ringtone-download', 3, 58, 58),
(23, '2021-06-09 04:55:28.586732', '2021-06-13 17:29:53.569436', 'Bhuli Nathi Ke Tane Nathi Bhulvani Ringtone Download', 2, 12, 'android/BhuliNathiKeTaneNathiBhulvaniRingtonebyKajalMaheriyaringtone_fly.co.mp3', 'iphone/BhuliNathiKeTaneNathiBhulvaniRingtonebyKajalMaheriyaringtone_fly.co.m4r', '', 'Bhuli Nathi Ke Tane Nathi Bhulvani Ringtone', 'bhuli-nathi-ke-tane-nathi-bhulvani-ringtone-download', 3, 60, 60),
(24, '2021-06-09 04:58:38.468618', '2021-06-09 04:58:38.491895', 'Mata Amba Garbo Ringtone Download', 7, 13, 'android/MataAmbaGarboHemantChauhanGeetoRingtoneringtone_fly.co.mp3', 'iphone/MataAmbaGarboHemantChauhanGeetoRingtoneringtone_fly.co.m4r', '', NULL, 'mata-amba-garbo-ringtone-download', 3, 61, 61),
(25, '2021-06-15 17:10:54.648016', '2021-06-15 17:20:38.405564', 'Banni Tharo Chand So Mukhdo Ringtone Download', 6, 28, 'android/Banni_Tharo_Chand_So_Mukhdo_-_Rajasthani_Ringtone.mp3', 'iphone/Banni-Tharo-Chand-So-Mukhdo-Rajasthani-Ringtone.m4r', '', 'Banni Tharo Chand So Mukhdo', 'banni-tharo-chand-so-mukhdo-ringtone-download', 4, 66, 66),
(26, '2021-06-15 17:14:41.015539', '2021-06-15 17:21:13.096667', 'Lahariyo Ra 900 Rupiya Rokda Sa Ringtone Download', 3, 12, 'android/Lahariyo_Ra_900_Rupiya_Rokda_Sa_-_Rajasthani_Ringtone.mp3', 'iphone/Lahariyo-Ra-900-Rupiya-Rokda-Sa-Rajasthani-Ringtone.m4r', '', 'Lahariyo Ra 900 Rupiya Rokda Sa', 'lahariyo-ra-900-rupiya-rokda-sa-ringtone-download', 4, 67, 67),
(27, '2021-06-16 03:17:08.616569', '2021-06-16 03:17:08.645947', 'Rajasthani Folk Tune Ringtone Download', 3, 28, 'android/rajasthani-folk-tune-ringtone.mp3', 'iphone/rajasthani-folk-tune-ringtone.m4r', '', 'Rajasthani Folk Tune', 'rajasthani-folk-tune-ringtone-download', 4, 70, 70),
(28, '2021-06-16 03:30:13.365195', '2021-06-16 03:30:13.391001', 'Piya Aao To Mande Ri Baat kar Liya Ringtone Download', 1, 22, 'android/piya_aao_to_mande_ri_baat_kar_liya_ringtone__256kbps_cbr_.mp3', 'iphone/piya-aao-to-mande-ri-baat-kar-liya-ringtone-_-256kbps-cbr-_.m4r', '', 'Piya Aao To Mande Ri Baat kar Liya', 'piya-aao-to-mande-ri-baat-kar-liya-ringtone-download', 4, 72, 72),
(29, '2021-06-16 03:52:50.606905', '2021-06-16 03:52:50.632044', 'Hariyala Banna Rajasthani Ringtone Download', 5, 13, 'android/Hariyala_Banna_-_Rajasthani_Ringtone.mp3', 'iphone/Hariyala-Banna-Rajasthani-Ringtone.m4r', '', 'Hariyala Banna Rajasthani', 'hariyala-banna-rajasthani-ringtone-download', 4, 74, 74),
(30, '2021-06-18 03:53:50.904227', '2021-06-18 03:53:50.939599', 'Kajaliyo Rajasthani Ringtone Download', 1, 19, 'android/Kajaliyo_-_Rajasthani_Ringtone.mp3', 'iphone/Kajaliyo-Rajasthani-Ringtone.m4r', '', 'Kajaliyo Rajasthani', 'kajaliyo-rajasthani-ringtone-download', 4, 76, 76),
(31, '2021-06-18 04:11:13.536529', '2021-06-18 04:11:13.563649', 'Rajasthani flute ringtone download', 4, 46, 'android/Rajasthani_Flute_-_Rajasthani_Ringtone.mp3', 'iphone/Rajasthani-Flute-Rajasthani-Ringtone.m4r', '', 'Rajasthani flute', 'rajasthani-flute-ringtone-download', 4, 78, 78),
(32, '2021-06-19 15:20:02.124087', '2021-06-19 16:43:29.569678', 'iPhone Ringtone Download', 53, 66, 'android/iphone-ringtone-ringtonefly.co.mp3', '', '', 'iPhone Ringtone', 'iphone-ringtone-download', 5, 82, 82),
(33, '2021-06-19 16:29:11.045763', '2021-06-19 16:43:45.674048', 'iPhone X Ringtone Download', 1, 1, 'android/iphone_x_ringtone_ringtonefly.co.mp3', '', '', 'iPhone X Ringtone', 'iphone-x-ringtone-download', 5, 84, 84),
(34, '2021-06-19 16:38:24.989112', '2021-06-19 16:44:01.123735', 'iPhone X Remix Ringtone Download', 1, 0, 'android/iphone_x_remix_ringtonefly.co.mp3', '', '', 'Iphone X Remix Ringtone', 'iphone-x-remix-ringtone-download', 5, 86, 86),
(35, '2021-06-19 16:56:56.113398', '2021-06-19 16:56:56.135186', 'iPhone Dubstep Ringtone Download', 1, 0, 'android/Iphone_Dubstep_-_Ringtone.mp3', '', '', 'iPhone Dubstep Ringtone', 'iphone-dubstep-ringtone-download', 5, 88, 88),
(36, '2021-06-19 17:10:15.400317', '2021-06-19 17:10:15.423709', 'iPhone X Faded Ringtone Download', 1, 2, 'android/Iphone_x_Faded_-_Ringtone.mp3', '', '', 'iPhone X Faded Ringtone', 'iphone-x-faded-ringtone-download', 5, 90, 90),
(37, '2021-06-19 17:11:19.727445', '2021-06-19 17:11:19.757170', 'iPhone Remix Lol Ringtone Download', 1, 1, 'android/Iphone_Remix_LoL_-_Ringtone.mp3', '', '', 'iPhone Remix Lol Ringtone', 'iphone-remix-lol-ringtone-download', 5, 91, 91),
(38, '2021-06-19 17:15:49.689165', '2021-06-19 17:15:49.717386', 'iPhone X Taki Taki Ringtone Download', 0, 1, 'android/Iphone_x_Taki_Taki_-_Ringtone.mp3', '', '', 'iPhone X Taki Taki Ringtone', 'iphone-x-taki-taki-ringtone-download', 5, 94, 94),
(39, '2021-06-19 17:18:48.929504', '2021-06-19 17:18:48.951295', 'iPhone X Mi Gente Ringtone Download', 0, 1, 'android/Iphone_x_Mi_Gente_-_Ringtone.mp3', '', '', 'iPhone X Mi Gente Ringtone', 'iphone-x-mi-gente-ringtone-download', 5, 95, 95),
(40, '2021-06-19 17:21:09.441461', '2021-06-19 17:21:09.465358', 'iPhone Trap Remix Ringtone Download', 1, 1, 'android/Iphone_Trap_Remix_-_Ringtone.mp3', '', '', 'iPhone Trap Remix Ringtone', 'iphone-trap-remix-ringtone-download', 5, 96, 96),
(41, '2021-06-19 17:25:51.764400', '2021-06-19 17:25:51.803030', 'iPhone X Despacito Ringtone Download', 0, 0, 'android/Iphone_x_Despacito_Ringtone.mp3', '', '', 'iPhone X Despacito Ringtone', 'iphone-x-despacito-ringtone-download', 5, 100, 100),
(42, '2021-06-19 17:29:06.311559', '2021-06-19 17:29:06.331794', 'iPhone X Shape of You Ringtone Download', 0, 0, 'android/Iphone_x_Shape_of_You_-_Ringtone.mp3', '', '', 'iPhone X Shape of You Ringtone', 'iphone-x-shape-of-you-ringtone-download', 5, 102, 102),
(43, '2021-06-19 17:32:19.606979', '2021-06-19 17:32:19.631772', 'iPhone Marimba Ringtone Download', 0, 3, 'android/Iphone_Marimba_-_Ringtone.mp3', '', '', 'iPhone Marimba Ringtone', 'iphone-marimba-ringtone-download', 5, 104, 104),
(44, '2021-06-19 17:34:52.393232', '2021-06-19 17:34:52.418859', 'iPhone Original Ringtone Download', 3, 13, 'android/Iphone_Original_-_Ringtone.mp3', '', '', 'iPhone Original Ringtone', 'iphone-original-ringtone-download', 5, 105, 105),
(45, '2021-06-23 12:37:23.304176', '2021-06-23 12:37:23.331871', 'Thade Rahiyo Rajasthani Ringtone Download', 61, 148, 'android/Thade_Rahiyo_ringtonefly.mp3', 'iphone/Thade_Rahiyo_ringtonefly.m4r', '', 'Thade Rahiyo Rajasthani', 'thade-rahiyo-rajasthani-ringtone-download', 4, 116, 116),
(46, '2021-06-26 14:19:25.968527', '2021-06-26 14:19:25.995237', 'Krishna Flute Ringtone Download', 19, 118, 'android/krishna-flute-ringtone-krishna-ringtone.mp3', 'iphone/krishna-flute-ringtone-krishna-ringtone.m4r', '', 'Krishna Flute Ringtone', 'krishna-flute-ringtone-download', 6, 120, 120),
(47, '2021-06-26 14:28:05.826428', '2021-06-26 14:28:05.851577', 'Nice Krishna Flute Ringtone Download', 116, 178, 'android/nice-krishna-flute-krishna-ringtone.mp3', 'iphone/krishna-flute-ringtone-krishna-ringtone_u8CY7ss.m4r', '', 'Nice Krishna Flute Ringtone', 'nice-krishna-flute-ringtone-download', 6, 122, 122),
(48, '2021-06-26 14:31:28.160907', '2021-06-26 14:31:28.183535', 'Radha Krishna Flute Serial Ringtone Download', 1, 5, 'android/radha-krishna-flute-serial-ringtone-krishna-ringtone.mp3', 'iphone/radha-krishna-flute-serial-ringtone-krishna-ringtone.m4r', '', 'Radha Krishna Flute Serial Ringtone', 'radha-krishna-flute-serial-ringtone-download', 6, 123, 123),
(49, '2021-06-26 14:51:43.233850', '2021-06-26 14:51:43.256466', 'Shri Krishna Govind Hare Murari Ringtone Download', 2, 5, 'android/shri-krishna-govind-hare-murari-krishna-ringtone.mp3', 'iphone/shri-krishna-govind-hare-murari-krishna-ringtone.m4r', '', 'Shri Krishna Govind Hare Murari Ringtone', 'shri-krishna-govind-hare-murari-ringtone-download', 6, 126, 126),
(50, '2021-06-26 14:54:51.881902', '2021-06-26 14:54:51.908837', 'Hare Rama Hare Krishna Ringtone Download', 0, 6, 'android/hare-rama-hare-krishna-krishna-ringtone.mp3', 'iphone/hare-rama-hare-krishna-krishna-ringtone.m4r', '', 'Hare Rama Hare Krishna Ringtone', 'hare-rama-hare-krishna-ringtone-download', 6, 127, 127),
(51, '2021-06-26 14:57:18.466899', '2021-06-26 14:57:18.488390', 'Mahabharat Krishna Flute Ringtone Download', 0, 4, 'android/mahabharat-flute-ringtone-krishna-ringtone.mp3', 'iphone/mahabharat-flute-ringtone-krishna-ringtone.m4r', '', 'Mahabharat Krishna Flute Ringtone', 'mahabharat-krishna-flute-ringtone-download', 6, 128, 128),
(52, '2021-06-26 14:59:34.740164', '2021-06-26 14:59:34.763734', 'Kaun Kehate Hai Ringtone Download', 1, 7, 'android/kaun-kehate-hai-krishna-ringtone.mp3', 'iphone/kaun-kehate-hai-krishna-ringtone.m4r', '', 'Kaun Kehate Hai Ringtone', 'kaun-kehate-hai-ringtone-download', 6, 129, 129),
(53, '2021-06-26 15:03:16.168061', '2021-06-26 15:03:16.192092', 'Meethi Meethi Mere Sanware Ki Banshi Baaje Ringtone Download', 0, 10, 'android/mere-sanware-ki-banshi-baaje-krishna-ringtone.mp3', 'iphone/mere-sanware-ki-banshi-baaje-krishna-ringtone.m4r', '', 'Meethi Meethi Mere Sanware Ki Banshi Baaje Ringtone', 'meethi-meethi-mere-sanware-ki-banshi-baaje-ringtone-download', 6, 130, 130),
(54, '2021-06-26 15:06:45.981150', '2021-06-26 15:06:46.004242', 'Radha Kaise Na Jale Ringtone Download', 2, 5, 'android/radha-kaise-na-jale-krishna-ringtone.mp3', 'iphone/radha-kaise-na-jale-krishna-ringtone.m4r', '', 'Radha Kaise Na Jale Ringtone', 'radha-kaise-na-jale-ringtone-download', 6, 131, 131),
(55, '2021-06-26 15:10:00.415264', '2021-06-26 15:10:00.439845', 'Hey Gopal Krishna Karu Aarti Teri Ringtone Download', 1, 14, 'android/hey-gopal-krishna-karu-aarti-teri-krishna-ringtone.mp3', 'iphone/hey-gopal-krishna-karu-aarti-teri-krishna-ringtone.m4r', '', 'Hey Gopal Krishna Karu Aarti Teri Ringtone', 'hey-gopal-krishna-karu-aarti-teri-ringtone-download', 6, 132, 132),
(56, '2021-06-26 15:14:54.752820', '2021-06-26 15:14:54.777288', 'O Kanha Ab to Murli Ringtone Download', 1, 18, 'android/o-kanha-abto-murli-krishna-ringtone.mp3', 'iphone/o-kanha-abto-murli-krishna-ringtone.m4r', '', 'O Kanha Ab To Murli Ringtone', 'o-kanha-ab-to-murli-ringtone-download', 6, 133, 133),
(57, '2021-06-26 15:17:30.256862', '2021-06-26 15:17:30.279847', 'Radha Rani Laage Krishna Ringtone Download', 1, 9, 'android/radha-rani-laage-krishna-ringtone.mp3', 'iphone/radha-rani-laage-krishna-ringtone.m4r', '', 'Radha Rani Laage Krishna Ringtone', 'radha-rani-laage-krishna-ringtone-download', 6, 134, 134),
(58, '2021-06-26 15:21:08.133238', '2021-06-26 15:21:08.156344', 'Raghupati Raghava Krishna Ringtone Download', 0, 11, 'android/raghupati-raghava-krishna-ringtone.mp3', 'iphone/raghupati-raghava-krishna-ringtone.m4r', '', 'Raghupati Raghava Krishna Ringtone', 'raghupati-raghava-krishna-ringtone-download', 6, 135, 135),
(59, '2021-06-26 15:25:21.735343', '2021-06-26 15:25:21.759203', 'Sanwali Surat Pe Dil Mohan Ringtone Download', 2, 14, 'android/sanwali-surat-pe-dil-mohan-krishna-ringtone.mp3', 'iphone/sanwali-surat-pe-dil-mohan-krishna-ringtone.m4r', '', 'Sanwali Surat Pe Dil Mohan Ringtone', 'sanwali-surat-pe-dil-mohan-ringtone-download', 6, 136, 136),
(60, '2021-06-26 15:28:30.660159', '2021-07-11 18:44:40.780349', 'Radhe Radhe Barsane Wali Radhe Krishna Ringtone Download', 1057, 1604, 'android/radhe-radhe-barsane-wali-radhe-krishna-ringtone_1.mp3', 'iphone/radhe-radhe-barsane-wali-radhe-krishna-ringtone_1.m4r', '', 'Radhe Radhe Barsane Wali Radhe Krishna Ringtone', 'radhe-radhe-barsane-wali-radhe-krishna-ringtone-download', 6, 137, 137),
(61, '2021-07-16 12:55:17.945526', '2021-07-16 12:55:17.976731', 'Saranga Dariya Telugu Ringtone Download', 9, 7, 'android/Sarang_Dariya_Telugu_Ringtone_Download.mp3', 'iphone/Sarang_Dariya_Telugu_Ringtone_Download.m4r', '', 'Saranga Dariya Telugu Ringtone', 'saranga-dariya-telugu-ringtone-download', 7, 152, 152),
(62, '2021-07-16 13:24:25.637223', '2021-07-16 13:24:25.659867', 'Naa Bc Center Lu Telugu Ringtone Download', 1, 2, 'android/naa-bc-center-lu-theme.mp3', 'iphone/naa-bc-center-lu-theme.m4r', '', 'Naa Bc Center Lu Telugu Ringtone', 'naa-bc-center-lu-telugu-ringtone-download', 7, 154, 154),
(63, '2021-07-16 13:36:19.395888', '2021-07-16 13:36:19.421868', 'O Sakkanoda Telugu Ringtone Download', 0, 1, 'android/OSakkanodaTeluguRingtone.mp3', 'iphone/OSakkanodaTeluguRingtone.m4r', '', 'O Sakkanoda Telugu Ringtone', 'o-sakkanoda-telugu-ringtone-download', 7, 156, 156),
(64, '2021-07-16 13:42:34.761988', '2021-07-16 13:42:34.785236', 'Kanaka Durga Telugu Ringtone Download', 0, 2, 'android/TeluguKanakaDurgaRingtone.mp3', 'iphone/TeluguKanakaDurgaRingtone.m4r', '', 'Kanaka Durga Telugu Ringtone', 'kanaka-durga-telugu-ringtone-download', 7, 158, 158),
(65, '2021-07-16 13:47:36.174669', '2021-07-16 13:47:36.195681', 'Ey Pataakey Telugu Ringtone Download', 0, 1, 'android/EyPataakeyTeluguRingtone.mp3', 'iphone/EyPataakeyTeluguRingtone.m4r', '', 'Ey Pataakey Telugu Ringtone', 'ey-pataakey-telugu-ringtone-download', 7, 160, 160),
(66, '2021-07-17 10:46:59.419516', '2021-07-17 10:46:59.449030', 'Nee Vente Nenunte Instrumental Telugu Ringtone Download', 1, 1, 'android/NeeVenteNenunteInstrumentalTeluguRingtone.mp3', 'iphone/NeeVenteNenunteInstrumentalTeluguRingtone.m4r', '', 'Nee Vente Nenunte Instrumental Telugu Ringtone', 'nee-vente-nenunte-instrumental-telugu-ringtone-download', 7, 162, 162),
(67, '2021-07-17 10:49:57.994196', '2021-07-17 10:49:58.022753', 'Paata Paadada Mounam Telugu Ringtone Download', 0, 1, 'android/PaataPaadadaMounamTeluguRingtone.mp3', 'iphone/PaataPaadadaMounamTeluguRingtone.m4r', '', 'Paata Paadada Mounam Telugu Ringtone', 'paata-paadada-mounam-telugu-ringtone-download', 7, 163, 163),
(68, '2021-07-17 10:51:17.139753', '2021-07-17 10:51:17.165001', 'Avunanna Nuv Telugu Ringtone Download', 1, 1, 'android/AvunannaNuvTeluguRingtone.mp3', 'iphone/AvunannaNuvTeluguRingtone_1.m4r', '', 'Avunanna Nuv Telugu Ringtone', 'avunanna-nuv-telugu-ringtone-download', 7, 164, 164),
(69, '2021-07-17 10:54:59.470998', '2021-07-17 10:54:59.494313', 'Tholi Prema Love Dailouge Telugu Ringtone Download', 3, 1, 'android/TholiPremaVarunTejLoveDailougeTeluguRingtone_.mp3', 'iphone/TholiPremaVarunTejLoveDailougeTeluguRingtone-.m4r', '', 'Tholi Prema Love Dailouge Telugu Ringtone', 'tholi-prema-love-dailouge-telugu-ringtone-download', 7, 165, 165),
(70, '2021-07-17 10:56:41.786076', '2021-07-17 10:56:41.811430', 'Swagatham Krishna Telugu Ringtone Download', 2, 2, 'android/SwagathamKrishnaTeluguRingtone.mp3', 'iphone/SwagathamKrishnaTeluguRingtone.m4r', '', 'Swagatham Krishna Telugu Ringtone', 'swagatham-krishna-telugu-ringtone-download', 7, 166, 166),
(71, '2021-08-03 13:19:05.373612', '2021-08-03 13:19:05.401795', 'Mustafa Mustafa Tamil Ringtone', 109, 256, 'android/Mustafa_Mustafa_Tamil_Ringtone.mp3', 'iphone/Mustafa_Mustafa_Tamil_Ringtone.m4r', '', 'Mustafa Mustafa Tamil Ringtone', 'mustafa-mustafa-tamil-ringtone', 8, 174, 174),
(72, '2021-08-04 05:35:09.470636', '2021-08-04 05:35:09.499382', 'Tamil Song Ringtone Download', 6, 10, 'android/Tamil_SongRingtone_.mp3', 'iphone/TamilSongRingtone.m4r', '', 'Tamil Song Ringtone', 'tamil-song-ringtone-download', 8, 176, 176),
(73, '2021-08-04 05:37:33.824231', '2021-08-04 05:40:33.693678', 'Bigil Rayappan Bgm Ringtone Download', 39, 51, 'android/BigilRayappanBGMbyARRahman.mp3', 'iphone/BigilRayappanBGMbyARRahman.m4r', '', 'Bigil Rayappan Bgm Ringtone', 'bigil-rayappan-bgm-ringtone-download', 8, 177, 177),
(74, '2021-08-04 05:45:53.011718', '2021-08-04 05:45:53.039354', 'KGF Tamil Ringtone Download', 2, 2, 'android/KGFTamilRingtone.mp3', 'iphone/KGFTamilRingtone.m4r', '', 'KGF Tamil Ringtone', 'kgf-tamil-ringtone-download', 8, 180, 180),
(75, '2021-08-04 05:48:25.603752', '2021-08-04 05:48:25.627449', 'Unna Nenachu Nenachu Urugi Poneaan Psycho Ringtone Download', 0, 1, 'android/UnnaNenachuNenachuUrugiPoneaanPsycho.mp3', 'iphone/UnnaNenachuNenachuUrugiPoneaanPsycho.m4r', '', 'Unna Nenachu Nenachu Urugi Poneaan Psycho Ringtone', 'unna-nenachu-nenachu-urugi-poneaan-psycho-ringtone-download', 8, 181, 181),
(76, '2021-08-04 05:52:08.200471', '2021-08-04 05:52:08.226483', 'Unakena Uruginen Tamil Ringtone Download', 50, 61, 'android/UnakenaUruginenTamilRingtone.mp3', 'iphone/UnakenaUruginenTamilRingtone.m4r', '', 'Unakena Uruginen Tamil Ringtone', 'unakena-uruginen-tamil-ringtone-download', 8, 182, 182),
(77, '2021-08-05 10:35:57.374807', '2021-08-05 10:35:57.425352', 'Darbar Thalaivar Bgm Theme Ringtone Download', 30, 50, 'android/DarbarThalaivarBgmThemeRingtone.mp3', 'iphone/DarbarThalaivarBgmThemeRingtone.m4r', '', 'Darbar Thalaivar Bgm Theme Ringtone', 'darbar-thalaivar-bgm-theme-ringtone-download', 8, 186, 186),
(78, '2021-08-05 10:47:27.122929', '2021-08-05 10:47:27.147645', 'Vishwaroopam Humming Ringtone Download', 21, 50, 'android/VishwaroopamHummingRingtoneMP.mp3', 'iphone/VishwaroopamHummingRingtoneMP.m4r', '', 'Vishwaroopam Humming Ringtone', 'vishwaroopam-humming-ringtone-download', 8, 187, 187),
(79, '2021-08-05 10:50:59.759684', '2021-08-05 10:56:56.465619', 'Hey Single Pasanga Natpe Thunai Tamil Ringtone Download', 1, 3, 'android/HeySinglePasangaNatpeThunaiRingtone.mp3', 'iphone/HeySinglePasangaNatpeThunaiRingtone.m4r', '', 'Hey Single Pasanga Natpe Thunai Tamil Ringtone', 'hey-single-pasanga-natpe-thunai-tamil-ringtone-download', 8, 188, 188),
(80, '2021-08-20 12:17:22.736202', '2021-08-20 12:17:22.778072', 'Gayatri Mantra Ringtone Download', 101, 258, 'android/GayatriMantraRingtone1183696033.mp3', 'iphone/GayatriMantraRingtone1183696033.m4r', '', 'Gayatri Mantra Ringtone', 'gayatri-mantra-ringtone-download', 8, 192, 192),
(81, '2021-08-20 12:23:28.242038', '2021-08-20 12:23:28.267673', 'Unna Chota Unnana ringtone download', 22, 30, 'android/Unna_Chota_Unnana__.mp3', 'iphone/Unna_Chota_Unnana__.m4r', '', 'Unna Chota Unnana ringtone', 'unna-chota-unnana-ringtone-download', 7, 194, 194),
(82, '2021-08-27 11:47:28.332893', '2021-08-27 11:47:28.363563', 'Waalian Punjabi Ringtone Download', 64, 82, 'android/WaalianRingtonebyHarnoor_RingtoneFly.co.mp3', 'iphone/WaalianRingtonebyHarnoor_RingtoneFly.co.m4r', '', 'Waalian Punjabi Ringtone', 'waalian-punjabi-ringtone-download', 9, 198, 198),
(83, '2021-08-27 11:56:48.279776', '2021-08-27 11:56:48.318531', 'Relation by Nikk Ringtone Download', 188, 368, 'android/RelationbyNikk_RingtoneFly.co.mp3', 'iphone/RelationbyNikk_RingtoneFly.co.m4r', '', 'Relation by Nikk Ringtone', 'relation-by-nikk-ringtone-download', 9, 200, 200),
(84, '2021-08-27 11:58:29.358248', '2021-08-27 11:58:29.383450', 'Bapu Tere Karke Ringtone Download', 266, 289, 'android/BapuTereKarkeRingtonebyAmarSandhu_RingtoneFly.co.mp3', 'iphone/BapuTereKarkeRingtonebyAmarSandhu_RingtoneFly.co.m4r', '', 'Bapu Tere Karke Ringtone', 'bapu-tere-karke-ringtone-download', 9, 201, 201),
(85, '2021-08-27 12:00:50.330666', '2021-08-27 12:00:50.356812', 'One Life Ringtone Download', 236, 359, 'android/OneLifeRingtonebyDeepChahal.mp3', 'iphone/OneLifeRingtonebyDeepChahal.m4r', '', 'One Life Ringtone', 'one-life-ringtone-download', 9, 202, 202),
(86, '2021-08-27 12:10:03.040236', '2021-08-27 12:10:03.079760', 'Kala Rang by Kaka Ringtone Download', 85, 91, 'android/KalaRangRingtonebyKaka.mp3', 'iphone/KalaRangRingtonebyKaka.m4r', '', 'Kala Rang by Kaka Ringtone', 'kala-rang-by-kaka-ringtone-download', 9, 206, 206),
(87, '2021-08-27 12:11:19.340216', '2021-08-27 12:11:19.368122', 'Keh Len De Ringtone Dwonload', 45, 65, 'android/KehlendeRingtone.mp3', 'iphone/KehlendeRingtone.m4r', '', 'Keh Len De Ringtone', 'keh-len-de-ringtone-dwonload', 9, 207, 207),
(88, '2021-08-27 12:12:45.160877', '2021-08-27 12:12:45.197969', 'Parche Ringtone Download', 84, 96, 'android/ParcheRingtonebyRNait.mp3', 'iphone/ParcheRingtonebyRNait.m4r', '', 'Parche Mp3 Ringtone', 'parche-ringtone-download', 9, 208, 208),
(89, '2021-08-27 12:15:20.204617', '2021-08-27 12:15:20.237999', 'Jee Nai Skda Ringtone Download', 50, 64, 'android/JeeNaiSakdaRingtoneByHarrdySandhu.mp3', 'iphone/JeeNaiSakdaRingtoneByHarrdySandhu.m4r', '', 'Jee Nai Skda Ringtone', 'jee-nai-skda-ringtone-download', 9, 212, 212),
(90, '2021-09-13 12:22:03.176146', '2021-09-13 12:22:03.215994', 'Love You Punjabi Ringtone Download Amar Sehmbi', 54, 89, 'android/Love_you_Ringtone_Amar.mp3', 'iphone/Love_you_Ringtone_Amar.m4r', '', 'Love You Punjabi Ringtone', 'love-you-punjabi-ringtone-download-amar-sehmbi', 9, 214, 214),
(91, '2021-09-25 07:49:43.934433', '2021-09-25 07:49:43.968183', 'Raataan Lambiyan Ringtone Download', 663, 915, 'android/RaataanLambiyanRingtone.mp3', 'iphone/RaataanLambiyanRingtone.m4r', '', 'Raataan Lambiyan Ringtone', 'raataan-lambiyan-ringtone-download', 10, 218, 218),
(92, '2021-09-25 08:01:11.449364', '2021-09-25 08:01:11.485300', 'Dil Ko Karar Aya Ringtone Download', 486, 659, 'android/Dil_ko_karar_aya_ringtone.mp3', 'iphone/Dil_ko_karar_aya_ringtone.m4r', '', 'Dil Ko Karar Ayaa Ringtone', 'dil-ko-karar-aya-ringtone-download', 10, 220, 220),
(93, '2021-09-25 15:06:55.619452', '2021-09-25 15:19:21.843144', 'Jab Main Badal Ban Jau Tum Bhi Barish Ban Jana Ringtone Download', 26, 99, 'android/BaarishBanJanaRingtone.mp3', 'iphone/BaarishBanJanaRingtone.m4r', '', 'Jab Main Badal Ban Jau Tum Bhi Barish Ban Jana Ringtone', 'jab-main-badal-ban-jau-tum-bhi-barish-ban-jana-ringtone-download', 10, 222, 222),
(94, '2021-09-25 15:09:17.167092', '2021-09-25 15:09:17.204044', 'Tu Bhi Satya Jayega Ringtone', 16, 95, 'android/TuBhiSatayaJayegaRingtonebyVishalMishra.mp3', 'iphone/TuBhiSatayaJayegaRingtonebyVishalMishra.m4r', '', 'Tu Bhi Satya Jayega Ringtone', 'tu-bhi-satya-jayega-ringtone', 10, 223, 223),
(95, '2021-10-02 04:28:53.744084', '2021-10-02 04:28:53.778415', 'Wafa Na Raas Aayi Ringtone Download', 460, 522, 'android/wafa_na_raas_aayi_ringtone.mp3', 'iphone/wafa_na_raas_aayi_ringtone.m4r', '', 'Wafa Na Raas Aayi Ringtone', 'wafa-na-raas-aayi-ringtone-download', 10, 226, 226),
(96, '2021-10-02 04:42:46.246968', '2021-10-02 04:42:46.275573', 'Rim Jhim Ringtone Download', 484, 806, 'android/Rim_Jhim_Ringtone.mp3', 'iphone/Rim_Jhim_Ringtone.m4r', '', 'Rim Jhim Ringtone', 'rim-jhim-ringtone-download', 10, 228, 228),
(97, '2021-10-02 05:15:24.487826', '2021-10-02 05:15:24.517926', 'Bepanah Ishq Ringtone Download', 0, 1, 'android/Bepanah_Ishq_Ringtone.mp3', 'iphone/Bepanah_Ishq_Ringtone.m4r', '', 'Bepanah Ishq Ringtone', 'bepanah-ishq-ringtone-download', 10, 230, 230),
(98, '2021-10-10 11:43:00.364274', '2021-10-10 11:43:00.395232', 'Mere Paas Ek Dil Tha Wo Bhi Tumne Chura Liya Ringtone Download', 52, 107, 'android/Chura_Liya_Ringtone___Mere_Paas_Ek_Dil_Tha_Wo_Bhi_Tumne_Chura_Liya_Ringtone___Chura_Liya.mp3', 'iphone/Chura-Liya-Ringtone-_-Mere-Paas-Ek-Dil-Tha-Wo-Bhi-Tumne-Chura-Liya-Ringtone-_-Chura-Liya.m4r', '', 'Mere Paas Ek Dil Tha Wo Bhi Tumne Chura Liya Ringtone', 'mere-paas-ek-dil-tha-wo-bhi-tumne-chura-liya-ringtone-download', 10, 232, 232),
(99, '2021-10-13 04:04:35.487353', '2021-10-13 04:36:50.071715', 'Dil Galti Kar Baitha Hai Ringtone Download Jubin Nautiyal', 1, 2, 'android/Dil_Galti_Kar_Baitha_Hai_Ringtone_Download_Jubin_Nautiyal.mp3', 'iphone/Dil-Galti-Kar-Baitha-Hai-Ringtone-Download-Jubin-Nautiyal.m4r', '', 'Dil Galti Kar Baitha Hai Ringtone Jubin Nautiyal', 'dil-galti-kar-baitha-hai-ringtone-download-jubin-nautiyal', 10, 234, 234),
(100, '2021-10-13 04:17:00.550420', '2021-10-13 04:17:00.582545', 'mene aasman pe likh diya ringtone download', 0, 0, 'android/mene_aasman_pe_likh_diya_ringtone_download.mp3', 'iphone/mene_aasman_pe_likh_diya_ringtone_download.m4r', '', 'mene aasman pe likh diya ringtone', 'mene-aasman-pe-likh-diya-ringtone-download', 10, 236, 236),
(101, '2021-10-13 04:23:34.442490', '2021-10-13 04:23:34.467023', 'tu samne ho jahan bhi main jaaun ringtone Download', 3, 2, 'android/Ringtonefly.co_tu_samne_ho_jahan_bhi_main_jaaun_ringtone.mp3', 'iphone/Ringtonefly.co_tu_samne_ho_jahan_bhi_main_jaaun_ringtone.m4r', '', 'tu samne ho jahan bhi main jaaun ringtone', 'tu-samne-ho-jahan-bhi-main-jaaun-ringtone-download', 10, 237, 237),
(102, '2021-10-13 04:28:39.676990', '2021-10-13 04:28:39.701690', 'Bepanah Ishq hindi ringtone Download', 0, 2, 'android/Bepanah_Ishq____hindi_ringtone_download____Payal_dev_song_bepanah_Ishq_ringtone.mp3', 'iphone/Bepanah-Ishq-__-hindi-ringtone-download-__-Payal-dev-song-bepanah-Ishq-ringtone-.m4r', '', 'Bepanah Ishq hindi ringtone', 'bepanah-ishq-hindi-ringtone-download', 10, 238, 238),
(104, '2021-10-15 03:39:42.706137', '2021-10-15 03:39:42.730360', 'O Yaara Dil Lagana Ringtone Download', 1304, 1612, 'android/O_Yaara_Dil_Lagana_Ringtone.mp3', 'iphone/O_Yaara_Dil_Lagana_Ringtone.m4r', '', 'O Yaara Dil Lagana Ringtone', 'o-yaara-dil-lagana-ringtone-download', 10, 244, 244),
(105, '2021-10-15 05:34:10.891644', '2021-10-15 05:34:10.914974', 'Kar Sako To Sanam Ringtone Download', 1, 0, 'android/Kar_Sako_To_Sanam.mp3', 'iphone/Kar_Sako_To_Sanam.m4r', '', 'Kar Sako To Sanam Ringtone', 'kar-sako-to-sanam-ringtone-download', 10, 246, 246),
(106, '2021-10-15 06:20:22.619625', '2021-10-15 06:20:22.666748', 'Bansuri - Hum Do Hamare Do Ringtone Download', 0, 0, 'android/Bansuri_-_Hum_Do_Hamare_Do_Ringtone_Download.mp3', 'iphone/Bansuri-Hum-Do-Hamare-Do-Ringtone-Download.m4r', '', 'Bansuri - Hum Do Hamare Do Ringtone', 'bansuri-hum-do-hamare-do-ringtone-download', 10, 248, 248),
(107, '2021-10-16 03:44:56.085507', '2021-10-16 03:44:56.115056', 'Pyaar Ho Jayega Ringtone Download Vishal Mishra', 1, 1, 'android/Pyaar_Ho_Jayega_ringtone.mp3', 'iphone/Pyaar-Ho-Jayega-ringtone.m4r', '', 'Pyaar Ho Jayega Vishal Mishra ringtone', 'pyaar-ho-jayega-ringtone-download-vishal-mishra', 10, 250, 250),
(108, '2021-10-16 05:41:40.460032', '2021-10-16 05:41:40.485773', 'Apsraa Ringtone Download Jaani', 0, 1, 'android/Apsraa_ringtone_download_Jaani_.mp3', 'iphone/Apsraa_ringtone_download_Jaani.m4r', '', 'Apsraa Ringtone Jaani', 'apsraa-ringtone-download-jaani', 9, 252, 252),
(109, '2021-10-17 06:35:14.012927', '2021-10-17 06:35:14.048640', 'Lut Gaye Ringtone Download Jubin Nautiyal', 1553, 1008, 'android/Lut_Gaye_Ringtone_Download_Jubin_Nautiyal.mp3', 'iphone/Lut_Gaye_Ringtone_Download_Jubin_Nautiyal.m4r', '', 'Lut Gaye Ringtone Jubin Nautiyal', 'lut-gaye-ringtone-download-jubin-nautiyal', 10, 254, 254),
(110, '2021-10-18 13:34:00.981562', '2021-10-20 07:47:20.180336', 'Aise Na Choro Ringtone Guru Randhawa', 4, 10, 'android/Aise_Na_Chhodo_Mujhe_Ringtone_Download_GuruRandhawa.mp3', 'iphone/Aise-Na-Chhodo-Mujhe-Ringtone-Download-GuruRandhawa.m4r', '', 'Aise Na Choro Ringtone Guru Randhawa', 'aise-na-choro-ringtone-guru-randhawa', 10, 256, 256),
(111, '2021-10-19 17:20:09.673007', '2021-10-19 17:20:09.702924', 'Ankhein Mili Ringtone Download', 0, 0, 'android/Ankhein_mili_ringtone.mp3', 'iphone/Ankhein_mili_ringtone.m4r', '', 'Ankhein Mili Ringtone', 'ankhein-mili-ringtone-download', 10, 258, 258),
(112, '2021-10-19 17:31:33.025862', '2021-10-19 17:31:33.064325', 'Kash Aisa Ho Sakta Ringtone Download', 1577, 1372, 'android/Kash_Aisa_Ho_Sakta_Ringtone.mp3', 'iphone/Kash-Aisa-Ho-Sakta-Ringtone.m4r', '', 'Kash Aisa Ho Sakta Ringtone', 'kash-aisa-ho-sakta-ringtone-download', 9, 260, 260),
(113, '2021-10-20 04:03:47.477393', '2021-10-20 04:03:47.512105', 'Sorry Jaan Sorry Ringtone Download Mickey Singh', 0, 0, 'android/Sorry_Ringtone_Download_Mickey_Singh.mp3', 'iphone/Sorry-Ringtone-Download-Mickey-Singh.m4r', '', 'Sorry Jaan Sorry Ringtone Download Mickey Singh', 'sorry-jaan-sorry-ringtone-download-mickey-singh', 9, 262, 262),
(114, '2021-10-20 06:33:48.596100', '2021-10-20 06:33:48.626754', 'Kamli - Hum Do Hamare Do Ringtone Download Jubin Nautiyal', 1500, 1607, 'android/Kamli_-_Hum_Do_Hamare_Do_Ringtone_Download_Jubin_Nautiyal..mp3', 'iphone/Kamli-Hum-Do-Hamare-Do-Ringtone-Download-Jubin-Nautiyal..m4r', '', 'Kamli Hum Do Hamare Do Ringtone Download Jubin Nautiyal', 'kamli-hum-do-hamare-do-ringtone-download-jubin-nautiyal', 10, 264, 264),
(115, '2021-10-20 06:38:18.353981', '2021-10-20 06:38:18.378701', 'Kamli Ringtone Download Jubin Nautiyal', 1204, 1558, 'android/Kamli_Ringtone_Download_Jubin_Nautiyal.mp3', 'iphone/Kamli_Ringtone_Download_Jubin_Nautiyal.m4r', '', 'Kamli Ringtone Download Jubin Nautiyal', 'kamli-ringtone-download-jubin-nautiyal', 10, 266, 266),
(116, '2021-10-20 07:51:46.483658', '2021-10-20 07:51:46.514975', 'Aise Na Chhodo Mujhe Ringtone Download GuruRandhawa', 0, 1, 'android/Aise_Na_Chhodo_Mujhe_Ringtone_Download_GuruRandhawa_c8Tlg4m.mp3', 'iphone/Aise-Na-Chhodo-Mujhe-Ringtone-Download-GuruRandhawa_kqAGkIJ.m4r', '', 'Aise Na Chhodo Mujhe Ringtone GuruRandhawa', 'aise-na-chhodo-mujhe-ringtone-download-gururandhawa', 10, 268, 268),
(117, '2021-10-20 17:28:38.384690', '2021-10-20 17:28:38.410802', 'Gallan Bholiyan Ringtone Download', 1, 0, 'android/Gallan_Bholiyan_Ringtone_Download.mp3', 'iphone/Gallan-Bholiyan-Ringtone-Download.m4r', '', 'Gallan Bholiyan Ringtone', 'gallan-bholiyan-ringtone-download', 9, 270, 270),
(118, '2021-10-21 03:46:33.691236', '2021-10-21 03:46:33.718680', 'Aila Re Aila Sooryavanshi Ringtone Download', 0, 0, 'android/Suryavanshi__Ringtone_.mp3', 'iphone/Suryavanshi.m4r', '', 'Aila Re Aila Sooryavanshi Ringtone', 'aila-re-aila-sooryavanshi-ringtone-download', 10, 272, 272),
(119, '2021-10-21 05:03:20.645483', '2021-10-21 05:03:20.679197', 'Ishq Da Rog by Stebin Ben Ringtone Download 2021', 0, 1, 'android/Ishq_Da_Rog_by_Stebin_Ben_Ringtone_Download.mp3', 'iphone/Ishq_Da_Rog_by_Stebin_Ben_Ringtone_Download.m4r', '', 'Ishq Da Rog by Stebin Ben Ringtone', 'ishq-da-rog-by-stebin-ben-ringtone-download-2021', 10, 274, 274),
(120, '2021-10-21 06:47:42.686535', '2021-10-21 06:47:42.725174', 'Sahi Sahi Ringtone Download Lakhwinder Wadali', 0, 0, 'android/Sahi_Sahi_Ringtone_Lakhwinder_Wadali.mp3', 'iphone/Sahi-Sahi-Ringtone-Lakhwinder-Wadali.m4r', '', 'Sahi Sahi Ringtone Lakhwinder Wadali', 'sahi-sahi-ringtone-download-lakhwinder-wadali', 10, 276, 276),
(121, '2021-10-21 06:53:12.878505', '2021-10-21 06:53:12.904287', 'Khoye Se Lag Rahe Ho Ringtone Download', 0, 1, 'android/Khoye_Se_Lag_Rahe_Ho_Ringtone_Download.mp3', 'iphone/Khoye_Se_Lag_Rahe_Ho_Ringtone_Download.m4r', '', 'Khoye Se Lag Rahe Ho Ringtone', 'khoye-se-lag-rahe-ho-ringtone-download', 10, 278, 278),
(122, '2021-10-22 16:32:27.130422', '2021-10-22 16:32:27.158064', 'Tere Bina Jina Saza ho Gaya Ringtone Download', 1, 3, 'android/Tere_Bina_Jina_Saza_ho_Gaya_Ringtone.mp3', 'iphone/Tere-Bina-Jina-Saza-ho-Gaya-Ringtone.m4r', '', 'Tere Bina Jina Saza ho Gaya Ringtone', 'tere-bina-jina-saza-ho-gaya-ringtone-download', 10, 280, 280),
(123, '2021-10-23 16:50:05.556677', '2021-10-23 16:50:05.595597', 'Devo Ke Dev Mahadev Theme Ringtone Download', 0, 0, 'android/Mahadev_Tune_Mahadev_Ringtone_Download.mp3', 'iphone/Devo_Ke_Dev_Mahadev_Theme_Ringtone.m4r', '', 'Devo Ke Dev Mahadev Theme Ringtone', 'devo-ke-dev-mahadev-theme-ringtone-download', 11, 284, 284),
(124, '2021-10-24 05:13:22.923462', '2021-10-24 05:13:22.954083', 'Mera Bhola Hai Bhandari Ringtone', 2, 7, 'android/Mera_Bhola_Hai_Bhandari_Ringtone.mp3', 'iphone/Mera_Bhola_Hai_Bhandari_Ringtone.m4r', '', 'Mera Bhola Hai Bhandari Ringtone', 'mera-bhola-hai-bhandari-ringtone', 11, 286, 286),
(125, '2021-10-26 04:26:08.821362', '2021-10-26 04:26:08.860759', 'Aisa Damru Bajaya Bholenath Ne Ringtone Download', 0, 4, 'android/Damru_Bajaya_Mahadev_Ringtone.mp3', 'iphone/Damru-Bajaya-Mahadev-Ringtone.m4r', '', 'Aisa Damru Bajaya Bholenath Ne Ringtone', 'aisa-damru-bajaya-bholenath-ne-ringtone-download', 11, 288, 288),
(126, '2021-10-26 17:40:08.309569', '2021-10-26 17:40:08.344263', 'Lagi Meri Tere Sang Shankara Ringtone Download', 0, 1, 'android/lagi_meri_tere_sang_shankara_ringtone_download.mp3', 'iphone/lagi_meri_tere_sang_shankara_ringtone_download.m4r', '', 'Lagi Meri Tere Sang Shankara Ringtone', 'lagi-meri-tere-sang-shankara-ringtone-download', 11, 290, 290),
(127, '2021-10-26 17:49:44.055169', '2021-10-26 17:50:55.448839', 'Shiv Sama Rahe Mujhme Ringtone Download', 3, 14, 'android/Shiv_Sama_Rahe_Mujhme_Ringtone.mp3', 'iphone/Shiv_Sama_Rahe_Mujhme_Ringtone.m4r', '', 'Shiv Sama Rahe Mujhme Ringtone', 'shiv-sama-rahe-mujhme-ringtone-download', 11, 292, 292),
(128, '2021-10-27 10:13:51.457994', '2021-10-27 10:13:51.492156', 'Meri Zindagi Hai Tu - Jubin Nautiyal Ringtone Download', 0, 0, 'android/Meri-Zindagi-Hai-Tu-ft-Jubin.mp3', 'iphone/Meri-Zindagi-Hai-Tu-ft-Jubin.m4r', '', 'Meri Zindagi Hai Tu - Jubin Nautiyal Ringtone', 'meri-zindagi-hai-tu-jubin-nautiyal-ringtone-download', 10, 294, 294),
(129, '2021-10-27 10:17:26.974343', '2021-10-27 10:17:26.999910', 'Mere Yaara Ringtone Download', 0, 0, 'android/Mere-Yaara-Ringtone-Download-Mere-Yaara-Arijit-Singh-Sooryavanshi.mp3', 'iphone/Mere-Yaara-Ringtone-Download-Mere-Yaara-Arijit-Singh-Sooryavanshi.m4r', '', 'Mere Yaara Ringtone Sooryavanshi', 'mere-yaara-ringtone-download', 10, 295, 295),
(130, '2021-10-28 07:36:23.644491', '2021-10-28 07:36:23.682484', 'East Nepal BGM Ringtone Download', 12, 28, 'android/east_nepal_music_ringtone.mp3', 'iphone/East_Nepal_Ringtone_Download.m4r', '', 'East Nepal Ringtone', 'east-nepal-bgm-ringtone-download', 10, 298, 298),
(131, '2021-10-28 07:39:42.997694', '2021-10-28 07:39:43.040836', 'Rang Leke Khelte Gulal Leke Khelte Ringtone Download', 0, 2, 'android/rang_leke_khelte_gulal_leke_khelte_ringtone_download.mp3', 'iphone/rang_leke_khelte_gulal_leke_khelte_ringtone_download.m4r', '', 'Rang Leke Khelte Gulal Leke Khelte Ringtone', 'rang-leke-khelte-gulal-leke-khelte-ringtone-download', 6, 299, 299),
(132, '2021-10-28 07:43:10.928946', '2021-10-28 07:43:10.963582', 'Chhatrapati Shivaji Maharaj Ringtone Download', 0, 2, 'android/chatrapati_shivaji_ringtone.mp3', 'iphone/chatrapati_shivaji_ringtone.m4r', '', 'Chhatrapati Shivaji Maharaj Ringtone', 'chhatrapati-shivaji-maharaj-ringtone-download', 10, 300, 300),
(133, '2021-10-28 07:46:29.830963', '2021-10-28 07:46:29.863422', 'Manike Mage Hithe Ringtone Download', 2, 0, 'android/manike_mage_hithe_ringtone.mp3', 'iphone/manike_mage_hithe_ringtone.m4r', '', 'Manike Mage Hithe Ringtone', 'manike-mage-hithe-ringtone-download', 7, 301, 301),
(134, '2021-10-28 07:50:24.880526', '2021-10-28 07:50:24.907559', 'Tu Ada Hai Tu Mohabbat Ringtone Download', 0, 0, 'android/Tu_Ada_Hai_Tu_Mohabbat_Ringtone.mp3', 'iphone/Tu_Ada_Hai_Tu_Mohabbat_Ringtone.m4r', '', 'Tu Ada Hai Tu Mohabbat Ringtone', 'tu-ada-hai-tu-mohabbat-ringtone-download', 10, 302, 302),
(135, '2021-10-28 07:52:40.519158', '2021-10-28 07:52:40.547869', 'Yeh Dua Hai Meri Rab Se Ringtone Download', 0, 1, 'android/Yeh_Dua_Hai_Meri_Rab_Se_Ringtone_Download.mp3', 'iphone/Yeh_Dua_Hai_Meri_Rab_Se_Ringtone_Download.m4r', '', 'Yeh Dua Hai Meri Rab Se Ringtone', 'yeh-dua-hai-meri-rab-se-ringtone-download', 10, 303, 303),
(136, '2021-10-28 07:58:03.950546', '2021-10-28 07:58:03.979221', 'Main Barish Ka Mausam Hoon B Praak DJ Ringtone Download', 1, 1, 'android/main_barish_ka_mausam.mp3', 'iphone/main_barish_ka_mausam_ringtone.m4r', '', 'Main Barish Ka Mausam Hoon B Praak Ringtone', 'main-barish-ka-mausam-hoon-b-praak-dj-ringtone-download', 9, 304, 304),
(137, '2021-10-29 14:05:47.810588', '2021-10-29 14:05:47.847782', 'Ishq Tera Lae Dooba Ringtone Download', 3, 8, 'android/ishq_Tera_Lae_dooba_Ringtone.mp3', 'iphone/ishq_Tera_Lae_dooba_Ringtone.m4r', '', 'Ishq Tera Lae Dooba Ringtone', 'ishq-tera-lae-dooba-ringtone-download', 10, 312, 312),
(138, '2021-10-30 11:30:52.197343', '2021-10-30 11:30:52.285605', 'Bijlee Bijlee Ringtone Download Harrdy Sandhu', 1, 3, 'android/bijlee_bijlee_Ringtone_harrdy_sandhu.mp3', 'iphone/bijlee_bijlee_Ringtone_harrdy_sandhu.m4r', '', 'Bijlee Bijlee Ringtone Harrdy Sandhu', 'bijlee-bijlee-ringtone-download-harrdy-sandhu', 9, 314, 314),
(139, '2021-11-22 20:36:41.629961', '2021-11-22 20:36:41.667098', 'Natu Natu Telugu Ringtone Download(Rrr)', 1703, 1501, 'android/Natu_Natu_Telugu_Ringtone_DownloadRRR.mp3', 'iphone/Natu-Natu-Telugu-Ringtone-Download_RRR_.m4r', '', 'Natu Natu Telugu Ringtone By RRR', 'natu-natu-telugu-ringtone-downloadrrr', 7, 316, 316),
(140, '2021-11-28 05:24:33.816793', '2021-11-28 05:24:33.869488', 'Hoye Ishq Na Ringtone Download', 0, 1, 'android/hoye-ishq-na-tadap-arijit-singh.mp3', 'iphone/hoye-ishq-na-tadap-arijit-singh.m4r', '', 'Hoye Ishq Na Ringtone', 'hoye-ishq-na-ringtone-download', 10, 318, 318),
(141, '2021-12-04 04:18:32.492948', '2021-12-04 04:18:32.533686', 'Mere Shankara Ringtone Download', 0, 0, 'android/Mere_Shankara_Ringtone._Mahadev_Ringtone.mp3', 'iphone/Mere-Shankara-Ringtone.-Mahadev-Ringtone.m4r', '', 'Mere Shankara Ringtone', 'mere-shankara-ringtone-download', 11, 320, 320),
(142, '2021-12-06 06:18:19.123150', '2021-12-06 06:18:19.157312', 'Rait Zara Si Ringtone Download (Atrangi re )', 0, 1, 'android/Rait_Jara_Si_Ringtone.mp3', 'iphone/Rait-Jara-Si-Ringtone.m4r', '', 'Rait Zara Si Ringtone (Atrangi re )', 'rait-zara-si-ringtone-download-atrangi-re', 10, 322, 322),
(143, '2021-12-08 04:45:35.587762', '2021-12-08 04:45:35.631782', 'Tera name hai likha ringtone Download', 1, 1, 'android/Tera_name_hai_likha_ringtone.mp3', 'iphone/Tera-name-hai-likha-ringtone.m4r', '', 'Tera name hai likha ringtone', 'tera-name-hai-likha-ringtone-download', 10, 324, 324),
(144, '2021-12-09 14:30:40.907295', '2021-12-09 14:30:40.956025', 'Ghana Kasuta Lage Re Ringtone Download (Rafttar)', 3, 1, 'android/Ghana_Kasuta_rafttar_new_song_ringtone.mp3', 'iphone/Ghana-Kasuta-rafttar-new-song-ringtone.m4r', '', 'Ghana Kasuta Lage Re Ringtone (Rafttar)', 'ghana-kasuta-lage-re-ringtone-download-rafttar', 10, 326, 326),
(145, '2021-12-10 03:16:52.367387', '2021-12-10 03:16:52.399513', 'Fakir Ringtone Download (Hansraj Raghuwanshi)', 1, 1, 'android/Fakir_Ringtone_Download_Hansraj_Raghuwanshi.mp3', 'iphone/Fakir-Ringtone-Download-_Hansraj-Raghuwanshi_.m4r', '', 'Fakir Ringtone (Hansraj Raghuwanshi)', 'fakir-ringtone-download-hansraj-raghuwanshi', 11, 328, 328),
(146, '2021-12-10 05:07:51.561729', '2021-12-10 05:07:51.594352', 'Duaa Mein Yaad Rakhna Ringtone Download', 0, 0, 'android/Duaa_Mein_Yaad_Rakhna_Ringtone._Broken_Ringtone._Love_Ringtone._Calling_Ringtone_lLjghYm.mp3', 'iphone/Duaa-Mein-Yaad-Rakhna-Ringtone.-Broken-Ringtone.-Love-Ringtone.-Calling-Ringtone._NctnN1d.m4r', '', 'Duaa Mein Yaad Rakhna Ringtone', 'duaa-mein-yaad-rakhna-ringtone-download', 10, 330, 330),
(147, '2021-12-11 05:50:22.464463', '2021-12-11 05:50:22.497071', 'Jag Ghoomeya Ringtone Download', 446, 600, 'android/Jag-Ghoomeya-8D-Ringtone.mp3', 'iphone/Jag-Ghoomeya-8D-Ringtone.m4r', '', 'Jag Ghoomeya Ringtone', 'jag-ghoomeya-ringtone-download', 10, 332, 332),
(148, '2021-12-12 17:33:07.698859', '2021-12-12 17:33:07.739066', 'Dastaan E Ishq Ringtone Download', 1, 0, 'android/dastaan_e_ishq_ringtone.mp3', 'iphone/dastaan-e-ishq-ringtone.m4r', '', 'Dastaan E Ishq Ringtone', 'dastaan-e-ishq-ringtone-download', 9, 334, 334),
(149, '2021-12-13 05:39:37.638042', '2021-12-13 05:49:31.903236', 'Humsafar ringtone download', 2, 5, 'android/Humsafar.mp3', 'iphone/Humsafar.m4r', '', 'humsafar ringtone', 'humsafar-ringtone-download', 10, 336, 336),
(150, '2021-12-13 05:55:48.909179', '2021-12-13 05:59:32.824651', '89 | Bigadne De Ringtone Download', 0, 0, 'android/83___Bigadne_De___Ranveer_Singh.mp3', 'iphone/83-_-Bigadne-De-_-Ranveer-Singh.m4r', '', '89 | Bigadne De Ringtone', '89-bigadne-de-ringtone-download', 10, 338, 338),
(151, '2021-12-13 06:02:17.677627', '2021-12-13 06:02:17.716833', 'Ram Tumhara Naam Ringtone Download', 0, 1, 'android/Ram-Tumhara-Naam-Ringtone.mp3', 'iphone/Ram-Tumhara-Naam-Ringtone.m4r', '', 'Ram Tumhara Naam Ringtone', 'ram-tumhara-naam-ringtone-download', 6, 339, 339),
(152, '2021-12-13 12:42:50.876393', '2021-12-13 12:57:54.851253', 'Chan chanani ringtone download', 1, 0, 'android/Chan_Chanani_-_Karan_Randhawa_Ringtone.mp3', 'iphone/Chan-Chanani-Karan-Randhawa_Ringtone.m4r', '', 'Chan Chanani Ringtone', 'chan-chanani-ringtone-download', 9, 342, 342),
(153, '2021-12-14 03:24:38.080704', '2021-12-14 05:03:38.605086', 'Param Sundari Ringtone Download', 4, 6, 'android/Param_Sundari_-_Mimi.mp3', 'iphone/Param-Sundari-Mimi.m4r', '', 'Param Sundari Ringtone', 'param-sundari-ringtone-download', 10, 344, 344),
(154, '2021-12-15 05:31:44.964388', '2021-12-15 05:31:45.014050', 'Udd Jaa Parindey Ringtone Download', 0, 1, 'android/Udd_Jaa_Parindey_Ringtone.mp3', 'iphone/Udd-Jaa-Parindey-Ringtone.m4r', '', 'Udd Jaa Parindey Ringtone', 'udd-jaa-parindey-ringtone-download', 10, 346, 346),
(155, '2021-12-15 06:06:50.583167', '2021-12-15 06:06:50.613425', 'Baliye Re Ringtone Download (Jersey)', 0, 0, 'android/Baliye-Re-Jersey-_ringtone.mp3', 'iphone/Baliye-Re-Jersey-_ringtone.m4r', '', 'Baliye Re Ringtone', 'baliye-re-ringtone-download-jersey', 10, 348, 348),
(156, '2021-12-15 16:55:44.522375', '2021-12-15 16:55:44.560919', 'Teri Meri Gallan Hogi Mashhur ( Raatan Lambiyan ) Ringtone Download', 12, 36, 'android/Teri_Meri_Gallan_Hogi_Mashhur__Raatan_Lambiyan.mp3', 'iphone/Teri-Meri-Gallan-Hogi-Mashhur-_-Raatan-Lambiyan.m4r', '', 'Teri Meri Gallan Hogi Mashhur Ringtone', 'teri-meri-gallan-hogi-mashhur-raatan-lambiyan-ringtone-download', 9, 350, 350),
(157, '2021-12-16 11:40:19.371411', '2021-12-16 11:40:19.404784', 'Saazish ringtone download bb ki vines | Bhuvan bam | Dhindhora ringtone', 1, 1, 'android/Saazish_song_ringtone_download_bb_ki_vines___Bhuvan_bam___Dhindhora_ringtone___N_U4HdHIc.mp3', 'iphone/Saazish-song-ringtone-download-bb-ki-vines-_-Bhuvan-bam-_-Dhindhora-ringtone-_-NS_Q9vJzpv.m4r', '', 'Saazish ringtone bb ki vines | Bhuvan bam | Dhindhora ringtone', 'saazish-ringtone-download-bb-ki-vines-bhuvan-bam-dhindhora-ringtone', 10, 352, 352),
(158, '2021-12-17 10:54:16.655137', '2021-12-17 10:54:16.680242', 'Iphone Notification Ringtone Download', 1, 0, 'android/iphone-sms-ringtone-original-mp4Ringtonefly.co_.mp3', '', '', 'iPhone Notification Ringtone', 'iphone-notification-ringtone-download', 5, 354, 354),
(159, '2021-12-18 04:28:35.884583', '2021-12-18 04:28:35.927785', 'Dance Meri Rani Ringtone Download | Guru Randhawa', 0, 1, 'android/Tera_name_hai_likha_ringtone_HO6ejpz.mp3', 'iphone/Tera-name-hai-likha-ringtone_t5LUYJV.m4r', '', 'Dance Meri Rani Ringtone | Guru Randhawa', 'dance-meri-rani-ringtone-download-guru-randhawa', 10, 356, 356),
(160, '2021-12-18 06:20:44.777500', '2021-12-18 06:20:44.823033', 'Teri Life Meri Life Ringtone Download | Punjabi Ringtones', 0, 1, 'android/Teri_Life_Meri_Life.mp3', 'iphone/Teri_Life_Meri_Life.m4r', '', 'Teri Life Meri Life Ringtone | Punjabi Ringtones', 'teri-life-meri-life-ringtone-download-punjabi-ringtones', 9, 358, 358),
(161, '2021-12-18 06:50:42.176915', '2021-12-18 06:50:42.206642', 'Jai Kara Ringtone Download • Hansraj Raghuwanshi', 10, 16, 'android/Mere_Shankara_Ringtone._Mahadev_Ringtone_dXGqgQg.mp3', 'iphone/Mere-Shankara-Ringtone.-Mahadev-Ringtone_R4D7iT9.m4r', '', 'Jai Kara Ringtone • Hansraj Raghuwanshi', 'jai-kara-ringtone-download-hansraj-raghuwanshi', 11, 360, 360);

-- --------------------------------------------------------

--
-- Table structure for table `config_seotool`
--

CREATE TABLE `config_seotool` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `canonicalization` tinyint(1) NOT NULL,
  `canonicalization_url` varchar(255) DEFAULT NULL,
  `noindex` tinyint(1) NOT NULL,
  `common_keywords` varchar(255) DEFAULT NULL,
  `common_description` varchar(255) DEFAULT NULL,
  `open_graph_tag` tinyint(1) NOT NULL,
  `twitter_tag` tinyint(1) NOT NULL,
  `home_page_meta_tag` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `config_seotool`
--

INSERT INTO `config_seotool` (`cmsplugin_ptr_id`, `canonicalization`, `canonicalization_url`, `noindex`, `common_keywords`, `common_description`, `open_graph_tag`, `twitter_tag`, `home_page_meta_tag`) VALUES
(13, 1, 'https://www.ringtonefly.co', 0, 'Ringtone, Ringtone Download, New Ringtone Download, Popular Ringtone, Free Ringtone', '#1 Trending New Mp3 Popular Ringtones for Android & iPhone (M4r) Download Now And Personalize your Device.', 1, 1, '<meta name=\"description\" content=\"Download #1 Trending Ringtones for Android or iPhone, Feel the World With Music, Ringtone Download That Best For You.\" />\r\n<meta name=\"google-site-verification\" content=\"iwoXh9UykfZw0RcQrykW_85aUQI9SyIS0ulRIpU7Zts\" />\r\n<link href=\'//www.google-analytics.com\' rel=\'dns-prefetch\'/>\r\n<link href=\'//fonts.googleapis.com\' rel=\'dns-prefetch\'/>\r\n<link href=\'//fontawesome.com\' rel=\'dns-prefetch\'/>\r\n<link href=\'//cdn.jsdelivr.net\' rel=\'dns-prefetch\'/>');

-- --------------------------------------------------------

--
-- Table structure for table `config_singlefavoriteplugin`
--

CREATE TABLE `config_singlefavoriteplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `config_singlefavoriteplugin`
--

INSERT INTO `config_singlefavoriteplugin` (`cmsplugin_ptr_id`) VALUES
(72),
(74),
(88),
(90),
(92),
(94),
(97),
(99),
(101),
(103),
(105),
(107),
(109),
(111),
(113),
(115),
(117),
(119),
(121),
(123),
(125),
(127),
(129),
(131),
(133),
(135),
(140),
(142),
(144),
(146),
(148),
(150),
(152),
(154),
(156),
(158),
(160),
(162),
(164),
(166),
(168),
(170),
(195),
(197),
(199),
(201),
(203),
(205),
(207),
(209),
(211),
(213),
(215),
(217),
(219),
(221),
(231),
(233),
(235),
(237),
(239),
(241),
(243),
(245),
(247),
(249),
(251),
(253),
(255),
(257),
(259),
(261),
(263),
(265),
(267),
(269),
(271),
(273),
(275),
(277),
(281),
(283),
(295),
(297),
(310),
(312),
(314),
(316),
(321),
(323),
(325),
(327),
(329),
(331),
(333),
(335),
(337),
(339),
(341),
(343),
(345),
(347),
(349),
(351),
(353),
(355),
(357),
(359),
(361),
(363),
(365),
(367),
(369),
(371),
(398),
(400),
(402),
(404),
(406),
(408),
(410),
(412),
(414),
(416),
(418),
(420),
(422),
(424),
(426),
(428),
(430),
(432),
(434),
(436),
(484),
(486),
(488),
(490),
(492),
(494),
(496),
(498),
(500),
(502),
(504),
(506),
(516),
(518),
(520),
(522),
(524),
(526),
(532),
(534),
(536),
(538),
(550),
(552),
(554),
(556),
(558),
(562),
(564),
(566),
(568),
(570),
(572),
(574),
(576),
(578),
(580),
(582),
(613),
(615),
(631),
(635),
(639),
(641),
(651),
(655),
(657),
(659),
(663),
(667),
(669),
(671),
(673),
(675),
(677),
(679),
(681),
(685),
(687),
(689),
(691),
(693),
(695),
(703),
(705),
(707),
(709),
(711),
(713),
(715),
(717),
(719),
(721),
(723),
(725),
(727),
(729),
(731),
(733),
(735),
(737),
(739),
(741),
(743),
(745),
(747),
(749),
(751),
(753),
(755),
(757),
(759),
(761),
(763),
(765),
(767),
(769),
(771),
(773),
(775),
(777),
(779),
(789),
(791),
(801),
(803),
(833),
(835),
(841),
(843),
(845),
(847),
(849),
(851),
(853),
(855),
(857),
(859),
(861),
(863),
(865),
(867),
(869),
(871),
(873),
(875),
(877),
(879),
(881),
(883),
(889),
(891),
(893),
(895),
(897),
(899),
(902),
(904),
(906),
(908),
(910),
(912),
(914),
(916),
(918),
(920),
(922),
(924),
(926),
(928),
(930),
(938),
(941),
(943),
(945),
(949),
(951),
(953),
(955),
(957),
(959),
(961),
(963),
(965),
(971),
(973),
(975),
(977),
(979),
(981),
(983),
(985),
(987),
(989),
(995),
(997),
(999),
(1001),
(1003),
(1005);

-- --------------------------------------------------------

--
-- Table structure for table `config_singleringtoneplugin`
--

CREATE TABLE `config_singleringtoneplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `ringtone_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `config_singleringtoneplugin`
--

INSERT INTO `config_singleringtoneplugin` (`cmsplugin_ptr_id`, `ringtone_id`) VALUES
(71, 4),
(73, 4),
(87, 5),
(89, 5),
(91, 6),
(93, 6),
(96, 7),
(98, 7),
(100, 8),
(102, 8),
(104, 9),
(112, 9),
(106, 10),
(114, 10),
(108, 11),
(116, 11),
(110, 12),
(118, 12),
(120, 13),
(128, 13),
(122, 14),
(130, 14),
(124, 15),
(132, 15),
(126, 16),
(134, 16),
(139, 17),
(141, 17),
(143, 18),
(145, 18),
(147, 19),
(149, 19),
(151, 20),
(153, 20),
(155, 21),
(157, 21),
(159, 22),
(161, 22),
(163, 23),
(167, 23),
(165, 24),
(169, 24),
(194, 25),
(198, 25),
(196, 26),
(200, 26),
(202, 27),
(204, 27),
(206, 28),
(208, 28),
(210, 29),
(212, 29),
(214, 30),
(216, 30),
(218, 31),
(220, 31),
(230, 32),
(232, 32),
(234, 33),
(236, 33),
(238, 34),
(240, 34),
(242, 35),
(244, 35),
(246, 36),
(250, 36),
(248, 37),
(252, 37),
(254, 38),
(260, 38),
(256, 39),
(262, 39),
(258, 40),
(264, 40),
(266, 41),
(268, 41),
(270, 42),
(272, 42),
(274, 43),
(282, 43),
(276, 44),
(280, 44),
(294, 45),
(296, 45),
(309, 46),
(311, 46),
(313, 47),
(320, 47),
(315, 48),
(322, 48),
(324, 49),
(348, 49),
(326, 50),
(350, 50),
(328, 51),
(354, 51),
(330, 52),
(356, 52),
(332, 53),
(358, 53),
(334, 54),
(360, 54),
(336, 55),
(362, 55),
(338, 56),
(364, 56),
(340, 57),
(366, 57),
(342, 58),
(368, 58),
(344, 59),
(370, 59),
(346, 60),
(352, 60),
(397, 61),
(399, 61),
(401, 62),
(403, 62),
(405, 63),
(407, 63),
(409, 64),
(411, 64),
(413, 65),
(415, 65),
(417, 66),
(427, 66),
(419, 67),
(429, 67),
(421, 68),
(431, 68),
(423, 69),
(435, 69),
(425, 70),
(433, 70),
(483, 71),
(485, 71),
(487, 72),
(491, 72),
(489, 73),
(493, 73),
(495, 74),
(501, 74),
(497, 75),
(503, 75),
(499, 76),
(505, 76),
(515, 77),
(521, 77),
(517, 78),
(523, 78),
(519, 79),
(525, 79),
(531, 80),
(533, 80),
(535, 81),
(537, 81),
(549, 82),
(551, 82),
(553, 83),
(563, 83),
(555, 84),
(561, 84),
(557, 85),
(565, 85),
(567, 86),
(573, 86),
(569, 87),
(575, 87),
(571, 88),
(577, 88),
(579, 89),
(581, 89),
(612, 90),
(614, 90),
(630, 91),
(706, 91),
(634, 92),
(684, 92),
(638, 93),
(686, 93),
(640, 94),
(688, 94),
(650, 95),
(690, 95),
(654, 96),
(656, 96),
(658, 97),
(692, 97),
(662, 98),
(694, 98),
(666, 99),
(668, 99),
(670, 100),
(676, 100),
(672, 101),
(678, 101),
(674, 102),
(680, 102),
(702, 104),
(704, 104),
(708, 105),
(710, 105),
(712, 106),
(714, 106),
(716, 107),
(718, 107),
(720, 108),
(722, 108),
(724, 109),
(726, 109),
(728, 110),
(730, 110),
(732, 111),
(734, 111),
(736, 112),
(738, 112),
(740, 113),
(742, 113),
(744, 114),
(746, 114),
(748, 115),
(750, 115),
(752, 116),
(754, 116),
(756, 117),
(758, 117),
(760, 118),
(762, 118),
(764, 119),
(766, 119),
(768, 120),
(770, 120),
(772, 121),
(774, 121),
(776, 122),
(778, 122),
(788, 123),
(790, 123),
(800, 124),
(802, 124),
(832, 125),
(834, 125),
(840, 126),
(842, 126),
(844, 127),
(846, 127),
(848, 128),
(852, 128),
(850, 129),
(854, 129),
(856, 130),
(870, 130),
(858, 131),
(872, 131),
(860, 132),
(874, 132),
(862, 133),
(876, 133),
(864, 134),
(878, 134),
(866, 135),
(880, 135),
(868, 136),
(882, 136),
(888, 137),
(890, 137),
(892, 138),
(894, 138),
(896, 139),
(898, 139),
(901, 140),
(903, 140),
(905, 141),
(907, 141),
(909, 142),
(911, 142),
(913, 143),
(915, 143),
(917, 144),
(919, 144),
(921, 145),
(923, 145),
(925, 146),
(927, 146),
(929, 147),
(937, 147),
(940, 148),
(942, 148),
(944, 149),
(952, 149),
(948, 150),
(954, 150),
(950, 151),
(956, 151),
(958, 152),
(960, 152),
(962, 153),
(964, 153),
(970, 154),
(972, 154),
(974, 155),
(976, 155),
(978, 156),
(980, 156),
(982, 157),
(984, 157),
(986, 158),
(988, 158),
(994, 159),
(996, 159),
(998, 160),
(1000, 160),
(1002, 161),
(1004, 161);

-- --------------------------------------------------------

--
-- Table structure for table `config_siteconfig`
--

CREATE TABLE `config_siteconfig` (
  `id` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `favicon` varchar(100) DEFAULT NULL,
  `ads_script` longtext DEFAULT NULL,
  `bottom_ads_script` longtext DEFAULT NULL,
  `analytics_id` varchar(255) DEFAULT NULL,
  `google_captcha_webkey` varchar(255) DEFAULT NULL,
  `site_name` varchar(255) NOT NULL,
  `site_url` varchar(255) NOT NULL,
  `site_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `config_siteconfig`
--

INSERT INTO `config_siteconfig` (`id`, `created_at`, `updated_at`, `favicon`, `ads_script`, `bottom_ads_script`, `analytics_id`, `google_captcha_webkey`, `site_name`, `site_url`, `site_title`) VALUES
(1, '2021-06-05 11:09:31.921817', '2021-09-28 02:01:12.013060', 'favicon/favicon_AraRZm5.ico', '', '', NULL, '6LfRe4wbAAAAAARCd_qiV79VvtQwHCE3ftNIdGYA', 'RingtoneFly', 'https://www.ringtonefly.co', 'RingtoneFly.co');

-- --------------------------------------------------------

--
-- Table structure for table `config_top50`
--

CREATE TABLE `config_top50` (
  `id` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `ringtone_id` int(11) DEFAULT NULL,
  `sortable_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `config_top50`
--

INSERT INTO `config_top50` (`id`, `created_at`, `updated_at`, `ringtone_id`, `sortable_id`) VALUES
(11, '2021-06-06 17:22:37.105629', '2021-12-14 04:00:51.624317', 139, 16),
(13, '2021-06-06 20:40:12.500109', '2021-12-14 04:00:51.626463', 144, 16),
(14, '2021-06-06 20:40:12.501072', '2021-12-14 04:00:51.627612', 91, 16),
(15, '2021-06-06 20:40:12.501876', '2021-12-14 04:00:51.628686', 118, 16),
(16, '2021-06-06 20:40:12.504310', '2021-12-14 04:00:51.630218', 153, 16),
(22, '2021-06-23 12:42:30.612446', '2021-12-14 04:00:51.633711', 151, 16),
(23, '2021-06-23 12:42:30.614000', '2021-12-14 04:00:51.634946', 99, 16),
(24, '2021-06-23 12:42:30.614854', '2021-12-14 04:00:51.636056', 140, 16),
(25, '2021-06-23 12:42:30.615674', '2021-12-14 04:00:51.637100', 33, 16),
(26, '2021-06-23 12:42:30.618599', '2021-12-14 04:00:51.638139', 141, 16),
(127, '2021-12-14 04:01:37.801405', '2021-12-14 04:01:37.801454', 139, 966),
(128, '2021-12-14 04:01:37.802482', '2021-12-14 04:01:37.802519', 144, 966),
(129, '2021-12-14 04:01:37.803344', '2021-12-14 04:01:37.803386', 91, 966),
(130, '2021-12-14 04:01:37.804330', '2021-12-14 04:01:37.804372', 118, 966),
(131, '2021-12-14 04:01:37.806206', '2021-12-14 04:01:37.806244', 153, 966),
(132, '2021-12-14 04:01:37.807056', '2021-12-14 04:01:37.807091', 151, 966),
(133, '2021-12-14 04:01:37.807883', '2021-12-14 04:01:37.807917', 99, 966),
(134, '2021-12-14 04:01:37.808668', '2021-12-14 04:01:37.808703', 140, 966),
(135, '2021-12-14 04:01:37.809476', '2021-12-14 04:01:37.809512', 33, 966),
(136, '2021-12-14 04:01:37.810223', '2021-12-14 04:01:37.810258', 141, 966);

-- --------------------------------------------------------

--
-- Table structure for table `djangocms_googlemap_googlemap`
--

CREATE TABLE `djangocms_googlemap_googlemap` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `zoom` smallint(5) UNSIGNED NOT NULL CHECK (`zoom` >= 0),
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `width` varchar(6) NOT NULL,
  `height` varchar(6) NOT NULL,
  `scrollwheel` tinyint(1) NOT NULL,
  `double_click_zoom` tinyint(1) NOT NULL,
  `draggable` tinyint(1) NOT NULL,
  `keyboard_shortcuts` tinyint(1) NOT NULL,
  `pan_control` tinyint(1) NOT NULL,
  `zoom_control` tinyint(1) NOT NULL,
  `street_view_control` tinyint(1) NOT NULL,
  `style` longtext NOT NULL,
  `fullscreen_control` tinyint(1) NOT NULL,
  `map_type_control` varchar(255) NOT NULL,
  `rotate_control` tinyint(1) NOT NULL,
  `scale_control` tinyint(1) NOT NULL,
  `template` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `djangocms_googlemap_googlemapmarker`
--

CREATE TABLE `djangocms_googlemap_googlemapmarker` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `show_content` tinyint(1) NOT NULL,
  `info_content` longtext NOT NULL,
  `icon_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `djangocms_googlemap_googlemaproute`
--

CREATE TABLE `djangocms_googlemap_googlemaproute` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `origin` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `travel_mode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `djangocms_icon_icon`
--

CREATE TABLE `djangocms_icon_icon` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `template` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `djangocms_link_link`
--

CREATE TABLE `djangocms_link_link` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `external_link` varchar(2040) NOT NULL,
  `anchor` varchar(255) NOT NULL,
  `mailto` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `internal_link_id` int(11) DEFAULT NULL,
  `attributes` longtext NOT NULL,
  `template` varchar(255) NOT NULL,
  `file_link_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `djangocms_picture_picture`
--

CREATE TABLE `djangocms_picture_picture` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `link_url` varchar(2040) DEFAULT NULL,
  `alignment` varchar(255) NOT NULL,
  `link_page_id` int(11) DEFAULT NULL,
  `height` int(10) UNSIGNED DEFAULT NULL,
  `width` int(10) UNSIGNED DEFAULT NULL,
  `picture_id` int(11) DEFAULT NULL,
  `attributes` longtext NOT NULL,
  `caption_text` longtext DEFAULT NULL,
  `link_attributes` longtext NOT NULL,
  `link_target` varchar(255) NOT NULL,
  `use_automatic_scaling` tinyint(1) NOT NULL,
  `use_crop` tinyint(1) NOT NULL,
  `use_no_cropping` tinyint(1) NOT NULL,
  `use_upscale` tinyint(1) NOT NULL,
  `thumbnail_options_id` int(11) DEFAULT NULL,
  `external_picture` varchar(255) DEFAULT NULL,
  `template` varchar(255) NOT NULL,
  `use_responsive_image` varchar(7) NOT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `djangocms_style_style`
--

CREATE TABLE `djangocms_style_style` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `class_name` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `padding_left` smallint(5) UNSIGNED DEFAULT NULL,
  `padding_right` smallint(5) UNSIGNED DEFAULT NULL,
  `padding_top` smallint(5) UNSIGNED DEFAULT NULL,
  `padding_bottom` smallint(5) UNSIGNED DEFAULT NULL,
  `margin_left` smallint(5) UNSIGNED DEFAULT NULL,
  `margin_right` smallint(5) UNSIGNED DEFAULT NULL,
  `margin_top` smallint(5) UNSIGNED DEFAULT NULL,
  `margin_bottom` smallint(5) UNSIGNED DEFAULT NULL,
  `additional_classes` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  `id_name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `template` varchar(255) NOT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `djangocms_text_ckeditor_text`
--

CREATE TABLE `djangocms_text_ckeditor_text` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `body` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-06-05 10:27:25.763898', '1', 'https://ringtonefly.co/', 2, '[{\"changed\": {\"fields\": [\"Domain name\"]}}]', 9, 1),
(2, '2021-06-05 10:27:43.949183', '1', 'ringtonefly.co', 2, '[{\"changed\": {\"fields\": [\"Domain name\", \"Display name\"]}}]', 9, 1),
(3, '2021-06-05 10:38:54.497660', '3', 'About Us', 1, '[{\"added\": {}}]', 2, 1),
(4, '2021-06-05 10:39:18.550836', '4', 'Contact Us', 1, '[{\"added\": {}}]', 2, 1),
(5, '2021-06-05 10:40:13.137579', '1', 'Bollywood Ringtone', 1, '[{\"added\": {}}]', 36, 1),
(6, '2021-06-05 10:40:35.746102', '2', 'Telugu Ringtones', 1, '[{\"added\": {}}]', 36, 1),
(7, '2021-06-05 10:41:20.381541', '1', 'Is Qadar Ringtone', 1, '[{\"added\": {}}]', 46, 1),
(8, '2021-06-05 10:42:58.866509', '5', 'Categories', 2, '', 2, 1),
(9, '2021-06-05 10:43:47.541158', '6', 'Bollywood Ringtone', 2, '', 2, 1),
(10, '2021-06-05 10:44:07.666479', '8', 'Is Qadar Ringtone', 2, '', 2, 1),
(11, '2021-06-05 11:09:31.923615', '1', 'RingtoneFly', 1, '[{\"added\": {}}]', 49, 1),
(12, '2021-06-05 11:14:15.386430', '13', '13', 1, '[{\"added\": {}}]', 47, 1),
(13, '2021-06-05 11:14:50.565455', '13', '13', 2, '[{\"changed\": {\"fields\": [\"Canonicalization for current website ?\", \"Common Keywords\", \"Home page meta-tag\"]}}]', 47, 1),
(14, '2021-06-05 11:23:15.724589', '13', '13', 2, '[{\"changed\": {\"fields\": [\"Home page meta-tag\"]}}]', 47, 1),
(15, '2021-06-05 11:25:22.571155', '13', '13', 2, '[{\"changed\": {\"fields\": [\"Common Description\", \"Home page meta-tag\"]}}]', 47, 1),
(16, '2021-06-05 11:30:07.029727', '13', '13', 2, '[{\"changed\": {\"fields\": [\"Common Description\", \"Home page meta-tag\"]}}]', 47, 1),
(17, '2021-06-05 11:38:42.299685', '13', '13', 2, '[{\"changed\": {\"fields\": [\"Canonicalization url\"]}}]', 47, 1),
(18, '2021-06-05 11:51:18.319545', '2', 'Telugu Ringtones', 2, '[]', 36, 1),
(19, '2021-06-05 11:59:34.014157', '1', 'Download Ringtone New Mp3 or M4r » RingtoneFly.co', 2, '[{\"changed\": {\"fields\": [\"Site name\"]}}]', 49, 1),
(20, '2021-06-05 12:15:06.030594', '1', 'Download Ringtone New Mp3 or M4r', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 2, 1),
(21, '2021-06-05 12:15:31.631521', '1', 'Download Ringtone New Mp3 or M4r', 2, '', 2, 1),
(22, '2021-06-05 12:18:00.135659', '1', 'RingtoneFly', 2, '[{\"changed\": {\"fields\": [\"Site name\"]}}]', 49, 1),
(23, '2021-06-05 12:20:19.581329', '1', 'Home', 2, '[{\"changed\": {\"fields\": [\"Menu Title\"]}}]', 2, 1),
(24, '2021-06-05 12:21:18.237376', '1', 'Home', 2, '[{\"changed\": {\"fields\": [\"Page Title\"]}}]', 2, 1),
(25, '2021-06-05 12:21:28.046006', '1', 'Download Ringtone New Mp3 or M4r', 2, '', 2, 1),
(26, '2021-06-05 12:32:14.787660', '13', '13', 2, '[{\"changed\": {\"fields\": [\"Noindex for current website ?\"]}}]', 47, 1),
(27, '2021-06-05 12:38:18.770467', '13', '13', 2, '[{\"changed\": {\"fields\": [\"Noindex for current website ?\"]}}]', 47, 1),
(28, '2021-06-05 12:39:27.792460', '13', '13', 2, '[{\"changed\": {\"fields\": [\"Noindex for current website ?\"]}}]', 47, 1),
(29, '2021-06-05 13:22:49.552663', '1', 'Download Ringtone New Mp3 or M4r', 2, '', 2, 1),
(30, '2021-06-05 13:23:20.314881', '14', '14', 3, '', 43, 1),
(31, '2021-06-05 13:25:14.797714', '1', 'Download Ringtone New Mp3 or M4r', 2, '', 2, 1),
(32, '2021-06-05 13:29:49.745258', '2', 'Chahunga Me Tuje Hardam Ringtone', 1, '[{\"added\": {}}]', 46, 1),
(33, '2021-06-05 13:31:00.690552', '3', 'Tu Bhi Satya Jayega Ringtone', 1, '[{\"added\": {}}]', 46, 1),
(34, '2021-06-05 13:31:51.101635', '12', 'Chahunga Me Tuje Hardam Ringtone', 2, '', 2, 1),
(35, '2021-06-05 13:32:11.085467', '13', 'Tu Bhi Satya Jayega Ringtone', 2, '', 2, 1),
(36, '2021-06-05 13:51:39.624157', '1', 'Download Ringtone New Mp3 or M4r', 2, '', 2, 1),
(37, '2021-06-05 14:06:13.817695', '1', 'Download Ringtone New Mp3 or M4r', 2, '', 2, 1),
(38, '2021-06-05 14:46:45.037478', '13', '13', 2, '[{\"changed\": {\"fields\": [\"Canonicalization for current website ?\"]}}]', 47, 1),
(39, '2021-06-05 14:58:03.415701', '33', 'All Copyrights are Reserved to Orignal Owners - We are promoting content.', 1, '[{\"added\": {}}]', 44, 1),
(40, '2021-06-05 15:00:18.763658', '33', '-', 2, '[{\"changed\": {\"fields\": [\"Tagline\"]}}]', 44, 1),
(41, '2021-06-05 15:36:04.831080', '3', 'About Us', 2, '', 2, 1),
(42, '2021-06-05 15:36:05.498290', '4', 'Contact Us', 2, '', 2, 1),
(43, '2021-06-05 15:37:08.370131', '1', 'RingtoneFly', 2, '[{\"changed\": {\"fields\": [\"Site tite\"]}}]', 49, 1),
(44, '2021-06-05 15:59:47.686689', '13', '13', 2, '[{\"changed\": {\"fields\": [\"Canonicalization for current website ?\"]}}]', 47, 1),
(45, '2021-06-05 16:01:08.337024', '13', '13', 2, '[{\"changed\": {\"fields\": [\"Noindex for current website ?\"]}}]', 47, 1),
(46, '2021-06-05 16:06:18.197942', '2', 'Telugu Ringtones', 2, '[{\"changed\": {\"fields\": [\"Meta tag\"]}}]', 36, 1),
(47, '2021-06-05 16:08:30.925339', '1', 'Bollywood Ringtone', 2, '[{\"changed\": {\"fields\": [\"Meta tag\"]}}]', 36, 1),
(48, '2021-06-05 16:48:37.721627', '1', '/https://www.ringtonefly.co/ ---> https://ringtonefly.co', 1, '[{\"added\": {}}]', 55, 1),
(49, '2021-06-05 16:50:16.194947', '1', '/https://www.ringtonefly.co/ ---> https://ringtonefly.co', 3, '', 55, 1),
(50, '2021-06-05 18:05:32.999720', '4', 'Contact Us', 2, '', 2, 1),
(51, '2021-06-05 18:38:30.404301', '1', 'RingtoneFly', 2, '[{\"changed\": {\"fields\": [\"Favicon icon\"]}}]', 49, 1),
(52, '2021-06-05 18:41:23.305166', '3', 'Tu Bhi Satya Jayega Ringtone', 2, '[{\"changed\": {\"fields\": [\"Download\"]}}]', 46, 1),
(53, '2021-06-05 18:42:08.201850', '3', 'Tu Bhi Satya Jayega Ringtone', 2, '[{\"changed\": {\"fields\": [\"Download\"]}}]', 46, 1),
(54, '2021-06-05 18:44:22.534308', '3', 'Tu Bhi Satya Jayega Ringtone', 2, '[{\"changed\": {\"fields\": [\"Download\"]}}]', 46, 1),
(55, '2021-06-05 18:45:49.307154', '3', 'Tu Bhi Satya Jayega Ringtone', 2, '[{\"changed\": {\"fields\": [\"Download\"]}}]', 46, 1),
(56, '2021-06-05 19:04:29.897561', '1', 'Download Ringtone New Mp3 or M4r', 2, '', 2, 1),
(57, '2021-06-05 19:06:01.761681', '1', 'Download Ringtone New Mp3 or M4r', 2, '', 2, 1),
(58, '2021-06-05 19:21:00.560609', '1', 'Download Ringtone New Mp3 or M4r', 2, '', 2, 1),
(59, '2021-06-05 19:27:08.639612', '1', 'Download Ringtone New Mp3 or M4r', 2, '', 2, 1),
(60, '2021-06-06 09:32:46.208379', '1', 'Download Ringtone New Mp3 or M4r', 2, '', 2, 1),
(61, '2021-06-06 09:36:19.000232', '1', 'Download Ringtone New Mp3 or M4r', 2, '', 2, 1),
(62, '2021-06-06 10:16:46.368982', '3', 'Tu Bhi Satya Jayega Ringtone', 3, '', 46, 1),
(63, '2021-06-06 10:16:46.371098', '2', 'Chahunga Me Tuje Hardam Ringtone', 3, '', 46, 1),
(64, '2021-06-06 10:16:46.371939', '1', 'Is Qadar Ringtone', 3, '', 46, 1),
(65, '2021-06-06 12:50:19.655075', '6', 'Bollywood Ringtone', 2, '', 2, 1),
(66, '2021-06-06 14:02:22.887152', '13', 'Tu Bhi Satya Jayega Ringtone', 2, 'The en page \"Tu Bhi Satya Jayega Ringtone\" was successfully unpublished', 2, 1),
(67, '2021-06-06 15:31:52.805520', '13', 'Tu Bhi Satya Jayega Ringtone', 2, '', 2, 1),
(68, '2021-06-06 15:33:25.547285', '2', 'Telugu Ringtones', 3, '', 36, 1),
(69, '2021-06-06 15:33:25.548408', '1', 'Bollywood Ringtone', 3, '', 36, 1),
(70, '2021-06-06 15:53:49.360249', '5', 'Categories', 2, '', 2, 1),
(71, '2021-06-06 16:02:05.053074', '5', 'Categories', 3, '', 2, 1),
(72, '2021-06-06 16:02:14.343299', '1', 'Download Ringtone New Mp3 or M4r', 2, '', 2, 1),
(73, '2021-06-06 16:02:21.772073', '3', 'About Us', 2, '', 2, 1),
(74, '2021-06-06 16:37:42.746695', '3', 'Gujarati Ringtones', 1, '[{\"added\": {}}]', 36, 1),
(75, '2021-06-06 16:39:22.018691', '18', 'Categories', 2, '', 2, 1),
(76, '2021-06-06 16:39:55.586929', '19', 'Gujarati Ringtones', 2, '', 2, 1),
(77, '2021-06-06 16:42:41.705282', '3', 'Gujarati Ringtones', 2, '[{\"changed\": {\"fields\": [\"Meta tag\"]}}]', 36, 1),
(78, '2021-06-06 16:51:43.890311', '4', 'Jodi Shyam Ne Radha Ni Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(79, '2021-06-06 16:53:04.913124', '22', 'Jodi Shyam Ne Radha Ni Ringtone Download', 2, '', 2, 1),
(80, '2021-06-06 17:19:41.122366', '19', 'Gujarati Ringtones', 2, '', 2, 1),
(81, '2021-06-06 17:22:46.186530', '1', 'Download Ringtone New Mp3 or M4r', 2, '', 2, 1),
(82, '2021-06-06 18:23:29.508836', '19', 'Gujarati Ringtones', 2, '', 2, 1),
(83, '2021-06-06 18:29:25.611718', '4', 'Contact Us', 2, '', 2, 1),
(84, '2021-06-06 18:45:27.982718', '3', 'About Us', 2, '', 2, 1),
(85, '2021-06-06 18:48:32.978989', '1', 'RingtoneFly', 2, '[{\"changed\": {\"fields\": [\"Site URL\"]}}]', 49, 1),
(86, '2021-06-06 18:50:31.549145', '13', '13', 2, '[{\"changed\": {\"fields\": [\"Home page meta-tag\"]}}]', 47, 1),
(87, '2021-06-06 18:52:12.675530', '13', '13', 2, '[{\"changed\": {\"fields\": [\"Canonicalization url\", \"Noindex for current website ?\", \"Common Description\"]}}]', 47, 1),
(88, '2021-06-06 18:54:20.544210', '4', 'Jodi Shyam Ne Radha Ni Ringtone Download', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 46, 1),
(89, '2021-06-06 19:11:05.401614', '5', 'Ek Vaar Shyam Tame Radha Ne Kahido Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(90, '2021-06-06 19:12:01.702897', '24', 'Ek Vaar Shyam Tame Radha Ne Kahido Ringtone Download', 2, '', 2, 1),
(91, '2021-06-06 19:18:20.251479', '6', 'Mara Ghat Ma Birajta Shrinathji Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(92, '2021-06-06 19:20:26.534699', '26', 'Mara Ghat Ma Birajta Shrinathji Ringtone Download', 2, '', 2, 1),
(93, '2021-06-06 19:22:44.591433', '3', 'About Us', 2, '', 2, 1),
(94, '2021-06-06 19:27:59.320964', '7', 'Tara Namni Chundadi Odhi Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(95, '2021-06-06 19:28:37.215267', '28', 'Tara Namni Chundadi Odhi Ringtone Download', 2, '', 2, 1),
(96, '2021-06-06 19:37:00.460039', '8', 'Rudi Rite Jivo Ruda Karjo Kam Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(97, '2021-06-06 19:37:54.096518', '30', 'Rudi Rite Jivo Ruda Karjo Kam Ringtone Download', 2, '', 2, 1),
(98, '2021-06-06 19:58:00.514033', '9', 'Bairu Gayu Piyar Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(99, '2021-06-06 20:00:37.823839', '10', 'Bewafa Sanam Gujarati Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(100, '2021-06-06 20:01:39.341337', '11', 'Dholida Dhol Re Vagad Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(101, '2021-06-06 20:02:48.321907', '12', 'Dur Thi Salam Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(102, '2021-06-06 20:14:59.426421', '10', 'Bewafa Sanam Gujarati Ringtone Download', 2, '[{\"changed\": {\"fields\": [\"Android ringtone\", \"Iphone ringtone\"]}}]', 46, 1),
(103, '2021-06-06 20:15:58.148634', '32', 'Bairu Gayu Piyar Ringtone Download', 2, '', 2, 1),
(104, '2021-06-06 20:16:37.976939', '33', 'Bewafa Sanam Gujarati Ringtone Download', 2, '', 2, 1),
(105, '2021-06-06 20:16:58.971556', '34', 'Dholida Dhol Re Vagad Ringtone Download', 2, '', 2, 1),
(106, '2021-06-06 20:17:17.212991', '35', 'Dur Thi Salam Ringtone Download', 2, '', 2, 1),
(107, '2021-06-06 20:21:53.073636', '13', 'Dwarkadhish Ji Aarti Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(108, '2021-06-06 20:24:11.840725', '14', 'Gomda Nu Dil Ringtone download', 1, '[{\"added\": {}}]', 46, 1),
(109, '2021-06-06 20:30:05.555168', '15', 'Mohabbat Khape Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(110, '2021-06-06 20:35:30.294203', '16', 'Leri La La Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(111, '2021-06-06 20:36:50.571418', '40', 'Dwarkadhish Ji Aarti Ringtone Download', 2, '', 2, 1),
(112, '2021-06-06 20:37:11.358451', '41', 'Gomda Nu Dil Ringtone download', 2, '', 2, 1),
(113, '2021-06-06 20:37:30.675582', '42', 'Mohabbat Khape Ringtone Download', 2, '', 2, 1),
(114, '2021-06-06 20:37:57.385505', '43', 'Leri La La Ringtone Download', 2, '', 2, 1),
(115, '2021-06-06 20:40:20.366464', '1', 'Download Ringtone New Mp3 or M4r', 2, '', 2, 1),
(116, '2021-06-06 20:53:15.596648', '1', 'RingtoneFly', 2, '[{\"changed\": {\"fields\": [\"Google captcha webkey\"]}}]', 49, 1),
(117, '2021-06-06 20:55:07.395175', '1', 'RingtoneFly', 2, '[{\"changed\": {\"fields\": [\"Google captcha webkey\"]}}]', 49, 1),
(118, '2021-06-06 20:55:43.334655', '1', 'RingtoneFly', 2, '[{\"changed\": {\"fields\": [\"Google captcha webkey\"]}}]', 49, 1),
(119, '2021-06-06 20:56:20.157731', '1', 'RingtoneFly', 2, '[{\"changed\": {\"fields\": [\"Google captcha webkey\"]}}]', 49, 1),
(120, '2021-06-07 05:03:28.733714', '17', 'Hal Kana Mane Dwarika Dekhad Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(121, '2021-06-07 05:05:13.341971', '48', 'Hal Kana Mane Dwarika Dekhad Ringtone Download', 2, '', 2, 1),
(122, '2021-06-07 05:54:44.540358', '33', '-', 2, '[{\"added\": {\"name\": \"Footer hyperlink\", \"object\": \"Home\"}}, {\"added\": {\"name\": \"Footer hyperlink\", \"object\": \"About\"}}, {\"added\": {\"name\": \"Footer hyperlink\", \"object\": \"Contact Us\"}}]', 44, 1),
(123, '2021-06-07 07:22:58.192028', '18', 'Muj Gareeb Ne Bhuli Gayi Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(124, '2021-06-07 07:23:50.656718', '50', 'Muj Gareeb Ne Bhuli Gayi Ringtone Download', 2, '', 2, 1),
(125, '2021-06-07 12:48:12.097557', '19', 'Haso To Khara Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(126, '2021-06-07 12:49:02.850090', '52', 'Haso To Khara Ringtone Download', 2, '', 2, 1),
(127, '2021-06-08 09:53:30.321195', '20', 'Char Bangdi Wali Audi Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(128, '2021-06-08 09:53:57.890642', '54', 'Char Bangdi Wali Audi Ringtone Download', 2, '', 2, 1),
(129, '2021-06-08 14:52:21.791523', '21', 'Dholida Dhol Dhimo Navratri Garba Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(130, '2021-06-08 14:54:13.648880', '56', 'Dholida Dhol Dhimo Navratri Garba Ringtone Download', 2, '', 2, 1),
(131, '2021-06-09 04:48:13.791565', '22', 'Nayan Ne Bandh Rakhi Ne Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(132, '2021-06-09 04:49:02.334176', '58', 'Nayan Ne Bandh Rakhi Ne Ringtone Download', 2, '', 2, 1),
(133, '2021-06-09 04:55:28.614193', '23', 'Bhuli Nathi Ke Tane Nathi Bhulvani Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(134, '2021-06-09 04:58:38.494526', '24', 'Mata Amba Garbo Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(135, '2021-06-09 04:59:12.845830', '60', 'Bhuli Nathi Ke Tane Nathi Bhulvani Ringtone Download', 2, '', 2, 1),
(136, '2021-06-09 04:59:49.019327', '61', 'Mata Amba Garbo Ringtone Download', 2, '', 2, 1),
(137, '2021-06-09 14:31:35.094038', '19', 'Gujarati Ringtones', 2, '', 2, 1),
(138, '2021-06-12 07:32:42.051931', '19', 'Gujarati Ringtones', 2, '[{\"changed\": {\"fields\": [\"Page Title\"]}}]', 2, 1),
(139, '2021-06-12 07:35:24.113689', '1', 'www.ringtonefly.co', 2, '[{\"changed\": {\"fields\": [\"Domain name\"]}}]', 9, 1),
(140, '2021-06-12 07:35:40.283972', '1', 'www.ringtonefly.co', 2, '[{\"changed\": {\"fields\": [\"Display name\"]}}]', 9, 1),
(141, '2021-06-13 13:05:32.661073', '19', 'Gujarati Ringtones', 2, '', 2, 1),
(142, '2021-06-13 14:34:30.199217', '18', 'Categories', 3, '', 2, 1),
(143, '2021-06-13 15:13:25.667905', '2', '/https://www.ringtonefly.co/category/ ---> https://www.ringtonefly.co/', 1, '[{\"added\": {}}]', 55, 1),
(144, '2021-06-13 15:14:10.494140', '2', '/category/ ---> /', 2, '[{\"changed\": {\"fields\": [\"Redirect from\", \"Redirect to\"]}}]', 55, 1),
(145, '2021-06-13 15:15:16.480111', '3', '/category/gujarati-ringtones/ ---> /', 1, '[{\"added\": {}}]', 55, 1),
(146, '2021-06-13 15:17:01.559716', '4', '/category/gujarati-ringtones/jodi-shyam-ne-radha-ni-ringtone-download/ ---> /jodi-shyam-ne-radha-ni-ringtone-download/', 1, '[{\"added\": {}}]', 55, 1),
(147, '2021-06-13 15:18:19.891109', '5', '/category/gujarati-ringtones/ek-vaar-shyam-tame-radha-ne-kahido-ringtone-download/ ---> /ek-vaar-shyam-tame-radha-ne-kahido-ringtone-download/', 1, '[{\"added\": {}}]', 55, 1),
(148, '2021-06-13 15:18:50.625399', '6', '/category/gujarati-ringtones/mara-ghat-ma-birajta-shrinathji-ringtone-download/ ---> /mara-ghat-ma-birajta-shrinathji-ringtone-download/', 1, '[{\"added\": {}}]', 55, 1),
(149, '2021-06-13 15:19:20.463057', '7', '/category/gujarati-ringtones/tara-namni-chundadi-odhi-ringtone-download/ ---> /tara-namni-chundadi-odhi-ringtone-download/', 1, '[{\"added\": {}}]', 55, 1),
(150, '2021-06-13 15:19:57.370620', '8', '/category/gujarati-ringtones/rudi-rite-jivo-ruda-karjo-kam-ringtone-download/ ---> /rudi-rite-jivo-ruda-karjo-kam-ringtone-download/', 1, '[{\"added\": {}}]', 55, 1),
(151, '2021-06-13 15:21:49.255884', '9', '/category/gujarati-ringtones/bairu-gayu-piyar-ringtone-download/ ---> /bairu-gayu-piyar-ringtone-download/', 1, '[{\"added\": {}}]', 55, 1),
(152, '2021-06-13 15:22:14.506696', '10', '/category/gujarati-ringtones/bewafa-sanam-gujarati-ringtone-download/ ---> /bewafa-sanam-gujarati-ringtone-download/', 1, '[{\"added\": {}}]', 55, 1),
(153, '2021-06-13 15:22:48.710209', '11', '/category/gujarati-ringtones/dholida-dhol-re-vagad-ringtone-download/ ---> /dholida-dhol-re-vagad-ringtone-download/', 1, '[{\"added\": {}}]', 55, 1),
(154, '2021-06-13 15:23:15.291148', '12', '/category/gujarati-ringtones/dur-thi-salam-ringtone-download/ ---> /dur-thi-salam-ringtone-download/', 1, '[{\"added\": {}}]', 55, 1),
(155, '2021-06-13 15:24:24.044747', '13', '/category/gujarati-ringtones/dwarkadhish-ji-aarti-ringtone-download/ ---> /dwarkadhish-ji-aarti-ringtone-download/', 1, '[{\"added\": {}}]', 55, 1),
(156, '2021-06-13 15:25:03.789150', '14', '/category/gujarati-ringtones/gomda-nu-dil-ringtone-download/ ---> /gomda-nu-dil-ringtone-download/', 1, '[{\"added\": {}}]', 55, 1),
(157, '2021-06-13 15:25:56.534455', '15', '/category/gujarati-ringtones/mohabbat-khape-ringtone-download/ ---> /mohabbat-khape-ringtone-download/', 1, '[{\"added\": {}}]', 55, 1),
(158, '2021-06-13 15:26:44.100142', '16', '/category/gujarati-ringtones/leri-la-la-ringtone-download/ ---> /leri-la-la-ringtone-download/', 1, '[{\"added\": {}}]', 55, 1),
(159, '2021-06-13 15:27:11.788059', '17', '/category/gujarati-ringtones/hal-kana-mane-dwarika-dekhad-ringtone-download/ ---> /hal-kana-mane-dwarika-dekhad-ringtone-download/', 1, '[{\"added\": {}}]', 55, 1),
(160, '2021-06-13 15:27:41.085277', '18', '/category/gujarati-ringtones/muj-gareeb-ne-bhuli-gayi-ringtone-download/ ---> /muj-gareeb-ne-bhuli-gayi-ringtone-download/', 1, '[{\"added\": {}}]', 55, 1),
(161, '2021-06-13 15:28:05.533570', '19', '/category/gujarati-ringtones/haso-to-khara-ringtone-download/ ---> /haso-to-khara-ringtone-download/', 1, '[{\"added\": {}}]', 55, 1),
(162, '2021-06-13 15:28:35.293166', '20', '/category/gujarati-ringtones/char-bangdi-wali-audi-ringtone-download/ ---> /char-bangdi-wali-audi-ringtone-download/', 1, '[{\"added\": {}}]', 55, 1),
(163, '2021-06-13 15:29:21.399668', '21', '/category/gujarati-ringtones/dholida-dhol-dhimo-navratri-garba-ringtone-download/ ---> /dholida-dhol-dhimo-navratri-garba-ringtone-download/', 1, '[{\"added\": {}}]', 55, 1),
(164, '2021-06-13 15:30:12.276673', '22', '/category/gujarati-ringtones/nayan-ne-bandh-rakhine-gujarati-ringtone-download/ ---> /nayan-ne-bandh-rakhine-gujarati-ringtone-download/', 1, '[{\"added\": {}}]', 55, 1),
(165, '2021-06-13 15:31:18.476009', '23', '/category/gujarati-ringtones/bhuli-nathi-ke-tane-nathi-bhulvani-ringtone-download/ ---> /bhuli-nathi-ke-tane-nathi-bhulvani-ringtone-download/', 1, '[{\"added\": {}}]', 55, 1),
(166, '2021-06-13 15:31:53.167639', '24', '/category/gujarati-ringtones/mata-amba-garbo-ringtone-download/ ---> /mata-amba-garbo-ringtone-download/', 1, '[{\"added\": {}}]', 55, 1),
(167, '2021-06-13 15:33:38.891873', '3', '/category/gujarati-ringtones/ ---> /gujarati-ringtones/', 2, '[{\"changed\": {\"fields\": [\"Redirect to\"]}}]', 55, 1),
(168, '2021-06-13 15:34:42.373028', '3', '/category/gujarati-ringtones/ ---> /gujarati-ringtones/', 2, '[]', 55, 1),
(169, '2021-06-13 15:35:22.263501', '3', '/category/gujarati-ringtones/ ---> /gujarati-ringtones/', 3, '', 55, 1),
(170, '2021-06-13 15:36:11.805755', '25', '/category/gujarati-ringtones/ ---> /', 1, '[{\"added\": {}}]', 55, 1),
(171, '2021-06-13 17:29:53.572710', '23', 'Bhuli Nathi Ke Tane Nathi Bhulvani Ringtone Download', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 46, 1),
(172, '2021-06-13 17:30:53.366113', '21', 'Dholida Dhol Dhimo Navratri Garba Ringtone Download', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 46, 1),
(173, '2021-06-13 17:31:31.353973', '22', 'Nayan Ne Bandh Rakhi Ne Ringtone Download', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 46, 1),
(174, '2021-06-13 17:33:46.440644', '13', '13', 2, '[{\"changed\": {\"fields\": [\"Common Description\"]}}]', 47, 1),
(175, '2021-06-13 17:44:28.253142', '19', 'Gujarati Ringtones', 2, '', 2, 1),
(176, '2021-06-15 15:10:49.906610', '4', 'Rajasthani Ringtones', 1, '[{\"added\": {}}]', 36, 1),
(177, '2021-06-15 15:13:22.798808', '64', 'Rajasthani Ringtones', 2, '[{\"changed\": {\"fields\": [\"Page Title\"]}}]', 2, 1),
(178, '2021-06-15 15:13:50.161661', '64', 'Rajasthani Ringtones', 2, '', 2, 1),
(179, '2021-06-15 15:28:22.263216', '64', 'Rajasthani Ringtones', 2, '', 2, 1),
(180, '2021-06-15 15:35:32.859103', '64', 'Rajasthani Ringtones', 2, '', 2, 1),
(181, '2021-06-15 15:38:46.894570', '64', 'Rajasthani Ringtones', 2, '', 2, 1),
(182, '2021-06-15 17:10:54.674670', '25', 'Banni Tharo Chand So Mukhdo Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(183, '2021-06-15 17:14:41.039137', '26', 'Lahariyo Ra 900 Rupiya Rokda Sa Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(184, '2021-06-15 17:15:35.686816', '66', 'Banni Tharo Chand So Mukhdo Ringtone Download', 2, '', 2, 1),
(185, '2021-06-15 17:20:38.407180', '25', 'Banni Tharo Chand So Mukhdo Ringtone Download', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 46, 1),
(186, '2021-06-15 17:21:13.098207', '26', 'Lahariyo Ra 900 Rupiya Rokda Sa Ringtone Download', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 46, 1),
(187, '2021-06-15 17:21:34.184772', '67', 'Lahariyo Ra 900 Rupiya Rokda Sa Ringtone Download', 2, '', 2, 1),
(188, '2021-06-16 03:17:08.647904', '27', 'Rajasthani Folk Tune Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(189, '2021-06-16 03:17:46.426054', '70', 'Rajasthani Folk Tune Ringtone Download', 2, '', 2, 1),
(190, '2021-06-16 03:30:13.394517', '28', 'Piya Aao To Mande Ri Baat kar Liya Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(191, '2021-06-16 03:30:46.291372', '72', 'Piya Aao To Mande Ri Baat kar Liya Ringtone Download', 2, '', 2, 1),
(192, '2021-06-16 03:52:50.635669', '29', 'Hariyala Banna Rajasthani Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(193, '2021-06-16 03:53:52.582226', '74', 'Hariyala Banna Rajasthani Ringtone Download', 2, '', 2, 1),
(194, '2021-06-17 15:34:50.610520', '13', '13', 2, '[{\"changed\": {\"fields\": [\"Home page meta-tag\"]}}]', 47, 1),
(195, '2021-06-18 03:53:50.943580', '30', 'Kajaliyo Rajasthani Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(196, '2021-06-18 03:56:07.900695', '76', 'Kajaliyo Rajasthani Ringtone Download', 2, '', 2, 1),
(197, '2021-06-18 04:11:13.565560', '31', 'Rajasthani flute ringtone download', 1, '[{\"added\": {}}]', 46, 1),
(198, '2021-06-18 04:12:26.440978', '78', 'Rajasthani flute ringtone download', 2, '', 2, 1),
(199, '2021-06-19 13:51:07.576542', '1', 'ringtonefly', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 5, 1),
(200, '2021-06-19 14:15:45.344195', '5', 'iPhone Ringtones', 1, '[{\"added\": {}}]', 36, 1),
(201, '2021-06-19 14:20:27.545287', '80', 'iPhone Ringtones', 2, '[{\"changed\": {\"fields\": [\"Page Title\"]}}]', 2, 1),
(202, '2021-06-19 14:20:52.929557', '80', 'iPhone Ringtones', 2, '', 2, 1),
(203, '2021-06-19 15:00:18.479676', '80', 'iPhone Ringtones', 2, '', 2, 1),
(204, '2021-06-19 15:20:02.153382', '32', 'iPhone Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(205, '2021-06-19 15:23:39.730662', '82', 'iPhone Ringtone Download', 2, '', 2, 1),
(206, '2021-06-19 16:29:11.070353', '33', 'iPhone X Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(207, '2021-06-19 16:29:54.273163', '84', 'iPhone X Ringtone Download', 2, '', 2, 1),
(208, '2021-06-19 16:38:25.014975', '34', 'iPhone X Remix Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(209, '2021-06-19 16:39:09.655049', '86', 'iPhone X Remix Ringtone Download', 2, '', 2, 1),
(210, '2021-06-19 16:43:29.571551', '32', 'iPhone Ringtone Download', 2, '[{\"changed\": {\"fields\": [\"Iphone ringtone\"]}}]', 46, 1),
(211, '2021-06-19 16:43:45.675725', '33', 'iPhone X Ringtone Download', 2, '[{\"changed\": {\"fields\": [\"Iphone ringtone\"]}}]', 46, 1),
(212, '2021-06-19 16:44:01.125324', '34', 'iPhone X Remix Ringtone Download', 2, '[{\"changed\": {\"fields\": [\"Iphone ringtone\"]}}]', 46, 1),
(213, '2021-06-19 16:56:56.137026', '35', 'iPhone Dubstep Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(214, '2021-06-19 16:57:46.409405', '88', 'iPhone Dubstep Ringtone Download', 2, '', 2, 1),
(215, '2021-06-19 17:10:15.427235', '36', 'iPhone X Faded Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(216, '2021-06-19 17:11:19.760647', '37', 'iPhone Remix Lol Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(217, '2021-06-19 17:11:42.861919', '90', 'iPhone X Faded Ringtone Download', 2, '', 2, 1),
(218, '2021-06-19 17:12:09.302538', '91', 'iPhone Remix Lol Ringtone Download', 2, '', 2, 1),
(219, '2021-06-19 17:15:49.720662', '38', 'iPhone X Taki Taki Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(220, '2021-06-19 17:18:48.954343', '39', 'iPhone X Mi Gente Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(221, '2021-06-19 17:21:09.467232', '40', 'iPhone Trap Remix Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(222, '2021-06-19 17:22:39.820969', '94', 'iPhone X Taki Taki Ringtone Download', 2, '', 2, 1),
(223, '2021-06-19 17:23:09.394345', '95', 'iPhone X Mi Gente Ringtone Download', 2, '', 2, 1),
(224, '2021-06-19 17:25:40.628869', '96', 'iPhone Trap Remix Ringtone Download', 2, '', 2, 1),
(225, '2021-06-19 17:25:51.813634', '41', 'iPhone X Despacito Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(226, '2021-06-19 17:26:48.272174', '100', 'iPhone X Despacito Ringtone Download', 2, '', 2, 1),
(227, '2021-06-19 17:29:06.333480', '42', 'iPhone X Shape of You Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(228, '2021-06-19 17:32:18.446414', '102', 'iPhone X Shape of You Ringtone Download', 2, '', 2, 1),
(229, '2021-06-19 17:32:19.634514', '43', 'iPhone Marimba Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(230, '2021-06-19 17:34:52.420952', '44', 'iPhone Original Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(231, '2021-06-19 17:35:19.004303', '104', 'iPhone Marimba Ringtone Download', 2, '', 2, 1),
(232, '2021-06-19 17:35:55.881146', '105', 'iPhone Original Ringtone Download', 2, '', 2, 1),
(233, '2021-06-19 17:44:45.985352', '104', 'iPhone Marimba Ringtone Download', 2, '', 2, 1),
(234, '2021-06-20 07:04:56.625803', '108', 'Privacy Policy', 1, '[{\"added\": {}}]', 2, 1),
(235, '2021-06-20 07:06:38.424570', '108', 'Privacy Policy', 2, '', 2, 1),
(236, '2021-06-20 07:13:34.818512', '108', 'Privacy Policy', 2, '', 2, 1),
(237, '2021-06-20 07:14:53.991905', '108', 'Privacy Policy', 2, '', 2, 1),
(238, '2021-06-20 07:16:00.997463', '110', 'Disclaimer', 1, '[{\"added\": {}}]', 2, 1),
(239, '2021-06-20 07:25:40.233829', '110', 'Disclaimer', 2, '', 2, 1),
(240, '2021-06-20 07:31:17.668077', '33', '-', 2, '[{\"added\": {\"name\": \"Footer hyperlink\", \"object\": \"Privacy Policy\"}}, {\"added\": {\"name\": \"Footer hyperlink\", \"object\": \"Disclaimer\"}}]', 44, 1),
(241, '2021-06-20 07:42:57.279990', '112', 'Terms & Conditions', 1, '[{\"added\": {}}]', 2, 1),
(242, '2021-06-20 07:48:13.896386', '112', 'Terms & Conditions', 2, '', 2, 1),
(243, '2021-06-20 07:55:50.719271', '114', 'DMCA', 1, '[{\"added\": {}}]', 2, 1),
(244, '2021-06-20 07:56:40.949474', '114', 'DMCA', 2, '', 2, 1),
(245, '2021-06-20 08:08:49.650584', '114', 'DMCA', 2, '', 2, 1),
(246, '2021-06-20 08:11:34.989014', '114', 'DMCA', 2, '', 2, 1),
(247, '2021-06-20 08:13:55.530673', '33', '-', 2, '[{\"added\": {\"name\": \"Footer hyperlink\", \"object\": \"DMCA\"}}, {\"added\": {\"name\": \"Footer hyperlink\", \"object\": \"Terms & Conditions\"}}]', 44, 1),
(248, '2021-06-20 16:02:33.224899', '1', 'RingtoneFly', 2, '[{\"changed\": {\"fields\": [\"Analytics id\"]}}]', 49, 1),
(249, '2021-06-20 16:57:24.065227', '8', 'Nawazuddin Sidhqui', 3, '', 39, 1),
(250, '2021-06-20 16:57:24.067362', '7', 'Chetan Darji', 3, '', 39, 1),
(251, '2021-06-20 16:57:24.068308', '6', 'Hitesh', 3, '', 39, 1),
(252, '2021-06-20 16:57:24.069187', '5', 'Dhirz Malviya', 3, '', 39, 1),
(253, '2021-06-20 16:57:24.070070', '4', 'Deepu', 3, '', 39, 1),
(254, '2021-06-20 16:57:24.070938', '3', 'Rahul Kumar', 3, '', 39, 1),
(255, '2021-06-20 16:57:24.071825', '2', 'Chetan Darji', 3, '', 39, 1),
(256, '2021-06-20 16:57:24.072682', '1', 'Chetan Darji', 3, '', 39, 1),
(257, '2021-06-23 12:37:23.333983', '45', 'Thade Rahiyo Rajasthani Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(258, '2021-06-23 12:38:34.288701', '116', 'Thade Rahiyo Rajasthani Ringtone Download', 2, '', 2, 1),
(259, '2021-06-23 12:43:22.426183', '1', 'Download Ringtone New Mp3 or M4r', 2, '', 2, 1),
(260, '2021-06-26 13:12:11.462602', '6', 'Krishna Ringtones', 1, '[{\"added\": {}}]', 36, 1),
(261, '2021-06-26 13:20:24.624224', '118', 'Krishna Ringtones', 2, '[{\"changed\": {\"fields\": [\"Page Title\"]}}]', 2, 1),
(262, '2021-06-26 13:20:46.483336', '118', 'Krishna Ringtones', 2, '', 2, 1),
(263, '2021-06-26 13:56:09.759165', '118', 'Krishna Ringtones', 2, '', 2, 1),
(264, '2021-06-26 14:15:31.964921', '13', '13', 2, '[{\"changed\": {\"fields\": [\"Common Description\"]}}]', 47, 1),
(265, '2021-06-26 14:19:25.997347', '46', 'Krishna Flute Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(266, '2021-06-26 14:21:34.047264', '120', 'Krishna Flute Ringtone Download', 2, '', 2, 1),
(267, '2021-06-26 14:28:05.853719', '47', 'Nice Krishna Flute Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(268, '2021-06-26 14:31:28.185559', '48', 'Radha Krishna Flute Serial Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(269, '2021-06-26 14:35:57.146495', '118', 'Krishna Ringtones', 2, '', 2, 1),
(270, '2021-06-26 14:41:48.810168', '122', 'Nice Krishna Flute Ringtone Download', 2, '', 2, 1),
(271, '2021-06-26 14:42:18.157062', '123', 'Radha Krishna Flute Serial Ringtone Download', 2, '', 2, 1),
(272, '2021-06-26 14:51:43.259924', '49', 'Shri Krishna Govind Hare Murari Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(273, '2021-06-26 14:54:51.911032', '50', 'Hare Rama Hare Krishna Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(274, '2021-06-26 14:57:18.490144', '51', 'Mahabharat Krishna Flute Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(275, '2021-06-26 14:59:34.765720', '52', 'Kaun Kehate Hai Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(276, '2021-06-26 15:03:16.193939', '53', 'Meethi Meethi Mere Sanware Ki Banshi Baaje Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(277, '2021-06-26 15:06:46.006299', '54', 'Radha Kaise Na Jale Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(278, '2021-06-26 15:10:00.441737', '55', 'Hey Gopal Krishna Karu Aarti Teri Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(279, '2021-06-26 15:14:54.779229', '56', 'O Kanha Ab to Murli Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(280, '2021-06-26 15:17:30.281823', '57', 'Radha Rani Laage Krishna Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(281, '2021-06-26 15:21:08.158349', '58', 'Raghupati Raghava Krishna Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(282, '2021-06-26 15:25:21.761167', '59', 'Sanwali Surat Pe Dil Mohan Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(283, '2021-06-26 15:28:30.687118', '60', 'Radhe Radhe Barsane Wali Radhe Krishna Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(284, '2021-06-26 15:28:59.105208', '126', 'Shri Krishna Govind Hare Murari Ringtone Download', 2, '', 2, 1),
(285, '2021-06-26 15:29:18.286529', '127', 'Hare Rama Hare Krishna Ringtone Download', 2, '', 2, 1),
(286, '2021-06-26 15:29:34.650944', '137', 'Radhe Radhe Barsane Wali Radhe Krishna Ringtone Download', 2, '', 2, 1),
(287, '2021-06-26 15:29:57.719718', '128', 'Mahabharat Krishna Flute Ringtone Download', 2, '', 2, 1),
(288, '2021-06-26 15:30:23.070712', '129', 'Kaun Kehate Hai Ringtone Download', 2, '', 2, 1),
(289, '2021-06-26 15:30:43.588030', '130', 'Meethi Meethi Mere Sanware Ki Banshi Baaje Ringtone Download', 2, '', 2, 1),
(290, '2021-06-26 15:31:01.299154', '131', 'Radha Kaise Na Jale Ringtone Download', 2, '', 2, 1),
(291, '2021-06-26 15:31:19.251913', '132', 'Hey Gopal Krishna Karu Aarti Teri Ringtone Download', 2, '', 2, 1),
(292, '2021-06-26 15:32:10.775670', '133', 'O Kanha Ab to Murli Ringtone Download', 2, '', 2, 1),
(293, '2021-06-26 15:33:27.950061', '134', 'Radha Rani Laage Krishna Ringtone Download', 2, '', 2, 1),
(294, '2021-06-26 15:33:46.110080', '135', 'Raghupati Raghava Krishna Ringtone Download', 2, '', 2, 1),
(295, '2021-06-26 15:34:03.831871', '136', 'Sanwali Surat Pe Dil Mohan Ringtone Download', 2, '', 2, 1),
(296, '2021-07-01 11:59:55.585073', '3', 'About Us', 2, '', 2, 1),
(297, '2021-07-08 15:04:48.124127', '1', 'RingtoneFly', 2, '[{\"changed\": {\"fields\": [\"Analytics id\"]}}]', 49, 1),
(298, '2021-07-11 16:28:02.447391', '1', 'RingtoneFly', 2, '[{\"changed\": {\"fields\": [\"Google captcha webkey\"]}}]', 49, 1),
(299, '2021-07-11 16:33:10.724775', '1', 'RingtoneFly', 2, '[{\"changed\": {\"fields\": [\"Google captcha webkey\"]}}]', 49, 1),
(300, '2021-07-11 16:39:59.252031', '11', 'hi', 3, '', 39, 1),
(301, '2021-07-11 16:39:59.253174', '10', 'Rahul Kumar', 3, '', 39, 1),
(302, '2021-07-11 16:39:59.253991', '9', 'Deepu', 3, '', 39, 1),
(303, '2021-07-11 18:16:16.218870', '0', 'Limitation', 1, '[{\"added\": {}}]', 90, 1),
(304, '2021-07-11 18:23:42.986031', '0', 'Limitation', 2, '[{\"changed\": {\"fields\": [\"Popular container\", \"New container\", \"Top 50 container\"]}}]', 90, 1),
(305, '2021-07-11 18:44:40.781916', '60', 'Radhe Radhe Barsane Wali Radhe Krishna Ringtone Download', 2, '[{\"changed\": {\"fields\": [\"Like\", \"Download\"]}}]', 46, 1),
(306, '2021-07-11 18:51:22.411740', '0', 'Limitation', 2, '[{\"changed\": {\"fields\": [\"Popular container\", \"New container\", \"Top 50 container\", \"Category page\", \"Individual ringtone page\"]}}]', 90, 1),
(307, '2021-07-11 18:56:12.316036', '13', '13', 2, '[{\"changed\": {\"fields\": [\"Home page meta-tag\"]}}]', 47, 1),
(308, '2021-07-11 19:01:15.988516', '13', '13', 2, '[{\"changed\": {\"fields\": [\"Home page meta-tag\"]}}]', 47, 1),
(309, '2021-07-11 19:06:23.672582', '13', '13', 2, '[{\"changed\": {\"fields\": [\"Home page meta-tag\"]}}]', 47, 1),
(310, '2021-07-11 19:07:52.827110', '0', 'Limitation', 2, '[{\"changed\": {\"fields\": [\"Popular container\", \"New container\", \"Top 50 container\", \"Category page\", \"Individual ringtone page\"]}}]', 90, 1),
(311, '2021-07-12 04:21:28.865253', '3', 'About Us', 2, '', 2, 1),
(312, '2021-07-12 07:13:38.436924', '1', 'Limitation', 1, '[{\"added\": {}}]', 90, 1),
(313, '2021-07-12 08:27:06.603888', '1', 'Download Ringtone New Mp3 or M4r', 2, '', 2, 1),
(314, '2021-07-13 04:36:17.435164', '25', '/category/gujarati-ringtones/ ---> /', 2, '[{\"changed\": {\"fields\": [\"Redirect from\"]}}]', 55, 1),
(315, '2021-07-13 04:37:37.916176', '25', '/category/gujarati-ringtones/ ---> /', 2, '[{\"changed\": {\"fields\": [\"Redirect from\"]}}]', 55, 1),
(316, '2021-07-16 12:04:27.954198', '7', 'Telugu Ringtones', 1, '[{\"added\": {}}]', 36, 1),
(317, '2021-07-16 12:16:53.230456', '150', 'Telugu Ringtones', 2, '[{\"changed\": {\"fields\": [\"Page Title\"]}}]', 2, 1),
(318, '2021-07-16 12:17:37.300748', '150', 'Telugu Ringtones', 2, '', 2, 1),
(319, '2021-07-16 12:40:08.243349', '150', 'Telugu Ringtones', 2, '', 2, 1),
(320, '2021-07-16 12:41:52.112177', '150', 'Telugu Ringtones', 2, '', 2, 1),
(321, '2021-07-16 12:44:39.654141', '150', 'Telugu Ringtones', 2, '', 2, 1),
(322, '2021-07-16 12:55:17.978824', '61', 'Saranga Dariya Telugu Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(323, '2021-07-16 12:56:32.016769', '152', 'Saranga Dariya Telugu Ringtone Download', 2, '', 2, 1),
(324, '2021-07-16 13:24:25.661697', '62', 'Naa Bc Center Lu Telugu Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(325, '2021-07-16 13:24:55.251550', '154', 'Naa Bc Center Lu Telugu Ringtone Download', 2, '', 2, 1),
(326, '2021-07-16 13:36:19.423670', '63', 'O Sakkanoda Telugu Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(327, '2021-07-16 13:36:54.796154', '156', 'O Sakkanoda Telugu Ringtone Download', 2, '', 2, 1),
(328, '2021-07-16 13:42:34.787084', '64', 'Kanaka Durga Telugu Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(329, '2021-07-16 13:43:21.084396', '158', 'Kanaka Durga Telugu Ringtone Download', 2, '', 2, 1),
(330, '2021-07-16 13:47:36.197418', '65', 'Ey Pataakey Telugu Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(331, '2021-07-16 13:48:14.949965', '160', 'Ey Pataakey Telugu Ringtone Download', 2, '', 2, 1),
(332, '2021-07-17 10:46:59.453033', '66', 'Nee Vente Nenunte Instrumental Telugu Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(333, '2021-07-17 10:49:58.024861', '67', 'Paata Paadada Mounam Telugu Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(334, '2021-07-17 10:51:17.166962', '68', 'Avunanna Nuv Telugu Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(335, '2021-07-17 10:54:59.497717', '69', 'Tholi Prema Love Dailouge Telugu Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(336, '2021-07-17 10:56:41.813458', '70', 'Swagatham Krishna Telugu Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(337, '2021-07-17 10:57:32.800210', '162', 'Nee Vente Nenunte Instrumental Telugu Ringtone Download', 2, '', 2, 1),
(338, '2021-07-17 10:57:53.315289', '163', 'Paata Paadada Mounam Telugu Ringtone Download', 2, '', 2, 1),
(339, '2021-07-17 10:58:16.449225', '164', 'Avunanna Nuv Telugu Ringtone Download', 2, '', 2, 1),
(340, '2021-07-17 10:58:40.951954', '166', 'Swagatham Krishna Telugu Ringtone Download', 2, '', 2, 1),
(341, '2021-07-17 10:59:02.357293', '165', 'Tholi Prema Love Dailouge Telugu Ringtone Download', 2, '', 2, 1),
(342, '2021-07-21 13:41:46.402560', '19', 'Gujarati Ringtones', 2, '', 2, 1),
(343, '2021-07-21 13:53:29.293586', '64', 'Rajasthani Ringtones', 2, '', 2, 1),
(344, '2021-07-21 13:56:10.322671', '80', 'iPhone Ringtones', 2, '', 2, 1),
(345, '2021-07-21 13:58:51.026118', '118', 'Krishna Ringtones', 2, '', 2, 1),
(346, '2021-07-21 14:00:14.749744', '118', 'Krishna Ringtones', 2, '', 2, 1),
(347, '2021-07-21 14:29:19.860700', '4', 'Contact Us', 2, '', 2, 1),
(348, '2021-07-21 14:42:55.549407', '33', '-', 2, '[{\"changed\": {\"fields\": [\"Copyright line\"]}}]', 44, 1),
(349, '2021-07-21 14:44:12.731977', '33', '-', 2, '[{\"changed\": {\"fields\": [\"Copyright line\"]}}]', 44, 1),
(350, '2021-07-21 14:53:14.290685', '33', '-', 2, '[{\"changed\": {\"fields\": [\"Copyright line\"]}}]', 44, 1),
(351, '2021-07-21 14:54:49.058454', '33', '-', 2, '[{\"changed\": {\"fields\": [\"Copyright line\"]}}]', 44, 1),
(352, '2021-07-21 14:55:00.757901', '4', 'Contact Us', 2, '', 2, 1),
(353, '2021-07-21 14:55:44.715782', '33', '-', 2, '[{\"changed\": {\"fields\": [\"Copyright line\"]}}]', 44, 1),
(354, '2021-07-21 15:10:47.400167', '114', 'DMCA', 2, '', 2, 1),
(355, '2021-07-26 06:51:31.028332', '14', 'StatusFly', 3, '', 39, 1),
(356, '2021-07-26 06:51:31.030396', '13', 'StatusFly', 3, '', 39, 1),
(357, '2021-07-26 06:51:31.031405', '12', 'hitesh', 3, '', 39, 1),
(358, '2021-08-03 12:41:33.860752', '8', 'Tamil Ringtones', 1, '[{\"added\": {}}]', 36, 1),
(359, '2021-08-03 12:42:35.672102', '8', 'Tamil Ringtones', 2, '[]', 36, 1),
(360, '2021-08-03 12:42:59.528326', '8', 'Tamil Ringtones', 2, '[]', 36, 1),
(361, '2021-08-03 13:10:17.151527', '172', 'Tamil Ringtones', 2, '', 2, 1),
(362, '2021-08-03 13:11:34.403748', '172', 'Tamil Ringtones', 2, '[{\"changed\": {\"fields\": [\"Page Title\"]}}]', 2, 1),
(363, '2021-08-03 13:12:12.149456', '172', 'Tamil Ringtones', 2, '', 2, 1),
(364, '2021-08-03 13:13:22.754779', '172', 'Tamil Ringtones', 2, '', 2, 1),
(365, '2021-08-03 13:19:05.405385', '71', 'Mustafa Mustafa Tamil Ringtone', 1, '[{\"added\": {}}]', 46, 1),
(366, '2021-08-03 13:19:59.439964', '174', 'Mustafa Mustafa Tamil Ringtone', 2, '', 2, 1),
(367, '2021-08-04 05:35:09.501568', '72', 'Tamil Song Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(368, '2021-08-04 05:37:33.850489', '73', 'Bigil Rayappan Bgm Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(369, '2021-08-04 05:40:33.695345', '73', 'Bigil Rayappan Bgm Ringtone Download', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 46, 1),
(370, '2021-08-04 05:40:58.598919', '176', 'Tamil Song Ringtone Download', 2, '', 2, 1),
(371, '2021-08-04 05:41:29.538169', '177', 'Bigil Rayappan Bgm Ringtone Download', 2, '', 2, 1),
(372, '2021-08-04 05:45:53.041471', '74', 'KGF Tamil Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(373, '2021-08-04 05:48:25.629452', '75', 'Unna Nenachu Nenachu Urugi Poneaan Psycho Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(374, '2021-08-04 05:52:08.228652', '76', 'Unakena Uruginen Tamil Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(375, '2021-08-04 05:52:35.078422', '180', 'KGF Tamil Ringtone Download', 2, '', 2, 1),
(376, '2021-08-04 05:53:06.978683', '181', 'Unna Nenachu Nenachu Urugi Poneaan Psycho Ringtone Download', 2, '', 2, 1),
(377, '2021-08-04 05:53:30.762664', '182', 'Unakena Uruginen Tamil Ringtone Download', 2, '', 2, 1),
(378, '2021-08-05 05:17:01.017424', '172', 'Tamil Ringtones', 2, '', 2, 1),
(379, '2021-08-05 05:20:32.718221', '172', 'Tamil Ringtones', 2, '', 2, 1),
(380, '2021-08-05 10:35:57.427433', '77', 'Darbar Thalaivar Bgm Theme Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(381, '2021-08-05 10:47:27.151564', '78', 'Vishwaroopam Humming Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(382, '2021-08-05 10:50:59.793072', '79', 'Hey Single Pasanga Natpe Thunai Tamil Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(383, '2021-08-05 10:51:31.678307', '186', 'Darbar Thalaivar Bgm Theme Ringtone Download', 2, '', 2, 1),
(384, '2021-08-05 10:52:50.777984', '187', 'Vishwaroopam Humming Ringtone Download', 2, '', 2, 1),
(385, '2021-08-05 10:53:19.428455', '188', 'Hey Single Pasanga Natpe Thunai Tamil Ringtone Download', 2, '', 2, 1),
(386, '2021-08-05 10:56:56.469694', '79', 'Hey Single Pasanga Natpe Thunai Tamil Ringtone Download', 2, '[{\"changed\": {\"fields\": [\"Android ringtone\", \"Iphone ringtone\"]}}]', 46, 1),
(387, '2021-08-06 15:19:38.906415', '172', 'Tamil Ringtones', 2, '', 2, 1),
(388, '2021-08-20 10:57:28.984188', '17', 'Michael Rajiv', 3, '', 39, 1),
(389, '2021-08-20 10:57:28.986960', '16', 'Sambo Dasuki', 3, '', 39, 1),
(390, '2021-08-20 10:57:28.987814', '15', 'Donaldchaws', 3, '', 39, 1),
(391, '2021-08-20 12:17:22.783081', '80', 'Gayatri Mantra Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(392, '2021-08-20 12:17:57.121591', '192', 'Gayatri Mantra Ringtone Download', 2, '', 2, 1),
(393, '2021-08-20 12:23:28.271387', '81', 'Unna Chota Unnana ringtone download', 1, '[{\"added\": {}}]', 46, 1),
(394, '2021-08-20 12:24:54.660942', '194', 'Unna Chota Unnana ringtone download', 2, '', 2, 1),
(395, '2021-08-27 11:06:03.171814', '9', 'Punjabi Ringtones', 1, '[{\"added\": {}}]', 36, 1),
(396, '2021-08-27 11:06:26.354504', '9', 'Punjabi Ringtones', 2, '[]', 36, 1),
(397, '2021-08-27 11:07:51.829905', '196', 'Punjabi Ringtones', 2, '[{\"changed\": {\"fields\": [\"Page Title\"]}}]', 2, 1),
(398, '2021-08-27 11:08:05.967829', '196', 'Punjabi Ringtones', 2, '', 2, 1),
(399, '2021-08-27 11:43:44.192322', '196', 'Punjabi Ringtones', 2, '', 2, 1),
(400, '2021-08-27 11:47:28.367495', '82', 'Waalian Punjabi Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(401, '2021-08-27 11:47:56.385171', '198', 'Waalian Punjabi Ringtone Download', 2, '', 2, 1),
(402, '2021-08-27 11:56:48.322946', '83', 'Relation by Nikk Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(403, '2021-08-27 11:58:29.387470', '84', 'Bapu Tere Karke Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(404, '2021-08-27 12:00:50.361042', '85', 'One Life Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(405, '2021-08-27 12:01:22.940034', '200', 'Relation by Nikk Ringtone Download', 2, '', 2, 1),
(406, '2021-08-27 12:01:25.245995', '201', 'Bapu Tere Karke Ringtone Download', 2, '', 2, 1),
(407, '2021-08-27 12:02:15.571608', '200', 'Relation by Nikk Ringtone Download', 2, 'The en page \"Relation by Nikk Ringtone Download\" was successfully unpublished', 2, 1),
(408, '2021-08-27 12:02:32.392845', '200', 'Relation by Nikk Ringtone Download', 2, '', 2, 1),
(409, '2021-08-27 12:03:01.918557', '202', 'One Life Ringtone Download', 2, '', 2, 1),
(410, '2021-08-27 12:10:03.084174', '86', 'Kala Rang by Kaka Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(411, '2021-08-27 12:11:19.371860', '87', 'Keh Len De Ringtone Dwonload', 1, '[{\"added\": {}}]', 46, 1),
(412, '2021-08-27 12:12:45.201976', '88', 'Parche Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(413, '2021-08-27 12:13:25.026437', '206', 'Kala Rang by Kaka Ringtone Download', 2, '', 2, 1),
(414, '2021-08-27 12:13:25.552072', '207', 'Keh Len De Ringtone Dwonload', 2, '', 2, 1),
(415, '2021-08-27 12:13:27.055317', '208', 'Parche Ringtone Download', 2, '', 2, 1),
(416, '2021-08-27 12:15:20.241648', '89', 'Jee Nai Skda Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(417, '2021-08-27 12:15:48.279292', '212', 'Jee Nai Skda Ringtone Download', 2, '', 2, 1),
(418, '2021-08-27 12:19:44.336275', '19', 'Gujarati Ringtones', 2, '', 2, 1),
(419, '2021-08-27 12:22:29.333857', '80', 'iPhone Ringtones', 2, '', 2, 1),
(420, '2021-08-27 12:23:43.833934', '64', 'Rajasthani Ringtones', 2, '', 2, 1),
(421, '2021-08-27 12:27:14.761477', '118', 'Krishna Ringtones', 2, '', 2, 1),
(422, '2021-08-27 12:28:42.806170', '150', 'Telugu Ringtones', 2, '', 2, 1),
(423, '2021-08-27 12:30:04.648301', '172', 'Tamil Ringtones', 2, '', 2, 1),
(424, '2021-08-27 12:38:46.342920', '1', 'Download Ringtone New Mp3 or M4r', 2, '', 2, 1),
(425, '2021-09-05 12:54:13.177746', '3', 'About Us', 2, '', 2, 1),
(426, '2021-09-12 15:55:18.173379', '26', 'Mike Sykes\r\n', 3, '', 39, 1),
(427, '2021-09-12 15:55:18.176294', '25', 'Mike Vance\r\n', 3, '', 39, 1),
(428, '2021-09-12 15:57:29.958933', '24', 'Robert Dempseys', 3, '', 39, 1),
(429, '2021-09-12 15:57:29.961428', '23', 'Mike Johnson\r\n', 3, '', 39, 1),
(430, '2021-09-12 15:57:29.962271', '21', 'SEO X Press Digital Agency', 3, '', 39, 1),
(431, '2021-09-12 15:57:29.963023', '19', 'Gabriel Angelo', 3, '', 39, 1),
(432, '2021-09-12 15:57:29.963780', '18', 'Donald Cole', 3, '', 39, 1),
(433, '2021-09-12 15:58:34.476386', '22', 'Aditya', 3, '', 39, 1),
(434, '2021-09-12 15:58:34.479003', '20', 'Ishaan Sharma', 3, '', 39, 1),
(435, '2021-09-13 12:22:03.220061', '90', 'Love You Punjabi Ringtone Download Amar Sehmbi', 1, '[{\"added\": {}}]', 46, 1),
(436, '2021-09-13 12:22:51.400721', '214', 'Love You Punjabi Ringtone Download Amar Sehmbi', 2, '', 2, 1),
(437, '2021-09-18 08:08:22.791259', '1', 'Download Ringtone New Mp3 or M4r', 2, '', 2, 1),
(438, '2021-09-25 07:28:29.168624', '10', 'Hindi Ringtones', 1, '[{\"added\": {}}]', 36, 1),
(439, '2021-09-25 07:30:46.343041', '216', 'Hindi Ringtones', 2, '[{\"changed\": {\"fields\": [\"Page Title\"]}}]', 2, 1),
(440, '2021-09-25 07:31:13.699034', '216', 'Hindi Ringtones', 2, '', 2, 1),
(441, '2021-09-25 07:44:14.321671', '216', 'Hindi Ringtones', 2, '', 2, 1),
(442, '2021-09-25 07:49:43.972036', '91', 'Raataan Lambiyan Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(443, '2021-09-25 07:51:01.362983', '218', 'Raataan Lambiyan Ringtone Download', 2, '', 2, 1),
(444, '2021-09-25 08:01:11.489260', '92', 'Dil Ko Karar Aya Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(445, '2021-09-25 08:02:19.295260', '220', 'Dil Ko Karar Aya Ringtone Download', 2, '', 2, 1),
(446, '2021-09-25 15:06:55.793527', '93', 'Baarish Ban Jana RingtnBaarish Ban Jana Ringtone', 1, '[{\"added\": {}}]', 46, 1),
(447, '2021-09-25 15:09:17.207969', '94', 'Tu Bhi Satya Jayega Ringtone', 1, '[{\"added\": {}}]', 46, 1),
(448, '2021-09-25 15:10:58.761226', '222', 'Baarish Ban Jana RingtnBaarish Ban Jana Ringtone', 2, '', 2, 1),
(449, '2021-09-25 15:11:19.467936', '223', 'Tu Bhi Satya Jayega Ringtone', 2, '', 2, 1),
(450, '2021-09-25 15:14:52.783427', '93', 'Jab Main Badal Ban Jau Tum Bhi Barish Ban Jana Ringtone Download', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Description\"]}}]', 46, 1),
(451, '2021-09-25 15:19:21.846468', '93', 'Jab Main Badal Ban Jau Tum Bhi Barish Ban Jana Ringtone Download', 2, '[{\"changed\": {\"fields\": [\"Slug\"]}}]', 46, 1),
(452, '2021-09-25 15:20:15.516960', '222', 'Jab Main Badal Ban Jau Tum Bhi Barish Ban Jana Ringtone Download', 2, '', 2, 1),
(453, '2021-09-25 15:22:43.620037', '222', 'Jab Main Badal Ban Jau Tum Bhi Barish Ban Jana Ringtone Download', 2, '[]', 2, 1),
(454, '2021-09-25 15:23:10.572890', '222', 'Jab Main Badal Ban Jau Tum Bhi Barish Ban Jana Ringtone Download', 2, '', 2, 1),
(455, '2021-09-28 01:51:58.854655', '1', 'RingtoneFly', 2, '[{\"changed\": {\"fields\": [\"Favicon icon\"]}}]', 49, 1),
(456, '2021-09-28 02:01:12.019191', '1', 'RingtoneFly', 2, '[{\"changed\": {\"fields\": [\"Favicon icon\"]}}]', 49, 1),
(457, '2021-10-02 04:28:53.781681', '95', 'Wafa Na Raas Aayi Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(458, '2021-10-02 04:30:41.711397', '226', 'Wafa Na Raas Aayi Ringtone Download', 2, '', 2, 1),
(459, '2021-10-02 04:42:46.279025', '96', 'Rim Jhim Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(460, '2021-10-02 04:53:29.408827', '228', 'Rim Jhim Ringtone Download', 2, '', 2, 1),
(461, '2021-10-02 05:15:24.521391', '97', 'Bepanah Ishq Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(462, '2021-10-02 05:15:57.749431', '230', 'Bepanah Ishq Ringtone Download', 2, '', 2, 1),
(463, '2021-10-10 11:43:00.398691', '98', 'Mere Paas Ek Dil Tha Wo Bhi Tumne Chura Liya Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(464, '2021-10-10 11:43:35.236709', '232', 'Mere Paas Ek Dil Tha Wo Bhi Tumne Chura Liya Ringtone Download', 2, '', 2, 1),
(465, '2021-10-13 04:04:35.517797', '99', 'Dil Galti Kar Baitha Hai Ringtone Download Jubin Nautiyal', 1, '[{\"added\": {}}]', 46, 1);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(466, '2021-10-13 04:07:01.050735', '234', 'Dil Galti Kar Baitha Hai Ringtone Download Jubin Nautiyal', 2, '', 2, 1),
(467, '2021-10-13 04:17:00.586178', '100', 'mene aasman pe likh diya ringtone download', 1, '[{\"added\": {}}]', 46, 1),
(468, '2021-10-13 04:23:34.470301', '101', 'tu samne ho jahan bhi main jaaun ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(469, '2021-10-13 04:28:39.704966', '102', 'Bepanah Ishq hindi ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(470, '2021-10-13 04:29:54.987043', '236', 'mene aasman pe likh diya ringtone download', 2, '', 2, 1),
(471, '2021-10-13 04:31:18.744545', '237', 'tu samne ho jahan bhi main jaaun ringtone Download', 2, '', 2, 1),
(472, '2021-10-13 04:33:56.703846', '238', 'Bepanah Ishq hindi ringtone Download', 2, '', 2, 1),
(473, '2021-10-13 04:36:50.074764', '99', 'Dil Galti Kar Baitha Hai Ringtone Download Jubin Nautiyal', 2, '[{\"changed\": {\"fields\": [\"Category\"]}}]', 46, 1),
(474, '2021-10-13 08:17:36.549648', '232', 'Mere Paas Ek Dil Tha Wo Bhi Tumne Chura Liya Ringtone Download', 2, 'The en page \"Mere Paas Ek Dil Tha Wo Bhi Tumne Chura Liya Ringtone Download\" was successfully unpublished', 2, 1),
(475, '2021-10-13 08:21:34.141821', '218', 'Raataan Lambiyan Ringtone Download', 2, 'The en page \"Raataan Lambiyan Ringtone Download\" was successfully unpublished', 2, 1),
(476, '2021-10-13 08:22:06.535897', '220', 'Dil Ko Karar Aya Ringtone Download', 2, 'The en page \"Dil Ko Karar Aya Ringtone Download\" was successfully unpublished', 2, 1),
(477, '2021-10-13 08:22:34.291742', '222', 'Jab Main Badal Ban Jau Tum Bhi Barish Ban Jana Ringtone Download', 2, 'The en page \"Jab Main Badal Ban Jau Tum Bhi Barish Ban Jana Ringtone Download\" was successfully unpublished', 2, 1),
(478, '2021-10-13 08:23:01.266976', '223', 'Tu Bhi Satya Jayega Ringtone', 2, 'The en page \"Tu Bhi Satya Jayega Ringtone\" was successfully unpublished', 2, 1),
(479, '2021-10-13 08:23:24.186255', '226', 'Wafa Na Raas Aayi Ringtone Download', 2, 'The en page \"Wafa Na Raas Aayi Ringtone Download\" was successfully unpublished', 2, 1),
(480, '2021-10-13 08:24:00.959123', '230', 'Bepanah Ishq Ringtone Download', 2, 'The en page \"Bepanah Ishq Ringtone Download\" was successfully unpublished', 2, 1),
(481, '2021-10-13 09:00:06.325270', '218', 'Raataan Lambiyan Ringtone Download', 2, '', 2, 1),
(482, '2021-10-13 09:00:45.452211', '220', 'Dil Ko Karar Aya Ringtone Download', 2, '', 2, 1),
(483, '2021-10-13 09:02:13.639376', '222', 'Jab Main Badal Ban Jau Tum Bhi Barish Ban Jana Ringtone Download', 2, '', 2, 1),
(484, '2021-10-13 09:02:38.500248', '223', 'Tu Bhi Satya Jayega Ringtone', 2, '', 2, 1),
(485, '2021-10-13 09:03:08.686207', '226', 'Wafa Na Raas Aayi Ringtone Download', 2, '', 2, 1),
(486, '2021-10-13 09:03:47.160327', '230', 'Bepanah Ishq Ringtone Download', 2, '', 2, 1),
(487, '2021-10-13 09:04:35.998953', '232', 'Mere Paas Ek Dil Tha Wo Bhi Tumne Chura Liya Ringtone Download', 2, '', 2, 1),
(488, '2021-10-14 09:47:09.479679', '103', 'Suna Hai - Sanak Ringtone Download Jubin Nautiyal', 1, '[{\"added\": {}}]', 46, 1),
(489, '2021-10-14 09:48:26.460599', '242', 'Suna Hai - Sanak Ringtone Download Jubin Nautiyal', 2, '', 2, 1),
(490, '2021-10-15 03:15:23.118145', '103', 'Suna Hai Sanak Ringtone Download Jubin Nautiyal', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Like\", \"Download\"]}}]', 46, 1),
(491, '2021-10-15 03:16:12.751547', '242', 'Suna Hai Sanak Ringtone Download Jubin Nautiyal', 2, '', 2, 1),
(492, '2021-10-15 03:39:42.733565', '104', 'O Yaara Dil Lagana Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(493, '2021-10-15 03:40:05.893788', '244', 'O Yaara Dil Lagana Ringtone Download', 2, '', 2, 1),
(494, '2021-10-15 04:04:29.349904', '218', 'Raataan Lambiyan Ringtone Download Mp3', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 2, 1),
(495, '2021-10-15 04:04:45.243298', '218', 'Raataan Lambiyan Ringtone Download Mp3', 2, '', 2, 1),
(496, '2021-10-15 05:34:10.918157', '105', 'Kar Sako To Sanam Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(497, '2021-10-15 05:34:41.901005', '246', 'Kar Sako To Sanam Ringtone Download', 2, '', 2, 1),
(498, '2021-10-15 06:20:22.681355', '106', 'Bansuri - Hum Do Hamare Do Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(499, '2021-10-15 06:20:46.170768', '248', 'Bansuri - Hum Do Hamare Do Ringtone Download', 2, '', 2, 1),
(500, '2021-10-16 03:44:56.118411', '107', 'Pyaar Ho Jayega Ringtone Download Vishal Mishra', 1, '[{\"added\": {}}]', 46, 1),
(501, '2021-10-16 03:45:19.356459', '250', 'Pyaar Ho Jayega Ringtone Download Vishal Mishra', 2, '', 2, 1),
(502, '2021-10-16 05:41:40.489191', '108', 'Apsraa Ringtone Download Jaani', 1, '[{\"added\": {}}]', 46, 1),
(503, '2021-10-16 05:42:10.049760', '252', 'Apsraa Ringtone Download Jaani', 2, '', 2, 1),
(504, '2021-10-17 06:35:14.052353', '109', 'Lut Gaye Ringtone Download Jubin Nautiyal', 1, '[{\"added\": {}}]', 46, 1),
(505, '2021-10-17 06:36:37.348971', '254', 'Lut Gaye Ringtone Download Jubin Nautiyal', 2, '', 2, 1),
(506, '2021-10-18 13:34:01.048007', '110', 'Aise Na Choro Ringtone Guru Randhawa', 1, '[{\"added\": {}}]', 46, 1),
(507, '2021-10-18 13:34:33.955120', '256', 'Aise Na Choro Ringtone Guru Randhawa', 2, '', 2, 1),
(508, '2021-10-19 17:20:09.707503', '111', 'Ankhein Mili Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(509, '2021-10-19 17:28:23.909985', '258', 'Ankhein Mili Ringtone Download', 2, '', 2, 1),
(510, '2021-10-19 17:31:33.068722', '112', 'Kash Aisa Ho Sakta Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(511, '2021-10-19 17:33:31.133484', '260', 'Kash Aisa Ho Sakta Ringtone Download', 2, '', 2, 1),
(512, '2021-10-20 04:03:47.515986', '113', 'Sorry Jaan Sorry Ringtone Download Mickey Singh', 1, '[{\"added\": {}}]', 46, 1),
(513, '2021-10-20 04:05:23.485357', '262', 'Sorry Jaan Sorry Ringtone Download Mickey Singh', 2, '', 2, 1),
(514, '2021-10-20 06:33:48.630323', '114', 'Kamli - Hum Do Hamare Do Ringtone Download Jubin Nautiyal', 1, '[{\"added\": {}}]', 46, 1),
(515, '2021-10-20 06:34:27.333724', '264', 'Kamli - Hum Do Hamare Do Ringtone Download Jubin Nautiyal', 2, '', 2, 1),
(516, '2021-10-20 06:38:18.382201', '115', 'Kamli Ringtone Download Jubin Nautiyal', 1, '[{\"added\": {}}]', 46, 1),
(517, '2021-10-20 06:39:03.833189', '266', 'Kamli Ringtone Download Jubin Nautiyal', 2, '', 2, 1),
(518, '2021-10-20 07:47:20.186437', '110', 'Aise Na Choro Ringtone Guru Randhawa', 2, '[{\"changed\": {\"fields\": [\"Android ringtone\", \"Iphone ringtone\"]}}]', 46, 1),
(519, '2021-10-20 07:51:46.519033', '116', 'Aise Na Chhodo Mujhe Ringtone Download GuruRandhawa', 1, '[{\"added\": {}}]', 46, 1),
(520, '2021-10-20 07:52:20.249074', '268', 'Aise Na Chhodo Mujhe Ringtone Download GuruRandhawa', 2, '', 2, 1),
(521, '2021-10-20 17:28:38.414043', '117', 'Gallan Bholiyan Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(522, '2021-10-20 17:33:34.541352', '270', 'Gallan Bholiyan Ringtone Download', 2, '', 2, 1),
(523, '2021-10-21 03:46:33.721682', '118', 'Aila Re Aila Sooryavanshi Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(524, '2021-10-21 03:47:10.795285', '272', 'Aila Re Aila Sooryavanshi Ringtone Download', 2, '', 2, 1),
(525, '2021-10-21 05:03:20.684011', '119', 'Ishq Da Rog by Stebin Ben Ringtone Download 2021', 1, '[{\"added\": {}}]', 46, 1),
(526, '2021-10-21 05:03:55.732331', '274', 'Ishq Da Rog by Stebin Ben Ringtone Download 2021', 2, '', 2, 1),
(527, '2021-10-21 06:47:42.728941', '120', 'Sahi Sahi Ringtone Download Lakhwinder Wadali', 1, '[{\"added\": {}}]', 46, 1),
(528, '2021-10-21 06:48:18.359037', '276', 'Sahi Sahi Ringtone Download Lakhwinder Wadali', 2, '', 2, 1),
(529, '2021-10-21 06:53:12.907597', '121', 'Khoye Se Lag Rahe Ho Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(530, '2021-10-21 06:53:47.418220', '278', 'Khoye Se Lag Rahe Ho Ringtone Download', 2, '', 2, 1),
(531, '2021-10-22 16:32:27.161324', '122', 'Tere Bina Jina Saza ho Gaya Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(532, '2021-10-22 16:33:09.998088', '280', 'Tere Bina Jina Saza ho Gaya Ringtone Download', 2, '', 2, 1),
(533, '2021-10-23 16:20:55.132792', '11', 'Mahadev Ringtones', 1, '[{\"added\": {}}]', 36, 1),
(534, '2021-10-23 16:21:47.524371', '11', 'Mahadev Ringtones', 2, '[{\"changed\": {\"fields\": [\"Meta tag\"]}}]', 36, 1),
(535, '2021-10-23 16:26:33.835212', '282', 'Mahadev Ringtones', 2, '[{\"changed\": {\"fields\": [\"Page Title\"]}}]', 2, 1),
(536, '2021-10-23 16:41:29.053251', '282', 'Mahadev Ringtones', 2, '', 2, 1),
(537, '2021-10-23 16:50:05.599440', '123', 'Devo Ke Dev Mahadev Theme Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(538, '2021-10-23 16:52:02.073405', '284', 'Devo Ke Dev Mahadev Theme Ringtone Download', 2, '', 2, 1),
(539, '2021-10-23 16:52:06.011801', '282', 'Mahadev Ringtones', 2, '', 2, 1),
(540, '2021-10-23 16:54:38.819733', '1', 'Download Ringtone New Mp3 or M4r', 2, '', 2, 1),
(541, '2021-10-24 05:13:22.957125', '124', 'Mera Bhola Hai Bhandari Ringtone', 1, '[{\"added\": {}}]', 46, 1),
(542, '2021-10-24 05:14:31.037064', '286', 'Mera Bhola Hai Bhandari Ringtone', 2, '', 2, 1),
(543, '2021-10-24 15:05:12.143430', '2', 'Roney', 1, '[{\"added\": {}}]', 5, 1),
(544, '2021-10-24 15:07:02.699238', '2', 'Roney', 2, '[]', 5, 1),
(545, '2021-10-24 15:08:42.009251', '2', 'Roney', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 5, 1),
(546, '2021-10-24 15:12:43.953254', '2', 'Roney', 2, '[]', 5, 1),
(547, '2021-10-24 15:18:30.371089', '2', 'Roney', 2, '[{\"changed\": {\"fields\": [\"User permissions\"]}}]', 5, 1),
(548, '2021-10-24 15:19:49.651237', '2', 'Roney', 2, '[{\"changed\": {\"fields\": [\"User permissions\"]}}]', 5, 1),
(549, '2021-10-24 15:22:21.909556', '2', 'Roney', 3, '', 5, 1),
(550, '2021-10-24 15:52:03.811102', '1', 'Home', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 2, 1),
(551, '2021-10-24 15:52:44.973985', '1', 'New Mp3 Ringtones Download Free for Mobile Phones', 2, '', 2, 1),
(552, '2021-10-24 15:54:47.642389', '1', 'Home', 2, '[]', 2, 1),
(553, '2021-10-24 15:55:05.842948', '1', 'New Mp3 Ringtones Download Free for Mobile Phones', 2, '', 2, 1),
(554, '2021-10-24 15:57:29.682405', '1', 'Home', 2, '[{\"changed\": {\"fields\": [\"Page Title\"]}}]', 2, 1),
(555, '2021-10-24 15:57:47.401926', '1', 'New Mp3 Ringtones Download Free for Mobile Phones', 2, '', 2, 1),
(556, '2021-10-24 15:58:28.767991', '1', 'Home', 2, '[{\"changed\": {\"fields\": [\"Page Title\"]}}]', 2, 1),
(557, '2021-10-24 15:58:43.296694', '1', 'Home', 2, '[]', 2, 1),
(558, '2021-10-24 15:58:58.335311', '1', 'New Mp3 Ringtones Download Free for Mobile Phones', 2, '', 2, 1),
(559, '2021-10-24 16:01:37.182806', '1', 'New Mp3 Ringtones Download Free for Mobile Phones', 2, '', 2, 1),
(560, '2021-10-24 16:17:25.858877', '1', 'Limitation', 2, '[{\"changed\": {\"fields\": [\"Popular container\", \"New container\", \"Top 50 container\", \"Category page\", \"Individual ringtone page\"]}}]', 90, 1),
(561, '2021-10-25 06:18:24.917386', '11', 'Mahadev Ringtones', 2, '[{\"changed\": {\"fields\": [\"Meta tag\"]}}]', 36, 1),
(562, '2021-10-25 06:20:24.078317', '282', 'Mahadev Ringtones', 2, '', 2, 1),
(563, '2021-10-25 06:23:10.891998', '13', '13', 2, '[{\"changed\": {\"fields\": [\"Home page meta-tag\"]}}]', 47, 1),
(564, '2021-10-25 11:09:10.478970', '282', 'Mahadev Ringtones', 2, '', 2, 1),
(565, '2021-10-26 04:26:08.864182', '125', 'Aisa Damru Bajaya Bholenath Ne Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(566, '2021-10-26 04:27:06.572428', '288', 'Aisa Damru Bajaya Bholenath Ne Ringtone Download', 2, '', 2, 1),
(567, '2021-10-26 10:43:57.165917', '282', 'Mahadev Ringtones', 2, 'The en page \"Mahadev Ringtones\" was successfully unpublished', 2, 1),
(568, '2021-10-26 12:27:11.223636', '282', 'Mahadev Ringtones', 2, '', 2, 1),
(569, '2021-10-26 14:02:24.337828', '1', 'Limitation', 2, '[{\"changed\": {\"fields\": [\"Popular container\", \"New container\", \"Top 50 container\", \"Category page\", \"Individual ringtone page\"]}}]', 90, 1),
(570, '2021-10-26 14:03:29.155570', '1', 'Limitation', 2, '[{\"changed\": {\"fields\": [\"Popular container\", \"New container\", \"Top 50 container\", \"Category page\", \"Individual ringtone page\"]}}]', 90, 1),
(571, '2021-10-26 17:40:08.347895', '126', 'Lagi Meri Tere Sang Shankara Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(572, '2021-10-26 17:40:55.437844', '290', 'Lagi Meri Tere Sang Shankara Ringtone Download', 2, '', 2, 1),
(573, '2021-10-26 17:49:44.078586', '127', 'Shiv Sama Rahe Mujhme Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(574, '2021-10-26 17:50:55.455931', '127', 'Shiv Sama Rahe Mujhme Ringtone Download', 2, '[{\"changed\": {\"fields\": [\"Android ringtone\", \"Iphone ringtone\"]}}]', 46, 1),
(575, '2021-10-26 17:51:50.709309', '292', 'Shiv Sama Rahe Mujhme Ringtone Download', 2, '', 2, 1),
(576, '2021-10-27 10:13:51.495433', '128', 'Meri Zindagi Hai Tu - Jubin Nautiyal Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(577, '2021-10-27 10:17:27.003604', '129', 'Mere Yaara Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(578, '2021-10-27 10:18:00.621967', '294', 'Meri Zindagi Hai Tu - Jubin Nautiyal Ringtone Download', 2, '', 2, 1),
(579, '2021-10-27 10:18:26.515938', '295', 'Mere Yaara Ringtone Download', 2, '', 2, 1),
(580, '2021-10-28 07:36:23.685898', '130', 'East Nepal BGM Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(581, '2021-10-28 07:39:43.044481', '131', 'Rang Leke Khelte Gulal Leke Khelte Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(582, '2021-10-28 07:43:10.967205', '132', 'Chhatrapati Shivaji Maharaj Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(583, '2021-10-28 07:46:29.866799', '133', 'Manike Mage Hithe Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(584, '2021-10-28 07:50:24.911254', '134', 'Tu Ada Hai Tu Mohabbat Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(585, '2021-10-28 07:52:40.551651', '135', 'Yeh Dua Hai Meri Rab Se Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(586, '2021-10-28 07:58:03.983461', '136', 'Main Barish Ka Mausam Hoon B Praak DJ Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(587, '2021-10-28 07:59:42.121828', '298', 'East Nepal BGM Ringtone Download', 2, '', 2, 1),
(588, '2021-10-28 08:01:30.797370', '299', 'Rang Leke Khelte Gulal Leke Khelte Ringtone Download', 2, '', 2, 1),
(589, '2021-10-28 08:01:50.494170', '300', 'Chhatrapati Shivaji Maharaj Ringtone Download', 2, '', 2, 1),
(590, '2021-10-28 08:02:12.295699', '301', 'Manike Mage Hithe Ringtone Download', 2, '', 2, 1),
(591, '2021-10-28 08:03:00.531147', '302', 'Tu Ada Hai Tu Mohabbat Ringtone Download', 2, '', 2, 1),
(592, '2021-10-28 08:03:21.079049', '303', 'Yeh Dua Hai Meri Rab Se Ringtone Download', 2, '', 2, 1),
(593, '2021-10-28 08:03:47.160929', '304', 'Main Barish Ka Mausam Hoon B Praak DJ Ringtone Download', 2, '', 2, 1),
(594, '2021-10-28 08:56:27.684827', '75', 'Michaelpader', 3, '', 39, 1),
(595, '2021-10-28 08:56:27.689048', '74', 'Michaelpader', 3, '', 39, 1),
(596, '2021-10-28 08:56:27.690537', '73', 'Michaelpader', 3, '', 39, 1),
(597, '2021-10-28 08:56:27.691932', '72', 'Michaelpader', 3, '', 39, 1),
(598, '2021-10-28 08:56:27.693162', '71', 'Michaelpader', 3, '', 39, 1),
(599, '2021-10-28 08:56:27.694254', '70', 'Mike Fraser\r\n', 3, '', 39, 1),
(600, '2021-10-28 08:56:27.695290', '69', 'Michaelpader', 3, '', 39, 1),
(601, '2021-10-28 08:56:27.696350', '68', 'Michaelpader', 3, '', 39, 1),
(602, '2021-10-28 08:56:27.697513', '67', 'Michaelpader', 3, '', 39, 1),
(603, '2021-10-28 08:56:27.698585', '66', 'Michaelpader', 3, '', 39, 1),
(604, '2021-10-28 08:56:27.699761', '65', 'Michaelpader', 3, '', 39, 1),
(605, '2021-10-28 08:56:27.700878', '64', 'Michaelpader', 3, '', 39, 1),
(606, '2021-10-28 08:56:27.701835', '63', 'Michaelpader', 3, '', 39, 1),
(607, '2021-10-28 08:56:27.702891', '62', 'Michaelpader', 3, '', 39, 1),
(608, '2021-10-28 08:56:27.703980', '61', 'Michaelpader', 3, '', 39, 1),
(609, '2021-10-28 08:56:27.705112', '60', 'Michaelpader', 3, '', 39, 1),
(610, '2021-10-28 08:56:27.706128', '59', 'JeffreyVievy', 3, '', 39, 1),
(611, '2021-10-28 08:56:27.707232', '58', 'JeffreyVievy', 3, '', 39, 1),
(612, '2021-10-28 08:56:27.708285', '57', 'JeffreyVievy', 3, '', 39, 1),
(613, '2021-10-28 08:56:27.709506', '56', 'JeffreyVievy', 3, '', 39, 1),
(614, '2021-10-28 08:56:27.710601', '55', 'JeffreyVievy', 3, '', 39, 1),
(615, '2021-10-28 08:56:27.711712', '54', 'JeffreyVievy', 3, '', 39, 1),
(616, '2021-10-28 08:56:27.712805', '53', 'JeffreyVievy', 3, '', 39, 1),
(617, '2021-10-28 08:56:27.713893', '52', 'JeffreyVievy', 3, '', 39, 1),
(618, '2021-10-28 08:56:27.715033', '51', 'JeffreyVievy', 3, '', 39, 1),
(619, '2021-10-28 08:56:27.716084', '50', 'JeffreyVievy', 3, '', 39, 1),
(620, '2021-10-28 08:56:27.717134', '49', 'JeffreyVievy', 3, '', 39, 1),
(621, '2021-10-28 08:56:27.719551', '48', 'JeffreyVievy', 3, '', 39, 1),
(622, '2021-10-28 08:56:27.723312', '47', 'JeffreyVievy', 3, '', 39, 1),
(623, '2021-10-28 08:56:27.724652', '46', 'JeffreyVievy', 3, '', 39, 1),
(624, '2021-10-28 08:56:27.725937', '45', 'JeffreyVievy', 3, '', 39, 1),
(625, '2021-10-28 08:56:27.727032', '44', 'Daniel', 3, '', 39, 1),
(626, '2021-10-28 08:56:27.728046', '43', 'RichardMANDY', 3, '', 39, 1),
(627, '2021-10-28 08:56:27.729045', '42', 'Carrollicele', 3, '', 39, 1),
(628, '2021-10-28 08:56:27.730193', '41', 'TimothyCef', 3, '', 39, 1),
(629, '2021-10-28 08:56:27.731328', '40', 'Mike Oakman\r\n', 3, '', 39, 1),
(630, '2021-10-28 08:56:27.732342', '39', 'RobertCable', 3, '', 39, 1),
(631, '2021-10-28 08:56:27.733547', '38', 'Harry Martin', 3, '', 39, 1),
(632, '2021-10-28 08:56:27.734673', '37', 'Carlos Sano', 3, '', 39, 1),
(633, '2021-10-28 08:56:27.735810', '36', 'JamesAvark', 3, '', 39, 1),
(634, '2021-10-28 08:56:27.736891', '35', 'Basmah Al Saud', 3, '', 39, 1),
(635, '2021-10-28 08:56:27.737852', '34', 'Mike Haig\r\n', 3, '', 39, 1),
(636, '2021-10-28 08:56:27.738830', '33', 'Mike Porter\r\n', 3, '', 39, 1),
(637, '2021-10-28 08:56:27.739849', '32', 'Donald Cole', 3, '', 39, 1),
(638, '2021-10-28 08:56:27.740770', '31', 'Mike Addington\r\n', 3, '', 39, 1),
(639, '2021-10-28 08:56:27.741661', '30', 'Michell', 3, '', 39, 1),
(640, '2021-10-28 08:56:27.742730', '29', 'Donald Cole', 3, '', 39, 1),
(641, '2021-10-28 08:56:27.743633', '28', 'Mike Shorter\r\n', 3, '', 39, 1),
(642, '2021-10-28 08:56:27.744557', '27', 'Patrick Wayne', 3, '', 39, 1),
(643, '2021-10-29 11:21:12.276449', '76', 'Chau Cheung', 3, '', 39, 1),
(644, '2021-10-29 13:35:17.217663', '282', 'Mahadev Ringtones', 2, '', 2, 1),
(645, '2021-10-29 14:05:47.851307', '137', 'Ishq Tera Lae Dooba Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(646, '2021-10-29 14:06:37.780115', '312', 'Ishq Tera Lae Dooba Ringtone Download', 2, '', 2, 1),
(647, '2021-10-30 11:30:52.289398', '138', 'Bijlee Bijlee Ringtone Download Harrdy Sandhu', 1, '[{\"added\": {}}]', 46, 1),
(648, '2021-10-30 11:31:55.977054', '314', 'Bijlee Bijlee Ringtone Download Harrdy Sandhu', 2, '', 2, 1),
(649, '2021-11-05 18:00:02.819984', '242', 'Suna Hai Sanak Ringtone Download Jubin Nautiyal', 3, '', 2, 1),
(650, '2021-11-05 18:02:51.118803', '26', '/https://www.ringtonefly.co/suna-hai-sanak-ringtone-download-jubin-nautiyal/ ---> /', 1, '[{\"added\": {}}]', 55, 1),
(651, '2021-11-05 18:04:00.077674', '26', '/suna-hai-sanak-ringtone-download-jubin-nautiyal/ ---> /', 2, '[{\"changed\": {\"fields\": [\"Redirect from\"]}}]', 55, 1),
(652, '2021-11-05 18:08:12.409149', '103', 'Suna Hai Sanak Ringtone Download Jubin Nautiyal', 3, '', 46, 1),
(653, '2021-11-22 20:36:41.671264', '139', 'Natu Natu Telugu Ringtone Download(Rrr)', 1, '[{\"added\": {}}]', 46, 1),
(654, '2021-11-22 20:37:06.111024', '316', 'Natu Natu Telugu Ringtone Download(Rrr)', 2, '', 2, 1),
(655, '2021-11-27 06:18:33.322802', '108', 'Privacy Policy', 2, '', 2, 1),
(656, '2021-11-28 05:24:33.876633', '140', 'Hoye Ishq Na Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(657, '2021-11-28 05:25:03.051380', '318', 'Hoye Ishq Na Ringtone Download', 2, '', 2, 1),
(658, '2021-12-04 04:18:32.537293', '141', 'Mere Shankara Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(659, '2021-12-04 04:19:13.245136', '320', 'Mere Shankara Ringtone Download', 2, '', 2, 1),
(660, '2021-12-06 06:18:19.160530', '142', 'Rait Zara Si Ringtone Download (Atrangi re )', 1, '[{\"added\": {}}]', 46, 1),
(661, '2021-12-06 06:19:05.361968', '322', 'Rait Zara Si Ringtone Download (Atrangi re )', 2, '', 2, 1),
(662, '2021-12-08 04:45:35.635542', '143', 'Tera name hai likha ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(663, '2021-12-08 04:45:55.915978', '324', 'Tera name hai likha ringtone Download', 2, '', 2, 1),
(664, '2021-12-09 05:01:06.163509', '180', 'Susan Johnson', 3, '', 39, 1),
(665, '2021-12-09 05:01:06.166734', '179', 'WilliamTheal', 3, '', 39, 1),
(666, '2021-12-09 05:01:06.168007', '178', 'WilliamTheal', 3, '', 39, 1),
(667, '2021-12-09 05:01:06.169011', '177', 'WilliamTheal', 3, '', 39, 1),
(668, '2021-12-09 05:01:06.169929', '176', 'WilliamTheal', 3, '', 39, 1),
(669, '2021-12-09 05:01:06.170817', '175', 'WilliamTheal', 3, '', 39, 1),
(670, '2021-12-09 05:01:06.171688', '174', 'Mike Barnes\r\n', 3, '', 39, 1),
(671, '2021-12-09 05:01:06.172577', '173', 'WilliamTheal', 3, '', 39, 1),
(672, '2021-12-09 05:01:06.173464', '172', 'WilliamTheal', 3, '', 39, 1),
(673, '2021-12-09 05:01:06.174610', '171', 'WilliamTheal', 3, '', 39, 1),
(674, '2021-12-09 05:01:06.175513', '170', 'WilliamTheal', 3, '', 39, 1),
(675, '2021-12-09 05:01:06.176412', '169', 'WilliamTheal', 3, '', 39, 1),
(676, '2021-12-09 05:01:06.177293', '168', 'WilliamTheal', 3, '', 39, 1),
(677, '2021-12-09 05:01:06.178057', '167', 'WilliamTheal', 3, '', 39, 1),
(678, '2021-12-09 05:01:06.178875', '166', 'WilliamTheal', 3, '', 39, 1),
(679, '2021-12-09 05:01:06.179748', '165', 'WilliamTheal', 3, '', 39, 1),
(680, '2021-12-09 05:01:06.180762', '164', 'WilliamTheal', 3, '', 39, 1),
(681, '2021-12-09 05:01:06.181656', '163', 'Jaimeitach', 3, '', 39, 1),
(682, '2021-12-09 05:01:06.182685', '162', 'WilliamTheal', 3, '', 39, 1),
(683, '2021-12-09 05:01:06.183687', '161', 'WilliamTheal', 3, '', 39, 1),
(684, '2021-12-09 05:01:06.184734', '160', 'WilliamTheal', 3, '', 39, 1),
(685, '2021-12-09 05:01:06.185613', '159', 'WilliamTheal', 3, '', 39, 1),
(686, '2021-12-09 05:01:06.186433', '158', 'WilliamTheal', 3, '', 39, 1),
(687, '2021-12-09 05:01:06.187394', '157', 'Nishant Sharma', 3, '', 39, 1),
(688, '2021-12-09 05:01:06.188441', '156', 'Peterbok', 3, '', 39, 1),
(689, '2021-12-09 05:01:06.189278', '155', 'Peterbok', 3, '', 39, 1),
(690, '2021-12-09 05:01:06.190265', '154', 'Peterbok', 3, '', 39, 1),
(691, '2021-12-09 05:01:06.191249', '153', 'Peterbok', 3, '', 39, 1),
(692, '2021-12-09 05:01:06.192128', '152', 'Peterbok', 3, '', 39, 1),
(693, '2021-12-09 05:01:06.193251', '151', 'Mike Molligan\r\n', 3, '', 39, 1),
(694, '2021-12-09 05:01:06.194092', '150', 'AnthonyToity', 3, '', 39, 1),
(695, '2021-12-09 05:01:06.194986', '149', 'AnthonyToity', 3, '', 39, 1),
(696, '2021-12-09 05:01:06.195809', '148', 'AnthonyToity', 3, '', 39, 1),
(697, '2021-12-09 05:01:06.196551', '147', 'AnthonyToity', 3, '', 39, 1),
(698, '2021-12-09 05:01:06.197314', '146', 'AnthonyToity', 3, '', 39, 1),
(699, '2021-12-09 05:01:06.198045', '145', 'Jordi Ellis', 3, '', 39, 1),
(700, '2021-12-09 05:01:06.198807', '144', 'MatthewCrath', 3, '', 39, 1),
(701, '2021-12-09 05:01:06.199575', '143', 'MatthewCrath', 3, '', 39, 1),
(702, '2021-12-09 05:01:06.200380', '142', 'MatthewCrath', 3, '', 39, 1),
(703, '2021-12-09 05:01:06.201290', '141', 'MatthewCrath', 3, '', 39, 1),
(704, '2021-12-09 05:01:06.202172', '140', 'MatthewCrath', 3, '', 39, 1),
(705, '2021-12-09 05:01:06.203077', '139', 'Mike Mason\r\n', 3, '', 39, 1),
(706, '2021-12-09 05:01:06.204064', '138', 'WilliamTheal', 3, '', 39, 1),
(707, '2021-12-09 05:01:06.204945', '137', 'WilliamTheal', 3, '', 39, 1),
(708, '2021-12-09 05:01:06.205751', '136', 'WilliamTheal', 3, '', 39, 1),
(709, '2021-12-09 05:01:06.206696', '135', 'WilliamTheal', 3, '', 39, 1),
(710, '2021-12-09 05:01:06.207615', '134', 'WilliamTheal', 3, '', 39, 1),
(711, '2021-12-09 05:01:06.208554', '133', 'Eric Jones', 3, '', 39, 1),
(712, '2021-12-09 05:01:06.209502', '132', 'WilliamTheal', 3, '', 39, 1),
(713, '2021-12-09 05:01:06.210304', '131', 'WilliamTheal', 3, '', 39, 1),
(714, '2021-12-09 05:01:06.211079', '130', 'WilliamTheal', 3, '', 39, 1),
(715, '2021-12-09 05:01:06.211909', '129', 'WilliamTheal', 3, '', 39, 1),
(716, '2021-12-09 05:01:06.212685', '128', 'WilliamTheal', 3, '', 39, 1),
(717, '2021-12-09 05:01:06.213561', '127', 'Eric Jones', 3, '', 39, 1),
(718, '2021-12-09 05:01:06.214425', '126', 'Roberts Zuluf', 3, '', 39, 1),
(719, '2021-12-09 05:01:06.215360', '125', 'Billyhor', 3, '', 39, 1),
(720, '2021-12-09 05:01:06.216363', '124', 'Billyhor', 3, '', 39, 1),
(721, '2021-12-09 05:01:06.217282', '123', 'Billyhor', 3, '', 39, 1),
(722, '2021-12-09 05:01:06.218172', '122', 'Billyhor', 3, '', 39, 1),
(723, '2021-12-09 05:01:06.219052', '121', 'Billyhor', 3, '', 39, 1),
(724, '2021-12-09 05:01:06.219950', '120', 'Mike Austin\r\n', 3, '', 39, 1),
(725, '2021-12-09 05:01:06.220846', '119', 'Richardrek', 3, '', 39, 1),
(726, '2021-12-09 05:01:06.221708', '118', 'Richardrek', 3, '', 39, 1),
(727, '2021-12-09 05:01:06.222580', '117', 'Richardrek', 3, '', 39, 1),
(728, '2021-12-09 05:01:06.223578', '116', 'Richardrek', 3, '', 39, 1),
(729, '2021-12-09 05:01:06.224447', '115', 'Richardrek', 3, '', 39, 1),
(730, '2021-12-09 05:01:06.225310', '114', 'WilliamTheal', 3, '', 39, 1),
(731, '2021-12-09 05:01:06.226156', '113', 'WilliamTheal', 3, '', 39, 1),
(732, '2021-12-09 05:01:06.227017', '112', 'WilliamTheal', 3, '', 39, 1),
(733, '2021-12-09 05:01:06.227890', '111', 'WilliamTheal', 3, '', 39, 1),
(734, '2021-12-09 05:01:06.228733', '110', 'WilliamTheal', 3, '', 39, 1),
(735, '2021-12-09 05:01:06.229588', '109', 'Richardrek', 3, '', 39, 1),
(736, '2021-12-09 05:01:06.230444', '108', 'Richardrek', 3, '', 39, 1),
(737, '2021-12-09 05:01:06.231313', '107', 'Richardrek', 3, '', 39, 1),
(738, '2021-12-09 05:01:06.235959', '106', 'Richardrek', 3, '', 39, 1),
(739, '2021-12-09 05:01:06.237319', '105', 'Richardrek', 3, '', 39, 1),
(740, '2021-12-09 05:01:06.238526', '104', 'David Holman', 3, '', 39, 1),
(741, '2021-12-09 05:01:06.239739', '103', 'Eric Jones', 3, '', 39, 1),
(742, '2021-12-09 05:01:06.240930', '102', 'Crist Roy', 3, '', 39, 1),
(743, '2021-12-09 05:01:06.242053', '101', 'Charleswew', 3, '', 39, 1),
(744, '2021-12-09 05:01:06.243176', '100', 'JamesWax', 3, '', 39, 1),
(745, '2021-12-09 05:01:06.244222', '99', 'JamesWax', 3, '', 39, 1),
(746, '2021-12-09 05:01:06.245484', '98', 'JamesWax', 3, '', 39, 1),
(747, '2021-12-09 05:01:06.246574', '97', 'JamesWax', 3, '', 39, 1),
(748, '2021-12-09 05:01:06.247647', '96', 'JamesWax', 3, '', 39, 1),
(749, '2021-12-09 05:01:06.248823', '95', 'Mike Shorter\r\n', 3, '', 39, 1),
(750, '2021-12-09 05:01:06.250012', '94', 'Albertnef', 3, '', 39, 1),
(751, '2021-12-09 05:01:06.250973', '93', 'Albertnef', 3, '', 39, 1),
(752, '2021-12-09 05:01:06.251810', '92', 'Albertnef', 3, '', 39, 1),
(753, '2021-12-09 05:01:06.252606', '91', 'Albertnef', 3, '', 39, 1),
(754, '2021-12-09 05:01:06.253379', '90', 'Albertnef', 3, '', 39, 1),
(755, '2021-12-09 05:01:06.254141', '89', 'Albertnef', 3, '', 39, 1),
(756, '2021-12-09 05:01:06.254896', '88', 'Albertnef', 3, '', 39, 1),
(757, '2021-12-09 05:01:06.255646', '87', 'Albertnef', 3, '', 39, 1),
(758, '2021-12-09 05:01:06.256414', '86', 'Albertnef', 3, '', 39, 1),
(759, '2021-12-09 05:01:06.257134', '85', 'Albertnef', 3, '', 39, 1),
(760, '2021-12-09 05:01:06.257931', '84', 'Albertnef', 3, '', 39, 1),
(761, '2021-12-09 05:01:06.258682', '83', 'Albertnef', 3, '', 39, 1),
(762, '2021-12-09 05:01:06.259537', '82', 'Albertnef', 3, '', 39, 1),
(763, '2021-12-09 05:01:06.260335', '81', 'Albertnef', 3, '', 39, 1),
(764, '2021-12-09 05:02:08.165903', '80', 'Albertnef', 3, '', 39, 1),
(765, '2021-12-09 05:02:08.167181', '79', 'JamesAvark', 3, '', 39, 1),
(766, '2021-12-09 05:02:08.168051', '78', 'Gerarddep', 3, '', 39, 1),
(767, '2021-12-09 05:02:08.168898', '77', 'Mike Macey\r\n', 3, '', 39, 1),
(768, '2021-12-09 14:30:40.964084', '144', 'Ghana Kasuta Lage Re Ringtone Download (Rafttar)', 1, '[{\"added\": {}}]', 46, 1),
(769, '2021-12-09 14:31:27.364090', '326', 'Ghana Kasuta Lage Re Ringtone Download (Rafttar)', 2, '', 2, 1),
(770, '2021-12-10 03:16:52.402768', '145', 'Fakir Ringtone Download (Hansraj Raghuwanshi)', 1, '[{\"added\": {}}]', 46, 1),
(771, '2021-12-10 03:17:40.151280', '328', 'Fakir Ringtone Download (Hansraj Raghuwanshi)', 2, '', 2, 1),
(772, '2021-12-10 05:07:51.597619', '146', 'Duaa Mein Yaad Rakhna Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(773, '2021-12-10 05:08:14.365370', '330', 'Duaa Mein Yaad Rakhna Ringtone Download', 2, '', 2, 1),
(774, '2021-12-11 05:50:22.500592', '147', 'Jag Ghoomeya Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(775, '2021-12-11 05:51:02.735606', '332', 'Jag Ghoomeya Ringtone Download', 2, '', 2, 1),
(776, '2021-12-12 06:53:13.796669', '332', 'Jag Ghoomeya Ringtone Download', 2, '', 2, 1),
(777, '2021-12-12 07:04:45.684562', '332', 'Jag Ghoomeya Ringtone Download', 2, '', 2, 1),
(778, '2021-12-12 17:33:07.742703', '148', 'Dastaan E Ishq Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(779, '2021-12-12 17:34:16.160776', '334', 'Dastaan E Ishq Ringtone Download', 2, '', 2, 1),
(780, '2021-12-13 05:39:37.670192', '149', 'humsafar ringtone download', 1, '[{\"added\": {}}]', 46, 1),
(781, '2021-12-13 05:43:39.671260', '336', 'humsafar ringtone download', 2, '', 2, 1),
(782, '2021-12-13 05:49:31.921391', '149', 'Humsafar ringtone download', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Like\", \"Download\", \"Android ringtone\", \"Iphone ringtone\"]}}]', 46, 1),
(783, '2021-12-13 05:55:48.936566', '150', '89 | Bigadne De Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(784, '2021-12-13 05:59:32.835796', '150', '89 | Bigadne De Ringtone Download', 2, '[{\"changed\": {\"fields\": [\"Android ringtone\", \"Iphone ringtone\"]}}]', 46, 1),
(785, '2021-12-13 06:02:17.722388', '151', 'Ram Tumhara Naam Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(786, '2021-12-13 06:03:20.431953', '336', 'Humsafar ringtone download', 2, '', 2, 1),
(787, '2021-12-13 06:04:20.820962', '338', '89 | Bigadne De Ringtone Download', 2, '', 2, 1),
(788, '2021-12-13 06:05:26.967749', '339', 'Ram Tumhara Naam Ringtone Download', 2, '', 2, 1),
(789, '2021-12-13 12:42:50.917340', '152', 'Chan chanani ringtone download', 1, '[{\"added\": {}}]', 46, 1),
(790, '2021-12-13 12:43:25.430820', '342', 'Chan chanani ringtone download', 2, '', 2, 1),
(791, '2021-12-13 12:57:54.865773', '152', 'Chan chanani ringtone download', 2, '[{\"changed\": {\"fields\": [\"Android ringtone\", \"Iphone ringtone\"]}}]', 46, 1),
(792, '2021-12-14 03:24:38.119144', '153', 'Param Sundari Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(793, '2021-12-14 03:25:44.652331', '344', 'Param Sundari Ringtone Download', 2, '', 2, 1),
(794, '2021-12-14 04:01:37.838970', '1', 'New Mp3 Ringtones Download Free for Mobile Phones', 2, '', 2, 1),
(795, '2021-12-14 05:02:12.836470', '1', 'Limitation', 2, '[]', 90, 1),
(796, '2021-12-14 05:03:38.608703', '153', 'Param Sundari Ringtone Download', 2, '[]', 46, 1),
(797, '2021-12-15 04:21:50.565431', '1', 'Limitation', 2, '[{\"changed\": {\"fields\": [\"Popular container\", \"New container\", \"Top 50 container\", \"Category page\", \"Individual ringtone page\"]}}]', 90, 1),
(798, '2021-12-15 05:31:45.019547', '154', 'Udd Jaa Parindey Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(799, '2021-12-15 05:33:06.065416', '346', 'Udd Jaa Parindey Ringtone Download', 2, '', 2, 1),
(800, '2021-12-15 06:06:50.616457', '155', 'Baliye Re Ringtone Download (Jersey)', 1, '[{\"added\": {}}]', 46, 1),
(801, '2021-12-15 06:07:19.001040', '348', 'Baliye Re Ringtone Download (Jersey)', 2, '', 2, 1),
(802, '2021-12-15 16:55:44.564663', '156', 'Teri Meri Gallan Hogi Mashhur ( Raatan Lambiyan ) Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(803, '2021-12-15 16:56:14.379199', '350', 'Teri Meri Gallan Hogi Mashhur ( Raatan Lambiyan ) Ringtone Download', 2, '', 2, 1),
(804, '2021-12-16 11:40:19.408964', '157', 'Saazish ringtone download bb ki vines | Bhuvan bam | Dhindhora ringtone', 1, '[{\"added\": {}}]', 46, 1),
(805, '2021-12-16 11:41:05.970183', '352', 'Saazish ringtone download bb ki vines | Bhuvan bam | Dhindhora ringtone', 2, '', 2, 1),
(806, '2021-12-17 09:30:59.463302', '1', 'Limitation', 2, '[{\"changed\": {\"fields\": [\"Popular container\", \"New container\", \"Top 50 container\", \"Individual ringtone page\"]}}]', 90, 1),
(807, '2021-12-17 10:54:16.683385', '158', 'Iphone Notification Ringtone Download', 1, '[{\"added\": {}}]', 46, 1),
(808, '2021-12-17 10:54:43.261775', '354', 'Iphone Notification Ringtone Download', 2, '', 2, 1),
(809, '2021-12-17 11:08:40.079269', '80', 'iPhone Ringtones', 2, '', 2, 1),
(810, '2021-12-18 04:28:35.931693', '159', 'Dance Meri Rani Ringtone Download | Guru Randhawa', 1, '[{\"added\": {}}]', 46, 1),
(811, '2021-12-18 04:29:04.836769', '356', 'Dance Meri Rani Ringtone Download | Guru Randhawa', 2, '', 2, 1),
(812, '2021-12-18 06:20:44.827859', '160', 'Teri Life Meri Life Ringtone Download | Punjabi Ringtones', 1, '[{\"added\": {}}]', 46, 1),
(813, '2021-12-18 06:21:46.287593', '358', 'Teri Life Meri Life Ringtone Download | Punjabi Ringtones', 2, '', 2, 1),
(814, '2021-12-18 06:50:42.210674', '161', 'Jai Kara Ringtone Download • Hansraj Raghuwanshi', 1, '[{\"added\": {}}]', 46, 1),
(815, '2021-12-18 06:51:07.006171', '360', 'Jai Kara Ringtone Download • Hansraj Raghuwanshi', 2, '', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(8, 'admin', 'logentry'),
(56, 'ads_txt', 'rule'),
(4, 'auth', 'group'),
(3, 'auth', 'permission'),
(5, 'auth', 'user'),
(57, 'bootstrap4_alerts', 'bootstrap4alerts'),
(58, 'bootstrap4_badge', 'bootstrap4badge'),
(59, 'bootstrap4_card', 'bootstrap4card'),
(60, 'bootstrap4_card', 'bootstrap4cardinner'),
(61, 'bootstrap4_carousel', 'bootstrap4carousel'),
(62, 'bootstrap4_carousel', 'bootstrap4carouselslide'),
(63, 'bootstrap4_collapse', 'bootstrap4collapse'),
(64, 'bootstrap4_collapse', 'bootstrap4collapsecontainer'),
(65, 'bootstrap4_collapse', 'bootstrap4collapsetrigger'),
(66, 'bootstrap4_content', 'bootstrap4blockquote'),
(67, 'bootstrap4_content', 'bootstrap4code'),
(68, 'bootstrap4_content', 'bootstrap4figure'),
(69, 'bootstrap4_grid', 'bootstrap4gridcolumn'),
(70, 'bootstrap4_grid', 'bootstrap4gridcontainer'),
(71, 'bootstrap4_grid', 'bootstrap4gridrow'),
(72, 'bootstrap4_jumbotron', 'bootstrap4jumbotron'),
(73, 'bootstrap4_link', 'bootstrap4link'),
(74, 'bootstrap4_listgroup', 'bootstrap4listgroup'),
(75, 'bootstrap4_listgroup', 'bootstrap4listgroupitem'),
(76, 'bootstrap4_media', 'bootstrap4media'),
(77, 'bootstrap4_media', 'bootstrap4mediabody'),
(78, 'bootstrap4_picture', 'bootstrap4picture'),
(79, 'bootstrap4_tabs', 'bootstrap4tab'),
(80, 'bootstrap4_tabs', 'bootstrap4tabitem'),
(81, 'bootstrap4_utilities', 'bootstrap4spacing'),
(11, 'cms', 'aliaspluginmodel'),
(10, 'cms', 'cmsplugin'),
(12, 'cms', 'globalpagepermission'),
(2, 'cms', 'page'),
(13, 'cms', 'pagepermission'),
(21, 'cms', 'pagetype'),
(14, 'cms', 'pageuser'),
(15, 'cms', 'pageusergroup'),
(1, 'cms', 'placeholder'),
(16, 'cms', 'placeholderreference'),
(17, 'cms', 'staticplaceholder'),
(18, 'cms', 'title'),
(22, 'cms', 'treenode'),
(20, 'cms', 'urlconfrevision'),
(19, 'cms', 'usersettings'),
(35, 'config', 'aboutusplugin'),
(36, 'config', 'category'),
(37, 'config', 'categorypanelplugin'),
(38, 'config', 'categoryplugin'),
(39, 'config', 'contactus'),
(40, 'config', 'contactusplugin'),
(41, 'config', 'containerplugin'),
(89, 'config', 'containerpluginv2'),
(42, 'config', 'favoriteplugin'),
(43, 'config', 'fetchringtoneplugin'),
(54, 'config', 'footerhyperlink'),
(44, 'config', 'footerplugin'),
(90, 'config', 'limitationobject'),
(53, 'config', 'linkmodel'),
(52, 'config', 'metamodel'),
(45, 'config', 'pageids'),
(46, 'config', 'ringtone'),
(47, 'config', 'seotool'),
(48, 'config', 'singlefavoriteplugin'),
(51, 'config', 'singleringtoneplugin'),
(49, 'config', 'siteconfig'),
(50, 'config', 'top50'),
(6, 'contenttypes', 'contenttype'),
(86, 'djangocms_googlemap', 'googlemap'),
(87, 'djangocms_googlemap', 'googlemapmarker'),
(88, 'djangocms_googlemap', 'googlemaproute'),
(82, 'djangocms_icon', 'icon'),
(83, 'djangocms_link', 'link'),
(84, 'djangocms_picture', 'picture'),
(55, 'djangocms_redirect', 'redirect'),
(85, 'djangocms_style', 'style'),
(24, 'djangocms_text_ckeditor', 'text'),
(32, 'easy_thumbnails', 'source'),
(33, 'easy_thumbnails', 'thumbnail'),
(34, 'easy_thumbnails', 'thumbnaildimensions'),
(25, 'filer', 'clipboard'),
(26, 'filer', 'clipboarditem'),
(27, 'filer', 'file'),
(28, 'filer', 'folder'),
(29, 'filer', 'folderpermission'),
(30, 'filer', 'image'),
(31, 'filer', 'thumbnailoption'),
(23, 'menus', 'cachekey'),
(7, 'sessions', 'session'),
(9, 'sites', 'site');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-06-05 10:25:24.849959'),
(2, 'auth', '0001_initial', '2021-06-05 10:25:25.646677'),
(3, 'admin', '0001_initial', '2021-06-05 10:25:26.266802'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-06-05 10:25:26.323273'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-06-05 10:25:26.337447'),
(6, 'sites', '0001_initial', '2021-06-05 10:25:26.426035'),
(7, 'sites', '0002_alter_domain_unique', '2021-06-05 10:25:26.437316'),
(8, 'ads_txt', '0001_initial', '2021-06-05 10:25:26.671577'),
(9, 'contenttypes', '0002_remove_content_type_name', '2021-06-05 10:25:26.774547'),
(10, 'auth', '0002_alter_permission_name_max_length', '2021-06-05 10:25:26.790707'),
(11, 'auth', '0003_alter_user_email_max_length', '2021-06-05 10:25:26.804572'),
(12, 'auth', '0004_alter_user_username_opts', '2021-06-05 10:25:26.815591'),
(13, 'auth', '0005_alter_user_last_login_null', '2021-06-05 10:25:26.850066'),
(14, 'auth', '0006_require_contenttypes_0002', '2021-06-05 10:25:26.853636'),
(15, 'auth', '0007_alter_validators_add_error_messages', '2021-06-05 10:25:26.864426'),
(16, 'auth', '0008_alter_user_username_max_length', '2021-06-05 10:25:26.877805'),
(17, 'auth', '0009_alter_user_last_name_max_length', '2021-06-05 10:25:26.890085'),
(18, 'auth', '0010_alter_group_name_max_length', '2021-06-05 10:25:26.903037'),
(19, 'auth', '0011_update_proxy_permissions', '2021-06-05 10:25:26.916883'),
(20, 'auth', '0012_alter_user_first_name_max_length', '2021-06-05 10:25:26.930422'),
(21, 'cms', '0001_initial', '2021-06-05 10:25:28.854814'),
(22, 'cms', '0002_auto_20140816_1918', '2021-06-05 10:25:30.716698'),
(23, 'cms', '0003_auto_20140926_2347', '2021-06-05 10:25:31.123048'),
(24, 'cms', '0004_auto_20140924_1038', '2021-06-05 10:25:31.529241'),
(25, 'cms', '0005_auto_20140924_1039', '2021-06-05 10:25:31.564682'),
(26, 'cms', '0006_auto_20140924_1110', '2021-06-05 10:25:31.930229'),
(27, 'cms', '0007_auto_20141028_1559', '2021-06-05 10:25:31.958098'),
(28, 'cms', '0008_auto_20150208_2149', '2021-06-05 10:25:31.997401'),
(29, 'cms', '0008_auto_20150121_0059', '2021-06-05 10:25:32.043829'),
(30, 'cms', '0009_merge', '2021-06-05 10:25:32.047496'),
(31, 'cms', '0010_migrate_use_structure', '2021-06-05 10:25:32.107798'),
(32, 'cms', '0011_auto_20150419_1006', '2021-06-05 10:25:32.151803'),
(33, 'cms', '0012_auto_20150607_2207', '2021-06-05 10:25:32.293171'),
(34, 'cms', '0013_urlconfrevision', '2021-06-05 10:25:32.356906'),
(35, 'cms', '0014_auto_20160404_1908', '2021-06-05 10:25:32.389229'),
(36, 'cms', '0015_auto_20160421_0000', '2021-06-05 10:25:32.432374'),
(37, 'cms', '0016_auto_20160608_1535', '2021-06-05 10:25:32.547480'),
(38, 'bootstrap4_alerts', '0001_initial', '2021-06-05 10:25:32.722112'),
(39, 'bootstrap4_badge', '0001_initial', '2021-06-05 10:25:32.905335'),
(40, 'bootstrap4_card', '0001_initial', '2021-06-05 10:25:33.310840'),
(41, 'filer', '0001_initial', '2021-06-05 10:25:35.185481'),
(42, 'filer', '0002_auto_20150606_2003', '2021-06-05 10:25:35.453199'),
(43, 'filer', '0003_thumbnailoption', '2021-06-05 10:25:35.618876'),
(44, 'filer', '0004_auto_20160328_1434', '2021-06-05 10:25:35.658620'),
(45, 'filer', '0005_auto_20160623_1425', '2021-06-05 10:25:35.864488'),
(46, 'filer', '0006_auto_20160623_1627', '2021-06-05 10:25:35.929949'),
(47, 'filer', '0007_auto_20161016_1055', '2021-06-05 10:25:35.945864'),
(48, 'filer', '0008_auto_20171117_1313', '2021-06-05 10:25:35.984623'),
(49, 'filer', '0009_auto_20171220_1635', '2021-06-05 10:25:36.049795'),
(50, 'filer', '0010_auto_20180414_2058', '2021-06-05 10:25:36.117603'),
(51, 'filer', '0011_auto_20190418_0137', '2021-06-05 10:25:36.355303'),
(52, 'bootstrap4_carousel', '0001_initial', '2021-06-05 10:25:37.069748'),
(53, 'bootstrap4_carousel', '0002_bootstrap4carousel_carousel_aspect_ratio', '2021-06-05 10:25:37.215498'),
(54, 'bootstrap4_carousel', '0003_auto_20180610_1102', '2021-06-05 10:25:37.238686'),
(55, 'bootstrap4_carousel', '0004_auto_20190703_0831', '2021-06-05 10:25:37.362891'),
(56, 'bootstrap4_collapse', '0001_initial', '2021-06-05 10:25:37.828097'),
(57, 'bootstrap4_content', '0001_initial', '2021-06-05 10:25:38.228924'),
(58, 'bootstrap4_content', '0002_added_figure', '2021-06-05 10:25:38.420252'),
(59, 'bootstrap4_grid', '0001_initial', '2021-06-05 10:25:39.624357'),
(60, 'bootstrap4_grid', '0002_auto_20180709_0808', '2021-06-05 10:25:39.953540'),
(61, 'bootstrap4_grid', '0003_migrate_column_size', '2021-06-05 10:25:40.010041'),
(62, 'bootstrap4_grid', '0004_remove_bootstrap4gridcolumn_column_size', '2021-06-05 10:25:40.047913'),
(63, 'bootstrap4_jumbotron', '0001_initial', '2021-06-05 10:25:40.211321'),
(64, 'bootstrap4_link', '0001_initial', '2021-06-05 10:25:40.717771'),
(65, 'bootstrap4_link', '0002_add_icons', '2021-06-05 10:25:40.906163'),
(66, 'bootstrap4_link', '0003_icon_updates', '2021-06-05 10:25:40.977836'),
(67, 'bootstrap4_link', '0004_auto_20190703_0831', '2021-06-05 10:25:41.123365'),
(68, 'bootstrap4_listgroup', '0001_initial', '2021-06-05 10:25:41.530024'),
(69, 'bootstrap4_media', '0001_initial', '2021-06-05 10:25:41.956566'),
(70, 'djangocms_picture', '0001_initial', '2021-06-05 10:25:42.250896'),
(71, 'djangocms_picture', '0002_auto_20151018_1927', '2021-06-05 10:25:42.421774'),
(72, 'djangocms_picture', '0003_migrate_to_filer', '2021-06-05 10:25:42.851496'),
(73, 'djangocms_picture', '0004_adapt_fields', '2021-06-05 10:25:44.670636'),
(74, 'djangocms_picture', '0005_reset_null_values', '2021-06-05 10:25:44.736487'),
(75, 'djangocms_picture', '0006_remove_null_values', '2021-06-05 10:25:44.919581'),
(76, 'djangocms_picture', '0007_fix_alignment', '2021-06-05 10:25:44.972344'),
(77, 'djangocms_picture', '0008_picture_use_responsive_image', '2021-06-05 10:25:45.058643'),
(78, 'bootstrap4_picture', '0001_initial', '2021-06-05 10:25:45.666628'),
(79, 'bootstrap4_picture', '0002_bootstrap4picture_use_responsive_image', '2021-06-05 10:25:45.851258'),
(80, 'bootstrap4_picture', '0003_auto_20181212_1055', '2021-06-05 10:25:46.039754'),
(81, 'bootstrap4_picture', '0004_auto_20190703_0831', '2021-06-05 10:25:46.345537'),
(82, 'bootstrap4_tabs', '0001_initial', '2021-06-05 10:25:46.791883'),
(83, 'bootstrap4_tabs', '0002_auto_20180610_1106', '2021-06-05 10:25:46.865266'),
(84, 'bootstrap4_utilities', '0001_initial', '2021-06-05 10:25:47.115750'),
(85, 'cms', '0017_pagetype', '2021-06-05 10:25:47.269434'),
(86, 'cms', '0018_pagenode', '2021-06-05 10:25:47.999371'),
(87, 'cms', '0019_set_pagenode', '2021-06-05 10:25:48.233816'),
(88, 'cms', '0020_old_tree_cleanup', '2021-06-05 10:25:48.891536'),
(89, 'cms', '0021_auto_20180507_1432', '2021-06-05 10:25:48.914934'),
(90, 'cms', '0022_auto_20180620_1551', '2021-06-05 10:25:48.960525'),
(91, 'config', '0001_initial', '2021-06-05 10:25:53.393177'),
(92, 'djangocms_googlemap', '0001_initial', '2021-06-05 10:25:54.383252'),
(93, 'djangocms_googlemap', '0002_auto_20160622_1031', '2021-06-05 10:25:54.867236'),
(94, 'djangocms_googlemap', '0003_auto_20160825_1829', '2021-06-05 10:25:54.916698'),
(95, 'djangocms_googlemap', '0004_adapted_fields', '2021-06-05 10:25:57.143933'),
(96, 'djangocms_googlemap', '0005_create_nested_plugins', '2021-06-05 10:25:57.265478'),
(97, 'djangocms_googlemap', '0006_remove_fields', '2021-06-05 10:25:57.812601'),
(98, 'djangocms_googlemap', '0007_reset_null_values', '2021-06-05 10:25:57.897942'),
(99, 'djangocms_googlemap', '0008_removed_null_fields', '2021-06-05 10:25:57.973525'),
(100, 'djangocms_googlemap', '0009_googlemapmarker_icon', '2021-06-05 10:25:58.108079'),
(101, 'djangocms_googlemap', '0010_auto_20190718_1021', '2021-06-05 10:25:58.289068'),
(102, 'djangocms_icon', '0001_initial', '2021-06-05 10:25:58.526524'),
(103, 'djangocms_icon', '0002_auto_20190218_2017', '2021-06-05 10:25:58.635859'),
(104, 'djangocms_link', '0001_initial', '2021-06-05 10:25:59.061223'),
(105, 'djangocms_link', '0002_auto_20140929_1705', '2021-06-05 10:25:59.165666'),
(106, 'djangocms_link', '0003_auto_20150212_1310', '2021-06-05 10:25:59.230549'),
(107, 'djangocms_link', '0004_auto_20150708_1133', '2021-06-05 10:25:59.369236'),
(108, 'djangocms_link', '0005_auto_20151003_1710', '2021-06-05 10:25:59.433940'),
(109, 'djangocms_link', '0006_remove_related_name_for_cmsplugin_ptr', '2021-06-05 10:25:59.552527'),
(110, 'djangocms_link', '0007_set_related_name_for_cmsplugin_ptr', '2021-06-05 10:25:59.672208'),
(111, 'djangocms_link', '0008_link_attributes', '2021-06-05 10:25:59.775446'),
(112, 'djangocms_link', '0009_auto_20160705_1344', '2021-06-05 10:25:59.840541'),
(113, 'djangocms_link', '0010_adapted_fields', '2021-06-05 10:26:00.609181'),
(114, 'djangocms_link', '0011_fixed_null_values', '2021-06-05 10:26:00.700425'),
(115, 'djangocms_link', '0012_removed_null', '2021-06-05 10:26:01.134605'),
(116, 'djangocms_link', '0013_fix_hostname', '2021-06-05 10:26:01.201153'),
(117, 'djangocms_link', '0014_link_file_link', '2021-06-05 10:26:01.362330'),
(118, 'djangocms_link', '0015_auto_20190621_0407', '2021-06-05 10:26:01.447736'),
(119, 'djangocms_picture', '0009_auto_20181212_1003', '2021-06-05 10:26:01.728496'),
(120, 'djangocms_picture', '0010_auto_20190627_0432', '2021-06-05 10:26:02.111120'),
(121, 'djangocms_picture', '0011_auto_20190314_1536', '2021-06-05 10:26:02.326476'),
(122, 'djangocms_redirect', '0001_initial', '2021-06-05 10:26:02.574674'),
(123, 'djangocms_redirect', '0002_auto_20170321_1807', '2021-06-05 10:26:02.644046'),
(124, 'djangocms_redirect', '0003_auto_20190810_1009', '2021-06-05 10:26:02.749016'),
(125, 'djangocms_style', '0001_initial', '2021-06-05 10:26:03.200813'),
(126, 'djangocms_style', '0002_set_related_name_for_cmsplugin_ptr', '2021-06-05 10:26:03.339091'),
(127, 'djangocms_style', '0003_adapted_fields', '2021-06-05 10:26:04.381885'),
(128, 'djangocms_style', '0004_use_positive_small_integer_field', '2021-06-05 10:26:05.253336'),
(129, 'djangocms_style', '0005_reset_null_values', '2021-06-05 10:26:05.347531'),
(130, 'djangocms_style', '0006_removed_null_fields', '2021-06-05 10:26:05.419550'),
(131, 'djangocms_style', '0007_style_template', '2021-06-05 10:26:05.516021'),
(132, 'djangocms_text_ckeditor', '0001_initial', '2021-06-05 10:26:05.679146'),
(133, 'djangocms_text_ckeditor', '0002_remove_related_name_for_cmsplugin_ptr', '2021-06-05 10:26:05.938928'),
(134, 'djangocms_text_ckeditor', '0003_set_related_name_for_cmsplugin_ptr', '2021-06-05 10:26:06.062628'),
(135, 'djangocms_text_ckeditor', '0004_auto_20160706_1339', '2021-06-05 10:26:06.156681'),
(136, 'easy_thumbnails', '0001_initial', '2021-06-05 10:26:06.462036'),
(137, 'easy_thumbnails', '0002_thumbnaildimensions', '2021-06-05 10:26:06.647871'),
(138, 'filer', '0012_file_mime_type', '2021-06-05 10:26:06.830273'),
(139, 'menus', '0001_initial', '2021-06-05 10:26:06.954189'),
(140, 'sessions', '0001_initial', '2021-06-05 10:26:07.051434'),
(141, 'cms', '0018_create_pagenode', '2021-06-05 10:26:07.074533'),
(142, 'config', '0002_siteconfig_site_title', '2021-06-05 15:05:35.450147'),
(143, 'config', '0003_category_meta_tag', '2021-06-05 15:05:35.522381'),
(144, 'config', '0004_auto_20210605_1940', '2021-06-05 15:05:35.580732'),
(145, 'config', '0002_delete_pageids', '2021-06-13 14:27:40.880173'),
(146, 'config', '0002_auto_20210711_2338', '2021-07-11 18:09:17.930908'),
(147, 'config', '0003_auto_20210712_0950', '2021-07-12 04:21:10.282214');

-- --------------------------------------------------------

--
-- Table structure for table `django_redirect`
--

CREATE TABLE `django_redirect` (
  `id` int(11) NOT NULL,
  `old_path` varchar(200) NOT NULL,
  `new_path` varchar(200) NOT NULL,
  `response_code` varchar(3) NOT NULL,
  `site_id` int(11) NOT NULL,
  `catchall_redirect` tinyint(1) NOT NULL,
  `subpath_match` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_redirect`
--

INSERT INTO `django_redirect` (`id`, `old_path`, `new_path`, `response_code`, `site_id`, `catchall_redirect`, `subpath_match`) VALUES
(2, '/category/', '/', '301', 1, 0, 0),
(4, '/category/gujarati-ringtones/jodi-shyam-ne-radha-ni-ringtone-download/', '/jodi-shyam-ne-radha-ni-ringtone-download/', '301', 1, 0, 0),
(5, '/category/gujarati-ringtones/ek-vaar-shyam-tame-radha-ne-kahido-ringtone-download/', '/ek-vaar-shyam-tame-radha-ne-kahido-ringtone-download/', '301', 1, 0, 0),
(6, '/category/gujarati-ringtones/mara-ghat-ma-birajta-shrinathji-ringtone-download/', '/mara-ghat-ma-birajta-shrinathji-ringtone-download/', '301', 1, 0, 0),
(7, '/category/gujarati-ringtones/tara-namni-chundadi-odhi-ringtone-download/', '/tara-namni-chundadi-odhi-ringtone-download/', '301', 1, 0, 0),
(8, '/category/gujarati-ringtones/rudi-rite-jivo-ruda-karjo-kam-ringtone-download/', '/rudi-rite-jivo-ruda-karjo-kam-ringtone-download/', '301', 1, 0, 0),
(9, '/category/gujarati-ringtones/bairu-gayu-piyar-ringtone-download/', '/bairu-gayu-piyar-ringtone-download/', '301', 1, 0, 0),
(10, '/category/gujarati-ringtones/bewafa-sanam-gujarati-ringtone-download/', '/bewafa-sanam-gujarati-ringtone-download/', '301', 1, 0, 0),
(11, '/category/gujarati-ringtones/dholida-dhol-re-vagad-ringtone-download/', '/dholida-dhol-re-vagad-ringtone-download/', '301', 1, 0, 0),
(12, '/category/gujarati-ringtones/dur-thi-salam-ringtone-download/', '/dur-thi-salam-ringtone-download/', '301', 1, 0, 0),
(13, '/category/gujarati-ringtones/dwarkadhish-ji-aarti-ringtone-download/', '/dwarkadhish-ji-aarti-ringtone-download/', '301', 1, 0, 0),
(14, '/category/gujarati-ringtones/gomda-nu-dil-ringtone-download/', '/gomda-nu-dil-ringtone-download/', '301', 1, 0, 0),
(15, '/category/gujarati-ringtones/mohabbat-khape-ringtone-download/', '/mohabbat-khape-ringtone-download/', '301', 1, 0, 0),
(16, '/category/gujarati-ringtones/leri-la-la-ringtone-download/', '/leri-la-la-ringtone-download/', '301', 1, 0, 0),
(17, '/category/gujarati-ringtones/hal-kana-mane-dwarika-dekhad-ringtone-download/', '/hal-kana-mane-dwarika-dekhad-ringtone-download/', '301', 1, 0, 0),
(18, '/category/gujarati-ringtones/muj-gareeb-ne-bhuli-gayi-ringtone-download/', '/muj-gareeb-ne-bhuli-gayi-ringtone-download/', '301', 1, 0, 0),
(19, '/category/gujarati-ringtones/haso-to-khara-ringtone-download/', '/haso-to-khara-ringtone-download/', '301', 1, 0, 0),
(20, '/category/gujarati-ringtones/char-bangdi-wali-audi-ringtone-download/', '/char-bangdi-wali-audi-ringtone-download/', '301', 1, 0, 0),
(21, '/category/gujarati-ringtones/dholida-dhol-dhimo-navratri-garba-ringtone-download/', '/dholida-dhol-dhimo-navratri-garba-ringtone-download/', '301', 1, 0, 0),
(22, '/category/gujarati-ringtones/nayan-ne-bandh-rakhine-gujarati-ringtone-download/', '/nayan-ne-bandh-rakhine-gujarati-ringtone-download/', '301', 1, 0, 0),
(23, '/category/gujarati-ringtones/bhuli-nathi-ke-tane-nathi-bhulvani-ringtone-download/', '/bhuli-nathi-ke-tane-nathi-bhulvani-ringtone-download/', '301', 1, 0, 0),
(24, '/category/gujarati-ringtones/mata-amba-garbo-ringtone-download/', '/mata-amba-garbo-ringtone-download/', '301', 1, 0, 0),
(25, '/category/gujarati-ringtones/', '/', '301', 1, 0, 0),
(26, '/suna-hai-sanak-ringtone-download-jubin-nautiyal/', '/', '301', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('02hoywkog5dut8r0b1qrc6u2t6sjiyx9', '.eJyrVirKzEsvyc9LjS9KTUwuiTczVLIqKSpN1cGQMFCySkvMKU6tBQAAKRMf:1m5PJw:6KmjXWFovVrYKa4SwVLPaPg7vpR1tkutRvxp2dbz8vE', '2021-08-02 09:12:16.570670'),
('05fp5dypnm7z5lyfp3h5i7ecjgoaixur', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMTUiOnRydWV9:1muwBn:zp3NcqJ3Z88d1mSOWPJjgNT_XqYbQqr3G055Et-al0o', '2021-12-22 12:36:51.708266'),
('0698nnf135kyxqkg6yrcf0jyivub90db', 'eyJyaW5ndG9uZV9yZWFjdF82MCI6ZmFsc2V9:1m3iJX:MZmGSuR87d35Eq1JUysZMKBeEwZLiQktpI0htscnK08', '2021-07-28 17:04:51.203362'),
('06cr4ec4vx3tt8lhpl9r5uqs7ln47kki', 'eyJyaW5ndG9uZV9kb3dubG9hZF82MCI6dHJ1ZX0:1mry8q:KjRn4ST-M3GTABYY9llOzy_j_Gxmcfm6GcscW0NO4FE', '2021-12-14 08:05:32.809134'),
('06mh92pn062sw198qmj8jo89qj2a9c3t', 'eyJyaW5ndG9uZV9kb3dubG9hZF80NSI6dHJ1ZX0:1mZ2MO:ii_IkxiSQWFzRKxX9in9Oe_zk_DxHGN_m6zdf50Z3bA', '2021-10-23 02:45:16.241978'),
('0diid8akuderpulez4rtcpblkas3oi3g', 'eyJyaW5ndG9uZV9yZWFjdF82OSI6dHJ1ZX0:1m4i5K:nF4EDc01rsDrW33V4Girnm3bRA1Uzb0N1-SraHV9Czw', '2021-07-31 11:02:18.217195'),
('0fsrt0jk72tgc1wjxrrwemcwj5iarsj1', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTc0V7IqKSpN1cEiZ2kKkasFAHM9FW8:1mYNob:gTAh6vM9-vb52hzC-WBLuvMPnf5gMLckk1EnNoaBaL4', '2021-10-21 07:27:41.296439'),
('0hmy3j4t4mfdo9866i36fitziwwn67ic', '.eJxNjEEKgzAQRa8yzDpUE9RCrtEDhBCnIqQzMEkoIt69Qgt28xfv8f6OuvJShSkoxVSDndBXbWQuMcubs8T5z5WWEpUSXufEhdDj40ueLecNfhgKcQVhsGPXT53rnTVgnR8G7-43NEiqotcJn_HxAQBrMi4:1lt3HH:Wm6hM-P-Vb9qOKzPuqxG1POsdWJjPn9T72Mx9gWr-ro', '2021-06-29 07:14:27.388440'),
('0i0w5zio2smq2jlkjwencsk2dijqw13f', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKhkb6hob6RgZGhjoKBsZWJuZWxsZ6SjlJqUVF-EcKQPKDmWgDixB7W:1mlINx:bbK_ZXyXFeuZ1_cZ25PBecRdJFPDA_CWdoOpraCNumg', '2021-11-25 22:17:33.618395'),
('0iedwysb3e98n38eljomlaw1ckakevh6', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yNiI6dHJ1ZX0:1mlXWg:bRvEWCMfqCpQrV_wyPCVFXTXUWHFCZOAB-oAqcT7ffc', '2021-11-26 14:27:34.000305'),
('0kkse75jiqc7uawheis9tjntgq04o0tl', 'eyJyaW5ndG9uZV9yZWFjdF8zIjp0cnVlfQ:1lppl2:63_dxDvPRogUiXrbmTYTemnPn93j8rYDZSpi-UTkG8Y', '2021-06-20 10:11:52.477427'),
('0lum5oegqjdiskcjytqs57alekaznoxx', 'eyJyaW5ndG9uZV9kb3dubG9hZF80NSI6dHJ1ZX0:1mtBfP:eCp56OwEJcT7Nn83546h_om6CoTGJAU9ZOpCJrUzbbg', '2021-12-17 16:44:11.992875'),
('0mgn9ko85v53o5ufwfbpx10lfm6je4je', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKRob6hgb6RgZGhjoKBuZWpkZWBsZ6SjlJqUVF-EcKQPKDmWgDiXB7S:1mdYxH:Pi0_JFN1pJJpA9gSOurODMOXmzozm0LFfB8ck2ff1aE', '2021-11-04 14:22:03.927662'),
('0nbzemz04gvnzqpf0z7ulcceopq1wkh6', '.eJxlj8sKwjAURP8lawl503Tp3m8INze3D5UE0hQX4r9LsSLF7ZyZgfNkdc5jK5lCKo98L5CClJ71ra50-sFKgC1o8QUB1jaFdaEa5sR6Jtkhi4A3yhtIV8hj4Vhyq3PkW4XvdOGXkuh-3ruHgwmWaVsb0ZlOaWcRlEIcSAsapFA6RhqUS8kZQ8Y7m2RnrEEtEEljlOCNB8v-FKTWH4fXGzd_VKY:1mgUFo:55pgr8666e_RI6neBgv7vwtaU4maRf7O5EcEqk-xL50', '2021-11-12 15:57:16.622668'),
('0psl5bo1x9oq2hao3i8ai5di1co36d7i', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTcyUrIqKSpN1UHIFaUmJpfEGxpbYMjAdWGThGkzw6cNKlkLAOylMok:1mp9UM:OLPk5UEKU1F7jGXvbNGSFuxKNhoezakyH-QosLlMjvs', '2021-12-06 13:36:06.274374'),
('0s5jhz58ztq7ox0szm40ugl67n3kqbh6', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yMyI6dHJ1ZX0:1mnMLZ:MaIgd7Z7YG9KXuDMrAqumJ77ee6EhiLpsovNoGkNrfM', '2021-12-01 14:55:37.065097'),
('0s7df17325d61pn25d6307qd4wv8boku', 'eyJyaW5ndG9uZV9kb3dubG9hZF80Ijp0cnVlfQ:1mAxwb:S4yVYdzmUt6JNNHIZu9ftNFzsJ2eoCkjidpADpmKDBI', '2021-08-17 17:11:09.144237'),
('0tazzw1gh6ku9b9ezqq9qduvsi677vjj', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTcyU7IqKSpN1cEiZ4pHzsgYj5wJHjkDiFwtAJLANEs:1mDsaL:AyH8cG0FeEv2277d0tH5Bwb8_uyg-_lX2GYNIISUzkU', '2021-08-25 18:04:13.503851'),
('0u7q7ralqza1mz0fozltr5iu5qxq4qhg', 'eyJyaW5ndG9uZV9kb3dubG9hZF80NyI6dHJ1ZX0:1mKesf:coVSHB8rKPzI-3zCok_fHAGWm-YaQbNkvXOs_vjZFbg', '2021-09-13 10:51:09.773688'),
('0ubwmijhkr8fhspji2moi9seaeu3xz5s', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTc0VbIqKSpN1cEmZ2ACkawFAIbsFZQ:1mrBGB:toE1A5t2hTist-Zo0N2ma3aYoWvfWQ2Dn9EvnOlfbAo', '2021-12-12 03:53:51.488368'),
('0waohjfgxf1s0aet1yyc0tdb7ovedmqo', 'eyJyaW5ndG9uZV9kb3dubG9hZF8zMiI6dHJ1ZX0:1mhWjL:NHCI4TuMFR_5dQLZXoBuil4nA2BHeET6hn4Eh7jeqWE', '2021-11-15 12:48:03.620745'),
('0wn3630l15ling6y8y9z8g3vbau3l363', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yNyI6dHJ1ZX0:1mHhaf:WZQgKd3kiZ7XkDOgcvo1SGx16o8Yu9zmhjcr7RMHXaE', '2021-09-05 07:08:21.299382'),
('0yelhc19d5ss890iyps50oqctyfmp0k9', '.eJxVjsEOgjAQRP-lZ9NAWwh49O43NNvdRaqVmrbowfjvQuQg13lvJvMWFuYy2jlzsp7EUdTi8J85wBtPK6ArTJcoMU4leSdXRW40y3MkDqfN3Q2MkMe1barOdEq3DYJSiAPrioe6Uto5HlRL1BrDpm8bqjvTGNQVImt0NfSmh2YZxXu2JcbgIFnyGVzg5dcAIfMPMvmyCx6Jn55f4ljSzJ8vHnxP3Q:1mC1dM:aSc2eJD-o63axjiznC-oZRQKIUSoSP6R4vlXY8ji8i4', '2021-08-20 15:19:40.888106'),
('0ytf7m6qh11bnerpti5pzwkezb5j7d1q', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yNSI6dHJ1ZX0:1m3qxs:md5WBtkaRSv80dty_Sccbas9A-tjESQ00L3_v6_2Tsc', '2021-07-29 02:19:04.144516'),
('0yx6ce5xgu3n0fd5t4l2rdkrttwppyt6', 'eyJyaW5ndG9uZV9kb3dubG9hZF8zMSI6dHJ1ZX0:1lxK6k:oLzUeRzAG0e39rr7-RCUlzFMR7Q2FF-D14nYgjdrtnI', '2021-07-11 02:01:14.819675'),
('0z0hdir3vj05mm5waadiwzor1fkvgixu', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTc0NFGyKikqTdXBKmkKkawFAJZpFcY:1mvtQw:0ivB_VIVD4cGcgPeqlexGa6Bhl1CaDRyot553QFUYHM', '2021-12-25 03:52:26.557881'),
('10hvnq12bgh96cekwwlqaol7q2vofp1y', 'eyJyaW5ndG9uZV9yZWFjdF81Ijp0cnVlfQ:1lslUr:Zr5mArxQiZNQlt3MR98m_EE0IbbdQdSx_qUXxQccaLU', '2021-06-28 12:15:17.214462'),
('12gcjbb1luh7ngi4zh5esdidhktgg9sv', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTc1ULIqKSpN1cEiZ2IOkasFAHK4FWk:1mKgEN:tz9z7x-pJJbj2XKetUJ70Zzlyl9Thaaz_reJh9rdu08', '2021-09-13 12:17:39.577152'),
('12jptuqx2bdprvczonxunpqhg58jzn6k', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xNCI6dHJ1ZX0:1mrkGf:n249jE7uBXgYkwbnUq7kHJ8MsJHK7hMBKTQuPCRJRNQ', '2021-12-13 17:16:41.468590'),
('14aubxh17f0pw5qxn1g0h5pqwwo6l41k', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKRsb6hgb6RgZGhjoKBpZWRiZWxsZ6SjlJqUVF-EcKQPKDmWgDjHx7Y:1meJLt:EKkVvtAjvtntwMX96W_wdNrzkReGSwucKJxkMhf93Bs', '2021-11-06 15:54:33.648990'),
('14f2csw8o21cpe9do2suyk1jao5s16az', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yIjp0cnVlfQ:1lpY9k:aWhUoMQiLE7CYUaWEPChIKaE79QNKhbb5s3hmQg_AII', '2021-06-19 15:24:12.918645'),
('14fxfq3icknso989sr7uq0yd2t2lauci', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTcxVbIqKSpN1cEiZ2aAW87IEo-cOUSuFgBoAioI:1mNUHc:vR8my9_lR7pX_I4bKoRWA6aDJwR1tOjvomjRhOaOhzU', '2021-09-21 06:08:36.963397'),
('19v6t2ten1tmak2dsfbogvgd4mppj4lw', 'eyJyaW5ndG9uZV9kb3dubG9hZF81NiI6dHJ1ZX0:1m8Dan:l3rrKesqfDoYxoQuYu4EcrqpBLVzI9t6weVRlEP2PUw', '2021-08-10 03:17:17.702943'),
('1adx98cek9xis4aqef4uoxmwthb91mzq', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKhib6hgb6RgZGhjoKBkZWJsZWxqZ6SjlJqUVF-EcKQPKDmWgDilR7U:1mawnv:g13jz05GdQCctyeMRgJEw2hxFQYqSjrvr7AqKJU6bnM', '2021-10-28 09:13:35.142273'),
('1bvy4887unpp1dj5a0r1plq65cow68v5', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTdUsiopKk3VwSJlhCFVlJqYXIJTHGpULQDlbSaZ:1lpZLj:zEC0DGJV56_J4bcofzkVReWoZASyMXpLZBTiihu_jwU', '2021-06-19 16:40:39.730992'),
('1elmzlpcf0x4p794ifil4gsoeyp236sy', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKRkb6hob6RgZGhjoKBqRUQGRrqKekopRYV5RchDMkDaq4FAOIcHs8:1mowMZ:xmq4jjcxyEucmOxc5CGUO69KKU-dQ6z-wPnLHiydu8M', '2021-12-05 23:35:11.751398'),
('1fbhvsetdd806wmditg54p7hn6afdggk', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTc0MleyKikqTdVBSBalJiaXIGRqAVM6FIQ:1mlSO0:SgfbwVjtb0mcY_pnGOHdVIu6eqrRZuO3JC0-DuMBB9c', '2021-11-26 08:58:16.611808'),
('1hsa7lb997g1f1xolgjjj8kfwq5277hf', 'eyJyaW5ndG9uZV9kb3dubG9hZF83OSI6dHJ1ZX0:1moRQN:AVXiGoBw_IsYSt1Y0_AuN9SO-1wd17bfmdiXLnKvI5g', '2021-12-04 14:33:03.762290'),
('1k3uitkbe98b59snhza2l9j01wun10ac', 'eyJyaW5ndG9uZV9kb3dubG9hZF82MCI6dHJ1ZX0:1mVEoY:OXBZlHDzYU1zhU_B9Gn4EiuACH4u_vOmY9sCaT1_0e4', '2021-10-12 15:14:38.389968'),
('1kbowp9wbgkh5pj67n72g7ntd8228caq', 'eyJyaW5ndG9uZV9kb3dubG9hZF8zMCI6dHJ1ZX0:1m5RKl:zIjgAx2R2Fpkjb6kbZ5_HBdrPOG7HCNVKqQ5m6QXQ9c', '2021-08-02 11:21:15.893401'),
('1o8iig1hsnymqfk73ucpnmf0jqxcoj1w', 'eyJyaW5ndG9uZV9kb3dubG9hZF84MCI6dHJ1ZX0:1mJg0q:g4vy84R2F-_Zn-8jNxAxEVH8gw05ybps7GCjt2vl6dA', '2021-09-10 17:51:32.334597'),
('1s3xbtg55a0pei9kgb5wo2jd7q7b4ozc', '.eJx9kjsKgDAQBe-S2sLNT9fLBMEggiQgioV4dxtLnXrYx7zdvcy2lHmvJaepnmWt45TERjPs25GbD9i7fybeAnQdwQDQUqwVgAJNpFWCniAIKaQq6ChsQEFGyYV243q6JNUPFOuhB6fSf8SWJumQ8ZW9HyVyEFQ:1myTez:OsH3x7izSU6ReWFFvDy4dKla_HzLjMD-hsX4SePVA8w', '2022-01-01 06:57:37.514433'),
('1slgkcuuy3ef6us8wao5umwzahq1f0ah', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMjciOnRydWV9:1msR1r:1Z_75IQu-w3Xt_EAUH16GvSF3SKEb879zUZHOTBMjrs', '2021-12-15 14:56:15.677341'),
('1tz5qt1r77acraowctdyuv0qtyn3l3yz', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTcyVbIqKSpN1cEiZ2wEkasFAHLMFWU:1m8EHv:-Nu9GNQrJKbSu_4kKvYFbSuQ3E_sZMWRl8BKFl1uLsg', '2021-08-10 04:01:51.494375'),
('1u5c0lrz8q4mtctb3i9eeoj1nihlew5x', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKRub6hgb6RgZGhjoKBiZWJuZWpmZ6SjlJqUVF-EcKQPKDmWgDkPR7h:1mfVhc:E2aeyfAAFjRHwIRFlbtRLsZXAC_Op9wBIsWBWZlua3U', '2021-11-09 23:17:56.483639'),
('1v3dq3iy88ugdm9b6905xw0gjtvkhgwh', '.eJxVjEsOAiEQBe_C2hA-DQGX7j0DaZpGRg2TzGc18e6GZBa6fVX1DpFw31raV17SVMRVaHH53TLSi_sA5Yn9MUua-7ZMWQ5FnnSV97nw-3a6fwcN1zZqUAGCsd4RGkNU2SquWhmbM1fjS_EADNG7ogM4IKuI2FLWGCGiE58v4EQ38Q:1mcszU:Lq277-pkKvRUstaq7ZkceT4d9dPWvwS2WlPAvJ_WNOw', '2021-11-02 17:33:32.632094'),
('1xfj4bncoceie492b5mv5uxty1okjee1', 'eyJyaW5ndG9uZV9kb3dubG9hZF81NSI6dHJ1ZX0:1m3Ugr:G7x-EH9v7eDrGeSZ3__4WxhrFKp65lXLvTIE_AUa3XM', '2021-07-28 02:32:01.969642'),
('1xkgic1ddbyw20k29embjcfvvu9us9ry', 'eyJyaW5ndG9uZV9yZWFjdF85NSI6dHJ1ZX0:1mWWm2:8DkGB1M5b9qWEX8gJvciSLTzLAKZ1tiMUqoVG6y1Y7w', '2021-10-16 04:37:22.113636'),
('1zu5c37t3f9yy728908h7pg5dvotx0d0', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKBmb6hkb6RgZGhjoKBhZWxkZWBhZ6SjlJqUVF-EcKQPKDmWgDjjR7b:1muFVI:EML_2RLiYdgxHTxHBU0v-TRXvHM7VgQQxbhzw-ZWPDg', '2021-12-20 15:02:08.260421'),
('20bypdrpbku12ulmahe2enbl7qchbvz2', 'eyJyaW5ndG9uZV9kb3dubG9hZF8zMSI6dHJ1ZX0:1mWvC0:YvQFAc_k1ndCXt2VqJLfRILAi3b589kDUm8EkETAo2Y', '2021-10-17 06:41:48.452490'),
('28e1592hz02s5fajsn9zr513cwr51v3j', 'eyJyaW5ndG9uZV9kb3dubG9hZF80NSI6dHJ1ZX0:1mpXTO:zdO4Y2I3p_2GlsnqfiD8Rf34eryRZ2KXF-4OFSkV-Dc', '2021-12-07 15:12:42.484130'),
('28ig3j1ydps8g4xfzsp0xy1j0glayg3k', '.eJyrVirKzEsvyc9LjS9KTUwuiTczULIqKSpN1UFIpOSX5-XkJ6bA5WoBK6cUHA:1mA7wN:4gFwOEQ5Q-NvMAlyD0moMp7pif8BYaQ6YMU-xuB5wo8', '2021-08-15 09:39:27.225863'),
('2a1ndw2lyv5px3tuph5rx3ofkx7b0rb6', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTc0sFSyKikqTdVBSBalJiaXxFua4pCAa6kFAMrfHY8:1miU1z:Ze-IXDbrJQ6sF3e4erl4jvAmZySIyQkklzwOJHj-ork', '2021-11-18 04:07:15.952549'),
('2d35tahlqg3kzmbra2ol05owgascwlzo', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKBhb6hob6RgZGhjoKBsZWpkZWRsZ6SjlJqUVF-EcKQPKDmWgDjER7W:1mk1nD:qF5GmCW9SkzsJh5xuEt6EAwo-ALvytP7GT-Ch5ELsvg', '2021-11-22 10:22:23.116731'),
('2edgktbh5yf1lgameyhv9ln631xajanv', 'eyJyaW5ndG9uZV9yZWFjdF81Ijp0cnVlfQ:1lyvvU:FDXei3pwRdj-3-xI2O5Wod2QnrzaEBsNIrO4j_uUDHI', '2021-07-15 12:36:16.264710'),
('2f9a82wrnr0m2du3sfkuj5xhqyibomcz', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTcyVbIqKSpN1cEmZwmRqwUAcvsVaw:1lxWkY:ksDpby29Rl4MnZKyyuyi3EEdY8ipFDK2dAymm6HUqVE', '2021-07-11 15:31:10.267187'),
('2he9phrzs4xcnkh2omf3nicxwsg4yoot', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTc1V7IqKSpN1cEmZwqRqwUAc60Vbw:1mSEhc:GdObcHP29DnWgJxkfvPBlY2c90N8Ybifdf2wuqz9eJg', '2021-10-04 08:31:04.752258'),
('2hhy3xtaasjwt9enfjtvpwspx055ighb', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTc2ULIqKSpN1cEiZ4ZHztQCIlcLAFu2H7U:1m9JfE:GNJVeMf9-FF-CTTf9UUTPIJ9FlECoUDQ9vEbEbr8q-4', '2021-08-13 03:58:24.107014'),
('2i62aj9yjhbdllnpefynay4kvg4dit0e', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMjciOnRydWV9:1muwf3:X-rJu8AsIbu1SoM2gh6aLp9YdmKZEf2juS_ikZXZgxw', '2021-12-22 13:07:05.700955'),
('2jxiqcvckkf7c5x1fjlndoy45ae492uy', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTcyUrIqKSpN1cEmZ4hbztDABEOyKDUxuSTe0NAUtzZLMzxGGltCJGsBrsc95w:1mpPR5:AbMTi1LwG_p_R6m2u88znZZ2k6xx1u9IaGa3I0QG9m0', '2021-12-07 06:37:47.859647'),
('2k0kiqi7sji35ees8r4m1g68zh3x2820', '.eJxVjEsOAiEQBe_C2hA-DQGX7j0DaZpGRg2TzGc18e6GZBa6fVX1DpFw31raV17SVMRVaHH53TLSi_sA5Yn9MUua-7ZMWQ5FnnSV97nw-3a6fwcN1zZqUAGCsd4RGkNU2SquWhmbM1fjS_EADNG7ogM4IKuI2FLWGCGiE58v4EQ38Q:1maaBh:UQSUh64qnRqjKR4Bmtiums1KNF2csuBDDk2tS6vhZUc', '2021-10-27 09:04:37.532417'),
('2ka4x0k5cy7u9uv7w99cye8ii2yxxpvd', 'eyJyaW5ndG9uZV9yZWFjdF8xMzciOnRydWV9:1mrCji:kclKJ4TEpfJEPgegzJTOHYDhUuejZvVpPXLrNYxDCxY', '2021-12-12 05:28:26.369245'),
('2mzyrevt8b8ufz5koenu7ucnf7t6ixog', 'eyJyaW5ndG9uZV9kb3dubG9hZF80NCI6dHJ1ZX0:1mIj8Y:9czOxgQHgSaLN-VpbmFKg8Xvuu9-s1oxUloh6rM4OO8', '2021-09-08 02:59:34.410716'),
('2nd7zjzl6c4psiu5cfrcnrdlqw51m6t3', 'eyJyaW5ndG9uZV9yZWFjdF8yOSI6dHJ1ZX0:1ltWLw:sdSnBIOZnme3BfjMcqsCSvXU-VWQOmwP3bDUUwykXXM', '2021-06-30 14:17:12.731050'),
('2pgy26jkqtf2hnbkbuix44inxstril1c', 'eyJyaW5ndG9uZV9kb3dubG9hZF80NSI6dHJ1ZX0:1mPLmL:tedYj9mlwdWdCx3T-WM5KGxU3Xy5Fv9UMMQh40XH9jg', '2021-09-26 09:28:01.770822'),
('2q7wv5h704rbnu6o4mu9cd7exv9x7z0m', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTc0ULIqKSpN1cEiZ2wIkasFAHHrFV4:1mMa1k:LzJK_jcyhOa1ZwDXfkiGFwcVzfXmlUp26G92OdN-H9Q', '2021-09-18 18:04:28.825592'),
('2qkio1xpul9hkvqc01m81eanopadhwnp', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKhob6Bub6RgZGhjoKhgZWBiZWpsZ6SjlJqUVF-EcKQPKDmWgDijx7T:1m2cPt:HDCpTflYrAPa5flB1qemNzazfqP25JC3T5AudVQzuNU', '2021-07-25 16:34:53.340261'),
('2qwh4xxnvywzb6gc3pvxw4jfedcj1jxd', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yNiI6dHJ1ZX0:1mCKg6:4rC5SIAtzYeSQOtM5I2rKQU_P7ZZKeZrl3fMtUacDZo', '2021-08-21 11:39:46.552169'),
('2rwxz1l7ep50u3ro2koid0jx9mm9k8cd', '.eJyrVirKzEsvyc9LjS9KTUwuiTdVsiopKk3VQYin5Jfn5eQnpsQb4pHDI2WOW8rEDLeckQlErhYAguU8vw:1lzDhq:Oe488JrkuGoYP0JDbFBN-abI9Iz0j-udJ5S_-xpMcfw', '2021-07-16 07:35:22.740368'),
('2xo061f7rd7hszmop1sl2a2nxqp7dnka', '.eJyrVirKzEsvyc9LjS9KTUwuiTczULIqKSpN1UFIpOSX5-XkJ6bA5WoBK6cUHA:1mGp6j:O2x09LYsFkqlkNhIMIPLIsAyALXe-8zch_YuKtoqSOI', '2021-09-02 20:57:49.318206'),
('2xpc1w06xx8cy268h9565i61361u6fy8', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MibcwU7IqKSpN1cEiZ2YAkasFAHPZFW0:1mWG6v:0mO8ozQTvkvXxUT5Y-om9_E48KyKQDxx9pM9kUmlI6E', '2021-10-15 10:49:49.005007'),
('2zfplesydfp86usdgev7qqzb8wcds58h', 'eyJyaW5ndG9uZV9kb3dubG9hZF80NCI6dHJ1ZX0:1mpuXF:mzHu8mlElkgb0CwqQpe3E6Nb1idGGHu58MmLvCTHaGo', '2021-12-08 15:50:13.403530'),
('32g7aoxenzz6dqenaw0l2zyiv13fncz0', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yOCI6dHJ1ZX0:1m11ZZ:_myRTNj6ufCxfUzTMBcmBGCfRRPMb5XT1wIsJlFKuiw', '2021-07-21 07:02:17.328698'),
('35fxyqvmzlic49lrj4m2fv1o34mhuqjj', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTcxVbIqKSpN1cEiZ2YAkasFAHMhFWg:1myJfJ:JBddM7-WxPJHGPnvmLB0oPlE8wsUH1GYBYLrMMmTutE', '2021-12-31 20:17:17.344579'),
('35u8b1oo2dqbkmr8zihiq74eg5eztr5r', 'eyJyaW5ndG9uZV9kb3dubG9hZF80NSI6dHJ1ZX0:1m0KMO:v6ltciGAo_pKzS6afSEqMqswdBcaZBM2-G88rxROLyw', '2021-07-19 08:53:48.105566'),
('36l0heiqp08asvz5lku1kope7o0h323y', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKhhb6Bhb6RgZGhjoKBmZWppZWBoZ6SjlJqUVF-EcKQPKDmWgDk5x7j:1mGAO5:Pq7XHsqxIyDxF4VPb82K9AXVNc67PKBy-z8-Tn1iiTU', '2021-09-01 01:29:01.776371'),
('37zl1yyz5p71bl0wnanib2nh0urvwfmb', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yOCI6dHJ1ZX0:1mOrK2:25NumD9222AVmHHNULhSGlRW3sAkeYcGzJMRkErstpg', '2021-09-25 00:56:46.778628'),
('3frng5up9z9bz1dcyzisxymlhl606ij4', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKhhb6hob6RgZGhjoKBiZWJsZWxoZ6SjlJqUVF-EcKQPKDmWgDjQx7X:1mnU7P:A3q4nbulPDRYYeBVhbdlXAUzq-d9Qj3TD1GuhVnTwVc', '2021-12-01 23:13:31.576511'),
('3g7xie482z2z54816nbad02lzhfx3e31', 'eyJyaW5ndG9uZV9kb3dubG9hZF81NSI6dHJ1ZX0:1mE2Jj:YnGamMPzAoIS91lz8ZcmLcbenvJLfCj7y2pH1VdZtyY', '2021-08-26 04:27:43.632485'),
('3jynyk68lkds5089ujp57zebt8cs1e7g', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKBsb6hkb6RgZGhjoKhkZWRoZWhsZ6SjlJqUVF-EcKQPKDmWgDh1h7N:1msrAn:lOMk7OhMv2KXXNkGGPU3B7y773o8N3AmykPFU1slCl0', '2021-12-16 18:51:13.802181'),
('3p4rgkc96lhk72ljg0ie8ug34vcqw68h', 'eyJyaW5ndG9uZV9kb3dubG9hZF84NCI6dHJ1ZX0:1mTarz:h5j77UZnmZXo2cQNB0yfVZuNwBMreWL_2eTvvD6Fin8', '2021-10-08 02:23:23.477521'),
('3rxz8hf2qetzqlg7aycnzt9jp35898zh', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yNSI6dHJ1ZX0:1m11AT:0qzxs7GI7zAVyZeWnuiuU2zjMT3SoH-Vy6nAwEg59UM', '2021-07-21 06:36:21.102500'),
('3ut0q8pn8hgwnb9sowu8u8n8cpn1owmb', '.eJxVjkEOwiAQRe_C2jQUKGm7dO8ZyDAMFq3FANWF8e62kYUu_7w3P__FDKxlMmumZIJjI2vZ4fdmAa-07MBdYDnHBuNSUrDNrjSV5uYUHc3H6v4VTJCn_VvxXvVC6g5BCERPkpNvuZDWkhfaOa0UqUF3ru1Vp1ByRJJoWxjUAN1WirdsSoyzhWRcyGBn2nZ5mDN9IblQ2FjSWvM90SPQszrvDx_5T90:1m3D4d:lXwHBA0vF1W7ap-7lwhLW-zDuNQB6h4DqquH-R1I78U', '2021-07-27 07:43:23.823267'),
('3vv6g7744ss793k8sh3vd58z7xq0c42b', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yNSI6dHJ1ZX0:1mFdGK:CaKdBYQSt1CD15TazIk3GqttrkZHdrhoLmzlUeDlYOk', '2021-08-30 14:06:48.377358'),
('3x6jz187spkxtcgdfj89xpg0950y1if5', 'eyJyaW5ndG9uZV9kb3dubG9hZF8zMCI6dHJ1ZX0:1msmDv:QaFly2NyCYQ60_oAHeJ5LjAaxsJYH0JSj4bLrKgwEw8', '2021-12-16 13:34:07.986733'),
('42i4b5lzw2o34iumy39vutcjn8q3fgze', 'eyJyaW5ndG9uZV9kb3dubG9hZF83Ijp0cnVlfQ:1mFBFj:n2e-haKkmWhMXPYja8-SliuZCJxJXVrw-tswWNwCp8c', '2021-08-29 08:12:19.713297'),
('43ym4rlvq48n9ycoeicghtedeac5q8zj', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMDMiOnRydWV9:1mfXlP:WP2xeg7y6WyKSyVE0TgszzuykgUZFEBDu32qzfpLW4o', '2021-11-10 01:29:59.890475'),
('450bb9pxb452ai093uf9j52u1wz30g51', '.eJxVjs0OgjAQBt-lZ0NK_wIevfsMzXa7SLVS0xY9GN9diBzkOjP7Zd_MwlxHOxfKNnh2ZC07_DMHeKNpFf4K0yU1mKaag2vWpNlsac7JUzxt7W5ghDKu14p3qhPSaAQhEAeSnIaWC-kcDcJ4b5Qi1Rvt205phZIjkkTXQq960Mso3outKUUH2fpQwEVa_hogFvpJ8qHuwCPTM9CLHWueNxTTxUaoVJZSG_75AvoOVvI:1megBZ:Hhi1VJ_yj9UWCVkYTrXZOdplBPuiIMBDUVf1TU-3hls', '2021-11-07 16:17:25.944600'),
('46mv0kv17nnyoj02j94id1d07k0dozhi', 'eyJyaW5ndG9uZV9kb3dubG9hZF80OCI6dHJ1ZX0:1mOF0b:xefcml1p7Hf38ZgGldB68OP67DSHoxr4ElMkcftrNb0', '2021-09-23 08:02:09.735515'),
('47sv4u1z3urls0h7hwsc23sqx597qx76', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMyI6dHJ1ZX0:1mn141:uj_kMH96-FlMA3TpXOT93NLvKOQQokUCNzqz_z3QCzU', '2021-11-30 16:12:05.559170'),
('48fz4c7ttkpof40x78ojs97ojwupfg78', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKBhb6hkb6RgZGhjoKhoZWJoZWBmZ6SjlJqUVF-EcKQPKDmWgDi-R7V:1mv1PG:zSGBJL4XcmLHzCHY3FECzSlotex0gaQk7yV45ZWMzhg', '2021-12-22 18:11:06.510002'),
('4aioknxff2itwu406039uu0u2vwskzs8', 'eyJyaW5ndG9uZV9kb3dubG9hZF8zMSI6dHJ1ZX0:1myDQh:Kf9X8ew-0q-nyhywnSkpG2xjpopwDX0MLgk6bTsWmqk', '2021-12-31 13:37:47.285663'),
('4bgqfvo563g2k51l351m02lcer3gd0f2', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yMSI6dHJ1ZX0:1mdObD:MqlQDaFgHgCqiOqj3s0OPbOd9VDbDb9cYbnzl2JWaZk', '2021-11-04 03:18:35.415343'),
('4c8z0nq7yf8upg7i7wptij5w0mx36397', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTczULIqKSpN1cEiZ2qGR84EIlcLAF0MH7k:1mAmMt:32dyxg10QaRCUKcFvaxpDXHV5tDkuqK7DX-HVuD93DY', '2021-08-17 04:49:31.354732'),
('4cpldw86tjqa1rbew8vvyifk9o1s7978', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTcxVbIqKSpN1cEiZ2aAWw6PNnOIVC0AGvEpoA:1m7I9u:g1B-_XS5v-s7GfiPM-rWSBV_1cNFHy5umnXGk9ZcMB4', '2021-08-07 13:57:42.056009'),
('4h221b00iaes5747aqowe3c6ohgwnwec', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yNyI6dHJ1ZX0:1mgUuv:RnV-uoqHu8yuGbX-YkZhMUwfTyOjq4WONeUMUzU8p0Q', '2021-11-12 16:39:45.483803'),
('4jsda9bb0lsmvphvvaogpacgicnknpv0', 'eyJyaW5ndG9uZV9kb3dubG9hZF80OSI6dHJ1ZX0:1m4n9I:lLu2ATpz2BdMwzwaqTQSAX7EovCU-UniCM_ysCn-53A', '2021-07-31 16:26:44.300182'),
('4l1jsezatvzhfh91gsgrg6apqkhhmo0m', 'eyJyaW5ndG9uZV9kb3dubG9hZF82MCI6dHJ1ZX0:1meFyB:Pg2k1EuW4fkzEx7MMgC2uSrJ5s8dRLJvgIMhedPqI9Y', '2021-11-06 12:17:51.716311'),
('4n0nicihahd1lmqb9ejbns57niljkw0f', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yNSI6dHJ1ZX0:1myEtN:C-RSTdjNif5RvgNzqQDnN71XyZUYsOKj4lHhaK-vuX0', '2021-12-31 15:11:29.840865'),
('4nx9i3s9fqwbnovod54xuujtv4f47dix', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yNyI6dHJ1ZX0:1mFEnA:mdqtMPU7kfs4-hzBvUTB1TR0rz7gPbsTkvxLAM1F9cI', '2021-08-29 11:59:04.181488'),
('4od00yplp4k9r9zkg1c9bnzevbvy54pi', 'eyJyaW5ndG9uZV9yZWFjdF81Ijp0cnVlfQ:1lq17X:He_lRC2dHnzJscB2TtAMIXL3uiFizhUd-QZWjgsT09U', '2021-06-20 22:19:51.086143'),
('4p8rwe3wabmq593wjqg7pswgf968yfvp', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKRhb6Bhb6RgZGhjoKBoZWBuZWBiZ6SjlJqUVF-EcKQPKDmWgDj-h7b:1mJhey:kHdcvU0G0KSRk1_wfDw2zyByktJ1dcf8Ms7E3JMHhlE', '2021-09-10 19:37:04.531344'),
('4r2jvrudv1mvscb07kd84usskbwtmnxj', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKhpb6hgb6RgZGhjoKhkZWhqZWpkZ6SjlJqUVF-EcKQPKDmWgDjVh7Y:1mcisj:RPDI9jzz8CJt7QcLA36tXbydJmoiJGQJnxcsSBwaJlQ', '2021-11-02 06:45:53.000423'),
('4ro828cwzm4qdzuxmwnu0d81hd0vn9vm', 'eyJyaW5ndG9uZV9kb3dubG9hZF81OCI6dHJ1ZX0:1mIwng:GDWIcbTbT4qog4zwiQO8ZlkxlZAFKFWgiHgY9iQe9eo', '2021-09-08 17:34:56.058601'),
('4t1lsyjo42iuxhy1wfhqc9a5webm7kkm', 'eyJyaW5ndG9uZV9kb3dubG9hZF8zMSI6dHJ1ZX0:1muCe8:4a1fZDl2S9oalX2913sJrG91pY8VTXsNyOUMESt2Xpo', '2021-12-20 11:59:04.254407'),
('4ui65whz0csb2p7blxhv998ynwsw17ko', '.eJxVjDsOwjAQBe_iGln-rK0kJT1nsNbrzQdCLMVOhbg7WEoB7Zt58xIBjzqHo_AeliQGocXld4tID94aSHfcpiwpb3VfomyKPGmRt5x4vZ7uX2DGMrc3qA46Y70jNIZoZKt41MrYGHk0PiUPwNB7l3QHDsgqIrYUNfbQo_tG6VnCmqewYuVSxeC8f38AxXc_DA:1mfE3G:XOjpY_ORSy8co3lllfMJZiIw1Khy4na-itgM3M2XE_0', '2021-11-09 04:27:06.657506'),
('4uqk014mx0o5mfln6zh1hgtqzkpnsize', 'eyJyaW5ndG9uZV9yZWFjdF85OCI6ZmFsc2V9:1mZXFs:WykyPPI80A_qPcFXa2mEJp0rPiOpZLuG4CA7NSoWs6k', '2021-10-24 11:44:36.209466'),
('4wws6obx3qkojcsncdetdid5api2zpd8', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yIjp0cnVlfQ:1lpYUS:SUdOwUNH6gTsUeVFYPXvHqbyptbkRmxBCLg8AMeroBw', '2021-06-19 15:45:36.362120'),
('4zk47r1ohmihm5f5tulcvgdaqa6mh3oa', '.eJyrVirKzEsvyc9LjS9KTUwuiTc0tlSyKikqTdVByKTkl-fl5CemACXN8Uga4ZU0wS1paYQhB3EMFgmEJkOIXC0AN1NHLg:1mqq2L:fnGhjowJyppfu5E_DHDdDetDRBACeacTvxhq4adYE1A', '2021-12-11 05:14:09.722178'),
('500inh0gn1bu09e5uq2jirfbqcm0hql8', '.eJxVjEsOAiEQBe_C2hA-DQGX7j0DaZpGRg2TzGc18e6GZBa6fVX1DpFw31raV17SVMRVaHH53TLSi_sA5Yn9MUua-7ZMWQ5FnnSV97nw-3a6fwcN1zZqUAGCsd4RGkNU2SquWhmbM1fjS_EADNG7ogM4IKuI2FLWGCGiE58v4EQ38Q:1mBb4e:z-NQV-9YgmH7JSt0p5Bn14cJKyXBZ7ZX1QG2fsWpX8Y', '2021-08-19 10:58:04.173332'),
('5059web7kl877uomeiqy6g7v6joav32j', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTc3ULIqKSpN1cEiZ2wIkasFAHLJFWQ:1m8hka:nDjB2IxAqWG6kmXTNOwe8FDEgdJWHerL0hx5wBnelyc', '2021-08-11 11:29:24.160923'),
('50t7yu8fzhkesntu4744cubcb694uof3', 'eyJyaW5ndG9uZV9kb3dubG9hZF84NCI6dHJ1ZX0:1moLDH:FLoxATQedLmDiClwo6CXtPzmkDd2lTtg_E_scgowpQE', '2021-12-04 07:55:07.110059'),
('5165e2ngb3dklt5gke5x9twp6ok7evov', 'eyJyaW5ndG9uZV9kb3dubG9hZF80NCI6dHJ1ZX0:1mttul:_RYWwT-mJYQPWaaCq0TxGm2eKjPA1fVtUql2hICThWU', '2021-12-19 15:58:59.404774'),
('52opafsiibpldcemslmjnsgwz7cqldg6', 'eyJyaW5ndG9uZV9kb3dubG9hZF8zMSI6dHJ1ZX0:1mkLGN:KE1wIfQr-9AgYH36s6n8ZLbNmJXElcfRxCSD1u3SLUM', '2021-11-23 07:09:47.462672'),
('53devpbmw88zetzvwbx9l5lktq4mim98', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKBib6hob6RgZGhjoKhkZWpuZWpoZ6SjlJqUVF-EcKQPKDmWgDjDh7Y:1miXA7:Sx_G2w39g-RCxTYSbZcjqcWuOAK_5nsLj_hfr0MraWw', '2021-11-18 07:27:51.806651'),
('5456r8z9lz21eqrgejs2f4mnp482b72a', 'eyJyaW5ndG9uZV9yZWFjdF80Ijp0cnVlfQ:1lxCDk:U4JdzpQvwIPaTaPB5EqIlGGVw_nDOb5Idr8C8uST3zs', '2021-07-10 17:35:56.530832'),
('548t4oqlhhu52p7oknwvdgwh86efj6a0', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMzIiOnRydWV9:1mg0lp:bcfqEJGiBT4TYAwFQebaDeZdC7G4FGtuBat9oO8s3Dc', '2021-11-11 08:28:21.277600'),
('5839b47u86vj3czw5p6ah66rpu5ug82r', 'eyJyaW5ndG9uZV9kb3dubG9hZF81MCI6dHJ1ZX0:1mDeH6:0MXRUJiBqiD-aU0ypw9zDdh8CWqZRMmSvWtZ7EJNSKQ', '2021-08-25 02:47:24.045663'),
('5918pkjplogrsx7hfacmerrzd74jl1q4', '.eJxVjEsOAiEQBe_C2hA-DQGX7j0DaZpGRg2TzGc18e6GZBa6fVX1DpFw31raV17SVMRVaHH53TLSi_sA5Yn9MUua-7ZMWQ5FnnSV97nw-3a6fwcN1zZqUAGCsd4RGkNU2SquWhmbM1fjS_EADNG7ogM4IKuI2FLWGCGiE58v4EQ38Q:1mH3Zv:qcNIIJD4DoSRzg-fMM-C_f60FuDwdsg3HEUXU9bjkOA', '2021-09-03 12:24:55.687188'),
('5ctgr9t59jklt4j3wj6uwlbposou3dvm', '.eJyrVirKzEsvyc9LjS9KTUwuiTdUsiopKk3VQYin5Jfn5eQnpmCRgmgxwq0Fj5QxDtOg4rUAbmk5gg:1lpZ3S:aC7maeye-7mvm9UZiETSBim8u-W1dOfop2Kug8hz-v0', '2021-06-19 16:21:46.490644'),
('5ddb64276jqmopp7w8caz3vo2996la6k', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMDEiOnRydWV9:1mvdyl:jnXpAYwtBNam8UV_xNgH5_hYdKo6dou62hR_0dIL3uw', '2021-12-24 11:22:19.701178'),
('5iftx6oqxr33ha6xxvk7cyojvaohrasi', '.eJyrVirKzEsvyc9LjS9KTUwuiTcxU7IqKSpN1UGXMDOASNQCAO39Etc:1m3iEp:i05Olq-tvbo9PvTqa0SW4C1InjFq-rixcvDl1knV2wI', '2021-07-28 16:59:59.612023'),
('5jcnnxkerul64tw77pilpurm9nctvmbk', 'eyJyaW5ndG9uZV9yZWFjdF82MCI6dHJ1ZX0:1m3sP3:sTmrgXWZcOchUoKPO9iyYapXRJZEuo9hfoBLClpksTs', '2021-07-29 03:51:13.730866'),
('5pir4kgork4atslbh5ubffkqitb5903x', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yOCI6dHJ1ZX0:1m4zty:JOte3Uz525mbunlIB8cdTpD6TMLQwKV2Qy9COdT9zq8', '2021-08-01 06:03:46.666061'),
('5q9eww0dej6rcwbox0tw3563ntb7u119', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKhob6hkb6RgZGhjoKBuZWxpZWxqZ6SjlJqUVF-EcKQPKDmWgDjih7d:1mvrpP:-cUfKl7RClirprrWlmYCjwU03vX5BfZKSCvAN958AHE', '2021-12-25 02:09:35.209734'),
('5qgvi6uxgelom2pn317cqgin0c3eb6ht', 'eyJyaW5ndG9uZV9kb3dubG9hZF85OCI6dHJ1ZX0:1mdZKl:snNzyKaKCFj_xUeQdT6jZCPEtpzSfnrqpti_pfOLzv4', '2021-11-04 14:46:19.512551'),
('5srsjcv7gomq9r6518s25mbpfcwy6gqb', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTezULIqKSpN1UHIFaUmJpfEm1liSCA0QeVqAfmzHoI:1m64HZ:M7YzycN0LTWPp5yBIbe5b2HIdmnA9_jVCK3F8fYHYhA', '2021-08-04 04:56:33.896818'),
('5u64bzwuopphsjd286gcqxv7o6jng9qx', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTcxVbIqKSpN1cEiZ2YAkasFAHMhFWg:1mLKwW:oKXnqAxz4YVhwzbHIe-12rSdZakme-hyhb2jQNUCFnE', '2021-09-15 07:45:56.195587'),
('5u6j2srfbfaw0p7aqyhusa9kukzncwm8', 'eyJyaW5ndG9uZV9kb3dubG9hZF8zMCI6dHJ1ZX0:1mySow:80w5Zeg-3byJtN3EbKlU0K1UPVGjUbBV7P9GiSzLz78', '2022-01-01 06:03:50.381010'),
('5wwje9l3z7fjgr222x4wtal7nz0pg2ix', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMDciOnRydWV9:1mhj7A:lGnmnQOD1OgGFuc8lUZ2OwR4wlZCOInbOiJFHc_6Izs', '2021-11-16 02:01:28.120168'),
('5y06sew4axvn5meu4elq01lomtrrd2al', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yOCI6dHJ1ZX0:1lxGml:q1H3wxDc40z7uTMogdSQvQm7oOmOPLMLpA2jjlIPx54', '2021-07-10 22:28:23.202468'),
('5yuk4vno6uxyursrb4iu1d9yl7605lil', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTcyV7IqKSpN1cEiZwKVqwUAc0UVbQ:1m4iZ8:cNyhJWPd1E6PyqEDLxQGLwJqKhFAe80cwOGsq5-6b2c', '2021-07-31 11:33:06.717459'),
('5za9ju78ndf6ijb63pznfhu6a41u37sg', 'eyJyaW5ndG9uZV9kb3dubG9hZF80NiI6dHJ1ZX0:1mUitJ:kJ52NwISKTVdzleANJhkx4qqDm2beuWNWNWPlxrprIM', '2021-10-11 05:09:25.936450'),
('5zypjre25bbsa6bwaf5z3yd7yvtuyyt3', 'eyJyaW5ndG9uZV9yZWFjdF8yMSI6dHJ1ZX0:1m3u53:GQjGeZq2crxjFkOh1o1V_QlQvFn4YuXUcy8opuWJksY', '2021-07-29 05:38:41.076399'),
('60a4gwhtv8thax88cc8x9hmtkjiz4k5x', 'eyJyaW5ndG9uZV9kb3dubG9hZF82MCI6dHJ1ZX0:1m4nrZ:iL-0nfsyiEAf_HR_7H6r8empTKVywvnsYpUGvVqnks4', '2021-07-31 17:12:29.279793'),
('60ublzapj2podlmcyuewki0ht6xp4njq', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKxgb6hob6RgZGhjoKBsZWhqZWJhZ6SjlJqUVF-EcKQPKDmWgDizh7X:1mroT6:8uxJIxMFev1DrSaHRClW13AJdvYNKep-9-PYY_X-6-E', '2021-12-13 21:45:48.669577'),
('633yzkbrykvzypdt3jfbmqs8yc7cc6pa', 'eyJyaW5ndG9uZV9kb3dubG9hZF8zMCI6dHJ1ZX0:1mpnr3:hOV2RIXeUmt4H8Fd954bkXQyf6b0xUio8qw19W4SeKY', '2021-12-08 08:42:13.354240'),
('63623gaeusqvo8xzxdcnsdrs8ww7ep6d', 'eyJyaW5ndG9uZV9kb3dubG9hZF80NSI6dHJ1ZX0:1mScqj:74ZdQhalIXC-i80bmdvGWg_R0l3lik-ML0JJN4pqUY4', '2021-10-05 10:18:05.083896'),
('64jt8lvte36rcr1pp4ifhbsjk09zeidv', '.eJyrVirKzEsvyc9LjS9KTUwuiTdUsiopKk3VQYin5Jfn5eQnpsCkagEKZhOy:1lpYeH:mkhPuea9s5U7rkb3qpUXa8n8sKXJH6f8tQsYqZ7VH_I', '2021-06-19 15:55:45.765664'),
('67ri4x36np95v50w0wrvc50nmyonzksb', 'eyJyaW5ndG9uZV9kb3dubG9hZF80NCI6dHJ1ZX0:1m6wJw:foEW1f9fx2UCCqAy3TycMF7SwYJoS310cGf715J7-Eo', '2021-08-06 14:38:36.715148'),
('67wmiidd39lmzebdniy6s8k8y0m6oma7', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKBhb6hob6RgZGhjoKhgZWRqZWBsZ6SjlJqUVF-EcKQPKDmWgDinR7S:1mk7vD:CPolAgv7HoBmm_KB8EyBlfZ3O5xVMELToVUbLepE9Oc', '2021-11-22 16:55:03.582323'),
('6b7dvdpkxctg03gqwqmnqm21i7w3q5rv', 'eyJyaW5ndG9uZV9kb3dubG9hZF8zMSI6dHJ1ZX0:1mNiDm:WlyID_I_AAB5uIYH1yWYtBQohvl5LKTExruJGQEY5DE', '2021-09-21 21:01:34.243988'),
('6bizovw1was0dospru1ffyrnnbqffwhf', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMTIiOnRydWV9:1mxNJ4:BhAVvcUkr1AP14bMJ1hwlYAKhhcGAHydb5cE_dcDq8U', '2021-12-29 05:58:26.603239'),
('6cxj8ysjdb2folz0cgv2kucy19ywoer5', 'eyJyaW5ndG9uZV9kb3dubG9hZF80NiI6dHJ1ZX0:1mxZ0w:D-Lr3PTBPdHXMfCSIi8to6AfTJkeZmpbH9LPDFlL_Tw', '2021-12-29 18:28:30.043339'),
('6dbztfa3txiavzd9fmudkfuna9lqolx1', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTc0MFayKikqTdXBImlmAJGrBQCBpRWT:1mflWq:6rzyGyxkEYiJNl3D1gxN5Lr7PPit5Epfz2U5UH7W1_k', '2021-11-10 16:11:52.973356'),
('6esetclr6fyw3pt34k7nbnkktzr4dflb', 'eyJyaW5ndG9uZV9kb3dubG9hZF83MCI6dHJ1ZX0:1mVxlW:PIzM44XKgnDiWMaqFrGfouiS5N_cxjTtxbA-48pbKU4', '2021-10-14 15:14:30.665108'),
('6go2h4bazm4vndg4vkmj3o40vkihy1fg', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMzciOnRydWV9:1mxB5x:sRusCaXDVs2VNTCASTRfKg2ANKILju2J9R2uWtS8TOk', '2021-12-28 16:56:05.209164'),
('6gpb0b7obixi9694bu3xibnewzmqvqs1', 'eyJyaW5ndG9uZV9kb3dubG9hZF80OCI6dHJ1ZX0:1m4QuM:VPIJjdAFXP5fJZWL5pJHXQxaPFcLIzgpdiYmpxwXpu4', '2021-07-30 16:41:50.408454'),
('6itkq36yudtbamkvjacffz2js7hs55ds', 'eyJyaW5ndG9uZV9kb3dubG9hZF85MyI6dHJ1ZX0:1mUt5z:UDzpgem80RLIjsTxvyRo1wxUmuKZcTE0LioB1SsuS9I', '2021-10-11 16:03:11.041439'),
('6oagw2ng1mqxcxryub3b3rowweesb3gh', '.eJyrViouTU5OLS6OzwUSiempSlZ5pTk5OkqpRUX5RQhBpeD83NSSjMy8dIXy1LwShfKi_Lx0RYX8PAUjQ30DS30jAyNDHQUDQytTSytTC6VaAIlCHM0:1mSbA6:YZjuIxyuyMi_bY44RMKayZXso0Ri0vhLYy7Tzj5pP6Q', '2021-10-05 08:29:58.293651'),
('6opvkebi43mkmdu1qyzlyrmex5wiji5m', 'eyJyaW5ndG9uZV9yZWFjdF8yMCI6dHJ1ZX0:1lqYzU:lKoutXgeFhIalXh133tN4uiEh6GxjjKuTvPQtodAu0g', '2021-06-22 10:29:48.658459'),
('6tfvzj4tanoxza7niy19hfvgyhjbo9vl', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMzciOnRydWV9:1mgV6M:3HUiv-DlrCEOSJlAITymGT7a9UJwKpDlY2S9Z6Y6MPE', '2021-11-12 16:51:34.731619'),
('6x7lxqbxm2dn7gjugwcuh967no33v951', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMDMiOnRydWV9:1mg5AG:ACREfVbvIDmE23oxkI5tdlBdFXjpPZku549QjBVz7kI', '2021-11-11 13:09:52.831148'),
('6yfjlpmdi6prqkqgy3yxpt4tkwvby5gp', 'eyJyaW5ndG9uZV9kb3dubG9hZF8zMCI6dHJ1ZX0:1moqLY:kSoUEO0S84PLm5SgtrYAohQNg-FJ18sKT2NB69ezTwE', '2021-12-05 17:09:44.637844'),
('6yj603t3dfp0i7169jryx4agv4ohtyl9', '.eJyrVirKzEsvyc9LjS9KTUwuiTdVsiopKk3VQRc3gUrUAgDgORKl:1lw4mH:c3qx-2weKC3UBFkmHYg075Fi0zkn6e63DxjofGumYCw', '2021-07-07 15:26:57.918530'),
('6yymamh4c2h4n5px5carxs85te8p8awc', 'eyJyaW5ndG9uZV9kb3dubG9hZF81NiI6dHJ1ZX0:1m2xL1:NQW3qCftTRkyGwI0kQke7RCKQ5rzYE_wLkfEa5LPmK8', '2021-07-26 14:55:15.031086'),
('71jjzoo8vvbgsqj7c1twbbqqjod4d1jc', 'eyJyaW5ndG9uZV9kb3dubG9hZF80NyI6dHJ1ZX0:1m6zDN:ldL0pWWfEy5zLQ9otOOWPfI0eIkHmJ7uYSk3mbWxE6s', '2021-08-06 17:44:01.997801'),
('71m479wqtcogwef8fef0x0qfpb1vyeck', 'eyJyaW5ndG9uZV9yZWFjdF82MCI6dHJ1ZX0:1m57xS:BG9jM5YdytyLNoAb_CutG5cwvNSLW2FNQZMOv1CJxAo', '2021-08-01 14:39:54.198103'),
('71psvs560zi6big7ozwhkvduxx980bx9', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMzAiOnRydWV9:1mrKqk:63MV90OvwVlAJPHCnbhZ_6sBB7OUn8m-RLy6FPlM9gc', '2021-12-12 14:08:14.068131'),
('728k45qq9t0p763zeo288vxuxznxiwcn', 'eyJyaW5ndG9uZV9kb3dubG9hZF81OCI6dHJ1ZX0:1mByms:kWxCJ6Bke9foQ8en9DD9KKIecA3JziLFxA7rXaxDkj0', '2021-08-20 12:17:18.822316'),
('735cz2v5t9d9i9b4wm6ct2wjr6aqxxfb', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKxgb6hob6RgZGhjoKBqZWJmZWRiZ6SjlJqUVF-EcKQPKDmWgDi5x7X:1ms23c:pGJNpB4cl6CTG3gvHboSW4iWirCmmV4OxAGvVKB2WCs', '2021-12-14 12:16:24.396197'),
('74vbnadhi7a4m6x9i07zzlk80xx5os0x', 'eyJyaW5ndG9uZV9kb3dubG9hZF8zMSI6dHJ1ZX0:1mGz2a:Es9fX5hKMpNXJbR_wfLROkvt8A9Kyls7auoLqCQDBhk', '2021-09-03 07:34:12.064995'),
('75jygntk2gjopzqalbmx0313wzlblun3', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMDQiOnRydWV9:1mjcEC:qwJwKn062PYvdRxN0bC7Y6YGzJ1FjZxYG_iTYoGG2-o', '2021-11-21 07:04:32.784198'),
('799qmzocz6nzegd4cdnrl08mdcq3yy7c', '.eJxVjEsOAiEQBe_C2hA-DQGX7j0DaZpGRg2TzGc18e6GZBa6fVX1DpFw31raV17SVMRVaHH53TLSi_sA5Yn9MUua-7ZMWQ5FnnSV97nw-3a6fwcN1zZqUAGCsd4RGkNU2SquWhmbM1fjS_EADNG7ogM4IKuI2FLWGCGiE58v4EQ38Q:1mwePl:13wxJb0vdo2Qj9Slq2Y0q_RNxMoHzNEfCC_7RfikiEU', '2021-12-27 06:02:21.579414'),
('79bouai0d5mtp7q3fffnkx0xekpu35va', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKRmb6Bhb6RgZGhjoKBqZWBmZWhoZ6SjlJqUVF-EcKQPKDmWgDj0x7a:1mJDg3:pSxA9NwSMXF_7ImIA9i_GdiS_LEwbZDPzfXf_5MLrQs', '2021-09-09 11:36:11.897484'),
('7b3f93h7avrd9f2n8tzyaejj78gquepc', 'eyJyaW5ndG9uZV9kb3dubG9hZF8zMSI6dHJ1ZX0:1mG33B:Bt-RA8QDS_Qx4hG1PxKSR7HWZzdMrgVx2WL68kb6EVY', '2021-08-31 17:38:57.086861'),
('7cyj1wqoex79y7dlxvfq7ck1fr5vac79', 'eyJyaW5ndG9uZV9yZWFjdF80NyI6dHJ1ZX0:1lxoUX:-bolSAvDKVnr_-motCgdL8EhxfiiYqEcTt5PQ3UEvZk', '2021-07-12 10:27:49.007168'),
('7d33fsvivhqypclb2u2ekfl41k5fb5u3', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTc0sFSyKikqTdXBImlpBJGrBQCCqBWe:1mxqAe:AZWJZAkAWvQ9vBc7T_czFIH4nmRqHzBw0k8uKU0gL88', '2021-12-30 12:47:40.517776'),
('7de6mp5burskhrub1kxb2w70tve8s5lv', '.eJxVjsEOgjAQRP-lZ9NAWwh49O43NNvdRaqVmrbowfjvQuQg13lvJvMWFuYy2jlzsp7EUdTi8J85wBtPK6ArTJcoMU4leSdXRW40y3MkDqfN3Q2MkMe1barOdEq3DYJSiAPrioe6Uto5HlRL1BrDpm8bqjvTGNQVImt0NfSmh2YZxXu2JcbgIFnyGVzg5dcAIfMPMvmyCx6Jn55f4ljSzJ8vHnxP3Q:1mAuKu:hIeYosHDaX4VnxM_ina6sOEV4oyJ7yuWicCdiGklbvk', '2021-08-17 13:20:00.488793'),
('7dvo56c4w0bwmkqmqt404xqbup2ua0ld', '.eJyrVirKzEsvyc9LjU_JL8_LyU9Mibc0VrIqKSpN1UHIFaUmJpfAJWoBMbsUKA:1mlnRk:d-x9D7RimV9BQNvBhSbqjzFM__RMKCLGb7BUHXPrRuM', '2021-11-27 07:27:32.463719'),
('7e5vua0n1zb8f87mktoss6nhydv2hegb', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKhob6Bub6RgZGhjoKhgZWRiZWxuZ6SjlJqUVF-EcKQPKDmWgDi-R7X:1m2ciz:s_WDcsbgZhNE2mJAaWqI_yvfnoh3tHri7tGvk3Hi1b0', '2021-07-25 16:54:37.971482'),
('7gzm3y9pr6xmtm3nabzifll08o2gqsp4', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKBpb6hkb6RgZGhjoKBmZWxuZWJmZ6SjlJqUVF-EcKQPKDmWgDkkh7j:1mvJ9G:2M-Gf7IKLtplgDBbmSV5ZkBvOtiDj2j8jZ1_zV7tTF0', '2021-12-23 13:07:46.574999'),
('7howv2674rqfcec4zvrorr5gv58a1jwg', 'eyJyaW5ndG9uZV9kb3dubG9hZF81MyI6dHJ1ZX0:1mknmz:rHhU-eNAZPpwOKz0xUqIJPYG1JfjisM04qqEsE41DxU', '2021-11-24 13:37:21.436338'),
('7i085s5s7g0qysrxbz86gmkamvz0u80t', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yIjp0cnVlfQ:1lpY9j:YnOiU5gMqnpZXahRxgYNYxM6DxtLk7AW-Qh9Vjz_dSI', '2021-06-19 15:24:11.596047'),
('7m521fd9r62hndf0vat1q5pfaqzxe4kt', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xNyI6dHJ1ZX0:1mP76d:nqBSkMnsydnGj6Kxl6mEOYKeVlT31ish0wo9_riyN4I', '2021-09-25 17:47:59.762589'),
('7mhpyxdms1iftanmr37fcqj40tc4rena', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMjIiOnRydWV9:1muS3V:5NDKdtSrInAz3JqdhzzqF28mY2Toa67Hr8nujk2FZRU', '2021-12-21 04:26:17.969364'),
('7ot8hpq4btu574m4c9t07dwoysd7hime', 'eyJyaW5ndG9uZV9kb3dubG9hZF85OCI6dHJ1ZX0:1mjFRM:uF1rMHM49hrY9Yfz705Y0gZ7qN77b770xk-12S0yBLU', '2021-11-20 06:44:36.160847'),
('7owjzs602mdee02xd8xau9vwgfbg6cbv', 'eyJyaW5ndG9uZV9yZWFjdF8xNDkiOnRydWV9:1mweA3:hEnHKcrhChlPMuK_jdDNagECPpeEoasCYOBKuRl2J-Y', '2021-12-27 05:46:07.331974'),
('7tpfzfem5e74n7zez5mti8voo77h9eg9', 'eyJyaW5ndG9uZV9kb3dubG9hZF8zMSI6dHJ1ZX0:1mVyUd:3Fn0fY1ta9V7nnrmGQWLO2a2QVDFwRZLZyqxYYUZl70', '2021-10-14 16:01:07.396404'),
('7u7pr3u3ux0dg1wsw5map0jfwgdt7xuk', 'eyJyaW5ndG9uZV9kb3dubG9hZF8zMCI6dHJ1ZX0:1mJCaT:D4yJbLKPuaehCTyf7i8sWP5M6wn11grojEgQZvCRYSw', '2021-09-09 10:26:21.912929'),
('7v2p7ynzbx5k7w1poaora7967h4d7a0y', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTcyVbIqKSpN1UHIFaUmJpfAJWoBMOAUHg:1mmBQD:j-g_jPxQzKLzNu66NhxMpPIyX11NmbySwX9AQIqeZsA', '2021-11-28 09:03:33.477303'),
('7wqno7rybwras62ke5ly57fusmnfeghk', 'eyJyaW5ndG9uZV9kb3dubG9hZF83MyI6dHJ1ZX0:1mRDWh:xp9fPSis0xlOFSZauYucFAhgqYzZ-gT2qyH--U0ygRQ', '2021-10-01 13:03:35.254585'),
('7wrnx9dcoyldqyqe48dd3idj5f2mdnto', '.eJyrVkrOLY4vyc_PSUosik_JLE5MyklNUbJKS8wpTtUBS6amZJYoWZUUlUL5BUWpZZmp5VA1tQA_fRi5:1mf5M4:wnk1ISksUArFKnaxbcvG7X4xr0S_hIQ2bXtiacO0-NM', '2021-11-08 19:09:56.510593'),
('7yor3k88opsy98801wlr3ufjuwyz7fjq', '.eJxVjsEOgjAQRP-lZ9NAWwh49O43NNvdRaqVmrbowfjvQuQg13lvJvMWFuYy2jlzsp7EUdTi8J85wBtPK6ArTJcoMU4leSdXRW40y3MkDqfN3Q2MkMe1barOdEq3DYJSiAPrioe6Uto5HlRL1BrDpm8bqjvTGNQVImt0NfSmh2YZxXu2JcbgIFnyGVzg5dcAIfMPMvmyCx6Jn55f4ljSzJ8vHnxP3Q:1lyvMK:ShJVRSUC00yEKMdlfMljqPeB_tu5POufYUGH1TC_BUI', '2021-07-15 11:59:56.819811'),
('7z28vz8olhipiau6d9so4pfh29mqeadz', 'eyJyaW5ndG9uZV9yZWFjdF81IjpmYWxzZX0:1lrGmk:fzjo_4zvpJdazi_uO5yZUbQezfM9BYoaWdOAskspZoY', '2021-06-24 09:15:34.081897'),
('7zq6sxdmd1qyu7cig84q86nznvutooyo', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKhub6hob6RgZGhjoKBhZWJpZWxsZ6SjlJqUVF-EcKQPKDmWgDkbh7i:1mnBTx:XeQ5VyoIDNX1YXZ4oIODLjBuo5y7z3woZtt8v1ywXxI', '2021-12-01 03:19:33.370475'),
('80yi9fadoifbgquyd6cixac8ni2i6kcu', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMTAiOnRydWV9:1meWd4:20vfZ7hBZw1Ukx6vIgWNhYKkI_wPIezWDusk6AQnXoQ', '2021-11-07 06:05:10.182955'),
('81qb93znl8kbe63ng5619pcjww6hgajl', 'eyJyaW5ndG9uZV9kb3dubG9hZF85MSI6dHJ1ZX0:1macXt:PQDo1YGaYxZmQb-sxyjmG4mG0wciPRk6psfU2fGCcwI', '2021-10-27 11:35:41.044608'),
('82exk73vxhpjsvbh6zjzim716ee10typ', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKRib6hob6RgZGhjoKBqZWpgZWBkZ6SjlJqUVF-EcKQPKDmWgDidh7R:1mpg14:288ajey6iUkdXbSEFwfYZDzIA-SsHPkV3msxDsq2eTA', '2021-12-08 00:20:02.602402'),
('82z36lddgwjqhxe9bsu508kn4jlqslxf', 'eyJyaW5ndG9uZV9kb3dubG9hZF80NyI6dHJ1ZX0:1mJW3g:RQjHJbraEY-DHgwB7hDqettKCMq_eafbLIGQqoFzSeM', '2021-09-10 07:13:48.972478'),
('83kpmfikhbsjg010cvd6799cp0nmtxeh', 'eyJyaW5ndG9uZV9kb3dubG9hZF80NiI6dHJ1ZX0:1mpYPG:eUHiv5pRKFQdwjHWH2kSsgiV9UYntTLQGczmKeqYejw', '2021-12-07 16:12:30.004999'),
('85pond1o0aqa43u670joxi088n39bf2u', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yNCI6dHJ1ZX0:1mgAOS:H8YBU02JNuHrpSYMDmoxjRDc5fjyaF_QQwdySD-C-Ns', '2021-11-11 18:44:52.368359'),
('88jnwck5ccmmp5ravpekiqadzdpcqvjb', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKRsb6hgb6RgZGhjoKBoZWRmZWxpZ6SjlJqUVF-EcKQPKDmWgDi9R7Y:1me0ed:eKmtPoa_OsVyMbU_GqRykSrOONgKaYNOcfoDdl41PjY', '2021-11-05 19:56:39.741707'),
('89qnp8o9xdhxkp6jkapkhbam5f660alj', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yMyI6dHJ1ZX0:1mN9Cc:nqebNh6E-97B4_cmjDM53KpRNV2Ref2VE_ddG70ilWg', '2021-09-20 07:38:02.476736'),
('8bgzjxqhajmby4fmz61z3bqgrgojgtzo', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xOCI6dHJ1ZX0:1moYor:FsAaShJ3JTtuBEQgnWcFepGa1AwTl_AWHDEwjWRTXzA', '2021-12-04 22:26:49.694760'),
('8bn1duwt3ynpjhnxgrhdoyb54eua7gk8', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTcyVrIqKSpN1cEiZ2gKkasFAHKKFWQ:1mLhlk:O0CFD9OKeFQTrZ2CPUWnHW_cM4qSAhb7PXapz1C9lO0', '2021-09-16 08:08:20.178071'),
('8d312ea02jdqjqpudde2u2knoefne8un', '.eJxljsFuwyAQRP-Fc2UZB7CbY-_5BrQLuzEphQhwcojy77HVVGqU63szo7kJC0ub7VKp2ODFXkjx8Z8huG9Km_AnSMfcuZxaCdhtke5pa3fInuLXM_syMEOdtzYPyMowTuMOJUrqndF6MLo3yqkda2KJNE6DdsDkmSfZT6NBrT71QIrXUfdTbcs5IhTrQwWMtP5iiJV-JfnQXsC50CXQVexbWVZUQjq2nMgWAteseuM-X1PM4P_U_QEjVWMW:1lsUG1:lgEpIRASIer0Ej_yUtz_ZPuD3dq-mgnNNlFh1s4rZx0', '2021-06-27 17:50:49.237195'),
('8ektzpgzg7lor9yhlaoiuka3qdd7cpsx', '.eJxVjEEOwiAQRe_C2jQtDKR06d4zkGEY2mqFBOjKeHdt0oVu_3v_vYTDvS1ur1zcGsQkBnH53TzSg9MBwh3TnDvKqZXVd4fSnbR2txx4u57uX2DBuhxv6EcYpTKaUEqiyKrnOPRSec9RmhAMAIM1OgwjaCDVE7EiP6AFi_obLWuaW07sCiM1Z7WYIm6VL4Ke1W15dhs2rk1MYOT7A7L5SF0:1mWXNN:surC_bxVKSRnq3FJzc4cGbYBweGzTcq7Zd-QS3C_K_M', '2021-10-16 05:15:57.757360'),
('8gun8hk7obo54s3g7r7yodl7bam8d55u', 'eyJyaW5ndG9uZV9kb3dubG9hZF81NyI6dHJ1ZX0:1md1WU:gAYblnLqi6OLiZ1Uu3eKGwVDEVROLXo514efEh7ZrlY', '2021-11-03 02:40:10.529160'),
('8h5vohpbjm1nmanhuhp15egcecs4dt17', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTcyU7IqKSpN1cEiZ2KOW84Ujz5TY4hcLQBo4CoL:1m57yK:nPEwdRYwDgCIXzwsckr69LjSupNJbxHprOVdJVr2IyE', '2021-08-01 14:40:48.215777'),
('8ifefrgmcs3iab644c0ztufcg3dcyzun', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yNSI6dHJ1ZX0:1mVFpf:cR_ewSx__hQmKilLNlaKv3T4TqnYgvjsESmGhMD2a4c', '2021-10-12 16:19:51.505767'),
('8lc8e2b7xxv58gsfxw7h7qd29cjpumr4', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yMyI6dHJ1ZX0:1miTv1:BF6Po2txMbHBs-Sax6VEe4JvQlV6NSelNe5XQC2g0PQ', '2021-11-18 04:00:03.179158'),
('8o2ii17gceiqdr9r3lnl1m5ytkgfh4qe', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKRmb6Bhb6RgZGhjoKhkZWhgZWhhZ6SjlJqUVF-EcKQPKDmWgDjuh7a:1mJ93i:luYtHFXe6Eot_EN9WEEd4fHVcs8L27Uc-2gF84vMa0A', '2021-09-09 06:40:18.129564'),
('8qwj4vxe6nwey8h4q7z73lkzb05f5u00', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MibcwVbIqKSpN1cEiZ2kIkasFAHPYFXA:1mvJPs:nyVgsVXxc8FEUnkJU-5LWiFEyXmqVPTyQFPIdi7T8OE', '2021-12-23 13:24:56.181910'),
('8rccm1bn028cm3rvok27gi3dguwvz0u5', 'eyJyaW5ndG9uZV9kb3dubG9hZF81NSI6dHJ1ZX0:1m4wHu:7e2mBj2fCKEIpozfZasPIAkXHUfnCoMdRW_MpU-6gXk', '2021-08-01 02:12:14.746270'),
('8uzilvrz7h1wvvg4cn1ok07l2o7qnauc', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTcxUbIqKSpN1cEiZ2qEWw6fNohULQAaoSmd:1mYmiZ:e2qDV3-8iSz5ao11rnbNgOnQAF5ibo95PEx8GXZ0zmo', '2021-10-22 10:03:07.464757'),
('8v8zgm97d1rqziwoe9rg13wz4nu3jae4', '.eJyrVirKzEsvyc9LjS9KTUwuiTexVLIqKSpN1UFIpOSX5-XkJ6bA5WoBLNcUKg:1m7zZL:__wEovhc9kLhE7pbTSfCpZB26lrLFPS9i_lne9jKzIQ', '2021-08-09 12:18:51.140000'),
('8vgottzlx43dtnh9svmzn81ep1v8m55o', '.eJxVjkFuwyAQRe_CurIMAexmmX3OgGZgJiZ1IALcLqLcvbZiVc3yz3vz9R_CwdImt1QqLgZxFFJ8_L8h-C9KGwhXSJfc-ZxaidhtSrfT2p1zoPm0u28FE9Rp-2aFrC3jOBxQoqTeW2OUNb3VXh_YEEukYVTGA1NgHmU_DhaN_jSKNK-l_lZdy3lGKC7ECjjTuothrvSCFGITx1aWPd8LfUf6-XNKTJeWE7lC4JtT8iU_fwGQQlkr:1lqd9v:cz1sk8bs5NxsFVG-cDHncyZElPK8kFg099rVIdLr8-Q', '2021-06-22 14:56:51.428109'),
('8wypyrk1k48bs7y8k8b0msmvkd3f3brw', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMTAiOnRydWV9:1mdDG4:m8vieepf1m5qXB-fOVYwOSYfTEuSEfwBeZcEWPeclBM', '2021-11-03 15:12:00.055253'),
('910u655d23w5zj3hua5jthoihmj52xgw', '.eJxVjEEOwiAQRe_C2hCgDKBL956hYWBGqgaS0q6MdzckXej2v_f-W8xx38q8d1rnJYuL0OL0u2FMT6oD5Ees9yZTq9u6oByKPGiXt5bpdT3cv4MSexk1G2TrGIOfUKMmlRyAcaCcTXZiINZIPhhIkSkzB62Cdwj2DIYsi88X9os4Pw:1lqQHe:oXyVWJqdRTxfcxyp4aGvPHKuIjCU1t4pnQFprAXWi4M', '2021-06-22 01:11:58.919346'),
('91qjutmfcvyoe59uzkdhbwum8to019g4', 'eyJyaW5ndG9uZV9yZWFjdF85OCI6dHJ1ZX0:1mZXFs:4hynLzUGGz0KTIl_Zht_xB4_akzI8y8se2M3PBx4voE', '2021-10-24 11:44:36.389304'),
('938o2dcmajymwszam7v2z5w43lsmeudh', '.eJxVjEsOAiEQBe_C2hA-DQGX7j0DaZpGRg2TzGc18e6GZBa6fVX1DpFw31raV17SVMRVaHH53TLSi_sA5Yn9MUua-7ZMWQ5FnnSV97nw-3a6fwcN1zZqUAGCsd4RGkNU2SquWhmbM1fjS_EADNG7ogM4IKuI2FLWGCGiE58v4EQ38Q:1lug1L:JMMbY8yKrYCErUURiiAaA9pKwdxjWW4Ak2BPcKesKP0', '2021-07-03 18:48:43.895390'),
('98euu2n4g1wt8rip3dfpuhe7qw395f2a', '.eJxVjsEOgjAQRP-lZ9NAWwh49O43NNvdRaqVmrbowfjvQuQg13lvJvMWFuYy2jlzsp7EUdTi8J85wBtPK6ArTJcoMU4leSdXRW40y3MkDqfN3Q2MkMe1barOdEq3DYJSiAPrioe6Uto5HlRL1BrDpm8bqjvTGNQVImt0NfSmh2YZxXu2JcbgIFnyGVzg5dcAIfMPMvmyCx6Jn55f4ljSzJ8vHnxP3Q:1meKI5:Tg7CgeZgeOs8kCYn42L8vgZPOjB1DU1RvTs8y9fs7II', '2021-11-06 16:54:41.307000'),
('995cmkwo4r4ftsa25ii4iqxe1bg3sfst', 'eyJyaW5ndG9uZV9kb3dubG9hZF80Ijp0cnVlfQ:1lz2sb:16AcuyX__T7FBLRLECc8eRVroMT4xGjueiUWBr4uUUo', '2021-07-15 20:01:45.604078'),
('9eq4k9aal832tvrdkn7gad8smcsj6nz9', 'eyJyaW5ndG9uZV9kb3dubG9hZF80NSI6dHJ1ZX0:1mKGXo:Ypdfir1Gvwce3rCoCns7NFHz8dc5mFTq0Lrr0fbYvqY', '2021-09-12 08:52:00.778583'),
('9fkry24cfb6v2g1gck8kqr38th8y9apt', 'eyJyaW5ndG9uZV9kb3dubG9hZF81MyI6dHJ1ZX0:1mjlHj:Hu9VN0ToPcjNPOlFy3GFG1p-XmUMwyShobul1jE4WuI', '2021-11-21 16:44:47.666916'),
('9hewlbxde7h3bfbvmxc64opy2yq0ufit', 'eyJyaW5ndG9uZV9yZWFjdF80NyI6dHJ1ZX0:1m3i57:F8-9Tn4QdjXbHeSNd5KbaWB5G7MEQv3ZR48ePKcYvS4', '2021-07-28 16:49:57.922165'),
('9kowzf19qa8ra5uosc7fzyn3njng1vjh', 'eyJyaW5ndG9uZV9kb3dubG9hZF80NyI6dHJ1ZX0:1mpYrd:B5tJ0VYpxTWGR5t6IzcPrilQgP-YTqkVkAhecP47XW8', '2021-12-07 16:41:49.313390'),
('9mcl6rf61j338sfqdmr15igape2x335b', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMCI6dHJ1ZX0:1mZkAJ:48rpwkaAA5qbEEODDuthudt4XuvWOFYq6Mzl8td9sEg', '2021-10-25 01:31:43.389318'),
('9qe4netusx3mkwf5t9xx5tilw0iemrg1', '.eJxVjEsOAiEQBe_C2hA-DQGX7j0DaZpGRg2TzGc18e6GZBa6fVX1DpFw31raV17SVMRVaHH53TLSi_sA5Yn9MUua-7ZMWQ5FnnSV97nw-3a6fwcN1zZqUAGCsd4RGkNU2SquWhmbM1fjS_EADNG7ogM4IKuI2FLWGCGiE58v4EQ38Q:1mV2Rk:buBDbGKykC6EdrBjZ6rerDsgKDmIQlAovepNEebdNeM', '2021-10-12 02:02:16.670161'),
('9qmhln0z8urcwpa0c12niooza7eivzlr', 'eyJyaW5ndG9uZV9kb3dubG9hZF82MCI6dHJ1ZX0:1maK11:A7J7mxg4riJ1RENdc6-W3jHYQQLzo4aHuxOyMVqG1gQ', '2021-10-26 15:48:31.452695'),
('9t387rofbhbyc53p9e5hp8kcupwbaf61', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yNSI6dHJ1ZX0:1myEsp:25A6xPGeR7WXNVFY6433jDLUTEO76dLZbd8lSSXnwaM', '2021-12-31 15:10:55.638184'),
('9t8nkjyowcoz35vv5mmchojnfxwmdp5v', 'eyJyaW5ndG9uZV9kb3dubG9hZF80OSI6dHJ1ZX0:1mAFni:W0F6zyKHnJpp9pKWA6Pt2Jy8TQLwwbELJESlLwAYG5c', '2021-08-15 18:03:02.071844'),
('9u8icvte4whabdxc8fs27utr8e4nk7ol', 'eyJyaW5ndG9uZV9kb3dubG9hZF84MyI6dHJ1ZX0:1mPeWv:YS0EWacWDLV_1uTCkiKPxaC13wPcIVAgGTQQRMY9zJc', '2021-09-27 05:29:21.466943'),
('9ywm61dz1gmm1fnpauixipg7x1k634mq', '.eJyrVirKzEsvyc9LjS9KTUwuiTcyU7IqKSpN1UGXsMQhbmwEkagFACB0G6o:1lxUqu:ZfTTRc_legU1t8uV2fsyEi03I3cvr5tIF6i_kapQwJI', '2021-07-11 13:29:36.237056'),
('a491r6krsr7wgsmi2wixi7j5if6vcqn3', '.eJxVjEsOAiEQBe_C2hA-DQGX7j0DaZpGRg2TzGc18e6GZBa6fVX1DpFw31raV17SVMRVaHH53TLSi_sA5Yn9MUua-7ZMWQ5FnnSV97nw-3a6fwcN1zZqUAGCsd4RGkNU2SquWhmbM1fjS_EADNG7ogM4IKuI2FLWGCGiE58v4EQ38Q:1mj3SM:L5tOXYdOvO9LQdwetONSS6jyqLKb7tU-gHlcyhsTURo', '2021-11-19 17:56:50.961321'),
('a4lqf0asg3w8jcgt2p4n3n03bh7gakc1', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTe0VLIqKSpN1cEiZ2kKkasFAHOFFXE:1muCk9:fYJPEkt2FQKioibAYhsxBTGob830ScEWUOlejjgX10Y', '2021-12-20 12:05:17.540731'),
('a6227sv9q58n7shw4b5c0plvrni05imb', 'eyJyaW5ndG9uZV9kb3dubG9hZF82MCI6dHJ1ZX0:1meFyC:Jd1153Jz5tM1EecCWTXb6wTE8i_fkz-rDYxxIsSFakk', '2021-11-06 12:17:52.527560'),
('a6aal3cjjeib6u9q2f6kpwt359ipg9sl', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMyI6dHJ1ZX0:1mSNTd:_Y3Tl5h11lXcZkAPE-dsCCgimpcQs68lMplK2e9PzzI', '2021-10-04 17:53:13.825733'),
('abjr0ix5trl67xe9aalr5nihh3k4dczg', '.eJxVjEsOAiEQBe_C2hA-DQGX7j0DaZpGRg2TzGc18e6GZBa6fVX1DpFw31raV17SVMRVaHH53TLSi_sA5Yn9MUua-7ZMWQ5FnnSV97nw-3a6fwcN1zZqUAGCsd4RGkNU2SquWhmbM1fjS_EADNG7ogM4IKuI2FLWGCGiE58v4EQ38Q:1mB9qN:YKDYr3gqigQWGZZyBKBbOosmIAauLw6WSV6X7PKfWgM', '2021-08-18 05:53:31.801864'),
('adrgvlaq9n05dh71b23i24visw50gake', '.eJxVjEEOwiAQRe_C2hCgDKBL956hYWBGqgaS0q6MdzckXej2v_f-W8xx38q8d1rnJYuL0OL0u2FMT6oD5Ees9yZTq9u6oByKPGiXt5bpdT3cv4MSexk1G2TrGIOfUKMmlRyAcaCcTXZiINZIPhhIkSkzB62Cdwj2DIYsi88X9os4Pw:1lu5rn:0HdVi8eqk-To0qx67K8TBmSCJ2VBM1YAdRlfcIMXPTg', '2021-07-02 04:12:27.680453'),
('ae9aegb8g23bvrm8my3sqdrxuozbrdp7', 'eyJyaW5ndG9uZV9kb3dubG9hZF8zMSI6dHJ1ZX0:1mVb2h:1RZ9-WJj2zR3joqjRHiy_EEJxSIO__ZXimuM5puEdIA', '2021-10-13 14:58:43.559062'),
('aec4aeg5kyge5o9ybgwkf6s8ylvko3pn', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKRmb6Bpb6RgZGhjoKhgZWxmZWhsZ6SjlJqUVF-EcKQPKDmWgDkCR7c:1mUMMf:Tdd0YaZeVogZJNe4e30YcUbxj2M_PWzqVIY9847FdUM', '2021-10-10 05:06:13.074348'),
('agxwh4puh3xck9wp9tafni3i4cueoae4', '.eJxVjsEOgjAQRP-lZ9NAWwh49O43NNvdRaqVmrbowfjvQuQg13lvJvMWFuYy2jlzsp7EUdTi8J85wBtPK6ArTJcoMU4leSdXRW40y3MkDqfN3Q2MkMe1barOdEq3DYJSiAPrioe6Uto5HlRL1BrDpm8bqjvTGNQVImt0NfSmh2YZxXu2JcbgIFnyGVzg5dcAIfMPMvmyCx6Jn55f4ljSzJ8vHnxP3Q:1m1X4H:NAQKWTwxT5JsjPWrM1u9HU_2utmsABXM-iOnjl1mPqI', '2021-07-22 16:40:05.054697'),
('alhsa3saju88soj2sx4uopyshhy5y31s', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKhkT4QGRkYGeooGBhZGVlYGZnrKekopRYV5RchDMkDaq4FAOL5Htg:1mw9Rr:j4YcUWF5IfJ3ALukX_N_T5yTFUh4TEc0FfsdvIsP2Y8', '2021-12-25 20:58:27.694789'),
('ank4sdu2f7a18rs49mzstnqnjf3x5wj1', '.eJxVjsEOgjAQRP-lZ9NAWwh49O43NNvdRaqVmrbowfjvQuQg13lvJvMWFuYy2jlzsp7EUdTi8J85wBtPK6ArTJcoMU4leSdXRW40y3MkDqfN3Q2MkMe1barOdEq3DYJSiAPrioe6Uto5HlRL1BrDpm8bqjvTGNQVImt0NfSmh2YZxXu2JcbgIFnyGVzg5dcAIfMPMvmyCx6Jn55f4ljSzJ8vHnxP3Q:1mx03z:GWzWA3XtAZK0B6HQ08o9Qa9nVFCEZ760at0aOgGHRjk', '2021-12-28 05:09:19.885337'),
('apioqb4qvs34cho7zve9fde11vqfv7w2', '.eJxVjEsOAiEQBe_C2hA-DQGX7j0DaZpGRg2TzGc18e6GZBa6fVX1DpFw31raV17SVMRVaHH53TLSi_sA5Yn9MUua-7ZMWQ5FnnSV97nw-3a6fwcN1zZqUAGCsd4RGkNU2SquWhmbM1fjS_EADNG7ogM4IKuI2FLWGCGiE58v4EQ38Q:1mPRnN:IX5zTlvc0ldBukJ7qoU6BIbICg9sys73Z-DR00XJk9I', '2021-09-26 15:53:29.891942'),
('aqz00x0kbcyi3gjnj8a06wcdutf0a27l', 'eyJyaW5ndG9uZV9yZWFjdF82MCI6dHJ1ZX0:1mEt7e:de3n5LgxMzsMQzMAkw24pCl_YrvoqQnXyUX5r1XPLjA', '2021-08-28 12:50:46.283614'),
('ar9ahsm4a0r0imcxs3iacn3v9m0f1c6r', 'eyJyaW5ndG9uZV9yZWFjdF81Ijp0cnVlfQ:1mA34b:X6UQi04CjJiiCo3OWFHBRc_VpEg7_aPkVLG4QqSGAmA', '2021-08-15 04:27:37.512519'),
('b03zvo1x7pdp4klaefyduu9iaihuofjk', 'eyJyaW5ndG9uZV9kb3dubG9hZF85MSI6dHJ1ZX0:1mxPRn:qEil53bhR0GwPlLeriL1Mq3E1VB5XWkR5KdQAuMh4VU', '2021-12-29 08:15:35.530177'),
('b6mj7agr9vxo5sscdpwabkbpcj7bpx8v', 'eyJyaW5ndG9uZV9yZWFjdF8xMDQiOnRydWV9:1mdSgT:6Hl1GMf530W9za5pY6OzUAf0xCx6oCwDWBVBfsCandQ', '2021-11-04 07:40:17.126879'),
('badw83ob3f6fft63iy4evc5cbhb94u5z', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yNyI6dHJ1ZX0:1m3yew:t6rNf-kWpktu8AT77NYPP9KMdqTV-2WsTzOfmn80DKc', '2021-07-29 10:32:02.780446'),
('bd91r0pww48eeb98y3i81be954qxv3nx', 'eyJyaW5ndG9uZV9kb3dubG9hZF83NiI6dHJ1ZX0:1mlES6:1Pin3uUYrwqTo9jrhe4jI5BxqVWbywsM2O-JVM3sLJc', '2021-11-25 18:05:34.016378'),
('bfrtfwhd9j9gozwk63h1fkjjxz6pvo2s', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKhub6hkb6RgZGhjoKBiZWpqZWhqZ6SjlJqUVF-EcKQPKDmWgDjxR7c:1my07f:r-blpJx3q9BnQO7Z_kcWiOU1rVdST9fMlKkDd_Q_qss', '2021-12-30 23:25:15.418417'),
('bg4mph3aqdcb7y6ahkbvh66n1qhq4ocu', 'eyJyaW5ndG9uZV9kb3dubG9hZF80NSI6dHJ1ZX0:1msRXf:7ZlMPm1eKmnelTpXKLMh1xdZR8YOVFL4JBeLi4RaR8c', '2021-12-15 15:29:07.645733'),
('bgl5cnubdtplyeybkz68sp22b70tywzh', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yNyI6dHJ1ZX0:1mTJN4:gIBzhUr-gUhiE0KulOrpYVjk8b8xmOOeDkhCEpgt_jk', '2021-10-07 07:42:18.432846'),
('bgqiayks7whgf818rbobmgheyh7d9g8j', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMyI6dHJ1ZX0:1mFEzO:ayFeMiPOSGVevge4rq6W18BYqH6pGF3Nb5w3WP4J0rc', '2021-08-29 12:11:42.572868'),
('bii8lotcvkxadc7px0652gqlpjhhu9i6', '.eJyrViouTU5OLS6OzwUSiempSlZ5pTk5OkqpRUX5RQhBpeD83NSSjMy8dIXy1LwShfKi_Lx0RYX8PAVDS31DQ30jAyNDHQUDEysTEysDI6VaAIknHL8:1mo1qE:yqvWp2BJYOCrxsJsk6lV9oiX1VtxwfdRI6eYkF0lspA', '2021-12-03 11:14:02.588339'),
('bmw71ed5txwnxvc7v807okvqpg65ok1h', 'eyJyaW5ndG9uZV9kb3dubG9hZF82MCI6dHJ1ZX0:1mfmfp:Z92RTF_teISgDJxtb5Chg--v6WijuYf6Bs33HuOu8k8', '2021-11-10 17:25:13.988166'),
('bn07q2px6nrdcopz63iv2cqi5twwh4tf', '.eJxVjEsOAiEQBe_C2hA-DQGX7j0DaZpGRg2TzGc18e6GZBa6fVX1DpFw31raV17SVMRVaHH53TLSi_sA5Yn9MUua-7ZMWQ5FnnSV97nw-3a6fwcN1zZqUAGCsd4RGkNU2SquWhmbM1fjS_EADNG7ogM4IKuI2FLWGCGiE58v4EQ38Q:1mTSiE:v_GYIezIbg5B_Ha2vcI-7DPakjk1sair5MDCvTL7stw', '2021-10-07 17:40:46.805418'),
('bs0prfdsb3md69twww78t7zs91d2ubf2', 'eyJyaW5ndG9uZV9kb3dubG9hZF8zMiI6dHJ1ZX0:1m7Bqf:09jaIivgGXW6hoIBhnoizNKFW5GJYnBZeN9d8Lz0Vig', '2021-08-07 07:13:25.215076'),
('bus3djo2z3nuojkbqovesy4lgwfoz4gy', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMDMiOnRydWV9:1mbnOs:WdswZqzcKsDlb8Wj3jzOMHIAMMPv6h98CHKy0LDrrn4', '2021-10-30 17:23:14.530560'),
('bx5vjayrkjdbr1avezcu8li2fgz4jwd3', '.eJxVjsFuwyAQRP-Fc2QZB7CbY-_9BrQLuzEphQhwc4jy77UVH-rrezOjeQoLS5vtUqnY4MVFSHH6zxDcN6VN-Buka-5cTq0E7LZIt9vafWVP8XPPHgZmqPPW5gFZGcZpPKNESb0zWg9G90Y5dWZNLJHGadAOmDzzJPtpNKjVhx5I8TrqfqptOUeEYn2ogJHWXwyx0luSD-0A7oV-Az3EpZVlRSWka8uJrM-PFDN4K9_q9QdGyFpC:1lpVaT:z_pi0f1BClLSh5V0mYcfbwjuJGLWrEUHKtMsMlbEztQ', '2021-06-19 12:39:37.136192'),
('bxssyaxjo5z3jt0qfxvzz3k3jqdkkbza', '.eJxVjEsOAiEQBe_C2hA-DQGX7j0DaZpGRg2TzGc18e6GZBa6fVX1DpFw31raV17SVMRVaHH53TLSi_sA5Yn9MUua-7ZMWQ5FnnSV97nw-3a6fwcN1zZqUAGCsd4RGkNU2SquWhmbM1fjS_EADNG7ogM4IKuI2FLWGCGiE58v4EQ38Q:1mP0eb:ss0ft8A_tj-c061qC4H6blNDbBAuWf_KbmY7YwumPZ4', '2021-09-25 10:54:37.581207'),
('bzl3iep5a9r47b9qpelawmimh9b020rq', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTc2VLIqKSpN1cEiZ2gMkasFAHJXFWE:1mx6gx:edq-mAqoA4MqjEYWb4GnX-ljSw_CzzwVn74lGwthK1U', '2021-12-28 12:13:59.958616'),
('c11szjwarwji8vcxisfl20l3q8hnh2d4', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKRhb6hob6RgZGhjoKBiZWxhZWxmZ6SjlJqUVF-EcKQPKDmWgDkWx7h:1mr6o8:uSUWHjnz1svo6k-b_LVrjNouoy4q7C8sMeJFg4buxHs', '2021-12-11 23:08:36.392010'),
('c2f2m5ntreb0smddkbipq34vdx7dpiju', 'eyJyaW5ndG9uZV9kb3dubG9hZF81OSI6dHJ1ZX0:1mPau5:9GoJ-r0EdflRq1ou_QAbx1np8qSyJCUS-4yiJEySPE4', '2021-09-27 01:37:01.353047'),
('c46k075kqg0bckvfsiiq8kucx7hq13fe', 'eyJyaW5ndG9uZV9kb3dubG9hZF80NiI6dHJ1ZX0:1lxWuJ:L3ErxpP3M79Q-gGSc0Qw_8UKp7mTcWu8ykOxs2J1VWs', '2021-07-11 15:41:15.581456'),
('c7gvveks51a2j2vhmofz2jf0pg0qsf30', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMjciOnRydWV9:1mu5oh:Tpo9W3_XX-YMalXXaAKVRtJ-1tAHgEL_2nSnXF5SR6s', '2021-12-20 04:41:31.944654');
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('c7ynhyuy5dfz3szrxcdsmtbmht23uwi3', '.eJxVjkEOwiAQRe_C2jQUKGm7dO8ZyDAMFq3FANWF8e62kYUu_7w3P__FDKxlMmumZIJjI2vZ4fdmAa-07MBdYDnHBuNSUrDNrjSV5uYUHc3H6v4VTJCn_VvxXvVC6g5BCERPkpNvuZDWkhfaOa0UqUF3ru1Vp1ByRJJoWxjUAN1WirdsSoyzhWRcyGBn2nZ5mDN9IblQ2FjSWvM90SPQszrvDx_5T90:1mgmab:Bo_GPqzC7hnQw3pvgIh2vjhlxFXLmulWIo3aMiyg-Sk', '2021-11-13 11:31:57.080154'),
('ca6ec9w2w1gc6kfjw3o5qrpttjcxotxp', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMDMiOnRydWV9:1mbwL5:P8klx2Vo-hm_EokNxHxrfQL0aAbCXyaMZpnhSywh17w', '2021-10-31 02:55:55.132380'),
('cafinffrjd7nqnj571otzao7jle9znwi', 'eyJyaW5ndG9uZV9kb3dubG9hZF8zMSI6dHJ1ZX0:1mNVql:lcHvqk_bBD1sdDV6d0fpy-WWRWLMSQYbHFLEnytzQWk', '2021-09-21 07:48:59.867029'),
('camrwux1vk4libhxuar1lwgov67lw518', 'eyJyaW5ndG9uZV9kb3dubG9hZF82MCI6dHJ1ZX0:1mQ8d0:q5oV1IyBkQCA82v-TEfiKIqmSeDQhuw-0PAXKmCdH-I', '2021-09-28 13:37:38.286265'),
('cb8qgpk5pf5tr0to2zzwnpmob39ku5ex', '.eJx1kVEKwyAQRK8ifodGjYmt1-gBgiSbULAKaiil9O4NtKTQdH78mMfu7IwPni5hLjFQn8gNpdeG25IWqn5BqwHQCDQSreoA2PS8DAPl3F_Xx83ELT-_lWnx_s4-MssUCouBNaIWXa2EkhUTJ9sYK8yBV5xSium7JKzDO091AsdI1IQSCChU0RGBFjWBPFDZLYqhUAwNg--PGuMt-OjGfzYb69B_o_QKhTEovVwbnpzP9HwBnyn5pQ:1m4yMa:Z1NgrhgttJPmomGDLaDYGiLJWrsXE9_EkxXsxl6FMjg', '2021-08-01 04:25:12.351867'),
('cclfoes4sy6d0x20wtu68osv3i3a2aes', '.eJxVjsEOgjAQRP-lZ9NAWwh49O43NNvdRaqVmrbowfjvQuQg13lvJvMWFuYy2jlzsp7EUdTi8J85wBtPK6ArTJcoMU4leSdXRW40y3MkDqfN3Q2MkMe1barOdEq3DYJSiAPrioe6Uto5HlRL1BrDpm8bqjvTGNQVImt0NfSmh2YZxXu2JcbgIFnyGVzg5dcAIfMPMvmyCx6Jn55f4ljSzJ8vHnxP3Q:1m6Ds0:oef7wuauPPi-PuFk1LR935UgaFLlwXKCpVg8Ag9aXzU', '2021-08-04 15:10:48.964565'),
('ce9gfno59rtea2ssa1jgjfhfna3d8gca', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTc2UrIqKSpN1cEiZ24CkasFAHK5FWk:1mSVk7:nob7nMqRf4Ec6lNcoNsMnpUKro_20XOs4TVtM1sFd5M', '2021-10-05 02:42:47.967388'),
('cj5179s7x1levk1tl8mhuvgvm6txazll', '.eJxVjDsOwyAQBe9CHSE-C7Jdps8Z0LKsP0kEEuAqyt0TSy6S9s28eYmAe1_D3riGLYlJaHH53SLSg_MB0h3zUiSV3OsW5aHIkzZ5K4mf19P9C6zY1uMNaoDBWO8IjSGa2SqetTI2Rp6NT8kDMIzeJT2AA7KKiC1FjSOM6L7RuuWll8yhMlIPGqyYet35_QEIwEEm:1mvBZ0:9U7aVMLvmxeK176EYbIKEdWw2xQvq_jW450h1yuntU0', '2021-12-23 05:01:50.601466'),
('ckk83il9msn07a9u8gq7c3v3dggknt46', 'eyJyaW5ndG9uZV9kb3dubG9hZF8zMCI6dHJ1ZX0:1lx8WW:e18CbUdcn2H9JKJmddxNOPKuBQ5-d1Ny425blCBlv9I', '2021-07-10 13:39:04.821758'),
('clhiysn69x25v6qn0tk651ywr1sxp6hw', 'eyJyaW5ndG9uZV9yZWFjdF82MCI6dHJ1ZX0:1m3iVx:dtH78vcp00jtSUsugFvooUF1FIvl-i01tZjmxqb7g4E', '2021-07-28 17:17:41.877119'),
('clm7kbnkjzx15c5tk3tqqhr9t21fsqph', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yMyI6dHJ1ZX0:1mqXCZ:4yaixrrBzQtDAu9Sp6aUDaTbuAhiQ_e3ilCm5UaKdBM', '2021-12-10 09:07:27.922882'),
('cm0oq03iv7vf7rs1f5wrs6p53j0vtvh2', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKhhb6hgb6RgZGhjoKBsZWhoZWhkZ6SjlJqUVF-EcKQPKDmWgDiUh7P:1mcDu4:078kuCaSYUIMcxzq7JVN5C6mrYvERyc5tI9mPoftCDc', '2021-10-31 21:41:12.514299'),
('cnp2any9cejm4jmcr3fuz6n4fu0fwa43', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MibewULIqKSpN1cEiZ2aAW87EBLecsRFErhYAagEqCA:1mfNfG:ap5GxUZ_Inr2rv5lmRo51GBkKeChDd4LUAABHXDv0Ts', '2021-11-09 14:42:58.395719'),
('cp70gqyhztwjtafiozirj2dgvbdxb3ad', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTc2VLIqKSpN1cEiZ2QJkasFAHKQFWg:1mktt2:ZFa3bmm1HBJew4qBUBDaL0UuLU18_MJjlssYRXjrA6M', '2021-11-24 20:08:00.785735'),
('cqeaqlmcgn4zxp8nezy1o0vmt1vebilq', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMDMiOnRydWV9:1mbyqs:9VsSZBLjC3bXzDIngMmVkRFp7KO2scnbrhf3Qn4jUpw', '2021-10-31 05:36:54.295378'),
('cvi3ernsrt4ggnpsus7q2a8ak2bu88z1', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yMiI6dHJ1ZX0:1mvCXO:MftMfFo-s3kC7DGbZFgw7vcGWF1oq3Ynovpf6T1wq5c', '2021-12-23 06:04:14.973180'),
('cya7xtnfp28kdvdmjlyisieo62ubg47l', 'eyJyaW5ndG9uZV9kb3dubG9hZF82MCI6dHJ1ZX0:1m5oBi:Q7cYHs7yvcSgpP6_DCq1NLA-KpUA2eW4RIyiHgSr9Io', '2021-08-03 11:45:26.162955'),
('cyh7igzjcno12tfu9qq5qy7prcwbhsks', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKRgb6hob6RgZGhjoKBsZWRpZWBmZ6SjlJqUVF-EcKQPKDmWgDilR7V:1moBuU:S4uCYHIXC1C4XwyPDhLVpzvNGOgjLGxMv7Ct64oVfO4', '2021-12-03 21:59:06.596014'),
('czykhoiots43yt3yk37kc3pj0ec10ll3', '.eJyrVirKzEsvyc9LjS9KTUwuiTc0ULJKS8wpTtVByKTkl-fl5CemgCVLikqR5SC6jM0wJOCaYHK1AHTOJ7I:1lwItk:PDSEXuI30_IRG3uXoMgo33TAW8GiMYs7bGn1-jVSugI', '2021-07-08 06:31:36.737180'),
('d7b26s0laa1eg5ou314h714ga4l6gxxh', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yOCI6dHJ1ZX0:1mZEXc:AK-qiJ2qLe7eUGHVOkqPk1PGZRFhJ4ll0Wi9sHMPSgU', '2021-10-23 15:45:40.646492'),
('d7bz7gam24ozd8ufqltk0vpwtwmntliz', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKBmb6hgb6RgZGhjoKhgZWRiZWBoZ6SjlJqUVF-EcKQPKDmWgDh0R7M:1mXywL:XbT6mRH9TG_0hN6ct3HAm_DZz91tsd28BLyi5OaNaX4', '2021-10-20 04:54:01.090104'),
('d7tgifqwima6cxmqma58ob996fjcpgll', '.eJxVjDsOwjAQBe_iGln-rK0kJT1nsNbrzQdCLMVOhbg7WEoB7Zt58xIBjzqHo_AeliQGocXld4tID94aSHfcpiwpb3VfomyKPGmRt5x4vZ7uX2DGMrc3qA46Y70jNIZoZKt41MrYGHk0PiUPwNB7l3QHDsgqIrYUNfbQo_tG6VnCmqewYuVSxWCVfX8AxVc_AQ:1m2e00:zg8jKfr_Mlz1B2nWUhjeZzVd1J3Cd28SqrRFg0U13UI', '2021-07-25 18:16:16.225251'),
('dcku1er7qhj0bnigb5c1zdm8qntgys5r', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMzciOnRydWV9:1mxoYi:QFwnpABFruqfHvDrBLreb6ODlCNf8K0rnMzIUadqhZw', '2021-12-30 11:04:24.853087'),
('dctj4ycd63wckct23ycsmspuopc53v30', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTc1VLIqKSpN1cEiZ2KOR84CIlcLAF0hH7w:1mLSvH:HY-RxrUUC79fjZtikSL91XLMy2LUEgSwteaWv-aXJjQ', '2021-09-15 16:17:11.510384'),
('ddtukkmb789wx1uxn8n5wyi68165m0rg', '.eJxVj8FuxCAMRH8l4rzKAiE0yXHvPfUDkAEnoWWhAtKqqvrvJUrUai-WPPNmZH-TvBmDOat7HbAgmcjLocyb91_NKTcZQ2liaBi70qcrp5xdGkYnLichW3IhmFJM_yWhhi9EwVZWtWVMytnazMiDpsG8YdgN-wphia2JoSSn2x1pTze3z9Giv53sQ8EKed3Tgg5i4J3sDXBuzIwdxZlR3mmNM5fWSiFQjLK3bBC9MB2tH3ZGMxjFCH0tNfesSoxeQ1LWZdAe610z-IyHidYVMpW0nft7wg-Hn39McmEpMaBKCKaofjzgn1_HUHb0:1m2dYG:NO1vpXzsr2CZfR0YBf3wWFeIX0TRPgQVP9dywdCdWXc', '2021-07-25 17:47:36.020002'),
('denu5eu2pckd7bohxxhq2b7hq4lyx09q', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yNSI6dHJ1ZX0:1mBb6g:wETzMHHBEAh38NgfCz9ucuUfmFLYE2wqu1Vu1jG4CKA', '2021-08-19 11:00:10.661240'),
('deyy1egdnt332g9yr5rl5tlkrcjkeast', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTc0VLIqKSpN1UHIFaUmJpfEm0LEawEdXxPn:1lsT6M:jUu8IAHcTcnKxKMUTvRZT8W5kMVU4Ax98G7Y-8sYzh8', '2021-06-27 16:36:46.758490'),
('dfej42wmiktlxiefm4ab15oclk7e7kym', 'eyJyaW5ndG9uZV9kb3dubG9hZF85Ijp0cnVlfQ:1lwQRg:FzwMBs1YcqFdte1dcGQMwoeT2cp8dqOrzK98JeGP0zU', '2021-07-08 14:35:08.787242'),
('dgdk3jkjy9g6tpyuu0hqxmwmd5m8yvh2', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKhmb6hob6RgZGhjoKBoZWRkZWxoZ6SjlJqUVF-EcKQPKDmWgDiOh7P:1mmtGZ:JpvOzuEtKMAY4YU8Z74Fx3vUKe_8RVAkGKxISaNU2AA', '2021-11-30 07:52:31.957872'),
('dggo0m7h8k75bfyswg0v465xhvntsxse', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKhqb6hkb6RgZGhjoKBuZWRhZWpkZ6SjlJqUVF-EcKQPKDmWgDj5h7e:1mxUo0:9ksjS6v6u5ZX0Sf3pi2gTfpmtig_C0SvbvqYc_wkWZI', '2021-12-29 13:58:52.919200'),
('dl8kywbv4xjdj35d5ap1u8rkrz5vdo29', 'eyJyaW5ndG9uZV9kb3dubG9hZF80NSI6dHJ1ZSwicmluZ3RvbmVfcmVhY3RfOSI6ZmFsc2V9:1mhknX:elm6FwgZJfuXs7eNme-R6i6jVF1G7XKaII5zCZB2Q3w', '2021-11-16 03:49:19.867956'),
('dle7q497nqjm4yiozn8wzg55sf8baylp', 'eyJyaW5ndG9uZV9yZWFjdF80Ijp0cnVlfQ:1m860n:U0OKFBoP2cr9i1LEXr39q0EmIefYiziLfNPJKbfCofA', '2021-08-09 19:11:37.597508'),
('dlh27rmsvojkev3fvh8lia3unohgm2t6', 'eyJyaW5ndG9uZV9kb3dubG9hZF8zMiI6dHJ1ZX0:1m2ZzV:6-QpsfKKYpywer9crehb0kfYwfbPTYOcz0BxJFX9CUs', '2021-07-25 13:59:29.998034'),
('dlvsyxoujik1yboqtdno56xg9b3eavpk', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKRhb6Bhb6RgZGhjoKhgZWxpZWxoZ6SjlJqUVF-EcKQPKDmWgDkjR7g:1mJqax:7s1fJoRM9UFs-6n_l8Bu2_Dv8i9UWdu6rz9dYDYQNSg', '2021-09-11 05:09:31.403357'),
('dlwgk08fov2yy5131gxnap8smbgmip4r', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTcxVbIqKSpN1cEmZw6RqwUAc0cVbQ:1mAaSO:sl6WxyMi4dqh_w8jggBXwZ56ROwZfNhfl8V2uXJvpCo', '2021-08-16 16:06:24.178694'),
('dn06tpcyykqcx4nbeoeu0mkg1z04rqpu', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKhqb6Bpb6RgZGhjoKBqZWRkZWRpZ6SjlJqUVF-EcKQPKDmWgDkUB7g:1mQTSn:jW_VrB7hxO6mG5ZIASu0GgYYCaqkkRoMt4tXSCYRLL4', '2021-09-29 11:52:29.107381'),
('dn4uwhk43kn6iremuwyax1fmyvsi1oy1', '.eJxVj0FywyAMAP_CueMxDmCSY-99AyOBFNNQkwHcHDL5e-zWF193VxrpKfxPdRRiExeGVOnjD7ScE0JxIVbAROEg74V-Iz3EpZVlRQ6WNrmlUnFxDYUUB4bgbzRvInzDfM2dz3MrEbst6XZbu68cKH3u7WHBBHXapnlAVobRjieUKKn3RuvB6N4or06siSXSaAftgSkwW9nb0aBWZz2QYvF_fMpXl6BRXR9W9vUGlzNXEQ:1lpZTR:tIHaUJQZf1DND0J7Z8oevZXUqqpWjnOEo8WUChTQc1o', '2021-06-19 16:48:37.728016'),
('dnx864m7gb60msr5m95ey9q7uun5z0by', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yIjp0cnVlfQ:1lpYAy:sXfFvutCiH_GPwecQ8s7okwC5QnOb7mEl1cVuXo7LfY', '2021-06-19 15:25:28.121011'),
('doid8092wj1xbu27jh1m72a47516fz7h', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMzEiOnRydWV9:1mgfYT:uI0sNLuWQ3hdLP3uA0VSwqXJHWbSEScAyofLw-ItMD0', '2021-11-13 04:01:17.408780'),
('ds629uujwgu1n9dk7ceeyxoao26fa3zv', '.eJyrVirKzEsvyc9LjS9KTUwuibewVLIqKSpN1UFIpOSX5-XkJ6bEGxpA5GoBLQgUIg:1mLBBs:yhbon0M_K6rV94eTTJ01y-h6M4LYt7snwrV2RYktzg8', '2021-09-14 21:21:08.115545'),
('dtnxqumrbjtwzclvka9ysem797njlkeg', '.eJxVjssSgjAMRf-la4ehDxhg6d5v6KRpCtVKnbbowvHfhZGFLJNzcnPfTMNSJr1kStpbNjDOTv87A3ijeQP2CvMYK4xzSd5Um1LtNFeXaCmcd_cQMEGetmtVd6oTsm0QhEB0JGtyvBbSGHKitbZVilTfNpZ3qlEoa0SSaDj0qodmDcV71iXGYCBp6zOYQGsvByHTD5L1hQ0lLfv8SPT09Do4IY46QKG8muubzxf7jFb0:1mU9WA:pccbdD9IEQj6WRSnY8HuPJukvUwVDMc2Sp_Wb6jXHS8', '2021-10-09 15:23:10.673435'),
('du34gly5tvwjmomqa4g0gn1bpvwndr55', 'eyJyaW5ndG9uZV9kb3dubG9hZF8zOCI6dHJ1ZX0:1mCEag:oWmriIV687srMQBX-ju3R5GNNJ6ANgwEfljoQ7yV-F4', '2021-08-21 05:09:46.617880'),
('du7rhga6fhfukjp7uac631qi91eoa6aq', 'eyJyaW5ndG9uZV9kb3dubG9hZF84NiI6dHJ1ZX0:1mZ7dJ:DDV07GC4ltvJUB1HMxPc6i3nyM8dwBJIDYLCgs5b-o0', '2021-10-23 08:23:05.598353'),
('dv99qgbkdecrx5c9xhvq61vz51cywnmw', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MibcwUbIqKSpN1UHIFaUmJpfAJWoBMbkUKA:1mUHbu:gfdcQRVbfkI8IjDJIepFo0e8iEOekGtY-KM4ZA0uQMQ', '2021-10-10 00:01:38.307350'),
('dz1lml7du4x29eltmvllpfk37nrexxzl', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTc2VLIqKSpN1cEiZ2QBkasFAHKIFWc:1mYVfw:zW1drzenMS0ckqusW2nglhy776obtBlXVAm4RLApVFU', '2021-10-21 15:51:16.931061'),
('dzeqc0r4itq3m6621b3pyobsoroul005', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTc1VrIqKSpN1cEiZ2wEkasFAHLzFWY:1m4jgI:Vs3sTUEU3WqMqdjA6FU5CxQ1MCguBuhwxcAidDBVpWA', '2021-07-31 12:44:34.533728'),
('dzu1bh2gdivt7zi4texpai5vgtwglw1e', 'eyJyaW5ndG9uZV9yZWFjdF8yNCI6dHJ1ZX0:1mBhPH:HvCcJZ-S9nUN_EYcHPI53QA32qU63YuyRFxlpsHBXJU', '2021-08-19 17:43:47.262851'),
('e2n85cf7aqjgio6ngooxqgbdmr9bqbn7', '.eJxVjDsOwyAQBe-ydYT4LMhOmT5nQMuy_iQRSBhXUe4eWXLj9s3M-0Jby9xrkdiEuMcQ4N7bLjeItPcl7pu0uGa4g4HLlojfUg6QX1TmqriW3takDkWddFPPmuXzON3LwULbctSoBxysC57JWuZJnJbJaOtSksmGnAOi4Bh8NgN6ZKeZxXEyNOJIHn5_ZoFA-g:1mbzmg:e-m5PZetz6J2z_XI_qcGhonNdZM2l4-X5dmUF5ogWqI', '2021-10-31 06:36:38.761262'),
('e4wq3xepkhql41aur4vqf8mrtdwj06gz', 'eyJyaW5ndG9uZV9yZWFjdF8xMSI6dHJ1ZX0:1m1W9b:eV2lfHNZFLXyfvWFWqCuApCKPtPLZmmB5JwJCPQUxWk', '2021-07-22 15:41:31.323232'),
('e5dei5vmd5zks3m1qvhh6l8t2trb9kvp', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKhgT4QGRkYGeooGBhZGZtaGRvqKekopRYV5RchDMkDaq4FAOGgHs0:1mZJX9:tThCH7wHZmDxTFy3996xMDYlaUr2zzJ9U6Lkyvf0dUM', '2021-10-23 21:05:31.993458'),
('e7nd6g7qw3q63hnb093pb5tn53vi8lyr', '.eJyrVirKzEsvyc9LjS9KTUwuiTcyUrIqKSpN1UGXMDQ0hcjUAgD-7BMC:1moTeK:DjI9vuZWHQm2uWEUwBG04i1CVpJNoDIsBIXjus1rph8', '2021-12-04 16:55:36.828597'),
('ebdnsjmkg9km6wldnn1mmrba5poj0115', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMTIiOnRydWV9:1mvTti:Ftesn9Qxks3fS844zgGcdrSukp10L8ZpmOgR3c6fJJU', '2021-12-24 00:36:26.710692'),
('ec013mn6n4c2fr8lmoye3dijwdnui1hh', 'eyJyaW5ndG9uZV9kb3dubG9hZF81Ijp0cnVlfQ:1mCUUL:dMdW0VcuevTYqIYqKu3e87Un5SSVfdJQSYLgsPzjRek', '2021-08-21 22:08:17.509970'),
('echxvdugirprhvma5nvmif29cc9qyy8k', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKRib6hob6RgZGhjoKBuZWRmZWBqZ6SjlJqUVF-EcKQPKDmWgDjUB7Z:1mphW1:xfv5OU-tGkSOApoI4GgV2tvGV9XtQ0ji0nkg8YpsazQ', '2021-12-08 01:56:05.378257'),
('ee4l2npnm3prmrzjh4e3qyitowdlc4xt', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yOCI6dHJ1ZX0:1mg9Bt:Fi4YqhlAJ8x6LLJy3GQ7SwgyJSdghEQoDVlgwwUu9z4', '2021-11-11 17:27:49.297895'),
('ee9sbzefo1vdbdnd6enzs6s0ogkonvf2', '.eJyrVkrOLY4vyc_PSUosik_JLE5MyklNUbJKS8wpTtUBS6amZJYoWZUUlUL5BUWpZZmp5XA1RZl56SX5eanxKfnleTn5iSnxhhDltQBkVCLQ:1lpUWs:Pcj1Bva714c3kImBld0xupA99xmGxwklerfQgSvtzss', '2021-06-19 11:31:50.178960'),
('ef447ms9as9ese01wua7ffxnpj8vkb7g', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKBhb6Bpb6RgZGhjoKhgZWhuZWxiZ6SjlJqUVF-EcKQPKDmWgDkNh7e:1mNpUk:IVeYG9ssno4eebPz02e6Uuhq686xY_FqhmvF1IxM27c', '2021-09-22 04:47:34.901773'),
('ef54r09n0et4s8pzzz7b5bqfk5ay0zrd', '.eJxVjsEOgjAQRP-lZ9NAWwh49O43NNvdRaqVmrbowfjvQuQg13lvJvMWFuYy2jlzsp7EUdTi8J85wBtPK6ArTJcoMU4leSdXRW40y3MkDqfN3Q2MkMe1barOdEq3DYJSiAPrioe6Uto5HlRL1BrDpm8bqjvTGNQVImt0NfSmh2YZxXu2JcbgIFnyGVzg5dcAIfMPMvmyCx6Jn55f4ljSzJ8vHnxP3Q:1mwIjq:F3vFpe823IzpX14f0IX7dXmZj9UQt7UmGH9kKxznYtU', '2021-12-26 06:53:38.054105'),
('egq2k0mp3mg9hov50pmtbl1dk2dtn3qg', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yNSI6dHJ1ZX0:1myErx:hRYBigRkJZJWOqHVBOzXl-G93L8rDWrp0M0fLhNes9U', '2021-12-31 15:10:01.874412'),
('ejakbj8nmfsag1y5npv20j6e0zc05jcw', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKRub6hgb6RgZGhjoKBuZWRkZWxpZ6SjlJqUVF-EcKQPKDmWgDj6x7e:1mfY7L:1Ek_A6iXdNt-w_0yilUGRvPr3mdLShJ7HPYVpkZWcrM', '2021-11-10 01:52:39.100472'),
('ekdrq2r2my9mc2paz4ez3crwbcg7qv0r', '.eJxVjkEOwiAQRe_C2jQUKGm7dO8ZyDAMFq3FANWF8e62kYUu_7w3P__FDKxlMmumZIJjI2vZ4fdmAa-07MBdYDnHBuNSUrDNrjSV5uYUHc3H6v4VTJCn_VvxXvVC6g5BCERPkpNvuZDWkhfaOa0UqUF3ru1Vp1ByRJJoWxjUAN1WirdsSoyzhWRcyGBn2nZ5mDN9IblQ2FjSWvM90SPQszrvDx_5T90:1m4OQr:9aVD_u7ufW-tBEZzr8TMoMXEwHGS8mdd7MXCjJrbNB0', '2021-07-30 14:03:13.861785'),
('ekh8wry45qdpzjk8wfabr1jsc2ulz08n', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTc2VLIqKSpN1cEiZ2GMW87MACJXCwBcdR-0:1mR4Dm:FBNykPtH77oDw9xxeoxd-V1LGlCz3jQmdshU2vnyW1k', '2021-10-01 03:07:26.864135'),
('elf5t240h5bnywhf0xd4m3xkc9sbv815', 'eyJyaW5ndG9uZV9kb3dubG9hZF80NSI6dHJ1ZX0:1mArST:O49HowHUyrrG2p4idbniBpOaQJ9PP1pjZ6x6HhWG-Oc', '2021-08-17 10:15:37.343778'),
('en1osr7pmpd2xznnjyo5bh9rt0u5xan7', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKBib6Bpb6RgZGhjoKhoZWpkZWphZ6SjlJqUVF-EcKQPKDmWgDkKR7g:1mMP4s:-Xh27bv7vxtsd2YSLZ9MMnuFUzLlle1HABqh6u4Od3E', '2021-09-18 06:22:58.596790'),
('eohseo9fzmm13twagv25f4hsqyqj178y', 'eyJyaW5ndG9uZV9kb3dubG9hZF81Ijp0cnVlfQ:1m7hRY:GwCKauKocKlmCriRXWcKJxLHd45QIRR07_RTVcA9YA8', '2021-08-08 16:57:36.967564'),
('eot9wdlaeizle0kutpclpbhl4xyeonao', '.eJyrVirKzEsvyc9LjU_JL8_LyU9Mibe0ULIqKSpN1cEiZ2hohFvS0hAiVwsAeG4f7g:1mlrlN:DFpGxvmWI5_vAWZSBr9ZwitFhO_PqLZkdUxIA38i6JU', '2021-11-27 12:04:05.997248'),
('eqpfx5j38gsfjce5lcxxgafd5sz1z2vy', '.eJxVjEsOAiEQBe_C2hA-DQGX7j0DaZpGRg2TzGc18e6GZBa6fVX1DpFw31raV17SVMRVaHH53TLSi_sA5Yn9MUua-7ZMWQ5FnnSV97nw-3a6fwcN1zZqUAGCsd4RGkNU2SquWhmbM1fjS_EADNG7ogM4IKuI2FLWGCGiE58v4EQ38Q:1mj3ZU:jKWs89otZbzLCrfFi68zgTQSXjkVMFwxuvqkZYe3hFI', '2021-11-19 18:04:12.946635'),
('er44jcu4uoiipfe40ml38995dvkz2mhb', '.eJxVjEsOAiEQBe_C2hA-DQGX7j0DaZpGRg2TzGc18e6GZBa6fVX1DpFw31raV17SVMRVaHH53TLSi_sA5Yn9MUua-7ZMWQ5FnnSV97nw-3a6fwcN1zZqUAGCsd4RGkNU2SquWhmbM1fjS_EADNG7ogM4IKuI2FLWGCGiE58v4EQ38Q:1m2dIm:4fsH-P446Y4Bsj2I_SAAm8WznTiYYF-lGzoQUjXM1Os', '2021-07-25 17:31:36.834645'),
('ery5avkvj4jujz6l2s54cnp7dtng5558', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTc2VLIqKSpN1cEiZ2SOW87CACJXCwBcOR-0:1mM7wE:8en0V2XCVu1pFSZaOaPbSqNwNyloMYvQxwq_Q4LZFDQ', '2021-09-17 12:04:54.666452'),
('evjd4fje3jgdfirsqhl6h7hr5lmh5tf8', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKhsb6hob6RgZGhjoKBuZWhoZWhmZ6SjlJqUVF-EcKQPKDmWgDigx7T:1mli2e:DKWI2UCAKnZwRFXpMTGVNAqBEE7_9gM4xJPIArRcvXc', '2021-11-27 01:41:16.536376'),
('ewd75ivqdr3gn5uv6w9iykout317tlob', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKBmb6hob6RgZGhjoKBuZWBpZWxkZ6SjlJqUVF-EcKQPKDmWgDjax7a:1mjLuu:hUYya7nGyPTsX8TBO8IMbFZu9rDY1xOIvX7VU5PNvUA', '2021-11-20 13:39:32.654243'),
('ey24z6u1uv928d4pmadnmij28o1h29fq', 'eyJyaW5ndG9uZV9kb3dubG9hZF80NyI6dHJ1ZX0:1lxTyC:fGMyHf9CEPL3XSvLLrDwIH_GDgzHz90zgxRaOborAf4', '2021-07-11 12:33:04.027699'),
('eyaw916qjgt88wqptfx59mp6u1n90uc1', '.eJyrVirKzEsvyc9LjS9KTUwuiTc0NFCyKikqTdVByKTkl-fl5CemICRrAUwLFHQ:1mdB1g:EyO_VFasz2dGVAYAgdCtAcKqXLtkVn4H75JqSbgzY_g', '2021-11-03 12:49:00.209618'),
('f5gy30fmn8rndgbmhl894v0xkyoppeyd', 'eyJyaW5ndG9uZV9kb3dubG9hZF80NyI6dHJ1ZX0:1m1LVE:l7gitRqU0tjf5PaocQ5EIjF47lWx3OxRXr4Ed8jSkY4', '2021-07-22 04:19:08.058603'),
('f8ef77e9o989yk14x24rxht77j4png6d', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yMyI6dHJ1ZX0:1mPRRe:coLqfHcEZIq0OZXrR-ghU9bH4ow7GA6OuH9nDQl41N0', '2021-09-26 15:31:02.172828'),
('fc18abrnq4dieqrhxh85cjxppyy4qxg2', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKRib6hgb6RgZGhjoKhkZWhuZWpsZ6SjlJqUVF-EcKQPKDmWgDi_B7X:1meM3d:jCy-34RHa8LMsNmdw3uAcOrWhZPh-h42dONtgtuCcI0', '2021-11-06 18:47:53.534011'),
('fd2yiisv0t87zb1ixprlp6sbqt92x7a6', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMjciOnRydWV9:1mffyO:MXil5e8M7_R3MHlrr19G0oIpFo57yvj50lP9CRq83cM', '2021-11-10 10:15:56.401911'),
('fdyot6ne6hcuxyagjqtgjndf3v2z5qa1', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTcyV7IqKSpN1cEiZ2kGkasFAHNqFXE:1mgAgK:klwIwxFnb6C6iBJjdu6uyxQZHQ08BExXr2rlGO9_Jps', '2021-11-11 19:03:20.665745'),
('fea9ihuyzfxo8vnp53b52bg8tc0ke571', 'eyJyaW5ndG9uZV9kb3dubG9hZF8zMSI6dHJ1ZX0:1mEwgQ:CXx_f76sd3ByeYAntQZGU4hLLwUVqi-JZJ3LOCEMI8U', '2021-08-28 16:38:54.716663'),
('fgklwu8pm8bvsi4po5mf0gyq79funq51', 'eyJyaW5ndG9uZV9kb3dubG9hZF82MCI6dHJ1ZX0:1mT1XY:HVIfp3rRStGcc5vc2Jp6hKAtlu6V12UO-Qrzg9ji6Qo', '2021-10-06 12:39:56.133808'),
('fgydtlqkgy8w9ke1ofm0bo01swznks5g', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yMSI6dHJ1ZX0:1mUj4U:3uD0mO8qlx6618wbjzka8X5fBRQWVBNiz-2hNm3qovo', '2021-10-11 05:20:58.893913'),
('fhhly26rdal226zmuil6pvnhofvo1le2', 'eyJyaW5ndG9uZV9kb3dubG9hZF81NSI6dHJ1ZX0:1mL7KS:qUXzpScNJv0tnbdwzio5Tacaz4NhYPGQ5pf3BLKLOSg', '2021-09-14 17:13:44.743186'),
('fj5vc6j7vmepemgzyzjngas71z8utoqm', 'eyJyaW5ndG9uZV9kb3dubG9hZF81OSI6dHJ1ZX0:1mm8zj:6DjmeFket8QO25KQxfYPtXDH8-MGHxQJ5njrMENDrug', '2021-11-28 06:28:03.307740'),
('fjt8krkzwfrrpn2gt61jydh6wdhxne1z', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMyI6dHJ1ZX0:1mlmqu:d7QJ4TnqTq18BE8CEKHGkUfMFgtr-vSkhXrm00w7SEs', '2021-11-27 06:49:28.061538'),
('fkrr44mqacyplcfdh7xpofxal36374jb', 'eyJyaW5ndG9uZV9kb3dubG9hZF81OCI6dHJ1ZX0:1mUtM7:Jsnv8Gm69EyR4IZBMvCfOcYPGn5mViqO9tQYf4lZn7s', '2021-10-11 16:19:51.551272'),
('fxixm6ri7d1bfrdta0qxrcpsu575qkb3', '.eJyrVirKzEsvyc9LjU_JL8_LyU9Mibc0VLIqKSpN1cEiZ2GKIVeUmphcgk0CrsnQyASHLkMDSzza8EniMhEqXgsA-DtPmQ:1mp5J7:uqsKGqkISq507AbvU-40XYD6Y-hiaJQ_f5tlIhopwLc', '2021-12-06 09:08:13.059989'),
('fxtynju15jrbj3c54mkw9mw3fz7b0ksl', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yNyI6dHJ1ZX0:1m2Hqf:LRt-XEsG_DHmAFTRKJ9bWNxdpGrlZyToEMFd3F4Jb-s', '2021-07-24 18:37:09.144539'),
('fz6d5gpegfuwypr51qakksdq40l23hta', 'eyJyaW5ndG9uZV9yZWFjdF80NiI6dHJ1ZX0:1lxoZA:EtHCBi3YCV_epeqRJFxjaJ-oAJFU2SLEI31Qhg5leXw', '2021-07-12 10:32:36.930466'),
('g0d4apgamprsao726f8siblomjg5iu9o', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yNSI6dHJ1ZX0:1mnffQ:bKoCqmhmv1ntL9k_mgnowsG8REPFUeNw7ph3ywaggtk', '2021-12-02 11:33:24.633484'),
('g5a2mln5gt3k3w3tnck7ysmo6i9m1p8g', '.eJxFjFEKgCAQBa8i-y1lIRJeowNIyCZBrbCuHxHdPaGgn-Ex8OYC3ihJJgyMS5RgwQtX1FBqjFhKOBqWhOBhfs1a9_1Un1YFSVQmZabeuH4046Db9nbw1nWgAZkz_xFq5_sBjPwnsw:1lqS9a:cb8DRLAxTzJADNT1euIDSHm7Lq4u9qRbRMP8ra80jEw', '2021-06-22 03:11:46.548754'),
('g7n2xml861qstha2c92igjz3v3qslyyc', 'eyJyaW5ndG9uZV9kb3dubG9hZF80NSI6dHJ1ZX0:1mBZ44:HQFcNmvEgoZvwDnC4j81e2d_4EhUl1K2WcPZZrCchGo', '2021-08-19 08:49:20.106910'),
('g7p6q36orqsm3zwr4ky0wqf6xr1rfc66', 'eyJyaW5ndG9uZV9kb3dubG9hZF81Ijp0cnVlfQ:1ly6oe:drlavQEgaQrYQ0--pB01CpsaT5I8KZagK6UTcZg86FY', '2021-07-13 06:01:48.385400'),
('g8ovpjww7fw02sgyskpmdi7fadefgf5y', 'eyJyaW5ndG9uZV9yZWFjdF8xMzMiOnRydWV9:1myG3x:YXSXAc7FHR7ybtGSESUaA9SkxwyxmPhHRHsqti98fgg', '2021-12-31 16:26:29.075524'),
('g9nb9iiblwqr0gbxypwcue642pnps9jx', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTcxVbIqKSpN1cEiZ2QAkasFAHL9FWQ:1mvFEL:rhjK89VbikDi3JJltGOPk3MPxhrOK1eeSs1uUr9nWds', '2021-12-23 08:56:45.648567'),
('gbxx4vbr13by0g7wur91uc6pcg90koiq', 'eyJyaW5ndG9uZV9kb3dubG9hZF82MCI6dHJ1ZX0:1mKB8T:ecM0x7HcJelR-y2axAFYRNzDFSqR7UheJJyWFcpoj7s', '2021-09-12 03:05:29.375474'),
('gis1g0i1idhq9s9ybpf42kh5lzkneob5', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTc0MlWyKikqTdVBSBalJiaXQGTSEnOKkaXg-owNIdpqAT-wHxU:1mfK1u:GQ54B6OM4k4EwN5zEeM5sSApounyxoe4Ybr2FVd8FEs', '2021-11-09 10:50:06.215567'),
('gmvgw8b8z3wybmm24osrzw87r7on00qt', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTc0V7IqKSpN1cEiZwqRqgUAXtQVNg:1mf0Qi:tL_VPvaIM-Q01Uu6FWJWj9bRs1BFPuQPH7Ic4_3GPsA', '2021-11-08 13:54:24.359669'),
('goqzfo6jci9ulhou91r2enwxnblvkueu', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKBkb6hgb6RgZGhjoKBmZWhoZWxkZ6SjlJqUVF-EcKQPKDmWgDhtR7N:1mWeKa:zZWZGBlpJsipXqHbshp2igTtPrrpRCaYwgxykqwX4Z4', '2021-10-16 12:41:32.107657'),
('gpjeobtemett6eicsclaotryge4fkr7e', 'eyJyaW5ndG9uZV9kb3dubG9hZF80NiI6dHJ1ZX0:1mL5JH:U4Ja26__XfRFG9MK3shRP8S4gTQx1XWUXKMkIeSJRuY', '2021-09-14 15:04:23.093789'),
('gpmysf8gsnemplk8jq38rudtoqploefl', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKhgb6hkb6RgZGhjoKBuZWJiZWhgZ6SjlJqUVF-EcKQPKDmWgDiPx7R:1mvVQI:BCMpG_gOpde1PTa6uN2xQiaBPGVmTg_zyjPKNQJudl0', '2021-12-24 02:14:10.573634'),
('gpod3zbogf681hjqvwqgoljsf1n6fbcn', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yOCI6dHJ1ZX0:1mhZ4z:UjOs7do7pBnDj67JdHivRUoJ-iRf1Y1ki7sgRhxiWhk', '2021-11-15 15:18:33.258875'),
('gqrz9hpmwx3mjbwd6le2kdlz93f3y93a', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMTQiOnRydWV9:1mwdVE:VYoF1qWGs_T_u7YyGKtMkpnPz1BZGFUkjddrJ4wOR9A', '2021-12-27 05:03:56.864777'),
('gr3oqu40d9m42iw6qnhicj7eokhdyowp', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yNyI6dHJ1ZX0:1ly1Pn:S_WStHiFSQKjYCktWpVHkvnaLLNPzxJ7R7S4p3FaZV0', '2021-07-13 00:15:47.568157'),
('gs8rmhxkpo4jcb3w6tglyrcqh8c23pc3', 'eyJyaW5ndG9uZV9kb3dubG9hZF85MSI6dHJ1ZX0:1mjdyq:bzmpWntA0KuE7cjN2peVkJlA71FtOi1fSshUbs8ZePQ', '2021-11-21 08:56:48.926359'),
('gu2tcxewx2q1ktsskxfyaemf35jsheh1', 'eyJyaW5ndG9uZV9yZWFjdF82MCI6dHJ1ZX0:1mT13U:Ki3nke82TfStNWKws-HkeEN2jhrngN8N4O4__ZtnJDU', '2021-10-06 12:08:52.781720'),
('gvhz5qbokbivmu8psppsj2gxlveb83d1', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKhhb6hob6RgZGhjoKBmZWBkZWRgZ6SjlJqUVF-EcKQPKDmWgDivh7S:1mnVLg:tUG6EIupqART1RW4F97o28FLcEAC4nCmx0EtVlHSV2g', '2021-12-02 00:32:20.384461'),
('gwml06wfzw8ls92xb3gu14sdia87x8pz', 'eyJyaW5ndG9uZV9yZWFjdF83MCI6dHJ1ZX0:1m6BkF:7JZXBYG8ybbUURslMl3vml2KbP4KCVzUDwTEnOcwDkA', '2021-08-04 12:54:39.339629'),
('gwvdtyawql9pihdsv3vuxw6n3x59l1r7', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMjUiOnRydWV9:1mgzO2:DKE-SqCsYzVRlxA3aVXd7BRkpBI40wrisOMiyiEVzU8', '2021-11-14 01:11:50.843712'),
('gxcaxsh2lw84qu4y3oflh9uxeyunoyaz', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMTAiOnRydWV9:1mdMdZ:43KhZX87oC4JvE8XxCzFNEMvSDWKwM4Hj0m64KSIG3g', '2021-11-04 01:12:53.256912'),
('gz2s1jxq5rvrs03rnxgx5y32wruhgq0x', 'eyJyaW5ndG9uZV9kb3dubG9hZF80NSI6dHJ1ZX0:1mIupL:kaO2nSSfBfV9V4VZ8PeML5l3aMdxvdcZMIR2E2Y2MHs', '2021-09-08 15:28:31.467401'),
('h2yioucazmyo4phxqm8upvzzpmd8vybv', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKhib6hkb6RgZGhjoKBkZWRmZWBqZ6SjlJqUVF-EcKQPKDmWgDisR7U:1mwsMf:_ClO3Tk_bLjbBL6MzkCc-xSbuZs2Pv6UlVuBmb6KWKA', '2021-12-27 20:56:05.719502'),
('h3aaeosuwgxoa0njbon8nx5uv5u7ex1n', 'eyJyaW5ndG9uZV9kb3dubG9hZF8zMCI6dHJ1ZX0:1mBxvj:pC4jV67Z4MvLj8jdDqzGupz948Gptl66ENbAYbfYcDM', '2021-08-20 11:22:23.602528'),
('h4cwatf1og2jdymcpcjrmdky3v0q4wkv', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yIjp0cnVlfQ:1lpY45:Lh9WzRbnotU1YZ5JsxppD5lKEsB6kpsgBF4nkbH18nQ', '2021-06-19 15:18:21.111320'),
('h5rsm77xfc5uu8yf6v52js4e5jov2hcc', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKhob6Bub6RgZGhjoKhgZWRkZWJuZ6SjlJqUVF-EcKQPKDmWgDi2x7W:1m2chD:yW30KWTXppvd5-5liX4PWeM19KGI64yd5hx5NgWqUzs', '2021-07-25 16:52:47.191682'),
('h6y5yocloaf2dhe7mp8eqbcyxn8oqgto', '.eJxVjEsOAiEQBe_C2hA-DQGX7j0DaZpGRg2TzGc18e6GZBa6fVX1DpFw31raV17SVMRVaHH53TLSi_sA5Yn9MUua-7ZMWQ5FnnSV97nw-3a6fwcN1zZqUAGCsd4RGkNU2SquWhmbM1fjS_EADNG7ogM4IKuI2FLWGCGiE58v4EQ38Q:1mH29p:LNMR8VeRoRmuWYYOJWmJf4XQ6u42oHw0N_BArD6jdvw', '2021-09-03 10:53:53.157158'),
('h8ju06wijhc6wdvj8ggxfvoycld4eu5d', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKRsb6Bhb6RgZGhjoKBoZWBuZWxiZ6SjlJqUVF-EcKQPKDmWgDjcR7Z:1mHtHi:ylYTUaWq5VxC6II7YNVBdSm7sLiy3pAn508JNSLm9b0', '2021-09-05 19:37:34.522033'),
('hdaclu7nm30jmyx6du5dgh5nlf4x5569', '.eJyrVirKzEsvyc9LjU_JL8_LyU9Mibc0V7IqKSpN1cEmZwiRqwUAdEUVcw:1mYUIB:jC60LyfkNWYnIGl8TGABGJok1JqNzPyYqka1DHg1CgI', '2021-10-21 14:22:39.102774'),
('hdc27su5i2ok5b6blnjal8e3soizrmyn', 'eyJyaW5ndG9uZV9yZWFjdF85MSI6dHJ1ZX0:1mU2Td:EKTeDCHtZ395IHAmb6xtT7aBdVey3ZNCWQ-9cO0W-YU', '2021-10-09 07:52:05.462633'),
('hdkr0mkg4k2s4r14psm8wsurl59ucn2b', 'eyJyaW5ndG9uZV9kb3dubG9hZF8zMSI6dHJ1ZX0:1mBaMY:0r93V4wrFgkRoTo3SKA2Tx8yxCqF2lHWeKIlxb7mTgo', '2021-08-19 10:12:30.425029'),
('hg2q1sifxvftyg7c6qw37d5n2xbi9mwy', 'eyJyaW5ndG9uZV9yZWFjdF81Ijp0cnVlfQ:1lqS1B:jKso9DcRcgUpyXS8MKuqfB4Ag-OdtgNclyxKK_1GY90', '2021-06-22 03:03:05.337367'),
('hhly1f4vpqx6b27ot6wrq49veteshf97', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMzgiOnRydWV9:1mwg90:F30ZHVdV0-DfMUHAxYg3rKyLYpLifpW-WYsACeF3fBY', '2021-12-27 07:53:10.381102'),
('hi70eh1uqp8kb7dzi34odl6zri97ovd1', 'eyJyaW5ndG9uZV9kb3dubG9hZF80NSI6dHJ1ZX0:1mWg7s:-bQHJn0fN029NIeeFB4bBjSGa5iS21eOh-LpktipSIQ', '2021-10-16 14:36:32.744684'),
('hjud5e8j04p0ecmslcewyvt5grmbvpbt', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMTQiOnRydWV9:1miaWY:bXMrqq5DlpsHsltJh10ei4r9eRmBRFAmvzOPghPtE9o', '2021-11-18 11:03:14.028060'),
('hnygwt4j9zck0k9zfl5wtd1nio9nbn95', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yNyI6dHJ1ZX0:1m8b7W:-AHlLsolG1n7glB5tJE23COCKoormnt2tnkQe6_RBiU', '2021-08-11 04:24:38.498394'),
('hqclhhaod1yu8dtkz5bfx28xmpjbx0mt', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMTQiOnRydWV9:1mxrAt:gVT9gjMKAKR6uRUUCyQrqeAn_FVGsUhz3GuPaojebuI', '2021-12-30 13:51:59.402454'),
('hqdr4clzatweut8dt2xeklxgk9v01nec', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTczULIqKSpN1cEiZ2KOIVeUmphcAtaUlphTjCljAtFRCwBlaCeJ:1m30hl:lfmTDI-t86eI_IGbaJUzmrpgFYAcABbUjePC0cVNfcw', '2021-07-26 18:30:57.091529'),
('hrviu3zbplbdwfmybh0rbg7d9h3z6zzx', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMDQiOnRydWV9:1mbjsL:AIQbtPSMs6aLIsvJOiOofIFWrbwuprW78aPIQ5ZQyt8', '2021-10-30 13:37:25.267808'),
('hw6abrl47uibfsbaebcaftnt3c3iu3pd', 'eyJyaW5ndG9uZV9kb3dubG9hZF80NiI6dHJ1ZX0:1lxvYd:WykSu9yHC_66wUKXqUDFhdhIb8bXlADtLSqqwU8ol5M', '2021-07-12 18:00:31.738842'),
('hyasmwmj7wjr49qi92cq42j2pu0q096w', 'eyJyaW5ndG9uZV9kb3dubG9hZF81NCI6dHJ1ZX0:1m3XZa:lP7GrVC-MuRjKJDDWkUEtnWiJIXYA9e0QQbEulKEY9Q', '2021-07-28 05:36:42.889355'),
('i9nk8qqdf89g3bxrrrwnrcz2kubo52vg', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yNiI6dHJ1ZX0:1mmaEA:rfj6CZzTQ_Dcp-FM39wsyNqP5zXXCvdCslDcZuz8wvk', '2021-11-29 11:32:46.790333'),
('ia25c6pdvrekljsztjfjwtr4ejkkakzt', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKRgb6hgb6RgZGhjoKBqZWJqZWxpZ6SjlJqUVF-EcKQPKDmWgDjDh7a:1mczGd:s39Afj7LCOzM3db5n2pHZMOnuBHNc9zJrlUV85reglQ', '2021-11-03 00:15:39.380754'),
('iau8vipp3c4x4l62q0dcrsyr2ym539zr', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xNDMiOnRydWV9:1mwS5D:s3Uwb2XzB6m3OPIjW-L1cm0lv83srQdXtHPpK-gD-zg', '2021-12-26 16:52:19.880550'),
('ibep1ak69goi873e5my3yhcaq4k8q4p2', 'eyJyaW5ndG9uZV9kb3dubG9hZF84MiI6dHJ1ZX0:1mnyuR:6RbLCdk6uyXkke5ukime2SoFiTinPPN19LBF-AsYYes', '2021-12-03 08:06:11.019464'),
('ibirf41hjryysoiw2jf6m4i9g38joyil', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTc0V7IqKSpN1cEiZwqRqgUAXtQVNg:1myDsG:8eZg_qGZUUQJY2VVhjDeQAWjCzIFNftgJaMmQBmcVc4', '2021-12-31 14:06:16.455660'),
('ic4q4yfwrbfvo0xzr983l74r0n2051rc', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yOCI6dHJ1ZX0:1lwRdS:1Xk46-f5cPmINC3GxvsitGJQKDBro6H2SgLarO4gHnk', '2021-07-08 15:51:22.037225'),
('icum6tje2zuoiswrr0ftd2zhl54ufpkd', '.eJxVjkEOwiAQRe_C2jQUKGm7dO8ZyDAMFq3FANWF8e62kYUu_7w3P__FDKxlMmumZIJjI2vZ4fdmAa-07MBdYDnHBuNSUrDNrjSV5uYUHc3H6v4VTJCn_VvxXvVC6g5BCERPkpNvuZDWkhfaOa0UqUF3ru1Vp1ByRJJoWxjUAN1WirdsSoyzhWRcyGBn2nZ5mDN9IblQ2FjSWvM90SPQszrvDx_5T90:1m2dYk:g_1WvwdSGctjcyie8J2Dgex2-FcGkcTKu2AXGJW-sss', '2021-07-25 17:48:06.280562'),
('igsara4mbtn7cc1bms4jx55mxs5o86oa', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yOCI6dHJ1ZX0:1m2DrE:rUybbjTfU8w96m0UKMPIpwpbDMEAgRfDuHgFM-s1SzQ', '2021-07-24 14:21:28.253650'),
('ihrng15so05vj4nn36xref9vb9xfwdyx', '.eJxVjkEOwiAURO_C2jSFAq1duvcMhA__W7QWA1QXxrvbxi7sdt6bybyZsXMZzJwxmeBZzzg7_Gdg3Q2nFfirnS6xcnEqKUC1KtVGc3WOHsfT5u4GBpuHtU0CSGqCrm2AA8faaaWEVrWWTjakkDhg2wnlLKEn6njdtRqUPCqBkpZRd8-mxDiCTcaHbGHE5RfZMeMPog9lFzwSPgO-WF_SjJ8vSJFQKw:1lqzF6:1fmviNkmUG2zc8LHa16HsVyNj7hWUOL1bvC4W3_WODY', '2021-06-23 14:31:40.111153'),
('iigpkgs1gaotb8u1j6oimarhtlnysmht', 'eyJyaW5ndG9uZV9kb3dubG9hZF81MyI6dHJ1ZX0:1m6AIZ:YRj_yQhsLno97oYtGiVlpzK7WDYcFljydDA6hTpDzTA', '2021-08-04 11:21:59.347306'),
('iiorm9xchkvss0x5j6088n6p3rgf1ll2', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMyI6dHJ1ZX0:1m7xZA:tlJIz2LsjBZs8Mcnk4xG9Opeop4pmkYfo0Lm-WEoEjk', '2021-08-09 10:10:32.979267'),
('ij8vzl6k5lt2k9aqb8qodu4d4m80c7vg', 'eyJyaW5ndG9uZV9kb3dubG9hZF80MyI6dHJ1ZX0:1mLtBE:HfD7DPFPXzANGmmcEr9cT02LI4hjyAB4elLB3-995LA', '2021-09-16 20:19:24.419578'),
('iljgvetg91t53omcnpny6f45k6d612y6', 'eyJyaW5ndG9uZV9kb3dubG9hZF80Ijp0cnVlfQ:1mjMqt:-qDy5GzFWZ-EBjperY_xX8SZsDg1o_wQSqo7M-yL6LM', '2021-11-20 14:39:27.421678'),
('im6x7ki24ms98zs1p3bxojrmqbpt0i1x', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTc1V7IqKSpN1cEmZ4ZbzsQUjz48UiYQuVoAZ740KQ:1mI92G:f3m_CM6ISf1D21tSEoBLcfBp60Et9QfncQK8ZZZe_Ts', '2021-09-06 12:26:40.450893'),
('iosmtmsx1zwwhgj1j5arjbmshklh9nbf', 'eyJyaW5ndG9uZV9kb3dubG9hZF8zMCI6dHJ1ZX0:1mLLKs:re4haSQlwJrF-_v9a6a1ZBkZCTyzBsN_90taf0WrxOo', '2021-09-15 08:11:06.469840'),
('ioumskz3wtahbkm93a1qsml3ko7ueiok', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTc0MFGyKikqTdXBImlpCpGrBQCCDBWc:1mbgUj:TBQ4ZN4ICBH1lW40hkte6VpaImqwhfZKjJ-bw4GiDa8', '2021-10-30 10:00:49.311432'),
('ism7sky621oahtucvbq3d7mhdezt9uro', 'eyJyaW5ndG9uZV9kb3dubG9hZF81NCI6dHJ1ZX0:1m6nAh:gzsYVJU9iS-qXIbJfc9tqi8dbEi9wCVJEC0-Ra3EWQE', '2021-08-06 04:52:27.532320'),
('ismqaorrj1x7bxg6f7e36bj3xmdp13ei', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTcxVbIqKSpN1cEiZ2QJkasFAHNFFW0:1mRBxa:--F_AgZGrTaeDmFVdouUlK55S2xB9YwBRQg0osoIhWg', '2021-10-01 11:23:14.953344'),
('itp4b7s3cj2whuwhsgfjo2niz2bdahj0', '.eJxVjkEOwiAQRe_C2jQUKGm7dO8ZyDAMFq3FANWF8e62kYUu_7w3P__FDKxlMmumZIJjI2vZ4fdmAa-07MBdYDnHBuNSUrDNrjSV5uYUHc3H6v4VTJCn_VvxXvVC6g5BCERPkpNvuZDWkhfaOa0UqUF3ru1Vp1ByRJJoWxjUAN1WirdsSoyzhWRcyGBn2nZ5mDN9IblQ2FjSWvM90SPQszrvDx_5T90:1mbETQ:3tRY5rzwfOgjuboykcdURh2WV42We_IML6vyNR6RGnM', '2021-10-29 04:05:36.001830'),
('iw6fbtu70y6n1axnxmz5swphftfkfrsg', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yIjp0cnVlfQ:1lpY9f:R9teNWfol2eCvVM2JaKaboBZ6dU7oIYVg5VALAE88_Y', '2021-06-19 15:24:07.520352'),
('izbyx7jcb8bxk87d0p9osgzjiysqvmyz', 'eyJyaW5ndG9uZV9yZWFjdF80NiI6dHJ1ZX0:1mFDDI:HFjtrufRnH7XoSz3AOuz_4l81xUPER-svQ8wn0-8JgA', '2021-08-29 10:17:56.754427'),
('j25g3aow0hwsz4rl2kuvk8azewjjyhrl', 'eyJyaW5ndG9uZV9kb3dubG9hZF82MCI6dHJ1ZX0:1mJ9qs:zUbXo5cSbi66OUMBIXsvLOB5l9OBfsDI0zqfoGtg5Fg', '2021-09-09 07:31:06.784386'),
('j2nyn12g9yppiamdkr1yff193z9ivsso', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yOSI6dHJ1ZX0:1mwb1Q:UJy0TuZGW6h14IRhLtEYkhd9xsDkmewGHD5VMgz4j5o', '2021-12-27 02:25:00.597349'),
('j35wihen7d6diilj1wk4hkfnc31sycp0', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMTAiOnRydWV9:1md7F0:z0b_tEuIKcDQtF1ZRLmco6Gf5ldnjBM6FLhdu5oEpOc', '2021-11-03 08:46:30.483544'),
('j3wd6bpr6i658x75zhyur34jxmravq0v', 'eyJyaW5ndG9uZV9yZWFjdF82MCI6ZmFsc2V9:1m3iVy:p0S7fzfohSIM52vhIoJQVeITtXiJzgI-Xwm4UMUolY4', '2021-07-28 17:17:42.408140'),
('j5opeb219r8w448uxlke2o9p0sf435f3', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yNSI6dHJ1ZX0:1lwTTJ:9xzYyPtUrJBJxOFigIzq-j-QqB0E546YzUyGx8DX68E', '2021-07-08 17:49:01.668663'),
('j7mod1lkd64stualw84jta0tz56ss5v8', 'eyJyaW5ndG9uZV9kb3dubG9hZF81OSI6dHJ1ZX0:1mA2Fh:KdyJFev1LmnEH6OHEp4tj8Ajy767AsoiY0aD7dRb6M8', '2021-08-15 03:35:01.973688'),
('ja7hmoitgdbsdwrhhztfstniwcsm62fn', 'eyJyaW5ndG9uZV9kb3dubG9hZF80Ijp0cnVlfQ:1lx54C:c5-9kJom2e0GkGyQixBpWFDcHnerwDDUPforxYMq_xM', '2021-07-10 09:57:36.288943'),
('jbthxurkcuj5w3e7owy3qz04ox4jnaxl', '.eJxVjsEOgjAQRP-lZ9NAWwh49O43NNvdRaqVmrbowfjvQuQg13lvJvMWFuYy2jlzsp7EUdTi8J85wBtPK6ArTJcoMU4leSdXRW40y3MkDqfN3Q2MkMe1barOdEq3DYJSiAPrioe6Uto5HlRL1BrDpm8bqjvTGNQVImt0NfSmh2YZxXu2JcbgIFnyGVzg5dcAIfMPMvmyCx6Jn55f4ljSzJ8vHnxP3Q:1luf1Z:y6BkIOdmiZ2_vixhaQturLobh1NAEV7vSemMCY8j0c4', '2021-07-03 17:44:53.894651'),
('jbxipzh6gvss8lfyya0gmguk3pm7shw5', 'eyJyaW5ndG9uZV9kb3dubG9hZF80NyI6dHJ1ZX0:1mBkWt:yMTJMxfUXCQLdgnb_O7Jw1PA3cvjgVCjrzgLSuXxH7Q', '2021-08-19 21:03:51.828308'),
('jc2edhh7eim6b4pqeevgnsr86isf1zl7', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTc2VLIqKSpN1cEiZ2QAkasFAHJIFV8:1mGuh2:bd9ZgkoexVfEeUs0DH7uO9IZoiC1uqcmA-XVuqQvGJg', '2021-09-03 02:55:40.150607'),
('jcxebt5eql9urfcembejq4uqzqu8wkdh', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKRqb6Bhb6RgZGhjoKhkZWxgZWpgZ6SjlJqUVF-EcKQPKDmWgDjaR7X:1mIbfG:h7psDhRsqsHolVT3tmLYJjlP9AAYIfNgI0t__lAJZV4', '2021-09-07 19:00:50.506888'),
('jd4r2b7jovu9vwxb7ie92tqbim9beaay', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTczULIqKSpN1cEiZ2oBkasFAHLuFWw:1m7IWE:zpy_00mmpITUCy65lqROp71EQ6szgs8EdKCy33rKUso', '2021-08-07 14:20:46.518528'),
('jd71ihk7fbgj90f2suzd3s0mpp5jvcnj', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yOCI6dHJ1ZX0:1mg9Bt:Fi4YqhlAJ8x6LLJy3GQ7SwgyJSdghEQoDVlgwwUu9z4', '2021-11-11 17:27:49.316123'),
('jglen20cjvct139dy5fg9mle8q3l6gg3', '.eJxtj9FuhCAQRf-F58aIK-ruY9_7DZMBBqWlsAGsTTf-ezG6TUz6BHPP5c7lwaL1Yw6eQIfFu4AaGnbLcaaXfxB_IsA5TzAnimA1uzHOTppE9UF-A_od_RgqFXyOVlabpTpoqt6CJvd6eE8BE6Zpe20aadrOyKG_SC451aoToulE3bWqvRhBhkvqh0YoNKSNGXg99J0U7VU01JoSqj4T5BCcxAjaJpSOSi-DLtEOSdt8Eu6Rviwtz68u9gejhuNQkTAT7IYHS5nupWddFm1X0Jix6OsxGuso7TN954h_fN1XuTCCK3mpNOD8uv4COpOLEw:1lpzoi:v7GiqlbU3pwynh-IcExbi8rJnhZUYXbNms-X6fb7Ot0', '2021-06-20 20:56:20.303991'),
('jjukykck44hendfskr1vej8c3lrokwyr', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKhqb6hkb6RgZGhjoKBoZWJsZWpkZ6SjlJqUVF-EcKQPKDmWgDi2h7V:1mxPQ8:l7Hapw-j5Nxx9lSBDgWQHRRD4Xyo0fJEo-HZ8yeFJj0', '2021-12-29 08:13:52.648878'),
('jkxxj35f7t9077iekjokcgzv83r985rl', 'eyJyaW5ndG9uZV9yZWFjdF85OCI6dHJ1ZX0:1mZXFv:QUsdAVKOzD7gki34BE_DeUHhHYiA7IP_QA3xVlg_6vY', '2021-10-24 11:44:39.796423'),
('jl2fnoxu6s6q8t8662si2f0cwa5fgbnn', '.eJyrVirKzEsvyc9LjS9KTUwuiTc0sFSyKikqTdVByKTkl-fl5CemYJWEaDMygUjUAgDAFB2H:1mdS9b:IGpfivHG-v2m584vis0nbg_R4z1f2Vv8AjKACfe0RfQ', '2021-11-04 07:06:19.944875'),
('jn518ym86gdhqs3p2akns33ax3png8f5', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTcxU7IqKSpN1cEmZw6RqwUAc2sVbg:1m4mdA:At4fTEt3Ht1MvKYQgUpjl4wJQBV47QuCCb-OBmde8lE', '2021-07-31 15:53:32.776253'),
('jo7ur0gjsn9zplgxgqrd6paakdp2pid6', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKBsb6hkb6RgZGhjoKBoZWJqZWpgZ6SjlJqUVF-EcKQPKDmWgDiXh7S:1mssUg:PxZmIa9peG082LvNdxFBiJSyAjTBouX3XOaO88DZyKY', '2021-12-16 20:15:50.948610'),
('jozdj2n6zro78ev9wrzlj5ouop7ly4k0', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTe1VLIqKSpN1cEmZw6RqwUAdAUVcw:1myS1Z:MIZumCPpt_HQaiaxOERMJDh0jZ5mUCsqMc4DQd0-Q6E', '2022-01-01 05:12:49.200672'),
('jtw99cdax5q3r33zf10lbv2fi3v4bkws', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yOCI6dHJ1ZX0:1mwGey:ZK2P20GO_DuHIoKaqvjbKorFnH7hGqyLs8hf6x8Vwzs', '2021-12-26 04:40:28.487944'),
('jtwu5t2r57x3shdvufitgq1yb0dce1t1', 'eyJyaW5ndG9uZV9kb3dubG9hZF80NiI6dHJ1ZX0:1m6NZ4:sarhbwaISWiLf6SUr5PizUKBMve_7FES2nUurqOvObk', '2021-08-05 01:31:54.525818'),
('juhfeghl061tsakezr7l01vx47brxe7e', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMjQiOnRydWV9:1mne3t:_kxOTZTEeoW-iVUx3XyFC3wXmPwyvZykM6yG90bbpA0', '2021-12-02 09:50:33.384652'),
('jup8d5lvz0tj86tgyrmyhy3pt6ddvm77', 'eyJyaW5ndG9uZV9kb3dubG9hZF80NCI6dHJ1ZX0:1mGhN3:c2wLpRmQ9JgDh2ywhOmRXkv4BG7gjsVeiyEWGuQoFE0', '2021-09-02 12:42:09.307284'),
('juuvjlinx6sdgd0juz734l4e6q2pevwa', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xNSI6dHJ1ZX0:1m5rZV:G4lNFTkPdM2AUA2m-dCfTfqOkos1kzz6VKTv60Yti5w', '2021-08-03 15:22:13.849709'),
('jwgtm78f82k92vim604j00h89eckqh0v', 'eyJyaW5ndG9uZV9kb3dubG9hZF8zMCI6dHJ1ZX0:1lzZMW:ByhsEV-jnwMSmMkVXniNB8laQxFY2TRlSkQE4miOAD4', '2021-07-17 06:42:48.779323'),
('jx08d8pncht6tjb5ddnwy71qpgn0py74', 'eyJyaW5ndG9uZV9kb3dubG9hZF8zMSI6dHJ1ZX0:1myDRP:Y6RGieV93JrqukUAJorpYe1hfplgvQFNfkdPcM3Cu5I', '2021-12-31 13:38:31.940798'),
('jyla25nuc9rhny6331qaz80ilzb63ow2', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTcyV7IqKSpN1cEiZ2oMkasFAHMuFWo:1m6b1X:U7EVwH-TJSPeMxOEzJ7CIcPtWyg8AKWVx_Oek88GGB8', '2021-08-05 15:54:11.283027'),
('jyyr8gs9783hcxokapxsdl4ls4e4a35q', 'eyJyaW5ndG9uZV9kb3dubG9hZF8zMiI6dHJ1ZX0:1m4LgF:NwuemD-yUN9OhiPAq9Zlztqz7Ufr5j0ywiN0yLI_K0M', '2021-07-30 11:06:55.320130'),
('jzdilfp3gidpv1vs3ikz10ei2qgqm2nc', 'eyJyaW5ndG9uZV9kb3dubG9hZF8zMSI6dHJ1ZX0:1mlDQr:bBMxoES27N6Y2Bo2RKTte0zNS7Fdm5jy8WmFTu0k6po', '2021-11-25 17:00:13.467372'),
('jzuf6c8q5fvbus5g11qv4s0ie57ivvne', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMTAiOnRydWV9:1mdMg0:HGivTPUa71nRZLNmZfFIEOSWFq57WgUtz9HrW3H1tEE', '2021-11-04 01:15:24.563498'),
('k05c9ur93d0eotdn5vux102n1wi4csu6', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKBhb6hgb6RgZGhjoKBkZWBmZWxpZ6SjlJqUVF-EcKQPKDmWgDjWR7a:1mYlMt:1uEczIQfMIjQX0C1jfL0thnLGMXZxsCOKtB7h2Le2FU', '2021-10-22 08:36:39.118247'),
('k2uyx10fq4xavr98abl6ky3z8v5tqn4k', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yNyI6dHJ1ZX0:1mJgR2:z4p8qvzEGx05nx3Y5DsGnC8vhqlkupeWln8CWFobRfc', '2021-09-10 18:18:36.399614'),
('k5nbttitp6kyo89fypiif4nj68hwdnk9', 'eyJyaW5ndG9uZV9kb3dubG9hZF81MiI6dHJ1ZX0:1m44E9:397O7v29s9zJRbScRK-IbKreEApeECVkcI1M-Vk3dxY', '2021-07-29 16:28:45.362494'),
('k94rmneizjxm3rwgemaqfxqtpkg55oqd', '.eJyrVirKzEsvyc9LjS9KTUwuiTc0MlGyKikqTdVByKTkl-fl5CemICRrAUzuFH4:1mghcB:5E91s1EFuwxtDBwzi6oQ5l0jl7lyZo23ftsUjyCejao', '2021-11-13 06:13:15.927022'),
('k9nwhzcl346jj1evlf2ebhlj3z2l5r0g', 'eyJyaW5ndG9uZV9kb3dubG9hZF81NiI6dHJ1ZX0:1mZ5UH:SN5INPTPWyh8hj5RyFMI_7OxD_DA-kHZKgkSDoemHIg', '2021-10-23 06:05:37.179463'),
('k9rpkncjveamzk4fp0trjd7ddz2y4x6j', 'eyJyaW5ndG9uZV9kb3dubG9hZF81NSI6dHJ1ZX0:1mAWvm:xJheDav5H_Q0lRgpvAwKTWEbibvsUTx9ATonX-GqzIc', '2021-08-16 12:20:30.663209'),
('k9xaw4ilvn2i33jb8k29wl6jkjyn5tqt', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTcxVbIqKSpN1cEiZ2wAkasFAHMGFWU:1lxn6k:AO1uKikhWCtxlfYu2QhlD1RBM8hFgr3kawWDFUTL2dg', '2021-07-12 08:59:10.385415'),
('ka829uxmbwmy498utpj06gz1kd1503aw', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yNyI6dHJ1ZX0:1myDTb:rjAFQAAs3iLpJe4diUhrJnj6jC_EaCxdTwf9XvqKOxk', '2021-12-31 13:40:47.260262'),
('kc98l95afjifxe8bokxc6yz5n0kkta0l', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTcyUbIqKSpN1cEiZ2kMkasFAHLmFWs:1mVnCD:3gRq9NF_4zpp2HwtMO7ZrIO_a6vor72uQp1zWFahYLc', '2021-10-14 03:57:21.081319'),
('kexj7frt6w08lqpra7ptc3aisowvr88w', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKRsb6Bpb6RgZGhjoKBuZWJsZWppZ6SjlJqUVF-EcKQPKDmWgDlCB7n:1mTEFL:X9Y4mEvfbq8ii8fq5n051-r7WI8scOJQbsEQOxK-cxM', '2021-10-07 02:13:59.607470'),
('kg2noup94cs2bm85ta0ijxiiaw46ly0b', 'eyJyaW5ndG9uZV9kb3dubG9hZF8zMiI6dHJ1ZX0:1m66Lo:GGkdlluJ2EC9_paLJUr0761kYFD-FpLR3fB0MnspJDw', '2021-08-04 07:09:04.447365'),
('khnfjorbuximbt86qegt9ku4tmhiemeo', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMzEiOnRydWV9:1mucbh:BXADEMupPr1-L8LH6zQcqJxVKhlcplGhM4av3DYqBEg', '2021-12-21 15:42:17.786045'),
('kk6uaqn3tw2sgntwujsrmmkrhiagepao', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yNSI6dHJ1ZX0:1mHNdr:rcvWWTgZjr5QJ6v2YJVdvUd4OaLUq4m0VNQtabDcZHk', '2021-09-04 09:50:19.633859'),
('klim16t5bj7qjc1pr3f2yvh46wkqy8d3', 'eyJyaW5ndG9uZV9kb3dubG9hZF81Ijp0cnVlfQ:1lsSGw:H8dbfM6M2t-S9TWjZUsHltpA_bc2aDfM7ZZaI0kbIOs', '2021-06-27 15:43:38.861816'),
('kpmgd1argzrdl7jtmcwx96eba4q0uq7b', 'eyJyaW5ndG9uZV9kb3dubG9hZF81OCI6dHJ1ZX0:1mUtMA:d2dc3_bTOfvi--XDeHWsazB0krzwZvcpL4tS3esp6XE', '2021-10-11 16:19:54.522951'),
('kq1o86c7e6u0dt5l7o0w743n1ltjc2gw', 'eyJyaW5ndG9uZV9kb3dubG9hZF8zMCI6dHJ1ZX0:1m9LxI:fnAVqLEE9i7issYB234ZcyuD9kfrF9M6rGmPJP7HPn4', '2021-08-13 06:25:12.207848'),
('ktat4awjc7rk09jkdtz662tc7klfx8hj', 'eyJyaW5ndG9uZV9kb3dubG9hZF84MyI6dHJ1ZX0:1mSkoj:jgQhPpDRY7ba0Ckd_Di7_sODUg4tdCVXxy9OEd2Y5uc', '2021-10-05 18:48:33.211809'),
('ktoa089sxtqqo9t7sxrur1fyabiipfpl', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMyI6dHJ1ZX0:1mxMv7:bqVbh8fQJTLLYtzPMKGcKjDcYQIMYN5JQW9sRhAxiVY', '2021-12-29 05:33:41.931293'),
('kuwvch05qlbk4qr2ilae4h01jr149ewu', 'eyJyaW5ndG9uZV9yZWFjdF83Ijp0cnVlfQ:1ltuY2:W2XWz1ute19h3aIiw_QA1BUaDXKhjRRGTdi_xdIGh7Y', '2021-07-01 16:07:18.856854'),
('kvcb8dhqf5il0ps77k0tzubttansljt6', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKRqb6hob6RgZGhjoKhoZWpoZWBsZ6SjlJqUVF-EcKQPKDmWgDieh7R:1mq87z:irrjgGvNWJxlMe06eNFlTPB8O9CEtzH-S4CejHqUm_4', '2021-12-09 06:21:03.457266'),
('kwgp8pfsb6wma0i42rdudsxbffzc8m3n', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTcyUbIqKSpN1cEmZ4RHzhC3nKE5bjk8Uma4pSzx2YbPC5aWuOVM8bjFFOqYWgDxcXH7:1mraGk:l-bZY7uJTqeAOwt1LSJbhD3ZgriD_XjvR9RwsQwJ-JI', '2021-12-13 06:36:06.174063'),
('l1lvq3i58uvw7r1lthb8dyiqgkiwxun6', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yNSI6dHJ1ZX0:1lyrJ8:2uYgKOvkQcr5CflELXe4Y4_ORfBl_f1NiFvDgvg5rVs', '2021-07-15 07:40:22.052086'),
('l342n05ech5hs1pdlcot7llvrvbia0tq', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMTAiOnRydWV9:1mdMeF:ZRG9W0SJETT-lRpoupwAn4dh35_i7owVVvScwRmBkYI', '2021-11-04 01:13:35.663293'),
('l48h55edqk1rzzqf6337ovpcmbc0k53h', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTcxVbIqKSpN1cEiZ2oJkasFAHNgFXA:1m8geS:L4SgYV5h5Weo_TAxlJczq4ADyKeb0847-o8D4kD-BQI', '2021-08-11 10:19:00.494334'),
('l5jku8xpqnpoxzmfdu8zr6zr49flldmg', 'eyJyaW5ndG9uZV9kb3dubG9hZF80NCI6dHJ1ZX0:1mLJ0N:NzOzi67Vy60w3rfGrtSxqqnExofJ7J6LbuuigaXJANk', '2021-09-15 05:41:47.483522'),
('lagxh9r11eozohr21zmoxasgewx6ssqk', '.eJyrVirKzEsvyc9LjS9KTUwuiTczULIqKSpN1UFIpOSX5-XkJ6bA5WoBK6cUHA:1m2nez:XoeA8n8Voc5UeWUcKBijb667xrQzHn5w7xnYsOfYkJM', '2021-07-26 04:35:13.937602'),
('lbbb3kgi7wmzgnge494f02mpia1aqm0w', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTcxVbIqKSpN1cEiZ2QGkasFAHMtFWo:1lxAe9:MxTomAfz_EsRccvAhGXbdp5K9Bwtj-js82XB2YNXBJw', '2021-07-10 15:55:05.034718'),
('lcqdft5zth5x6su27qsx0y324auxkhx1', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yNSI6dHJ1ZX0:1lxPfg:0E2yFcRE0PB5cdmribcRgzomAdxeS8_d9zKdZbfOSTI', '2021-07-11 07:57:40.674468'),
('ld838ekyyqy8ru8yzodlurf1dt7x50zg', 'eyJyaW5ndG9uZV9kb3dubG9hZF83OSI6dHJ1ZX0:1mmd4c:fn-aVjyV_RtrNuMnEdV_S6MoGmxrftIng8Q5IynoX-8', '2021-11-29 14:35:06.886280'),
('ldpmervfns6tgy18vbdlw6bhn8df5iwh', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTc0MFGyKikqTdXBImlmgCFXlJqYXILQVQsALHsexg:1mshil:kdGpkQ3rf0T07A_oOuIiE_Qw_HO9cKFiEUOFv5JZy9U', '2021-12-16 08:45:39.853079'),
('ldthmvgu22s4qc3citr9m6wojcwpmi21', '.eJyrVirKzEsvyc9LjS9KTUwuiTcxV7IqKSpN1UFIpOSX5-XkJ6bglzODyNUCAPM1HnY:1m2weS:RY6K87XBOMsPjUDrQQ4tmPQe_VMU2kVjfSyVDUlDXfo', '2021-07-26 14:11:16.058441'),
('ldycffbhvii6vbg4ylx6twlkhbi9v5cc', '.eJyrVirKzEsvyc9LjS9KTUwuiTczULIqKSpN1UFIpOSX5-XkJ6bA5WoBK6cUHA:1m3spJ:7DxAFBFFFQobQd2MUT3VzqDNVLWJjxCkJT9259-u6nY', '2021-07-29 04:18:21.478133'),
('ljk23y42vrr6t5jsn6t5n9lbrjngrnr3', 'eyJyaW5ndG9uZV9kb3dubG9hZF80NSI6dHJ1ZX0:1mDqZA:9vY22_HCCBoysL5HybnxJcfMDMszqqT8xyJMtp6ityo', '2021-08-25 15:54:52.806227'),
('lkxh1tsrqvoetg8v42f585ms2yxxzfiz', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMjciOnRydWV9:1ms7Mw:7PMF6bijqidOcRt9CbY3I5ujqyN87OKHY7EbJiyInpo', '2021-12-14 17:56:42.213586'),
('lms99q7mq0pkpaoghjnffkge5zrqx8y4', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yNiI6dHJ1ZX0:1m22dp:_QDXrakN4pSKbHM28DeFebcTUo6m1deyuyythvOejKc', '2021-07-24 02:22:53.905463'),
('lo8lyfqup74jn04tk038mj0cnvokgyda', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTczULIqKSpN1cEiZ2KCW87YCCJXCwBcfR-y:1mBpy4:r_xJVdeMt_d9nl4L-faupJbEpXpuwBd_KT1O3nI90hw', '2021-08-20 02:52:16.681793'),
('los00ykwxtvr5xwsdvxf08ldflxa2f13', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTc1U7IqKSpN1cEiZ2KOW84UIlULAD-5H4o:1mEDgi:kh_MNyjkuwo-HvrPtAKbpsqY3VXbe-C1WJV0YUfWClc', '2021-08-26 16:36:12.247164'),
('lpej6v36sa9k976jm2qwkxyk68uq7szs', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKBpb6hob6RgZGhjoKBmZWBkZWJuZ6SjlJqUVF-EcKQPKDmWgDjoB7b:1mkF4B:WhbBI15b6VzpEqVoqidd847fnMV6dBsaKoERY1ZqAVo', '2021-11-23 00:32:47.423022'),
('lpr3ry8qwtj2g2xvqf2w7yr41wqcvjo8', 'eyJyaW5ndG9uZV9kb3dubG9hZF80NyI6dHJ1ZX0:1lyyXp:geLwqxvZIc-7NhEfjpcoV4GGzprCqq6TIYspZtW1mrU', '2021-07-15 15:24:01.532833'),
('lqcfoit2m9wtwqtwj5kf19rwqfc590xy', 'eyJyaW5ndG9uZV9kb3dubG9hZF8zMSI6dHJ1ZX0:1mhwkB:m00TYtD4syXCj_CYCF3M3y0hyQsqRsOOn0dxjnBfgwQ', '2021-11-16 16:34:39.586644'),
('lt0jxgzj3exmely0bkyst0rjeeuqq91k', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTcyV7IqKSpN1cEiZ2IKkasFAHM1FWs:1mCPMz:8NC1kZMeQkdfNzyqZ10M9lRj2SdeiqvTSaIVckE7Ffw', '2021-08-21 16:40:21.331044'),
('ltgkwmlkv88o8x63wrcet7xm6kbifols', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMDQiOnRydWV9:1mkqTq:WUUAe8Wg0PW0FurrNS4wguX9igalor_SGr-YEskKwAg', '2021-11-24 16:29:46.565107'),
('lv9t22tnyk80ig2dt8457yg2qyrxmvqd', 'eyJyaW5ndG9uZV9kb3dubG9hZF80NiI6dHJ1ZX0:1mfYHW:mzTAWKrE3pDNndPHfl3p-7Ywig_KvlzxxxJ3L5pnucY', '2021-11-10 02:03:10.644090'),
('m0a8xzn1mgm9e7451e7gp2r0hbnrczk2', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKhgb6Bhb6RgZGhjoKBqZWhuZWBkZ6SjlJqUVF-EcKQPKDmWgDi3R7V:1mDEz0:Ti425gHosc5hqIwRi_5knm_CmRKwJmHYGHZ_LNoj0FU', '2021-08-23 23:47:02.455417'),
('m13b0o06lxwdf5z3ugfm8y50fvau4xc5', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTcyV7IqKSpN1cEiZwqRqgUAXvgVNw:1mGC4c:W6kFjTtSq0zstoM2M7lWVIpcTUQ_VLZWLZ69q5LHZt8', '2021-09-01 03:17:02.663425'),
('m1fu0k1fjl6vy8t0ax0odsatdfweyekd', '.eJyrVirKzEsvyc9LjU_JL8_LyU9Mibc0VrIqKSpN1cEiZ2hoCpGsBQCH4xWc:1mjJ4B:CnTQsqRMFAoENuBad860UbysWNvTOIdGMMSGbDnB7Fs', '2021-11-20 10:36:55.642381'),
('m1mpasjjvz6hpvjbgn2t2vjw7hr5tybs', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTc0NFWyKikqTdVBSBalJiaXIGRqAVK6FH4:1mxUDH:fS9tHtAmwQ-1v0QAiKAHSOqiEgmNUSu5W_Cih94Hp5o', '2021-12-29 13:20:55.439478'),
('m22hgwmnv91v10vfbtl9064dqavfzxi9', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMTUiOnRydWV9:1mxXWO:nVXBzIkOm6cydMo3dmK4BWYhDjDIWxvcEAKKFTFhsNo', '2021-12-29 16:52:52.507877'),
('m446gl198n6mrfqma382c7dhx4nbgad8', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKhhb6hkb6RgZGhjoKBqZWBuZWRgZ6SjlJqUVF-EcKQPKDmWgDjUx7X:1myMmu:dK4wAbHdrjSPEfGJCzte2zteU8dSS0xtmIATetsEMMo', '2021-12-31 23:37:20.411668'),
('m5bs3w33vpggcoi1ftajwhzwgk1mk158', '.eJyrVirKzEsvyc9LjS9KTUwuiTcxUbIqKSpN1UFIpOSX5-XkJ6bA5WoBK_sUIA:1lw5Sq:dOSk6p4BLSHjhb659P8XMslCiACKeXO0sTAfZNwt5M0', '2021-07-07 16:10:56.987097'),
('m6npjqvwtopxx1ve4t1fyob3q7qly45i', '.eJxVjEsOAiEQBe_C2hA-DQGX7j0DaZpGRg2TzGc18e6GZBa6fVX1DpFw31raV17SVMRVaHH53TLSi_sA5Yn9MUua-7ZMWQ5FnnSV97nw-3a6fwcN1zZqUAGCsd4RGkNU2SquWhmbM1fjS_EADNG7ogM4IKuI2FLWGCGiE58v4EQ38Q:1mexUG:QkkvJoeuf-OWi0ZMk1jsxUCmlPF7yAD9YxVbc59nK_M', '2021-11-08 10:45:52.175421'),
('m6u7iqwh1ljaftgukesig8w0y4gfba67', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yNyI6dHJ1ZX0:1mP6B7:Q22k7dgCC_IeaMw6_eqILTgW4vuvOwWP5gYcKNBgVpI', '2021-09-25 16:48:33.187698'),
('m9pwurfm5iqpht0ewqe0hpm8j3nlun15', '.eJxVjEsOAiEQBe_C2hA-DQGX7j0DaZpGRg2TzGc18e6GZBa6fVX1DpFw31raV17SVMRVaHH53TLSi_sA5Yn9MUua-7ZMWQ5FnnSV97nw-3a6fwcN1zZqUAGCsd4RGkNU2SquWhmbM1fjS_EADNG7ogM4IKuI2FLWGCGiE58v4EQ38Q:1mlVGC:kUKMT__RLsdWhNxaajU0EZJZwk6A-LYQ4_8dzLEYAGo', '2021-11-26 12:02:24.276948'),
('mbk8nqlrih4a9x2gtj841yf3c1hunyn8', 'eyJyaW5ndG9uZV9kb3dubG9hZF85MyI6dHJ1ZX0:1mUnKd:FACrHtDB5Y_lh2dXa0u1_zfJhB9uov-zoZK7b0E4epI', '2021-10-11 09:53:55.413319'),
('mbob9u34ob5l1dferwt2j7ezwax9aqgr', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKBhb6hgb6RgZGhjoKBmZWJmZWRqZ6SjlJqUVF-EcKQPKDmWgDjyx7d:1mYeUr:zUS5jfsW19By6qQdx-6mj2IE5oVn_joZQQGkhryj97I', '2021-10-22 01:16:25.666766'),
('mc84lq2kdjndh16dpgn98jjerjz7dq8n', '.eJyrVirKzEsvyc9LjS9KTUwuiTdUsiopKk3VQYin5Jfn5eQnpuCTMoJI1QIAp3kdyg:1lpY0O:eNKFu8KHR0Y_VyOe_x8VjEJpoJEA-XKq_sY-dfTKISA', '2021-06-19 15:14:32.118680'),
('mig4hydgw6en5inl1f58njl1ivnnknx7', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMDgiOnRydWV9:1mtYrD:tT66ByUXfvUfeaeTrAXHapIm16ACGvu1V0TyWmumm6Y', '2021-12-18 17:29:55.231804'),
('ml8fjmsfkls384ziffmhisox7dcgrrwm', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMzciOnRydWV9:1mtjuF:ObPQNvV3EjeCNioAVnEcFfKb856dXCLpLAm2c90guBI', '2021-12-19 05:17:47.588789'),
('mojchzvkn78jz9e56fyz3nemh2mogopj', 'eyJyaW5ndG9uZV9kb3dubG9hZF8zMiI6dHJ1ZX0:1mDgRX:agkEJryPx33Gt9fiMs6HavV5mRSr4X7RK8EDIMmq_sU', '2021-08-25 05:06:19.541835'),
('mqfxtp5scjo7fyiakkbva1wy30isc1wo', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTcxVbIqKSpN1cEiZ2EMkasFAHNLFW0:1mmbh3:M-sWVwLUSkGCoOoa8yZOLCuiPH-GSQ6nAVx1jtUs9w4', '2021-11-29 13:06:41.827588'),
('mqm54pc7w4wxfh62rfc55moiu2azkz7g', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKRub6hgb6RgZGhjoKBmZWBsZWBmZ6SjlJqUVF-EcKQPKDmWgDjFR7W:1mfWsM:hUq2AeFo7pYmqSSBXIZHZ0GOmSFaxtPRde7EuDGvQ6A', '2021-11-10 00:33:06.586999'),
('mrr5f85x57yabxjboq7qz2z79xz30yv9', 'eyJyaW5ndG9uZV9yZWFjdF8xMDQiOnRydWV9:1myAZg:Nn15M7qG6_DCESC_Essa1D_iEqlFlmVzTwavrNzOJjU', '2021-12-31 10:34:52.239454'),
('mry6gn13tcnzpe4o1c8oianycb55ghll', 'eyJyaW5ndG9uZV9yZWFjdF8yMiI6dHJ1ZX0:1lqqBN:m9HAL7PXGqRm9j8fpL_5jIjqV3KOcrKswQO-kYASfgc', '2021-06-23 04:51:13.225026'),
('msi0vt1f5ro4lfgo31ev8v04qspkig4o', '.eJxVjEsOAiEQBe_C2hA-DQGX7j0DaZpGRg2TzGc18e6GZBa6fVX1DpFw31raV17SVMRVaHH53TLSi_sA5Yn9MUua-7ZMWQ5FnnSV97nw-3a6fwcN1zZqUAGCsd4RGkNU2SquWhmbM1fjS_EADNG7ogM4IKuI2FLWGCGiE58v4EQ38Q:1m7uPA:JRkPtmMZZxz1kLdmHzBiu8w0Dpe_3zoxNob_PKY31PU', '2021-08-09 06:48:00.047963'),
('mt5n09ntmraymvl6lvrv33myqscnre6t', '.eJxVjEEOwiAQRe_C2hCgDKBL956hYWBGqgaS0q6MdzckXej2v_f-W8xx38q8d1rnJYuL0OL0u2FMT6oD5Ees9yZTq9u6oByKPGiXt5bpdT3cv4MSexk1G2TrGIOfUKMmlRyAcaCcTXZiINZIPhhIkSkzB62Cdwj2DIYsi88X9os4Pw:1lpvEE:BA2TxOUkAI9M9xEDvjJRMLydgIIa1ru3ZcpvAJOCC7c', '2021-06-20 16:02:22.561023'),
('mw8vqsgtkm8nz2aktjfhkwaa67kwtxej', 'eyJyaW5ndG9uZV9kb3dubG9hZF80NSI6dHJ1ZX0:1m5kZ8:6G-2nO1Bkg_Z5TeMtS0JbsD7FVk8FplRlBGoyZb7Occ', '2021-08-03 07:53:22.252480'),
('mwlx5mlrlqwoohuj2k9jkx0we95iq610', '.eJxVjEEOwiAQRe_C2hCgDKBL956hYWBGqgaS0q6MdzckXej2v_f-W8xx38q8d1rnJYuL0OL0u2FMT6oD5Ees9yZTq9u6oByKPGiXt5bpdT3cv4MSexk1G2TrGIOfUKMmlRyAcaCcTXZiINZIPhhIkSkzB62Cdwj2DIYsi88X9os4Pw:1lrxR3:ROYlQspKLBa5IW5g_iIvWC60uWsE9aP0ILVdQOVlghE', '2021-06-26 06:48:01.862709'),
('mxthv7su837jw9xs8ep4gekmwzqnuyih', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTdVsiopKk3VwSJlZoBbztQSIlcLAEfxH4g:1mCyZ2:g0s35V0IsxM9xoAIVaNfTUcIUmTWwnsNtATeMxAcAqY', '2021-08-23 06:15:08.630235'),
('n1lgck8cq7i70fb9o8kcgvtqffzmfnbv', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yNyI6dHJ1ZX0:1mFTvI:8JlCZYT-2ezTiFGRmXcmU4knOBl1F4CVf2BVeWTBS7o', '2021-08-30 04:08:28.867494'),
('n4ogcc4vajsmi5eu0yfkg9bxtrf889jk', 'eyJyaW5ndG9uZV9yZWFjdF85MSI6dHJ1ZX0:1mkqYU:GDISy1-EhbkCq300113yjuAZClMgnidX5iAurmLJL8Q', '2021-11-24 16:34:34.834258'),
('n4pxpxq3e9etfxicclzyjpbbk49tow8l', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yOCI6dHJ1ZX0:1ml6a2:tJxiaSO9xjUpu9jJzRHUPqb1LR9t5Up0i4jKOTRhges', '2021-11-25 09:41:14.863772'),
('n5hbofqzabcrce0san7ki5q4xb50qizz', '.eJxVjsEOgjAQRP-lZ9NAWwh49O43NNvdRaqVmrbowfjvQuQg13lvJvMWFuYy2jlzsp7EUdTi8J85wBtPK6ArTJcoMU4leSdXRW40y3MkDqfN3Q2MkMe1barOdEq3DYJSiAPrioe6Uto5HlRL1BrDpm8bqjvTGNQVImt0NfSmh2YZxXu2JcbgIFnyGVzg5dcAIfMPMvmyCx6Jn55f4ljSzJ8vHnxP3Q:1mgS2R:iwt8x_hnmWBE4RA-NzoqquvWtwJeNwJty_yXvJJAySw', '2021-11-12 13:35:19.296954'),
('n8nwflp5kzw64c0fmf59doi99hupcr8b', 'eyJyaW5ndG9uZV9kb3dubG9hZF8zMSI6dHJ1ZX0:1myDPM:d_eaesS4EnnvwI0sdhNMQlCigWRTHwR4eI7xb8QPQPU', '2021-12-31 13:36:24.075534'),
('n9y0ab36glyof2kgdppzf4ndt2kpd97d', 'eyJyaW5ndG9uZV9kb3dubG9hZF84MCI6dHJ1ZX0:1mNzQj:BDH5_eyplObDjetKI1g4eLdNnHJqc1JOtQyBUcqX6OA', '2021-09-22 15:24:05.038449'),
('naxbnpi0mqcftbv1sm72wxrs47v7e37g', 'eyJyaW5ndG9uZV9kb3dubG9hZF8zMCI6dHJ1ZX0:1mUNlp:416QRoZHdO8FTGUqeJ_SkcU9DJuGMO9fAd6ABDYpgdY', '2021-10-10 06:36:17.191106'),
('nazk4gm4mnvs5abm6gnuhqkjpoagmaaf', 'eyJyaW5ndG9uZV9kb3dubG9hZF81NSI6dHJ1ZX0:1m6TbV:-bwE2Xx63_LPRD3X73MeQFEdnSQLbGqmBcdi2h9LSrI', '2021-08-05 07:58:49.323944'),
('nfiarz0cb2aac88oum5qp2klduiw1np4', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMDQiOnRydWV9:1mi5hp:K9mEAlUMriYX-Ntk_5B6vdK-y9MhKp3aLCwNnWmdlJk', '2021-11-17 02:08:49.876661'),
('nfr68k5awoscxtis0kjk7rdwqzywskfk', 'eyJyaW5ndG9uZV9kb3dubG9hZF81MSI6dHJ1ZX0:1mUtPd:Mgs0RBdk36sTsVzMC-ehUzn45JE1wvqF8vHkqMRjDP4', '2021-10-11 16:23:29.290403'),
('ngcoud8kybth5mhhfrlmd7oiwolgd98u', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTczULIqKSpN1cEiZ2mIR84Mt5yFMUSuFgBooCoP:1mqnNr:8s87LQiUxyGNGLHWsKiMxj47aImAAgECe340pH5pp1w', '2021-12-11 02:24:11.219500');
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('nidevaqvi4wfjahj0abxj99vq3z1xbq2', 'eyJyaW5ndG9uZV9kb3dubG9hZF80Ijp0cnVlfQ:1lxDg4:xBrqdvaL2ZWt81LLgYJu90gm42M7ApsWxXJ8KmystMI', '2021-07-10 19:09:16.544653'),
('njrjydyck8g0tleijwdcn7zl1s1yavio', 'eyJyaW5ndG9uZV9kb3dubG9hZF81MCI6dHJ1ZX0:1mMrAV:14-1S-uu3UkWvyGECzNnSY3kVEWfzBPi-QuuluRZeuc', '2021-09-19 12:22:39.612572'),
('nkfokalaidn3ecpab0xrwaoh1koabcfo', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xNyI6dHJ1ZX0:1mtsS4:ZGEzsES7aVJw51XJwTKBpku72Dhgr-8O1lsXbV0raCY', '2021-12-19 14:25:16.813501'),
('nktseg6wkehsfn2mk8rmfhmpsz30exps', '.eJxVjsEOgjAQRP-lZ9NAWwh49O43NNvdRaqVmrbowfjvQuQg13lvJvMWFuYy2jlzsp7EUdTi8J85wBtPK6ArTJcoMU4leSdXRW40y3MkDqfN3Q2MkMe1barOdEq3DYJSiAPrioe6Uto5HlRL1BrDpm8bqjvTGNQVImt0NfSmh2YZxXu2JcbgIFnyGVzg5dcAIfMPMvmyCx6Jn55f4ljSzJ8vHnxP3Q:1mqr2g:CJqwMSm0kigkNJmKF7madmOHnHuxypd6Vf_0qnsN24A', '2021-12-11 06:18:34.215123'),
('nm475h646ao7m7k61jd3n6sqwgns6v9n', '.eJyrVirKzEsvyc9LjU_JL8_LyU9Mibc0U7IqKSpN1cEmZwGRqwUAdFkVeQ:1mlxI1:DjDtLXSe5d7_hhnyWBnMFvuW6SmIlQpg3XUiFT1cbRE', '2021-11-27 17:58:09.046033'),
('nn5bbb5nbygnfuqgns2bruk80ti2e7co', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMTAiOnRydWV9:1mdMdr:dpI2tRWU2gp-9BCUFamF3ZkXnEao_oh4jMGqQLnOg2Q', '2021-11-04 01:13:11.390278'),
('no1s78z0v64c6550n6rlpaiuk3k2jdjx', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKRqb6hob6RgZGhjoKBiZWJgZWhuZ6SjlJqUVF-EcKQPKDmWgDi_B7W:1mqCdt:SHYdg0zwPH-U3CJxycIyk5e5k_BEamFTDGTlUjE4VtA', '2021-12-09 11:10:17.303078'),
('ntulhiputj4ftfc3dnyqs0p2zx47pc8y', 'eyJyaW5ndG9uZV9kb3dubG9hZF80NiI6dHJ1ZX0:1m96DU:LWsAsG2BsFBMC7AJ6LoA1fWhFjVpvb0gwjiwrsxMWTQ', '2021-08-12 13:36:52.378376'),
('nu8js1fcd7pkwxvcy22es0btythypg3o', '.eJyrVkrOLY4vyc_PSUosik_JLE5MyklNUbJKS8wpTtUBS6amZJYoWZUUlUL5BUWpZZmp5VA1tQA_fRi5:1mGp35:EVZIhZuMpFCBTJXlTKtxpchV_VKsBbzP-ZZGVOp7feQ', '2021-09-02 20:54:03.827415'),
('nut3mrlsri2frticzdclnskwobsd0c6z', 'eyJyaW5ndG9uZV9kb3dubG9hZF82NyI6dHJ1ZX0:1mv63S:aZVQ04DWuM_57kaTpDEKiyTtGRNzLERWEuzWt4ffN54', '2021-12-22 23:08:54.724916'),
('ny5czf9p6wifqvv5vgil7hq1d5d53lh2', 'eyJyaW5ndG9uZV9kb3dubG9hZF85NiI6dHJ1ZX0:1mjGhp:6yDaMDeM6ZwDaBEgm7ZB8AYv2wwZOmQ0mQwI9KouGS8', '2021-11-20 08:05:41.032848'),
('o12fgi3gx8jb7i2tu5u4kyl24t0jqpna', 'eyJyaW5ndG9uZV9kb3dubG9hZF80NyI6dHJ1ZX0:1mJ5FJ:pK3oFVIFrVg6vm-qtk_9Xt6RiG4oNWvfdwGtsEA1X9E', '2021-09-09 02:36:01.903229'),
('o3yxb3x6xufpbajuygbpmtp0g5az66ro', 'eyJyaW5ndG9uZV9kb3dubG9hZF82MCI6dHJ1ZX0:1mookD:AImZo5g-zkVpwyn5h1m8tKvMn5s5eTtAmEOIquhz_m0', '2021-12-05 15:27:05.117411'),
('o442wbixeua6ege6tarcrtjg3lj6dvcc', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMCI6dHJ1ZX0:1mhRru:Malf56hxxboNo8hC20hWGq1F_UI06xXsSj6DbsNAPwI', '2021-11-15 07:36:34.807709'),
('o5lr2yq1o7yi6pxbbrf3fa7if9wsxbk0', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yOCI6dHJ1ZX0:1mI85n:EwwwXEEMdQAs_rDZanrLygkkxaY4sPXSTVas0riY3Fs', '2021-09-06 11:26:15.757909'),
('o6r36k1dnna1jvfapynxrv72zww395pn', 'eyJyaW5ndG9uZV9kb3dubG9hZF81OSI6dHJ1ZX0:1m7kaO:A15pnGSNbiSjDAUAkK4bCfBKdvey9Jcq4JFz30soypQ', '2021-08-08 20:18:56.566933'),
('o6wi62d9g949h9xemxyu0j9te8empnqa', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yNiI6dHJ1ZX0:1mjNdO:Egb_wlnCnOZkW7Mizd3IREaRo3k4aTULG7eL8eRamXM', '2021-11-20 15:29:34.872343'),
('o9b77vvqbc09snzqnekqnqghdiz4raav', 'eyJyaW5ndG9uZV9yZWFjdF83NCI6dHJ1ZX0:1mDTl7:l3AhHykiyHWioxtXcC89Pq7xICWNRJFblGfr9PgYxkw', '2021-08-24 15:33:41.363296'),
('o9ikq23ar0n8ssk8lqfwgk339k80861s', 'eyJyaW5ndG9uZV9kb3dubG9hZF81NSI6dHJ1ZX0:1meygC:3DtCYgMcOajTX6IkMt5BFX41C6rK-epfxuguQ3IotOU', '2021-11-08 12:02:16.488578'),
('odwzgy0jm2d9ad880wdhmbs6jqvdp0mi', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKRob6hgb6RgZGhjoKBoZWphZWhoZ6SjlJqUVF-EcKQPKDmWgDiMh7R:1mdTQp:W7lFHdkW0EkJWNdI5ABWotZAyfs_vSD109-8SvZsjbU', '2021-11-04 08:28:11.626360'),
('of4h8n2xn0b3732kjnmnzsgrwvyxevfm', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yMyI6dHJ1ZX0:1mo2vU:jic1X-78tPHNTB4_M6mo5PCiBtqxhJo8a3xcQKsmIKA', '2021-12-03 12:23:32.711605'),
('offccgjj9uyrj8czvvh7xl631wq1ntg3', 'eyJyaW5ndG9uZV9kb3dubG9hZF80NyI6dHJ1ZX0:1mAZVB:Y5NN9WtinJk1gmJqu7M662U1x238qb90wJrhx1glRNE', '2021-08-16 15:05:13.947267'),
('ogrkjtsw4gp4w0ss8sqqlapuq2hx3xbj', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yMiI6dHJ1ZX0:1m3fa8:4ZiHHRRMgknkuxp9jJ4MtUl5rXNbQV5mNVcXZiTS19U', '2021-07-28 14:09:48.656577'),
('ohhz0ef52lf90372xis71bd86zwabbfq', 'eyJyaW5ndG9uZV9kb3dubG9hZF82MCI6dHJ1ZX0:1miwTR:ZR2jG4JBUg7Xwrm-nganpjaeLLdyJhO5UOG2kh1Kb9w', '2021-11-19 10:29:29.891546'),
('ohzl9pcidcj9dy5h6hezpxucaw3s8c44', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKRmb6hgb6RgZGhjoKhgZWBsZWxkZ6SjlJqUVF-EcKQPKDmWgDiOh7P:1mfPOG:DH5yC_aT7qpbfeVMi4pm7PHRxZj9prZDQl063x_ONSw', '2021-11-09 16:33:32.062675'),
('oiy0bwy51p6irbcrjn4eviuijon2dj6m', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKBsb6hkb6RgZGhjoKBpZWBoZWhsZ6SjlJqUVF-EcKQPKDmWgDiVR7R:1mtAWn:OWHN8e9EkFZ5gSZrwfDUBzzNYhnnROFkdgkP-LFxIRw', '2021-12-17 15:31:13.439143'),
('ol4blvyu040jvakxws9c5y4kexick4n3', '.eJxVjkEOwiAQRe_C2jQUKGm7dO8ZyDAMFq3FANWF8e62kYUu_7w3P__FDKxlMmumZIJjI2vZ4fdmAa-07MBdYDnHBuNSUrDNrjSV5uYUHc3H6v4VTJCn_VvxXvVC6g5BCERPkpNvuZDWkhfaOa0UqUF3ru1Vp1ByRJJoWxjUAN1WirdsSoyzhWRcyGBn2nZ5mDN9IblQ2FjSWvM90SPQszrvDx_5T90:1mxXaE:VUuG2OeoeIPuM3ha1MNfUg5GNU_Jn_bDAZjaXgs7cDU', '2021-12-29 16:56:50.347004'),
('omoq5fka5ezpwx27m8k9rqmejuph7byp', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTczULIqKSpN1cEiZ2oIkasFAHK2FWU:1mChff:BKpsaF562vc2avUVblrqTC3AflpVIgN6Z56XzHPHAuw', '2021-08-22 12:12:51.955432'),
('oqcr7uqt9yxdhm9vufq6bqgufxosv27b', 'eyJyaW5ndG9uZV9kb3dubG9hZF82Ijp0cnVlfQ:1mpu6D:S37wkog9GwEyywOnYKK7oRNWX65TVlbX5WbLsZ981rg', '2021-12-08 15:22:17.388305'),
('oskwukqn66qqla3efdhpjxvb17el0lx4', 'eyJyaW5ndG9uZV9kb3dubG9hZF85MiI6dHJ1ZX0:1mVb3O:csLNSBcmWQX1YX0-hiNdal3KXgoI1S7kFRwzFnZnL2I', '2021-10-13 14:59:26.116319'),
('otku39u4exfcjvd7jd8j8nbqv6x5hso4', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yMiI6dHJ1ZX0:1m2efV:xjj99zyzmBgn1PvcR8xiaIysiK2BYE57J-4Ez6v1wNk', '2021-07-25 18:59:09.251586'),
('ounft7mvmpvkfei7w7ejcutplk5ovkey', 'eyJyaW5ndG9uZV9kb3dubG9hZF81MyI6dHJ1ZX0:1mjz3F:H168vPcAlXSdKOegfUEUj7MaTn7NmrUlvRlSUkG9UEo', '2021-11-22 07:26:45.375296'),
('ovjclfdtlvz9unuwswkeb1bnof98ocz0', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTcxVbIqKSpN1cEiZwSVqwUAcyUVaQ:1mTJPT:rt9KYFtnYwhq6T-CrZlVbiYf8tWDGqTyJmxB70pcDEc', '2021-10-07 07:44:47.877929'),
('ovmbkuvcy1u1ygtoom4d86hv28n6k8kx', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTcxVbIqKSpN1cEiZ4pPzggiVwsAXZYfuQ:1mFhQK:p6e6P0vvHYe4guVmUJ-XnXU8iiVNRJKJiSVBpvUrx58', '2021-08-30 18:33:24.524509'),
('ovsiuyim0zgto6id3ckey9ueek0h0q1v', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTcxVbIqKSpN1cEiZ2aAW87cELeciTlErhYAZ60qBw:1mDlfc:hvAaqPGy6bup7Q0Yag9TIHls3CGNlah4Adt46f0ELkg', '2021-08-25 10:41:12.388248'),
('p21fbatvw6cyu90vfv1pilfxxq33c6aa', '.eJxVjssOgjAQRf-la0NKHwRYuvcbmul0gGqlpi26MP67EFnI8s45c3PfzMBSJrNkSsY71rOanf5vFvBG8wbcFeYxVhjnkrytNqXaaa4u0VE47-6hYII8bd-Kt6oVstEIQiAOJDkNNRfSWhpE41yjFKmu0a5ulVYoOSJJtDV0qgO9luI9mxJjsJCM8xlsoHXXACHTD5LzhfUlLXt-JHp6eh2cEEcToFBeTd3Jzxf7mlb4:1mg0O3:0s9aI1TiiK1VQlgjolcBE2VMFiXXfdelux7RtBdb1X4', '2021-11-11 08:03:47.264866'),
('pc6tdtco3kxifh0relx4i3nfp9q2yeid', 'eyJyaW5ndG9uZV9kb3dubG9hZF81NyI6dHJ1ZX0:1mZYrP:5rJq-HPxVwOQP8TfOA4gN8WcF6lmhyjcxkoKcKV4Ypk', '2021-10-24 13:27:27.666648'),
('pg41m0o3awjnf4xkeukatvsddrek0bsm', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMDMiOnRydWV9:1mgfZ6:Zdqyq83_h1fbwRgKJdXN5jdqPMhUjG38GSrPkWdWck0', '2021-11-13 04:01:56.578338'),
('pl546n4hm4oylquyczp7zujbl9pjm1up', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yNSI6dHJ1ZX0:1mOTkM:xm-wcRyGPk6e--MywLvt3k_uegd1JLUvp_3cprR7coc', '2021-09-23 23:46:22.433049'),
('pld90tv3v3yql4bdcnq9cdbt0xef02x4', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMjciOnRydWV9:1mpCW1:v4c1jpwU4RcLVkqUMDzF0i6yrrVOJlQfg4_Q7Pr9pOU', '2021-12-06 16:50:01.170750'),
('plj7h4bens9b3wp2dlhgwkw1owk3qgjk', '.eJx1j20KwjAMhq9S8rto182pvYYHKKOLQ6gt9IMh4t0tbG5gCYQSnoc3Sd8QHm5K3qEOOJikW1ApZOQQszEYo36WZ5gQFNwWcs_WvtiKWUSXmHdM9MdSUsiGl17Ji2q7A3DAEHzYh7gS5vvO0c_O-mHU3W_t3zkUP1d8G9XUbsnQ4kqInuAngktBifof271SUqFVfL7zUpa7:1ls6IE:EChHgl22HSTIZBlHSk6wzZ6LDL7D2E5HfAUbCkOgnbA', '2021-06-26 16:15:30.447273'),
('plwn1ad8xjjstu30kot8wc85pccnhuuw', 'eyJyaW5ndG9uZV9kb3dubG9hZF81OCI6dHJ1ZX0:1m5W6j:AToDOB3dAn_MPX6jncVLl1kGcjHOdm9qxefttcIAX2M', '2021-08-02 16:27:05.417261'),
('pmc1f3m3shyz7c0wmamhchuxs8sfl8h8', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTcyVrIqKSpN1cEiZ4JbytDQCCJZCwBgpx-s:1msngl:9v-LtHEAlKcmU1GI20xNWrVOLWWFB75e9K92rzZ-F7E', '2021-12-16 15:07:59.133164'),
('pmqpex7u4ksp21evi04hj7rsqk3pro91', '.eJxVjsEOgjAQRP-lZ9NAWwh49O43NNvdRaqVmrbowfjvQuQg13lvJvMWFuYy2jlzsp7EUdTi8J85wBtPK6ArTJcoMU4leSdXRW40y3MkDqfN3Q2MkMe1barOdEq3DYJSiAPrioe6Uto5HlRL1BrDpm8bqjvTGNQVImt0NfSmh2YZxXu2JcbgIFnyGVzg5dcAIfMPMvmyCx6Jn55f4ljSzJ8vHnxP3Q:1lw2E3:hBZ_b2awI9Jtzl7za8jVvBAzlSUpgpRQqJTUUEM3YG0', '2021-07-07 12:43:27.294537'),
('pnvud5yo5gaahodmcmyovchjmp3z61qb', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMjQiOnRydWV9:1mlv55:TArYu6LJuEX6S4bWPWWbVkS4xu89ztLe6b3LyqccsHE', '2021-11-27 15:36:39.189006'),
('pp70922wwvqz8twoum7eyn6uzkopmxr2', 'eyJyaW5ndG9uZV9kb3dubG9hZF81OCI6dHJ1ZX0:1meG53:TvbV9PAQJkHMAPTF2ChA9iiy-gDxd-8702H6ALPkvGo', '2021-11-06 12:24:57.603120'),
('pt81dtsdatymxwxxb5ec5i36r7u8r43w', '.eJxVjEsOAiEQBe_C2hA-DQGX7j0DaZpGRg2TzGc18e6GZBa6fVX1DpFw31raV17SVMRVaHH53TLSi_sA5Yn9MUua-7ZMWQ5FnnSV97nw-3a6fwcN1zZqUAGCsd4RGkNU2SquWhmbM1fjS_EADNG7ogM4IKuI2FLWGCGiE58v4EQ38Q:1mWBcK:R_kZDjK1JS3WZwD0gijgl-VpLb-0wUM-G1iaYGBnqiU', '2021-10-15 06:01:56.328721'),
('puekyh62fua21c7m0mq9mqmzi1ntnrkq', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTcyUbIqKSpN1cEmZ4lbztgAIlcLAFzTH7M:1mneI6:Quyc9g59KKZF_HNsQGFvM48gc8QaMBFfZjuWFhoeVMc', '2021-12-02 10:05:14.704357'),
('pumvhpzxl90h4fxl2j8rmsinm1r7f1o0', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTcxULIqKSpN1UHIFaUmJpfAJWoBMGkUGA:1mcTxl:Imp2rvI4M4PrNmRRLSkV68z73eT-bWySdPJHM5DZPPU', '2021-11-01 14:50:05.615267'),
('pv3th54txd76dhsh6eobrx62illf0p5u', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMzciOnRydWV9:1mvIcd:-y7zXa0SaD1Ll4cLcJ2ktp8CofSReh-SKDaFTpARZpU', '2021-12-23 12:34:03.899028'),
('px12pr7optw6kjw96b2oildp3wfar3de', 'eyJyaW5ndG9uZV9kb3dubG9hZF80NiI6dHJ1ZX0:1lzHm0:gRXCCldGjYxCuJnA3AtRZlkYkWPkPJ5Va3Vgcl_KaS4', '2021-07-16 11:55:56.278272'),
('pzdb2jnhadp8z2rn4hkoulxm5rxi2w11', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTc0NFGyKikqTdXBImlpCJGrBQCCERWZ:1mnGCX:9mrz2kv9VChK878ZW7bBtPuIJR-lRJLdyHy7bmaz_fU', '2021-12-01 08:21:53.678421'),
('pzhidax08ckhr0cap5n5k2nzg1cqj6sc', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKRob6hgb6RgZGhjoKhgZWBkZWhmZ6SjlJqUVF-EcKQPKDmWgDhdx7L:1mdazI:mrdxeJs3ppsG1ZdhYPiTwGtOngcpa6FBr2z0JcsGlkA', '2021-11-04 16:32:16.685288'),
('q0dpt6g0tirj98dz69ltzpxi0q8cpmpp', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMyI6dHJ1ZX0:1m94u5:rcLuRKzzX_9QwYSiwEm4__rG0S328jkBuYPOijlLuwY', '2021-08-12 12:12:45.362905'),
('q0rtywsltkht7g3aw8mb7xefqwyllo8f', 'eyJyaW5ndG9uZV9kb3dubG9hZF80NyI6dHJ1ZX0:1m5mpF:BboFM-2Ca1hQflcgMkBbGNdzueRMeNWUHSUq67WZNUw', '2021-08-03 10:18:09.924763'),
('q17qk11j1qyj362qm0jaczyk76bh4apo', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xOSI6dHJ1ZX0:1mnzI7:ricHyQ1vpO-mPco6BBZ-viFEnGuzTuCE5oTWqho-igo', '2021-12-03 08:30:39.965392'),
('q1fbv45r0vw8xwola0lalw4w3tblqjya', 'eyJyaW5ndG9uZV9kb3dubG9hZF80NiI6dHJ1ZX0:1m2RQQ:ZlVN-1z9sJSHRM6Uj9pawigIEXR4TGyn8vddD5M9tvo', '2021-07-25 04:50:42.027098'),
('q3ac3brmbl9nc38dz70rt8sg72pvfctc', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMTUiOnRydWV9:1mopyF:O9oJWUleiNXAbEwRbEroHR5pmxoMYsobqHL1CJgzSQc', '2021-12-05 16:45:39.844225'),
('q87ok5vz5ipvvm6hidoxz8xdzfj2w7we', 'eyJyaW5ndG9uZV9kb3dubG9hZF81NiI6dHJ1ZX0:1mWIPk:7k9u29kuK-Cofem9aFrPfDcAPxuSyesue770AmV_jeg', '2021-10-15 13:17:24.921214'),
('qb072c5vy5ucjj8u4twdus894k22yw5e', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTcyUbIqKSpN1UHIFaUmJpfEQ8VrAR3YE-o:1muxEW:poqs0F_wSGl-WqHmUecUVZAM49r7VXJlJWtEXloA75U', '2021-12-22 13:43:44.348090'),
('qb55jq07kikk47yzprw8e2dqytqdqstj', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMjciOnRydWV9:1mpm8P:FFpYAPotZbo75HfjUqr0yCCqOVCwx0oEXl4FbRaAW7c', '2021-12-08 06:52:01.648107'),
('qbo0mxsfdsv6fgz651pfta2wjoa48x33', 'eyJyaW5ndG9uZV9kb3dubG9hZF8zMSI6dHJ1ZX0:1m2EII:hheUpC3QK4Hr8556Twz-neYOxHAcef_tmOiZrIIwDXI', '2021-07-24 14:49:26.231866'),
('qdh87275nqc6gjjxogucxkkupq3xdelk', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTdRsiopKk3VwSJlaIBHzghDrig1MbkELlELAMrwKHc:1lyUNO:RtbzyF-q_Y5EKFY3y8ASeDk_LGPXzt6HpIh8LmBEyts', '2021-07-14 07:11:14.197735'),
('qf2avb4t242dzqqkh9l51brts1w6o89i', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTcxVbIqKSpN1cEiZ2wAkasFAHMGFWU:1mpYio:3mpQGFhCCQq4MZ-c5y30kMtgITtzrEaxsDV2IFwLDNY', '2021-12-07 16:32:42.284561'),
('qflhatd7726irrexfppo8gh92bkl1uoy', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xOSI6dHJ1ZX0:1mhSBw:D4AQ-bAH-ULzu9nptqkeLL4uSil4SthlFdBTa9zuEEQ', '2021-11-15 07:57:16.003134'),
('qgr10xdkcs087ydzf2v36u3lb1ubhu7c', 'eyJyaW5ndG9uZV9kb3dubG9hZF85MSI6dHJ1ZX0:1marSK:oSo-LxVbwYj85kXwnImcGd8vIX3GohOZHQOJk6cZtmE', '2021-10-28 03:30:56.155170'),
('qhirpuw12llrl9r2w5dzl4n0erb6i1nj', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMzciOnRydWV9:1mvCr9:Uf4SZUXlH75yyEH-zzobaUgZ3oWTQKqAaeEX_QltARE', '2021-12-23 06:24:39.467640'),
('qkbiht5lqqqzpsahcfigzgi4rn1dsk7r', 'eyJyaW5ndG9uZV9kb3dubG9hZF80Ijp0cnVlfQ:1mtlME:fgHqdNrKjxZZosB85VkO86WP8zvgiie0t0hkn0K16XI', '2021-12-19 06:50:46.404174'),
('qogwxwegbxlxbwox6398prwor7k9x9ie', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKhmb6hkb6RgZGhjoKBqZWhkZWBmZ6SjlJqUVF-EcKQPKDmWgDi8B7V:1mxduQ:ufefRRHcU4PgwyqnhOOmb3fUdR3AahsHW7QMRUrkaic', '2021-12-29 23:42:06.445161'),
('qp3x83u9c9foch6g8571f9xaa7d297yw', '.eJxVjsEOgjAQRP-lZ9NAWwh49O43NNvdRaqVmrbowfjvQuQg13lvJvMWFuYy2jlzsp7EUdTi8J85wBtPK6ArTJcoMU4leSdXRW40y3MkDqfN3Q2MkMe1barOdEq3DYJSiAPrioe6Uto5HlRL1BrDpm8bqjvTGNQVImt0NfSmh2YZxXu2JcbgIFnyGVzg5dcAIfMPMvmyCx6Jn55f4ljSzJ8vHnxP3Q:1mBVo2:5s4znaeO70ulgmEEtw800sMzsAx_SD8RXP1OApoOJZM', '2021-08-19 05:20:34.176333'),
('qqqaeaeul4me2kr7wny4oo3303pzlpww', 'eyJyaW5ndG9uZV9kb3dubG9hZF82MCI6dHJ1ZX0:1mA2vx:Z7MflkdPIoIe94KAVtfFOAzkqFZCeReNYp5Xoybzz_M', '2021-08-15 04:18:41.344794'),
('qr96p5bn36za1ybdj9c8lupif4yscdgq', 'eyJyaW5ndG9uZV9kb3dubG9hZF8zMSI6dHJ1ZX0:1muTDD:vwAjsUzA1Q2Hg7h7c3ZQevD0uJtYS4W9hbX0hkOyKCA', '2021-12-21 05:40:23.124606'),
('qs0l9veexqy07u5l42ijfqzdqg8xfhv0', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMDMiOnRydWV9:1mcOoZ:hwLfWykre3Xjl90Ufs-ieVb554cuWLsOk92x002WXro', '2021-11-01 09:20:15.589891'),
('qs96or7p9nr0kjeyd1rx0xsjl63fu4dh', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKhoT4QGRkYGeoA2VZGhlamBnpKOkqpRUX5RQhD8oCaawHhgh7L:1ml302:2g871UI3kl8gKy5IIFeeK_Y0Aivp7O-8j3hcEs7rNE8', '2021-11-25 05:51:50.658285'),
('qu2ocyhwt9fur4j69fdrot6lrd7x9y2j', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTcyVLIqKSpN1cEiZ2YAkasFAHJHFWI:1mb6LR:4oz2F5scDrUuw_fXEIS7Lnn_ZSpYmp6B5nJD694Ww9E', '2021-10-28 19:24:49.881163'),
('qu91x7q5xsqrmndty9p7662dm3z8ki9j', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMzIiOnRydWV9:1mg0lu:Ekxk9bltyvNjj9dqkvs68PABdxYRZWLuSWeV15R__vM', '2021-11-11 08:28:26.706405'),
('qw8e1z3uoczzv8fyu9b9cgps8vvo6esh', 'eyJyaW5ndG9uZV9kb3dubG9hZF8zMSI6dHJ1ZX0:1mbM6Z:131G6bT1zUVVywvPZpUDbGjs1M3DTCGMsCslKGWc8PI', '2021-10-29 12:14:31.490423'),
('qx5kszfuejvxlfowgj3m7yc0xv69ls87', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTc2VrIqKSpN1UHIFaUmJpfEG5tAJGoBMMEUHQ:1lue1S:yXBTqlKGGWjb0WL-xtAEHaiuli0LqhEpHHGfDbPSn9g', '2021-07-03 16:40:42.494512'),
('r2qzbqa04j5wc54kul8idzvp7chfm4yy', 'eyJyaW5ndG9uZV9kb3dubG9hZF8zMSI6dHJ1ZX0:1m4PKY:HeK37v5S3IQ6gkd0Wj59daPcL1suIYgHpqwJRCGkXAU', '2021-07-30 15:00:46.386524'),
('r3s6mcuo7pwnum6lpzmidhtc8tgt9lp7', 'eyJyaW5ndG9uZV9kb3dubG9hZF81OCI6dHJ1ZX0:1meG57:FMDKzj2JZD2cjrCKaCuXSpA-ZzFuGUOvwRsR04bQP0U', '2021-11-06 12:25:01.219480'),
('r4wpwwqmbvn76cahoebokueocivjqeeg', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTc2VLIqKSpN1cEiZ2IMkasFAHJyFWQ:1mGXUW:d4_xgSSPpPkVw6cjL741nOsG-mDQlJNzrNVWkKLcO3Y', '2021-09-02 02:09:12.453768'),
('r7g8ewovwm4durwa3475t8bpguuqxzid', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTcyV7IqKSpN1cEiZ2kGkasFAHNqFXE:1mcJKt:E8ipIgNTvmGkuLD5FD0KxYKPIWeaSK4UdiWl_NXnPSc', '2021-11-01 03:29:15.582696'),
('r82ykqg7mmnvwp1yn7bcoxtk4si4gznm', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTczULIqKSpN1cEiZ4FHztAct5wZRKoWAD45KdE:1mOZRa:KrUCIHThFmnEv0DmeLJtfWAtmnhYQqagKqdzZ5fRNpA', '2021-09-24 05:51:22.305559'),
('rcgqmmqq0118jyf9py8b8cgysup4bdkc', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTcyVrIqKSpN1UHIFaUmJpfAJWoBMI4UGg:1mPbyd:md6pzxgEdz3r7Xj0SygH2YU6IKEku-DHSbOyXGFsPkM', '2021-09-27 02:45:47.549140'),
('ren2u3nba054wqa63y2kbn6019uqrcxn', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKBib6hgb6RgZGhjoKBhZWJmZWpuZ6SjlJqUVF-EcKQPKDmWgDj3R7g:1mXPi5:cUqx902BiXCsdpjApgq1mCzBJEuTuxpa7BDHEaxtf1M', '2021-10-18 15:16:57.744414'),
('rkuqgd5kovdwsqjndnqeow66k4s6jqp7', '.eJxVjkEOwiAQRe_C2jQUKGm7dO8ZyDAMFq3FANWF8e62kYUu_7w3P__FDKxlMmumZIJjI2vZ4fdmAa-07MBdYDnHBuNSUrDNrjSV5uYUHc3H6v4VTJCn_VvxXvVC6g5BCERPkpNvuZDWkhfaOa0UqUF3ru1Vp1ByRJJoWxjUAN1WirdsSoyzhWRcyGBn2nZ5mDN9IblQ2FjSWvM90SPQszrvDx_5T90:1lv07E:e2qcHqTpinmFkSSPs57yPRkkAnqwMEtZaHikdfrbyZA', '2021-07-04 16:16:08.436111'),
('rl4m1yx92iwwmwy3z2t44p9eplsm3rpe', 'eyJyaW5ndG9uZV9kb3dubG9hZF80NSI6dHJ1ZX0:1mMuCl:dqQd9lntX3M0eCsxIzwy8ZSRqF9zD0woOSz8f7OejAc', '2021-09-19 15:37:11.982287'),
('rmkofk8w9q1wqwryygdwuoa567ekekdf', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKRqb6hob6RgZGhjoKBuZWRqZWBgZ6SjlJqUVF-EcKQPKDmWgDi4h7U:1mqFDI:kXFxCbpj4dEWT3ouvuda03g-FdG2lxkYIPRm8GcC9yM', '2021-12-09 13:55:00.272315'),
('rnz334li1mime1adoiujhguffzdlr3i2', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKhgb6hkb6RgZGhjoKBmZWRsZWBuZ6SjlJqUVF-EcKQPKDmWgDiXx7T:1mvU9r:zFK2dDmN_10nQEe2i_2j6KSoXMRCVPuU9uBHftYz05Q', '2021-12-24 00:53:07.970635'),
('roimkvl5mtgx6oh5lg2e7chulg7chywi', 'eyJyaW5ndG9uZV9yZWFjdF84MSI6dHJ1ZX0:1meSBK:zjTD8-4M9z1npqIXAFQE5TGAFmK-8hGVBlh3rk1Rz6M', '2021-11-07 01:20:14.626450'),
('rosblluxvvea2tqaiqtx3hkjikcxka97', '.eJyrVirKzEsvyc9LjS9KTUwuibc0VLIqKSpN1UFIpOSX5-XkJ6bglTM0sMQjaWQEkawFACR-KR8:1ml66T:No5yY7crfS7o5NXrLXuJAArCqwercmJE6m_BQhcNR-U', '2021-11-25 09:10:41.621395'),
('roupnu9qw7nttod99ym1qaogc6c1woja', 'eyJyaW5ndG9uZV9kb3dubG9hZF8zOSI6dHJ1ZX0:1m2rrs:wxaL78tBfmJUJePR28JvosIdXK7CE-6K8jMXJVD0gls', '2021-07-26 09:04:48.686774'),
('rphew9b8m9vyxl3q1a81aob7ln36qgc0', 'eyJyaW5ndG9uZV9kb3dubG9hZF82MCI6dHJ1ZX0:1mVaPM:yatUCuUK6f1rM7R4aTak5NGg6BVopA2RGUEiNDWFe3Y', '2021-10-13 14:18:04.453341'),
('rpvmfrzaeyoeklbrwi7fsmtgb5t04mb9', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTcyVLIqKSpN1cEmZ4BbzhCqrxYAWsUfpg:1mT3o8:rKHZgwE8BKXFN7WmT5wcttFsafFWnP6B4krLeInOycs', '2021-10-06 15:05:12.951725'),
('rr5o2cqczru1659qz9krr587czllkva8', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yOCI6dHJ1ZX0:1mE3SK:9n6Q2iGLXA9JhuF-pYLV2WtgqenXvmZT--UHc0bLuWg', '2021-08-26 05:40:40.635254'),
('rtihokyvxr6hxj3ed6j6qvqf0aw2fi4m', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTc1ULIqKSpN1cEiZ2wEkasFAHKHFWM:1m7C1l:9pyPKB0MqS47QTwtjaimkFIhgMyuV-y8QVae8Y5N98k', '2021-08-07 07:24:53.017766'),
('ruaw1u83hm7pai14td43sn9bzdnpg5at', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yMiI6dHJ1ZX0:1muwI8:VAYzQUDl6IGBncX-rznDzvs6OsIooiaFy4HTWHCnAoA', '2021-12-22 12:43:24.266650'),
('rukubqoacavb5bbz4km8n2orm6awd1zb', 'eyJyaW5ndG9uZV9yZWFjdF8xNSI6dHJ1ZX0:1lsTC5:UJbwnKSOGFcWItW9NxlRdxWRv2ELqa7SGtIiBYZ4gfU', '2021-06-27 16:42:41.925362'),
('rygte3h4qjgsbuopekzpvl3fz782ud3a', '.eJyrVirKzEsvyc9LjS9KTUwuiTdVsiopKk3VQYin5Jfn5eQnpsCkagELEhO6:1lt1d4:w9iaEEuQ-NzNyE6Xt7dqugvBd40i8BAL72cjVyNPIzM', '2021-06-29 05:28:50.777152'),
('rzrsqxdnv2f4cbs8zhc37gsaw9gija3u', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTcxVbIqKSpN1cEih0fKyAy3nLEBRK4WAEiIKc4:1m4ur7:TnKx1QwEkZeFTcmPS4BHsw5U_sSer-RPlaTrlg6y7Xs', '2021-08-01 00:40:29.081635'),
('s0h0ato17htpptxqtxcxgbj6y92s3kz9', 'eyJyaW5ndG9uZV9kb3dubG9hZF80NyI6dHJ1ZX0:1lyzwW:KOAnUJMH-rJr6AMfOcE6mvpYLqMAlv_jNUphUrXnbkg', '2021-07-15 16:53:36.986243'),
('s1rbnj59ddrh1opz5262mhtebfq8yqhh', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTc1U7IqKSpN1cEmZw6RqwUAc5kVcA:1mXaac:iEbgSNiG1kCT38phygfNwuaIi3relBHAAeZP0NwZglY', '2021-10-19 02:53:58.462230'),
('s223cuxu9jtr9rtvrz2256gmb3sefnsr', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTc0MFKyKikqTdXBKmkCkawFAJXoFcE:1muuA8:x0GMnn2ZxyLEme7k88FlPL0jU2G6fPxps3DTvDLYKe4', '2021-12-22 10:27:00.690626'),
('s2jnnuxr75s82uhezvcj15j585e4ee43', '.eJxVjkEOwiAQRe_C2jQUKGm7dO8ZyDAMFq3FANWF8e62kYUu_7w3P__FDKxlMmumZIJjI2vZ4fdmAa-07MBdYDnHBuNSUrDNrjSV5uYUHc3H6v4VTJCn_VvxXvVC6g5BCERPkpNvuZDWkhfaOa0UqUF3ru1Vp1ByRJJoWxjUAN1WirdsSoyzhWRcyGBn2nZ5mDN9IblQ2FjSWvM90SPQszrvDx_5T90:1mU2dY:hHqtd2ijd5OLKC1gIywu-SqoUmyQ59pGv26MKJGeHHQ', '2021-10-09 08:02:20.835955'),
('s4w7d9xvf0dg626gbw9rhehy54fhvgl1', 'eyJyaW5ndG9uZV9kb3dubG9hZF8zMiI6dHJ1ZX0:1mDetL:alve8gxiyZ9S18-l_Qeq97jnkrKKECOtgO58eQ1i1bA', '2021-08-25 03:26:55.078994'),
('s5hop5lk7zwc1umpie2m35m0ei7g62dy', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yNyI6dHJ1ZX0:1m6RBn:wIgD4u7F0gYPVVO0RyX2pCgPlaYzympIq6KMKO3cBT8', '2021-08-05 05:24:07.968458'),
('s6eimnquotd1qyqor1f4qv04blz25v4d', '.eJyrVirKzEsvyc9LjS9KTUwuiTczULJKS8wpTtVByKTkl-fl5CemgCVLikpTawE9VRRn:1m2eW6:WH5-2LgDDBxCwimGBywCMCGFUk2l54atQPJzYMn43U0', '2021-07-25 18:49:26.542670'),
('s6zqwqqvs79nr0czfxl8qh1akbwngnps', 'eyJyaW5ndG9uZV9kb3dubG9hZF81NSI6dHJ1ZX0:1mVGTI:WzyimUYpNTa3xt9vPfexCYtYkt8LBiNufOYl40GpYzg', '2021-10-12 17:00:48.372900'),
('s9c843iw7xncn8k7ci0ekwrxg7ri479v', 'eyJyaW5ndG9uZV9kb3dubG9hZF82MCI6dHJ1ZX0:1muZft:fLYJZh8HWoqJ3A16EEOjt2FjbLaGMVlxqub3x28LUpI', '2021-12-21 12:34:25.746447'),
('sdp2ho53qwtasb22260mmjzxmb8bav6w', 'eyJyaW5ndG9uZV9yZWFjdF8yOSI6dHJ1ZX0:1luqyD:u0YiY4kmbWsVAGPVDJLL34IkbBt2g3lvXEgrE_PSOi8', '2021-07-04 06:30:13.716007'),
('semrehbi54k4ry77e8a7aeoxr9cmemwt', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKBmb6hkb6RgZGhjoKhkZWRmZWhoZ6SjlJqUVF-EcKQPKDmWgDisR7T:1mu7v1:-giC9DHT9DC9H8qj9qlm7-P1niMc2typU4e-QQetm84', '2021-12-20 06:56:11.175809'),
('sfe1lytmpdmwvanw70pg6o4burbywbdz', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xNyI6dHJ1ZX0:1mgNoq:ej1YrtlY0hZL0jmfSpYHIQU1hESVW83MOEO5jv-tJ1w', '2021-11-12 09:05:00.830683'),
('sg1tllaok1b7xo7rck2lpa0vflorz80v', 'eyJyaW5ndG9uZV9yZWFjdF8zMCI6ZmFsc2V9:1lu5sY:8WrDwlP42-eMg4rIQB44HQdBWfruVvEwTA44A9_53j0', '2021-07-02 04:13:14.525863'),
('sgbh0uoicl8fa4cwz7caqxv4a35p5mmu', '.eJx9k0EOwiAQRe_StQuLtICXaYhFY9JAghgXxrvXRUMXw-v65TEzf4Zvl5_xUVIMUw7-VqZRddeS3-EkgAVwQaMncAagBwCDpuJUwyCgp4wDoMhQ1G5vAFia3FK7lorbUYA5feKS_NySKmuEv3s0kJI7rtIRa8xbWSPvneEhsHOANO1DyxC3dP_G3S8vSRxtyuGZbD_ntwInNz8t:1mXEaF:c9SEtrdaSWShFeAW-NnEB2M6xsUjuqZAjQU8HODbHZ4', '2021-10-18 03:24:07.308082'),
('siyjrhu2xf903q40wjkuexzii0zrvbe8', '.eJxVjEsOAiEQBe_C2hA-DQGX7j0DaZpGRg2TzGc18e6GZBa6fVX1DpFw31raV17SVMRVaHH53TLSi_sA5Yn9MUua-7ZMWQ5FnnSV97nw-3a6fwcN1zZqUAGCsd4RGkNU2SquWhmbM1fjS_EADNG7ogM4IKuI2FLWGCGiE58v4EQ38Q:1m2dlc:2V0pmLIUF4P80gE-HiSDcbS65oqrFxqSH2U6k_IAmk0', '2021-07-25 18:01:24.612900'),
('sk74ec68qpyhu93yownxujgooxhmko21', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yNSI6dHJ1ZX0:1myEri:LqignWY22cfOolS_zo84fCTGEHT7Tx4C6nt4JkA9_Fs', '2021-12-31 15:09:46.598843'),
('slpj1q5i2vscldu350od98e40a94cdph', '.eJxVjkEOwiAQRe_C2jQUKGm7dO8ZyDAMFq3FANWF8e62kYUu_7w3P__FDKxlMmumZIJjI2vZ4fdmAa-07MBdYDnHBuNSUrDNrjSV5uYUHc3H6v4VTJCn_VvxXvVC6g5BCERPkpNvuZDWkhfaOa0UqUF3ru1Vp1ByRJJoWxjUAN1WirdsSoyzhWRcyGBn2nZ5mDN9IblQ2FjSWvM90SPQszrvDx_5T90:1mPkzY:dEPUC98Be33pJCl0A5c4_1SdkFXDiN8C5vwcbIcQO6w', '2021-09-27 12:23:20.398010'),
('sm0lkx2zxznxti38gpl8fscxonjoohow', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTc0VrIqKSpN1cEiZ2IOkasFAHKQFWg:1m1p2q:gfaNWr8AWMB4dp1OHYUUW_Q3dNwDGttaJftzn8teUBg', '2021-07-23 11:51:48.922023'),
('sms9swc4l0ohhjdd5sh2hu8ivm82mlsp', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMjUiOnRydWV9:1mwvFw:VbfYIC-FXKux4bZAj-ZCIB1aL1zL9s888qO6QYZosUg', '2021-12-28 00:01:20.067137'),
('snu7xs1y7fy13vbg350houqwmpujs199', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yNyI6dHJ1ZX0:1mOiFw:7z9EkeFdu-LvRdHezbrpa_4-6gcoJMOzWbWroY8OWqg', '2021-09-24 15:15:56.493239'),
('snwcn37rcw1dpyunkuk0ij2css18i4me', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTdTsiopKk3VwSJlbohHzgQiVwsASGQfiA:1mPqzs:c8TO1eW4t9D8pygY4169sk-F7QHyJAWt0DA9_jMebDQ', '2021-09-27 18:48:04.028015'),
('ss1s8yn58xzpd9x5x0cpvoi4ixnm2wa4', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTc1ULIqKSpN1cEmZ4hbzsQcj5wZHjNN8MiZ4pEzwmOfBR45SzxmQvXVAgBV9mfp:1mfn6p:CHwUMizi-5qDRW_z9fwvuu-RSQ8rLiXfGKhIte-50bk', '2021-11-10 17:53:07.833612'),
('ssxirel8ltimgp8vaup782b8sexm382a', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMTUiOnRydWV9:1my6w7:ip4NjcvpMGmgg_yV09zK99V73eCJLxURM4-U9uLvLi8', '2021-12-31 06:41:47.342828'),
('su0vov9bpi3hq3moo7ni3rykmlsupki3', 'eyJyaW5ndG9uZV9kb3dubG9hZF8zMSI6dHJ1ZX0:1m96Pp:M6hy71ex_oJIwUcXZFaMBYq0vPaZ8hupHW_3W0uUG-4', '2021-08-12 13:49:37.481132'),
('suygcqrheyulntvnbzwi0b3q66hc1mu2', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMjciOnRydWV9:1msQDh:gQ7VNCPvUP-M_L-Wrinxj0dCHoyE7RijvnAN-YLOYJU', '2021-12-15 14:04:25.704421'),
('szcqa375ujxd9x7brmqn5n0tz8b8fawc', 'eyJyaW5ndG9uZV9kb3dubG9hZF8zMSI6dHJ1ZX0:1mkyT1:mvEBwQilRe19FuiJ0Rdp2UlcBJkfBEpLQS_bmamlDL4', '2021-11-25 01:01:27.707697'),
('t1dghi8f1yom071be52b8ptmp0hkwd3f', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yNCI6dHJ1ZX0:1mZw3H:iHnNGiPl-YQnrsNUPVSiCaESArLExdhd9JL0k5R8xRA', '2021-10-25 14:13:15.298461'),
('t4f6u786c6ai6ltdz6vm7ga45nxbz83r', '.eJyrVirKzEsvyc9LjS9KTUwuiTc1VbIqKSpN1UFIpOSX5-XkJ6bglTOxwC1naYhbztAYIlcLAOKsMxA:1mxWHP:LXjjTXQJzvqzPOsTkhm7dXOgesQ5PAXuRJ-00b2vBOM', '2021-12-29 15:33:19.312471'),
('t6fxf9cs6o797n6jjnbemtl7imbdjcag', 'eyJyaW5ndG9uZV9kb3dubG9hZF84NCI6dHJ1ZX0:1mMReQ:NUpRlRKfuZ3mXlEsFbSeuW9T-fk_Wdp9eLA0YA9fc2s', '2021-09-18 09:07:50.532147'),
('t6l1aic63kokszqbg983dzj1ap45fk9e', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTcyU7IqKSpN1cEiZ2hohFvSEipXCwB2Jh_m:1mxLZt:PPuFO1-dyI1nRO_Xh59-qCB8oaNPlQfhyICwMvgNGas', '2021-12-29 04:07:41.347790'),
('t6zmwtokz057a18sl63q1ftcv24mqi9g', 'eyJyaW5ndG9uZV9kb3dubG9hZF81OSI6dHJ1ZX0:1m6pWz:y2EIHILZyszrV14I8CggwBhD2Cghz1A-1riV3FrP39g', '2021-08-06 07:23:37.924333'),
('t789w8qes6kitouehi7096hnzkefas7l', 'eyJyaW5ndG9uZV9kb3dubG9hZF81OSI6dHJ1ZX0:1mEE8J:acmk-VuaiFh55Qgow1fm2jCPGCPza8xjI1TiDAI8QLU', '2021-08-26 17:04:43.748708'),
('t9q1o1mvirq4s34nx1h6s4ggdqapgimj', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yMyI6dHJ1ZX0:1mE73F:MA2grUm5HJ15_nrSaoZAOidXnr12RNE6Mk9uet1_zds', '2021-08-26 09:31:01.171330'),
('tatiohxa43bp6ys7x7j7ngfxebc2zuih', '.eJxVjEsOAiEQBe_C2hA-DQGX7j0DaZpGRg2TzGc18e6GZBa6fVX1DpFw31raV17SVMRVaHH53TLSi_sA5Yn9MUua-7ZMWQ5FnnSV97nw-3a6fwcN1zZqUAGCsd4RGkNU2SquWhmbM1fjS_EADNG7ogM4IKuI2FLWGCGiE58v4EQ38Q:1mdQFA:Vp9xJRo8OJR5JsQyHE2_EQ8aVr1tQCRcHTG2XKmfELY', '2021-11-04 05:03:56.988328'),
('taxyeyc9caym3mln3ft7dvoskp0mgaxz', 'eyJyaW5ndG9uZV9kb3dubG9hZF8zMSI6dHJ1ZX0:1mG530:Oym5iiGAQtKvC7s8gk3NRomUnS0JlKUtdLkiUiued7A', '2021-08-31 19:46:54.106060'),
('tb54y9e15dx7s2imihq4bxkt3yp61uht', '.eJxVjsEOgjAQRP-lZ9NAWwh49O43NNvdRaqVmrbowfjvQuQg13lvJvMWFuYy2jlzsp7EUdTi8J85wBtPK6ArTJcoMU4leSdXRW40y3MkDqfN3Q2MkMe1barOdEq3DYJSiAPrioe6Uto5HlRL1BrDpm8bqjvTGNQVImt0NfSmh2YZxXu2JcbgIFnyGVzg5dcAIfMPMvmyCx6Jn55f4ljSzJ8vHnxP3Q:1lxAhO:lUuX8fq_Sd8N1VZHmjnCFi-2tYl1j4SG5T09IT9pWgg', '2021-07-10 15:58:26.674230'),
('tdmvpe3tgw5yhqli5nnzsqoqb8ld8ckl', 'eyJyaW5ndG9uZV9kb3dubG9hZF8zMSI6dHJ1ZX0:1m4PKX:Px_lDqYlkHPdpqU5lKThGZtWcx-X1jq8wYy6x5bZXRU', '2021-07-30 15:00:45.202630'),
('tgb2c14n4smdlaf0n09dx51f6wsf3tm1', 'eyJyaW5ndG9uZV9kb3dubG9hZF80NiI6dHJ1ZX0:1m5Yt4:U3vHkXIidUwWF-NV126rkr6N8ncWMqAKswAiULJCl9I', '2021-08-02 19:25:10.094742'),
('thbso76nnrfbq6ophilgrg0myn5ya70g', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKBib6hkb6RgZGhjoKBmZWRoZWxqZ6SjlJqUVF-EcKQPKDmWgDiwx7V:1mtJH5:h9emZqZce6U2sB3hDMgdl1so0BYvq0MWkJujjz-Juuw', '2021-12-18 00:51:35.621164'),
('ticelabzj2adpdjqzc93xe5ows5vjmxc', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTczUrIqKSpN1cEmZ4hHzhiPnAkeOVM8cmYQuVoA37U-qg:1myC6R:_RUAt-ec-ktNJlqa_M7vh-VQqPO1KOX-5RNv1s9gH4c', '2021-12-31 12:12:47.322012'),
('tippxt0gl9x4d84tmt887g0gt3wippwy', 'eyJyaW5ndG9uZV9yZWFjdF83OSI6ZmFsc2V9:1mBb0X:86H5m0XTFi95WOPqmHmiQ5ci3wvZOGfglH84RlQT_5Q', '2021-08-19 10:53:49.598989'),
('tj8t8we3enejjfv4jtl5f5wdrs6g4gwa', 'eyJyaW5ndG9uZV9yZWFjdF85OCI6dHJ1ZX0:1mZXGK:Ij76PS1BOzeymrP0yB1SOgj5G3Hk_SOloHMwlLc582c', '2021-10-24 11:45:04.237998'),
('tk20ez6kwqhi0i488akd80s18ebqrhcg', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yOSI6dHJ1ZX0:1m1kGd:fQ4i3CkMTirnoH1OO1VFX351lAfdOok3BR2dAgu0OHo', '2021-07-23 06:45:43.481139'),
('tmcqdxf77ibp9b3r3m11xu5nlym75p3e', 'eyJyaW5ndG9uZV9yZWFjdF8yMiI6dHJ1ZX0:1mG1Kv:3Pxzk2AlVfpV3AZI4RIjc_L_CH2ps5t4WOOC4wExnZM', '2021-08-31 15:49:09.553285'),
('tnw572ep087n39vgdgwwf4uid77hnnz1', 'eyJyaW5ndG9uZV9kb3dubG9hZF8zMSI6dHJ1ZX0:1mUnw0:5AO3FiM4A3Tv4y2gjKWGyHI34_MdHq6sTg1PKKvl1eI', '2021-10-11 10:32:32.250842'),
('tr1vwebnwztpxv2hnre8lg78540aiqwq', 'eyJjbXNfZWRpdCI6ZmFsc2V9:1mJb8m:sh0fW91O39xU1pAHALVVBt_PrAQhR5k-GI0MYeTMdm4', '2021-09-10 12:39:24.874871'),
('ts0vnib3vsei6o59th63t0bmb2edhmyo', '.eJx9jU0KwjAUhK8S3jrYNDVRcg0PEEL6LEJ8gfwgIt7dQrQubN3MYj6-mQekC00lEtox3ihEN9oBTEkVOeTqPeZsr3O4CcHAqTXnGsKdvWuWkQqLxKTuhO6kkD1nQhk1GHncAQdMKabvCM0yX7mV4vO7sITOF7v_6RfnH1Ibc_1hW1phTZK6gecLZ9ts1Q:1lx7LM:trcG0chj4zCdaYiOTC6PXy0VLuZr9qbi2KyegbHRZgE', '2021-07-10 12:23:28.038913'),
('tt0vp21kpbmu3mk7yqbvny2wsclq77ur', 'eyJyaW5ndG9uZV9kb3dubG9hZF81NiI6dHJ1ZX0:1meeIl:jyjvqm5lybqOYIZUqyWBYBBuqXSGDbpS7541RDer3W8', '2021-11-07 14:16:43.197538'),
('ttyiq3mi5lvg16h5m4o0s9n4kzvh752x', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xOCI6dHJ1ZX0:1mGBlL:KgMedeL4Zs7uVydwhbQf5c6IyS2YqCry6g32Drz33jg', '2021-09-01 02:57:07.894858'),
('tujkjent69zsyw601sre51z7l78yxbfz', 'eyJyaW5ndG9uZV9yZWFjdF82Ijp0cnVlfQ:1lqW3R:n_HLyjcni5qDE4m6RvwnSMYpv93FxsmXTBxhIB6L5Lw', '2021-06-22 07:21:41.665002'),
('tvrj3ex039hq7lh6kwcwjwyinulhqxba', 'eyJyaW5ndG9uZV9kb3dubG9hZF8zMCI6dHJ1ZX0:1lyGTm:KvGIFEfYoqd_6sc3uS_nUd9P1GeuNlRRlZ0EQvm0hKE', '2021-07-13 16:20:54.370278'),
('tvzxlxbmvcxl2mmr8utb4ivmfvvlrzb0', 'eyJyaW5ndG9uZV9kb3dubG9hZF80MyI6dHJ1ZX0:1mcB1P:toiE7WshX5PDf9O86usHOxeCbX3JWGIC3jjJQvZSanE', '2021-10-31 18:36:35.581908'),
('ty9i7m4nlyo0b3zasecqkh6ie6khbrbo', '.eJxVjEsOAiEQBe_C2hA-DQGX7j0DaZpGRg2TzGc18e6GZBa6fVX1DpFw31raV17SVMRVaHH53TLSi_sA5Yn9MUua-7ZMWQ5FnnSV97nw-3a6fwcN1zZqUAGCsd4RGkNU2SquWhmbM1fjS_EADNG7ogM4IKuI2FLWGCGiE58v4EQ38Q:1mZXEu:hHsGhrSlIYVzKjpo2UBKjqXuJWhH6cUPs081G0dO5_w', '2021-10-24 11:43:36.326221'),
('u0c4uc5yf799jkr7r44bqh1sry9yuj40', '.eJxVjsEOgjAQRP-lZ9NAWwh49O43NNvdRaqVmrbowfjvQuQg13lvJvMWFuYy2jlzsp7EUdTi8J85wBtPK6ArTJcoMU4leSdXRW40y3MkDqfN3Q2MkMe1barOdEq3DYJSiAPrioe6Uto5HlRL1BrDpm8bqjvTGNQVImt0NfSmh2YZxXu2JcbgIFnyGVzg5dcAIfMPMvmyCx6Jn55f4ljSzJ8vHnxP3Q:1mbE4k:UUXy5X4tiFBHjt7_HRikWc-XuGXYAZTsiOt7nT-_hv4', '2021-10-29 03:40:06.834933'),
('u171hitluu35g0ntkngjxh9pmmn556js', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMDkiOnRydWV9:1mv8Ig:P6Xw8cTBR2ae1DHkObXNCoV2yFsVjc5FRP9IcJNpN5A', '2021-12-23 01:32:46.256493'),
('u371kmbqbyersq0n51metuyjku57nbp2', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTcxVbIqKSpN1cEiZ2gEkasFAHMEFWU:1mBhRP:o3GOsbE-w-9TO1ps5UigV8G92tZ0L0c6b91UAAAwx88', '2021-08-19 17:45:59.855996'),
('u4si2p5o950f049kfmztegb1y93n3sjh', 'eyJyaW5ndG9uZV9kb3dubG9hZF81OSI6dHJ1ZX0:1mCcDP:VQm3sJt7hbUGf_V04o0b4tglRDExIgEW0lnNkFCnOms', '2021-08-22 06:23:19.447472'),
('u96njp2a4ao8xv1fw5q09yhytko28nty', 'eyJyaW5ndG9uZV9kb3dubG9hZF85MSI6dHJ1ZX0:1maJnl:srERQ49xxHSHGyRTpFBAuFDKl4yOHNEOQ-xPnF_CssA', '2021-10-26 15:34:49.973725'),
('u9cxbd093kohohwox220bbrompi30nz3', 'eyJyaW5ndG9uZV9kb3dubG9hZF85OCI6dHJ1ZX0:1mpPoK:wLaImdKiUwgCrnzG3zWUaMZkJT5ZNCWyKZKn-quobmc', '2021-12-07 07:01:48.012555'),
('u9e1ydpi6bexsmxrwtuu7u2igqax0qyy', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTeyULIqKSpN1cEiZ2hsgFvS0hC3nIUxRK4WAIaeKjg:1mofHJ:iqdulCnvcHzMkTk3YHmmWHI2O-UvZ4Cur_fDjtO09xU', '2021-12-05 05:20:37.885997'),
('ugc9plm382ih2zianzi48vpmimk7yj1b', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKRob6hob6RgZGhjoKBqZWhhZWpmZ6SjlJqUVF-EcKQPKDmWgDjRx7b:1moa6K:oatHgAYVnUckV06tzW0vRDlKh3me4aT78TslRuGxDic', '2021-12-04 23:48:56.718014'),
('ujqrwq7j0u0jo9mlfdbz22t8972hx10h', 'eyJyaW5ndG9uZV9kb3dubG9hZF81NyI6dHJ1ZX0:1mpY8S:D_xB8p75rRCz0zFutJ6Ypbp870rKNfkBIDOTBqthWys', '2021-12-07 15:55:08.088043'),
('ujvint0fixixsffqatdxuqe9eeu2ygtg', 'eyJyaW5ndG9uZV9kb3dubG9hZF80NSI6dHJ1ZX0:1mCGsP:f91w9IsPHw_A5udna1l6asq9p480G80U6tlnMguhYcY', '2021-08-21 07:36:13.442280'),
('uqfw5w44ymrhietapy242beosgu9kzyy', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKhpb6hob6RgZGhjoKBiZWxuZWBgZ6SjlJqUVF-EcKQPKDmWgDjWh7X:1mo1jQ:Y4xChifZuh2lv0642HUSplCkHjC1kJT_xu86yJLzIrY', '2021-12-03 11:07:00.838316'),
('urf8xhc6u3uizyyp9f8ejs3ewywdxyhe', '.eJxVjs0OgjAQBt-Fs2n6RwMevfsMzXa7SLVS0xY9GN9diBzkOjP7Zd-NhbmOdi6UbfDNsRHN4Z85wBtNq_BXmC6JYZpqDo6tCdtsYefkKZ62djcwQhnXa8073UllWgQpEQdSnAbBpXKOBmm8N1qT7k3rRadbjYojkkInoNc9tMso3outKUUH2fpQwEVa_hogFvpJ8qHuwCPTM9Brx2K62AiVypIqwT9fT7RXNg:1m2enw:U0eD04kaQoJm8EmzOA4fde-RrcrO8ACTrsMBYsv_hzM', '2021-07-25 19:07:52.833937'),
('urrjx2o7j1f0fh1sce7asb0vru95f7ap', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTe1VLIqKSpN1cEmZ4FHzhS3nAk-M40gcrUAmLc0ZA:1mfks2:ggRYG0nK8GumkBC8VeVDLf3NfFfKbQdM5QQmhFFVOx0', '2021-11-10 15:29:42.216557'),
('utwajdn9r6gv21cyaem0v4r1hsd5g12s', 'eyJyaW5ndG9uZV9yZWFjdF82MCI6ZmFsc2V9:1m3iko:2dI4cRzOO4NQ3_6EYxWsSzpnYxPznkOfvki5UPBmobU', '2021-07-28 17:33:02.381713'),
('uu73iixt33x0j895x1qxnjdr6n3rc1aj', 'eyJyaW5ndG9uZV9kb3dubG9hZF81NiI6dHJ1ZX0:1mP7OV:Z7Zi-p8-Q6vPgn1yX0nhfTUCSq7mXuaEPWbt9VeFFwk', '2021-09-25 18:06:27.520002'),
('uww5iikfke7ow5feqckz44hyolt78nl8', 'eyJyaW5ndG9uZV9kb3dubG9hZF80NSI6dHJ1ZX0:1mPLPx:6RZ_1FCabwxzVMBN6cenZ_hcBtbxoMVISfOnfJGgsaA', '2021-09-26 09:04:53.736229'),
('uxtimcxar53jprbda6gmezsv29icj7l2', 'eyJyaW5ndG9uZV9kb3dubG9hZF8zMSI6dHJ1ZX0:1myDSp:_H_vkAXRnsEPohieVoIfaN1Mx-92V_M3lH67Be6DTxA', '2021-12-31 13:39:59.019629'),
('uzwauclpr7lk4sdnslh9wxd1d35gmm7b', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTcyULIqKSpN1cEiZ4ZHzsIYIlcLAFtoH7I:1mKmIB:OUgD0chVtQEaMfewMh6mPx9MhskUINvSuU2WtIvDHoo', '2021-09-13 18:45:59.290605'),
('v1e540wxpro9rl0jbqm0yukxjdf15qf7', '.eJyrViouTU5OLS6OzwUSiempSlZ5pTk5OkqpRUX5RQhBpeD83NSSjMy8dIXy1LwShfKi_Lx0RYX8PAUjQ30Dc30jAyNDHQVDQysTcytjM6VaAIkHHMU:1m65Y0:GWAi5c0SDnCn9Cvlj5ncCfEHpgrA8Tj80nuBlmSTp-I', '2021-08-04 06:17:36.668187'),
('v2012wjr4rt6vphwnwu3j061cj0u6chb', 'eyJyaW5ndG9uZV9kb3dubG9hZF80NSI6dHJ1ZX0:1mGKGQ:vOe1tu1Q4RgXlIaFkQiKSTmll80ec_xZ6YFOU5pMPJo', '2021-09-01 12:01:46.720076'),
('v2um9lsc70zj8ri0xlxy96seyl0s0l9f', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMjciOnRydWV9:1mwMog:pczKyMXhIxWUKCaEJW2RN_ZeJlKXC4tUQKtbA01oCfM', '2021-12-26 11:14:54.498164'),
('v3la0a5mkpv9yhtpqakj86q2y9zlueoq', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yNiI6dHJ1ZX0:1mkQnf:US2ZlzV_Aq5VY-aUAkQto8R8dtp5BmeWu4wbG7eHHNg', '2021-11-23 13:04:31.527945'),
('v4gaz9k2vmcx2hv473zte4s0ar7lekmd', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yOCI6dHJ1ZX0:1mC1xI:mig-TBlzYM7SlVzphtUrSp9qx86Yj8p93k2XUcvGxMc', '2021-08-20 15:40:16.781763'),
('v4x0tu8z8jn21w8gfxstd16n9t8mdi05', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTc1ULIqKSpN1cEmZ4ZHDiJVCwA-QB-E:1m7U0B:z7A9SsRWHZQkwab2KNZp_JnIe3VSy7-ndrTnSNZdKQY', '2021-08-08 02:36:27.173411'),
('v6ghrujhtio4n493i0y3cp979ybi4s5n', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yNyI6dHJ1ZX0:1mPeDK:KCqN3YW1YW5kI5y73KyMl9bWAJw-Zvk7tJaxV0GPxY4', '2021-09-27 05:09:06.958074'),
('vazu8dx7wmt1hncc4o6n5ao6cuq69475', 'eyJyaW5ndG9uZV9kb3dubG9hZF80NyI6dHJ1ZX0:1m2cEb:wpW0kI9S0dVYQOsASZKBzebWK_0qV9JfwZ-UvjeG1W0', '2021-07-25 16:23:13.340531'),
('vbco8s0rtnlcbhk8vwqlshpxdfd9sco0', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yOCI6dHJ1ZX0:1mE3cA:5GPDPXPNUrhIBU95zxJv4yJNw9dJSKUCfAkN7HDiU2Y', '2021-08-26 05:50:50.581404'),
('vce4js2zwbd3c2xxtrkrf16v5shbswny', '.eJyrVirKzEsvyc9LjS9KTUwuiTc1UrJKS8wpTtVByKTkl-fl5CemgCVLikpTawE9gBRp:1lyNkL:f6C8xWA7gVWd23sGvf64lRdUIo0Ep3rJE-1_yXadEZg', '2021-07-14 00:06:29.169794'),
('vhb8qfzaqcxsh3n7p5yyiklnt62pixze', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yMiI6dHJ1ZX0:1mUTXU:sJyHeYGJ1dk9wO6Sp3zGI1Y9Zh8ue4LqQUkEpG5L1Xs', '2021-10-10 12:45:52.422585'),
('vj2mwsybfqgsdtwg638n4cexhst6oxkf', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTdVsiopKk3VwSJljlvKDLeUoSFErhYACqgpaQ:1m1AEU:9jvbicWwjZX0FN95UqhxtOdqqyKpEpGGbH31u_3eR-Y', '2021-07-21 16:17:06.906645'),
('vk1gdg5o1cakxifk4yryhls6bnumqjut', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yNyI6dHJ1ZX0:1mD3QS:fmhpeSkaDQG1gcVLwMYq1owZpvi_ThPbQ0z2KuaLjUA', '2021-08-23 11:26:36.328238'),
('vl8of3v4b3whb7xnd6u3zw64cytvgb4s', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTeyULIqKSpN1cEiZ2hkjkfSwBifThPcksaGeOQMcMtZQvXVAgDlLEl3:1mg9N3:UNcumX3uHsuOfWip6z9MF2ZKECAU9VK0hI7yfHxIp68', '2021-11-11 17:39:21.202290'),
('vmbnlypnzshnrjdsondrk9tc7y3xq7wa', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTcxVbIqKSpN1cEiZ2wIkasFAHMOFWY:1m555d:ZsJCbpZwFb-RxCxpFs0kIE5BIsClQH8Hk9Lvwj0rmdM', '2021-08-01 11:36:09.466664'),
('vomyvuvplbx4cfgxs6o901meosrj5x0l', 'eyJyaW5ndG9uZV9kb3dubG9hZF85OCI6dHJ1ZX0:1mi6kn:cqtBA8gO_SSuxk2ESLH1TZpnfWS6EoHMvfu0M0ysG1o', '2021-11-17 03:15:57.573936'),
('voyuxpm727uiqxx9k6wyezrq93w4n1uq', '.eJxVjEsOAiEQBe_C2hA-DQGX7j0DaZpGRg2TzGc18e6GZBa6fVX1DpFw31raV17SVMRVaHH53TLSi_sA5Yn9MUua-7ZMWQ5FnnSV97nw-3a6fwcN1zZqUAGCsd4RGkNU2SquWhmbM1fjS_EADNG7ogM4IKuI2FLWGCGiE58v4EQ38Q:1mxLnp:YM2X_9QXT1zaTxqvS1vnjHB-bb2NELHdsJSkSRYOfgs', '2021-12-29 04:22:05.421682'),
('vq4zwjuev7la7nwlb537gwjfaodidvpe', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yNSI6dHJ1ZX0:1myEsZ:tSoQWzFAn--7-V6B4xtp7sGILuaQxlfLmP8F8uS1qu8', '2021-12-31 15:10:39.055945'),
('vqvv3726chazoufwe3fg3gdg2o7o1t3y', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKRpb6hgb6RgZGhjoKhkZWJqZWJmZ6SjlJqUVF-EcKQPKDmWgDkIx7f:1mgAsM:0PoUnssXq5LlpGXpd0NTEs99BGn33zITzUalXYXh5qA', '2021-11-11 19:15:46.696376'),
('vvdrigdvdzta7z3df63x1nxnp851wjo4', 'eyJyaW5ndG9uZV9kb3dubG9hZF8zMSI6dHJ1ZX0:1mlaOx:gokxkn10J_fGnQRddxkJ-Ir_ElFRoDd3KvI_rTc4uL4', '2021-11-26 17:31:47.332930'),
('vvxvarqyfre0sum7u9n8xbnu56kcgcy5', 'eyJyaW5ndG9uZV9kb3dubG9hZF81MiI6dHJ1ZX0:1m16Ke:CO0y0XD5yxc9YVVZBUdHljHZoRRck9MXBjVSA7PUaBU', '2021-07-21 12:07:12.788686'),
('vxh2nceqdb6hjpr4kdj3l1zuvp0p1vvm', 'eyJyaW5ndG9uZV9kb3dubG9hZF80NSI6dHJ1ZX0:1mFCYT:KAJY8usDq8KsJywXq1CIEcYZR-h9aSHXB6JZoLCiJk0', '2021-08-29 09:35:45.546745'),
('w40e5aq06o8djwfenjjlvc7yeeziup4w', 'eyJyaW5ndG9uZV9kb3dubG9hZF80NSI6dHJ1ZX0:1mMRpG:oOGgpZMEtgcGwg9nknjC4b0elXIC0GdkdISPk5cFDyM', '2021-09-18 09:19:02.529159'),
('w7040ixnafdd3wlj9mcng8yr8qkr473m', 'eyJyaW5ndG9uZV9kb3dubG9hZF81NiI6dHJ1ZX0:1mqy7U:aatbBP9D6j5zp_g3nO6QbS5WFBqv7sOc-JqXATw0zzM', '2021-12-11 13:52:00.454920'),
('w95m4xkp821s7stld6kzxyydba95qr7t', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xNSI6dHJ1ZX0:1mgnGf:X5U2S0v2la7sXEzzHRgAqL6flvC9FIB0cc9uaUzd33I', '2021-11-13 12:15:25.884740'),
('waty94jebx4gpneh90p0585i4fmdz63b', 'eyJyaW5ndG9uZV9kb3dubG9hZF81Ijp0cnVlfQ:1lsSH6:QXAbBJEJlUneVUvcDvabMrBugoaywUPM3BtcDSHJEhM', '2021-06-27 15:43:48.321708'),
('we6hf0n7f5hgkspyhlpclxkqcm87zphp', 'eyJyaW5ndG9uZV9kb3dubG9hZF80NSI6dHJ1ZX0:1mYpqL:21_5cyCJ3CDnpwlWsdWbX4ibBDPAie75T4ZboJXHorA', '2021-10-22 13:23:21.655391'),
('weqgzkdwpp3wgc9ikt0f4f2ed25hevm9', 'eyJyaW5ndG9uZV9kb3dubG9hZF80NSI6dHJ1ZX0:1lxqRK:SYqiJQSSy8kdJTnZ08KY1rrc-pAqZxVVl0b8Zg0SCvk', '2021-07-12 12:32:38.021562'),
('wg7ac8ax7ucmy34c7kr6u00m5vybjbju', '.eJx9kV0KwyAQhK8iPocmGpMSr9EDBEm2oWAVVqWU0rs3kJ9CzfbFh_kYZ4Z9cby5KXoHPYIZYq-4jpig-NXFmQAdZWg2ENIwQAj9fX7MBFzzy6Jck7VPtsosgIvMOyZUWbWlrKQoWCW06HQtT7zggOjx-4mbzVmobLI2o3846814xFYTNU22FCBH5449_4Atpj-dqcq1IICi7lfnI_eUjb0_vPe8hg:1luwrn:2VL11fk08Iok50JkKI9od5uSlb-GTz3ClsGv_qrSpr4', '2021-07-04 12:47:59.372603'),
('whzn9sxuh8dpr75j8fzd7ktl4nanswum', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMTAiOnRydWV9:1mdMeI:KeJ5rjwWpDT814ys9JIbpxWT-aXxIQw-sPilzYjF6nU', '2021-11-04 01:13:38.030117'),
('wl2x6g629t1id8jktjq0c1s5nd34xbo2', 'eyJyaW5ndG9uZV9kb3dubG9hZF8zMiI6dHJ1ZSwicmluZ3RvbmVfcmVhY3RfNDYiOmZhbHNlfQ:1m4DIB:rcQSLKjTePXNOwtr-yuXn7JRLl-xggHimpFCQ2VvlaQ', '2021-07-30 02:09:31.885293'),
('wnh1mt101bcwxf8mmfwog3mpn2v7dlr5', '.eJxVjEsOAiEQBe_C2hA-DQGX7j0DaZpGRg2TzGc18e6GZBa6fVX1DpFw31raV17SVMRVaHH53TLSi_sA5Yn9MUua-7ZMWQ5FnnSV97nw-3a6fwcN1zZqUAGCsd4RGkNU2SquWhmbM1fjS_EADNG7ogM4IKuI2FLWGCGiE58v4EQ38Q:1m4i2B:4fKMN_CVBm107y-Obz5-p8bYr4bxlZEzMkcDIweYO8U', '2021-07-31 10:59:03.305336'),
('wr04kwe0vdb77w2hvgp9uw73z6v7acyi', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yOSI6dHJ1ZX0:1lxCxO:ksW6iq066kVB5J93NYYnexE151IqlfcOfhMTa-9x3VI', '2021-07-10 18:23:06.766787'),
('wsxm63fnfz526e7ue1n21itr9048mcmt', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTeyULIqKSpN1cEmZ4xHzgSPnBFErhYAZzwp_g:1mRMFH:KCa2P5JjEdDJPSGZhg-4pgOAqGSILQAvo8FzW303z-E', '2021-10-01 22:22:11.118269'),
('wu3f4ujashgxtw9ip5qxp00d3pa97gbx', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTc0V7IqKSpN1cEiZwaRqgUAXtwVNw:1mZU7k:s3ZiXiBEVJ2uqocBW0gJHo95x-aFRTQZGr6kVCCoC38', '2021-10-24 08:24:00.112894'),
('wvhjyllunu9pmfcl50iin922ggp0gcbr', '.eJxVjkEOwiAQRe_C2jQUKGm7dO8ZyDAMFq3FANWF8e62kYUu_7w3P__FDKxlMmumZIJjI2vZ4fdmAa-07MBdYDnHBuNSUrDNrjSV5uYUHc3H6v4VTJCn_VvxXvVC6g5BCERPkpNvuZDWkhfaOa0UqUF3ru1Vp1ByRJJoWxjUAN1WirdsSoyzhWRcyGBn2nZ5mDN9IblQ2FjSWvM90SPQszrvDx_5T90:1mwSkG:BGBITzhLSpJJ5XRYu8PmOy5icICkr-iswwTcyx217sQ', '2021-12-26 17:34:44.870292'),
('wvtb1vc431683x58z22ptndgwhyzzt3k', 'eyJyaW5ndG9uZV9kb3dubG9hZF80NCI6dHJ1ZX0:1m4QUa:WZeWE1f6sstwW6EkG_FirbtVhu6l7tVRgYHMHea6_LQ', '2021-07-30 16:15:12.875959'),
('x22z5k4bk1z4w1w90wxrf2lbi909n7r8', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yMiI6dHJ1ZX0:1moXzh:QhQ1t--9iQ9PCSSIm28Mmxc33VWe5YFnwbbrGOzFhes', '2021-12-04 21:33:57.497552'),
('x38d54xrlxnitks9d0648g9d1g1zitq9', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKxgb6Bhb6RgZGhjoKBqZWhpZWBmZ6SjlJqUVF-EcKQPKDmWgDj0R7d:1mKUXy:8sHNgMfDveLkzaa6j1mKC5Izg1w9X2fSRRie-NpfFec', '2021-09-12 23:49:06.121587'),
('x3qk0fdp5s3hqcinm5wbh4bhp2ro99l1', '.eJyrVirKzEsvyc9LjU_JL8_LyU9Mibe0ULIqKSpN1cEiZ2hoApGsBQCIlBWg:1mg0as:ga2F9QhlzytXZX0R5bQEXkD5S8qbNm9LBwxXABXt1KI', '2021-11-11 08:17:02.099976'),
('x6vo4z58ruzr63dqakx0lh64tz15m23s', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xNCI6dHJ1ZX0:1m7xLt:OPf0eve34nRyfHnsOR01XUKD2BGPPbRGKWypYFXWo6s', '2021-08-09 09:56:49.517452'),
('x7bymdc9w0sf8vre9x6gkxsimjy7dp7m', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMyI6dHJ1ZX0:1mntOy:MaeS6TnJMQmgPqYCrte8hb9fL9eqDgHhP19kUvFhrRE', '2021-12-03 02:13:20.718585'),
('x8iu4y2b8bzbj38d0xgp7s8fiv95fsv4', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yNiI6dHJ1ZX0:1m0okK:HoMe9ldCnEs0W3co_BpECvl6Rtqnlk6WmzeDcrKO-qk', '2021-07-20 17:20:32.384980'),
('xbhcdz8onypdbcpln04oik9hbxqxs2xq', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMjciOnRydWV9:1mp0th:AlsclPTiFXW9s1v0nXwNpxQR0Z_QMIHv1TltwznSpJQ', '2021-12-06 04:25:41.048975'),
('xbqcwee8sadwgasy8un4oidvsbfgyogh', 'eyJyaW5ndG9uZV9kb3dubG9hZF84MyI6dHJ1ZX0:1mmDgk:tCcCHis3X-2T_YOfR_yK-sWMuBNqV8P_ndHUab8RDk8', '2021-11-28 11:28:46.978239'),
('xeu4iag7936ctuotlnbh8cep2s625li2', 'eyJyaW5ndG9uZV9kb3dubG9hZF82MCI6dHJ1ZX0:1mDiQN:eh9wWbMzuNcj7qSWKg1uTSAHiZGmYImJ3_XeM_2LPSs', '2021-08-25 07:13:15.088727'),
('xf7fs8kb6if1r1suu7ipfihhp4vkbzvx', 'eyJyaW5ndG9uZV9kb3dubG9hZF8zMSI6dHJ1ZX0:1m5owU:Dao2fBt-SiezWPJ-HYWrej3H2ZiN5JzQN_V6Lgk1VYM', '2021-08-03 12:33:46.566983'),
('xfpjq9yzocpcjet2ch5do01fj50okihf', '.eJxVjEsOAiEQBe_C2hA-DQGX7j0DaZpGRg2TzGc18e6GZBa6fVX1DpFw31raV17SVMRVaHH53TLSi_sA5Yn9MUua-7ZMWQ5FnnSV97nw-3a6fwcN1zZqUAGCsd4RGkNU2SquWhmbM1fjS_EADNG7ogM4IKuI2FLWGCGiE58v4EQ38Q:1m2dqc:AIizgVyGlK5QTcKVLZKYpYkIdRvd6blh_fMd6ZBOqqs', '2021-07-25 18:06:34.756643'),
('xi9z6qhuorxc5sgqb9izsosyl7xx273n', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKRib6Bpb6RgZGhjoKBkZWhoZWJhZ6SjlJqUVF-EcKQPKDmWgDj1h7c:1mTVXQ:MCL5NqBsuGsrZH9rlgN2G9_NZd-L7-g_zV6gILqRzDM', '2021-10-07 20:41:48.640656'),
('xkc8o43xmkcv2nqqe0l0eb9yhsun2xrg', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKhqb6hob6RgZGhjoKBsZWBgZWRpZ6SjlJqUVF-EcKQPKDmWgDiiR7T:1mmYJp:T9A2ovAe5rmVB8uoeURJatAkffHLpqi2EkHJNQi3LVU', '2021-11-29 09:30:29.235589'),
('xkn9rx373qdsj0uyt03ziewcckidn02c', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMDQiOnRydWV9:1mdx2U:ZTzwJvlSmsfZnFn2fY3WkwrugAFJs8ddgq3lbKB9zsw', '2021-11-05 16:05:02.354710'),
('xm3cztkibhsl4fjkf2lyrpvrt6s8lynu', '.eJyrVirKzEsvyc9LjS9KTUwuiTdUsiopKk3VQRc3hojXAgDOMhJr:1lplNw:N6FqoP3t9BbfBT3q6mkWgj0bzbkbh_8jJ22bFGc3a6k', '2021-06-20 05:31:44.084436'),
('xqsbbsbpfbw4gd4vbg4mmyqogru2hh3a', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yOCI6dHJ1ZX0:1m6LqI:C8oDwNxNYKzCd8wCOFQ5DF0nPf6pccE23cNSYqpzg08', '2021-08-04 23:41:34.439846'),
('xrvln5ev5hytzimkp8swig6jubg4o3ad', '.eJyrVirKzEsvyc9LjU_JL8_LyU9Mibc0VLIqKSpN1cEiZ2KCW87SDLecoQGmxqLUxOQShEwtAFYLM20:1mc20M:Iv-f_BQaFajY80Q5TrW2ef4sus7vMRTuhohuSmScYzM', '2021-10-31 08:58:54.949390'),
('xsbom2j5e8ovi8iotenps618l8zqoh89', 'eyJyaW5ndG9uZV9kb3dubG9hZF84MCI6dHJ1ZX0:1mKDMO:5TaRgVakcyiU3uM2E1ScvwUDQFlKBy20R7OdS9U8VOQ', '2021-09-12 05:28:00.584179'),
('xskpdr6iucxjaafh01djt5wrydb1gsfy', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMTUiOnRydWV9:1mmZMl:9F9qVqPWgVIWA5oZdsScSXKIghvPw3z_GNn161vNaRU', '2021-11-29 10:37:35.279107'),
('xu3qrkd1awqpr36ofogbsggfon59jkqp', 'eyJyaW5ndG9uZV9kb3dubG9hZF84MCI6dHJ1ZX0:1mNc7J:CHT_1ikV7L8Ax8eIMD4m3vxIYMdPIvV4Mw2Cyv6p7b4', '2021-09-21 14:30:29.667759'),
('xv6phhd600gyg4by1j6xxggazycpldeh', '.eJyrVirKzEsvyc9LjS9KTUwuiTcyUrIqKSpN1UGXMFWySkvMKcaUMDGF6KgFADjKG_E:1lw2FR:JdGfxN7VIStYKaR7DpJN7whvtdEgPQIiKzfIa-OD-_Y', '2021-07-07 12:44:53.732256'),
('y242oeu6gr5x9d9ekhdbbnslp4kksrt2', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKRsb6hgb6RgZGhjoKBoZWxsZWJpZ6SjlJqUVF-EcKQPKDmWgDi2B7X:1meC0L:EEnzl8ToU99hHswa0_DTuBICL_A8lJr0UmdooyFagGw', '2021-11-06 08:03:49.549191'),
('y2f2m5rjnji2hpw821cc563vv3zjdcht', 'eyJyaW5ndG9uZV9kb3dubG9hZF8zMSI6dHJ1ZX0:1mK0UV:h-24DC0rcxq0FGrTY74dLc86NwZUqWYczQ-VLqrLVqk', '2021-09-11 15:43:31.807581'),
('y2gfrhjdul1l7lhoqb8rolk10b653911', '.eJyrVirKzEsvyc9LjS9KTUwuiTcyUbIqKSpN1UFIpOSX5-XkJ6bA5WoBK58UHA:1m3sUB:tPoE2KpGb_P2i3hnm4VBqO5JbHSsEnOxXp8k2FnbHto', '2021-07-29 03:56:31.388419'),
('y2ohwsamcx4gyrifvc0ac5nficqtnocd', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKBpb6hob6RgZGhjoKhkZWpgZWphZ6SjlJqUVF-EcKQPKDmWgDj0B7d:1mkACQ:k6OLp7Ls6A2rifstzEEv8JLD6CxShQ0aY37R-EzmKr8', '2021-11-22 19:20:58.328996'),
('y2y15uar6x02zhdlntsckuo5m5n4l8ua', 'eyJyaW5ndG9uZV9kb3dubG9hZF80NSI6dHJ1ZX0:1mnHHN:jfC5_k__x2UaPQqEOiqp1-U85VAx5Dwh4wlKO3aIPgY', '2021-12-01 09:30:57.154318'),
('y3qxzbwxetu2g7u7hf7ix0w6fvbmv04o', '.eJyrVirKzEsvyc9LjS9KTUwuiTcyVrIqKSpN1UGXMDSwVLJKS8wpxiJlYoAplZJfnpeTn5gCkUUzEiEJMhWXpKUhRK4WAJDpPBk:1mtKmQ:DkfdHXKuE4H5I1OgIciHlUWkEVMCDZ0HitxX-ER4zRY', '2021-12-18 02:28:02.439146'),
('y6etsbwxo01c545iusismpmpd0ussofc', 'eyJyaW5ndG9uZV9kb3dubG9hZF84MCI6dHJ1ZX0:1mMD6B:ovY49mspB3ueeY2lRDVYO8jYfv_FefwuzEI6REzXt1E', '2021-09-17 17:35:31.709609'),
('y9njym184wq4tthzv7qoigmzdnbdut6x', 'eyJyaW5ndG9uZV9kb3dubG9hZF82MCI6dHJ1ZX0:1mhbi6:V9KO9iPfZ0XdelSpqyzCtEga9mWys2wQQ0-F3TjgbeU', '2021-11-15 18:07:06.483412'),
('y9qs5z4y6jiq08c20iqgx7a9tbp84msw', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MibcwUbIqKSpN1cEiZ2QOkasFAHOlFW4:1mKN9U:Z3kk4Cy11uhnQy3I8Feyt4R8Cyk05s47zu-lDCSVxSk', '2021-09-12 15:55:20.295106'),
('yat7n26vnh192z4dgh8fgwog4k8el7rp', 'eyJyaW5ndG9uZV9kb3dubG9hZF8zMiI6dHJ1ZX0:1lv0t7:P_aJVWaQzyV0WFo5Z8BvlFwcclp4Vb-zoSqbq6xqAME', '2021-07-04 17:05:37.484579'),
('ybcoqhayi6rl39uv05lbkt6r7d17cnfv', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xNTQiOnRydWV9:1mxlJu:FtAC9ByQKkPmGr7KuhlMOLE3K5hg1qwRyfuNKxA0gYM', '2021-12-30 07:36:54.358171'),
('yeq9exm2n4z1t4d6orp2ohhqdcjlnzxv', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKBhb6hkb6RgZGhjoKBqZWxpZWpqZ6SjlJqUVF-EcKQPKDmWgDkgR7j:1muvlj:o_IZ-dg0KcSiDqki4SY2lYnBg1BgKh7tSABxxOIfB2c', '2021-12-22 12:09:55.478193'),
('yf9js3twbyj1puklkipn52i7054d2nrw', 'eyJyaW5ndG9uZV9kb3dubG9hZF82MCI6dHJ1ZX0:1mau3x:SgX6p5eG1pwDWxkO2jSNAXRMEwgVuu2k3wWj7rU-0tk', '2021-10-28 06:17:57.704856'),
('yhhgbn23ucnkqc8up6prwonrizs0enhi', '.eJxVjsEOgjAQRP-lZ9NAWwh49O43NNvdRaqVmrbowfjvQuQg13lvJvMWFuYy2jlzsp7EUdTi8J85wBtPK6ArTJcoMU4leSdXRW40y3MkDqfN3Q2MkMe1barOdEq3DYJSiAPrioe6Uto5HlRL1BrDpm8bqjvTGNQVImt0NfSmh2YZxXu2JcbgIFnyGVzg5dcAIfMPMvmyCx6Jn55f4ljSzJ8vHnxP3Q:1metOK:cDgGObg7dpBeabKge16Q5neHPOkSojpY_XqxtX7XIe0', '2021-11-08 06:23:28.207915'),
('yi7lat2qp4yuxqfl32sgqcbzvvhufo98', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yOSI6dHJ1ZX0:1m2Y0S:MakJlLDtZLpftMmI_5fDyVF9GBMhZ0LiHEq3mcd5nTI', '2021-07-25 11:52:20.215054'),
('yicxlkaljt0gkshby4lyajkfepl1bc6s', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTcxVbIqKSpN1cEmZw6RqwUAc0cVbQ:1mEB1p:RFlGMVp5iV6ln3qKleBbhwIR28OdjXeNYCsp7OEnMLQ', '2021-08-26 13:45:49.253847'),
('yjzwcy0rmw0ic503g3mshse4oyh04vsb', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yOCI6dHJ1ZX0:1m78IX:xlzIKzw2SZon__M__bNFOATZWibaFeez8BtELUcFvo4', '2021-08-07 03:25:57.510716'),
('ylfgipg5ardmf9tok05r5ccb7z4it5fb', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTcxVbIqKSpN1cEiZ2aCW84ct5SpMW45Y0OIXC0AatA0IQ:1m8XYR:m1N_BkNetj0PqulyFiJbDb44j4XR7sXPUoliet0uUSY', '2021-08-11 00:36:11.876630'),
('ym6waxknp83yka1rny2hfsr0ake2cmfn', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yMiI6dHJ1ZX0:1mnw52:ZM9siSajRwSgu8hLgEdeqQLkCLqKvq2VhnG_2xBue4Y', '2021-12-03 05:04:56.843766'),
('ynxrtgeed56i4dp3vn275ovcu8qir3dq', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTcyUbIqKSpN1cEiZ45byhSPlBkeOai-WgBEyjPy:1mNAEm:aElak6L23TPM-_-rP7bDQR0_jE7VEkkRFh9alX5qg80', '2021-09-20 08:44:20.239194'),
('yoqqq3o8owmcbf33muimsci6yrcfu1op', '.eJyrVkrOLY4vyc_PSUosik_JLE5MyklNUbJKS8wpTtUBS6amZJYoWZUUlUL5BUWpZZmp5VA1tQA_fRi5:1lpWEF:Gspw_as6e2OwiLYxroIHXABmGOx3CHXbLBhO9OyJpVY', '2021-06-19 13:20:43.655342'),
('yp7iot3u1eixuwg92vad51nxnphbbj0q', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yNCI6dHJ1ZX0:1mWG2C:rU1pgN8TFvO1jja1hBdvzbYxTs1NvSGmVIBEYRS5d90', '2021-10-15 10:44:56.916641'),
('yqblzd7eze559qg4lonc2zx0xqqn8gf9', 'eyJyaW5ndG9uZV9yZWFjdF80NSI6dHJ1ZX0:1m2dcs:u-LoPYzBr2MGPZXW40fdlwXpNsB313X-4J3EzseAtyY', '2021-07-25 17:52:22.738728'),
('yqsczpgrh26w8fdxpm85rrl531cxqx68', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMTAiOnRydWV9:1mdMdt:xdoM67CJqNlCb2uRpqZRCz1kg4OLJ_jXj65gl0RtyYM', '2021-11-04 01:13:13.090276'),
('yqz1sdmulcdxlupgj895sbldsz35jwti', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTcyULIqKSpN1cEiZ4ZHztAYt5ypGUSuFgBkkin8:1mQM3y:K7eD42FWMMui6ESZG6n3gSQ74GLmtXkmSxpdxALsmjA', '2021-09-29 03:58:22.734671'),
('ysndigtbbhox1loscztmpdq39zs2oo2u', 'eyJyaW5ndG9uZV9yZWFjdF80NyI6ZmFsc2V9:1m277i:TmpPLIgHPjXs2ZPePV-r6yAnYcZBG4SoKIU3-9c1NBw', '2021-07-24 07:10:02.727906'),
('yto37spo6eyh0kyyiin1rkea9kjlcrb5', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTczULIqKSpN1UHIFaUmJpfEm1lCJGoBMQcUJQ:1mBmUJ:PAJ_vp5PtulE4USpf7Lg51OB7uQzo79fhSZJCKAld5U', '2021-08-19 23:09:19.292270'),
('ywyg7fh0diudckvap635vqebfod5q9xp', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yNyI6dHJ1ZX0:1maUVy:8mXorMsxePwOsuUpCJbu5_SN3rzXqBZKmdMvmn_CFYU', '2021-10-27 03:01:10.708229'),
('yzb2619ed27pulf37tyrk7ztcxfdafgl', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MiTe1VLIqKSpN1cEmZwyRqwUAc-UVbw:1mADbx:a9MQEOnpd8nNeubQlWxqEoN3ANgdJfoIBieWkwLLobU', '2021-08-15 15:42:45.755778'),
('z20svwwwo3ix3rw7c5y7fytm5zizlsq4', 'eyJyaW5ndG9uZV9kb3dubG9hZF8zMiI6dHJ1ZX0:1m7uSL:Mx4omb3TQQrhmLKA3ejP4eMFquRRsH0t0k3dYVETA2w', '2021-08-09 06:51:17.962551'),
('z2k5lvyscrceg45jhyz7t4glgt32sg5b', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKBkb6hob6RgZGhjoKBhZWBqZWhiZ6SjlJqUVF-EcKQPKDmWgDibB7T:1mhjdq:wS5JIpbe6qZrzpyLmadYYWRkiQZCUOVfDjVYijvW73s', '2021-11-16 02:35:14.774103'),
('z2o8agpeq7tg9idbdwnm3unh8p84jfxo', 'eyJyaW5ndG9uZV9kb3dubG9hZF84Ijp0cnVlfQ:1mNvHg:Lh6LFtVHdkXUvnxmx0Fh9V5vMaChtKJAcdeDylE61CQ', '2021-09-22 10:58:28.529540'),
('z4bxa9mvutjy9x99jmht6f35nnm94yag', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKhhb6Bhb6RgZGhjoKBuZWJoZWhqZ6SjlJqUVF-EcKQPKDmWgDkhx7g:1mGB2x:4sw89eNdfPjsKYHljsMZzy26hRQXkXEosenylvgPA70', '2021-09-01 02:11:15.673900'),
('z52773aj0e1sy0ztp10tnqskfd0o5rlx', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMyI6dHJ1ZX0:1mh8SE:w1VNSMKnNNtTDBWML42nV8I7fRGL5DgnpOyiDo2Ke8A', '2021-11-14 10:52:46.720875'),
('z5a0zc13s9qkojj9x0t8fx7cgrp7rpc3', 'eyJyaW5ndG9uZV9kb3dubG9hZF80NSI6dHJ1ZX0:1mObCZ:NJSlopyZHcLO_g0RhrMCpBY9Ae6JW04XonjPurKFyPQ', '2021-09-24 07:43:59.139628');
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('z5iw4l760q6pvgss3bbk9a36vxedt1fk', '.eJx9kl0KwyAQhK8iPoc2_pZ6jR4gSGJCwSpoQimld29K_qC6vviwHzM7DvvG4e6G0TvTBKPbsRFYjWEy1f-cSABQkoDOP531usux1a3Gqtc2ZuxowS5li4hv8zi1rYmxecyPHgxW-LZM-snaF1rHKBo3Iu8Q4edanmlNSYUIUVwqSk-4wiYEHw4TN4vToBfwC9fCF1K2iEA3Vui3xH758t1DLTIQpEdxRIDugqT7d1GGrSIO1QCtYQyygi6Zi3THnoyDKllSQekEVKkotLOxzxdkYE0-:1lxmGz:R1LOiCB81CORHarlK8mkw11SSPVrJsbArwV5BTankGc', '2021-07-12 08:05:41.503836'),
('z64tue0t20failkg8lyil7ydetk5laww', 'eyJyaW5ndG9uZV9kb3dubG9hZF8xMTQiOnRydWV9:1mvUld:bAyEw9L3DdwoUvOoLYYq4QjXVrvYTP2b98If0Hlj290', '2021-12-24 01:32:09.639336'),
('z85acz62cqdua7pp0104pvtv3o7jk3ns', 'eyJyaW5ndG9uZV9kb3dubG9hZF8zMSI6dHJ1ZX0:1mGr3O:3yHL5EMLO0bow6wtYOQpz_M8krtSlk3-nuuxz0XQY_A', '2021-09-02 23:02:30.640112'),
('z8dgeqflokyoaccpsods06j4vhligtbq', 'eyJyaW5ndG9uZV9kb3dubG9hZF80NyI6dHJ1ZX0:1m5gal:cljpLLA_K1nKU5flQjTxRTVxy6sihCfLjRd-uH3iJr4', '2021-08-03 03:38:47.971335'),
('zafnz4krgx2yjhj6q5swg7c1vo44oyde', 'eyJyaW5ndG9uZV9kb3dubG9hZF82MCI6dHJ1ZX0:1mau3x:SgX6p5eG1pwDWxkO2jSNAXRMEwgVuu2k3wWj7rU-0tk', '2021-10-28 06:17:57.752149'),
('zbwwx9pw1brm4wql8ukesca3ztwpz3xp', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yOSI6dHJ1ZX0:1mE4Nd:RZa5hFP2RFyThRLhfTKPgjUEfgIoH-_-u9IF6b4TdCE', '2021-08-26 06:39:53.521146'),
('zcmnjvvntwur3iw4qpolzgbo5lf2k0z3', 'eyJyaW5ndG9uZV9kb3dubG9hZF81MyI6dHJ1ZX0:1lxtM3:HznSCI6ZeijVF-x-Avys8hPXttcPYFq8qXqDlEYpsNI', '2021-07-12 15:39:23.193810'),
('zcwgxuk6ixyv00lvun0hquwlh0q8e3pu', '.eJxVjkEOwiAQRe_C2jQUKGm7dO8ZyDAMFq3FANWF8e62kYUu_7w3P__FDKxlMmumZIJjI2vZ4fdmAa-07MBdYDnHBuNSUrDNrjSV5uYUHc3H6v4VTJCn_VvxXvVC6g5BCERPkpNvuZDWkhfaOa0UqUF3ru1Vp1ByRJJoWxjUAN1WirdsSoyzhWRcyGBn2nZ5mDN9IblQ2FjSWvM90SPQszrvDx_5T90:1mMsDd:kVrHitg139XRAQlPRkGCvKAL1IUY6wwKRNmYmChGrXc', '2021-09-19 13:29:57.452849'),
('zdign4oiimxksui7u6mgk27mnbkgmp2h', '.eJyrVirKzEsvyc9LjS9KTUwuiTdSsiopKk3VQRc3xhBPyS_Py8lPTMEnBTWtFgDUfSad:1lpbEI:hn1gpQJ-Y3-mo0J-ctH_7uKVTmMXCvZBKqmij9THtSE', '2021-06-19 18:41:06.835120'),
('zduxl44hrkwwi3tvzwa9bf0uhwaccvwc', '.eJyrVirKzEsvyc9LjU_JL8_LyU9MibcwUrIqKSpN1cEiZ2qJW84IKlcLAF6HH8I:1mRUEf:0dN65ANzc5bYTKJDgxhTEf5cjbjFVwfqdm-rjoUvDd4', '2021-10-02 06:54:05.149043'),
('zfjie3hyd84bagrbidd1kf9hj9nkoyug', '.eJxVjkEOwiAURO_C2jQFgVaX7j0D4cP_FsVigOrCeHfb2IXdvjczmTczdqqDmQpmEzw7Ms52_wysu-G4CH-14yU1Lo01B2iWSLPa0pyTx3has5uBwZZhaZMAkpqg7_bAgWPrtFJCq1ZLJ_ekkDhg1wvlLKEn6nnbdxqUPCiBkuZRdy-mphTBZuNDsRBx_kU2FvxJ9KFuwCPjM-BrZZ8vmGZQdg:1ltCkp:9tWTRpCiJ0OtVrrHpgpl4k6sVSFeTItCC2l8-1a0vp0', '2021-06-29 17:21:35.483062'),
('zflzz0olwa80tid8epqi62nwhg9vs9ma', 'eyJyaW5ndG9uZV9kb3dubG9hZF8zMSI6dHJ1ZX0:1md6iR:uoY6aZkIZ7XYbwhTMi0InnPZbwaeAMbtb41qokrFg28', '2021-11-03 08:12:51.876751'),
('zh9z144o89la71ivxnx7ap9uhpk9zn1j', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yMSI6dHJ1ZX0:1mCDO3:XjIiPrRJFCSFyyT3NMNY2mE1Ie91ZJkDrGAxH9LSL98', '2021-08-21 03:52:39.431015'),
('zjmx848v2zvfwf1p9cyjpg2x793z2tbg', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yNSI6dHJ1ZX0:1lw4pa:22WhT5ZvtKF9-GpD01fK1D_ahoaOz7jnsC4PM7aaD9I', '2021-07-07 15:30:22.483621'),
('zn23hyh0474i2mi3k750xjag2ivx5wzq', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yNCI6dHJ1ZX0:1mT2mD:xqY8wZJfRinu5EkjFLh9pCRkd_26KCZWDlyHfUWxYcg', '2021-10-06 13:59:09.338849'),
('zqxcfo38de5jsyfrjz0bbtvics2o0hkp', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yNyI6dHJ1ZX0:1mJxK2:LPyeKxnFoXYUN_hElpV3w0kdOpefqWGN3JNAzxEofyY', '2021-09-11 12:20:30.446521'),
('zvry3exeosggsp3jsjwabb5lrjoo2ms8', '.eJxVjsEOgjAQRP-lZ9NAWwh49O43NNvdRaqVmrbowfjvQuQg13lvJvMWFuYy2jlzsp7EUdTi8J85wBtPK6ArTJcoMU4leSdXRW40y3MkDqfN3Q2MkMe1barOdEq3DYJSiAPrioe6Uto5HlRL1BrDpm8bqjvTGNQVImt0NfSmh2YZxXu2JcbgIFnyGVzg5dcAIfMPMvmyCx6Jn55f4ljSzJ8vHnxP3Q:1mwIud:IztJ1lMobgzI7V9mBjc5O_QUCTtO2kagNq5jjNtqOjo', '2021-12-26 07:04:47.725402'),
('zwswwc8xxc55m465bt3wup1b12tvqzr6', 'eyJyaW5ndG9uZV9kb3dubG9hZF80NSI6dHJ1ZX0:1mk7iY:WBqvL3DxgKfYUcuAeDb0kUg4vilZVCgNSPyVgpWrwPA', '2021-11-22 16:41:58.910105'),
('zxr85qdr5w067ndxg2ydjxso26dr8m3w', 'eyJyaW5ndG9uZV9kb3dubG9hZF81NiI6dHJ1ZX0:1mJ7EV:GYoL1H6ACJpZyRA1nt9m51d0i9ABtT7qljoigh5jMk4', '2021-09-09 04:43:19.578358'),
('zybl9yojvik6r5mbrv61uor9rht8ls2n', '.eJyrViouTU5OLS6OzwUSiempSlZKwRCRtNKcnEoFqLBCcWpeiUJ-noKRkb6hob6RgZGhjoKBmZWBgZWBoZ6SjlJqUVF-EcKQPKDmWgDhlR7K:1mp8SP:Q9fmLc7D0RtjyYKaPmIU6ZsixQt6ZAwBKp0URSUr_3g', '2021-12-06 12:30:01.202186'),
('zydj2nn5ze0u50zcowbs0295atmktm99', '.eJxVjEsOAiEQBe_C2hA-DQGX7j0DaZpGRg2TzGc18e6GZBa6fVX1DpFw31raV17SVMRVaHH53TLSi_sA5Yn9MUua-7ZMWQ5FnnSV97nw-3a6fwcN1zZqUAGCsd4RGkNU2SquWhmbM1fjS_EADNG7ogM4IKuI2FLWGCGiE58v4EQ38Q:1m2eLf:bcYN6JfvT35eGyp0qvn5y66i9YHXsdfbf9QeQK7mcGQ', '2021-07-25 18:38:39.088373'),
('zyv4neu9jon9povjhf9prkrzxlv02uqh', 'eyJyaW5ndG9uZV9kb3dubG9hZF8yOSI6dHJ1ZX0:1lyywz:W7jmqf2scZdBTfgitLhzP-NznkHztfnBGBePtmYyMnM', '2021-07-15 15:50:01.068102');

-- --------------------------------------------------------

--
-- Table structure for table `django_site`
--

CREATE TABLE `django_site` (
  `id` int(11) NOT NULL,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, 'www.ringtonefly.co', 'www.ringtonefly.co');

-- --------------------------------------------------------

--
-- Table structure for table `easy_thumbnails_source`
--

CREATE TABLE `easy_thumbnails_source` (
  `id` int(11) NOT NULL,
  `storage_hash` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `modified` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `easy_thumbnails_thumbnail`
--

CREATE TABLE `easy_thumbnails_thumbnail` (
  `id` int(11) NOT NULL,
  `storage_hash` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `modified` datetime(6) NOT NULL,
  `source_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `easy_thumbnails_thumbnaildimensions`
--

CREATE TABLE `easy_thumbnails_thumbnaildimensions` (
  `id` int(11) NOT NULL,
  `thumbnail_id` int(11) NOT NULL,
  `width` int(10) UNSIGNED DEFAULT NULL CHECK (`width` >= 0),
  `height` int(10) UNSIGNED DEFAULT NULL CHECK (`height` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `filer_clipboard`
--

CREATE TABLE `filer_clipboard` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `filer_clipboarditem`
--

CREATE TABLE `filer_clipboarditem` (
  `id` int(11) NOT NULL,
  `clipboard_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `filer_file`
--

CREATE TABLE `filer_file` (
  `id` int(11) NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `_file_size` bigint(20) DEFAULT NULL,
  `sha1` varchar(40) NOT NULL,
  `has_all_mandatory_data` tinyint(1) NOT NULL,
  `original_filename` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `uploaded_at` datetime(6) NOT NULL,
  `modified_at` datetime(6) NOT NULL,
  `is_public` tinyint(1) NOT NULL,
  `folder_id` int(11) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `polymorphic_ctype_id` int(11) DEFAULT NULL,
  `mime_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `filer_folder`
--

CREATE TABLE `filer_folder` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `uploaded_at` datetime(6) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `modified_at` datetime(6) NOT NULL,
  `lft` int(10) UNSIGNED NOT NULL CHECK (`lft` >= 0),
  `rght` int(10) UNSIGNED NOT NULL CHECK (`rght` >= 0),
  `tree_id` int(10) UNSIGNED NOT NULL CHECK (`tree_id` >= 0),
  `level` int(10) UNSIGNED NOT NULL CHECK (`level` >= 0),
  `owner_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `filer_folderpermission`
--

CREATE TABLE `filer_folderpermission` (
  `id` int(11) NOT NULL,
  `type` smallint(6) NOT NULL,
  `everybody` tinyint(1) NOT NULL,
  `can_edit` smallint(6) DEFAULT NULL,
  `can_read` smallint(6) DEFAULT NULL,
  `can_add_children` smallint(6) DEFAULT NULL,
  `folder_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `filer_image`
--

CREATE TABLE `filer_image` (
  `file_ptr_id` int(11) NOT NULL,
  `_height` int(11) DEFAULT NULL,
  `_width` int(11) DEFAULT NULL,
  `date_taken` datetime(6) DEFAULT NULL,
  `default_alt_text` varchar(255) DEFAULT NULL,
  `default_caption` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `must_always_publish_author_credit` tinyint(1) NOT NULL,
  `must_always_publish_copyright` tinyint(1) NOT NULL,
  `subject_location` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `filer_thumbnailoption`
--

CREATE TABLE `filer_thumbnailoption` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `crop` tinyint(1) NOT NULL,
  `upscale` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `menus_cachekey`
--

CREATE TABLE `menus_cachekey` (
  `id` int(11) NOT NULL,
  `language` varchar(255) NOT NULL,
  `site` int(10) UNSIGNED NOT NULL CHECK (`site` >= 0),
  `key` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menus_cachekey`
--

INSERT INTO `menus_cachekey` (`id`, `language`, `site`, `key`) VALUES
(588, 'en', 1, 'cms_3.8.0_menu_nodes_en_1:public'),
(589, 'en', 1, 'cms_3.8.0_menu_nodes_en_1_1_user:draft');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads_txt_rule`
--
ALTER TABLE `ads_txt_rule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ads_txt_rule_sites`
--
ALTER TABLE `ads_txt_rule_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ads_txt_rule_sites_rule_id_site_id_1438f7d7_uniq` (`rule_id`,`site_id`),
  ADD KEY `ads_txt_rule_sites_site_id_adb2f07f_fk_django_site_id` (`site_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `bootstrap4_alerts_bootstrap4alerts`
--
ALTER TABLE `bootstrap4_alerts_bootstrap4alerts`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `bootstrap4_badge_bootstrap4badge`
--
ALTER TABLE `bootstrap4_badge_bootstrap4badge`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `bootstrap4_card_bootstrap4card`
--
ALTER TABLE `bootstrap4_card_bootstrap4card`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `bootstrap4_card_bootstrap4cardinner`
--
ALTER TABLE `bootstrap4_card_bootstrap4cardinner`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `bootstrap4_carousel_bootstrap4carousel`
--
ALTER TABLE `bootstrap4_carousel_bootstrap4carousel`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `bootstrap4_carousel_bootstrap4carouselslide`
--
ALTER TABLE `bootstrap4_carousel_bootstrap4carouselslide`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`),
  ADD KEY `bootstrap4_carousel__internal_link_id_9040d8b6_fk_cms_page_` (`internal_link_id`),
  ADD KEY `bootstrap4_carousel_bootstr_carousel_image_id_c7547e1f` (`carousel_image_id`),
  ADD KEY `bootstrap4_carousel_bootstr_file_link_id_926e466f` (`file_link_id`);

--
-- Indexes for table `bootstrap4_collapse_bootstrap4collapse`
--
ALTER TABLE `bootstrap4_collapse_bootstrap4collapse`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `bootstrap4_collapse_bootstrap4collapsecontainer`
--
ALTER TABLE `bootstrap4_collapse_bootstrap4collapsecontainer`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`),
  ADD KEY `bootstrap4_collapse_bootstr_identifier_ed2446e8` (`identifier`);

--
-- Indexes for table `bootstrap4_collapse_bootstrap4collapsetrigger`
--
ALTER TABLE `bootstrap4_collapse_bootstrap4collapsetrigger`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`),
  ADD KEY `bootstrap4_collapse_bootstr_identifier_70258b88` (`identifier`);

--
-- Indexes for table `bootstrap4_content_bootstrap4blockquote`
--
ALTER TABLE `bootstrap4_content_bootstrap4blockquote`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `bootstrap4_content_bootstrap4code`
--
ALTER TABLE `bootstrap4_content_bootstrap4code`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `bootstrap4_content_bootstrap4figure`
--
ALTER TABLE `bootstrap4_content_bootstrap4figure`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `bootstrap4_grid_bootstrap4gridcolumn`
--
ALTER TABLE `bootstrap4_grid_bootstrap4gridcolumn`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `bootstrap4_grid_bootstrap4gridcontainer`
--
ALTER TABLE `bootstrap4_grid_bootstrap4gridcontainer`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `bootstrap4_grid_bootstrap4gridrow`
--
ALTER TABLE `bootstrap4_grid_bootstrap4gridrow`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `bootstrap4_jumbotron_bootstrap4jumbotron`
--
ALTER TABLE `bootstrap4_jumbotron_bootstrap4jumbotron`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `bootstrap4_link_bootstrap4link`
--
ALTER TABLE `bootstrap4_link_bootstrap4link`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`),
  ADD KEY `bootstrap4_link_boot_internal_link_id_bc4ec61e_fk_cms_page_` (`internal_link_id`),
  ADD KEY `bootstrap4_link_bootstrap4link_file_link_id_73e3dbff` (`file_link_id`);

--
-- Indexes for table `bootstrap4_listgroup_bootstrap4listgroup`
--
ALTER TABLE `bootstrap4_listgroup_bootstrap4listgroup`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `bootstrap4_listgroup_bootstrap4listgroupitem`
--
ALTER TABLE `bootstrap4_listgroup_bootstrap4listgroupitem`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `bootstrap4_media_bootstrap4media`
--
ALTER TABLE `bootstrap4_media_bootstrap4media`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `bootstrap4_media_bootstrap4mediabody`
--
ALTER TABLE `bootstrap4_media_bootstrap4mediabody`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `bootstrap4_picture_bootstrap4picture`
--
ALTER TABLE `bootstrap4_picture_bootstrap4picture`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`),
  ADD KEY `bootstrap4_picture_b_thumbnail_options_id_15520a42_fk_filer_thu` (`thumbnail_options_id`),
  ADD KEY `bootstrap4_picture_bootstrap4picture_link_page_id_f01c1a21` (`link_page_id`),
  ADD KEY `bootstrap4_picture_bootstrap4picture_picture_id_f26d968d` (`picture_id`);

--
-- Indexes for table `bootstrap4_tabs_bootstrap4tab`
--
ALTER TABLE `bootstrap4_tabs_bootstrap4tab`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `bootstrap4_tabs_bootstrap4tabitem`
--
ALTER TABLE `bootstrap4_tabs_bootstrap4tabitem`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `bootstrap4_utilities_bootstrap4spacing`
--
ALTER TABLE `bootstrap4_utilities_bootstrap4spacing`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `cms_aliaspluginmodel`
--
ALTER TABLE `cms_aliaspluginmodel`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`),
  ADD KEY `cms_aliaspluginmodel_plugin_id_9867676e_fk_cms_cmsplugin_id` (`plugin_id`),
  ADD KEY `cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a_fk_cms_place` (`alias_placeholder_id`);

--
-- Indexes for table `cms_cmsplugin`
--
ALTER TABLE `cms_cmsplugin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cms_cmsplugin_path_4917bb44_uniq` (`path`),
  ADD KEY `cms_cmsplugin_parent_id_fd3bd9dd_fk_cms_cmsplugin_id` (`parent_id`),
  ADD KEY `cms_cmsplugin_language_bbea8a48` (`language`),
  ADD KEY `cms_cmsplugin_plugin_type_94e96ebf` (`plugin_type`),
  ADD KEY `cms_cmsplugin_placeholder_id_0bfa3b26_fk_cms_placeholder_id` (`placeholder_id`);

--
-- Indexes for table `cms_globalpagepermission`
--
ALTER TABLE `cms_globalpagepermission`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_globalpagepermission_group_id_991b4733_fk_auth_group_id` (`group_id`),
  ADD KEY `cms_globalpagepermission_user_id_a227cee1_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `cms_globalpagepermission_sites`
--
ALTER TABLE `cms_globalpagepermission_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cms_globalpagepermission_globalpagepermission_id__db684f41_uniq` (`globalpagepermission_id`,`site_id`),
  ADD KEY `cms_globalpagepermis_site_id_00460b53_fk_django_si` (`site_id`);

--
-- Indexes for table `cms_page`
--
ALTER TABLE `cms_page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cms_page_node_id_publisher_is_draft_c1293d6a_uniq` (`node_id`,`publisher_is_draft`),
  ADD UNIQUE KEY `publisher_public_id` (`publisher_public_id`),
  ADD KEY `cms_page_publication_date_684fabf7` (`publication_date`),
  ADD KEY `cms_page_publication_end_date_12a0c46a` (`publication_end_date`),
  ADD KEY `cms_page_in_navigation_01c24279` (`in_navigation`),
  ADD KEY `cms_page_soft_root_51efccbe` (`soft_root`),
  ADD KEY `cms_page_reverse_id_ffc9ede2` (`reverse_id`),
  ADD KEY `cms_page_navigation_extenders_c24af8dd` (`navigation_extenders`),
  ADD KEY `cms_page_limit_visibility_in_menu_30db6aa6` (`limit_visibility_in_menu`),
  ADD KEY `cms_page_is_home_edadca07` (`is_home`),
  ADD KEY `cms_page_application_urls_9ef47497` (`application_urls`),
  ADD KEY `cms_page_publisher_is_draft_141cba60` (`publisher_is_draft`);

--
-- Indexes for table `cms_pagepermission`
--
ALTER TABLE `cms_pagepermission`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_pagepermission_group_id_af5af193_fk_auth_group_id` (`group_id`),
  ADD KEY `cms_pagepermission_page_id_0ae9a163_fk_cms_page_id` (`page_id`),
  ADD KEY `cms_pagepermission_user_id_0c7d2b3c_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `cms_pageuser`
--
ALTER TABLE `cms_pageuser`
  ADD PRIMARY KEY (`user_ptr_id`),
  ADD KEY `cms_pageuser_created_by_id_8e9fbf83_fk_auth_user_id` (`created_by_id`);

--
-- Indexes for table `cms_pageusergroup`
--
ALTER TABLE `cms_pageusergroup`
  ADD PRIMARY KEY (`group_ptr_id`),
  ADD KEY `cms_pageusergroup_created_by_id_7d57fa39_fk_auth_user_id` (`created_by_id`);

--
-- Indexes for table `cms_page_placeholders`
--
ALTER TABLE `cms_page_placeholders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cms_page_placeholders_page_id_placeholder_id_ab7fbfb8_uniq` (`page_id`,`placeholder_id`),
  ADD KEY `cms_page_placeholder_placeholder_id_6b120886_fk_cms_place` (`placeholder_id`);

--
-- Indexes for table `cms_placeholder`
--
ALTER TABLE `cms_placeholder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_placeholder_slot_0bc04d21` (`slot`);

--
-- Indexes for table `cms_placeholderreference`
--
ALTER TABLE `cms_placeholderreference`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`),
  ADD KEY `cms_placeholderreference_placeholder_ref_id_244759b1` (`placeholder_ref_id`);

--
-- Indexes for table `cms_staticplaceholder`
--
ALTER TABLE `cms_staticplaceholder`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cms_staticplaceholder_code_site_id_21ba079c_uniq` (`code`,`site_id`),
  ADD KEY `cms_staticplaceholder_site_id_dc6a85b6_fk_django_site_id` (`site_id`),
  ADD KEY `cms_staticplaceholder_draft_id_5aee407b` (`draft_id`),
  ADD KEY `cms_staticplaceholder_public_id_876aaa66` (`public_id`);

--
-- Indexes for table `cms_title`
--
ALTER TABLE `cms_title`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cms_title_language_page_id_61aaf084_uniq` (`language`,`page_id`),
  ADD UNIQUE KEY `publisher_public_id` (`publisher_public_id`),
  ADD KEY `cms_title_page_id_5fade2a3_fk_cms_page_id` (`page_id`),
  ADD KEY `cms_title_language_50a0dfa1` (`language`),
  ADD KEY `cms_title_slug_4947d146` (`slug`),
  ADD KEY `cms_title_path_c484314c` (`path`),
  ADD KEY `cms_title_has_url_overwrite_ecf27bb9` (`has_url_overwrite`),
  ADD KEY `cms_title_publisher_is_draft_95874c88` (`publisher_is_draft`),
  ADD KEY `cms_title_publisher_state_9a952b0f` (`publisher_state`);

--
-- Indexes for table `cms_treenode`
--
ALTER TABLE `cms_treenode`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `path` (`path`),
  ADD KEY `cms_treenode_parent_id_59bb02c4_fk_cms_treenode_id` (`parent_id`),
  ADD KEY `cms_treenode_site_id_d3f46985_fk_django_site_id` (`site_id`);

--
-- Indexes for table `cms_urlconfrevision`
--
ALTER TABLE `cms_urlconfrevision`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_usersettings`
--
ALTER TABLE `cms_usersettings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `cms_usersettings_clipboard_id_3ae17c19_fk_cms_placeholder_id` (`clipboard_id`);

--
-- Indexes for table `config_aboutusplugin`
--
ALTER TABLE `config_aboutusplugin`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `config_category`
--
ALTER TABLE `config_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `config_category_sortable_id_91c69bf6_fk_config_ca` (`sortable_id`),
  ADD KEY `config_category_title_id_4c78295c_fk_cms_title_id` (`title_id`),
  ADD KEY `config_category_page_id_7bcba9c4_fk_cms_page_id` (`page_id`);

--
-- Indexes for table `config_categorypanelplugin`
--
ALTER TABLE `config_categorypanelplugin`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `config_categoryplugin`
--
ALTER TABLE `config_categoryplugin`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `config_contactus`
--
ALTER TABLE `config_contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `config_contactusplugin`
--
ALTER TABLE `config_contactusplugin`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `config_containerplugin`
--
ALTER TABLE `config_containerplugin`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `config_containerpluginv2`
--
ALTER TABLE `config_containerpluginv2`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `config_favoriteplugin`
--
ALTER TABLE `config_favoriteplugin`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `config_fetchringtoneplugin`
--
ALTER TABLE `config_fetchringtoneplugin`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `config_footerhyperlink`
--
ALTER TABLE `config_footerhyperlink`
  ADD PRIMARY KEY (`id`),
  ADD KEY `config_footerhyperli_sortable_id_7f11143e_fk_config_fo` (`sortable_id`);

--
-- Indexes for table `config_footerplugin`
--
ALTER TABLE `config_footerplugin`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `config_limitationobject`
--
ALTER TABLE `config_limitationobject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `config_linkmodel`
--
ALTER TABLE `config_linkmodel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `config_linkmodel_sortable_id_4e25077b_fk_config_se` (`sortable_id`);

--
-- Indexes for table `config_metamodel`
--
ALTER TABLE `config_metamodel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `config_metamodel_sortable_id_f0c0f60a_fk_config_se` (`sortable_id`);

--
-- Indexes for table `config_ringtone`
--
ALTER TABLE `config_ringtone`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `config_ringtone_category_id_a7fb26a1_fk_config_category_id` (`category_id`),
  ADD KEY `config_ringtone_page_id_458a6a3d_fk_cms_page_id` (`page_id`),
  ADD KEY `config_ringtone_title_id_7860bb07_fk_cms_title_id` (`title_id`);

--
-- Indexes for table `config_seotool`
--
ALTER TABLE `config_seotool`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `config_singlefavoriteplugin`
--
ALTER TABLE `config_singlefavoriteplugin`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `config_singleringtoneplugin`
--
ALTER TABLE `config_singleringtoneplugin`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`),
  ADD KEY `config_singlerington_ringtone_id_9a726c64_fk_config_ri` (`ringtone_id`);

--
-- Indexes for table `config_siteconfig`
--
ALTER TABLE `config_siteconfig`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `config_top50`
--
ALTER TABLE `config_top50`
  ADD PRIMARY KEY (`id`),
  ADD KEY `config_top50_ringtone_id_18718a11_fk_config_ringtone_id` (`ringtone_id`),
  ADD KEY `config_top50_sortable_id_9df77248_fk_config_fa` (`sortable_id`);

--
-- Indexes for table `djangocms_googlemap_googlemap`
--
ALTER TABLE `djangocms_googlemap_googlemap`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `djangocms_googlemap_googlemapmarker`
--
ALTER TABLE `djangocms_googlemap_googlemapmarker`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`),
  ADD KEY `djangocms_googlemap_googlemapmarker_icon_id_3b103213` (`icon_id`);

--
-- Indexes for table `djangocms_googlemap_googlemaproute`
--
ALTER TABLE `djangocms_googlemap_googlemaproute`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `djangocms_icon_icon`
--
ALTER TABLE `djangocms_icon_icon`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `djangocms_link_link`
--
ALTER TABLE `djangocms_link_link`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`),
  ADD KEY `djangocms_link_link_internal_link_id_41549c8e_fk_cms_page_id` (`internal_link_id`),
  ADD KEY `djangocms_link_link_file_link_id_c7869e4c` (`file_link_id`);

--
-- Indexes for table `djangocms_picture_picture`
--
ALTER TABLE `djangocms_picture_picture`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`),
  ADD KEY `djangocms_picture_picture_picture_id_f7d6711b` (`picture_id`),
  ADD KEY `djangocms_picture_pi_thumbnail_options_id_59cf80d1_fk_filer_thu` (`thumbnail_options_id`),
  ADD KEY `djangocms_picture_picture_link_page_id_dbec9beb_fk_cms_page_id` (`link_page_id`);

--
-- Indexes for table `djangocms_style_style`
--
ALTER TABLE `djangocms_style_style`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `djangocms_text_ckeditor_text`
--
ALTER TABLE `djangocms_text_ckeditor_text`
  ADD PRIMARY KEY (`cmsplugin_ptr_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_redirect`
--
ALTER TABLE `django_redirect`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_redirect_site_id_old_path_ac5dd16b_uniq` (`site_id`,`old_path`),
  ADD KEY `django_redirect_old_path_c6cc94d3` (`old_path`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `django_site`
--
ALTER TABLE `django_site`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`);

--
-- Indexes for table `easy_thumbnails_source`
--
ALTER TABLE `easy_thumbnails_source`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `easy_thumbnails_source_storage_hash_name_481ce32d_uniq` (`storage_hash`,`name`),
  ADD KEY `easy_thumbnails_source_storage_hash_946cbcc9` (`storage_hash`),
  ADD KEY `easy_thumbnails_source_name_5fe0edc6` (`name`);

--
-- Indexes for table `easy_thumbnails_thumbnail`
--
ALTER TABLE `easy_thumbnails_thumbnail`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `easy_thumbnails_thumbnai_storage_hash_name_source_fb375270_uniq` (`storage_hash`,`name`,`source_id`),
  ADD KEY `easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum` (`source_id`),
  ADD KEY `easy_thumbnails_thumbnail_storage_hash_f1435f49` (`storage_hash`),
  ADD KEY `easy_thumbnails_thumbnail_name_b5882c31` (`name`);

--
-- Indexes for table `easy_thumbnails_thumbnaildimensions`
--
ALTER TABLE `easy_thumbnails_thumbnaildimensions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `thumbnail_id` (`thumbnail_id`);

--
-- Indexes for table `filer_clipboard`
--
ALTER TABLE `filer_clipboard`
  ADD PRIMARY KEY (`id`),
  ADD KEY `filer_clipboard_user_id_b52ff0bc_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `filer_clipboarditem`
--
ALTER TABLE `filer_clipboarditem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `filer_clipboarditem_file_id_06196f80_fk_filer_file_id` (`file_id`),
  ADD KEY `filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id` (`clipboard_id`);

--
-- Indexes for table `filer_file`
--
ALTER TABLE `filer_file`
  ADD PRIMARY KEY (`id`),
  ADD KEY `filer_file_folder_id_af803bbb_fk_filer_folder_id` (`folder_id`),
  ADD KEY `filer_file_polymorphic_ctype_id_f44903c1_fk_django_co` (`polymorphic_ctype_id`),
  ADD KEY `filer_file_owner_id_b9e32671_fk_auth_user_id` (`owner_id`);

--
-- Indexes for table `filer_folder`
--
ALTER TABLE `filer_folder`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `filer_folder_parent_id_name_bc773258_uniq` (`parent_id`,`name`),
  ADD KEY `filer_folder_tree_id_b016223c` (`tree_id`),
  ADD KEY `filer_folder_owner_id_be530fb4_fk_auth_user_id` (`owner_id`),
  ADD KEY `filer_folder_tree_id_lft_088ce52b_idx` (`tree_id`,`lft`);

--
-- Indexes for table `filer_folderpermission`
--
ALTER TABLE `filer_folderpermission`
  ADD PRIMARY KEY (`id`),
  ADD KEY `filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id` (`folder_id`),
  ADD KEY `filer_folderpermission_group_id_8901bafa_fk_auth_group_id` (`group_id`),
  ADD KEY `filer_folderpermission_user_id_7673d4b6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `filer_image`
--
ALTER TABLE `filer_image`
  ADD PRIMARY KEY (`file_ptr_id`);

--
-- Indexes for table `filer_thumbnailoption`
--
ALTER TABLE `filer_thumbnailoption`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus_cachekey`
--
ALTER TABLE `menus_cachekey`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads_txt_rule`
--
ALTER TABLE `ads_txt_rule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ads_txt_rule_sites`
--
ALTER TABLE `ads_txt_rule_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=357;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=357;

--
-- AUTO_INCREMENT for table `cms_cmsplugin`
--
ALTER TABLE `cms_cmsplugin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1006;

--
-- AUTO_INCREMENT for table `cms_globalpagepermission`
--
ALTER TABLE `cms_globalpagepermission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_globalpagepermission_sites`
--
ALTER TABLE `cms_globalpagepermission_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_page`
--
ALTER TABLE `cms_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=362;

--
-- AUTO_INCREMENT for table `cms_pagepermission`
--
ALTER TABLE `cms_pagepermission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_page_placeholders`
--
ALTER TABLE `cms_page_placeholders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=362;

--
-- AUTO_INCREMENT for table `cms_placeholder`
--
ALTER TABLE `cms_placeholder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=364;

--
-- AUTO_INCREMENT for table `cms_staticplaceholder`
--
ALTER TABLE `cms_staticplaceholder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_title`
--
ALTER TABLE `cms_title`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=362;

--
-- AUTO_INCREMENT for table `cms_treenode`
--
ALTER TABLE `cms_treenode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `cms_urlconfrevision`
--
ALTER TABLE `cms_urlconfrevision`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_usersettings`
--
ALTER TABLE `cms_usersettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `config_category`
--
ALTER TABLE `config_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `config_contactus`
--
ALTER TABLE `config_contactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;

--
-- AUTO_INCREMENT for table `config_footerhyperlink`
--
ALTER TABLE `config_footerhyperlink`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `config_limitationobject`
--
ALTER TABLE `config_limitationobject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `config_linkmodel`
--
ALTER TABLE `config_linkmodel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `config_metamodel`
--
ALTER TABLE `config_metamodel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `config_ringtone`
--
ALTER TABLE `config_ringtone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `config_siteconfig`
--
ALTER TABLE `config_siteconfig`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `config_top50`
--
ALTER TABLE `config_top50`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=816;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `django_redirect`
--
ALTER TABLE `django_redirect`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `django_site`
--
ALTER TABLE `django_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `easy_thumbnails_source`
--
ALTER TABLE `easy_thumbnails_source`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `easy_thumbnails_thumbnail`
--
ALTER TABLE `easy_thumbnails_thumbnail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `easy_thumbnails_thumbnaildimensions`
--
ALTER TABLE `easy_thumbnails_thumbnaildimensions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `filer_clipboard`
--
ALTER TABLE `filer_clipboard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `filer_clipboarditem`
--
ALTER TABLE `filer_clipboarditem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `filer_file`
--
ALTER TABLE `filer_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `filer_folder`
--
ALTER TABLE `filer_folder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `filer_folderpermission`
--
ALTER TABLE `filer_folderpermission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `filer_thumbnailoption`
--
ALTER TABLE `filer_thumbnailoption`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus_cachekey`
--
ALTER TABLE `menus_cachekey`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=590;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ads_txt_rule_sites`
--
ALTER TABLE `ads_txt_rule_sites`
  ADD CONSTRAINT `ads_txt_rule_sites_rule_id_c4321cf4_fk_ads_txt_rule_id` FOREIGN KEY (`rule_id`) REFERENCES `ads_txt_rule` (`id`),
  ADD CONSTRAINT `ads_txt_rule_sites_site_id_adb2f07f_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `bootstrap4_alerts_bootstrap4alerts`
--
ALTER TABLE `bootstrap4_alerts_bootstrap4alerts`
  ADD CONSTRAINT `bootstrap4_alerts_bo_cmsplugin_ptr_id_16c9e6e1_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `bootstrap4_badge_bootstrap4badge`
--
ALTER TABLE `bootstrap4_badge_bootstrap4badge`
  ADD CONSTRAINT `bootstrap4_badge_boo_cmsplugin_ptr_id_1cfc1292_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `bootstrap4_card_bootstrap4card`
--
ALTER TABLE `bootstrap4_card_bootstrap4card`
  ADD CONSTRAINT `bootstrap4_card_boot_cmsplugin_ptr_id_c6cf1064_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `bootstrap4_card_bootstrap4cardinner`
--
ALTER TABLE `bootstrap4_card_bootstrap4cardinner`
  ADD CONSTRAINT `bootstrap4_card_boot_cmsplugin_ptr_id_8c0b627d_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `bootstrap4_carousel_bootstrap4carousel`
--
ALTER TABLE `bootstrap4_carousel_bootstrap4carousel`
  ADD CONSTRAINT `bootstrap4_carousel__cmsplugin_ptr_id_d97c4671_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `bootstrap4_carousel_bootstrap4carouselslide`
--
ALTER TABLE `bootstrap4_carousel_bootstrap4carouselslide`
  ADD CONSTRAINT `bootstrap4_carousel__carousel_image_id_c7547e1f_fk_filer_ima` FOREIGN KEY (`carousel_image_id`) REFERENCES `filer_image` (`file_ptr_id`),
  ADD CONSTRAINT `bootstrap4_carousel__cmsplugin_ptr_id_50bebcc8_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  ADD CONSTRAINT `bootstrap4_carousel__file_link_id_926e466f_fk_filer_fil` FOREIGN KEY (`file_link_id`) REFERENCES `filer_file` (`id`),
  ADD CONSTRAINT `bootstrap4_carousel__internal_link_id_9040d8b6_fk_cms_page_` FOREIGN KEY (`internal_link_id`) REFERENCES `cms_page` (`id`);

--
-- Constraints for table `bootstrap4_collapse_bootstrap4collapse`
--
ALTER TABLE `bootstrap4_collapse_bootstrap4collapse`
  ADD CONSTRAINT `bootstrap4_collapse__cmsplugin_ptr_id_c9f9a375_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `bootstrap4_collapse_bootstrap4collapsecontainer`
--
ALTER TABLE `bootstrap4_collapse_bootstrap4collapsecontainer`
  ADD CONSTRAINT `bootstrap4_collapse__cmsplugin_ptr_id_1d125930_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `bootstrap4_collapse_bootstrap4collapsetrigger`
--
ALTER TABLE `bootstrap4_collapse_bootstrap4collapsetrigger`
  ADD CONSTRAINT `bootstrap4_collapse__cmsplugin_ptr_id_f71d6f15_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `bootstrap4_content_bootstrap4blockquote`
--
ALTER TABLE `bootstrap4_content_bootstrap4blockquote`
  ADD CONSTRAINT `bootstrap4_content_b_cmsplugin_ptr_id_8b0021f2_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `bootstrap4_content_bootstrap4code`
--
ALTER TABLE `bootstrap4_content_bootstrap4code`
  ADD CONSTRAINT `bootstrap4_content_b_cmsplugin_ptr_id_c1953358_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `bootstrap4_content_bootstrap4figure`
--
ALTER TABLE `bootstrap4_content_bootstrap4figure`
  ADD CONSTRAINT `bootstrap4_content_b_cmsplugin_ptr_id_4ec12771_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `bootstrap4_grid_bootstrap4gridcolumn`
--
ALTER TABLE `bootstrap4_grid_bootstrap4gridcolumn`
  ADD CONSTRAINT `bootstrap4_grid_boot_cmsplugin_ptr_id_e1f10b7c_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `bootstrap4_grid_bootstrap4gridcontainer`
--
ALTER TABLE `bootstrap4_grid_bootstrap4gridcontainer`
  ADD CONSTRAINT `bootstrap4_grid_boot_cmsplugin_ptr_id_ff053e0f_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `bootstrap4_grid_bootstrap4gridrow`
--
ALTER TABLE `bootstrap4_grid_bootstrap4gridrow`
  ADD CONSTRAINT `bootstrap4_grid_boot_cmsplugin_ptr_id_02c25f67_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `bootstrap4_jumbotron_bootstrap4jumbotron`
--
ALTER TABLE `bootstrap4_jumbotron_bootstrap4jumbotron`
  ADD CONSTRAINT `bootstrap4_jumbotron_cmsplugin_ptr_id_1429c898_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `bootstrap4_link_bootstrap4link`
--
ALTER TABLE `bootstrap4_link_bootstrap4link`
  ADD CONSTRAINT `bootstrap4_link_boot_cmsplugin_ptr_id_49f69e60_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  ADD CONSTRAINT `bootstrap4_link_boot_file_link_id_73e3dbff_fk_filer_fil` FOREIGN KEY (`file_link_id`) REFERENCES `filer_file` (`id`),
  ADD CONSTRAINT `bootstrap4_link_boot_internal_link_id_bc4ec61e_fk_cms_page_` FOREIGN KEY (`internal_link_id`) REFERENCES `cms_page` (`id`);

--
-- Constraints for table `bootstrap4_listgroup_bootstrap4listgroup`
--
ALTER TABLE `bootstrap4_listgroup_bootstrap4listgroup`
  ADD CONSTRAINT `bootstrap4_listgroup_cmsplugin_ptr_id_c0811351_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `bootstrap4_listgroup_bootstrap4listgroupitem`
--
ALTER TABLE `bootstrap4_listgroup_bootstrap4listgroupitem`
  ADD CONSTRAINT `bootstrap4_listgroup_cmsplugin_ptr_id_df52f490_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `bootstrap4_media_bootstrap4media`
--
ALTER TABLE `bootstrap4_media_bootstrap4media`
  ADD CONSTRAINT `bootstrap4_media_boo_cmsplugin_ptr_id_9eb94f74_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `bootstrap4_media_bootstrap4mediabody`
--
ALTER TABLE `bootstrap4_media_bootstrap4mediabody`
  ADD CONSTRAINT `bootstrap4_media_boo_cmsplugin_ptr_id_574b3dd8_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `bootstrap4_picture_bootstrap4picture`
--
ALTER TABLE `bootstrap4_picture_bootstrap4picture`
  ADD CONSTRAINT `bootstrap4_picture_b_cmsplugin_ptr_id_3d3bfb59_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  ADD CONSTRAINT `bootstrap4_picture_b_link_page_id_f01c1a21_fk_cms_page_` FOREIGN KEY (`link_page_id`) REFERENCES `cms_page` (`id`),
  ADD CONSTRAINT `bootstrap4_picture_b_picture_id_f26d968d_fk_filer_ima` FOREIGN KEY (`picture_id`) REFERENCES `filer_image` (`file_ptr_id`),
  ADD CONSTRAINT `bootstrap4_picture_b_thumbnail_options_id_15520a42_fk_filer_thu` FOREIGN KEY (`thumbnail_options_id`) REFERENCES `filer_thumbnailoption` (`id`);

--
-- Constraints for table `bootstrap4_tabs_bootstrap4tab`
--
ALTER TABLE `bootstrap4_tabs_bootstrap4tab`
  ADD CONSTRAINT `bootstrap4_tabs_boot_cmsplugin_ptr_id_e655c7b6_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `bootstrap4_tabs_bootstrap4tabitem`
--
ALTER TABLE `bootstrap4_tabs_bootstrap4tabitem`
  ADD CONSTRAINT `bootstrap4_tabs_boot_cmsplugin_ptr_id_e017af58_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `bootstrap4_utilities_bootstrap4spacing`
--
ALTER TABLE `bootstrap4_utilities_bootstrap4spacing`
  ADD CONSTRAINT `bootstrap4_utilities_cmsplugin_ptr_id_c15ec8d1_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `cms_aliaspluginmodel`
--
ALTER TABLE `cms_aliaspluginmodel`
  ADD CONSTRAINT `cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a_fk_cms_place` FOREIGN KEY (`alias_placeholder_id`) REFERENCES `cms_placeholder` (`id`),
  ADD CONSTRAINT `cms_aliaspluginmodel_cmsplugin_ptr_id_f71dfd31_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  ADD CONSTRAINT `cms_aliaspluginmodel_plugin_id_9867676e_fk_cms_cmsplugin_id` FOREIGN KEY (`plugin_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `cms_cmsplugin`
--
ALTER TABLE `cms_cmsplugin`
  ADD CONSTRAINT `cms_cmsplugin_parent_id_fd3bd9dd_fk_cms_cmsplugin_id` FOREIGN KEY (`parent_id`) REFERENCES `cms_cmsplugin` (`id`),
  ADD CONSTRAINT `cms_cmsplugin_placeholder_id_0bfa3b26_fk_cms_placeholder_id` FOREIGN KEY (`placeholder_id`) REFERENCES `cms_placeholder` (`id`);

--
-- Constraints for table `cms_globalpagepermission`
--
ALTER TABLE `cms_globalpagepermission`
  ADD CONSTRAINT `cms_globalpagepermission_group_id_991b4733_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `cms_globalpagepermission_user_id_a227cee1_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `cms_globalpagepermission_sites`
--
ALTER TABLE `cms_globalpagepermission_sites`
  ADD CONSTRAINT `cms_globalpagepermis_globalpagepermission_46bd2681_fk_cms_globa` FOREIGN KEY (`globalpagepermission_id`) REFERENCES `cms_globalpagepermission` (`id`),
  ADD CONSTRAINT `cms_globalpagepermis_site_id_00460b53_fk_django_si` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`);

--
-- Constraints for table `cms_page`
--
ALTER TABLE `cms_page`
  ADD CONSTRAINT `cms_page_node_id_c87b85a9_fk_cms_treenode_id` FOREIGN KEY (`node_id`) REFERENCES `cms_treenode` (`id`),
  ADD CONSTRAINT `cms_page_publisher_public_id_d619fca0_fk_cms_page_id` FOREIGN KEY (`publisher_public_id`) REFERENCES `cms_page` (`id`);

--
-- Constraints for table `cms_pagepermission`
--
ALTER TABLE `cms_pagepermission`
  ADD CONSTRAINT `cms_pagepermission_group_id_af5af193_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `cms_pagepermission_page_id_0ae9a163_fk_cms_page_id` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`id`),
  ADD CONSTRAINT `cms_pagepermission_user_id_0c7d2b3c_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `cms_pageuser`
--
ALTER TABLE `cms_pageuser`
  ADD CONSTRAINT `cms_pageuser_created_by_id_8e9fbf83_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `cms_pageuser_user_ptr_id_b3d65592_fk_auth_user_id` FOREIGN KEY (`user_ptr_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `cms_pageusergroup`
--
ALTER TABLE `cms_pageusergroup`
  ADD CONSTRAINT `cms_pageusergroup_created_by_id_7d57fa39_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `cms_pageusergroup_group_ptr_id_34578d93_fk_auth_group_id` FOREIGN KEY (`group_ptr_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `cms_page_placeholders`
--
ALTER TABLE `cms_page_placeholders`
  ADD CONSTRAINT `cms_page_placeholder_placeholder_id_6b120886_fk_cms_place` FOREIGN KEY (`placeholder_id`) REFERENCES `cms_placeholder` (`id`),
  ADD CONSTRAINT `cms_page_placeholders_page_id_f2ce8dec_fk_cms_page_id` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`id`);

--
-- Constraints for table `cms_placeholderreference`
--
ALTER TABLE `cms_placeholderreference`
  ADD CONSTRAINT `cms_placeholderrefer_cmsplugin_ptr_id_6977ec85_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  ADD CONSTRAINT `cms_placeholderrefer_placeholder_ref_id_244759b1_fk_cms_place` FOREIGN KEY (`placeholder_ref_id`) REFERENCES `cms_placeholder` (`id`);

--
-- Constraints for table `cms_staticplaceholder`
--
ALTER TABLE `cms_staticplaceholder`
  ADD CONSTRAINT `cms_staticplaceholder_draft_id_5aee407b_fk_cms_placeholder_id` FOREIGN KEY (`draft_id`) REFERENCES `cms_placeholder` (`id`),
  ADD CONSTRAINT `cms_staticplaceholder_public_id_876aaa66_fk_cms_placeholder_id` FOREIGN KEY (`public_id`) REFERENCES `cms_placeholder` (`id`),
  ADD CONSTRAINT `cms_staticplaceholder_site_id_dc6a85b6_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`);

--
-- Constraints for table `cms_title`
--
ALTER TABLE `cms_title`
  ADD CONSTRAINT `cms_title_page_id_5fade2a3_fk_cms_page_id` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`id`),
  ADD CONSTRAINT `cms_title_publisher_public_id_003a2702_fk_cms_title_id` FOREIGN KEY (`publisher_public_id`) REFERENCES `cms_title` (`id`);

--
-- Constraints for table `cms_treenode`
--
ALTER TABLE `cms_treenode`
  ADD CONSTRAINT `cms_treenode_parent_id_59bb02c4_fk_cms_treenode_id` FOREIGN KEY (`parent_id`) REFERENCES `cms_treenode` (`id`),
  ADD CONSTRAINT `cms_treenode_site_id_d3f46985_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`);

--
-- Constraints for table `cms_usersettings`
--
ALTER TABLE `cms_usersettings`
  ADD CONSTRAINT `cms_usersettings_clipboard_id_3ae17c19_fk_cms_placeholder_id` FOREIGN KEY (`clipboard_id`) REFERENCES `cms_placeholder` (`id`),
  ADD CONSTRAINT `cms_usersettings_user_id_09633b2d_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `config_aboutusplugin`
--
ALTER TABLE `config_aboutusplugin`
  ADD CONSTRAINT `config_aboutusplugin_cmsplugin_ptr_id_600a352c_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `config_category`
--
ALTER TABLE `config_category`
  ADD CONSTRAINT `config_category_page_id_7bcba9c4_fk_cms_page_id` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`id`),
  ADD CONSTRAINT `config_category_sortable_id_91c69bf6_fk_config_ca` FOREIGN KEY (`sortable_id`) REFERENCES `config_categoryplugin` (`cmsplugin_ptr_id`),
  ADD CONSTRAINT `config_category_title_id_4c78295c_fk_cms_title_id` FOREIGN KEY (`title_id`) REFERENCES `cms_title` (`id`);

--
-- Constraints for table `config_categorypanelplugin`
--
ALTER TABLE `config_categorypanelplugin`
  ADD CONSTRAINT `config_categorypanel_cmsplugin_ptr_id_507ea7c7_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `config_categoryplugin`
--
ALTER TABLE `config_categoryplugin`
  ADD CONSTRAINT `config_categoryplugi_cmsplugin_ptr_id_9a2eaee9_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `config_contactusplugin`
--
ALTER TABLE `config_contactusplugin`
  ADD CONSTRAINT `config_contactusplug_cmsplugin_ptr_id_82add52f_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `config_containerplugin`
--
ALTER TABLE `config_containerplugin`
  ADD CONSTRAINT `config_containerplug_cmsplugin_ptr_id_7c767977_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `config_containerpluginv2`
--
ALTER TABLE `config_containerpluginv2`
  ADD CONSTRAINT `config_containerplug_cmsplugin_ptr_id_631e6397_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `config_favoriteplugin`
--
ALTER TABLE `config_favoriteplugin`
  ADD CONSTRAINT `config_favoriteplugi_cmsplugin_ptr_id_aab5a19b_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `config_fetchringtoneplugin`
--
ALTER TABLE `config_fetchringtoneplugin`
  ADD CONSTRAINT `config_fetchringtone_cmsplugin_ptr_id_0e499918_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `config_footerhyperlink`
--
ALTER TABLE `config_footerhyperlink`
  ADD CONSTRAINT `config_footerhyperli_sortable_id_7f11143e_fk_config_fo` FOREIGN KEY (`sortable_id`) REFERENCES `config_footerplugin` (`cmsplugin_ptr_id`);

--
-- Constraints for table `config_footerplugin`
--
ALTER TABLE `config_footerplugin`
  ADD CONSTRAINT `config_footerplugin_cmsplugin_ptr_id_e4c8a986_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `config_linkmodel`
--
ALTER TABLE `config_linkmodel`
  ADD CONSTRAINT `config_linkmodel_sortable_id_4e25077b_fk_config_se` FOREIGN KEY (`sortable_id`) REFERENCES `config_seotool` (`cmsplugin_ptr_id`);

--
-- Constraints for table `config_metamodel`
--
ALTER TABLE `config_metamodel`
  ADD CONSTRAINT `config_metamodel_sortable_id_f0c0f60a_fk_config_se` FOREIGN KEY (`sortable_id`) REFERENCES `config_seotool` (`cmsplugin_ptr_id`);

--
-- Constraints for table `config_ringtone`
--
ALTER TABLE `config_ringtone`
  ADD CONSTRAINT `config_ringtone_category_id_a7fb26a1_fk_config_category_id` FOREIGN KEY (`category_id`) REFERENCES `config_category` (`id`),
  ADD CONSTRAINT `config_ringtone_page_id_458a6a3d_fk_cms_page_id` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`id`),
  ADD CONSTRAINT `config_ringtone_title_id_7860bb07_fk_cms_title_id` FOREIGN KEY (`title_id`) REFERENCES `cms_title` (`id`);

--
-- Constraints for table `config_seotool`
--
ALTER TABLE `config_seotool`
  ADD CONSTRAINT `config_seotool_cmsplugin_ptr_id_07a41fd5_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `config_singlefavoriteplugin`
--
ALTER TABLE `config_singlefavoriteplugin`
  ADD CONSTRAINT `config_singlefavorit_cmsplugin_ptr_id_96d612f3_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `config_singleringtoneplugin`
--
ALTER TABLE `config_singleringtoneplugin`
  ADD CONSTRAINT `config_singlerington_cmsplugin_ptr_id_826949e8_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  ADD CONSTRAINT `config_singlerington_ringtone_id_9a726c64_fk_config_ri` FOREIGN KEY (`ringtone_id`) REFERENCES `config_ringtone` (`id`);

--
-- Constraints for table `config_top50`
--
ALTER TABLE `config_top50`
  ADD CONSTRAINT `config_top50_ringtone_id_18718a11_fk_config_ringtone_id` FOREIGN KEY (`ringtone_id`) REFERENCES `config_ringtone` (`id`),
  ADD CONSTRAINT `config_top50_sortable_id_9df77248_fk_config_fa` FOREIGN KEY (`sortable_id`) REFERENCES `config_favoriteplugin` (`cmsplugin_ptr_id`);

--
-- Constraints for table `djangocms_googlemap_googlemap`
--
ALTER TABLE `djangocms_googlemap_googlemap`
  ADD CONSTRAINT `djangocms_googlemap__cmsplugin_ptr_id_c8493888_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `djangocms_googlemap_googlemapmarker`
--
ALTER TABLE `djangocms_googlemap_googlemapmarker`
  ADD CONSTRAINT `djangocms_googlemap__cmsplugin_ptr_id_bdd9e018_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  ADD CONSTRAINT `djangocms_googlemap__icon_id_3b103213_fk_filer_ima` FOREIGN KEY (`icon_id`) REFERENCES `filer_image` (`file_ptr_id`);

--
-- Constraints for table `djangocms_googlemap_googlemaproute`
--
ALTER TABLE `djangocms_googlemap_googlemaproute`
  ADD CONSTRAINT `djangocms_googlemap__cmsplugin_ptr_id_f6a135c6_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `djangocms_icon_icon`
--
ALTER TABLE `djangocms_icon_icon`
  ADD CONSTRAINT `djangocms_icon_icon_cmsplugin_ptr_id_e04b5be4_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `djangocms_link_link`
--
ALTER TABLE `djangocms_link_link`
  ADD CONSTRAINT `djangocms_link_link_cmsplugin_ptr_id_10f7b2f2_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  ADD CONSTRAINT `djangocms_link_link_file_link_id_c7869e4c_fk_filer_file_id` FOREIGN KEY (`file_link_id`) REFERENCES `filer_file` (`id`),
  ADD CONSTRAINT `djangocms_link_link_internal_link_id_41549c8e_fk_cms_page_id` FOREIGN KEY (`internal_link_id`) REFERENCES `cms_page` (`id`);

--
-- Constraints for table `djangocms_picture_picture`
--
ALTER TABLE `djangocms_picture_picture`
  ADD CONSTRAINT `djangocms_picture_pi_cmsplugin_ptr_id_0e797309_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  ADD CONSTRAINT `djangocms_picture_pi_picture_id_f7d6711b_fk_filer_ima` FOREIGN KEY (`picture_id`) REFERENCES `filer_image` (`file_ptr_id`),
  ADD CONSTRAINT `djangocms_picture_pi_thumbnail_options_id_59cf80d1_fk_filer_thu` FOREIGN KEY (`thumbnail_options_id`) REFERENCES `filer_thumbnailoption` (`id`),
  ADD CONSTRAINT `djangocms_picture_picture_link_page_id_dbec9beb_fk_cms_page_id` FOREIGN KEY (`link_page_id`) REFERENCES `cms_page` (`id`);

--
-- Constraints for table `djangocms_style_style`
--
ALTER TABLE `djangocms_style_style`
  ADD CONSTRAINT `djangocms_style_styl_cmsplugin_ptr_id_820d9b8f_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `djangocms_text_ckeditor_text`
--
ALTER TABLE `djangocms_text_ckeditor_text`
  ADD CONSTRAINT `djangocms_text_ckedi_cmsplugin_ptr_id_946882c1_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_redirect`
--
ALTER TABLE `django_redirect`
  ADD CONSTRAINT `django_redirect_site_id_c3e37341_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`);

--
-- Constraints for table `easy_thumbnails_thumbnail`
--
ALTER TABLE `easy_thumbnails_thumbnail`
  ADD CONSTRAINT `easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum` FOREIGN KEY (`source_id`) REFERENCES `easy_thumbnails_source` (`id`);

--
-- Constraints for table `easy_thumbnails_thumbnaildimensions`
--
ALTER TABLE `easy_thumbnails_thumbnaildimensions`
  ADD CONSTRAINT `easy_thumbnails_thum_thumbnail_id_c3a0c549_fk_easy_thum` FOREIGN KEY (`thumbnail_id`) REFERENCES `easy_thumbnails_thumbnail` (`id`);

--
-- Constraints for table `filer_clipboard`
--
ALTER TABLE `filer_clipboard`
  ADD CONSTRAINT `filer_clipboard_user_id_b52ff0bc_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `filer_clipboarditem`
--
ALTER TABLE `filer_clipboarditem`
  ADD CONSTRAINT `filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id` FOREIGN KEY (`clipboard_id`) REFERENCES `filer_clipboard` (`id`),
  ADD CONSTRAINT `filer_clipboarditem_file_id_06196f80_fk_filer_file_id` FOREIGN KEY (`file_id`) REFERENCES `filer_file` (`id`);

--
-- Constraints for table `filer_file`
--
ALTER TABLE `filer_file`
  ADD CONSTRAINT `filer_file_folder_id_af803bbb_fk_filer_folder_id` FOREIGN KEY (`folder_id`) REFERENCES `filer_folder` (`id`),
  ADD CONSTRAINT `filer_file_owner_id_b9e32671_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `filer_file_polymorphic_ctype_id_f44903c1_fk_django_co` FOREIGN KEY (`polymorphic_ctype_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `filer_folder`
--
ALTER TABLE `filer_folder`
  ADD CONSTRAINT `filer_folder_owner_id_be530fb4_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `filer_folder_parent_id_308aecda_fk_filer_folder_id` FOREIGN KEY (`parent_id`) REFERENCES `filer_folder` (`id`);

--
-- Constraints for table `filer_folderpermission`
--
ALTER TABLE `filer_folderpermission`
  ADD CONSTRAINT `filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id` FOREIGN KEY (`folder_id`) REFERENCES `filer_folder` (`id`),
  ADD CONSTRAINT `filer_folderpermission_group_id_8901bafa_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `filer_folderpermission_user_id_7673d4b6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `filer_image`
--
ALTER TABLE `filer_image`
  ADD CONSTRAINT `filer_image_file_ptr_id_3e21d4f0_fk_filer_file_id` FOREIGN KEY (`file_ptr_id`) REFERENCES `filer_file` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
