-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 10, 2015 at 01:26 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";




--
-- Database: `574`
--

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner`
--

DROP TABLE IF EXISTS `oc_banner`;
CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image`
--

DROP TABLE IF EXISTS `oc_banner_image`;
CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=162 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image_description`
--

DROP TABLE IF EXISTS `oc_banner_image_description`;
CREATE TABLE `oc_banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`banner_image_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner_image_description`
--

INSERT INTO `oc_banner_image_description` (`banner_image_id`, `language_id`, `banner_id`, `title`, `description`) VALUES
(99, 1, 9, 'slide-1', ''),
(100, 1, 9, 'slide-2', ''),
(101, 1, 9, 'slide-3', ''),
(99, 2, 9, 'slide-1', ''),
(100, 2, 9, 'slide-2', ''),
(101, 2, 9, 'slide-3', ''),
(99, 3, 9, 'slide-1', ''),
(100, 3, 9, 'slide-2', ''),
(101, 3, 9, 'slide-3', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension`
--

DROP TABLE IF EXISTS `oc_extension`;
CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=446 ;

--
-- Dumping data for table `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(23, 'payment', 'cod'),
(22, 'total', 'shipping'),
(57, 'total', 'sub_total'),
(58, 'total', 'tax'),
(59, 'total', 'total'),
(410, 'module', 'banner'),
(390, 'total', 'credit'),
(387, 'shipping', 'flat'),
(349, 'total', 'handling'),
(350, 'total', 'low_order_fee'),
(389, 'total', 'coupon'),
(408, 'module', 'account'),
(393, 'total', 'reward'),
(398, 'total', 'voucher'),
(407, 'payment', 'free_checkout'),
(427, 'module', 'featured'),
(445, 'module', 'html'),
(433, 'module', 'bestseller'),
(434, 'module', 'latest'),
(435, 'module', 'special'),
(436, 'module', 'affiliate'),
(437, 'module', 'information'),
(440, 'module', 'olark');

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout`
--

DROP TABLE IF EXISTS `oc_layout`;
CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'Home'),
(2, 'Product'),
(3, 'Category'),
(4, 'Default'),
(5, 'Manufacturer'),
(6, 'Account'),
(7, 'Checkout'),
(8, 'Contact'),
(9, 'Sitemap'),
(10, 'Affiliate'),
(11, 'Information'),
(12, 'Compare'),
(13, 'Search');

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_module`
--

DROP TABLE IF EXISTS `oc_layout_module`;
CREATE TABLE `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`layout_module_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=536 ;

--
-- Dumping data for table `oc_layout_module`
--

INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(410, 8, 'account', 'column_left', 1),
(407, 12, 'olark.50', 'footer_top', 1),
(405, 7, 'account', 'column_left', 1),
(404, 7, 'olark.50', 'footer_top', 1),
(529, 3, 'olark.50', 'footer_top', 1),
(528, 3, 'bestseller.43', 'column_left', 2),
(531, 10, 'affiliate', 'column_left', 1),
(393, 6, 'olark.50', 'footer_top', 1),
(530, 10, 'olark.50', 'footer_top', 1),
(426, 9, 'olark.50', 'footer_top', 1),
(535, 13, 'latest.55', 'column_left', 1),
(418, 5, 'olark.50', 'footer_top', 1),
(532, 4, 'latest.55', 'column_left', 1),
(409, 8, 'olark.50', 'column_left', 1),
(392, 6, 'account', 'column_left', 1),
(533, 4, 'olark.50', 'footer_top', 1),
(527, 3, 'special.48', 'column_left', 1),
(415, 11, 'olark.50', 'footer_top', 1),
(417, 5, 'account', 'column_left', 2),
(420, 2, 'olark.50', 'footer_top', 1),
(534, 13, 'olark.50', 'footer_top', 1),
(425, 9, 'account', 'column_left', 1),
(526, 1, 'html.54', 'content_top', 1),
(525, 1, 'olark.50', 'footer_top', 1),
(524, 1, 'featured.51', 'content_top', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_route`
--

DROP TABLE IF EXISTS `oc_layout_route`;
CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=167 ;

--
-- Dumping data for table `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(139, 6, 0, 'account/%'),
(164, 10, 0, 'affiliate/%'),
(163, 3, 0, 'product/category'),
(162, 1, 0, 'common/home'),
(148, 2, 0, 'product/product'),
(146, 11, 0, 'information/information'),
(142, 7, 0, 'checkout/%'),
(144, 8, 0, 'information/contact'),
(150, 9, 0, 'information/sitemap'),
(165, 4, 0, ''),
(147, 5, 0, 'product/manufacturer'),
(143, 12, 0, 'product/compare'),
(166, 13, 0, 'product/search');

-- --------------------------------------------------------

--
-- Table structure for table `oc_module`
--

DROP TABLE IF EXISTS `oc_module`;
CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=56 ;

--
-- Dumping data for table `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(51, 'Featured', 'featured', 'a:6:{s:4:"name";s:8:"Featured";s:7:"product";a:8:{i:0;s:2:"44";i:1;s:2:"35";i:2;s:2:"33";i:3;s:2:"31";i:4;s:2:"30";i:5;s:2:"28";i:6;s:2:"34";i:7;s:2:"41";}s:5:"limit";s:1:"8";s:5:"width";s:3:"270";s:6:"height";s:3:"270";s:6:"status";s:1:"1";}'),
(54, 'Banners', 'html', 'a:3:{s:4:"name";s:7:"Banners";s:18:"module_description";a:3:{i:1;a:2:{s:5:"title";s:7:"banners";s:11:"description";s:2320:"&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-sm-12 banner-1&quot;&gt;&lt;a href=&quot;index.php?route=product/product&amp;amp;product_id=35&quot;&gt;&lt;img src=&quot;image/catalog/banner-1.jpg&quot;&gt;&lt;div class=&quot;desc&quot;&gt;&lt;div class=&quot;tx&quot;&gt;iPhone 6&lt;br&gt;From $258.89&lt;/div&gt;\r\n&lt;span class=&quot;button&quot;&gt;Shop now!&lt;/span&gt;&lt;/div&gt;\r\n&lt;/a&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-sm-7 banner-2&quot;&gt;&lt;a href=&quot;index.php?route=product/product&amp;amp;product_id=33&quot;&gt;&lt;img src=&quot;image/catalog/banner-2.jpg&quot;&gt;&lt;div class=&quot;desc&quot;&gt;&lt;div class=&quot;tx&quot;&gt;special&lt;br&gt;&lt;span&gt;offers&lt;/span&gt;&lt;/div&gt;\r\n&lt;span class=&quot;button&quot;&gt;Shop now!&lt;/span&gt;&lt;/div&gt;\r\n&lt;/a&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-sm-5 banner-3&quot;&gt;&lt;a href=&quot;index.php?route=product/product&amp;amp;product_id=28&quot;&gt;&lt;img src=&quot;image/catalog/banner-3.jpg&quot;&gt;&lt;div class=&quot;desc&quot;&gt;&lt;div class=&quot;tx&quot;&gt;Accessories&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/a&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;clear&quot;&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-sm-5&quot;&gt;\r\n&lt;div class=&quot;banner-4&quot;&gt;&lt;a href=&quot;index.php?route=product/product&amp;amp;product_id=47&quot;&gt;&lt;img src=&quot;image/catalog/banner-4.jpg&quot;&gt;&lt;div class=&quot;desc&quot;&gt;&lt;div class=&quot;tx&quot;&gt;Sale&lt;br&gt;Sale&lt;br&gt;Sale&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/a&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;banner-5&quot;&gt;&lt;a href=&quot;index.php?route=product/product&amp;amp;product_id=30&quot;&gt;&lt;img src=&quot;image/catalog/banner-5.jpg&quot;&gt;&lt;div class=&quot;desc&quot;&gt;&lt;div class=&quot;tx&quot;&gt;Free shipping &lt;p&gt;on orders over $99.&lt;br&gt;This offer is valid on all our store items.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;/a&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-sm-7 banner-6&quot;&gt;&lt;a href=&quot;index.php?route=product/product&amp;amp;product_id=31&quot;&gt;&lt;img src=&quot;image/catalog/banner-6.jpg&quot;&gt;&lt;div class=&quot;desc&quot;&gt;&lt;div class=&quot;tx&quot;&gt;new Cases\r\n&lt;br&gt;collection&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/a&gt;&lt;/div&gt;\r\n\r\n&lt;/div&gt;";}i:2;a:2:{s:5:"title";s:7:"banners";s:11:"description";s:2320:"&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-sm-12 banner-1&quot;&gt;&lt;a href=&quot;index.php?route=product/product&amp;amp;product_id=35&quot;&gt;&lt;img src=&quot;image/catalog/banner-1.jpg&quot;&gt;&lt;div class=&quot;desc&quot;&gt;&lt;div class=&quot;tx&quot;&gt;iPhone 6&lt;br&gt;From $258.89&lt;/div&gt;\r\n&lt;span class=&quot;button&quot;&gt;Shop now!&lt;/span&gt;&lt;/div&gt;\r\n&lt;/a&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-sm-7 banner-2&quot;&gt;&lt;a href=&quot;index.php?route=product/product&amp;amp;product_id=33&quot;&gt;&lt;img src=&quot;image/catalog/banner-2.jpg&quot;&gt;&lt;div class=&quot;desc&quot;&gt;&lt;div class=&quot;tx&quot;&gt;special&lt;br&gt;&lt;span&gt;offers&lt;/span&gt;&lt;/div&gt;\r\n&lt;span class=&quot;button&quot;&gt;Shop now!&lt;/span&gt;&lt;/div&gt;\r\n&lt;/a&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-sm-5 banner-3&quot;&gt;&lt;a href=&quot;index.php?route=product/product&amp;amp;product_id=28&quot;&gt;&lt;img src=&quot;image/catalog/banner-3.jpg&quot;&gt;&lt;div class=&quot;desc&quot;&gt;&lt;div class=&quot;tx&quot;&gt;Accessories&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/a&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;clear&quot;&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-sm-5&quot;&gt;\r\n&lt;div class=&quot;banner-4&quot;&gt;&lt;a href=&quot;index.php?route=product/product&amp;amp;product_id=47&quot;&gt;&lt;img src=&quot;image/catalog/banner-4.jpg&quot;&gt;&lt;div class=&quot;desc&quot;&gt;&lt;div class=&quot;tx&quot;&gt;Sale&lt;br&gt;Sale&lt;br&gt;Sale&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/a&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;banner-5&quot;&gt;&lt;a href=&quot;index.php?route=product/product&amp;amp;product_id=30&quot;&gt;&lt;img src=&quot;image/catalog/banner-5.jpg&quot;&gt;&lt;div class=&quot;desc&quot;&gt;&lt;div class=&quot;tx&quot;&gt;Free shipping &lt;p&gt;on orders over $99.&lt;br&gt;This offer is valid on all our store items.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;/a&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-sm-7 banner-6&quot;&gt;&lt;a href=&quot;index.php?route=product/product&amp;amp;product_id=31&quot;&gt;&lt;img src=&quot;image/catalog/banner-6.jpg&quot;&gt;&lt;div class=&quot;desc&quot;&gt;&lt;div class=&quot;tx&quot;&gt;new Cases\r\n&lt;br&gt;collection&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/a&gt;&lt;/div&gt;\r\n\r\n&lt;/div&gt;";}i:3;a:2:{s:5:"title";s:7:"banners";s:11:"description";s:2320:"&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-sm-12 banner-1&quot;&gt;&lt;a href=&quot;index.php?route=product/product&amp;amp;product_id=35&quot;&gt;&lt;img src=&quot;image/catalog/banner-1.jpg&quot;&gt;&lt;div class=&quot;desc&quot;&gt;&lt;div class=&quot;tx&quot;&gt;iPhone 6&lt;br&gt;From $258.89&lt;/div&gt;\r\n&lt;span class=&quot;button&quot;&gt;Shop now!&lt;/span&gt;&lt;/div&gt;\r\n&lt;/a&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-sm-7 banner-2&quot;&gt;&lt;a href=&quot;index.php?route=product/product&amp;amp;product_id=33&quot;&gt;&lt;img src=&quot;image/catalog/banner-2.jpg&quot;&gt;&lt;div class=&quot;desc&quot;&gt;&lt;div class=&quot;tx&quot;&gt;special&lt;br&gt;&lt;span&gt;offers&lt;/span&gt;&lt;/div&gt;\r\n&lt;span class=&quot;button&quot;&gt;Shop now!&lt;/span&gt;&lt;/div&gt;\r\n&lt;/a&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-sm-5 banner-3&quot;&gt;&lt;a href=&quot;index.php?route=product/product&amp;amp;product_id=28&quot;&gt;&lt;img src=&quot;image/catalog/banner-3.jpg&quot;&gt;&lt;div class=&quot;desc&quot;&gt;&lt;div class=&quot;tx&quot;&gt;Accessories&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/a&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;clear&quot;&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-sm-5&quot;&gt;\r\n&lt;div class=&quot;banner-4&quot;&gt;&lt;a href=&quot;index.php?route=product/product&amp;amp;product_id=47&quot;&gt;&lt;img src=&quot;image/catalog/banner-4.jpg&quot;&gt;&lt;div class=&quot;desc&quot;&gt;&lt;div class=&quot;tx&quot;&gt;Sale&lt;br&gt;Sale&lt;br&gt;Sale&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/a&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;banner-5&quot;&gt;&lt;a href=&quot;index.php?route=product/product&amp;amp;product_id=30&quot;&gt;&lt;img src=&quot;image/catalog/banner-5.jpg&quot;&gt;&lt;div class=&quot;desc&quot;&gt;&lt;div class=&quot;tx&quot;&gt;Free shipping &lt;p&gt;on orders over $99.&lt;br&gt;This offer is valid on all our store items.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;/a&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-sm-7 banner-6&quot;&gt;&lt;a href=&quot;index.php?route=product/product&amp;amp;product_id=31&quot;&gt;&lt;img src=&quot;image/catalog/banner-6.jpg&quot;&gt;&lt;div class=&quot;desc&quot;&gt;&lt;div class=&quot;tx&quot;&gt;new Cases\r\n&lt;br&gt;collection&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/a&gt;&lt;/div&gt;\r\n\r\n&lt;/div&gt;";}}s:6:"status";s:1:"1";}'),
(50, 'Olark Chat', 'olark', 'a:4:{s:4:"name";s:10:"Olark Chat";s:13:"olark_version";s:5:"2.0.0";s:13:"olark_site_id";s:16:"7830-582-10-3714";s:6:"status";s:1:"1";}'),
(43, 'Bestsellers', 'bestseller', 'a:5:{s:4:"name";s:11:"Bestsellers";s:5:"limit";s:1:"1";s:5:"width";s:3:"270";s:6:"height";s:3:"270";s:6:"status";s:1:"1";}'),
(48, 'Specials', 'special', 'a:5:{s:4:"name";s:8:"Specials";s:5:"limit";s:1:"1";s:5:"width";s:3:"270";s:6:"height";s:3:"270";s:6:"status";s:1:"1";}'),
(55, 'Latest', 'latest', 'a:5:{s:4:"name";s:6:"Latest";s:5:"limit";s:1:"1";s:5:"width";s:3:"270";s:6:"height";s:3:"270";s:6:"status";s:1:"1";}');


