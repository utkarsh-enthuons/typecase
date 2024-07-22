-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 07, 2023 at 11:00 AM
-- Server version: 5.6.51
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wedigita_typecase`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `page_name` varchar(255) DEFAULT NULL,
  `banners` varchar(300) DEFAULT NULL,
  `mbanner` varchar(300) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `page_name`, `banners`, `mbanner`) VALUES
(1, 'Home', 'banner-1.webp', 'mobile-banner-1.webp');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `banner` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `slug` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `image_alt` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `meta_title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `meta_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `keywords` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `name`, `banner`, `short_description`, `description`, `status`, `slug`, `image_alt`, `meta_title`, `meta_description`, `keywords`, `created_at`, `updated_at`) VALUES
(11, 'Is iPad 10.2 good for editing', 'cat-banner-12.jpg', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nihil culpa eum porro et corporis? Repudiandae pariatur..', '<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Aperiam iusto tempore nihil! Facere nam nostrum totam cupiditate rem minima sit impedit iure enim. Odit, ipsa. Dignissimos eum molestiae hic autem.Neque qui fugiat maiores doloribus quam nulla ut, quasi vitae reprehenderit enim dolorum. Repellat sunt provident, unde laudantium sequi nostrum aliquid voluptates, ab et, corrupti nesciunt eaque harum neque atque!Facere recusandae quis eligendi exercitationem iste minus ab inventore, labore adipisci maxime et aspernatur. Culpa dolores soluta cumque corporis voluptas similique, at in earum sit voluptatem obcaecati, velit repellendus quasi? Eum aliquid maiores accusantium nostrum expedita rem id tempora exercitationem ipsum quod? Assumenda, ipsum qui praesentium natus neque veniam nam, placeat architecto eius et totam quas suscipit voluptas sit eveniet!</p><p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Aperiam iusto tempore nihil! Facere nam nostrum totam cupiditate rem minima sit impedit iure enim. Odit, ipsa. Dignissimos eum molestiae hic autem.Neque qui fugiat maiores doloribus quam nulla ut, quasi vitae reprehenderit enim dolorum. Repellat sunt provident, unde laudantium sequi nostrum aliquid voluptates, ab et, corrupti nesciunt eaque harum neque atque!Facere recusandae quis eligendi exercitationem iste minus ab inventore, labore adipisci maxime et aspernatur. Culpa dolores soluta cumque corporis voluptas similique, at in earum sit voluptatem obcaecati, velit repellendus quasi? Eum aliquid maiores accusantium nostrum expedita rem id tempora exercitationem ipsum quod? Assumenda, ipsum qui praesentium natus neque veniam nam, placeat architecto eius et totam quas suscipit voluptas sit eveniet!</p><p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Aperiam iusto tempore nihil! Facere nam nostrum totam cupiditate rem minima sit impedit iure enim. Odit, ipsa. Dignissimos eum molestiae hic autem.Neque qui fugiat maiores doloribus quam nulla ut, quasi vitae reprehenderit enim dolorum. Repellat sunt provident, unde laudantium sequi nostrum aliquid voluptates, ab et, corrupti nesciunt eaque harum neque atque!Facere recusandae quis eligendi exercitationem iste minus ab inventore, labore adipisci maxime et aspernatur. Culpa dolores soluta cumque corporis voluptas similique, at in earum sit voluptatem obcaecati, velit repellendus quasi? Eum aliquid maiores accusantium nostrum expedita rem id tempora exercitationem ipsum quod? Assumenda, ipsum qui praesentium natus neque veniam nam, placeat architecto eius et totam quas suscipit voluptas sit eveniet!<br></p>', 1, 'Is-iPad-10.2-good-for-editing', NULL, '', '', '', '2023-10-21 11:43:32', '2023-06-06 06:01:20');

-- --------------------------------------------------------

--
-- Table structure for table `collection`
--

CREATE TABLE `collection` (
  `id` int(11) NOT NULL,
  `collection` varchar(200) DEFAULT NULL,
  `Status` enum('0','1') DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `collection`
--

INSERT INTO `collection` (`id`, `collection`, `Status`) VALUES
(1, 'Touch Flexbook', '1'),
(2, 'Folio', '1'),
(10, 'Edge Magic', '1'),
(11, 'Kickstand', '1'),
(12, 'Detached', '1');

-- --------------------------------------------------------

--
-- Table structure for table `counter`
--

CREATE TABLE `counter` (
  `visiters` int(255) NOT NULL,
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `counter`
--

INSERT INTO `counter` (`visiters`, `id`) VALUES
(7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ipdb`
--

CREATE TABLE `ipdb` (
  `ip` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ipdb`
--

INSERT INTO `ipdb` (`ip`, `id`) VALUES
('117.99.19.201', 3),
('106.211.48.206', 4),
('49.15.243.197', 5),
('106.66.61.95', 6),
('106.195.112.192', 7);

-- --------------------------------------------------------

--
-- Table structure for table `meta_tag`
--

CREATE TABLE `meta_tag` (
  `id` int(11) NOT NULL,
  `page_name` varchar(300) DEFAULT NULL,
  `meta_title` text,
  `meta_keyword` text,
  `meta_description` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meta_tag`
--

INSERT INTO `meta_tag` (`id`, `page_name`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(15, 'https://wedigitalindia.com/typecase/', '', '', ''),
(16, 'https://typecase.in/', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cid` int(11) NOT NULL,
  `cs_id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `qty` int(5) NOT NULL,
  `cart_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_color`
--

CREATE TABLE `tbl_color` (
  `color_id` int(11) NOT NULL,
  `color_name` varchar(255) NOT NULL,
  `code` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_color`
--

INSERT INTO `tbl_color` (`color_id`, `color_name`, `code`) VALUES
(1, 'Black', '#000	'),
(5, 'blue', '#0000FF	'),
(7, 'Black', '#000'),
(8, 'Pacific Blue', '#32527b'),
(9, 'Rose Gold', '#e98494'),
(11, 'silver', 'silver'),
(12, 'violet', 'violet'),
(13, 'purple', 'purple'),
(14, 'navblue', '#000080'),
(15, 'oceanblue', '#4da4c7'),
(16, 'midnightgreen', '#004953'),
(17, 'seafoamgreen', '#93e9be'),
(18, 'Rose Gold', '#e98494'),
(19, 'red', '#f00'),
(20, 'blue', '#0000FF'),
(21, 'white', '#FFFFFF'),
(22, 'Raspbarry', '#E30B5C'),
(23, 'Pearl White', '#F8F6F0'),
(24, 'Space Grey', '#717378');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country`
--

CREATE TABLE `tbl_country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_country`
--

INSERT INTO `tbl_country` (`country_id`, `country_name`) VALUES
(1, 'Afghanistan'),
(2, 'Albania'),
(3, 'Algeria'),
(4, 'American Samoa'),
(5, 'Andorra'),
(6, 'Angola'),
(7, 'Anguilla'),
(8, 'Antarctica'),
(9, 'Antigua and Barbuda'),
(10, 'Argentina'),
(11, 'Armenia'),
(12, 'Aruba'),
(13, 'Australia'),
(14, 'Austria'),
(15, 'Azerbaijan'),
(16, 'Bahamas'),
(17, 'Bahrain'),
(18, 'Bangladesh'),
(19, 'Barbados'),
(20, 'Belarus'),
(21, 'Belgium'),
(22, 'Belize'),
(23, 'Benin'),
(24, 'Bermuda'),
(25, 'Bhutan'),
(26, 'Bolivia'),
(27, 'Bosnia and Herzegovina'),
(28, 'Botswana'),
(29, 'Bouvet Island'),
(30, 'Brazil'),
(31, 'British Indian Ocean Territory'),
(32, 'Brunei Darussalam'),
(33, 'Bulgaria'),
(34, 'Burkina Faso'),
(35, 'Burundi'),
(36, 'Cambodia'),
(37, 'Cameroon'),
(38, 'Canada'),
(39, 'Cape Verde'),
(40, 'Cayman Islands'),
(41, 'Central African Republic'),
(42, 'Chad'),
(43, 'Chile'),
(44, 'China'),
(45, 'Christmas Island'),
(46, 'Cocos (Keeling) Islands'),
(47, 'Colombia'),
(48, 'Comoros'),
(49, 'Congo'),
(50, 'Cook Islands'),
(51, 'Costa Rica'),
(52, 'Croatia (Hrvatska)'),
(53, 'Cuba'),
(54, 'Cyprus'),
(55, 'Czech Republic'),
(56, 'Denmark'),
(57, 'Djibouti'),
(58, 'Dominica'),
(59, 'Dominican Republic'),
(60, 'East Timor'),
(61, 'Ecuador'),
(62, 'Egypt'),
(63, 'El Salvador'),
(64, 'Equatorial Guinea'),
(65, 'Eritrea'),
(66, 'Estonia'),
(67, 'Ethiopia'),
(68, 'Falkland Islands (Malvinas)'),
(69, 'Faroe Islands'),
(70, 'Fiji'),
(71, 'Finland'),
(72, 'France'),
(73, 'France, Metropolitan'),
(74, 'French Guiana'),
(75, 'French Polynesia'),
(76, 'French Southern Territories'),
(77, 'Gabon'),
(78, 'Gambia'),
(79, 'Georgia'),
(80, 'Germany'),
(81, 'Ghana'),
(82, 'Gibraltar'),
(83, 'Guernsey'),
(84, 'Greece'),
(85, 'Greenland'),
(86, 'Grenada'),
(87, 'Guadeloupe'),
(88, 'Guam'),
(89, 'Guatemala'),
(90, 'Guinea'),
(91, 'Guinea-Bissau'),
(92, 'Guyana'),
(93, 'Haiti'),
(94, 'Heard and Mc Donald Islands'),
(95, 'Honduras'),
(96, 'Hong Kong'),
(97, 'Hungary'),
(98, 'Iceland'),
(99, 'India'),
(100, 'Isle of Man'),
(101, 'Indonesia'),
(102, 'Iran (Islamic Republic of)'),
(103, 'Iraq'),
(104, 'Ireland'),
(105, 'Israel'),
(106, 'Italy'),
(107, 'Ivory Coast'),
(108, 'Jersey'),
(109, 'Jamaica'),
(110, 'Japan'),
(111, 'Jordan'),
(112, 'Kazakhstan'),
(113, 'Kenya'),
(114, 'Kiribati'),
(115, 'Korea, Democratic People\'s Republic of'),
(116, 'Korea, Republic of'),
(117, 'Kosovo'),
(118, 'Kuwait'),
(119, 'Kyrgyzstan'),
(120, 'Lao People\'s Democratic Republic'),
(121, 'Latvia'),
(122, 'Lebanon'),
(123, 'Lesotho'),
(124, 'Liberia'),
(125, 'Libyan Arab Jamahiriya'),
(126, 'Liechtenstein'),
(127, 'Lithuania'),
(128, 'Luxembourg'),
(129, 'Macau'),
(130, 'Macedonia'),
(131, 'Madagascar'),
(132, 'Malawi'),
(133, 'Malaysia'),
(134, 'Maldives'),
(135, 'Mali'),
(136, 'Malta'),
(137, 'Marshall Islands'),
(138, 'Martinique'),
(139, 'Mauritania'),
(140, 'Mauritius'),
(141, 'Mayotte'),
(142, 'Mexico'),
(143, 'Micronesia, Federated States of'),
(144, 'Moldova, Republic of'),
(145, 'Monaco'),
(146, 'Mongolia'),
(147, 'Montenegro'),
(148, 'Montserrat'),
(149, 'Morocco'),
(150, 'Mozambique'),
(151, 'Myanmar'),
(152, 'Namibia'),
(153, 'Nauru'),
(154, 'Nepal'),
(155, 'Netherlands'),
(156, 'Netherlands Antilles'),
(157, 'New Caledonia'),
(158, 'New Zealand'),
(159, 'Nicaragua'),
(160, 'Niger'),
(161, 'Nigeria'),
(162, 'Niue'),
(163, 'Norfolk Island'),
(164, 'Northern Mariana Islands'),
(165, 'Norway'),
(166, 'Oman'),
(167, 'Pakistan'),
(168, 'Palau'),
(169, 'Palestine'),
(170, 'Panama'),
(171, 'Papua New Guinea'),
(172, 'Paraguay'),
(173, 'Peru'),
(174, 'Philippines'),
(175, 'Pitcairn'),
(176, 'Poland'),
(177, 'Portugal'),
(178, 'Puerto Rico'),
(179, 'Qatar'),
(180, 'Reunion'),
(181, 'Romania'),
(182, 'Russian Federation'),
(183, 'Rwanda'),
(184, 'Saint Kitts and Nevis'),
(185, 'Saint Lucia'),
(186, 'Saint Vincent and the Grenadines'),
(187, 'Samoa'),
(188, 'San Marino'),
(189, 'Sao Tome and Principe'),
(190, 'Saudi Arabia'),
(191, 'Senegal'),
(192, 'Serbia'),
(193, 'Seychelles'),
(194, 'Sierra Leone'),
(195, 'Singapore'),
(196, 'Slovakia'),
(197, 'Slovenia'),
(198, 'Solomon Islands'),
(199, 'Somalia'),
(200, 'South Africa'),
(201, 'South Georgia South Sandwich Islands'),
(202, 'Spain'),
(203, 'Sri Lanka'),
(204, 'St. Helena'),
(205, 'St. Pierre and Miquelon'),
(206, 'Sudan'),
(207, 'Suriname'),
(208, 'Svalbard and Jan Mayen Islands'),
(209, 'Swaziland'),
(210, 'Sweden'),
(211, 'Switzerland'),
(212, 'Syrian Arab Republic'),
(213, 'Taiwan'),
(214, 'Tajikistan'),
(215, 'Tanzania, United Republic of'),
(216, 'Thailand'),
(217, 'Togo'),
(218, 'Tokelau'),
(219, 'Tonga'),
(220, 'Trinidad and Tobago'),
(221, 'Tunisia'),
(222, 'Turkey'),
(223, 'Turkmenistan'),
(224, 'Turks and Caicos Islands'),
(225, 'Tuvalu'),
(226, 'Uganda'),
(227, 'Ukraine'),
(228, 'United Arab Emirates'),
(229, 'United Kingdom'),
(230, 'United States'),
(231, 'United States minor outlying islands'),
(232, 'Uruguay'),
(233, 'Uzbekistan'),
(234, 'Vanuatu'),
(235, 'Vatican City State'),
(236, 'Venezuela'),
(237, 'Vietnam'),
(238, 'Virgin Islands (British)'),
(239, 'Virgin Islands (U.S.)'),
(240, 'Wallis and Futuna Islands'),
(241, 'Western Sahara'),
(242, 'Yemen'),
(243, 'Zaire'),
(244, 'Zambia'),
(245, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `cust_id` int(11) NOT NULL,
  `cust_name` varchar(100) DEFAULT NULL,
  `cust_cname` varchar(100) DEFAULT NULL,
  `cust_email` varchar(100) DEFAULT NULL,
  `cust_phone` varchar(50) DEFAULT NULL,
  `cust_country` varchar(100) DEFAULT NULL,
  `cust_address` text,
  `cust_city` varchar(100) DEFAULT NULL,
  `cust_state` varchar(100) DEFAULT NULL,
  `cust_zip` varchar(30) DEFAULT NULL,
  `cust_b_fname` varchar(100) DEFAULT NULL,
  `cust_b_lname` varchar(100) NOT NULL,
  `cust_b_cname` varchar(100) DEFAULT NULL,
  `cust_b_phone` varchar(50) DEFAULT NULL,
  `cust_b_country` varchar(100) DEFAULT NULL,
  `cust_b_address` text,
  `cust_b_city` varchar(100) DEFAULT NULL,
  `cust_b_state` varchar(100) DEFAULT NULL,
  `cust_b_zip` varchar(30) DEFAULT NULL,
  `add_info` text NOT NULL,
  `cust_password` varchar(100) DEFAULT NULL,
  `cust_token` varchar(255) DEFAULT NULL,
  `cust_datetime` varchar(100) DEFAULT NULL,
  `cust_timestamp` varchar(100) DEFAULT NULL,
  `cust_status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`cust_id`, `cust_name`, `cust_cname`, `cust_email`, `cust_phone`, `cust_country`, `cust_address`, `cust_city`, `cust_state`, `cust_zip`, `cust_b_fname`, `cust_b_lname`, `cust_b_cname`, `cust_b_phone`, `cust_b_country`, `cust_b_address`, `cust_b_city`, `cust_b_state`, `cust_b_zip`, `add_info`, `cust_password`, `cust_token`, `cust_datetime`, `cust_timestamp`, `cust_status`) VALUES
(1, 'pravesh', NULL, 'pravesh001yadav@gmail.com', '8786554665', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'Pravesh@123#', NULL, NULL, NULL, 1),
(4, 'Michale Smith', NULL, 'michalesmith792@gmail.com', '9897253699', '', 'Vishweshwar colony,', 'Beed', 'Maharashtra', '431122', 'Vikas', 'Sejwar', NULL, '7618159814', 'India', 'khurja', 'bulandshahr', 'Uttar Pradesh', '203132', '', 'vikasch5', NULL, NULL, NULL, 1),
(6, 'dulhaghar@gmail.com', NULL, 'vikassejwar099@gmail.com', '7252063699', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'dulhaghar@1234', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_message`
--

CREATE TABLE `tbl_customer_message` (
  `customer_message_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `order_detail` text NOT NULL,
  `cust_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_customer_message`
--

INSERT INTO `tbl_customer_message` (`customer_message_id`, `subject`, `message`, `order_detail`, `cust_id`) VALUES
(1, 'Order has been shipped', 'thank you for Ordering', '', 0),
(2, 'Order has been shipped', 'Hello', '', 4),
(3, 'Order has been shipped', 'Thanks For Ordering', '\nCustomer Name: Michale Smith<br>\nCustomer Email: vikassejwar099@gmail.com<br>\nPayment Method: <br>\nPayment Date: 2023-10-29 10:32:38<br>\nPayment Details: <br><br>\nPaid Amount: 3099<br>\nPayment Status: Completed<br>\nShipping Status: Completed<br>\nPayment Id: pay_MtyteWMia2cHUn<br>\n            \n<br><b><u>Product Item 1</u></b><br>\nProduct Name: PaperLike {2 pack) Screen Protector Film for iPad Pro 12.9 (2022,2021,2020)- 12.9<br>\nSize: 1<br>\nColor: <br>\nQuantity: 1<br>\nUnit Price: <br>\n            ', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_review`
--

CREATE TABLE `tbl_customer_review` (
  `id` int(12) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_customer_review`
--

INSERT INTO `tbl_customer_review` (`id`, `name`, `email`, `title`, `content`) VALUES
(1, 'test', 'test@gmail.com', 'test', 'test'),
(2, 'Michale Smith', 'michalesmith792@gmail.com', 'qwerty', 'kjsdkjkjdsdssdkj'),
(3, 'Vikas kumar', 'vikassejwar099@gmail.com', 'Nice Product', 'Product is good'),
(4, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_end_category`
--

CREATE TABLE `tbl_end_category` (
  `ecat_id` int(11) NOT NULL,
  `ecat_name` varchar(255) NOT NULL,
  `mcat_id` int(11) NOT NULL,
  `show_home` enum('0','1') DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faq`
--

CREATE TABLE `tbl_faq` (
  `faq_id` int(11) NOT NULL,
  `faq_title` varchar(255) NOT NULL,
  `faq_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_language`
--

CREATE TABLE `tbl_language` (
  `lang_id` int(11) NOT NULL,
  `lang_name` varchar(255) NOT NULL,
  `lang_value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_language`
--

INSERT INTO `tbl_language` (`lang_id`, `lang_name`, `lang_value`) VALUES
(1, 'Currency', '$'),
(2, 'Search Product', 'Search Product'),
(3, 'Search', 'Search'),
(4, 'Submit', 'Submit'),
(5, 'Update', 'Update'),
(6, 'Read More', 'Read More'),
(7, 'Serial', 'Serial'),
(8, 'Photo', 'Photo'),
(9, 'Login', 'Login'),
(10, 'Customer Login', 'Customer Login'),
(11, 'Click here to login', 'Click here to login'),
(12, 'Back to Login Page', 'Back to Login Page'),
(13, 'Logged in as', 'Logged in as'),
(14, 'Logout', 'Logout'),
(15, 'Register', 'Register'),
(16, 'Customer Registration', 'Customer Registration'),
(17, 'Registration Successful', 'Registration Successful'),
(18, 'Cart', 'Cart'),
(19, 'View Cart', 'View Cart'),
(20, 'Update Cart', 'Update Cart'),
(21, 'Back to Cart', 'Back to Cart'),
(22, 'Checkout', 'Checkout'),
(23, 'Proceed to Checkout', 'Proceed to Checkout'),
(24, 'Orders', 'Orders'),
(25, 'Order History', 'Order History'),
(26, 'Order Details', 'Order Details'),
(27, 'Payment Date and Time', 'Payment Date and Time'),
(28, 'Transaction ID', 'Transaction ID'),
(29, 'Paid Amount', 'Paid Amount'),
(30, 'Payment Status', 'Payment Status'),
(31, 'Payment Method', 'Payment Method'),
(32, 'Payment ID', 'Payment ID'),
(33, 'Payment Section', 'Payment Section'),
(34, 'Select Payment Method', 'Select Payment Method'),
(35, 'Select a Method', 'Select a Method'),
(36, 'PayPal', 'PayPal'),
(37, 'Stripe', 'Stripe'),
(38, 'Bank Deposit', 'Bank Deposit'),
(39, 'Card Number', 'Card Number'),
(40, 'CVV', 'CVV'),
(41, 'Month', 'Month'),
(42, 'Year', 'Year'),
(43, 'Send to this Details', 'Send to this Details'),
(44, 'Transaction Information', 'Transaction Information'),
(45, 'Include transaction id and other information correctly', 'Include transaction id and other information correctly'),
(46, 'Pay Now', 'Pay Now'),
(47, 'Product Name', 'Product Name'),
(48, 'Product Details', 'Product Details'),
(49, 'Categories', 'Categories'),
(50, 'Category:', 'Category:'),
(51, 'All Products Under', 'All Products Under'),
(52, 'Select Size', 'Select Size'),
(53, 'Select Color', 'Select Color'),
(54, 'Product Price', 'Product Price'),
(55, 'Quantity', 'Quantity'),
(56, 'Out of Stock', 'Out of Stock'),
(57, 'Share This', 'Share This'),
(58, 'Share This Product', 'Share This Product'),
(59, 'Product Description', 'Product Description'),
(60, 'Features', 'Features'),
(61, 'Conditions', 'Conditions'),
(62, 'Return Policy', 'Return Policy'),
(63, 'Reviews', 'Reviews'),
(64, 'Review', 'Review'),
(65, 'Give a Review', 'Give a Review'),
(66, 'Write your comment (Optional)', 'Write your comment (Optional)'),
(67, 'Submit Review', 'Submit Review'),
(68, 'You already have given a rating!', 'You already have given a rating!'),
(69, 'You must have to login to give a review', 'You must have to login to give a review'),
(70, 'No description found', 'No description found'),
(71, 'No feature found', 'No feature found'),
(72, 'No condition found', 'No condition found'),
(73, 'No return policy found', 'No return policy found'),
(74, 'Review not found', 'Review not found'),
(75, 'Customer Name', 'Customer Name'),
(76, 'Comment', 'Comment'),
(77, 'Comments', 'Comments'),
(78, 'Rating', 'Rating'),
(79, 'Previous', 'Previous'),
(80, 'Next', 'Next'),
(81, 'Sub Total', 'Sub Total'),
(82, 'Total', 'Total'),
(83, 'Action', 'Action'),
(84, 'Shipping Cost', 'Shipping Cost'),
(85, 'Continue Shopping', 'Continue Shopping'),
(86, 'Update Billing Address', 'Update Billing Address'),
(87, 'Update Shipping Address', 'Update Shipping Address'),
(88, 'Update Billing and Shipping Info', 'Update Billing and Shipping Info'),
(89, 'Dashboard', 'Dashboard'),
(90, 'Welcome to the Dashboard', 'Welcome to the Dashboard'),
(91, 'Back to Dashboard', 'Back to Dashboard'),
(92, 'Subscribe', 'Subscribe'),
(93, 'Subscribe To Our Newsletter', 'Subscribe To Our Newsletter'),
(94, 'Email Address', 'Email Address'),
(95, 'Enter Your Email Address', 'Enter Your Email Address'),
(96, 'Password', 'Password'),
(97, 'Forget Password', 'Forget Password'),
(98, 'Retype Password', 'Retype Password'),
(99, 'Update Password', 'Update Password'),
(100, 'New Password', 'New Password'),
(101, 'Retype New Password', 'Retype New Password'),
(102, 'Full Name', 'Full Name'),
(103, 'Company Name', 'Company Name'),
(104, 'Phone Number', 'Phone Number'),
(105, 'Address', 'Address'),
(106, 'Country', 'Country'),
(107, 'City', 'City'),
(108, 'State', 'State'),
(109, 'Zip Code', 'Zip Code'),
(110, 'About Us', 'About Us'),
(111, 'Featured Posts', 'Featured Posts'),
(112, 'Popular Posts', 'Popular Posts'),
(113, 'Recent Posts', 'Recent Posts'),
(114, 'Contact Information', 'Contact Information'),
(115, 'Contact Form', 'Contact Form'),
(116, 'Our Office', 'Our Office'),
(117, 'Update Profile', 'Update Profile'),
(118, 'Send Message', 'Send Message'),
(119, 'Message', 'Message'),
(120, 'Find Us On Map', 'Find Us On Map'),
(121, 'Congratulation! Payment is successful.', 'Congratulation! Payment is successful.'),
(122, 'Billing and Shipping Information is updated successfully.', 'Billing and Shipping Information is updated successfully.'),
(123, 'Customer Name can not be empty.', 'Customer Name can not be empty.'),
(124, 'Phone Number can not be empty.', 'Phone Number can not be empty.'),
(125, 'Address can not be empty.', 'Address can not be empty.'),
(126, 'You must have to select a country.', 'You must have to select a country.'),
(127, 'City can not be empty.', 'City can not be empty.'),
(128, 'State can not be empty.', 'State can not be empty.'),
(129, 'Zip Code can not be empty.', 'Zip Code can not be empty.'),
(130, 'Profile Information is updated successfully.', 'Profile Information is updated successfully.'),
(131, 'Email Address can not be empty', 'Email Address can not be empty'),
(132, 'Email and/or Password can not be empty.', 'Email and/or Password can not be empty.'),
(133, 'Email Address does not match.', 'Email Address does not match.'),
(134, 'Email address must be valid.', 'Email address must be valid.'),
(135, 'You email address is not found in our system.', 'You email address is not found in our system.'),
(136, 'Please check your email and confirm your subscription.', 'Please check your email and confirm your subscription.'),
(137, 'Your email is verified successfully. You can now login to our website.', 'Your email is verified successfully. You can now login to our website.'),
(138, 'Password can not be empty.', 'Password can not be empty.'),
(139, 'Passwords do not match.', 'Passwords do not match.'),
(140, 'Please enter new and retype passwords.', 'Please enter new and retype passwords.'),
(141, 'Password is updated successfully.', 'Password is updated successfully.'),
(142, 'To reset your password, please click on the link below.', 'To reset your password, please click on the link below.'),
(143, 'PASSWORD RESET REQUEST - YOUR WEBSITE.COM', 'PASSWORD RESET REQUEST - YOUR WEBSITE.COM'),
(144, 'The password reset email time (24 hours) has expired. Please again try to reset your password.', 'The password reset email time (24 hours) has expired. Please again try to reset your password.'),
(145, 'A confirmation link is sent to your email address. You will get the password reset information in there.', 'A confirmation link is sent to your email address. You will get the password reset information in there.'),
(146, 'Password is reset successfully. You can now login.', 'Password is reset successfully. You can now login.'),
(147, 'Email Address Already Exists', 'Email Address Already Exists.'),
(148, 'Sorry! Your account is inactive. Please contact to the administrator.', 'Sorry! Your account is inactive. Please contact to the administrator.'),
(149, 'Change Password', 'Change Password'),
(150, 'Registration Email Confirmation for YOUR WEBSITE', 'Registration Email Confirmation for YOUR WEBSITE.'),
(151, 'Thank you for your registration! Your account has been created. To active your account click on the link below:', 'Thank you for your registration! Your account has been created. To active your account click on the link below:'),
(152, 'Your registration is completed. Please check your email address to follow the process to confirm your registration.', 'Your registration is completed. Please check your email address to follow the process to confirm your registration.'),
(153, 'No Product Found', 'No Product Found'),
(154, 'Add to Cart', 'Add to Cart'),
(155, 'Related Products', 'Related Products'),
(156, 'See all related products from below', 'See all the related products from below'),
(157, 'Size', 'Size'),
(158, 'Color', 'Color'),
(159, 'Price', 'Price'),
(160, 'Please login as customer to checkout', 'Please login as customer to checkout'),
(161, 'Billing Address', 'Billing Address'),
(162, 'Shipping Address', 'Shipping Address'),
(163, 'Rating is Submitted Successfully!', 'Rating is Submitted Successfully!');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mid_category`
--

CREATE TABLE `tbl_mid_category` (
  `mcat_id` int(11) NOT NULL,
  `mcat_name` varchar(255) DEFAULT NULL,
  `banner` varchar(300) DEFAULT NULL,
  `cbanner` varchar(300) DEFAULT NULL,
  `home_img` varchar(300) NOT NULL,
  `tcat_id` int(11) DEFAULT NULL,
  `content` longtext,
  `meta_title` text,
  `meta_keyword` text,
  `meta_description` text,
  `show_home` enum('1','0') DEFAULT '0',
  `slug` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_mid_category`
--

INSERT INTO `tbl_mid_category` (`mcat_id`, `mcat_name`, `banner`, `cbanner`, `home_img`, `tcat_id`, `content`, `meta_title`, `meta_keyword`, `meta_description`, `show_home`, `slug`) VALUES
(39, 'iPad Pro 11 ', NULL, NULL, '', 24, NULL, 'iPad Pro 11 ', 'iPad Pro 11 ', 'iPad Pro 11 ', '1', 'ipad-pro-11-'),
(40, 'iPad Pro 12.9', NULL, NULL, '', 24, NULL, 'iPad Pro 12.9', 'iPad Pro 12.9', 'iPad Pro 12.9', '1', 'ipad-pro-129'),
(41, 'iPad 10th Gen', NULL, NULL, '', 24, NULL, 'iPad 10th Generation', 'iPad 10th Generation', 'iPad 10th Gen', '1', 'ipad-10th-gen'),
(42, 'iPad 10.2 Inch (9th/8th/7th Gen)', NULL, NULL, '', 24, NULL, 'iPad 10.2 Inch (9th/8th/7th Gen)', 'iPad 10.2 Inch (9th/8th/7th Gen)', 'iPad 10.2 Inch (9th/8th/7th Gen)', '1', 'ipad-102-inch-9th8th7th-gen'),
(43, 'iPad 10.9\" (Air 5th Gen & Air 4th Gen)', NULL, NULL, '', 24, NULL, 'iPad 10.9\" (Air 5th Gen & Air 4th Gen)', 'iPad 10.9\" (Air 5th Gen & Air 4th Gen)', 'iPad 10.9\" (Air 5th Gen & Air 4th Gen)', '1', 'ipad-109-air-5th-gen--air-4th-gen'),
(44, 'iPad Air 3rd Gen & Pro10.5 \"', NULL, NULL, '', 24, NULL, 'iPad Air 3rd Gen & Pro10.5 \"', 'iPad Air 3rd Gen & Pro10.5 \"', 'iPad Air 3rd Gen & Pro10.5 \"', '1', 'ipad-air-3rd-gen--pro105-');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `size` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `unit_price` varchar(50) NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  `OrderDate` timestamp NULL DEFAULT NULL,
  `oid` varchar(100) DEFAULT NULL,
  `uid` varchar(100) DEFAULT NULL,
  `address` text,
  `aws_no` varchar(255) DEFAULT NULL,
  `delivery_link` varchar(300) DEFAULT NULL,
  `OrderStatus` varchar(200) DEFAULT NULL,
  `rtd` int(11) DEFAULT NULL,
  `delivery_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `about_title` varchar(255) NOT NULL,
  `about_content` text NOT NULL,
  `about_banner` varchar(255) NOT NULL,
  `about_meta_title` varchar(255) NOT NULL,
  `about_meta_keyword` text NOT NULL,
  `about_meta_description` text NOT NULL,
  `faq_title` varchar(255) NOT NULL,
  `faq_banner` varchar(255) NOT NULL,
  `faq_meta_title` varchar(255) NOT NULL,
  `faq_meta_keyword` text NOT NULL,
  `faq_meta_description` text NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_banner` varchar(255) NOT NULL,
  `blog_meta_title` varchar(255) NOT NULL,
  `blog_meta_keyword` text NOT NULL,
  `blog_meta_description` text NOT NULL,
  `contact_title` varchar(255) NOT NULL,
  `contact_banner` varchar(255) NOT NULL,
  `contact_meta_title` varchar(255) NOT NULL,
  `contact_meta_keyword` text NOT NULL,
  `contact_meta_description` text NOT NULL,
  `pgallery_title` varchar(255) NOT NULL,
  `pgallery_banner` varchar(255) NOT NULL,
  `pgallery_meta_title` varchar(255) NOT NULL,
  `pgallery_meta_keyword` text NOT NULL,
  `pgallery_meta_description` text NOT NULL,
  `vgallery_title` varchar(255) NOT NULL,
  `vgallery_banner` varchar(255) NOT NULL,
  `vgallery_meta_title` varchar(255) NOT NULL,
  `vgallery_meta_keyword` text NOT NULL,
  `vgallery_meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `about_title`, `about_content`, `about_banner`, `about_meta_title`, `about_meta_keyword`, `about_meta_description`, `faq_title`, `faq_banner`, `faq_meta_title`, `faq_meta_keyword`, `faq_meta_description`, `blog_title`, `blog_banner`, `blog_meta_title`, `blog_meta_keyword`, `blog_meta_description`, `contact_title`, `contact_banner`, `contact_meta_title`, `contact_meta_keyword`, `contact_meta_description`, `pgallery_title`, `pgallery_banner`, `pgallery_meta_title`, `pgallery_meta_keyword`, `pgallery_meta_description`, `vgallery_title`, `vgallery_banner`, `vgallery_meta_title`, `vgallery_meta_keyword`, `vgallery_meta_description`) VALUES
(1, 'About Us', '<p style=\"border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;\">Welcome to Ecommerce PHP Project!</p><p style=\"border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;\"><span style=\"border: 0px solid;\">We aim to offer our customers a variety of the latest [PRODUCTS_CATEGORY_NAME]. Weâ€™ve come a long way, so we know exactly which direction to take when supplying you with high quality yet budget-friendly products. We offer all of this while providing excellent customer service and friendly support.</span></p><p style=\"border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;\"><span style=\"border: 0px solid;\">We always keep an eye on the latest trends in [PRODUCTS CATEGORY NAME] and put our customersâ€™ wishes first. That is why we have satisfied customers all over the world, and are thrilled to be a part of the [PRODUCTS CATEGORY NAME] industry.</span></p><p style=\"border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;\"><span style=\"border: 0px solid;\">The interests of our customers are always top priority for us, so we hope you will enjoy our products as much as we enjoy making them available to you.</span></p><p style=\"\">We make sure you get the best quality outfits with hassle free returns and exchanges policy. We ensure what you see is exactly what you get!</p><ul><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Low Price Guarantee</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">24/7 Customer Support</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">E-Mail - Text - Call</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">We are here for you 24/7 online and via phone.</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Sizing & Color</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Worldwide Shipping</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Weâ€™d love to expand our business Internationally soon.</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Easy Returns</span></font></li></ul><p style=\"text-align: justify; \"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Bought an outfit but want to return it? We have a 3 days easy return policy. Please mail us at support@ecommercephp.com for more details.</span></font></p><p style=\"text-align: justify; \"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\"><b>Dream Dresses for Every Occasion</b></span></font></p><p style=\"text-align: justify; \"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Fashionys.com carries all carefully handpicked by our stylists. If youâ€™re interested in a particular model please mail us we will try our best to offer you the loved dress.</span></font></p><p style=\"text-align: justify; \"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\"><b>Verified Security</b></span></font></p><p style=\"text-align: justify; \"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">All our transactions are Verified by Norton and with the highest standards of security. Plus, there\'s a lot to go around too through regular exciting offers and gifts, so spread the word and refer us to everyone from your family, friends and colleagues and get rewarded for it. And to top it all, you can share your user experience by posting reviews. Donâ€™t wait any longer Sign up with us now! start stalking, start buying and start loving and start Introducing the beauty in you.</span></font></p>\r\n', 'about-banner.jpg', 'Ecommerce PHP - About Us', 'about, about us, about fashion, about company, about ecommerce php project', 'Our goal has always been to get the best in you we brought a huge collection whether youâ€™re attending a party, wedding, and all those events that require a WOW dress.', 'FAQ', 'faq-banner.jpg', 'Fashionys.com - FAQ', '', '', 'Blog', 'blog-banner.jpg', 'Ecommerce - Blog', '', '', 'Contact Us', 'contact-banner.jpg', 'Fashionys.com - Contact', '', '', 'Photo Gallery', 'pgallery-banner.jpg', 'Ecommerce - Photo Gallery', '', '', 'Video Gallery', 'vgallery-banner.jpg', 'Ecommerce - Video Gallery', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `customer_email` varchar(255) DEFAULT NULL,
  `address` text,
  `payment_date` varchar(50) DEFAULT NULL,
  `txnid` varchar(255) DEFAULT NULL,
  `paid_amount` int(11) DEFAULT NULL,
  `card_number` varchar(50) DEFAULT NULL,
  `card_cvv` varchar(10) DEFAULT NULL,
  `card_month` varchar(10) DEFAULT NULL,
  `card_year` varchar(10) DEFAULT NULL,
  `bank_transaction_info` text,
  `payment_method` varchar(20) DEFAULT NULL,
  `payment_status` varchar(25) DEFAULT NULL,
  `shipping_status` varchar(20) DEFAULT NULL,
  `payment_id` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_photo`
--

CREATE TABLE `tbl_photo` (
  `id` int(11) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_slug` varchar(255) NOT NULL,
  `post_content` text NOT NULL,
  `post_date` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `total_view` int(11) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(255) DEFAULT NULL,
  `p_size` varchar(255) DEFAULT NULL,
  `p_old_price` varchar(10) DEFAULT NULL,
  `p_current_price` varchar(10) DEFAULT NULL,
  `p_sku` varchar(255) DEFAULT NULL,
  `p_vendor` varchar(255) DEFAULT NULL,
  `p_delivery` varchar(255) DEFAULT NULL,
  `p_qty` int(10) DEFAULT NULL,
  `collection` varchar(100) DEFAULT NULL,
  `color` varchar(100) DEFAULT NULL,
  `variant` int(11) DEFAULT NULL,
  `p_featured_photo` varchar(255) DEFAULT NULL,
  `p_description` text,
  `p_short_description` text,
  `additional_info` text,
  `p_is_featured` int(1) DEFAULT NULL,
  `p_is_active` int(1) DEFAULT NULL,
  `mid_id` int(11) DEFAULT NULL,
  `top_id` int(11) DEFAULT NULL,
  `ecat_id` int(11) DEFAULT NULL,
  `slug` text,
  `video` varchar(300) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`p_id`, `p_name`, `p_size`, `p_old_price`, `p_current_price`, `p_sku`, `p_vendor`, `p_delivery`, `p_qty`, `collection`, `color`, `variant`, `p_featured_photo`, `p_description`, `p_short_description`, `additional_info`, `p_is_featured`, `p_is_active`, `mid_id`, `top_id`, `ecat_id`, `slug`, `video`, `create_date`) VALUES
(1, 'typecase Edge Magic Keyboard for iPad Air 5th/4th(2022,2020) & New iPad Pro 11 (4th,3rd,2nd Gen)', '3', '19999', '9190', 'B0BK4WWW1T', '', '2-4', 10, '10', '1', NULL, NULL, '<div id=\"productOverview_feature_div\" class=\"celwidget\" data-feature-name=\"productOverview\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"productOverview\" data-csa-c-slot-id=\"productOverview_feature_div\" data-csa-c-asin=\"B0BK4WWW1T\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"gd8w90-1riusn-gsn5ky-m0sang\" data-cel-widget=\"productOverview_feature_div\" style=\"color: rgb(15, 17, 17); font-family: \" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><div class=\"a-section a-spacing-small a-spacing-top-small\" style=\"margin-bottom: 0px; margin-top: 8px !important;\"><table class=\"a-normal a-spacing-micro\" style=\"width: 637.688px; background-color: rgb(255, 255, 255); margin-bottom: 0px !important;\"><tbody><tr class=\"a-spacing-small po-brand\" style=\"margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding-right: 3px; padding-bottom: 3px; margin-right: 0px; width: 166.931px; float: none !important;\"><span class=\"a-size-base a-text-bold\" style=\"font-weight: 700 !important; line-height: 20px !important;\">Brand</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding-bottom: 3px; padding-left: 3px; margin-right: 0px; width: 470.756px; float: none !important;\"><span class=\"a-size-base po-break-word\" style=\"word-break: break-word; line-height: 20px !important;\">typecase</span></td></tr><tr class=\"a-spacing-small po-compatible_devices\" style=\"margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding-top: 3px; padding-right: 3px; padding-bottom: 3px; margin-right: 0px; width: 166.931px; float: none !important;\"><span class=\"a-size-base a-text-bold\" style=\"font-weight: 700 !important; line-height: 20px !important;\">Compatible Devices</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding-top: 3px; padding-bottom: 3px; padding-left: 3px; margin-right: 0px; width: 470.756px; float: none !important;\"><span class=\"a-size-base\" style=\"line-height: 20px !important;\"><span class=\"a-truncate po-truncate-attribute\" data-a-word-break=\"normal\" data-a-truncate-name=\"po-attribute-truncate-1\" data-a-max-rows=\"3\" data-a-overflow-marker=\"â€¦\" data-a-recalculate=\"false\" data-a-updated=\"true\" style=\"display: inline-block; position: relative; width: 467.756px; overflow: hidden; word-break: normal; max-height: 3.9em; line-height: 1.3em !important;\"><span class=\"a-truncate-full a-offscreen\" style=\"display: inline-block; width: 467.756px; opacity: 0; position: absolute !important; left: 0px !important; bottom: -1px !important; z-index: -1 !important;\">iPad Pro 11-inch Latest 4th Generation 2022, iPad Pro 11-inch 3rd Generation 2021, iPad Pro 11-inch 2nd Generation 2020, iPad Pro 11-inch 1st Generation 2018, iPad Air 10.9-inch 4th Generation 2020, iPad Air 10.9-inch 5th Generation 2022</span><span class=\"a-truncate-cut\" aria-hidden=\"true\" style=\"display: inline-block; width: 467.756px; word-break: break-word; height: 3.9em;\">iPad Pro 11 (4th Gen 2022, 3rd Gen 2021, 2nd Gen 2020, 1st Gen 2018) &Â  iPad AirÂ  5th Gen 2022 & 4th Gen 2020Â </span></span></span></td></tr></tbody></table></div><div class=\"a-section a-spacing-small a-spacing-top-small\" style=\"margin-bottom: 0px; margin-top: 8px !important;\"><table class=\"a-normal a-spacing-micro\" style=\"width: 637.688px; background-color: rgb(255, 255, 255); margin-bottom: 0px !important;\"><tbody><tr class=\"a-spacing-small po-connectivity_technology\" style=\"margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding-top: 3px; padding-right: 3px; padding-bottom: 3px; margin-right: 0px; width: 166.931px; float: none !important;\"><span class=\"a-size-base a-text-bold\" style=\"font-weight: 700 !important; line-height: 20px !important;\">Connectivity Technology</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding-top: 3px; padding-bottom: 3px; padding-left: 3px; margin-right: 0px; width: 470.756px; float: none !important;\"><span class=\"a-size-base po-break-word\" style=\"word-break: break-word; line-height: 20px !important;\">Bluetooth</span></td></tr><tr class=\"a-spacing-small po-keyboard_description\" style=\"margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding-top: 3px; padding-right: 3px; padding-bottom: 3px; margin-right: 0px; width: 166.931px; float: none !important;\"><span class=\"a-size-base a-text-bold\" style=\"font-weight: 700 !important; line-height: 20px !important;\">Keyboard Description</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding-top: 3px; padding-bottom: 3px; padding-left: 3px; margin-right: 0px; width: 470.756px; float: none !important;\"><span class=\"a-size-base po-break-word\" style=\"word-break: break-word; line-height: 20px !important;\">Wireless</span></td></tr><tr class=\"a-spacing-small po-special_feature\" style=\"margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding-top: 3px; padding-right: 3px; margin-right: 0px; width: 166.931px; float: none !important;\"><span class=\"a-size-base a-text-bold\" style=\"font-weight: 700 !important; line-height: 20px !important;\">Special Feature</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding-top: 3px; padding-left: 3px; margin-right: 0px; width: 470.756px; float: none !important;\"><span class=\"a-size-base\" style=\"line-height: 20px !important;\"><span class=\"a-truncate po-truncate-attribute\" data-a-word-break=\"normal\" data-a-truncate-name=\"po-attribute-truncate-4\" data-a-max-rows=\"3\" data-a-overflow-marker=\"â€¦\" data-a-recalculate=\"false\" data-a-updated=\"true\" style=\"display: inline-block; position: relative; width: 467.756px; overflow: hidden; word-break: normal; max-height: 3.9em; line-height: 1.3em !important;\"><span class=\"a-truncate-full a-offscreen\" style=\"display: inline-block; width: 467.756px; opacity: 0; position: absolute !important; left: 0px !important; bottom: -1px !important; z-index: -1 !important;\">Magnetic Detachable, Gesture control, Multi Touch Trackpad, Advance Chipset with Bluetooth, Scissor switch keyboard Magnetic Smart Cover, Rechargeable, 730 gram Wt, Smart touchpad, Exclusive 10 Color Backlit( Only in typecase Keyboard), Power Saver- Auto Wake & Sleep</span><span class=\"a-truncate-cut\" aria-hidden=\"true\" style=\"display: inline-block; width: 467.756px; word-break: break-word; height: 3.9em;\">Magnetic Detachable, Gesture control, Multi Touch Trackpad, Advance Chipset with Bluetooth, Scissor switch keyboard Magnetic Smart Cover, Rechargeable, 730 gram Wt, Smart touchpad, Exclusive 10 Color Backlit</span></span></span></td></tr></tbody></table><h1 class=\"a-size-base-plus a-text-bold\" style=\"padding: 0px 0px 4px; margin-top: 0px; margin-bottom: 0px; text-rendering: optimizelegibility; color: rgb(15, 17, 17); font-family: \" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700=\"\" !important;=\"\" font-size:=\"\" 16px=\"\" line-height:=\"\" 24px=\"\" !important;\"=\"\">About this item</h1><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; padding: 0px;\"><li class=\"a-spacing-mini\" style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Compatibility : This keyboard case is compatible with iPad Pro 11 inch 4th Gen (A2759/A2435/A2761/A2762)/iPad Air 5th Gen 10.9 inch 2022 (A2588/A2589/A2591 )/iPad Pro 11 inch 3rd Gen (A2377/A2301/A2459/A2460)/iPad Air 4th Genn 10.9 inch 2020 (A2072/A2316/A2324/A2325)/iPad Pro 11 inch 2nd Gen (A2228/A2068/A2230/A2231)/iPad Pro 11 inch 1st Gen(A1980/A2013/A1934). Please check your iPad model carefully before purchasing.</span></li><li class=\"a-spacing-mini\" style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Exclusive 10-Color Backlight Keyboard with Shortcuts - Accurately typing on the Pro 11 inch & Air 5/4 case with keyboard even in a dark room, 10 colors backlight, three adjustable backlight brightness levels, give you a comfortable typing experience. No more searching around for basic functions, be more efficient with this Pro 11 & Air 5/4 keyboard with the PadOS shortcuts, to adjust brightness levels, change backlit colors, media, volume control, and more</span></li><li class=\"a-spacing-mini\" style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Built-in Touchpad - Navigates your iPad Pro 11 & Air 5/4 in a whole new way with a multi-touch touchpad, scroll, swipe, and more.The palm rejection function initiates when you are typing on the iPad Pro 11 inch & Air 10.9 inch keyboard, disabling the touchpad when you type. Edit documents, browse the web, and build presentations at an unparalleled speed.</span></li><li class=\"a-spacing-mini\" style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Smart Features - Magnetically attach your iPad to the back cover, attached your Apple Pencil on top, whether you are in the Cafe or office, smoothly transform your iPad Pro 11 & Air 5/4 case with keyboard into a laptop within a second. The iPad Pro 11 & Air 5th/4th generation keyboard comes with an exterior synthetic vegan leather, folds into a slim protective cover, gives front and back protection to your iPad, ensures your iPad stays safe, perfect for traveling, business, school.</span></li><li class=\"a-spacing-mini\" style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Package Contents: 1 x Keyboard with Trackpad; 1 x USB-C Charging Cable; 1 x Product Manual with step-by-step instructions & shortcut map. Free technical support and a manufacturerâ€™s warranty can give you peace of mind about your purchase and assurance that a great team is ready to help every step of the way.</span></li></ul></div><div class=\"a-section a-spacing-small a-spacing-top-small\" style=\"margin-bottom: 0px; margin-top: 8px !important;\"><div id=\"aplusBrandStory_feature_div\" class=\"celwidget pd_rd_w-dg1l0 pd_rd_r-PDXT89S6Z0GVBZ3R1D3Y pd_rd_wg-gR8zV\" data-feature-name=\"aplusBrandStory\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"aplusBrandStory\" data-csa-c-slot-id=\"aplusBrandStory_feature_div\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"2iao4s-khsk5x-8s7zgi-q6e1ap\" data-cel-widget=\"aplusBrandStory_feature_div\" style=\"font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px;\"><div id=\"aplus\" class=\"a-section a-spacing-large bucket\" style=\"margin-bottom: 0px;\"><h2 style=\"padding: 0px 0px 4px; margin: 0px; text-rendering: optimizelegibility; font-weight: 700; line-height: 32px; font-size: 21px !important; color: rgb(51, 51, 51) !important;\">From the brand</h2><div class=\"aplus-v2 desktop celwidget\" cel_widget_id=\"aplus\" data-csa-c-id=\"srycss-7yvik7-96v3gt-jwxr04\" data-cel-widget=\"aplus\" style=\"margin-left: auto; margin-right: auto;\"><div class=\"apm-brand-story-carousel-container\" style=\"position: relative; height: 625px; width: 1464px; max-width: 1464px; margin-left: auto; margin-right: auto; overflow: hidden;\"><div class=\"apm-brand-story-carousel-hero-container\" style=\"position: absolute; width: 1464px; height: 625px; max-width: 1464px; margin-left: auto; margin-right: auto; overflow: hidden;\"><div class=\"celwidget aplus-module brand-story-hero-1-image-logo aplus-brand-story-hero\" cel_widget_id=\"aplus-brand-story-hero-1-image-logo\" data-csa-c-id=\"qqt050-q2r18q-zhxoxo-2amncb\" data-cel-widget=\"aplus-brand-story-hero-1-image-logo\" style=\"position: absolute; width: 1464px;\"><div class=\"apm-brand-story-hero\" style=\"position: relative; width: 1464px; height: 625px; float: none;\"><div class=\"apm-brand-story-background-image\" style=\"overflow: hidden; position: absolute; width: 1464px; height: 624.994px;\"><img alt=\".\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/0fdbc7db-96ed-48fa-8c1d-b98ad23d464c.__CR0,0,1464,625_PT0_SX1464_V1___.jpg\" class=\"\" data-src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/0fdbc7db-96ed-48fa-8c1d-b98ad23d464c.__CR0,0,1464,625_PT0_SX1464_V1___.jpg\" style=\"max-width: 100%; vertical-align: top;\"></div></div><div style=\"clear: both;\"></div></div></div><div id=\"apm-brand-story-carousel\" data-a-carousel-options=\"{\"minimum_gutter_width\":10,\"show_partial_next\":true,\"name\":\"brand-story-carousel\",\"single_page_align\":\"left\",\"circular\":false,\"carousel_display_strategy\":\"single\",\"currentGutter\":10}\" class=\"a-begin a-carousel-container a-carousel-display-stretchyGoodness a-carousel-transition-slide apm-brand-story-carousel size-cards a-carousel-container a-carousel-initialized\" style=\"position: relative; overflow: hidden;\"><div class=\"a-row a-carousel-controls a-carousel-row a-carousel-has-buttons\" style=\"width: 1464px;\"><div class=\"a-carousel-row-inner\" style=\"position: relative; height: 453px; margin-top: 149px;\"><div class=\"a-carousel-col a-carousel-left\" style=\"overflow: visible; min-height: 1px; position: absolute; zoom: 1; left: 0px; padding: 0px; width: 40px; height: 453px; top: 0px; z-index: 1; visibility: hidden;\"><a class=\"a-button a-button-image a-carousel-button a-carousel-goto-prevpage\" tabindex=\"0\" href=\"https://www.amazon.in/dp/B0BK4WWW1T?th=1#\" id=\"a-autoid-26\" aria-disabled=\"true\" style=\"color: rgb(0, 113, 133); background: rgb(255, 255, 255); border-radius: 8px; border: none; cursor: pointer; display: inline-block; padding: 0px; text-align: center; vertical-align: middle; height: auto; position: relative; top: 181.2px; margin: 0px; box-shadow: rgba(213, 217, 217, 0.5) 0px 2px 5px 0px;\"><span class=\"a-button-inner\" style=\"display: block; position: relative; overflow: hidden; height: auto; border-radius: 0px 4px 4px 0px; padding: 20px 6px; line-height: 0; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; box-shadow: none;\"><i class=\"a-icon a-icon-previous\" style=\"background-image: url(\"https://m.media-amazon.com/images/S/sash/McBZv0ZvnbehkIx.png\"); background-size: 400px 900px; background-repeat: no-repeat; display: inline-block; vertical-align: top; width: 11px; height: 15px; background-position: -123px -7px; margin: 5px 6px 5px 5px;\"><span class=\"a-icon-alt\" style=\"position: absolute; left: -9999px; top: auto; display: block; width: 1px; height: 1px; line-height: 1px; font-size: 1px; overflow: hidden;\"></span></i></span></a></div><div class=\"a-carousel-col a-carousel-center\" style=\"overflow: hidden; min-height: 1px; position: relative; zoom: 1; margin: 0px 40px;\"><div class=\"a-carousel-viewport\" id=\"anonCarousel5\" style=\"width: 1384.01px; overflow: hidden; transform: translate3d(0px, 0px, 0px); transform-style: preserve-3d; backface-visibility: hidden; height: 453px;\"><ol class=\"a-carousel\" role=\"list\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style-type: none; height: 453px; text-wrap: nowrap; overflow-x: visible; letter-spacing: -4px; position: relative; transform: translate3d(0px, 0px, 0px); transform-style: preserve-3d; backface-visibility: hidden; width: 1384px;\"><li class=\"a-carousel-card apm-brand-story-carousel-card-0\" role=\"listitem\" aria-setsize=\"3\" aria-posinset=\"1\" aria-hidden=\"false\" style=\"list-style: none; overflow-wrap: break-word; margin: 0px 0px 0px 30px; vertical-align: top; text-align: left; overflow: hidden; width: 362px; min-height: 100%; display: inline-block; text-wrap: wrap; letter-spacing: normal; backface-visibility: hidden;\"></li><li class=\"a-carousel-card apm-brand-story-carousel-card-1\" role=\"listitem\" aria-setsize=\"3\" aria-posinset=\"2\" aria-hidden=\"false\" style=\"list-style: none; overflow-wrap: break-word; margin: 0px 0px 0px 30px; vertical-align: top; text-align: left; overflow: hidden; width: 362px; min-height: 100%; display: inline-block; text-wrap: wrap; letter-spacing: normal; backface-visibility: hidden;\"><div class=\"celwidget aplus-module brand-story-card-1-four-asin aplus-brand-story-card\" cel_widget_id=\"aplus-brand-story-card-1-four-asin\" data-csa-c-id=\"d79v7z-84xto4-eg2plb-l4kii5\" data-cel-widget=\"aplus-brand-story-card-1-four-asin\"><div class=\"apm-brand-story-card\" style=\"position: relative; width: 362px; height: 453px; float: none; padding: 12px;\"><div class=\"apm-brand-story-image-row\" style=\"height: 185px; padding: 0px; margin: auto; display: flex;\"><div class=\"apm-brand-story-image-cell\" style=\"box-sizing: content-box; padding: 0px; margin: 0px; width: 166px; border: 1px solid rgb(255, 255, 255);\"><a class=\"a-link-normal apm-brand-story-image-link\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://www.amazon.in/dp/B0B65MWM46/ref=emc_bcc_2_i\" style=\"color: rgb(0, 113, 133); display: block; width: 165.994px; height: 182.587px;\"><img alt=\"Typecase Edge Magic Style iPad Keyboard for iPad Air 5th Gen/4th Gen & iPad Pro 11 (2021,2020,201...\" src=\"https://m.media-amazon.com/images/I/41aLRMU6x5L.__AC_SR166,182___.jpg\" class=\"apm-brand-story-image-img\" data-src=\"https://m.media-amazon.com/images/I/41aLRMU6x5L.__AC_SR166,182___.jpg\" style=\"max-width: 100%; vertical-align: top; display: block; width: 165.994px; height: 182.587px; object-fit: cover;\"></a></div><div class=\"apm-brand-story-image-cell\" style=\"box-sizing: content-box; padding: 0px; margin: 0px; width: 166px; border: 1px solid rgb(255, 255, 255);\"><a class=\"a-link-normal apm-brand-story-image-link\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://www.amazon.in/dp/B0B65NCFJ1/ref=emc_bcc_2_i\" style=\"color: rgb(0, 113, 133); display: block; width: 165.994px; height: 182.587px;\"><img alt=\"Typecase Edge Magic Style iPad Keyboard for iPad Air 5th Gen/4th Gen & iPad Pro 11 (2021,2020,201...\" src=\"https://m.media-amazon.com/images/I/41XRkIeOsvL.__AC_SR166,182___.jpg\" class=\"apm-brand-story-image-img\" data-src=\"https://m.media-amazon.com/images/I/41XRkIeOsvL.__AC_SR166,182___.jpg\" style=\"max-width: 100%; vertical-align: top; display: block; width: 165.994px; height: 182.587px; object-fit: cover;\"></a></div></div><div class=\"apm-brand-story-image-row\" style=\"height: 185px; padding: 0px; margin: auto; display: flex;\"><div class=\"apm-brand-story-image-cell\" style=\"box-sizing: content-box; padding: 0px; margin: 0px; width: 166px; border: 1px solid rgb(255, 255, 255);\"><a class=\"a-link-normal apm-brand-story-image-link\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://www.amazon.in/dp/B09MZ67ZR8/ref=emc_bcc_2_i\" style=\"color: rgb(0, 113, 133); display: block; width: 165.994px; height: 182.587px;\"><img alt=\"Typecase Edge Magic Style iPad Keyboard for iPad Air 5th Gen, Air 4th Gen & iPad Pro 11 (2021,202...\" src=\"https://m.media-amazon.com/images/I/41BCmU7qNjL.__AC_SR166,182___.jpg\" class=\"apm-brand-story-image-img\" data-src=\"https://m.media-amazon.com/images/I/41BCmU7qNjL.__AC_SR166,182___.jpg\" style=\"max-width: 100%; vertical-align: top; display: block; width: 165.994px; height: 182.587px; object-fit: cover;\"></a></div><div class=\"apm-brand-story-image-cell\" style=\"box-sizing: content-box; padding: 0px; margin: 0px; width: 166px; border: 1px solid rgb(255, 255, 255);\"><a class=\"a-link-normal apm-brand-story-image-link\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://www.amazon.in/dp/B0BK4WWW1T/ref=emc_bcc_2_i\" style=\"color: rgb(0, 113, 133); display: block; width: 165.994px; height: 182.587px;\"><img alt=\"typecase Keyboard case for Pro 11 & 10.9 Inch ipad\" src=\"https://m.media-amazon.com/images/I/419gjTsY0JL.__AC_SR166,182___.jpg\" class=\"apm-brand-story-image-img\" data-src=\"https://m.media-amazon.com/images/I/419gjTsY0JL.__AC_SR166,182___.jpg\" style=\"max-width: 100%; vertical-align: top; display: block; width: 165.994px; height: 182.587px; object-fit: cover;\"></a></div></div><div class=\"apm-brand-story-text apm-brand-story-text-single\" style=\"margin-top: 20px;\"><h3 style=\"padding: 0px; margin: 0px; text-rendering: optimizelegibility; font-weight: 700; font-size: 18px; line-height: 24px; text-wrap: nowrap; overflow: hidden; text-overflow: ellipsis;\">typecase Edge for Air & Pro 11</h3></div></div><div style=\"clear: both;\"></div></div></li><li class=\"a-carousel-card apm-brand-story-carousel-card-2\" role=\"listitem\" aria-setsize=\"3\" aria-posinset=\"3\" aria-hidden=\"false\" style=\"list-style: none; overflow-wrap: break-word; margin: 0px 0px 0px 30px; vertical-align: top; text-align: left; overflow: hidden; width: 362px; min-height: 100%; display: inline-block; text-wrap: wrap; letter-spacing: normal; backface-visibility: hidden;\"><div class=\"celwidget aplus-module brand-story-card-1-four-asin aplus-brand-story-card\" cel_widget_id=\"aplus-brand-story-card-1-four-asin\" data-csa-c-id=\"wo7mcv-x78les-1mv46-6q7hlt\" data-cel-widget=\"aplus-brand-story-card-1-four-asin\"><div class=\"apm-brand-story-card\" style=\"position: relative; width: 362px; height: 453px; float: none; padding: 12px;\"><div class=\"apm-brand-story-image-row\" style=\"height: 185px; padding: 0px; margin: auto; display: flex;\"><div class=\"apm-brand-story-image-cell\" style=\"box-sizing: content-box; padding: 0px; margin: 0px; width: 166px; border: 1px solid rgb(255, 255, 255);\"><a class=\"a-link-normal apm-brand-story-image-link\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://www.amazon.in/dp/B096FHLD2T/ref=emc_bcc_2_i\" style=\"color: rgb(0, 113, 133); display: block; width: 165.994px; height: 182.587px;\"><img alt=\"Typecase Flexbook iPad Keyboard for Air 5th Gen, 4th Gen & iPad Pro 11(2021,2020,2018), 360Â° Rota...\" src=\"https://m.media-amazon.com/images/I/51a2jwy154L.__AC_SR166,182___.jpg\" class=\"apm-brand-story-image-img\" data-src=\"https://m.media-amazon.com/images/I/51a2jwy154L.__AC_SR166,182___.jpg\" style=\"max-width: 100%; vertical-align: top; display: block; width: 165.994px; height: 182.587px; object-fit: cover;\"></a></div><div class=\"apm-brand-story-image-cell\" style=\"box-sizing: content-box; padding: 0px; margin: 0px; width: 166px; border: 1px solid rgb(255, 255, 255);\"><a class=\"a-link-normal apm-brand-story-image-link\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://www.amazon.in/dp/B0B66P3JW8/ref=emc_bcc_2_i\" style=\"color: rgb(0, 113, 133); display: block; width: 165.994px; height: 182.587px;\"><img alt=\"Typecase Flexbook iPad Keyboard for Air 5th/4th Gen & iPad Pro 11, 360Â° Rotation, 10-Color Backli...\" src=\"https://m.media-amazon.com/images/I/51fDP026OUL.__AC_SR166,182___.jpg\" class=\"apm-brand-story-image-img\" data-src=\"https://m.media-amazon.com/images/I/51fDP026OUL.__AC_SR166,182___.jpg\" style=\"max-width: 100%; vertical-align: top; display: block; width: 165.994px; height: 182.587px; object-fit: cover;\"></a></div></div><div class=\"apm-brand-story-image-row\" style=\"height: 185px; padding: 0px; margin: auto; display: flex;\"><div class=\"apm-brand-story-image-cell\" style=\"box-sizing: content-box; padding: 0px; margin: 0px; width: 166px; border: 1px solid rgb(255, 255, 255);\"><a class=\"a-link-normal apm-brand-story-image-link\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://www.amazon.in/dp/B0B1J71XDP/ref=emc_bcc_2_i\" style=\"color: rgb(0, 113, 133); display: block; width: 165.994px; height: 182.587px;\"><img alt=\"Typecase Flexbook iPad Keyboard for Air 5th/4th Gen & iPad Pro 11, 360Â° Rotation, 10-Color Backli...\" src=\"https://m.media-amazon.com/images/I/41oC396yI5L.__AC_SR166,182___.jpg\" class=\"apm-brand-story-image-img\" data-src=\"https://m.media-amazon.com/images/I/41oC396yI5L.__AC_SR166,182___.jpg\" style=\"max-width: 100%; vertical-align: top; display: block; width: 165.994px; height: 182.587px; object-fit: cover;\"></a></div><div class=\"apm-brand-story-image-cell\" style=\"box-sizing: content-box; padding: 0px; margin: 0px; width: 166px; border: 1px solid rgb(255, 255, 255);\"><a class=\"a-link-normal apm-brand-story-image-link\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://www.amazon.in/dp/B0B1J74FSM/ref=emc_bcc_2_i\" style=\"color: rgb(0, 113, 133); display: block; width: 165.994px; height: 182.587px;\"><img alt=\"Typecase Flexbook iPad Keyboard for Air 5th/4th Gen & iPad Pro 11, 360Â° Rotation, 10-Color Backli...\" src=\"https://m.media-amazon.com/images/I/417b3gOkvuL.__AC_SR166,182___.jpg\" class=\"apm-brand-story-image-img\" data-src=\"https://m.media-amazon.com/images/I/417b3gOkvuL.__AC_SR166,182___.jpg\" style=\"max-width: 100%; vertical-align: top; display: block; width: 165.994px; height: 182.587px; object-fit: cover;\"></a></div></div><div class=\"apm-brand-story-text apm-brand-story-text-single\" style=\"margin-top: 20px;\"><h3 style=\"padding: 0px; margin: 0px; text-rendering: optimizelegibility; font-weight: 700; font-size: 18px; line-height: 24px; text-wrap: nowrap; overflow: hidden; text-overflow: ellipsis;\">typecase Touch iPad 10.9/11</h3></div></div><div style=\"clear: both;\"></div></div></li></ol></div></div><div class=\"a-carousel-col a-carousel-right\" style=\"overflow: visible; min-height: 1px; position: absolute; zoom: 1; text-align: right; right: 0px; padding: 0px; width: 40px; height: 453px; top: 0px; z-index: 1; visibility: hidden;\"><a class=\"a-button a-button-image a-carousel-button a-carousel-goto-nextpage\" tabindex=\"0\" href=\"https://www.amazon.in/dp/B0BK4WWW1T?th=1#\" id=\"a-autoid-27\" aria-disabled=\"false\" style=\"color: rgb(0, 113, 133); background: rgb(255, 255, 255); border-radius: 8px; border: none; cursor: pointer; display: inline-block; padding: 0px; text-align: center; vertical-align: middle; height: auto; position: relative; top: 181.2px; margin: 0px; box-shadow: rgba(213, 217, 217, 0.5) 0px 2px 5px 0px;\"><span class=\"a-button-inner\" style=\"display: block; position: relative; overflow: hidden; height: auto; border-radius: 4px 0px 0px 4px; padding: 20px 6px; line-height: 0; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; box-shadow: none;\"><i class=\"a-icon a-icon-next\" style=\"background-image: url(\"https://m.media-amazon.com/images/S/sash/McBZv0ZvnbehkIx.png\"); background-size: 400px 900px; background-repeat: no-repeat; display: inline-block; vertical-align: top; width: 11px; height: 15px; background-position: -105px -7px; margin: 5px 5px 5px 6px;\"><span class=\"a-icon-alt\" style=\"position: absolute; left: -9999px; top: auto; display: block; width: 1px; height: 1px; line-height: 1px; font-size: 1px; overflow: hidden;\"></span></i></span></a></div></div></div></div></div></div></div></div><div id=\"aplus_feature_div\" class=\"celwidget pd_rd_w-Yi1AA pd_rd_r-PDXT89S6Z0GVBZ3R1D3Y pd_rd_wg-gR8zV\" data-feature-name=\"aplus\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"aplus\" data-csa-c-slot-id=\"aplus_feature_div\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"kwqilk-v5c7k7-hrsy5x-amrzdf\" data-cel-widget=\"aplus_feature_div\" style=\"font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px;\"><div id=\"aplus\" class=\"a-section a-spacing-large bucket\" style=\"margin-bottom: 0px;\"><hr noshade=\"true\" size=\"1\" class=\"bucketDivider\" style=\"box-sizing: border-box; line-height: 19px; margin-top: 0px; filter: none; z-index: 0; zoom: 1; clear: left; background: 0px 0px !important; border-top-color: rgb(204, 204, 204) !important; height: 44px !important; margin-bottom: -36px !important;\"><h2 style=\"padding: 0px 0px 4px; margin: 0px; text-rendering: optimizelegibility; font-weight: 700; line-height: 32px; font-size: 21px !important; color: rgb(51, 51, 51) !important;\">From the manufacturer</h2><div class=\"aplus-v2 desktop celwidget\" cel_widget_id=\"aplus\" data-csa-c-id=\"2xy863-qgfod6-vn0ci7-7102hl\" data-cel-widget=\"aplus\" style=\"margin-left: auto; margin-right: auto;\"><div class=\"celwidget aplus-module 3p-module-b aplus-standard\" cel_widget_id=\"aplus-3p-module-b\" data-csa-c-id=\"kjdsqn-mt86a-ey2vba-f1hkou\" data-cel-widget=\"aplus-3p-module-b\"><div class=\"aplus-module-wrapper aplus-3p-fixed-width\" style=\"width: 970px; margin-left: auto; margin-right: auto;\"><h3 class=\"a-spacing-mini\" style=\"padding: 0px 0px 4px; margin-top: 0px; margin-right: 0px; margin-left: 0px; text-rendering: optimizelegibility; font-weight: 700; font-size: 18px; line-height: 24px; margin-bottom: 4px !important;\">Tpecase Edge Magnetic Magic Keyboard for iPad 5th/4th Gen & iPad Pro 11</h3><img alt=\".\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/077f2100-eda2-4014-908b-faea4f68e29d.__CR0,0,970,600_PT0_SX970_V1___.jpg\" class=\"a-spacing-base\" data-src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/077f2100-eda2-4014-908b-faea4f68e29d.__CR0,0,970,600_PT0_SX970_V1___.jpg\" style=\"max-width: 100%; vertical-align: top; margin-bottom: 12px !important;\"><p class=\"a-spacing-base\" style=\"padding: 0px; margin-bottom: 12px !important;\"></p><ul class=\"a-unordered-list a-vertical\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; padding: 0px;\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">It features an incredible typing experience, a track pad that opens up new ways to work with iPadOS and front and back protection.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Super Strong Magnetic Attraction---70+ magnets form a powerful magnetic net, which will not make the iPad at risk of falling.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Smart Sleep---Close the keyboard and automatically sleep, intelligent power saving to extend the life of the iPad battery.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">20,000 Keystrokes---The keyboard keys adopt scissor foot structure, and the built-in silicone weight standard has been tested by the market for a long time, and is committed to bringing customers the best keystroke experience.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">10 Backlit Colors---A variety of colors can be selected out of 10 Backlit colors while competition has only 7 color & 3 levels of brightness can be adjusted.</span></li></ul><p style=\"padding: 0px; margin-top: -4px; margin-bottom: 14px;\"></p><p class=\"a-spacing-base\" style=\"padding: 0px; margin-top: -4px; margin-bottom: 12px !important;\"><span class=\"a-text-bold\" style=\"font-weight: 700 !important;\">Compatibility</span></p><p class=\"a-spacing-base\" style=\"padding: 0px; margin-top: -4px; margin-bottom: 12px !important;\"><span class=\"a-text-bold\" style=\"font-weight: 700 !important;\">iPad Pro 11 4th Generation 2022 October</span></p><p class=\"a-spacing-base\" style=\"padding: 0px; margin-top: -4px; margin-bottom: 12px !important;\">iPad Pro 11 3rd Generation 2021 (A2301, A2459, A2460)</p><p class=\"a-spacing-base\" style=\"padding: 0px; margin-top: -4px; margin-bottom: 12px !important;\">iPad Pro 11 2nd Generation 2020 (A2228, A2068, A2231)</p><p class=\"a-spacing-base\" style=\"padding: 0px; margin-top: -4px; margin-bottom: 12px !important;\">iPad Pro 11 1st Generation 2018 (A1980, A2013, A1934, A1979)</p><p class=\"a-spacing-base\" style=\"padding: 0px; margin-top: -4px; margin-bottom: 12px !important;\">iPad Air 5th Generation 2022 (A2588, A2589, A2591)</p><p class=\"a-spacing-base\" style=\"padding: 0px; margin-top: -4px; margin-bottom: 0px;\">iPad Air 4th Generation 2020 (A2071, A2316, A2324, A2325)</p></div></div><div class=\"celwidget aplus-module 3p-module-b aplus-standard\" cel_widget_id=\"aplus-3p-module-b\" data-csa-c-id=\"n2z2qr-ya1e7y-xpm7xh-r8fetf\" data-cel-widget=\"aplus-3p-module-b\"><div class=\"aplus-module-wrapper aplus-3p-fixed-width\" style=\"width: 970px; margin-left: auto; margin-right: auto;\"><img alt=\".\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/7da255cf-13d2-4dcc-910f-bf7b8175f959.__CR0,0,970,600_PT0_SX970_V1___.jpg\" class=\"a-spacing-base\" data-src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/7da255cf-13d2-4dcc-910f-bf7b8175f959.__CR0,0,970,600_PT0_SX970_V1___.jpg\" style=\"max-width: 100%; vertical-align: top; margin-bottom: 12px !important;\"><p class=\"a-spacing-base\" style=\"padding: 0px; margin-bottom: 12px !important;\"></p><ul class=\"a-unordered-list a-vertical\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; padding: 0px;\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Smooth angle adjust ability delivers the perfect viewing angle.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Magic Keyboard--All the usage scenarios you need can be realized, whether it is office, study, painting, movies or other scenarios.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Folds into a case to provide front and back protection for traveling with iPad Pro.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">The Large-Capacity Battery: it brings a better battery life experience to your keyboard, and can last up to 2000 hours of battery life with light use.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Auto wake & sleep: Open the cover to automatically wake the iPad, close the cover to automatically sleep the iPad.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">90 Days Typing: The battery can achieve up to 90 days of standby for basic work needs, and one week of medium-to-high work needs.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Charging Time: 3-4 hours.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">10 Color Backlit better than competition 7 back lit</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">800 mAh Battery for more work output</span></li></ul><p style=\"padding: 0px; margin-top: -4px; margin-bottom: 0px;\"></p></div></div><div class=\"celwidget aplus-module 3p-module-b aplus-standard\" cel_widget_id=\"aplus-3p-module-b\" data-csa-c-id=\"p3z5a9-al15ms-3z8qvx-qzxsb6\" data-cel-widget=\"aplus-3p-module-b\"><div class=\"aplus-module-wrapper aplus-3p-fixed-width\" style=\"width: 970px; margin-left: auto; margin-right: auto;\"><img alt=\".\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/c2e7359a-355c-46bc-98c4-37a2b9152410.__CR0,0,970,600_PT0_SX970_V1___.jpg\" class=\"a-spacing-base\" data-src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/c2e7359a-355c-46bc-98c4-37a2b9152410.__CR0,0,970,600_PT0_SX970_V1___.jpg\" style=\"max-width: 100%; vertical-align: top; margin-bottom: 12px !important;\"><p class=\"a-spacing-base\" style=\"padding: 0px; margin-bottom: 12px !important;\"></p><ul class=\"a-unordered-list a-vertical\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; padding: 0px;\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">AN AMAZING COMPANION FOR IPAD AIR 5TH / 4TH GENERATION AND IPAD PRO 11 : It features a great typing experience, a trackpad that a good way to work with iPadOS, a Typeâ€‘C port for passâ€‘through charging for keyboard, and front and back protection. The Slim Keyboard features a floating cantilever design, allowing you to attach it magnetically and smoothly adjust it to the perfect viewing angle for you.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">KEYBOARD CASE FOR IPAD AIR 5TH 2022 /4TH AND IPAD PRO 11 2022 2021 & 2020 & 2018: Compatible with ipad air 5th 2022 , ipad air 4th 10.9 inch 2020 (Model Number:A2324/A2072/A2316/A2325) iPad Pro 11 inch 3rd Generation 2021 (Model Number: A2301/A2459/A2460 ), 2nd Generation 2020 (Model Number: A2228/A2068/A2230/A2231) / 1st Generation 2018 (Model Number: A1980/A2013/A1934). Not compatible with any other iPad devices.</span></li></ul><p style=\"padding: 0px; margin-top: -4px; margin-bottom: 0px;\"></p></div></div><div class=\"celwidget aplus-module 3p-module-b aplus-standard\" cel_widget_id=\"aplus-3p-module-b\" data-csa-c-id=\"ycsted-etvckf-c1oix7-fpe2by\" data-cel-widget=\"aplus-3p-module-b\"><div class=\"aplus-module-wrapper aplus-3p-fixed-width\" style=\"width: 970px; margin-left: auto; margin-right: auto;\"><img alt=\".\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/52b4c973-9cbe-4c69-b7e9-55f66c3f007e.__CR0,0,970,600_PT0_SX970_V1___.jpg\" class=\"a-spacing-base\" data-src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/52b4c973-9cbe-4c69-b7e9-55f66c3f007e.__CR0,0,970,600_PT0_SX970_V1___.jpg\" style=\"max-width: 100%; vertical-align: top; margin-bottom: 12px !important;\"><p class=\"a-spacing-base\" style=\"padding: 0px; margin-bottom: 12px !important;\"></p><ul class=\"a-unordered-list a-vertical\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; padding: 0px;\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">MULTIPLE STAND ANGLES FOR COMFORTABLE USE: our iPad Air 5th / 4th 10.9-inch and iPad Pro 11-inch smart keyboard case allows you to smoothly adjust to the perfect viewing angle for you to Typing, Reading, Gaming - giving you amazing versatility. Perfect for working, writing, or watching videos at work, school, travel, and home.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">SAFER, STRONGER, AND MORE CONVENIENT: strong magnetic attraction, which makes the ipad firmly fixed on the tablet case and provides front and back double-sided protection; the Bluetooth link, cooperating with iPad OS system, is more convenient to use.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">LONG LIFE BATTERY & NOTICE: Built-in Rechargeable battery could extend the battery life, 3 hours full charge, Continous working- 5 Hr(Back lit ON), 50-60 hrs( backlit OFF)stand by for 90 days (backlit off). Notice: The keyboard will enter into sleep mode if it doesn\'t work for 10 minutes, and it will disconnect with your iPad. It will wake up and connect to your iPad again when pressing any key.</span></li></ul><p style=\"padding: 0px; margin-top: -4px; margin-bottom: 0px;\"></p></div></div><div class=\"celwidget aplus-module 3p-module-b aplus-standard\" cel_widget_id=\"aplus-3p-module-b\" data-csa-c-id=\"fc9e48-18eluf-efher7-fwuhv3\" data-cel-widget=\"aplus-3p-module-b\"><div class=\"aplus-module-wrapper aplus-3p-fixed-width\" style=\"width: 970px; margin-left: auto; margin-right: auto;\"><img alt=\".\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/e553b261-3fca-4f5f-aba0-c1e7e374930b.__CR0,0,970,600_PT0_SX970_V1___.jpg\" class=\"a-spacing-base\" data-src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/e553b261-3fca-4f5f-aba0-c1e7e374930b.__CR0,0,970,600_PT0_SX970_V1___.jpg\" style=\"max-width: 100%; vertical-align: top; margin-bottom: 12px !important;\"><p class=\"a-spacing-base\" style=\"padding: 0px; margin-bottom: 12px !important;\"><span class=\"a-text-bold\" style=\"font-weight: 700 !important;\"><u>FAQ (READ IT CAREFULLY)</u></span></p><p class=\"a-spacing-base\" style=\"padding: 0px; margin-top: -4px; margin-bottom: 12px !important;\"></p><ol class=\"a-ordered-list a-vertical\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 20px; padding: 0px;\"><li style=\"list-style: decimal; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Tablet Keyboard is not a standalone Product . It must be connect to a iPad to work.</span></li><li style=\"list-style: decimal; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">To know about how to make Connection with iPad, Complete steps are mentioned in USER Manual Pls check it carefully. Still any issue, pls cont customer support ( mentioned on MRP label of Product, on user Guide or typecase india site)</span></li><li style=\"list-style: decimal; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Some time iPad version update is required for full functionality of product. Please remove or forget other previous Bluetooth keyboard or other devices before making connection.</span></li><li style=\"list-style: decimal; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Some customer could face Error in some iOS version at time of installation or connection. NO need to worry. If you receive these error then pls feel free to cont our tech spport & we will provide resolution of these error immediately. C<span class=\"a-text-bold\" style=\"font-weight: 700 !important;\">ustomer can cont us in case of any technical assistance just by dropping a msg on No</span>- -----------</span></li></ol><p style=\"padding: 0px; margin-top: -4px; margin-bottom: 14px;\"></p><p class=\"a-spacing-base\" style=\"padding: 0px; margin-top: -4px; margin-bottom: 12px !important;\">>>>>>> +91-9871555106<u><span class=\"a-text-bold\" style=\"font-weight: 700 !important;\">Â <<</span><</u><span class=\"a-text-bold\" style=\"font-weight: 700 !important;\"><u><<<<<<<----</u>------------</span></p></div></div></div></div></div><table class=\"a-normal a-spacing-micro\" style=\"width: 637.688px; background-color: rgb(255, 255, 255); margin-bottom: 0px !important;\"><tbody><tr class=\"a-spacing-small po-special_feature\" style=\"margin-bottom: 8px !important;\"><td class=\"a-span9\" style=\"vertical-align: top; padding-top: 3px; padding-left: 3px; margin-right: 0px; width: 470.756px; float: none !important;\"><span class=\"a-size-base\" style=\"line-height: 20px !important;\"><span class=\"a-truncate po-truncate-attribute\" data-a-word-break=\"normal\" data-a-truncate-name=\"po-attribute-truncate-4\" data-a-max-rows=\"3\" data-a-overflow-marker=\"â€¦\" data-a-recalculate=\"false\" data-a-updated=\"true\" style=\"display: inline-block; position: relative; width: 467.756px; overflow: hidden; word-break: normal; max-height: 3.9em; line-height: 1.3em !important;\"><span class=\"a-truncate-cut\" aria-hidden=\"true\" style=\"display: inline-block; width: 467.756px; word-break: break-word; height: 3.9em;\"><br></span></span></span></td></tr></tbody></table></div><div class=\"a-section a-spacing-small a-spacing-top-small\" style=\"margin-bottom: 0px; margin-top: 8px !important;\"><table class=\"a-normal a-spacing-micro\" style=\"width: 637.688px; background-color: rgb(255, 255, 255); margin-bottom: 0px !important;\"><tbody><tr class=\"a-spacing-small po-special_feature\" style=\"margin-bottom: 8px !important;\"><td class=\"a-span9\" style=\"vertical-align: top; padding-top: 3px; padding-left: 3px; margin-right: 0px; width: 470.756px; float: none !important;\"><span class=\"a-size-base\" style=\"line-height: 20px !important;\"><span class=\"a-truncate po-truncate-attribute\" data-a-word-break=\"normal\" data-a-truncate-name=\"po-attribute-truncate-4\" data-a-max-rows=\"3\" data-a-overflow-marker=\"â€¦\" data-a-recalculate=\"false\" data-a-updated=\"true\" style=\"display: inline-block; position: relative; width: 467.756px; overflow: hidden; word-break: normal; max-height: 3.9em; line-height: 1.3em !important;\"><span class=\"a-truncate-cut\" aria-hidden=\"true\" style=\"display: inline-block; width: 467.756px; word-break: break-word; height: 3.9em;\"><br></span></span></span></td></tr></tbody></table><table class=\"a-normal a-spacing-micro\" style=\"width: 637.688px; background-color: rgb(255, 255, 255); margin-bottom: 0px !important;\"><tbody><tr class=\"a-spacing-small po-compatible_devices\" style=\"margin-bottom: 8px !important;\"><td class=\"a-span9\" style=\"vertical-align: top; padding-top: 3px; padding-bottom: 3px; padding-left: 3px; margin-right: 0px; width: 470.756px; float: none !important;\"><span class=\"a-size-base\" style=\"line-height: 20px !important;\"><span class=\"a-truncate po-truncate-attribute\" data-a-word-break=\"normal\" data-a-truncate-name=\"po-attribute-truncate-1\" data-a-max-rows=\"3\" data-a-overflow-marker=\"â€¦\" data-a-recalculate=\"false\" data-a-updated=\"true\" style=\"display: inline-block; position: relative; width: 467.756px; overflow: hidden; word-break: normal; max-height: 3.9em; line-height: 1.3em !important;\"><span class=\"a-truncate-cut\" aria-hidden=\"true\" style=\"display: inline-block; width: 467.756px; word-break: break-word; height: 3.9em;\"><br></span></span></span></td></tr></tbody></table></div><div class=\"a-section a-spacing-small a-spacing-top-small\" style=\"margin-bottom: 0px; margin-top: 8px !important;\"><table class=\"a-normal a-spacing-micro\" style=\"width: 637.688px; background-color: rgb(255, 255, 255); margin-bottom: 0px !important;\"><tbody><tr class=\"a-spacing-small po-compatible_devices\" style=\"margin-bottom: 8px !important;\"><td class=\"a-span9\" style=\"vertical-align: top; padding-top: 3px; padding-bottom: 3px; padding-left: 3px; margin-right: 0px; width: 470.756px; float: none !important;\"><span class=\"a-size-base\" style=\"line-height: 20px !important;\"><span class=\"a-truncate po-truncate-attribute\" data-a-word-break=\"normal\" data-a-truncate-name=\"po-attribute-truncate-1\" data-a-max-rows=\"3\" data-a-overflow-marker=\"â€¦\" data-a-recalculate=\"false\" data-a-updated=\"true\" style=\"display: inline-block; position: relative; width: 467.756px; overflow: hidden; word-break: normal; max-height: 3.9em; line-height: 1.3em !important;\"><span class=\"a-truncate-cut\" aria-hidden=\"true\" style=\"display: inline-block; width: 467.756px; word-break: break-word; height: 3.9em;\"><br></span></span></span></td></tr></tbody></table></div></div>', '', '<div id=\"aplusBrandStory_feature_div\" class=\"celwidget pd_rd_w-dg1l0 pd_rd_r-PDXT89S6Z0GVBZ3R1D3Y pd_rd_wg-gR8zV\" data-feature-name=\"aplusBrandStory\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"aplusBrandStory\" data-csa-c-slot-id=\"aplusBrandStory_feature_div\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"2iao4s-khsk5x-8s7zgi-q6e1ap\" data-cel-widget=\"aplusBrandStory_feature_div\" style=\"color: rgb(15, 17, 17); font-family: \" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><div id=\"aplus\" class=\"a-section a-spacing-large bucket\" style=\"margin-bottom: 0px;\"><h2 style=\"padding: 0px 0px 4px; margin: 0px; text-rendering: optimizelegibility; font-weight: 700; line-height: 32px; font-size: 21px !important; color: rgb(51, 51, 51) !important;\"><br></h2></div></div>', 1, 1, 39, 24, 0, 'typecase-edge-magic-keyboard-for-ipad-air-5th4th20222020--new-ipad-pro-11-4th3rd2nd-gen', 'https://www.youtube.com/embed/GOvcTzunU5I?si=tWAEYiOTeFcqynMi', '2023-11-03 05:51:12');
INSERT INTO `tbl_product` (`p_id`, `p_name`, `p_size`, `p_old_price`, `p_current_price`, `p_sku`, `p_vendor`, `p_delivery`, `p_qty`, `collection`, `color`, `variant`, `p_featured_photo`, `p_description`, `p_short_description`, `additional_info`, `p_is_featured`, `p_is_active`, `mid_id`, `top_id`, `ecat_id`, `slug`, `video`, `create_date`) VALUES
(2, 'typecase Edge Magic Keyboard for iPad Air 5th/4th(2022,2020) & New iPad Pro 11 (4th,3rd,2nd Gen)', '3', '19999', '9190', 'B0B65MWM46', 'typecase India (Digital Pentagram)', '2-4', 1, '10', '8', 1, NULL, '<div id=\"productOverview_feature_div\" class=\"celwidget\" data-feature-name=\"productOverview\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"productOverview\" data-csa-c-slot-id=\"productOverview_feature_div\" data-csa-c-asin=\"B0BK4WWW1T\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"gd8w90-1riusn-gsn5ky-m0sang\" data-cel-widget=\"productOverview_feature_div\" style=\"color: rgb(15, 17, 17); font-family: \" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><div class=\"a-section a-spacing-small a-spacing-top-small\" style=\"margin-bottom: 0px; margin-top: 8px !important;\"><table class=\"a-normal a-spacing-micro\" style=\"width: 637.688px; background-color: rgb(255, 255, 255); margin-bottom: 0px !important;\"><tbody><tr class=\"a-spacing-small po-brand\" style=\"margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding-right: 3px; padding-bottom: 3px; margin-right: 0px; width: 166.931px; float: none !important;\"><span class=\"a-size-base a-text-bold\" style=\"font-weight: 700 !important; line-height: 20px !important;\">Brand</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding-bottom: 3px; padding-left: 3px; margin-right: 0px; width: 470.756px; float: none !important;\"><span class=\"a-size-base po-break-word\" style=\"word-break: break-word; line-height: 20px !important;\">typecase</span></td></tr><tr class=\"a-spacing-small po-compatible_devices\" style=\"margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding-top: 3px; padding-right: 3px; padding-bottom: 3px; margin-right: 0px; width: 166.931px; float: none !important;\"><span class=\"a-size-base a-text-bold\" style=\"font-weight: 700 !important; line-height: 20px !important;\">Compatible Devices</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding-top: 3px; padding-bottom: 3px; padding-left: 3px; margin-right: 0px; width: 470.756px; float: none !important;\"><span class=\"a-size-base\" style=\"line-height: 20px !important;\"><span class=\"a-truncate po-truncate-attribute\" data-a-word-break=\"normal\" data-a-truncate-name=\"po-attribute-truncate-1\" data-a-max-rows=\"3\" data-a-overflow-marker=\"â€¦\" data-a-recalculate=\"false\" data-a-updated=\"true\" style=\"display: inline-block; position: relative; width: 467.756px; overflow: hidden; word-break: normal; max-height: 3.9em; line-height: 1.3em !important;\"><span class=\"a-truncate-full a-offscreen\" style=\"display: inline-block; width: 467.756px; opacity: 0; position: absolute !important; left: 0px !important; bottom: -1px !important; z-index: -1 !important;\">iPad Pro 11-inch Latest 4th Generation 2022, iPad Pro 11-inch 3rd Generation 2021, iPad Pro 11-inch 2nd Generation 2020, iPad Pro 11-inch 1st Generation 2018, iPad Air 10.9-inch 4th Generation 2020, iPad Air 10.9-inch 5th Generation 2022</span><span class=\"a-truncate-cut\" aria-hidden=\"true\" style=\"display: inline-block; width: 467.756px; word-break: break-word; height: 3.9em;\">iPad Pro 11 (4th Gen 2022, 3rd Gen 2021, 2nd Gen 2020, 1st Gen 2018) &Â  iPad AirÂ  5th Gen 2022 & 4th Gen 2020Â </span></span></span></td></tr></tbody></table></div><div class=\"a-section a-spacing-small a-spacing-top-small\" style=\"margin-bottom: 0px; margin-top: 8px !important;\"><table class=\"a-normal a-spacing-micro\" style=\"width: 637.688px; background-color: rgb(255, 255, 255); margin-bottom: 0px !important;\"><tbody><tr class=\"a-spacing-small po-connectivity_technology\" style=\"margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding-top: 3px; padding-right: 3px; padding-bottom: 3px; margin-right: 0px; width: 166.931px; float: none !important;\"><span class=\"a-size-base a-text-bold\" style=\"font-weight: 700 !important; line-height: 20px !important;\">Connectivity Technology</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding-top: 3px; padding-bottom: 3px; padding-left: 3px; margin-right: 0px; width: 470.756px; float: none !important;\"><span class=\"a-size-base po-break-word\" style=\"word-break: break-word; line-height: 20px !important;\">Bluetooth</span></td></tr><tr class=\"a-spacing-small po-keyboard_description\" style=\"margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding-top: 3px; padding-right: 3px; padding-bottom: 3px; margin-right: 0px; width: 166.931px; float: none !important;\"><span class=\"a-size-base a-text-bold\" style=\"font-weight: 700 !important; line-height: 20px !important;\">Keyboard Description</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding-top: 3px; padding-bottom: 3px; padding-left: 3px; margin-right: 0px; width: 470.756px; float: none !important;\"><span class=\"a-size-base po-break-word\" style=\"word-break: break-word; line-height: 20px !important;\">Wireless</span></td></tr><tr class=\"a-spacing-small po-special_feature\" style=\"margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding-top: 3px; padding-right: 3px; margin-right: 0px; width: 166.931px; float: none !important;\"><span class=\"a-size-base a-text-bold\" style=\"font-weight: 700 !important; line-height: 20px !important;\">Special Feature</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding-top: 3px; padding-left: 3px; margin-right: 0px; width: 470.756px; float: none !important;\"><span class=\"a-size-base\" style=\"line-height: 20px !important;\"><span class=\"a-truncate po-truncate-attribute\" data-a-word-break=\"normal\" data-a-truncate-name=\"po-attribute-truncate-4\" data-a-max-rows=\"3\" data-a-overflow-marker=\"â€¦\" data-a-recalculate=\"false\" data-a-updated=\"true\" style=\"display: inline-block; position: relative; width: 467.756px; overflow: hidden; word-break: normal; max-height: 3.9em; line-height: 1.3em !important;\"><span class=\"a-truncate-full a-offscreen\" style=\"display: inline-block; width: 467.756px; opacity: 0; position: absolute !important; left: 0px !important; bottom: -1px !important; z-index: -1 !important;\">Magnetic Detachable, Gesture control, Multi Touch Trackpad, Advance Chipset with Bluetooth, Scissor switch keyboard Magnetic Smart Cover, Rechargeable, 730 gram Wt, Smart touchpad, Exclusive 10 Color Backlit( Only in typecase Keyboard), Power Saver- Auto Wake & Sleep</span><span class=\"a-truncate-cut\" aria-hidden=\"true\" style=\"display: inline-block; width: 467.756px; word-break: break-word; height: 3.9em;\">Magnetic Detachable, Gesture control, Multi Touch Trackpad, Advance Chipset with Bluetooth, Scissor switch keyboard Magnetic Smart Cover, Rechargeable, 730 gram Wt, Smart touchpad, Exclusive 10 Color Backlit</span></span></span></td></tr></tbody></table><h1 class=\"a-size-base-plus a-text-bold\" style=\"padding: 0px 0px 4px; margin-top: 0px; margin-bottom: 0px; text-rendering: optimizelegibility; color: rgb(15, 17, 17); font-family: \" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700=\"\" !important;=\"\" font-size:=\"\" 16px=\"\" line-height:=\"\" 24px=\"\" !important;\"=\"\">About this item</h1><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; padding: 0px;\"><li class=\"a-spacing-mini\" style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Compatibility : This keyboard case is compatible with iPad Pro 11 inch 4th Gen (A2759/A2435/A2761/A2762)/iPad Air 5th Gen 10.9 inch 2022 (A2588/A2589/A2591 )/iPad Pro 11 inch 3rd Gen (A2377/A2301/A2459/A2460)/iPad Air 4th Genn 10.9 inch 2020 (A2072/A2316/A2324/A2325)/iPad Pro 11 inch 2nd Gen (A2228/A2068/A2230/A2231)/iPad Pro 11 inch 1st Gen(A1980/A2013/A1934). Please check your iPad model carefully before purchasing.</span></li><li class=\"a-spacing-mini\" style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Exclusive 10-Color Backlight Keyboard with Shortcuts - Accurately typing on the Pro 11 inch & Air 5/4 case with keyboard even in a dark room, 10 colors backlight, three adjustable backlight brightness levels, give you a comfortable typing experience. No more searching around for basic functions, be more efficient with this Pro 11 & Air 5/4 keyboard with the PadOS shortcuts, to adjust brightness levels, change backlit colors, media, volume control, and more</span></li><li class=\"a-spacing-mini\" style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Built-in Touchpad - Navigates your iPad Pro 11 & Air 5/4 in a whole new way with a multi-touch touchpad, scroll, swipe, and more.The palm rejection function initiates when you are typing on the iPad Pro 11 inch & Air 10.9 inch keyboard, disabling the touchpad when you type. Edit documents, browse the web, and build presentations at an unparalleled speed.</span></li><li class=\"a-spacing-mini\" style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Smart Features - Magnetically attach your iPad to the back cover, attached your Apple Pencil on top, whether you are in the Cafe or office, smoothly transform your iPad Pro 11 & Air 5/4 case with keyboard into a laptop within a second. The iPad Pro 11 & Air 5th/4th generation keyboard comes with an exterior synthetic vegan leather, folds into a slim protective cover, gives front and back protection to your iPad, ensures your iPad stays safe, perfect for traveling, business, school.</span></li><li class=\"a-spacing-mini\" style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Package Contents: 1 x Keyboard with Trackpad; 1 x USB-C Charging Cable; 1 x Product Manual with step-by-step instructions & shortcut map. Free technical support and a manufacturerâ€™s warranty can give you peace of mind about your purchase and assurance that a great team is ready to help every step of the way.</span></li></ul></div><div class=\"a-section a-spacing-small a-spacing-top-small\" style=\"margin-bottom: 0px; margin-top: 8px !important;\"><div id=\"aplusBrandStory_feature_div\" class=\"celwidget pd_rd_w-dg1l0 pd_rd_r-PDXT89S6Z0GVBZ3R1D3Y pd_rd_wg-gR8zV\" data-feature-name=\"aplusBrandStory\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"aplusBrandStory\" data-csa-c-slot-id=\"aplusBrandStory_feature_div\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"2iao4s-khsk5x-8s7zgi-q6e1ap\" data-cel-widget=\"aplusBrandStory_feature_div\" style=\"font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px;\"><div id=\"aplus\" class=\"a-section a-spacing-large bucket\" style=\"margin-bottom: 0px;\"><h2 style=\"padding: 0px 0px 4px; margin: 0px; text-rendering: optimizelegibility; font-weight: 700; line-height: 32px; font-size: 21px !important; color: rgb(51, 51, 51) !important;\">From the brand</h2><div class=\"aplus-v2 desktop celwidget\" cel_widget_id=\"aplus\" data-csa-c-id=\"srycss-7yvik7-96v3gt-jwxr04\" data-cel-widget=\"aplus\" style=\"margin-left: auto; margin-right: auto;\"><div class=\"apm-brand-story-carousel-container\" style=\"position: relative; height: 625px; width: 1464px; max-width: 1464px; margin-left: auto; margin-right: auto; overflow: hidden;\"><div class=\"apm-brand-story-carousel-hero-container\" style=\"position: absolute; width: 1464px; height: 625px; max-width: 1464px; margin-left: auto; margin-right: auto; overflow: hidden;\"><div class=\"celwidget aplus-module brand-story-hero-1-image-logo aplus-brand-story-hero\" cel_widget_id=\"aplus-brand-story-hero-1-image-logo\" data-csa-c-id=\"qqt050-q2r18q-zhxoxo-2amncb\" data-cel-widget=\"aplus-brand-story-hero-1-image-logo\" style=\"position: absolute; width: 1464px;\"><div class=\"apm-brand-story-hero\" style=\"position: relative; width: 1464px; height: 625px; float: none;\"><div class=\"apm-brand-story-background-image\" style=\"overflow: hidden; position: absolute; width: 1464px; height: 624.994px;\"><img alt=\".\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/0fdbc7db-96ed-48fa-8c1d-b98ad23d464c.__CR0,0,1464,625_PT0_SX1464_V1___.jpg\" class=\"\" data-src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/0fdbc7db-96ed-48fa-8c1d-b98ad23d464c.__CR0,0,1464,625_PT0_SX1464_V1___.jpg\" style=\"max-width: 100%; vertical-align: top;\"></div></div><div style=\"clear: both;\"></div></div></div><div id=\"apm-brand-story-carousel\" data-a-carousel-options=\"{\"minimum_gutter_width\":10,\"show_partial_next\":true,\"name\":\"brand-story-carousel\",\"single_page_align\":\"left\",\"circular\":false,\"carousel_display_strategy\":\"single\",\"currentGutter\":10}\" class=\"a-begin a-carousel-container a-carousel-display-stretchyGoodness a-carousel-transition-slide apm-brand-story-carousel size-cards a-carousel-container a-carousel-initialized\" style=\"position: relative; overflow: hidden;\"><div class=\"a-row a-carousel-controls a-carousel-row a-carousel-has-buttons\" style=\"width: 1464px;\"><div class=\"a-carousel-row-inner\" style=\"position: relative; height: 453px; margin-top: 149px;\"><div class=\"a-carousel-col a-carousel-left\" style=\"overflow: visible; min-height: 1px; position: absolute; zoom: 1; left: 0px; padding: 0px; width: 40px; height: 453px; top: 0px; z-index: 1; visibility: hidden;\"><a class=\"a-button a-button-image a-carousel-button a-carousel-goto-prevpage\" tabindex=\"0\" href=\"https://www.amazon.in/dp/B0BK4WWW1T?th=1#\" id=\"a-autoid-26\" aria-disabled=\"true\" style=\"color: rgb(0, 113, 133); background: rgb(255, 255, 255); border-radius: 8px; border: none; cursor: pointer; display: inline-block; padding: 0px; text-align: center; vertical-align: middle; height: auto; position: relative; top: 181.2px; margin: 0px; box-shadow: rgba(213, 217, 217, 0.5) 0px 2px 5px 0px;\"><span class=\"a-button-inner\" style=\"display: block; position: relative; overflow: hidden; height: auto; border-radius: 0px 4px 4px 0px; padding: 20px 6px; line-height: 0; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; box-shadow: none;\"><i class=\"a-icon a-icon-previous\" style=\"background-image: url(\"https://m.media-amazon.com/images/S/sash/McBZv0ZvnbehkIx.png\"); background-size: 400px 900px; background-repeat: no-repeat; display: inline-block; vertical-align: top; width: 11px; height: 15px; background-position: -123px -7px; margin: 5px 6px 5px 5px;\"><span class=\"a-icon-alt\" style=\"position: absolute; left: -9999px; top: auto; display: block; width: 1px; height: 1px; line-height: 1px; font-size: 1px; overflow: hidden;\"></span></i></span></a></div><div class=\"a-carousel-col a-carousel-center\" style=\"overflow: hidden; min-height: 1px; position: relative; zoom: 1; margin: 0px 40px;\"><div class=\"a-carousel-viewport\" id=\"anonCarousel5\" style=\"width: 1384.01px; overflow: hidden; transform: translate3d(0px, 0px, 0px); transform-style: preserve-3d; backface-visibility: hidden; height: 453px;\"><ol class=\"a-carousel\" role=\"list\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style-type: none; height: 453px; text-wrap: nowrap; overflow-x: visible; letter-spacing: -4px; position: relative; transform: translate3d(0px, 0px, 0px); transform-style: preserve-3d; backface-visibility: hidden; width: 1384px;\"><li class=\"a-carousel-card apm-brand-story-carousel-card-0\" role=\"listitem\" aria-setsize=\"3\" aria-posinset=\"1\" aria-hidden=\"false\" style=\"list-style: none; overflow-wrap: break-word; margin: 0px 0px 0px 30px; vertical-align: top; text-align: left; overflow: hidden; width: 362px; min-height: 100%; display: inline-block; text-wrap: wrap; letter-spacing: normal; backface-visibility: hidden;\"></li><li class=\"a-carousel-card apm-brand-story-carousel-card-1\" role=\"listitem\" aria-setsize=\"3\" aria-posinset=\"2\" aria-hidden=\"false\" style=\"list-style: none; overflow-wrap: break-word; margin: 0px 0px 0px 30px; vertical-align: top; text-align: left; overflow: hidden; width: 362px; min-height: 100%; display: inline-block; text-wrap: wrap; letter-spacing: normal; backface-visibility: hidden;\"><div class=\"celwidget aplus-module brand-story-card-1-four-asin aplus-brand-story-card\" cel_widget_id=\"aplus-brand-story-card-1-four-asin\" data-csa-c-id=\"d79v7z-84xto4-eg2plb-l4kii5\" data-cel-widget=\"aplus-brand-story-card-1-four-asin\"><div class=\"apm-brand-story-card\" style=\"position: relative; width: 362px; height: 453px; float: none; padding: 12px;\"><div class=\"apm-brand-story-image-row\" style=\"height: 185px; padding: 0px; margin: auto; display: flex;\"><div class=\"apm-brand-story-image-cell\" style=\"box-sizing: content-box; padding: 0px; margin: 0px; width: 166px; border: 1px solid rgb(255, 255, 255);\"><a class=\"a-link-normal apm-brand-story-image-link\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://www.amazon.in/dp/B0B65MWM46/ref=emc_bcc_2_i\" style=\"color: rgb(0, 113, 133); display: block; width: 165.994px; height: 182.587px;\"><img alt=\"Typecase Edge Magic Style iPad Keyboard for iPad Air 5th Gen/4th Gen & iPad Pro 11 (2021,2020,201...\" src=\"https://m.media-amazon.com/images/I/41aLRMU6x5L.__AC_SR166,182___.jpg\" class=\"apm-brand-story-image-img\" data-src=\"https://m.media-amazon.com/images/I/41aLRMU6x5L.__AC_SR166,182___.jpg\" style=\"max-width: 100%; vertical-align: top; display: block; width: 165.994px; height: 182.587px; object-fit: cover;\"></a></div><div class=\"apm-brand-story-image-cell\" style=\"box-sizing: content-box; padding: 0px; margin: 0px; width: 166px; border: 1px solid rgb(255, 255, 255);\"><a class=\"a-link-normal apm-brand-story-image-link\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://www.amazon.in/dp/B0B65NCFJ1/ref=emc_bcc_2_i\" style=\"color: rgb(0, 113, 133); display: block; width: 165.994px; height: 182.587px;\"><img alt=\"Typecase Edge Magic Style iPad Keyboard for iPad Air 5th Gen/4th Gen & iPad Pro 11 (2021,2020,201...\" src=\"https://m.media-amazon.com/images/I/41XRkIeOsvL.__AC_SR166,182___.jpg\" class=\"apm-brand-story-image-img\" data-src=\"https://m.media-amazon.com/images/I/41XRkIeOsvL.__AC_SR166,182___.jpg\" style=\"max-width: 100%; vertical-align: top; display: block; width: 165.994px; height: 182.587px; object-fit: cover;\"></a></div></div><div class=\"apm-brand-story-image-row\" style=\"height: 185px; padding: 0px; margin: auto; display: flex;\"><div class=\"apm-brand-story-image-cell\" style=\"box-sizing: content-box; padding: 0px; margin: 0px; width: 166px; border: 1px solid rgb(255, 255, 255);\"><a class=\"a-link-normal apm-brand-story-image-link\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://www.amazon.in/dp/B09MZ67ZR8/ref=emc_bcc_2_i\" style=\"color: rgb(0, 113, 133); display: block; width: 165.994px; height: 182.587px;\"><img alt=\"Typecase Edge Magic Style iPad Keyboard for iPad Air 5th Gen, Air 4th Gen & iPad Pro 11 (2021,202...\" src=\"https://m.media-amazon.com/images/I/41BCmU7qNjL.__AC_SR166,182___.jpg\" class=\"apm-brand-story-image-img\" data-src=\"https://m.media-amazon.com/images/I/41BCmU7qNjL.__AC_SR166,182___.jpg\" style=\"max-width: 100%; vertical-align: top; display: block; width: 165.994px; height: 182.587px; object-fit: cover;\"></a></div><div class=\"apm-brand-story-image-cell\" style=\"box-sizing: content-box; padding: 0px; margin: 0px; width: 166px; border: 1px solid rgb(255, 255, 255);\"><a class=\"a-link-normal apm-brand-story-image-link\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://www.amazon.in/dp/B0BK4WWW1T/ref=emc_bcc_2_i\" style=\"color: rgb(0, 113, 133); display: block; width: 165.994px; height: 182.587px;\"><img alt=\"typecase Keyboard case for Pro 11 & 10.9 Inch ipad\" src=\"https://m.media-amazon.com/images/I/419gjTsY0JL.__AC_SR166,182___.jpg\" class=\"apm-brand-story-image-img\" data-src=\"https://m.media-amazon.com/images/I/419gjTsY0JL.__AC_SR166,182___.jpg\" style=\"max-width: 100%; vertical-align: top; display: block; width: 165.994px; height: 182.587px; object-fit: cover;\"></a></div></div><div class=\"apm-brand-story-text apm-brand-story-text-single\" style=\"margin-top: 20px;\"><h3 style=\"padding: 0px; margin: 0px; text-rendering: optimizelegibility; font-weight: 700; font-size: 18px; line-height: 24px; text-wrap: nowrap; overflow: hidden; text-overflow: ellipsis;\">typecase Edge for Air & Pro 11</h3></div></div><div style=\"clear: both;\"></div></div></li><li class=\"a-carousel-card apm-brand-story-carousel-card-2\" role=\"listitem\" aria-setsize=\"3\" aria-posinset=\"3\" aria-hidden=\"false\" style=\"list-style: none; overflow-wrap: break-word; margin: 0px 0px 0px 30px; vertical-align: top; text-align: left; overflow: hidden; width: 362px; min-height: 100%; display: inline-block; text-wrap: wrap; letter-spacing: normal; backface-visibility: hidden;\"><div class=\"celwidget aplus-module brand-story-card-1-four-asin aplus-brand-story-card\" cel_widget_id=\"aplus-brand-story-card-1-four-asin\" data-csa-c-id=\"wo7mcv-x78les-1mv46-6q7hlt\" data-cel-widget=\"aplus-brand-story-card-1-four-asin\"><div class=\"apm-brand-story-card\" style=\"position: relative; width: 362px; height: 453px; float: none; padding: 12px;\"><div class=\"apm-brand-story-image-row\" style=\"height: 185px; padding: 0px; margin: auto; display: flex;\"><div class=\"apm-brand-story-image-cell\" style=\"box-sizing: content-box; padding: 0px; margin: 0px; width: 166px; border: 1px solid rgb(255, 255, 255);\"><a class=\"a-link-normal apm-brand-story-image-link\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://www.amazon.in/dp/B096FHLD2T/ref=emc_bcc_2_i\" style=\"color: rgb(0, 113, 133); display: block; width: 165.994px; height: 182.587px;\"><img alt=\"Typecase Flexbook iPad Keyboard for Air 5th Gen, 4th Gen & iPad Pro 11(2021,2020,2018), 360Â° Rota...\" src=\"https://m.media-amazon.com/images/I/51a2jwy154L.__AC_SR166,182___.jpg\" class=\"apm-brand-story-image-img\" data-src=\"https://m.media-amazon.com/images/I/51a2jwy154L.__AC_SR166,182___.jpg\" style=\"max-width: 100%; vertical-align: top; display: block; width: 165.994px; height: 182.587px; object-fit: cover;\"></a></div><div class=\"apm-brand-story-image-cell\" style=\"box-sizing: content-box; padding: 0px; margin: 0px; width: 166px; border: 1px solid rgb(255, 255, 255);\"><a class=\"a-link-normal apm-brand-story-image-link\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://www.amazon.in/dp/B0B66P3JW8/ref=emc_bcc_2_i\" style=\"color: rgb(0, 113, 133); display: block; width: 165.994px; height: 182.587px;\"><img alt=\"Typecase Flexbook iPad Keyboard for Air 5th/4th Gen & iPad Pro 11, 360Â° Rotation, 10-Color Backli...\" src=\"https://m.media-amazon.com/images/I/51fDP026OUL.__AC_SR166,182___.jpg\" class=\"apm-brand-story-image-img\" data-src=\"https://m.media-amazon.com/images/I/51fDP026OUL.__AC_SR166,182___.jpg\" style=\"max-width: 100%; vertical-align: top; display: block; width: 165.994px; height: 182.587px; object-fit: cover;\"></a></div></div><div class=\"apm-brand-story-image-row\" style=\"height: 185px; padding: 0px; margin: auto; display: flex;\"><div class=\"apm-brand-story-image-cell\" style=\"box-sizing: content-box; padding: 0px; margin: 0px; width: 166px; border: 1px solid rgb(255, 255, 255);\"><a class=\"a-link-normal apm-brand-story-image-link\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://www.amazon.in/dp/B0B1J71XDP/ref=emc_bcc_2_i\" style=\"color: rgb(0, 113, 133); display: block; width: 165.994px; height: 182.587px;\"><img alt=\"Typecase Flexbook iPad Keyboard for Air 5th/4th Gen & iPad Pro 11, 360Â° Rotation, 10-Color Backli...\" src=\"https://m.media-amazon.com/images/I/41oC396yI5L.__AC_SR166,182___.jpg\" class=\"apm-brand-story-image-img\" data-src=\"https://m.media-amazon.com/images/I/41oC396yI5L.__AC_SR166,182___.jpg\" style=\"max-width: 100%; vertical-align: top; display: block; width: 165.994px; height: 182.587px; object-fit: cover;\"></a></div><div class=\"apm-brand-story-image-cell\" style=\"box-sizing: content-box; padding: 0px; margin: 0px; width: 166px; border: 1px solid rgb(255, 255, 255);\"><a class=\"a-link-normal apm-brand-story-image-link\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://www.amazon.in/dp/B0B1J74FSM/ref=emc_bcc_2_i\" style=\"color: rgb(0, 113, 133); display: block; width: 165.994px; height: 182.587px;\"><img alt=\"Typecase Flexbook iPad Keyboard for Air 5th/4th Gen & iPad Pro 11, 360Â° Rotation, 10-Color Backli...\" src=\"https://m.media-amazon.com/images/I/417b3gOkvuL.__AC_SR166,182___.jpg\" class=\"apm-brand-story-image-img\" data-src=\"https://m.media-amazon.com/images/I/417b3gOkvuL.__AC_SR166,182___.jpg\" style=\"max-width: 100%; vertical-align: top; display: block; width: 165.994px; height: 182.587px; object-fit: cover;\"></a></div></div><div class=\"apm-brand-story-text apm-brand-story-text-single\" style=\"margin-top: 20px;\"><h3 style=\"padding: 0px; margin: 0px; text-rendering: optimizelegibility; font-weight: 700; font-size: 18px; line-height: 24px; text-wrap: nowrap; overflow: hidden; text-overflow: ellipsis;\">typecase Touch iPad 10.9/11</h3></div></div><div style=\"clear: both;\"></div></div></li></ol></div></div><div class=\"a-carousel-col a-carousel-right\" style=\"overflow: visible; min-height: 1px; position: absolute; zoom: 1; text-align: right; right: 0px; padding: 0px; width: 40px; height: 453px; top: 0px; z-index: 1; visibility: hidden;\"><a class=\"a-button a-button-image a-carousel-button a-carousel-goto-nextpage\" tabindex=\"0\" href=\"https://www.amazon.in/dp/B0BK4WWW1T?th=1#\" id=\"a-autoid-27\" aria-disabled=\"false\" style=\"color: rgb(0, 113, 133); background: rgb(255, 255, 255); border-radius: 8px; border: none; cursor: pointer; display: inline-block; padding: 0px; text-align: center; vertical-align: middle; height: auto; position: relative; top: 181.2px; margin: 0px; box-shadow: rgba(213, 217, 217, 0.5) 0px 2px 5px 0px;\"><span class=\"a-button-inner\" style=\"display: block; position: relative; overflow: hidden; height: auto; border-radius: 4px 0px 0px 4px; padding: 20px 6px; line-height: 0; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; box-shadow: none;\"><i class=\"a-icon a-icon-next\" style=\"background-image: url(\"https://m.media-amazon.com/images/S/sash/McBZv0ZvnbehkIx.png\"); background-size: 400px 900px; background-repeat: no-repeat; display: inline-block; vertical-align: top; width: 11px; height: 15px; background-position: -105px -7px; margin: 5px 5px 5px 6px;\"><span class=\"a-icon-alt\" style=\"position: absolute; left: -9999px; top: auto; display: block; width: 1px; height: 1px; line-height: 1px; font-size: 1px; overflow: hidden;\"></span></i></span></a></div></div></div></div></div></div></div></div><div id=\"aplus_feature_div\" class=\"celwidget pd_rd_w-Yi1AA pd_rd_r-PDXT89S6Z0GVBZ3R1D3Y pd_rd_wg-gR8zV\" data-feature-name=\"aplus\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"aplus\" data-csa-c-slot-id=\"aplus_feature_div\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"kwqilk-v5c7k7-hrsy5x-amrzdf\" data-cel-widget=\"aplus_feature_div\" style=\"font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px;\"><div id=\"aplus\" class=\"a-section a-spacing-large bucket\" style=\"margin-bottom: 0px;\"><hr noshade=\"true\" size=\"1\" class=\"bucketDivider\" style=\"box-sizing: border-box; line-height: 19px; margin-top: 0px; filter: none; z-index: 0; zoom: 1; clear: left; background: 0px 0px !important; border-top-color: rgb(204, 204, 204) !important; height: 44px !important; margin-bottom: -36px !important;\"><h2 style=\"padding: 0px 0px 4px; margin: 0px; text-rendering: optimizelegibility; font-weight: 700; line-height: 32px; font-size: 21px !important; color: rgb(51, 51, 51) !important;\">From the manufacturer</h2><div class=\"aplus-v2 desktop celwidget\" cel_widget_id=\"aplus\" data-csa-c-id=\"2xy863-qgfod6-vn0ci7-7102hl\" data-cel-widget=\"aplus\" style=\"margin-left: auto; margin-right: auto;\"><div class=\"celwidget aplus-module 3p-module-b aplus-standard\" cel_widget_id=\"aplus-3p-module-b\" data-csa-c-id=\"kjdsqn-mt86a-ey2vba-f1hkou\" data-cel-widget=\"aplus-3p-module-b\"><div class=\"aplus-module-wrapper aplus-3p-fixed-width\" style=\"width: 970px; margin-left: auto; margin-right: auto;\"><h3 class=\"a-spacing-mini\" style=\"padding: 0px 0px 4px; margin-top: 0px; margin-right: 0px; margin-left: 0px; text-rendering: optimizelegibility; font-weight: 700; font-size: 18px; line-height: 24px; margin-bottom: 4px !important;\">Tpecase Edge Magnetic Magic Keyboard for iPad 5th/4th Gen & iPad Pro 11</h3><img alt=\".\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/077f2100-eda2-4014-908b-faea4f68e29d.__CR0,0,970,600_PT0_SX970_V1___.jpg\" class=\"a-spacing-base\" data-src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/077f2100-eda2-4014-908b-faea4f68e29d.__CR0,0,970,600_PT0_SX970_V1___.jpg\" style=\"max-width: 100%; vertical-align: top; margin-bottom: 12px !important;\"><p class=\"a-spacing-base\" style=\"padding: 0px; margin-bottom: 12px !important;\"></p><ul class=\"a-unordered-list a-vertical\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; padding: 0px;\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">It features an incredible typing experience, a track pad that opens up new ways to work with iPadOS and front and back protection.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Super Strong Magnetic Attraction---70+ magnets form a powerful magnetic net, which will not make the iPad at risk of falling.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Smart Sleep---Close the keyboard and automatically sleep, intelligent power saving to extend the life of the iPad battery.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">20,000 Keystrokes---The keyboard keys adopt scissor foot structure, and the built-in silicone weight standard has been tested by the market for a long time, and is committed to bringing customers the best keystroke experience.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">10 Backlit Colors---A variety of colors can be selected out of 10 Backlit colors while competition has only 7 color & 3 levels of brightness can be adjusted.</span></li></ul><p style=\"padding: 0px; margin-top: -4px; margin-bottom: 14px;\"></p><p class=\"a-spacing-base\" style=\"padding: 0px; margin-top: -4px; margin-bottom: 12px !important;\"><span class=\"a-text-bold\" style=\"font-weight: 700 !important;\">Compatibility</span></p><p class=\"a-spacing-base\" style=\"padding: 0px; margin-top: -4px; margin-bottom: 12px !important;\"><span class=\"a-text-bold\" style=\"font-weight: 700 !important;\">iPad Pro 11 4th Generation 2022 October</span></p><p class=\"a-spacing-base\" style=\"padding: 0px; margin-top: -4px; margin-bottom: 12px !important;\">iPad Pro 11 3rd Generation 2021 (A2301, A2459, A2460)</p><p class=\"a-spacing-base\" style=\"padding: 0px; margin-top: -4px; margin-bottom: 12px !important;\">iPad Pro 11 2nd Generation 2020 (A2228, A2068, A2231)</p><p class=\"a-spacing-base\" style=\"padding: 0px; margin-top: -4px; margin-bottom: 12px !important;\">iPad Pro 11 1st Generation 2018 (A1980, A2013, A1934, A1979)</p><p class=\"a-spacing-base\" style=\"padding: 0px; margin-top: -4px; margin-bottom: 12px !important;\">iPad Air 5th Generation 2022 (A2588, A2589, A2591)</p><p class=\"a-spacing-base\" style=\"padding: 0px; margin-top: -4px; margin-bottom: 0px;\">iPad Air 4th Generation 2020 (A2071, A2316, A2324, A2325)</p></div></div><div class=\"celwidget aplus-module 3p-module-b aplus-standard\" cel_widget_id=\"aplus-3p-module-b\" data-csa-c-id=\"n2z2qr-ya1e7y-xpm7xh-r8fetf\" data-cel-widget=\"aplus-3p-module-b\"><div class=\"aplus-module-wrapper aplus-3p-fixed-width\" style=\"width: 970px; margin-left: auto; margin-right: auto;\"><img alt=\".\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/7da255cf-13d2-4dcc-910f-bf7b8175f959.__CR0,0,970,600_PT0_SX970_V1___.jpg\" class=\"a-spacing-base\" data-src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/7da255cf-13d2-4dcc-910f-bf7b8175f959.__CR0,0,970,600_PT0_SX970_V1___.jpg\" style=\"max-width: 100%; vertical-align: top; margin-bottom: 12px !important;\"><p class=\"a-spacing-base\" style=\"padding: 0px; margin-bottom: 12px !important;\"></p><ul class=\"a-unordered-list a-vertical\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; padding: 0px;\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Smooth angle adjust ability delivers the perfect viewing angle.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Magic Keyboard--All the usage scenarios you need can be realized, whether it is office, study, painting, movies or other scenarios.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Folds into a case to provide front and back protection for traveling with iPad Pro.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">The Large-Capacity Battery: it brings a better battery life experience to your keyboard, and can last up to 2000 hours of battery life with light use.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Auto wake & sleep: Open the cover to automatically wake the iPad, close the cover to automatically sleep the iPad.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">90 Days Typing: The battery can achieve up to 90 days of standby for basic work needs, and one week of medium-to-high work needs.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Charging Time: 3-4 hours.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">10 Color Backlit better than competition 7 back lit</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">800 mAh Battery for more work output</span></li></ul><p style=\"padding: 0px; margin-top: -4px; margin-bottom: 0px;\"></p></div></div><div class=\"celwidget aplus-module 3p-module-b aplus-standard\" cel_widget_id=\"aplus-3p-module-b\" data-csa-c-id=\"p3z5a9-al15ms-3z8qvx-qzxsb6\" data-cel-widget=\"aplus-3p-module-b\"><div class=\"aplus-module-wrapper aplus-3p-fixed-width\" style=\"width: 970px; margin-left: auto; margin-right: auto;\"><img alt=\".\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/c2e7359a-355c-46bc-98c4-37a2b9152410.__CR0,0,970,600_PT0_SX970_V1___.jpg\" class=\"a-spacing-base\" data-src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/c2e7359a-355c-46bc-98c4-37a2b9152410.__CR0,0,970,600_PT0_SX970_V1___.jpg\" style=\"max-width: 100%; vertical-align: top; margin-bottom: 12px !important;\"><p class=\"a-spacing-base\" style=\"padding: 0px; margin-bottom: 12px !important;\"></p><ul class=\"a-unordered-list a-vertical\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; padding: 0px;\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">AN AMAZING COMPANION FOR IPAD AIR 5TH / 4TH GENERATION AND IPAD PRO 11 : It features a great typing experience, a trackpad that a good way to work with iPadOS, a Typeâ€‘C port for passâ€‘through charging for keyboard, and front and back protection. The Slim Keyboard features a floating cantilever design, allowing you to attach it magnetically and smoothly adjust it to the perfect viewing angle for you.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">KEYBOARD CASE FOR IPAD AIR 5TH 2022 /4TH AND IPAD PRO 11 2022 2021 & 2020 & 2018: Compatible with ipad air 5th 2022 , ipad air 4th 10.9 inch 2020 (Model Number:A2324/A2072/A2316/A2325) iPad Pro 11 inch 3rd Generation 2021 (Model Number: A2301/A2459/A2460 ), 2nd Generation 2020 (Model Number: A2228/A2068/A2230/A2231) / 1st Generation 2018 (Model Number: A1980/A2013/A1934). Not compatible with any other iPad devices.</span></li></ul><p style=\"padding: 0px; margin-top: -4px; margin-bottom: 0px;\"></p></div></div><div class=\"celwidget aplus-module 3p-module-b aplus-standard\" cel_widget_id=\"aplus-3p-module-b\" data-csa-c-id=\"ycsted-etvckf-c1oix7-fpe2by\" data-cel-widget=\"aplus-3p-module-b\"><div class=\"aplus-module-wrapper aplus-3p-fixed-width\" style=\"width: 970px; margin-left: auto; margin-right: auto;\"><img alt=\".\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/52b4c973-9cbe-4c69-b7e9-55f66c3f007e.__CR0,0,970,600_PT0_SX970_V1___.jpg\" class=\"a-spacing-base\" data-src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/52b4c973-9cbe-4c69-b7e9-55f66c3f007e.__CR0,0,970,600_PT0_SX970_V1___.jpg\" style=\"max-width: 100%; vertical-align: top; margin-bottom: 12px !important;\"><p class=\"a-spacing-base\" style=\"padding: 0px; margin-bottom: 12px !important;\"></p><ul class=\"a-unordered-list a-vertical\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; padding: 0px;\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">MULTIPLE STAND ANGLES FOR COMFORTABLE USE: our iPad Air 5th / 4th 10.9-inch and iPad Pro 11-inch smart keyboard case allows you to smoothly adjust to the perfect viewing angle for you to Typing, Reading, Gaming - giving you amazing versatility. Perfect for working, writing, or watching videos at work, school, travel, and home.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">SAFER, STRONGER, AND MORE CONVENIENT: strong magnetic attraction, which makes the ipad firmly fixed on the tablet case and provides front and back double-sided protection; the Bluetooth link, cooperating with iPad OS system, is more convenient to use.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">LONG LIFE BATTERY & NOTICE: Built-in Rechargeable battery could extend the battery life, 3 hours full charge, Continous working- 5 Hr(Back lit ON), 50-60 hrs( backlit OFF)stand by for 90 days (backlit off). Notice: The keyboard will enter into sleep mode if it doesn\'t work for 10 minutes, and it will disconnect with your iPad. It will wake up and connect to your iPad again when pressing any key.</span></li></ul><p style=\"padding: 0px; margin-top: -4px; margin-bottom: 0px;\"></p></div></div><div class=\"celwidget aplus-module 3p-module-b aplus-standard\" cel_widget_id=\"aplus-3p-module-b\" data-csa-c-id=\"fc9e48-18eluf-efher7-fwuhv3\" data-cel-widget=\"aplus-3p-module-b\"><div class=\"aplus-module-wrapper aplus-3p-fixed-width\" style=\"width: 970px; margin-left: auto; margin-right: auto;\"><img alt=\".\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/e553b261-3fca-4f5f-aba0-c1e7e374930b.__CR0,0,970,600_PT0_SX970_V1___.jpg\" class=\"a-spacing-base\" data-src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/e553b261-3fca-4f5f-aba0-c1e7e374930b.__CR0,0,970,600_PT0_SX970_V1___.jpg\" style=\"max-width: 100%; vertical-align: top; margin-bottom: 12px !important;\"><p class=\"a-spacing-base\" style=\"padding: 0px; margin-bottom: 12px !important;\"><span class=\"a-text-bold\" style=\"font-weight: 700 !important;\"><u>FAQ (READ IT CAREFULLY)</u></span></p><p class=\"a-spacing-base\" style=\"padding: 0px; margin-top: -4px; margin-bottom: 12px !important;\"></p><ol class=\"a-ordered-list a-vertical\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 20px; padding: 0px;\"><li style=\"list-style: decimal; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Tablet Keyboard is not a standalone Product . It must be connect to a iPad to work.</span></li><li style=\"list-style: decimal; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">To know about how to make Connection with iPad, Complete steps are mentioned in USER Manual Pls check it carefully. Still any issue, pls cont customer support ( mentioned on MRP label of Product, on user Guide or typecase india site)</span></li><li style=\"list-style: decimal; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Some time iPad version update is required for full functionality of product. Please remove or forget other previous Bluetooth keyboard or other devices before making connection.</span></li><li style=\"list-style: decimal; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Some customer could face Error in some iOS version at time of installation or connection. NO need to worry. If you receive these error then pls feel free to cont our tech spport & we will provide resolution of these error immediately. C<span class=\"a-text-bold\" style=\"font-weight: 700 !important;\">ustomer can cont us in case of any technical assistance just by dropping a msg on No</span>- -----------</span></li></ol><p style=\"padding: 0px; margin-top: -4px; margin-bottom: 14px;\"></p><p class=\"a-spacing-base\" style=\"padding: 0px; margin-top: -4px; margin-bottom: 12px !important;\">>>>>>> +91-9871555106<u><span class=\"a-text-bold\" style=\"font-weight: 700 !important;\">Â <<</span><</u><span class=\"a-text-bold\" style=\"font-weight: 700 !important;\"><u><<<<<<<----</u>------------</span></p></div></div></div></div></div><table class=\"a-normal a-spacing-micro\" style=\"width: 637.688px; background-color: rgb(255, 255, 255); margin-bottom: 0px !important;\"><tbody><tr class=\"a-spacing-small po-special_feature\" style=\"margin-bottom: 8px !important;\"><td class=\"a-span9\" style=\"vertical-align: top; padding-top: 3px; padding-left: 3px; margin-right: 0px; width: 470.756px; float: none !important;\"><span class=\"a-size-base\" style=\"line-height: 20px !important;\"><span class=\"a-truncate po-truncate-attribute\" data-a-word-break=\"normal\" data-a-truncate-name=\"po-attribute-truncate-4\" data-a-max-rows=\"3\" data-a-overflow-marker=\"â€¦\" data-a-recalculate=\"false\" data-a-updated=\"true\" style=\"display: inline-block; position: relative; width: 467.756px; overflow: hidden; word-break: normal; max-height: 3.9em; line-height: 1.3em !important;\"><span class=\"a-truncate-cut\" aria-hidden=\"true\" style=\"display: inline-block; width: 467.756px; word-break: break-word; height: 3.9em;\"><br></span></span></span></td></tr></tbody></table></div><div class=\"a-section a-spacing-small a-spacing-top-small\" style=\"margin-bottom: 0px; margin-top: 8px !important;\"><table class=\"a-normal a-spacing-micro\" style=\"width: 637.688px; background-color: rgb(255, 255, 255); margin-bottom: 0px !important;\"><tbody><tr class=\"a-spacing-small po-special_feature\" style=\"margin-bottom: 8px !important;\"><td class=\"a-span9\" style=\"vertical-align: top; padding-top: 3px; padding-left: 3px; margin-right: 0px; width: 470.756px; float: none !important;\"><span class=\"a-size-base\" style=\"line-height: 20px !important;\"><span class=\"a-truncate po-truncate-attribute\" data-a-word-break=\"normal\" data-a-truncate-name=\"po-attribute-truncate-4\" data-a-max-rows=\"3\" data-a-overflow-marker=\"â€¦\" data-a-recalculate=\"false\" data-a-updated=\"true\" style=\"display: inline-block; position: relative; width: 467.756px; overflow: hidden; word-break: normal; max-height: 3.9em; line-height: 1.3em !important;\"><span class=\"a-truncate-cut\" aria-hidden=\"true\" style=\"display: inline-block; width: 467.756px; word-break: break-word; height: 3.9em;\"><br></span></span></span></td></tr></tbody></table><table class=\"a-normal a-spacing-micro\" style=\"width: 637.688px; background-color: rgb(255, 255, 255); margin-bottom: 0px !important;\"><tbody><tr class=\"a-spacing-small po-compatible_devices\" style=\"margin-bottom: 8px !important;\"><td class=\"a-span9\" style=\"vertical-align: top; padding-top: 3px; padding-bottom: 3px; padding-left: 3px; margin-right: 0px; width: 470.756px; float: none !important;\"><span class=\"a-size-base\" style=\"line-height: 20px !important;\"><span class=\"a-truncate po-truncate-attribute\" data-a-word-break=\"normal\" data-a-truncate-name=\"po-attribute-truncate-1\" data-a-max-rows=\"3\" data-a-overflow-marker=\"â€¦\" data-a-recalculate=\"false\" data-a-updated=\"true\" style=\"display: inline-block; position: relative; width: 467.756px; overflow: hidden; word-break: normal; max-height: 3.9em; line-height: 1.3em !important;\"><span class=\"a-truncate-cut\" aria-hidden=\"true\" style=\"display: inline-block; width: 467.756px; word-break: break-word; height: 3.9em;\"><br></span></span></span></td></tr></tbody></table></div><div class=\"a-section a-spacing-small a-spacing-top-small\" style=\"margin-bottom: 0px; margin-top: 8px !important;\"><table class=\"a-normal a-spacing-micro\" style=\"width: 637.688px; background-color: rgb(255, 255, 255); margin-bottom: 0px !important;\"><tbody><tr class=\"a-spacing-small po-compatible_devices\" style=\"margin-bottom: 8px !important;\"><td class=\"a-span9\" style=\"vertical-align: top; padding-top: 3px; padding-bottom: 3px; padding-left: 3px; margin-right: 0px; width: 470.756px; float: none !important;\"><span class=\"a-size-base\" style=\"line-height: 20px !important;\"><span class=\"a-truncate po-truncate-attribute\" data-a-word-break=\"normal\" data-a-truncate-name=\"po-attribute-truncate-1\" data-a-max-rows=\"3\" data-a-overflow-marker=\"â€¦\" data-a-recalculate=\"false\" data-a-updated=\"true\" style=\"display: inline-block; position: relative; width: 467.756px; overflow: hidden; word-break: normal; max-height: 3.9em; line-height: 1.3em !important;\"><span class=\"a-truncate-cut\" aria-hidden=\"true\" style=\"display: inline-block; width: 467.756px; word-break: break-word; height: 3.9em;\"><br></span></span></span></td></tr></tbody></table></div></div>', '', '', 1, 1, 39, 24, 0, 'typecase-edge-magic-keyboard-for-ipad-air-5th4th20222020--new-ipad-pro-11-4th3rd2nd-gen', NULL, '2023-10-30 10:29:30');
INSERT INTO `tbl_product` (`p_id`, `p_name`, `p_size`, `p_old_price`, `p_current_price`, `p_sku`, `p_vendor`, `p_delivery`, `p_qty`, `collection`, `color`, `variant`, `p_featured_photo`, `p_description`, `p_short_description`, `additional_info`, `p_is_featured`, `p_is_active`, `mid_id`, `top_id`, `ecat_id`, `slug`, `video`, `create_date`) VALUES
(4, 'typecase Edge Magic Keyboard for iPad Air 5th/4th(2022,2020) & New iPad Pro 11 (4th,3rd,2nd Gen)', '3', '19999', '9190', 'B0B65NCFJ1', 'Typecase (DP)', '2-4', 1, '10', '23', 1, NULL, '<div id=\"productOverview_feature_div\" class=\"celwidget\" data-feature-name=\"productOverview\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"productOverview\" data-csa-c-slot-id=\"productOverview_feature_div\" data-csa-c-asin=\"B0BK4WWW1T\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"gd8w90-1riusn-gsn5ky-m0sang\" data-cel-widget=\"productOverview_feature_div\" style=\"color: rgb(15, 17, 17); font-family: \" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><div class=\"a-section a-spacing-small a-spacing-top-small\" style=\"margin-bottom: 0px; margin-top: 8px !important;\"><table class=\"a-normal a-spacing-micro\" style=\"width: 637.688px; background-color: rgb(255, 255, 255); margin-bottom: 0px !important;\"><tbody><tr class=\"a-spacing-small po-brand\" style=\"margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding-right: 3px; padding-bottom: 3px; margin-right: 0px; width: 166.931px; float: none !important;\"><span class=\"a-size-base a-text-bold\" style=\"font-weight: 700 !important; line-height: 20px !important;\">Brand</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding-bottom: 3px; padding-left: 3px; margin-right: 0px; width: 470.756px; float: none !important;\"><span class=\"a-size-base po-break-word\" style=\"word-break: break-word; line-height: 20px !important;\">typecase</span></td></tr><tr class=\"a-spacing-small po-compatible_devices\" style=\"margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding-top: 3px; padding-right: 3px; padding-bottom: 3px; margin-right: 0px; width: 166.931px; float: none !important;\"><span class=\"a-size-base a-text-bold\" style=\"font-weight: 700 !important; line-height: 20px !important;\">Compatible Devices</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding-top: 3px; padding-bottom: 3px; padding-left: 3px; margin-right: 0px; width: 470.756px; float: none !important;\"><span class=\"a-size-base\" style=\"line-height: 20px !important;\"><span class=\"a-truncate po-truncate-attribute\" data-a-word-break=\"normal\" data-a-truncate-name=\"po-attribute-truncate-1\" data-a-max-rows=\"3\" data-a-overflow-marker=\"â€¦\" data-a-recalculate=\"false\" data-a-updated=\"true\" style=\"display: inline-block; position: relative; width: 467.756px; overflow: hidden; word-break: normal; max-height: 3.9em; line-height: 1.3em !important;\"><span class=\"a-truncate-full a-offscreen\" style=\"display: inline-block; width: 467.756px; opacity: 0; position: absolute !important; left: 0px !important; bottom: -1px !important; z-index: -1 !important;\">iPad Pro 11-inch Latest 4th Generation 2022, iPad Pro 11-inch 3rd Generation 2021, iPad Pro 11-inch 2nd Generation 2020, iPad Pro 11-inch 1st Generation 2018, iPad Air 10.9-inch 4th Generation 2020, iPad Air 10.9-inch 5th Generation 2022</span><span class=\"a-truncate-cut\" aria-hidden=\"true\" style=\"display: inline-block; width: 467.756px; word-break: break-word; height: 3.9em;\">iPad Pro 11 (4th Gen 2022, 3rd Gen 2021, 2nd Gen 2020, 1st Gen 2018) &Â  iPad AirÂ  5th Gen 2022 & 4th Gen 2020Â </span></span></span></td></tr></tbody></table></div><div class=\"a-section a-spacing-small a-spacing-top-small\" style=\"margin-bottom: 0px; margin-top: 8px !important;\"><table class=\"a-normal a-spacing-micro\" style=\"width: 637.688px; background-color: rgb(255, 255, 255); margin-bottom: 0px !important;\"><tbody><tr class=\"a-spacing-small po-connectivity_technology\" style=\"margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding-top: 3px; padding-right: 3px; padding-bottom: 3px; margin-right: 0px; width: 166.931px; float: none !important;\"><span class=\"a-size-base a-text-bold\" style=\"font-weight: 700 !important; line-height: 20px !important;\">Connectivity Technology</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding-top: 3px; padding-bottom: 3px; padding-left: 3px; margin-right: 0px; width: 470.756px; float: none !important;\"><span class=\"a-size-base po-break-word\" style=\"word-break: break-word; line-height: 20px !important;\">Bluetooth</span></td></tr><tr class=\"a-spacing-small po-keyboard_description\" style=\"margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding-top: 3px; padding-right: 3px; padding-bottom: 3px; margin-right: 0px; width: 166.931px; float: none !important;\"><span class=\"a-size-base a-text-bold\" style=\"font-weight: 700 !important; line-height: 20px !important;\">Keyboard Description</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding-top: 3px; padding-bottom: 3px; padding-left: 3px; margin-right: 0px; width: 470.756px; float: none !important;\"><span class=\"a-size-base po-break-word\" style=\"word-break: break-word; line-height: 20px !important;\">Wireless</span></td></tr><tr class=\"a-spacing-small po-special_feature\" style=\"margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding-top: 3px; padding-right: 3px; margin-right: 0px; width: 166.931px; float: none !important;\"><span class=\"a-size-base a-text-bold\" style=\"font-weight: 700 !important; line-height: 20px !important;\">Special Feature</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding-top: 3px; padding-left: 3px; margin-right: 0px; width: 470.756px; float: none !important;\"><span class=\"a-size-base\" style=\"line-height: 20px !important;\"><span class=\"a-truncate po-truncate-attribute\" data-a-word-break=\"normal\" data-a-truncate-name=\"po-attribute-truncate-4\" data-a-max-rows=\"3\" data-a-overflow-marker=\"â€¦\" data-a-recalculate=\"false\" data-a-updated=\"true\" style=\"display: inline-block; position: relative; width: 467.756px; overflow: hidden; word-break: normal; max-height: 3.9em; line-height: 1.3em !important;\"><span class=\"a-truncate-full a-offscreen\" style=\"display: inline-block; width: 467.756px; opacity: 0; position: absolute !important; left: 0px !important; bottom: -1px !important; z-index: -1 !important;\">Magnetic Detachable, Gesture control, Multi Touch Trackpad, Advance Chipset with Bluetooth, Scissor switch keyboard Magnetic Smart Cover, Rechargeable, 730 gram Wt, Smart touchpad, Exclusive 10 Color Backlit( Only in typecase Keyboard), Power Saver- Auto Wake & Sleep</span><span class=\"a-truncate-cut\" aria-hidden=\"true\" style=\"display: inline-block; width: 467.756px; word-break: break-word; height: 3.9em;\">Magnetic Detachable, Gesture control, Multi Touch Trackpad, Advance Chipset with Bluetooth, Scissor switch keyboard Magnetic Smart Cover, Rechargeable, 730 gram Wt, Smart touchpad, Exclusive 10 Color Backlit</span></span></span></td></tr></tbody></table><h1 class=\"a-size-base-plus a-text-bold\" style=\"padding: 0px 0px 4px; margin-top: 0px; margin-bottom: 0px; text-rendering: optimizelegibility; color: rgb(15, 17, 17); font-family: \" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700=\"\" !important;=\"\" font-size:=\"\" 16px=\"\" line-height:=\"\" 24px=\"\" !important;\"=\"\">About this item</h1><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; padding: 0px;\"><li class=\"a-spacing-mini\" style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Compatibility : This keyboard case is compatible with iPad Pro 11 inch 4th Gen (A2759/A2435/A2761/A2762)/iPad Air 5th Gen 10.9 inch 2022 (A2588/A2589/A2591 )/iPad Pro 11 inch 3rd Gen (A2377/A2301/A2459/A2460)/iPad Air 4th Genn 10.9 inch 2020 (A2072/A2316/A2324/A2325)/iPad Pro 11 inch 2nd Gen (A2228/A2068/A2230/A2231)/iPad Pro 11 inch 1st Gen(A1980/A2013/A1934). Please check your iPad model carefully before purchasing.</span></li><li class=\"a-spacing-mini\" style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Exclusive 10-Color Backlight Keyboard with Shortcuts - Accurately typing on the Pro 11 inch & Air 5/4 case with keyboard even in a dark room, 10 colors backlight, three adjustable backlight brightness levels, give you a comfortable typing experience. No more searching around for basic functions, be more efficient with this Pro 11 & Air 5/4 keyboard with the PadOS shortcuts, to adjust brightness levels, change backlit colors, media, volume control, and more</span></li><li class=\"a-spacing-mini\" style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Built-in Touchpad - Navigates your iPad Pro 11 & Air 5/4 in a whole new way with a multi-touch touchpad, scroll, swipe, and more.The palm rejection function initiates when you are typing on the iPad Pro 11 inch & Air 10.9 inch keyboard, disabling the touchpad when you type. Edit documents, browse the web, and build presentations at an unparalleled speed.</span></li><li class=\"a-spacing-mini\" style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Smart Features - Magnetically attach your iPad to the back cover, attached your Apple Pencil on top, whether you are in the Cafe or office, smoothly transform your iPad Pro 11 & Air 5/4 case with keyboard into a laptop within a second. The iPad Pro 11 & Air 5th/4th generation keyboard comes with an exterior synthetic vegan leather, folds into a slim protective cover, gives front and back protection to your iPad, ensures your iPad stays safe, perfect for traveling, business, school.</span></li><li class=\"a-spacing-mini\" style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Package Contents: 1 x Keyboard with Trackpad; 1 x USB-C Charging Cable; 1 x Product Manual with step-by-step instructions & shortcut map. Free technical support and a manufacturerâ€™s warranty can give you peace of mind about your purchase and assurance that a great team is ready to help every step of the way.</span></li></ul></div><div class=\"a-section a-spacing-small a-spacing-top-small\" style=\"margin-bottom: 0px; margin-top: 8px !important;\"><div id=\"aplusBrandStory_feature_div\" class=\"celwidget pd_rd_w-dg1l0 pd_rd_r-PDXT89S6Z0GVBZ3R1D3Y pd_rd_wg-gR8zV\" data-feature-name=\"aplusBrandStory\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"aplusBrandStory\" data-csa-c-slot-id=\"aplusBrandStory_feature_div\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"2iao4s-khsk5x-8s7zgi-q6e1ap\" data-cel-widget=\"aplusBrandStory_feature_div\" style=\"font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px;\"><div id=\"aplus\" class=\"a-section a-spacing-large bucket\" style=\"margin-bottom: 0px;\"><h2 style=\"padding: 0px 0px 4px; margin: 0px; text-rendering: optimizelegibility; font-weight: 700; line-height: 32px; font-size: 21px !important; color: rgb(51, 51, 51) !important;\">From the brand</h2><div class=\"aplus-v2 desktop celwidget\" cel_widget_id=\"aplus\" data-csa-c-id=\"srycss-7yvik7-96v3gt-jwxr04\" data-cel-widget=\"aplus\" style=\"margin-left: auto; margin-right: auto;\"><div class=\"apm-brand-story-carousel-container\" style=\"position: relative; height: 625px; width: 1464px; max-width: 1464px; margin-left: auto; margin-right: auto; overflow: hidden;\"><div class=\"apm-brand-story-carousel-hero-container\" style=\"position: absolute; width: 1464px; height: 625px; max-width: 1464px; margin-left: auto; margin-right: auto; overflow: hidden;\"><div class=\"celwidget aplus-module brand-story-hero-1-image-logo aplus-brand-story-hero\" cel_widget_id=\"aplus-brand-story-hero-1-image-logo\" data-csa-c-id=\"qqt050-q2r18q-zhxoxo-2amncb\" data-cel-widget=\"aplus-brand-story-hero-1-image-logo\" style=\"position: absolute; width: 1464px;\"><div class=\"apm-brand-story-hero\" style=\"position: relative; width: 1464px; height: 625px; float: none;\"><div class=\"apm-brand-story-background-image\" style=\"overflow: hidden; position: absolute; width: 1464px; height: 624.994px;\"><img alt=\".\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/0fdbc7db-96ed-48fa-8c1d-b98ad23d464c.__CR0,0,1464,625_PT0_SX1464_V1___.jpg\" class=\"\" data-src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/0fdbc7db-96ed-48fa-8c1d-b98ad23d464c.__CR0,0,1464,625_PT0_SX1464_V1___.jpg\" style=\"max-width: 100%; vertical-align: top;\"></div></div><div style=\"clear: both;\"></div></div></div><div id=\"apm-brand-story-carousel\" data-a-carousel-options=\"{\"minimum_gutter_width\":10,\"show_partial_next\":true,\"name\":\"brand-story-carousel\",\"single_page_align\":\"left\",\"circular\":false,\"carousel_display_strategy\":\"single\",\"currentGutter\":10}\" class=\"a-begin a-carousel-container a-carousel-display-stretchyGoodness a-carousel-transition-slide apm-brand-story-carousel size-cards a-carousel-container a-carousel-initialized\" style=\"position: relative; overflow: hidden;\"><div class=\"a-row a-carousel-controls a-carousel-row a-carousel-has-buttons\" style=\"width: 1464px;\"><div class=\"a-carousel-row-inner\" style=\"position: relative; height: 453px; margin-top: 149px;\"><div class=\"a-carousel-col a-carousel-left\" style=\"overflow: visible; min-height: 1px; position: absolute; zoom: 1; left: 0px; padding: 0px; width: 40px; height: 453px; top: 0px; z-index: 1; visibility: hidden;\"><a class=\"a-button a-button-image a-carousel-button a-carousel-goto-prevpage\" tabindex=\"0\" href=\"https://www.amazon.in/dp/B0BK4WWW1T?th=1#\" id=\"a-autoid-26\" aria-disabled=\"true\" style=\"color: rgb(0, 113, 133); background: rgb(255, 255, 255); border-radius: 8px; border: none; cursor: pointer; display: inline-block; padding: 0px; text-align: center; vertical-align: middle; height: auto; position: relative; top: 181.2px; margin: 0px; box-shadow: rgba(213, 217, 217, 0.5) 0px 2px 5px 0px;\"><span class=\"a-button-inner\" style=\"display: block; position: relative; overflow: hidden; height: auto; border-radius: 0px 4px 4px 0px; padding: 20px 6px; line-height: 0; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; box-shadow: none;\"><i class=\"a-icon a-icon-previous\" style=\"background-image: url(\"https://m.media-amazon.com/images/S/sash/McBZv0ZvnbehkIx.png\"); background-size: 400px 900px; background-repeat: no-repeat; display: inline-block; vertical-align: top; width: 11px; height: 15px; background-position: -123px -7px; margin: 5px 6px 5px 5px;\"><span class=\"a-icon-alt\" style=\"position: absolute; left: -9999px; top: auto; display: block; width: 1px; height: 1px; line-height: 1px; font-size: 1px; overflow: hidden;\"></span></i></span></a></div><div class=\"a-carousel-col a-carousel-center\" style=\"overflow: hidden; min-height: 1px; position: relative; zoom: 1; margin: 0px 40px;\"><div class=\"a-carousel-viewport\" id=\"anonCarousel5\" style=\"width: 1384.01px; overflow: hidden; transform: translate3d(0px, 0px, 0px); transform-style: preserve-3d; backface-visibility: hidden; height: 453px;\"><ol class=\"a-carousel\" role=\"list\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style-type: none; height: 453px; text-wrap: nowrap; overflow-x: visible; letter-spacing: -4px; position: relative; transform: translate3d(0px, 0px, 0px); transform-style: preserve-3d; backface-visibility: hidden; width: 1384px;\"><li class=\"a-carousel-card apm-brand-story-carousel-card-0\" role=\"listitem\" aria-setsize=\"3\" aria-posinset=\"1\" aria-hidden=\"false\" style=\"list-style: none; overflow-wrap: break-word; margin: 0px 0px 0px 30px; vertical-align: top; text-align: left; overflow: hidden; width: 362px; min-height: 100%; display: inline-block; text-wrap: wrap; letter-spacing: normal; backface-visibility: hidden;\"></li><li class=\"a-carousel-card apm-brand-story-carousel-card-1\" role=\"listitem\" aria-setsize=\"3\" aria-posinset=\"2\" aria-hidden=\"false\" style=\"list-style: none; overflow-wrap: break-word; margin: 0px 0px 0px 30px; vertical-align: top; text-align: left; overflow: hidden; width: 362px; min-height: 100%; display: inline-block; text-wrap: wrap; letter-spacing: normal; backface-visibility: hidden;\"><div class=\"celwidget aplus-module brand-story-card-1-four-asin aplus-brand-story-card\" cel_widget_id=\"aplus-brand-story-card-1-four-asin\" data-csa-c-id=\"d79v7z-84xto4-eg2plb-l4kii5\" data-cel-widget=\"aplus-brand-story-card-1-four-asin\"><div class=\"apm-brand-story-card\" style=\"position: relative; width: 362px; height: 453px; float: none; padding: 12px;\"><div class=\"apm-brand-story-image-row\" style=\"height: 185px; padding: 0px; margin: auto; display: flex;\"><div class=\"apm-brand-story-image-cell\" style=\"box-sizing: content-box; padding: 0px; margin: 0px; width: 166px; border: 1px solid rgb(255, 255, 255);\"><a class=\"a-link-normal apm-brand-story-image-link\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://www.amazon.in/dp/B0B65MWM46/ref=emc_bcc_2_i\" style=\"color: rgb(0, 113, 133); display: block; width: 165.994px; height: 182.587px;\"><img alt=\"Typecase Edge Magic Style iPad Keyboard for iPad Air 5th Gen/4th Gen & iPad Pro 11 (2021,2020,201...\" src=\"https://m.media-amazon.com/images/I/41aLRMU6x5L.__AC_SR166,182___.jpg\" class=\"apm-brand-story-image-img\" data-src=\"https://m.media-amazon.com/images/I/41aLRMU6x5L.__AC_SR166,182___.jpg\" style=\"max-width: 100%; vertical-align: top; display: block; width: 165.994px; height: 182.587px; object-fit: cover;\"></a></div><div class=\"apm-brand-story-image-cell\" style=\"box-sizing: content-box; padding: 0px; margin: 0px; width: 166px; border: 1px solid rgb(255, 255, 255);\"><a class=\"a-link-normal apm-brand-story-image-link\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://www.amazon.in/dp/B0B65NCFJ1/ref=emc_bcc_2_i\" style=\"color: rgb(0, 113, 133); display: block; width: 165.994px; height: 182.587px;\"><img alt=\"Typecase Edge Magic Style iPad Keyboard for iPad Air 5th Gen/4th Gen & iPad Pro 11 (2021,2020,201...\" src=\"https://m.media-amazon.com/images/I/41XRkIeOsvL.__AC_SR166,182___.jpg\" class=\"apm-brand-story-image-img\" data-src=\"https://m.media-amazon.com/images/I/41XRkIeOsvL.__AC_SR166,182___.jpg\" style=\"max-width: 100%; vertical-align: top; display: block; width: 165.994px; height: 182.587px; object-fit: cover;\"></a></div></div><div class=\"apm-brand-story-image-row\" style=\"height: 185px; padding: 0px; margin: auto; display: flex;\"><div class=\"apm-brand-story-image-cell\" style=\"box-sizing: content-box; padding: 0px; margin: 0px; width: 166px; border: 1px solid rgb(255, 255, 255);\"><a class=\"a-link-normal apm-brand-story-image-link\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://www.amazon.in/dp/B09MZ67ZR8/ref=emc_bcc_2_i\" style=\"color: rgb(0, 113, 133); display: block; width: 165.994px; height: 182.587px;\"><img alt=\"Typecase Edge Magic Style iPad Keyboard for iPad Air 5th Gen, Air 4th Gen & iPad Pro 11 (2021,202...\" src=\"https://m.media-amazon.com/images/I/41BCmU7qNjL.__AC_SR166,182___.jpg\" class=\"apm-brand-story-image-img\" data-src=\"https://m.media-amazon.com/images/I/41BCmU7qNjL.__AC_SR166,182___.jpg\" style=\"max-width: 100%; vertical-align: top; display: block; width: 165.994px; height: 182.587px; object-fit: cover;\"></a></div><div class=\"apm-brand-story-image-cell\" style=\"box-sizing: content-box; padding: 0px; margin: 0px; width: 166px; border: 1px solid rgb(255, 255, 255);\"><a class=\"a-link-normal apm-brand-story-image-link\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://www.amazon.in/dp/B0BK4WWW1T/ref=emc_bcc_2_i\" style=\"color: rgb(0, 113, 133); display: block; width: 165.994px; height: 182.587px;\"><img alt=\"typecase Keyboard case for Pro 11 & 10.9 Inch ipad\" src=\"https://m.media-amazon.com/images/I/419gjTsY0JL.__AC_SR166,182___.jpg\" class=\"apm-brand-story-image-img\" data-src=\"https://m.media-amazon.com/images/I/419gjTsY0JL.__AC_SR166,182___.jpg\" style=\"max-width: 100%; vertical-align: top; display: block; width: 165.994px; height: 182.587px; object-fit: cover;\"></a></div></div><div class=\"apm-brand-story-text apm-brand-story-text-single\" style=\"margin-top: 20px;\"><h3 style=\"padding: 0px; margin: 0px; text-rendering: optimizelegibility; font-weight: 700; font-size: 18px; line-height: 24px; text-wrap: nowrap; overflow: hidden; text-overflow: ellipsis;\">typecase Edge for Air & Pro 11</h3></div></div><div style=\"clear: both;\"></div></div></li><li class=\"a-carousel-card apm-brand-story-carousel-card-2\" role=\"listitem\" aria-setsize=\"3\" aria-posinset=\"3\" aria-hidden=\"false\" style=\"list-style: none; overflow-wrap: break-word; margin: 0px 0px 0px 30px; vertical-align: top; text-align: left; overflow: hidden; width: 362px; min-height: 100%; display: inline-block; text-wrap: wrap; letter-spacing: normal; backface-visibility: hidden;\"><div class=\"celwidget aplus-module brand-story-card-1-four-asin aplus-brand-story-card\" cel_widget_id=\"aplus-brand-story-card-1-four-asin\" data-csa-c-id=\"wo7mcv-x78les-1mv46-6q7hlt\" data-cel-widget=\"aplus-brand-story-card-1-four-asin\"><div class=\"apm-brand-story-card\" style=\"position: relative; width: 362px; height: 453px; float: none; padding: 12px;\"><div class=\"apm-brand-story-image-row\" style=\"height: 185px; padding: 0px; margin: auto; display: flex;\"><div class=\"apm-brand-story-image-cell\" style=\"box-sizing: content-box; padding: 0px; margin: 0px; width: 166px; border: 1px solid rgb(255, 255, 255);\"><a class=\"a-link-normal apm-brand-story-image-link\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://www.amazon.in/dp/B096FHLD2T/ref=emc_bcc_2_i\" style=\"color: rgb(0, 113, 133); display: block; width: 165.994px; height: 182.587px;\"><img alt=\"Typecase Flexbook iPad Keyboard for Air 5th Gen, 4th Gen & iPad Pro 11(2021,2020,2018), 360Â° Rota...\" src=\"https://m.media-amazon.com/images/I/51a2jwy154L.__AC_SR166,182___.jpg\" class=\"apm-brand-story-image-img\" data-src=\"https://m.media-amazon.com/images/I/51a2jwy154L.__AC_SR166,182___.jpg\" style=\"max-width: 100%; vertical-align: top; display: block; width: 165.994px; height: 182.587px; object-fit: cover;\"></a></div><div class=\"apm-brand-story-image-cell\" style=\"box-sizing: content-box; padding: 0px; margin: 0px; width: 166px; border: 1px solid rgb(255, 255, 255);\"><a class=\"a-link-normal apm-brand-story-image-link\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://www.amazon.in/dp/B0B66P3JW8/ref=emc_bcc_2_i\" style=\"color: rgb(0, 113, 133); display: block; width: 165.994px; height: 182.587px;\"><img alt=\"Typecase Flexbook iPad Keyboard for Air 5th/4th Gen & iPad Pro 11, 360Â° Rotation, 10-Color Backli...\" src=\"https://m.media-amazon.com/images/I/51fDP026OUL.__AC_SR166,182___.jpg\" class=\"apm-brand-story-image-img\" data-src=\"https://m.media-amazon.com/images/I/51fDP026OUL.__AC_SR166,182___.jpg\" style=\"max-width: 100%; vertical-align: top; display: block; width: 165.994px; height: 182.587px; object-fit: cover;\"></a></div></div><div class=\"apm-brand-story-image-row\" style=\"height: 185px; padding: 0px; margin: auto; display: flex;\"><div class=\"apm-brand-story-image-cell\" style=\"box-sizing: content-box; padding: 0px; margin: 0px; width: 166px; border: 1px solid rgb(255, 255, 255);\"><a class=\"a-link-normal apm-brand-story-image-link\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://www.amazon.in/dp/B0B1J71XDP/ref=emc_bcc_2_i\" style=\"color: rgb(0, 113, 133); display: block; width: 165.994px; height: 182.587px;\"><img alt=\"Typecase Flexbook iPad Keyboard for Air 5th/4th Gen & iPad Pro 11, 360Â° Rotation, 10-Color Backli...\" src=\"https://m.media-amazon.com/images/I/41oC396yI5L.__AC_SR166,182___.jpg\" class=\"apm-brand-story-image-img\" data-src=\"https://m.media-amazon.com/images/I/41oC396yI5L.__AC_SR166,182___.jpg\" style=\"max-width: 100%; vertical-align: top; display: block; width: 165.994px; height: 182.587px; object-fit: cover;\"></a></div><div class=\"apm-brand-story-image-cell\" style=\"box-sizing: content-box; padding: 0px; margin: 0px; width: 166px; border: 1px solid rgb(255, 255, 255);\"><a class=\"a-link-normal apm-brand-story-image-link\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://www.amazon.in/dp/B0B1J74FSM/ref=emc_bcc_2_i\" style=\"color: rgb(0, 113, 133); display: block; width: 165.994px; height: 182.587px;\"><img alt=\"Typecase Flexbook iPad Keyboard for Air 5th/4th Gen & iPad Pro 11, 360Â° Rotation, 10-Color Backli...\" src=\"https://m.media-amazon.com/images/I/417b3gOkvuL.__AC_SR166,182___.jpg\" class=\"apm-brand-story-image-img\" data-src=\"https://m.media-amazon.com/images/I/417b3gOkvuL.__AC_SR166,182___.jpg\" style=\"max-width: 100%; vertical-align: top; display: block; width: 165.994px; height: 182.587px; object-fit: cover;\"></a></div></div><div class=\"apm-brand-story-text apm-brand-story-text-single\" style=\"margin-top: 20px;\"><h3 style=\"padding: 0px; margin: 0px; text-rendering: optimizelegibility; font-weight: 700; font-size: 18px; line-height: 24px; text-wrap: nowrap; overflow: hidden; text-overflow: ellipsis;\">typecase Touch iPad 10.9/11</h3></div></div><div style=\"clear: both;\"></div></div></li></ol></div></div><div class=\"a-carousel-col a-carousel-right\" style=\"overflow: visible; min-height: 1px; position: absolute; zoom: 1; text-align: right; right: 0px; padding: 0px; width: 40px; height: 453px; top: 0px; z-index: 1; visibility: hidden;\"><a class=\"a-button a-button-image a-carousel-button a-carousel-goto-nextpage\" tabindex=\"0\" href=\"https://www.amazon.in/dp/B0BK4WWW1T?th=1#\" id=\"a-autoid-27\" aria-disabled=\"false\" style=\"color: rgb(0, 113, 133); background: rgb(255, 255, 255); border-radius: 8px; border: none; cursor: pointer; display: inline-block; padding: 0px; text-align: center; vertical-align: middle; height: auto; position: relative; top: 181.2px; margin: 0px; box-shadow: rgba(213, 217, 217, 0.5) 0px 2px 5px 0px;\"><span class=\"a-button-inner\" style=\"display: block; position: relative; overflow: hidden; height: auto; border-radius: 4px 0px 0px 4px; padding: 20px 6px; line-height: 0; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; box-shadow: none;\"><i class=\"a-icon a-icon-next\" style=\"background-image: url(\"https://m.media-amazon.com/images/S/sash/McBZv0ZvnbehkIx.png\"); background-size: 400px 900px; background-repeat: no-repeat; display: inline-block; vertical-align: top; width: 11px; height: 15px; background-position: -105px -7px; margin: 5px 5px 5px 6px;\"><span class=\"a-icon-alt\" style=\"position: absolute; left: -9999px; top: auto; display: block; width: 1px; height: 1px; line-height: 1px; font-size: 1px; overflow: hidden;\"></span></i></span></a></div></div></div></div></div></div></div></div><div id=\"aplus_feature_div\" class=\"celwidget pd_rd_w-Yi1AA pd_rd_r-PDXT89S6Z0GVBZ3R1D3Y pd_rd_wg-gR8zV\" data-feature-name=\"aplus\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"aplus\" data-csa-c-slot-id=\"aplus_feature_div\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"kwqilk-v5c7k7-hrsy5x-amrzdf\" data-cel-widget=\"aplus_feature_div\" style=\"font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px;\"><div id=\"aplus\" class=\"a-section a-spacing-large bucket\" style=\"margin-bottom: 0px;\"><hr noshade=\"true\" size=\"1\" class=\"bucketDivider\" style=\"box-sizing: border-box; line-height: 19px; margin-top: 0px; filter: none; z-index: 0; zoom: 1; clear: left; background: 0px 0px !important; border-top-color: rgb(204, 204, 204) !important; height: 44px !important; margin-bottom: -36px !important;\"><h2 style=\"padding: 0px 0px 4px; margin: 0px; text-rendering: optimizelegibility; font-weight: 700; line-height: 32px; font-size: 21px !important; color: rgb(51, 51, 51) !important;\">From the manufacturer</h2><div class=\"aplus-v2 desktop celwidget\" cel_widget_id=\"aplus\" data-csa-c-id=\"2xy863-qgfod6-vn0ci7-7102hl\" data-cel-widget=\"aplus\" style=\"margin-left: auto; margin-right: auto;\"><div class=\"celwidget aplus-module 3p-module-b aplus-standard\" cel_widget_id=\"aplus-3p-module-b\" data-csa-c-id=\"kjdsqn-mt86a-ey2vba-f1hkou\" data-cel-widget=\"aplus-3p-module-b\"><div class=\"aplus-module-wrapper aplus-3p-fixed-width\" style=\"width: 970px; margin-left: auto; margin-right: auto;\"><h3 class=\"a-spacing-mini\" style=\"padding: 0px 0px 4px; margin-top: 0px; margin-right: 0px; margin-left: 0px; text-rendering: optimizelegibility; font-weight: 700; font-size: 18px; line-height: 24px; margin-bottom: 4px !important;\">Tpecase Edge Magnetic Magic Keyboard for iPad 5th/4th Gen & iPad Pro 11</h3><img alt=\".\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/077f2100-eda2-4014-908b-faea4f68e29d.__CR0,0,970,600_PT0_SX970_V1___.jpg\" class=\"a-spacing-base\" data-src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/077f2100-eda2-4014-908b-faea4f68e29d.__CR0,0,970,600_PT0_SX970_V1___.jpg\" style=\"max-width: 100%; vertical-align: top; margin-bottom: 12px !important;\"><p class=\"a-spacing-base\" style=\"padding: 0px; margin-bottom: 12px !important;\"></p><ul class=\"a-unordered-list a-vertical\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; padding: 0px;\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">It features an incredible typing experience, a track pad that opens up new ways to work with iPadOS and front and back protection.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Super Strong Magnetic Attraction---70+ magnets form a powerful magnetic net, which will not make the iPad at risk of falling.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Smart Sleep---Close the keyboard and automatically sleep, intelligent power saving to extend the life of the iPad battery.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">20,000 Keystrokes---The keyboard keys adopt scissor foot structure, and the built-in silicone weight standard has been tested by the market for a long time, and is committed to bringing customers the best keystroke experience.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">10 Backlit Colors---A variety of colors can be selected out of 10 Backlit colors while competition has only 7 color & 3 levels of brightness can be adjusted.</span></li></ul><p style=\"padding: 0px; margin-top: -4px; margin-bottom: 14px;\"></p><p class=\"a-spacing-base\" style=\"padding: 0px; margin-top: -4px; margin-bottom: 12px !important;\"><span class=\"a-text-bold\" style=\"font-weight: 700 !important;\">Compatibility</span></p><p class=\"a-spacing-base\" style=\"padding: 0px; margin-top: -4px; margin-bottom: 12px !important;\"><span class=\"a-text-bold\" style=\"font-weight: 700 !important;\">iPad Pro 11 4th Generation 2022 October</span></p><p class=\"a-spacing-base\" style=\"padding: 0px; margin-top: -4px; margin-bottom: 12px !important;\">iPad Pro 11 3rd Generation 2021 (A2301, A2459, A2460)</p><p class=\"a-spacing-base\" style=\"padding: 0px; margin-top: -4px; margin-bottom: 12px !important;\">iPad Pro 11 2nd Generation 2020 (A2228, A2068, A2231)</p><p class=\"a-spacing-base\" style=\"padding: 0px; margin-top: -4px; margin-bottom: 12px !important;\">iPad Pro 11 1st Generation 2018 (A1980, A2013, A1934, A1979)</p><p class=\"a-spacing-base\" style=\"padding: 0px; margin-top: -4px; margin-bottom: 12px !important;\">iPad Air 5th Generation 2022 (A2588, A2589, A2591)</p><p class=\"a-spacing-base\" style=\"padding: 0px; margin-top: -4px; margin-bottom: 0px;\">iPad Air 4th Generation 2020 (A2071, A2316, A2324, A2325)</p></div></div><div class=\"celwidget aplus-module 3p-module-b aplus-standard\" cel_widget_id=\"aplus-3p-module-b\" data-csa-c-id=\"n2z2qr-ya1e7y-xpm7xh-r8fetf\" data-cel-widget=\"aplus-3p-module-b\"><div class=\"aplus-module-wrapper aplus-3p-fixed-width\" style=\"width: 970px; margin-left: auto; margin-right: auto;\"><img alt=\".\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/7da255cf-13d2-4dcc-910f-bf7b8175f959.__CR0,0,970,600_PT0_SX970_V1___.jpg\" class=\"a-spacing-base\" data-src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/7da255cf-13d2-4dcc-910f-bf7b8175f959.__CR0,0,970,600_PT0_SX970_V1___.jpg\" style=\"max-width: 100%; vertical-align: top; margin-bottom: 12px !important;\"><p class=\"a-spacing-base\" style=\"padding: 0px; margin-bottom: 12px !important;\"></p><ul class=\"a-unordered-list a-vertical\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; padding: 0px;\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Smooth angle adjust ability delivers the perfect viewing angle.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Magic Keyboard--All the usage scenarios you need can be realized, whether it is office, study, painting, movies or other scenarios.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Folds into a case to provide front and back protection for traveling with iPad Pro.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">The Large-Capacity Battery: it brings a better battery life experience to your keyboard, and can last up to 2000 hours of battery life with light use.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Auto wake & sleep: Open the cover to automatically wake the iPad, close the cover to automatically sleep the iPad.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">90 Days Typing: The battery can achieve up to 90 days of standby for basic work needs, and one week of medium-to-high work needs.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Charging Time: 3-4 hours.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">10 Color Backlit better than competition 7 back lit</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">800 mAh Battery for more work output</span></li></ul><p style=\"padding: 0px; margin-top: -4px; margin-bottom: 0px;\"></p></div></div><div class=\"celwidget aplus-module 3p-module-b aplus-standard\" cel_widget_id=\"aplus-3p-module-b\" data-csa-c-id=\"p3z5a9-al15ms-3z8qvx-qzxsb6\" data-cel-widget=\"aplus-3p-module-b\"><div class=\"aplus-module-wrapper aplus-3p-fixed-width\" style=\"width: 970px; margin-left: auto; margin-right: auto;\"><img alt=\".\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/c2e7359a-355c-46bc-98c4-37a2b9152410.__CR0,0,970,600_PT0_SX970_V1___.jpg\" class=\"a-spacing-base\" data-src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/c2e7359a-355c-46bc-98c4-37a2b9152410.__CR0,0,970,600_PT0_SX970_V1___.jpg\" style=\"max-width: 100%; vertical-align: top; margin-bottom: 12px !important;\"><p class=\"a-spacing-base\" style=\"padding: 0px; margin-bottom: 12px !important;\"></p><ul class=\"a-unordered-list a-vertical\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; padding: 0px;\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">AN AMAZING COMPANION FOR IPAD AIR 5TH / 4TH GENERATION AND IPAD PRO 11 : It features a great typing experience, a trackpad that a good way to work with iPadOS, a Typeâ€‘C port for passâ€‘through charging for keyboard, and front and back protection. The Slim Keyboard features a floating cantilever design, allowing you to attach it magnetically and smoothly adjust it to the perfect viewing angle for you.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">KEYBOARD CASE FOR IPAD AIR 5TH 2022 /4TH AND IPAD PRO 11 2022 2021 & 2020 & 2018: Compatible with ipad air 5th 2022 , ipad air 4th 10.9 inch 2020 (Model Number:A2324/A2072/A2316/A2325) iPad Pro 11 inch 3rd Generation 2021 (Model Number: A2301/A2459/A2460 ), 2nd Generation 2020 (Model Number: A2228/A2068/A2230/A2231) / 1st Generation 2018 (Model Number: A1980/A2013/A1934). Not compatible with any other iPad devices.</span></li></ul><p style=\"padding: 0px; margin-top: -4px; margin-bottom: 0px;\"></p></div></div><div class=\"celwidget aplus-module 3p-module-b aplus-standard\" cel_widget_id=\"aplus-3p-module-b\" data-csa-c-id=\"ycsted-etvckf-c1oix7-fpe2by\" data-cel-widget=\"aplus-3p-module-b\"><div class=\"aplus-module-wrapper aplus-3p-fixed-width\" style=\"width: 970px; margin-left: auto; margin-right: auto;\"><img alt=\".\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/52b4c973-9cbe-4c69-b7e9-55f66c3f007e.__CR0,0,970,600_PT0_SX970_V1___.jpg\" class=\"a-spacing-base\" data-src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/52b4c973-9cbe-4c69-b7e9-55f66c3f007e.__CR0,0,970,600_PT0_SX970_V1___.jpg\" style=\"max-width: 100%; vertical-align: top; margin-bottom: 12px !important;\"><p class=\"a-spacing-base\" style=\"padding: 0px; margin-bottom: 12px !important;\"></p><ul class=\"a-unordered-list a-vertical\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; padding: 0px;\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">MULTIPLE STAND ANGLES FOR COMFORTABLE USE: our iPad Air 5th / 4th 10.9-inch and iPad Pro 11-inch smart keyboard case allows you to smoothly adjust to the perfect viewing angle for you to Typing, Reading, Gaming - giving you amazing versatility. Perfect for working, writing, or watching videos at work, school, travel, and home.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">SAFER, STRONGER, AND MORE CONVENIENT: strong magnetic attraction, which makes the ipad firmly fixed on the tablet case and provides front and back double-sided protection; the Bluetooth link, cooperating with iPad OS system, is more convenient to use.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">LONG LIFE BATTERY & NOTICE: Built-in Rechargeable battery could extend the battery life, 3 hours full charge, Continous working- 5 Hr(Back lit ON), 50-60 hrs( backlit OFF)stand by for 90 days (backlit off). Notice: The keyboard will enter into sleep mode if it doesn\'t work for 10 minutes, and it will disconnect with your iPad. It will wake up and connect to your iPad again when pressing any key.</span></li></ul><p style=\"padding: 0px; margin-top: -4px; margin-bottom: 0px;\"></p></div></div><div class=\"celwidget aplus-module 3p-module-b aplus-standard\" cel_widget_id=\"aplus-3p-module-b\" data-csa-c-id=\"fc9e48-18eluf-efher7-fwuhv3\" data-cel-widget=\"aplus-3p-module-b\"><div class=\"aplus-module-wrapper aplus-3p-fixed-width\" style=\"width: 970px; margin-left: auto; margin-right: auto;\"><img alt=\".\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/e553b261-3fca-4f5f-aba0-c1e7e374930b.__CR0,0,970,600_PT0_SX970_V1___.jpg\" class=\"a-spacing-base\" data-src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/e553b261-3fca-4f5f-aba0-c1e7e374930b.__CR0,0,970,600_PT0_SX970_V1___.jpg\" style=\"max-width: 100%; vertical-align: top; margin-bottom: 12px !important;\"><p class=\"a-spacing-base\" style=\"padding: 0px; margin-bottom: 12px !important;\"><span class=\"a-text-bold\" style=\"font-weight: 700 !important;\"><u>FAQ (READ IT CAREFULLY)</u></span></p><p class=\"a-spacing-base\" style=\"padding: 0px; margin-top: -4px; margin-bottom: 12px !important;\"></p><ol class=\"a-ordered-list a-vertical\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 20px; padding: 0px;\"><li style=\"list-style: decimal; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Tablet Keyboard is not a standalone Product . It must be connect to a iPad to work.</span></li><li style=\"list-style: decimal; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">To know about how to make Connection with iPad, Complete steps are mentioned in USER Manual Pls check it carefully. Still any issue, pls cont customer support ( mentioned on MRP label of Product, on user Guide or typecase india site)</span></li><li style=\"list-style: decimal; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Some time iPad version update is required for full functionality of product. Please remove or forget other previous Bluetooth keyboard or other devices before making connection.</span></li><li style=\"list-style: decimal; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Some customer could face Error in some iOS version at time of installation or connection. NO need to worry. If you receive these error then pls feel free to cont our tech spport & we will provide resolution of these error immediately. C<span class=\"a-text-bold\" style=\"font-weight: 700 !important;\">ustomer can cont us in case of any technical assistance just by dropping a msg on No</span>- -----------</span></li></ol><p style=\"padding: 0px; margin-top: -4px; margin-bottom: 14px;\"></p><p class=\"a-spacing-base\" style=\"padding: 0px; margin-top: -4px; margin-bottom: 12px !important;\">>>>>>> +91-9871555106<u><span class=\"a-text-bold\" style=\"font-weight: 700 !important;\">Â <<</span><</u><span class=\"a-text-bold\" style=\"font-weight: 700 !important;\"><u><<<<<<<----</u>------------</span></p></div></div></div></div></div><table class=\"a-normal a-spacing-micro\" style=\"width: 637.688px; background-color: rgb(255, 255, 255); margin-bottom: 0px !important;\"><tbody><tr class=\"a-spacing-small po-special_feature\" style=\"margin-bottom: 8px !important;\"><td class=\"a-span9\" style=\"vertical-align: top; padding-top: 3px; padding-left: 3px; margin-right: 0px; width: 470.756px; float: none !important;\"><span class=\"a-size-base\" style=\"line-height: 20px !important;\"><span class=\"a-truncate po-truncate-attribute\" data-a-word-break=\"normal\" data-a-truncate-name=\"po-attribute-truncate-4\" data-a-max-rows=\"3\" data-a-overflow-marker=\"â€¦\" data-a-recalculate=\"false\" data-a-updated=\"true\" style=\"display: inline-block; position: relative; width: 467.756px; overflow: hidden; word-break: normal; max-height: 3.9em; line-height: 1.3em !important;\"><span class=\"a-truncate-cut\" aria-hidden=\"true\" style=\"display: inline-block; width: 467.756px; word-break: break-word; height: 3.9em;\"><br></span></span></span></td></tr></tbody></table></div><div class=\"a-section a-spacing-small a-spacing-top-small\" style=\"margin-bottom: 0px; margin-top: 8px !important;\"><table class=\"a-normal a-spacing-micro\" style=\"width: 637.688px; background-color: rgb(255, 255, 255); margin-bottom: 0px !important;\"><tbody><tr class=\"a-spacing-small po-special_feature\" style=\"margin-bottom: 8px !important;\"><td class=\"a-span9\" style=\"vertical-align: top; padding-top: 3px; padding-left: 3px; margin-right: 0px; width: 470.756px; float: none !important;\"><span class=\"a-size-base\" style=\"line-height: 20px !important;\"><span class=\"a-truncate po-truncate-attribute\" data-a-word-break=\"normal\" data-a-truncate-name=\"po-attribute-truncate-4\" data-a-max-rows=\"3\" data-a-overflow-marker=\"â€¦\" data-a-recalculate=\"false\" data-a-updated=\"true\" style=\"display: inline-block; position: relative; width: 467.756px; overflow: hidden; word-break: normal; max-height: 3.9em; line-height: 1.3em !important;\"><span class=\"a-truncate-cut\" aria-hidden=\"true\" style=\"display: inline-block; width: 467.756px; word-break: break-word; height: 3.9em;\"><br></span></span></span></td></tr></tbody></table><table class=\"a-normal a-spacing-micro\" style=\"width: 637.688px; background-color: rgb(255, 255, 255); margin-bottom: 0px !important;\"><tbody><tr class=\"a-spacing-small po-compatible_devices\" style=\"margin-bottom: 8px !important;\"><td class=\"a-span9\" style=\"vertical-align: top; padding-top: 3px; padding-bottom: 3px; padding-left: 3px; margin-right: 0px; width: 470.756px; float: none !important;\"><span class=\"a-size-base\" style=\"line-height: 20px !important;\"><span class=\"a-truncate po-truncate-attribute\" data-a-word-break=\"normal\" data-a-truncate-name=\"po-attribute-truncate-1\" data-a-max-rows=\"3\" data-a-overflow-marker=\"â€¦\" data-a-recalculate=\"false\" data-a-updated=\"true\" style=\"display: inline-block; position: relative; width: 467.756px; overflow: hidden; word-break: normal; max-height: 3.9em; line-height: 1.3em !important;\"><span class=\"a-truncate-cut\" aria-hidden=\"true\" style=\"display: inline-block; width: 467.756px; word-break: break-word; height: 3.9em;\"><br></span></span></span></td></tr></tbody></table></div><div class=\"a-section a-spacing-small a-spacing-top-small\" style=\"margin-bottom: 0px; margin-top: 8px !important;\"><table class=\"a-normal a-spacing-micro\" style=\"width: 637.688px; background-color: rgb(255, 255, 255); margin-bottom: 0px !important;\"><tbody><tr class=\"a-spacing-small po-compatible_devices\" style=\"margin-bottom: 8px !important;\"><td class=\"a-span9\" style=\"vertical-align: top; padding-top: 3px; padding-bottom: 3px; padding-left: 3px; margin-right: 0px; width: 470.756px; float: none !important;\"><span class=\"a-size-base\" style=\"line-height: 20px !important;\"><span class=\"a-truncate po-truncate-attribute\" data-a-word-break=\"normal\" data-a-truncate-name=\"po-attribute-truncate-1\" data-a-max-rows=\"3\" data-a-overflow-marker=\"â€¦\" data-a-recalculate=\"false\" data-a-updated=\"true\" style=\"display: inline-block; position: relative; width: 467.756px; overflow: hidden; word-break: normal; max-height: 3.9em; line-height: 1.3em !important;\"><span class=\"a-truncate-cut\" aria-hidden=\"true\" style=\"display: inline-block; width: 467.756px; word-break: break-word; height: 3.9em;\"><br></span></span></span></td></tr></tbody></table></div></div>', '', NULL, 1, 1, 39, 24, NULL, 'typecase-edge-magic-keyboard-for-ipad-air-5th4th20222020--new-ipad-pro-11-4th3rd2nd-gen', NULL, '2023-10-30 10:49:30');
INSERT INTO `tbl_product` (`p_id`, `p_name`, `p_size`, `p_old_price`, `p_current_price`, `p_sku`, `p_vendor`, `p_delivery`, `p_qty`, `collection`, `color`, `variant`, `p_featured_photo`, `p_description`, `p_short_description`, `additional_info`, `p_is_featured`, `p_is_active`, `mid_id`, `top_id`, `ecat_id`, `slug`, `video`, `create_date`) VALUES
(6, 'typecase Edge Magic Keyboard for iPad Pro 12.9 (6th Gen 2022),5th (2021) & 4th (2020) & 3rd (2018) Gen with Trackpad', '1', '21999', '9899', 'B0B9NHZLB9', 'Typecase India (DP)', '2-4', 10, '10', '1', NULL, NULL, '<div id=\"productOverview_feature_div\" class=\"celwidget\" data-feature-name=\"productOverview\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"productOverview\" data-csa-c-slot-id=\"productOverview_feature_div\" data-csa-c-asin=\"B0B9NHZLB9\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"vloct1-g23r3f-buvmpz-kday7o\" data-cel-widget=\"productOverview_feature_div\" style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><div class=\"a-section a-spacing-small a-spacing-top-small\" style=\"margin-bottom: 0px; margin-top: 8px !important;\"><table class=\"a-normal a-spacing-micro\" style=\"width: 637.688px; margin-bottom: 0px !important;\"><tbody><tr class=\"a-spacing-small po-brand\" style=\"margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding-right: 3px; padding-bottom: 3px; margin-right: 0px; width: 166.931px; float: none !important;\"><span class=\"a-size-base a-text-bold\" style=\"font-weight: 700 !important; line-height: 20px !important;\">Brand</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding-bottom: 3px; padding-left: 3px; margin-right: 0px; width: 470.756px; float: none !important;\"><span class=\"a-size-base po-break-word\" style=\"word-break: break-word; line-height: 20px !important;\">typecase</span></td></tr><tr class=\"a-spacing-small po-compatible_devices\" style=\"margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding-top: 3px; padding-right: 3px; padding-bottom: 3px; margin-right: 0px; width: 166.931px; float: none !important;\"><span class=\"a-size-base a-text-bold\" style=\"font-weight: 700 !important; line-height: 20px !important;\">Compatible Devices</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding-top: 3px; padding-bottom: 3px; padding-left: 3px; margin-right: 0px; width: 470.756px; float: none !important;\"><span class=\"a-size-base po-break-word\" style=\"word-break: break-word; line-height: 20px !important;\">iPad Pro 12.9 Inch 6th Generation 2022, iPad Pro 12.9\" 5th Gen/4th/3rd Gen (2021,2020,2018)</span></td></tr><tr class=\"a-spacing-small po-connectivity_technology\" style=\"margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding-top: 3px; padding-right: 3px; padding-bottom: 3px; margin-right: 0px; width: 166.931px; float: none !important;\"><span class=\"a-size-base a-text-bold\" style=\"font-weight: 700 !important; line-height: 20px !important;\">Connectivity Technology</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding-top: 3px; padding-bottom: 3px; padding-left: 3px; margin-right: 0px; width: 470.756px; float: none !important;\"><span class=\"a-size-base po-break-word\" style=\"word-break: break-word; line-height: 20px !important;\">Bluetooth</span></td></tr><tr class=\"a-spacing-small po-keyboard_description\" style=\"margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding-top: 3px; padding-right: 3px; padding-bottom: 3px; margin-right: 0px; width: 166.931px; float: none !important;\"><span class=\"a-size-base a-text-bold\" style=\"font-weight: 700 !important; line-height: 20px !important;\">Keyboard Description</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding-top: 3px; padding-bottom: 3px; padding-left: 3px; margin-right: 0px; width: 470.756px; float: none !important;\"><span class=\"a-size-base po-break-word\" style=\"word-break: break-word; line-height: 20px !important;\">Flexible</span></td></tr><tr class=\"a-spacing-small po-recommended_uses_for_product\" style=\"margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding-top: 3px; padding-right: 3px; margin-right: 0px; width: 166.931px; float: none !important;\"><span class=\"a-size-base a-text-bold\" style=\"font-weight: 700 !important; line-height: 20px !important;\">Recommended Uses For Product</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding-top: 3px; padding-left: 3px; margin-right: 0px; width: 470.756px; float: none !important;\"><span class=\"a-size-base po-break-word\" style=\"word-break: break-word; line-height: 20px !important;\">Home &amp; office use</span></td></tr></tbody></table></div></div><div id=\"featurebullets_feature_div\" class=\"celwidget\" data-feature-name=\"featurebullets\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"featurebullets\" data-csa-c-slot-id=\"featurebullets_feature_div\" data-csa-c-asin=\"B0B9NHZLB9\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"z4catg-ejqk92-om7bl-r185v4\" data-cel-widget=\"featurebullets_feature_div\" style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><div id=\"feature-bullets\" class=\"a-section a-spacing-medium a-spacing-top-small\" style=\"margin-bottom: 0px; margin-top: 8px !important;\"><hr style=\"box-sizing: border-box; background-color: transparent; border-top-color: rgb(187, 191, 191); height: 1px; line-height: 19px; margin-bottom: 14px; margin-top: 0px;\"><h1 class=\"a-size-base-plus a-text-bold\" style=\"padding: 0px 0px 4px; margin-top: 0px; margin-bottom: 0px; text-rendering: optimizelegibility; font-weight: 700 !important; font-size: 16px !important; line-height: 24px !important;\">About this item</h1><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; padding: 0px;\"><li class=\"a-spacing-mini\" style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Compatibility - Specially designed for iPad Pro 12.9 inch 6th Generation 2022(A2436/A2764/A2437/A2766) iPad Pro 12.9 inch 5th Generation 2021 (A2378/A2379/A2461/A2462) / iPad Pro 12.9 inch 4th Generation 2020 (A2229/A2069/A2232/A2233) / iPad Pro 12.9 inch 3rd Generation 2018 (A1876/A2014/A1895/A1983). (Remark: NOT for 2017 2nd Gen/2015 1st Gen iPad Pro 12.9)</span></li><li class=\"a-spacing-mini\" style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Exclusive 10-Color Backlight - Multi colors Ergonomic backlights, 3 brightness levels, a full row of for PadOS shortcuts, to adjust brightness levels, change backlit colors, media, volume control and more</span></li><li class=\"a-spacing-mini\" style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Built-in Touchpad - Navigates your device with a Laptop style touch trackpad, scroll, swipe, and more. The palm rejection function initiates when you are typing on the keyboard.</span></li><li class=\"a-spacing-mini\" style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Smart Features - Magnetically attach your iPad &amp; Pencil, smoothly transform your iPad into a laptop . It comes with an synthetic vegan leather, folds into a slim protective cover, gives front and back protection to your iPad</span></li><li class=\"a-spacing-mini\" style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Package Contents: 1 x Keyboard, 1 x USB Cable; 1 x User Manual. 6-month warranty can give you peace of mind about your purchase and assurance that a great team is ready to help every step of the way.</span><div id=\"btf_arenas\" class=\"celwidget\" data-feature-name=\"btf_arenas\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"btf_arenas\" data-csa-c-slot-id=\"btf_arenas\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"lmjv01-wfdaj-ixxww0-sz3wrn\" data-cel-widget=\"btf_arenas\"><div id=\"aplus_feature_div\" class=\"celwidget pd_rd_w-jpdvX pd_rd_r-1KS9372ADGDWA9PPAS1H pd_rd_wg-03EE1\" data-feature-name=\"aplus\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"aplus\" data-csa-c-slot-id=\"aplus_feature_div\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"taqm0j-15a6r0-kj1mm1-4x1c54\" data-cel-widget=\"aplus_feature_div\"><div id=\"aplus\" class=\"a-section a-spacing-large bucket\" style=\"margin-bottom: 0px;\"><h2 style=\"padding: 0px 0px 4px; margin: 0px; text-rendering: optimizelegibility; font-weight: 700; line-height: 32px; font-size: 21px !important; color: rgb(51, 51, 51) !important;\">Product Description</h2><div class=\"aplus-v2 desktop celwidget\" cel_widget_id=\"aplus\" data-csa-c-id=\"5kr0x3-sxq7dp-25g1l4-l8n92z\" data-cel-widget=\"aplus\" style=\"margin-left: auto; margin-right: auto; overflow-wrap: break-word; word-break: break-word;\"><div class=\"celwidget aplus-module 3p-module-b aplus-standard\" cel_widget_id=\"aplus-3p-module-b\" data-csa-c-id=\"qjsgyd-tlkdn2-qnvec7-rmf0lw\" data-cel-widget=\"aplus-3p-module-b\" style=\"min-width: 979px;\"><div class=\"aplus-module-wrapper aplus-3p-fixed-width\" style=\"width: 970px; margin-left: auto; margin-right: auto; text-align: inherit;\"><img alt=\"..\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/1d52351d-130d-4234-b6c1-40f22f770dd1.__CR0,0,970,600_PT0_SX970_V1___.jpg\" class=\"a-spacing-base\" data-src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/1d52351d-130d-4234-b6c1-40f22f770dd1.__CR0,0,970,600_PT0_SX970_V1___.jpg\" style=\"max-width: 100%; vertical-align: top; margin-bottom: 14px !important;\"></div></div><div class=\"celwidget aplus-module 3p-module-b aplus-standard\" cel_widget_id=\"aplus-3p-module-b\" data-csa-c-id=\"ggvng3-zacggh-1pdf2c-eqycfb\" data-cel-widget=\"aplus-3p-module-b\" style=\"min-width: 979px;\"><div class=\"aplus-module-wrapper aplus-3p-fixed-width\" style=\"width: 970px; margin-left: auto; margin-right: auto; text-align: inherit;\"><img alt=\".\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/34165165-b6f4-4fce-ac84-88bda1e5fe2d.__CR0,0,970,600_PT0_SX970_V1___.jpg\" class=\"a-spacing-base\" data-src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/34165165-b6f4-4fce-ac84-88bda1e5fe2d.__CR0,0,970,600_PT0_SX970_V1___.jpg\" style=\"max-width: 100%; vertical-align: top; margin-bottom: 14px !important;\"></div></div><div class=\"celwidget aplus-module module-12 aplus-standard\" cel_widget_id=\"aplus-module-12\" data-csa-c-id=\"u182bi-pb80zp-1xfrfi-p8oq32\" data-cel-widget=\"aplus-module-12\" style=\"min-width: 979px; padding-bottom: 12px; margin-bottom: 12px;\"><div class=\"aplus-module-wrapper apm-spacing apm-floatnone apm-fixed-width\" style=\"text-align: inherit; margin-right: auto; margin-left: auto; width: 969px; float: none;\"><div class=\"apm-sidemodule aplus-module-content\" style=\"text-align: inherit; margin: 0px auto; width: 970px; padding: 0px; position: relative; min-height: 300px; display: flex;\"><div class=\"apm-hero-image\" style=\"float: none;\"><img alt=\".\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/48177a43-98e0-4844-afd7-a56cc41f4ea0.__CR0,74,1464,453_PT0_SX970_V1___.jpg\" class=\"\" data-src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/48177a43-98e0-4844-afd7-a56cc41f4ea0.__CR0,74,1464,453_PT0_SX970_V1___.jpg\" style=\"max-width: 100%; border-width: initial; border-style: none; vertical-align: top; position: absolute;\"></div></div></div><div style=\"clear: both;\"></div></div><div class=\"celwidget aplus-module module-12 aplus-standard\" cel_widget_id=\"aplus-module-12\" data-csa-c-id=\"ecgzds-uodn2n-prn11h-tyjz9o\" data-cel-widget=\"aplus-module-12\" style=\"min-width: 979px; padding-bottom: 12px; margin-bottom: 12px;\"><div class=\"aplus-module-wrapper apm-spacing apm-floatnone apm-fixed-width\" style=\"text-align: inherit; margin-right: auto; margin-left: auto; width: 969px; float: none;\"><div class=\"apm-sidemodule aplus-module-content\" style=\"text-align: inherit; margin: 0px auto; width: 970px; padding: 0px; position: relative; min-height: 300px; display: flex;\"><div class=\"apm-hero-image\" style=\"float: none;\"><img alt=\"..\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/febf0902-5e48-470d-ac81-5ec1014fea36.__CR0,74,1464,453_PT0_SX970_V1___.jpg\" class=\"\" data-src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/febf0902-5e48-470d-ac81-5ec1014fea36.__CR0,74,1464,453_PT0_SX970_V1___.jpg\" style=\"max-width: 100%; border-width: initial; border-style: none; vertical-align: top; position: absolute;\"></div></div></div><div style=\"clear: both;\"></div></div><div class=\"celwidget aplus-module 3p-module-b aplus-standard\" cel_widget_id=\"aplus-3p-module-b\" data-csa-c-id=\"pff19k-g3ehnx-p5127q-1fjos4\" data-cel-widget=\"aplus-3p-module-b\" style=\"min-width: 979px;\"><div class=\"aplus-module-wrapper aplus-3p-fixed-width\" style=\"width: 970px; margin-left: auto; margin-right: auto; text-align: inherit;\"><img alt=\".\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/1e6ec950-27d9-4da0-be72-87fdfbe8875d.__CR0,0,970,600_PT0_SX970_V1___.jpg\" class=\"a-spacing-base\" data-src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/1e6ec950-27d9-4da0-be72-87fdfbe8875d.__CR0,0,970,600_PT0_SX970_V1___.jpg\" style=\"max-width: 100%; vertical-align: top; margin-bottom: 14px !important;\"></div></div><div class=\"celwidget aplus-module 3p-module-b aplus-standard\" cel_widget_id=\"aplus-3p-module-b\" data-csa-c-id=\"yilu87-ubhvs9-n1fukd-lnaajk\" data-cel-widget=\"aplus-3p-module-b\" style=\"min-width: 979px;\"><div class=\"aplus-module-wrapper aplus-3p-fixed-width\" style=\"width: 970px; margin-left: auto; margin-right: auto; text-align: inherit;\"><img alt=\".\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/eb58fa50-6ba4-411a-8862-a60ceae6f66a.__CR0,0,970,600_PT0_SX970_V1___.jpg\" class=\"a-spacing-base\" data-src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/eb58fa50-6ba4-411a-8862-a60ceae6f66a.__CR0,0,970,600_PT0_SX970_V1___.jpg\" style=\"max-width: 100%; vertical-align: top; margin-bottom: 14px !important;\"></div></div><div class=\"celwidget aplus-module 3p-module-b aplus-standard\" cel_widget_id=\"aplus-3p-module-b\" data-csa-c-id=\"dz7fkw-hey5xh-r7b7bw-nw2x3p\" data-cel-widget=\"aplus-3p-module-b\" style=\"min-width: 979px; border-bottom: none;\"><div class=\"aplus-module-wrapper aplus-3p-fixed-width\" style=\"width: 970px; margin-left: auto; margin-right: auto; text-align: inherit;\"><img alt=\".\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/cc8d2007-75bb-4c73-ad80-c68f82dd4259.__CR0,1,970,600_PT0_SX970_V1___.jpg\" class=\"a-spacing-base\" data-src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/cc8d2007-75bb-4c73-ad80-c68f82dd4259.__CR0,1,970,600_PT0_SX970_V1___.jpg\" style=\"max-width: 100%; vertical-align: top; margin-bottom: 14px !important;\"></div></div></div></div></div><div id=\"ask-btf_feature_div\" class=\"celwidget pd_rd_w-tUqgZ pd_rd_r-1KS9372ADGDWA9PPAS1H pd_rd_wg-03EE1\" data-feature-name=\"ask-btf\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"ask-btf\" data-csa-c-slot-id=\"ask-btf_feature_div\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"hcxwr8-dpymr7-uhchxi-7saxry\" data-cel-widget=\"ask-btf_feature_div\"><div id=\"ask-btf_feature_div\"><div id=\"ask-btf_feature_div\"><div id=\"cf-ask-cel\" class=\"a-section celwidget\" data-csa-c-id=\"hvyduk-25eapl-6nejj3-lz5a2q\" data-cel-widget=\"cf-ask-cel\" style=\"margin-bottom: 0px;\"><div id=\"Ask\"></div><div data-url=\"/ask/askBrowseAjaxLoad/asin/B0B9NHZLB9\" class=\"a-section askBTFLazyLoad\" style=\"margin-bottom: 0px;\"><div cel_widget_id=\"ask-browse-ajax-load\" class=\"celwidget\" data-csa-c-id=\"5y6fv1-sd4vhs-v0u6dk-6bgi0u\" data-cel-widget=\"ask-browse-ajax-load\"><div id=\"ask-btf-container\" cel_widget_id=\"ask-btf-desktop\" class=\"celwidget\" data-csa-c-id=\"ir8ioc-7eeq1t-cprze3-mofa33\" data-cel-widget=\"ask-btf-desktop\" style=\"font-family: &quot;Amazon Ember&quot;, Verdana, Arial, Helvetica, sans-serif;\"><div class=\"askInlineWidget\" style=\"overflow-wrap: break-word;\"><hr aria-hidden=\"true\" class=\"a-divider-normal\" style=\"box-sizing: border-box; background-color: transparent; border-top-color: rgb(187, 191, 191); height: 1px; line-height: 19px; margin-bottom: 14px; margin-top: 0px;\"><h2 class=\"a-color-base askWidgetHeader\" style=\"padding: 0px 0px 4px; margin: 0.4rem 0px 0px; text-rendering: optimizelegibility; font-weight: 700; font-size: 24px; line-height: 32px; color: rgb(15, 17, 17) !important;\">Looking for specific info?</h2><div class=\"askWidgetQuestions askLiveSearchHide\" style=\"max-width: 800px;\"><div class=\"a-row a-spacing-small a-spacing-top-base\" style=\"width: 799.987px; margin-bottom: 8px !important; margin-top: 12px !important;\"><span class=\"a-declarative\" data-action=\"ask-btf-desktop-input-click\" data-csa-c-type=\"widget\" data-csa-c-func-deps=\"aui-da-ask-btf-desktop-input-click\" data-ask-btf-desktop-input-click=\"{&quot;searchButton&quot;:false}\" data-csa-c-id=\"b0cla1-zakkcz-71h9c5-vpg1t5\"><span class=\"a-declarative\" data-action=\"ask-btf-desktop-input-focusin\" data-csa-c-type=\"widget\" data-csa-c-func-deps=\"aui-da-ask-btf-desktop-input-focusin\" data-ask-btf-desktop-input-focusin=\"{&quot;searchButton&quot;:false}\" data-csa-c-id=\"jh5i6z-1ly4it-ufcqxq-g4lorq\"><span class=\"a-declarative\" data-action=\"ask-btf-desktop-input-change\" data-csa-c-type=\"widget\" data-csa-c-func-deps=\"aui-da-ask-btf-desktop-input-change\" data-ask-btf-desktop-input-change=\"{&quot;searchButton&quot;:false}\" data-csa-c-id=\"mbfqbz-8fatxz-4ehjsz-zgqoke\"><span class=\"a-declarative\" data-action=\"ask-btf-desktop-input-keyup\" data-csa-c-type=\"widget\" data-csa-c-func-deps=\"aui-da-ask-btf-desktop-input-keyup\" data-ask-btf-desktop-input-keyup=\"{&quot;searchButton&quot;:false}\" data-csa-c-id=\"jkgsd0-nq9eqh-xfx6p4-7dhegf\"><span class=\"a-declarative\" data-action=\"ask-detail-page-search-prefetch-click\" data-csa-c-type=\"widget\" data-csa-c-func-deps=\"aui-da-ask-detail-page-search-prefetch-click\" data-ask-detail-page-search-prefetch-click=\"{&quot;asin&quot;:&quot;B0B9NHZLB9&quot;,&quot;language&quot;:&quot;en_IN&quot;}\" data-csa-c-id=\"7l1i44-patd1n-xnmfe9-mqols8\"><span class=\"ask-btf-search-box\"><div class=\"a-section askBtfSearchViewContent\" style=\"margin-bottom: 0px; max-width: 800px; overflow-wrap: break-word; overflow: hidden;\"><form method=\"post\" action=\"https://www.amazon.in/ask/questions/asin/B0B9NHZLB9/create\" class=\"askBtfSearchForm\" style=\"margin-bottom: 14px;\"><span class=\"a-declarative\" data-action=\"ask-prevent-enter-key\" data-csa-c-type=\"widget\" data-csa-c-func-deps=\"aui-da-ask-prevent-enter-key\" data-ask-prevent-enter-key=\"{}\" data-csa-c-id=\"xc347h-kvifcp-fcar5l-4t91yf\"><span class=\"a-declarative\" data-action=\"ask-btfsearch-desktop-input-change\" data-csa-c-type=\"widget\" data-csa-c-func-deps=\"aui-da-ask-btfsearch-desktop-input-change\" data-ask-btfsearch-desktop-input-change=\"{}\" data-csa-c-id=\"zbl6t0-4zydbu-wklmpb-z535xp\"><div class=\"a-section a-spacing-base askBtfSearchFormLabel\" style=\"margin-bottom: 0px;\"><div class=\"askSearchInputIngress\" style=\"position: relative;\"><div class=\"a-search a-span12\" style=\"width: 799.987px; margin-right: 0px; position: relative; display: inline-block;\"><i class=\"a-icon a-icon-search\" style=\"background-image: url(&quot;https://m.media-amazon.com/images/S/sash/McBZv0ZvnbehkIx.png&quot;); background-size: 400px 900px; background-repeat: no-repeat; display: inline-block; vertical-align: top; opacity: 1; width: 13px; height: 13px; background-position: -271px -86px; position: absolute; top: 15.4875px; margin-top: -7px; left: 10px;\"></i><input type=\"search\" maxlength=\"150\" autocomplete=\"off\" placeholder=\"Search in reviews, Q&amp;A...\" spellcheck=\"false\" class=\"a-input-text a-span12 askBtfSearchTextInput askBtfSearchPostTextInput\" aria-labelledby=\"ask-question-input\" style=\"font-size: 14px; vertical-align: middle; line-height: normal; transition: all 0.1s linear 0s; color: rgb(15, 17, 17); width: 799.987px; border-width: 1px; border-style: solid; border-color: rgb(136, 140, 140); border-radius: 4px; box-shadow: rgba(15, 17, 17, 0.15) 0px 1px 2px inset; outline: 0px; background-color: rgb(255, 255, 255); height: 31px; padding: 3px 25px 3px 29px; appearance: textfield; float: none;\"></div><span class=\"a-declarative\" data-action=\"ask-log-click-csm\" data-csa-c-type=\"widget\" data-csa-c-func-deps=\"aui-da-ask-log-click-csm\" data-ask-log-click-csm=\"{&quot;metricName&quot;:&quot;ask-search-ingress-clear-button-click&quot;}\" data-csa-c-id=\"vrvhu5-3h39j2-ytzgna-gxhajd\"></span></div></div></span></span></form></div></span></span></span></span></span></span></div></div></div></div></div></div></div></div></div></div></div><div id=\"productDescription_feature_div\" class=\"celwidget\" data-feature-name=\"productDescription_IN_Ce_display_on_website\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"productDescription_IN_Ce_display_on_website\" data-csa-c-slot-id=\"productDescription_feature_div\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"7zsz21-9l5h36-8yuki4-1i603z\" data-cel-widget=\"productDescription_feature_div\"><div></div></div><div id=\"productDetails_feature_div\" class=\"celwidget\" data-feature-name=\"productDetails_after_aplus\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"productDetails_after_aplus\" data-csa-c-slot-id=\"productDetails_feature_div\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"y6ttx7-cpsip2-s1lppj-cjbop7\" data-cel-widget=\"productDetails_feature_div\"><a id=\"productDetails\" name=\"productDetails\" style=\"color: rgb(0, 113, 133);\"></a><hr aria-hidden=\"true\" class=\"a-divider-normal\" style=\"box-sizing: border-box; background-color: transparent; border-top-color: rgb(187, 191, 191); height: 1px; line-height: 19px; margin-bottom: 14px; margin-top: 0px;\"><div style=\"overflow: hidden;\"><div id=\"prodDetails\" class=\"a-section\" style=\"margin-bottom: 0px; width: 1464px;\"><h2 style=\"padding: 0px 0px 4px; margin: 3px 0px 7px; text-rendering: optimizelegibility; font-weight: 700; line-height: 32px; font-size: 16px !important; color: rgb(204, 102, 0) !important;\">Product information</h2><div class=\"a-row a-spacing-top-base\" style=\"width: 1464px; margin-top: 12px !important;\"><div class=\"a-column a-span6\" style=\"margin-right: 29.2687px; float: left; min-height: 1px; overflow: visible; width: 716.587px;\"><div class=\"a-row a-spacing-base\" style=\"width: 716.587px; margin-bottom: 12px !important;\"><div class=\"a-row a-expander-container a-expander-extend-container\" style=\"width: 716.587px;\"><div class=\"a-row\" style=\"width: 716.587px;\"><div class=\"a-column a-span6\" style=\"margin-right: 28.65px; float: left; min-height: 1px; overflow: visible; width: 343.687px;\"><h1 class=\"a-size-medium a-spacing-small\" style=\"padding: 0px; margin-top: 0px; text-rendering: optimizelegibility; margin-bottom: 8px !important; font-size: 18px !important; line-height: 24px !important;\">Technical Details</h1></div></div><div aria-expanded=\"true\" class=\"a-expander-content a-expander-extend-content\"><div class=\"a-row a-expander-container a-expander-inline-container\" style=\"width: 716.587px;\"><div aria-expanded=\"true\" class=\"a-expander-content a-expander-section-content a-section-expander-inner\" style=\"padding: 12px 18px;\"><table id=\"productDetails_techSpec_section_1\" class=\"a-keyvalue prodDetTable\" role=\"presentation\" style=\"margin-bottom: 22px; width: 680.587px; border-bottom: 1px solid rgb(187, 191, 191); table-layout: fixed; padding: 0px;\"><tbody><tr><th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(240, 242, 242); font-weight: 400; border-top: 1px solid rgb(187, 191, 191); overflow-wrap: break-word; width: 340.294px; line-height: 20px !important;\">Brand</th><td class=\"a-size-base prodDetAttrValue\" style=\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(187, 191, 191); color: rgb(51, 51, 51); word-break: break-word; line-height: 20px !important;\">â€Žtypecase</td></tr><tr><th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(240, 242, 242); font-weight: 400; border-top: 1px solid rgb(187, 191, 191); overflow-wrap: break-word; width: 340.294px; line-height: 20px !important;\">Manufacturer</th><td class=\"a-size-base prodDetAttrValue\" style=\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(187, 191, 191); color: rgb(51, 51, 51); word-break: break-word; line-height: 20px !important;\">â€Žtypecase, support@typecase.in, 91-9999325592, www.typecase.co</td></tr><tr><th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(240, 242, 242); font-weight: 400; border-top: 1px solid rgb(187, 191, 191); overflow-wrap: break-word; width: 340.294px; line-height: 20px !important;\">Model Name</th><td class=\"a-size-base prodDetAttrValue\" style=\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(187, 191, 191); color: rgb(51, 51, 51); word-break: break-word; line-height: 20px !important;\">â€ŽEdge</td></tr><tr><th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(240, 242, 242); font-weight: 400; border-top: 1px solid rgb(187, 191, 191); overflow-wrap: break-word; width: 340.294px; line-height: 20px !important;\">Product Dimensions</th><td class=\"a-size-base prodDetAttrValue\" style=\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(187, 191, 191); color: rgb(51, 51, 51); word-break: break-word; line-height: 20px !important;\">â€Ž27 x 21 x 2 cm; 970 Grams</td></tr><tr><th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(240, 242, 242); font-weight: 400; border-top: 1px solid rgb(187, 191, 191); overflow-wrap: break-word; width: 340.294px; line-height: 20px !important;\">Batteries</th><td class=\"a-size-base prodDetAttrValue\" style=\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(187, 191, 191); color: rgb(51, 51, 51); word-break: break-word; line-height: 20px !important;\">â€Ž1 Lithium Ion batteries required. (included)</td></tr><tr><th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(240, 242, 242); font-weight: 400; border-top: 1px solid rgb(187, 191, 191); overflow-wrap: break-word; width: 340.294px; line-height: 20px !important;\">Operating System</th><td class=\"a-size-base prodDetAttrValue\" style=\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(187, 191, 191); color: rgb(51, 51, 51); word-break: break-word; line-height: 20px !important;\">â€ŽWindows 10</td></tr><tr><th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(240, 242, 242); font-weight: 400; border-top: 1px solid rgb(187, 191, 191); overflow-wrap: break-word; width: 340.294px; line-height: 20px !important;\">Hardware Interface</th><td class=\"a-size-base prodDetAttrValue\" style=\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(187, 191, 191); color: rgb(51, 51, 51); word-break: break-word; line-height: 20px !important;\">â€ŽUSB</td></tr><tr><th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(240, 242, 242); font-weight: 400; border-top: 1px solid rgb(187, 191, 191); overflow-wrap: break-word; width: 340.294px; line-height: 20px !important;\">Compatible Devices</th><td class=\"a-size-base prodDetAttrValue\" style=\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(187, 191, 191); color: rgb(51, 51, 51); word-break: break-word; line-height: 20px !important;\">â€ŽiPad Pro 12.9 Inch 6th Generation 2022, iPad Pro 12.9\" 5th Gen/4th/3rd Gen (2021,2020,2018)</td></tr><tr><th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(240, 242, 242); font-weight: 400; border-top: 1px solid rgb(187, 191, 191); overflow-wrap: break-word; width: 340.294px; line-height: 20px !important;\">Special Features</th><td class=\"a-size-base prodDetAttrValue\" style=\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(187, 191, 191); color: rgb(51, 51, 51); word-break: break-word; line-height: 20px !important;\">â€ŽAdvance Chipset with Bluetooth, Scissor switch keyboard Magnetic Smart Cover, Rechargeable, Auto sleep and wake function, Exclusive 10-Color Backlits, Soft Keys, 980 gram Wt, Smart touchpad, Magnetic detachable</td></tr><tr><th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(240, 242, 242); font-weight: 400; border-top: 1px solid rgb(187, 191, 191); overflow-wrap: break-word; width: 340.294px; line-height: 20px !important;\">Mounting Hardware</th><td class=\"a-size-base prodDetAttrValue\" style=\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(187, 191, 191); color: rgb(51, 51, 51); word-break: break-word; line-height: 20px !important;\">â€ŽKeyboard Case, USB Cable, Start Guide</td></tr><tr><th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(240, 242, 242); font-weight: 400; border-top: 1px solid rgb(187, 191, 191); overflow-wrap: break-word; width: 340.294px; line-height: 20px !important;\">Number of items</th><td class=\"a-size-base prodDetAttrValue\" style=\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(187, 191, 191); color: rgb(51, 51, 51); word-break: break-word; line-height: 20px !important;\">â€Ž1</td></tr><tr><th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(240, 242, 242); font-weight: 400; border-top: 1px solid rgb(187, 191, 191); overflow-wrap: break-word; width: 340.294px; line-height: 20px !important;\">Power Source</th><td class=\"a-size-base prodDetAttrValue\" style=\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(187, 191, 191); color: rgb(51, 51, 51); word-break: break-word; line-height: 20px !important;\">â€ŽBattery Powered</td></tr><tr><th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(240, 242, 242); font-weight: 400; border-top: 1px solid rgb(187, 191, 191); overflow-wrap: break-word; width: 340.294px; line-height: 20px !important;\">Batteries Included</th><td class=\"a-size-base prodDetAttrValue\" style=\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(187, 191, 191); color: rgb(51, 51, 51); word-break: break-word; line-height: 20px !important;\">â€ŽYes</td></tr><tr><th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(240, 242, 242); font-weight: 400; border-top: 1px solid rgb(187, 191, 191); overflow-wrap: break-word; width: 340.294px; line-height: 20px !important;\">Batteries Required</th><td class=\"a-size-base prodDetAttrValue\" style=\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(187, 191, 191); color: rgb(51, 51, 51); word-break: break-word; line-height: 20px !important;\">â€ŽYes</td></tr><tr><th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(240, 242, 242); font-weight: 400; border-top: 1px solid rgb(187, 191, 191); overflow-wrap: break-word; width: 340.294px; line-height: 20px !important;\">Battery cell composition</th><td class=\"a-size-base prodDetAttrValue\" style=\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(187, 191, 191); color: rgb(51, 51, 51); word-break: break-word; line-height: 20px !important;\">â€ŽLithium Polymer</td></tr><tr><th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(240, 242, 242); font-weight: 400; border-top: 1px solid rgb(187, 191, 191); overflow-wrap: break-word; width: 340.294px; line-height: 20px !important;\">Keyboard Description</th><td class=\"a-size-base prodDetAttrValue\" style=\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(187, 191, 191); color: rgb(51, 51, 51); word-break: break-word; line-height: 20px !important;\">â€ŽFlexible</td></tr><tr><th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(240, 242, 242); font-weight: 400; border-top: 1px solid rgb(187, 191, 191); overflow-wrap: break-word; width: 340.294px; line-height: 20px !important;\">Connector Type</th><td class=\"a-size-base prodDetAttrValue\" style=\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(187, 191, 191); color: rgb(51, 51, 51); word-break: break-word; line-height: 20px !important;\">â€ŽBluetooth</td></tr><tr><th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(240, 242, 242); font-weight: 400; border-top: 1px solid rgb(187, 191, 191); overflow-wrap: break-word; width: 340.294px; line-height: 20px !important;\">Hand Orientation</th><td class=\"a-size-base prodDetAttrValue\" style=\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(187, 191, 191); color: rgb(51, 51, 51); word-break: break-word; line-height: 20px !important;\">â€ŽAmbidextrous</td></tr><tr><th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(240, 242, 242); font-weight: 400; border-top: 1px solid rgb(187, 191, 191); overflow-wrap: break-word; width: 340.294px; line-height: 20px !important;\">Has an attached light</th><td class=\"a-size-base prodDetAttrValue\" style=\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(187, 191, 191); color: rgb(51, 51, 51); word-break: break-word; line-height: 20px !important;\">â€ŽYes</td></tr><tr><th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(240, 242, 242); font-weight: 400; border-top: 1px solid rgb(187, 191, 191); overflow-wrap: break-word; width: 340.294px; line-height: 20px !important;\">Manufacturer</th><td class=\"a-size-base prodDetAttrValue\" style=\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(187, 191, 191); color: rgb(51, 51, 51); word-break: break-word; line-height: 20px !important;\">â€Žtypecase</td></tr><tr><th class=\"a-color-secondary a-size-base prodDetSectionEntry\" style=\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(240, 242, 242); font-weight: 400; border-top: 1px solid rgb(187, 191, 191); overflow-wrap: break-word; width: 340.294px; line-height: 20px !important;\">Item Weight</th><td class=\"a-size-base prodDetAttrValue\" style=\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(187, 191, 191); color: rgb(51, 51, 51); word-break: break-word; line-height: 20px !important;\">â€Ž970 g</td></tr></tbody></table></div></div></div></div></div></div></div></div></div></div></li></ul></div></div>', '', '', 1, 1, 40, 24, NULL, 'typecase-edge-magic-keyboard-for-ipad-pro-129-6th-gen-20225th-2021--4th-2020--3rd-2018-gen-with-trackpad', NULL, '2023-10-30 11:54:45');
INSERT INTO `tbl_product` (`p_id`, `p_name`, `p_size`, `p_old_price`, `p_current_price`, `p_sku`, `p_vendor`, `p_delivery`, `p_qty`, `collection`, `color`, `variant`, `p_featured_photo`, `p_description`, `p_short_description`, `additional_info`, `p_is_featured`, `p_is_active`, `mid_id`, `top_id`, `ecat_id`, `slug`, `video`, `create_date`) VALUES
(17, 'typecase Flexbook Touch Keyboard case for iPad Air 5th & 4th Gen (2022,2020) & iPad Pro 11 (4th,3rd,2nd Gen), touchpad Keyboard case, Exclusive 10-Colors Backlit, 360Â° Rotable (Black)', '3', '10999', '5999', 'B0B66P3JW8', 'DP', '2-5', 5, '1', '1', NULL, NULL, '<div id=\"productOverview_feature_div\" class=\"celwidget\" data-feature-name=\"productOverview\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"productOverview\" data-csa-c-slot-id=\"productOverview_feature_div\" data-csa-c-asin=\"B0BCPT7R4G\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"7i9a8e-k0uk04-ifqcpp-123nxq\" data-cel-widget=\"productOverview_feature_div\" style=\"color: rgb(15, 17, 17); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px;\"><div class=\"a-section a-spacing-small a-spacing-top-small\" style=\"margin-bottom: 0px; margin-top: 8px !important;\"><table class=\"a-normal a-spacing-micro\" style=\"width: 440.047px; margin-bottom: 0px !important;\"><tbody><tr class=\"a-spacing-small po-brand\" style=\"margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding-right: 3px; padding-bottom: 3px; margin-right: 0px; width: 115.203px; float: none !important;\"><span class=\"a-size-base a-text-bold\" style=\"font-weight: 700 !important; line-height: 20px !important;\">Brand</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding-bottom: 3px; padding-left: 3px; margin-right: 0px; width: 324.844px; float: none !important;\"><span class=\"a-size-base po-break-word\" style=\"word-break: break-word; line-height: 20px !important;\">typecase</span></td></tr><tr class=\"a-spacing-small po-compatible_devices\" style=\"margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding-top: 3px; padding-right: 3px; padding-bottom: 3px; margin-right: 0px; width: 115.203px; float: none !important;\"><span class=\"a-size-base a-text-bold\" style=\"font-weight: 700 !important; line-height: 20px !important;\">Compatible Devices</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding-top: 3px; padding-bottom: 3px; padding-left: 3px; margin-right: 0px; width: 324.844px; float: none !important;\"><span class=\"a-size-base po-break-word\" style=\"word-break: break-word; line-height: 20px !important;\">iPad Pro 11 (4th,3rd,2nd Gen)- 2022 2021 2020, iPad Air 5th & 4th Generation (2022,2020)</span></td></tr><tr class=\"a-spacing-small po-connectivity_technology\" style=\"margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding-top: 3px; padding-right: 3px; padding-bottom: 3px; margin-right: 0px; width: 115.203px; float: none !important;\"><span class=\"a-size-base a-text-bold\" style=\"font-weight: 700 !important; line-height: 20px !important;\">Connectivity Technology</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding-top: 3px; padding-bottom: 3px; padding-left: 3px; margin-right: 0px; width: 324.844px; float: none !important;\"><span class=\"a-size-base po-break-word\" style=\"word-break: break-word; line-height: 20px !important;\">Bluetooth</span></td></tr><tr class=\"a-spacing-small po-keyboard_description\" style=\"margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding-top: 3px; padding-right: 3px; padding-bottom: 3px; margin-right: 0px; width: 115.203px; float: none !important;\"><span class=\"a-size-base a-text-bold\" style=\"font-weight: 700 !important; line-height: 20px !important;\">Keyboard Description</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding-top: 3px; padding-bottom: 3px; padding-left: 3px; margin-right: 0px; width: 324.844px; float: none !important;\"><span class=\"a-size-base po-break-word\" style=\"word-break: break-word; line-height: 20px !important;\">Flexible</span></td></tr><tr class=\"a-spacing-small po-special_feature\" style=\"margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding-top: 3px; padding-right: 3px; margin-right: 0px; width: 115.203px; float: none !important;\"><span class=\"a-size-base a-text-bold\" style=\"font-weight: 700 !important; line-height: 20px !important;\">Special Feature</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding-top: 3px; padding-left: 3px; margin-right: 0px; width: 324.844px; float: none !important;\"><span class=\"a-size-base\" style=\"line-height: 20px !important;\"><span class=\"a-truncate po-truncate-attribute\" data-a-word-break=\"normal\" data-a-truncate-name=\"po-attribute-truncate-4\" data-a-max-rows=\"3\" data-a-overflow-marker=\"â€¦\" data-a-recalculate=\"false\" data-a-updated=\"true\" style=\"display: inline-block; position: relative; width: 321.844px; overflow: hidden; word-break: normal; max-height: 3.9em; line-height: 1.3em !important;\"><span class=\"a-truncate-full a-offscreen\" style=\"display: inline-block; width: 321.844px; opacity: 0; position: absolute !important; left: 0px !important; bottom: -1px !important; z-index: -1 !important;\">Advance Chipset with Bluetooth, Scissor switch, Rechargeable, Smart touchpad, Gesture control, Power Saver- Auto Wake & Sleep, Exclusive 10 360 Degree(Horizontal-Vertical ) RotationColor Backlit( Only in typecase Keyboard)</span><span class=\"a-truncate-cut\" aria-hidden=\"true\" style=\"display: inline-block; width: 321.844px; word-break: break-word; height: 3.9em;\">Advance Chipset with Bluetooth, Scissor switch, Rechargeable, Smart touchpad, Gesture control, Power Saver- Auto Wake & Sleep, Exclusive 10 3â€¦</span></span>Â </span><span class=\"a-declarative\" data-action=\"a-modal\" data-csa-c-type=\"widget\" data-csa-c-func-deps=\"aui-da-a-modal\" data-a-modal=\"{\"max-height\":\"400\",\"width\":\"800\",\"header\":\"Special Feature\",\"inlineContent\":\"Advance Chipset with Bluetooth, Scissor switch, Rechargeable, Smart touchpad, Gesture control, Power Saver- Auto Wake & Sleep, Exclusive 10 360 Degree(Horizontal-Vertical ) RotationColor Backlit( Only in typecase Keyboard)\"}\" id=\"po-attribute-see-more-id-4\" data-csa-c-id=\"h63u58-dcl6yt-et520h-8e7ebb\"><a role=\"button\" class=\"a-popover-trigger a-declarative\" style=\"color: rgb(0, 113, 133);\">See more<i class=\"a-icon a-icon-popover\" style=\"background-image: url(\"https://m.media-amazon.com/images/S/sash/McBZv0ZvnbehkIx.png\"); background-size: 400px 900px; background-repeat: no-repeat; display: inline-block; vertical-align: text-top; margin: 5px 0px 0px 0.385em; width: 7px; height: 5px; background-position: -90px -5px; opacity: 0.6;\"></i></a></span></td></tr></tbody></table></div></div><div id=\"featurebullets_feature_div\" class=\"celwidget\" data-feature-name=\"featurebullets\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"featurebullets\" data-csa-c-slot-id=\"featurebullets_feature_div\" data-csa-c-asin=\"B0BCPT7R4G\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"v8zb8f-5wxarw-y5o5oj-ymz6xo\" data-cel-widget=\"featurebullets_feature_div\" style=\"color: rgb(15, 17, 17); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px;\"><div id=\"feature-bullets\" class=\"a-section a-spacing-medium a-spacing-top-small\" style=\"margin-bottom: 0px; margin-top: 8px !important;\"><hr style=\"box-sizing: border-box; background-color: transparent; border-top-color: rgb(187, 191, 191); height: 1px; line-height: 19px; margin-bottom: 14px; margin-top: 0px;\"><h1 class=\"a-size-base-plus a-text-bold\" style=\"padding: 0px 0px 4px; margin-top: 0px; margin-bottom: 0px; text-rendering: optimizelegibility; font-weight: 700 !important; font-size: 16px !important; line-height: 24px !important;\">About this item</h1><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; padding: 0px;\"><li class=\"a-spacing-mini\" style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Compatibility - This touchpad keyboard case is perfectly compatible with new 2022 iPad Pro 11 4th Gen (A2759, A2435, A2761, A2762), 3rd Gen 2021 (A2301, A2456, A2460), 2nd Gen 2020 model (A2228, A2068, A2230, A2231), 1st Gen 2018 (A1980, A2013, A1934, A1979) & 2022 10.9-inch Air 5th Generation (A2589 A2591), 2020 Air 4th Generation (A2072, A2316, A2324, A2325). Please check the model number start with A**** on the iPad â€œSettingsâ€ before purchase. iPad or Apple Pencil NOT INCLUDED.</span></li><li class=\"a-spacing-mini\" style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Precision Trackpad - The iPad Pro 11 inch keyboard case has a unique design with high precision Trackpad, navigate your iPad Pro 11\" 3rd generation in a whole new way with your fingers. Edit documents, browse the web, and build presentations with unparalleled speed, bringing you the convenience of high productivity.</span></li><li class=\"a-spacing-mini\" style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">10-Color RGB Backlit Keys - Premium laptop-like keyboard case for iPad Pro 11 3rd gen, designed for maximizing typing experience, type on 10-color RGB laser-etched keys. The iPad Pro 11\" case with keyboard comes with 3 brightness levels to adjust as you expected and equip with a full row of PadOS shortcuts.</span></li><li class=\"a-spacing-mini\" style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">7 Use Modes - Dual-axis rotatable 360Â° Hinge (20,000 cycles stress tested) of the iPad Pro 11 case 3rd generation with keyboard provides infinite viewing angle, you could use your iPad Pro 11 3rd gen in 7 different modes. Show your presentations, edit documents, transform use modes at an unparalleled speed.</span></li><li class=\"a-spacing-mini\" style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Smart Features - Rugged hard - shell - the iPad Pro 11 case 3rd generation with keyboard designed for protecting your iPad on both front and the back sides, preventing being scratched from accidental dropping and bumps. Auto sleep/wake when you open or close your iPad, conserving your iPad battery life; holder for Apple Pencil so it won\'t get lost or in the way.</span></li></ul></div></div><table class=\"a-normal a-spacing-micro\" style=\"width: 440.044px; color: rgb(15, 17, 17); font-family: \" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" margin-bottom:=\"\" 0px=\"\" !important;\"=\"\"><tbody><tr class=\"a-spacing-small po-recommended_uses_for_product\" style=\"margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding-top: 3px; padding-right: 3px; margin-right: 0px; width: 115.2px; float: none !important;\"></td><td class=\"a-span9\" style=\"vertical-align: top; padding-top: 3px; padding-left: 3px; margin-right: 0px; width: 324.844px; float: none !important;\"><p><span class=\"a-size-base po-break-word\" style=\"word-break: break-word; line-height: 20px !important;\">Home & office use</span></p><p><span class=\"a-size-base po-break-word\" style=\"word-break: break-word; line-height: 20px !important;\"><br></span></p><p><span class=\"a-size-base po-break-word\" style=\"word-break: break-word; line-height: 20px !important;\"><br></span></p><div id=\"postPurchaseWhatsInTheBox_MP_feature_div\" class=\"celwidget\" data-feature-name=\"postPurchaseWhatsInTheBox_MP\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"postPurchaseWhatsInTheBox_MP\" data-csa-c-slot-id=\"postPurchaseWhatsInTheBox_MP_feature_div\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"ar0gak-tm5ull-bhjeif-vca0m1\" data-cel-widget=\"postPurchaseWhatsInTheBox_MP_feature_div\" style=\"font-family: \" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><div id=\"whatsInTheBoxDeck\" class=\"a-section a-spacing-base celwidget\" data-csa-c-id=\"prchrp-5yea2a-yvoiuf-yau9m0\" data-cel-widget=\"whatsInTheBoxDeck\" style=\"margin-bottom: 0px;\"><h2 style=\"padding: 0px 0px 4px; margin: 0px; text-rendering: optimizelegibility; font-weight: 700; font-size: 24px; line-height: 32px;\">What is in the box?</h2><dl id=\"witb-content-list\" class=\"a-definition-list a-vertical a-spacing-none postpurchase-included-components-list-group\" style=\"padding: 0px; margin-right: 0px; margin-left: 18px; margin-bottom: 0px !important;\"><li class=\"postpurchase-included-components-list-item\" style=\"text-align: left; overflow-wrap: break-word;\"><span class=\"a-list-item\">Keyboard Case & USB Cable</span></li></dl></div></div><div id=\"legal_feature_div\" class=\"celwidget\" data-feature-name=\"legal\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"legal\" data-csa-c-slot-id=\"legal_feature_div\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"lrivzi-r8ar0w-ctpzpg-e0bxmk\" data-cel-widget=\"legal_feature_div\" style=\"font-family: \" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"></div><div id=\"buffetServiceCard_feature_div\" class=\"celwidget\" data-feature-name=\"buffetServiceCard\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"buffetServiceCard\" data-csa-c-slot-id=\"buffetServiceCard_feature_div\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"yvexgp-aewmod-n02m0a-ltldv7\" data-cel-widget=\"buffetServiceCard_feature_div\" style=\"font-family: \" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><div class=\"celwidget c-f\" cel_widget_id=\"buffet-disclaimers-card_DetailPage_0\" data-csa-op-log-render=\"\" data-csa-c-content-id=\"DsUnknown\" data-csa-c-slot-id=\"DsUnknown-1\" data-csa-c-type=\"widget\" data-csa-c-painter=\"buffet-disclaimers-card-cards\" data-csa-c-id=\"5e6nt-2v8688-ei6lxa-cs5qzj\" data-cel-widget=\"buffet-disclaimers-card_DetailPage_0\"><div id=\"CardInstancesiiYPq4sxjP5PCRoZqRJOQ\" data-card-metrics-id=\"buffet-disclaimers-card_DetailPage_0\"></div></div></div><p><span class=\"a-size-base po-break-word\" style=\"word-break: break-word; line-height: 20px !important;\"></span></p><div id=\"btf_arenas\" class=\"celwidget\" data-feature-name=\"btf_arenas\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"btf_arenas\" data-csa-c-slot-id=\"btf_arenas\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"67slpl-2m0527-3k1usn-5mds63\" data-cel-widget=\"btf_arenas\" style=\"font-family: \" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><div id=\"renewedProgramDescriptionBtf_feature_div\" class=\"celwidget pd_rd_w-krpfa pd_rd_r-8YCM6CAWQ4EB5EYD0PVK pd_rd_wg-UJacp\" data-feature-name=\"renewedProgramDescriptionBtf\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"renewedProgramDescriptionBtf\" data-csa-c-slot-id=\"renewedProgramDescriptionBtf_feature_div\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"5uhst6-uw4vz1-rn5wp7-txcy7l\" data-cel-widget=\"renewedProgramDescriptionBtf_feature_div\"></div><div id=\"ask-dp-search_feature_div\" class=\"celwidget pd_rd_w-JTKJt pd_rd_r-8YCM6CAWQ4EB5EYD0PVK pd_rd_wg-UJacp\" data-feature-name=\"ask-dp-search\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"ask-dp-search\" data-csa-c-slot-id=\"ask-dp-search_feature_div\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"er8870-mbxxpe-k5aco4-58tt03\" data-cel-widget=\"ask-dp-search_feature_div\"><div id=\"ask-dp-search_feature_div\"><div id=\"ask-dp-search_feature_div\"><a style=\"color: rgb(0, 113, 133);\"></a></div></div></div><div id=\"HLCXComparisonWidget_feature_div\" class=\"celwidget pd_rd_w-WFybo pd_rd_r-8YCM6CAWQ4EB5EYD0PVK pd_rd_wg-UJacp\" data-feature-name=\"HLCXComparisonWidget_after_ask-dp-search\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"HLCXComparisonWidget_after_ask-dp-search\" data-csa-c-slot-id=\"HLCXComparisonWidget_feature_div\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"cm6ay5-xrx3ez-38spmo-y9gzce\" data-cel-widget=\"HLCXComparisonWidget_feature_div\"></div><div id=\"aplusBrandStory_feature_div\" class=\"celwidget pd_rd_w-ORTqp pd_rd_r-8YCM6CAWQ4EB5EYD0PVK pd_rd_wg-UJacp\" data-feature-name=\"aplusBrandStory\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"aplusBrandStory\" data-csa-c-slot-id=\"aplusBrandStory_feature_div\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"96mjz9-czsd7v-4l5pd-70jqsx\" data-cel-widget=\"aplusBrandStory_feature_div\"></div><div id=\"aplus_feature_div\" class=\"celwidget pd_rd_w-dZv51 pd_rd_r-8YCM6CAWQ4EB5EYD0PVK pd_rd_wg-UJacp\" data-feature-name=\"aplus\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"aplus\" data-csa-c-slot-id=\"aplus_feature_div\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"7u0hsb-ehm7hg-95o5qp-kpe24g\" data-cel-widget=\"aplus_feature_div\"><div id=\"aplus\" class=\"a-section a-spacing-large bucket\" style=\"margin-bottom: 0px;\"><hr noshade=\"true\" size=\"1\" class=\"bucketDivider\" style=\"box-sizing: border-box; line-height: 19px; margin-top: 0px; filter: none; z-index: 0; zoom: 1; clear: left; background: 0px 0px !important; border-top-color: rgb(204, 204, 204) !important; height: 44px !important; margin-bottom: -36px !important;\"><h2 style=\"padding: 0px 0px 4px; margin: 0px; text-rendering: optimizelegibility; font-weight: 700; line-height: 32px; font-size: 21px !important; color: rgb(51, 51, 51) !important;\">From the manufacturer</h2><div class=\"aplus-v2 desktop celwidget\" cel_widget_id=\"aplus\" data-csa-c-id=\"xn98h3-p95kq7-fkda2c-2xq9n\" data-cel-widget=\"aplus\" style=\"margin-left: auto; margin-right: auto; overflow-wrap: break-word; word-break: break-word;\"><div class=\"celwidget aplus-module 3p-module-b aplus-standard\" cel_widget_id=\"aplus-3p-module-b\" data-csa-c-id=\"j7t98n-wcixk4-3shi7u-yooikp\" data-cel-widget=\"aplus-3p-module-b\" style=\"min-width: 979px;\"><div class=\"aplus-module-wrapper aplus-3p-fixed-width\" style=\"width: 970px; margin-left: auto; margin-right: auto; text-align: inherit;\"><img alt=\".\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/69a38bfb-eb53-4d84-a2e8-62871e158694.__CR0,0,970,600_PT0_SX970_V1___.jpg\" class=\"a-spacing-base\" data-src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/69a38bfb-eb53-4d84-a2e8-62871e158694.__CR0,0,970,600_PT0_SX970_V1___.jpg\" style=\"max-width: 100%; vertical-align: top; margin-bottom: 14px !important;\"><p class=\"a-spacing-base\" style=\"padding: 0px; margin-bottom: 14px !important;\">typecase Touch iPad Pro 11 inch Case with Keyboard (11\", 2021) - Multi-Touch Trackpad & 10 Colors Backlight & 360Â° Rotatable - Thin & Light for iPad Pro 11 & iPad Air 5th & 4th Gen & Pencil - Black</p></div></div><div class=\"celwidget aplus-module 3p-module-b aplus-standard\" cel_widget_id=\"aplus-3p-module-b\" data-csa-c-id=\"hhja1t-edwbtv-v197wb-hv6w92\" data-cel-widget=\"aplus-3p-module-b\" style=\"min-width: 979px;\"><div class=\"aplus-module-wrapper aplus-3p-fixed-width\" style=\"width: 970px; margin-left: auto; margin-right: auto; text-align: inherit;\"><img alt=\".\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/2637c1c5-681a-4b48-8b4f-5c17c6084dea.__CR0,0,970,600_PT0_SX970_V1___.jpg\" class=\"a-spacing-base\" data-src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/2637c1c5-681a-4b48-8b4f-5c17c6084dea.__CR0,0,970,600_PT0_SX970_V1___.jpg\" style=\"max-width: 100%; vertical-align: top; margin-bottom: 14px !important;\"></div></div><div class=\"celwidget aplus-module 3p-module-b aplus-standard\" cel_widget_id=\"aplus-3p-module-b\" data-csa-c-id=\"iiudd2-ywy4g0-ihhq12-mh2882\" data-cel-widget=\"aplus-3p-module-b\" style=\"min-width: 979px;\"><div class=\"aplus-module-wrapper aplus-3p-fixed-width\" style=\"width: 970px; margin-left: auto; margin-right: auto; text-align: inherit;\"><img alt=\".\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/452fcceb-bb7b-4eb8-a974-485f313847b1.__CR0,0,970,600_PT0_SX970_V1___.jpg\" class=\"a-spacing-base\" data-src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/452fcceb-bb7b-4eb8-a974-485f313847b1.__CR0,0,970,600_PT0_SX970_V1___.jpg\" style=\"max-width: 100%; vertical-align: top; margin-bottom: 14px !important;\"></div></div><div class=\"celwidget aplus-module 3p-module-b aplus-standard\" cel_widget_id=\"aplus-3p-module-b\" data-csa-c-id=\"vrurb5-mmpu6v-n02605-upyo0z\" data-cel-widget=\"aplus-3p-module-b\" style=\"min-width: 979px;\"><div class=\"aplus-module-wrapper aplus-3p-fixed-width\" style=\"width: 970px; margin-left: auto; margin-right: auto; text-align: inherit;\"><img alt=\".\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/fd1f5fee-2b66-46d3-a4c3-6ba6fe72d648.__CR0,0,970,600_PT0_SX970_V1___.jpg\" class=\"a-spacing-base\" data-src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/fd1f5fee-2b66-46d3-a4c3-6ba6fe72d648.__CR0,0,970,600_PT0_SX970_V1___.jpg\" style=\"max-width: 100%; vertical-align: top; margin-bottom: 14px !important;\"></div></div></div></div></div></div></td></tr></tbody></table>', '', '<h2 style=\"padding: 0px 0px 4px; margin: 0px; text-rendering: optimizelegibility; font-weight: 700; line-height: 32px; font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 21px !important; color: rgb(51, 51, 51) !important;\">From the manufacturer</h2><div class=\"aplus-v2 desktop celwidget\" cel_widget_id=\"aplus\" data-csa-c-id=\"yv6ajx-fupmbd-4u0wno-xwqd7e\" style=\"margin-left: auto; margin-right: auto; overflow-wrap: break-word; word-break: break-word; color: rgb(15, 17, 17); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px;\"><div class=\"celwidget aplus-module 3p-module-b aplus-standard\" cel_widget_id=\"aplus-3p-module-b\" data-csa-c-id=\"gb98ys-wugzh0-rr0hdl-sxccyw\" style=\"min-width: 979px;\"><div class=\"aplus-module-wrapper aplus-3p-fixed-width\" style=\"width: 970px; margin-left: auto; margin-right: auto; text-align: inherit;\"><img alt=\".\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/69a38bfb-eb53-4d84-a2e8-62871e158694.__CR0,0,970,600_PT0_SX970_V1___.jpg\" class=\"a-spacing-base\" data-src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/69a38bfb-eb53-4d84-a2e8-62871e158694.__CR0,0,970,600_PT0_SX970_V1___.jpg\" style=\"max-width: 100%; vertical-align: top; margin-bottom: 14px !important;\"><p class=\"a-spacing-base\" style=\"padding: 0px; margin-bottom: 14px !important;\">typecase Touch iPad Pro 11 inch Case with Keyboard (11\", 2021) - Multi-Touch Trackpad & 10 Colors Backlight & 360Â° Rotatable - Thin & Light for iPad Pro 11 & iPad Air 5th & 4th Gen & Pencil - Black</p></div></div><div class=\"celwidget aplus-module 3p-module-b aplus-standard\" cel_widget_id=\"aplus-3p-module-b\" data-csa-c-id=\"el82vi-z305oa-20u4kd-l12kkb\" style=\"min-width: 979px;\"><div class=\"aplus-module-wrapper aplus-3p-fixed-width\" style=\"width: 970px; margin-left: auto; margin-right: auto; text-align: inherit;\"><img alt=\".\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/2637c1c5-681a-4b48-8b4f-5c17c6084dea.__CR0,0,970,600_PT0_SX970_V1___.jpg\" class=\"a-spacing-base\" data-src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/2637c1c5-681a-4b48-8b4f-5c17c6084dea.__CR0,0,970,600_PT0_SX970_V1___.jpg\" style=\"max-width: 100%; vertical-align: top; margin-bottom: 14px !important;\"></div></div><div class=\"celwidget aplus-module 3p-module-b aplus-standard\" cel_widget_id=\"aplus-3p-module-b\" data-csa-c-id=\"9ddi2-3nvi4u-jemd8w-j9qw2u\" style=\"min-width: 979px;\"><div class=\"aplus-module-wrapper aplus-3p-fixed-width\" style=\"width: 970px; margin-left: auto; margin-right: auto; text-align: inherit;\"><img alt=\".\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/452fcceb-bb7b-4eb8-a974-485f313847b1.__CR0,0,970,600_PT0_SX970_V1___.jpg\" class=\"a-spacing-base\" data-src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/452fcceb-bb7b-4eb8-a974-485f313847b1.__CR0,0,970,600_PT0_SX970_V1___.jpg\" style=\"max-width: 100%; vertical-align: top; margin-bottom: 14px !important;\"></div></div><div class=\"celwidget aplus-module 3p-module-b aplus-standard\" cel_widget_id=\"aplus-3p-module-b\" data-csa-c-id=\"xnow0b-i50ao6-9djqvi-lbjae2\" style=\"min-width: 979px;\"><div class=\"aplus-module-wrapper aplus-3p-fixed-width\" style=\"width: 970px; margin-left: auto; margin-right: auto; text-align: inherit;\"><img alt=\".\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/fd1f5fee-2b66-46d3-a4c3-6ba6fe72d648.__CR0,0,970,600_PT0_SX970_V1___.jpg\" class=\"a-spacing-base\" data-src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/fd1f5fee-2b66-46d3-a4c3-6ba6fe72d648.__CR0,0,970,600_PT0_SX970_V1___.jpg\" style=\"max-width: 100%; vertical-align: top; margin-bottom: 14px !important;\"></div></div></div>', 1, 1, 39, 24, 0, 'typecase-flexbook-touch-keyboard-case-for-ipad-air-5th--4th-gen-20222020--ipad-pro-11-4th3rd2nd-gen-touchpad-keyboard-case-exclusive-10-colors-backlit-360-rotable', NULL, '2023-11-02 12:25:23');
INSERT INTO `tbl_product` (`p_id`, `p_name`, `p_size`, `p_old_price`, `p_current_price`, `p_sku`, `p_vendor`, `p_delivery`, `p_qty`, `collection`, `color`, `variant`, `p_featured_photo`, `p_description`, `p_short_description`, `additional_info`, `p_is_featured`, `p_is_active`, `mid_id`, `top_id`, `ecat_id`, `slug`, `video`, `create_date`) VALUES
(23, 'typecase Flexbook Touch Keyboard case for iPad Air 5th & 4th Gen (2022,2020) & iPad Pro 11 (4th,3rd,2nd Gen), touchpad Keyboard case, Exclusive 10-Colors Backlit, 360Â° Rotable (Pacific Blue)', '3', '10999', '5999', 'B0BCQMDZ3L', 'DP', '2-5', 1, '1', '8', 17, NULL, '<div id=\"productOverview_feature_div\" class=\"celwidget\" data-feature-name=\"productOverview\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"productOverview\" data-csa-c-slot-id=\"productOverview_feature_div\" data-csa-c-asin=\"B0BCPT7R4G\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"7i9a8e-k0uk04-ifqcpp-123nxq\" data-cel-widget=\"productOverview_feature_div\" style=\"color: rgb(15, 17, 17); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px;\"><div class=\"a-section a-spacing-small a-spacing-top-small\" style=\"margin-bottom: 0px; margin-top: 8px !important;\"><table class=\"a-normal a-spacing-micro\" style=\"width: 440.047px; margin-bottom: 0px !important;\"><tbody><tr class=\"a-spacing-small po-brand\" style=\"margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding-right: 3px; padding-bottom: 3px; margin-right: 0px; width: 115.203px; float: none !important;\"><span class=\"a-size-base a-text-bold\" style=\"font-weight: 700 !important; line-height: 20px !important;\">Brand</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding-bottom: 3px; padding-left: 3px; margin-right: 0px; width: 324.844px; float: none !important;\"><span class=\"a-size-base po-break-word\" style=\"word-break: break-word; line-height: 20px !important;\">typecase</span></td></tr><tr class=\"a-spacing-small po-compatible_devices\" style=\"margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding-top: 3px; padding-right: 3px; padding-bottom: 3px; margin-right: 0px; width: 115.203px; float: none !important;\"><span class=\"a-size-base a-text-bold\" style=\"font-weight: 700 !important; line-height: 20px !important;\">Compatible Devices</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding-top: 3px; padding-bottom: 3px; padding-left: 3px; margin-right: 0px; width: 324.844px; float: none !important;\"><span class=\"a-size-base po-break-word\" style=\"word-break: break-word; line-height: 20px !important;\">iPad Pro 11 (4th,3rd,2nd Gen)- 2022 2021 2020, iPad Air 5th & 4th Generation (2022,2020)</span></td></tr><tr class=\"a-spacing-small po-connectivity_technology\" style=\"margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding-top: 3px; padding-right: 3px; padding-bottom: 3px; margin-right: 0px; width: 115.203px; float: none !important;\"><span class=\"a-size-base a-text-bold\" style=\"font-weight: 700 !important; line-height: 20px !important;\">Connectivity Technology</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding-top: 3px; padding-bottom: 3px; padding-left: 3px; margin-right: 0px; width: 324.844px; float: none !important;\"><span class=\"a-size-base po-break-word\" style=\"word-break: break-word; line-height: 20px !important;\">Bluetooth</span></td></tr><tr class=\"a-spacing-small po-keyboard_description\" style=\"margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding-top: 3px; padding-right: 3px; padding-bottom: 3px; margin-right: 0px; width: 115.203px; float: none !important;\"><span class=\"a-size-base a-text-bold\" style=\"font-weight: 700 !important; line-height: 20px !important;\">Keyboard Description</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding-top: 3px; padding-bottom: 3px; padding-left: 3px; margin-right: 0px; width: 324.844px; float: none !important;\"><span class=\"a-size-base po-break-word\" style=\"word-break: break-word; line-height: 20px !important;\">Flexible</span></td></tr><tr class=\"a-spacing-small po-special_feature\" style=\"margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding-top: 3px; padding-right: 3px; margin-right: 0px; width: 115.203px; float: none !important;\"><span class=\"a-size-base a-text-bold\" style=\"font-weight: 700 !important; line-height: 20px !important;\">Special Feature</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding-top: 3px; padding-left: 3px; margin-right: 0px; width: 324.844px; float: none !important;\"><span class=\"a-size-base\" style=\"line-height: 20px !important;\"><span class=\"a-truncate po-truncate-attribute\" data-a-word-break=\"normal\" data-a-truncate-name=\"po-attribute-truncate-4\" data-a-max-rows=\"3\" data-a-overflow-marker=\"&hellip;\" data-a-recalculate=\"false\" data-a-updated=\"true\" style=\"display: inline-block; position: relative; width: 321.844px; overflow: hidden; word-break: normal; max-height: 3.9em; line-height: 1.3em !important;\"><span class=\"a-truncate-full a-offscreen\" style=\"display: inline-block; width: 321.844px; opacity: 0; position: absolute !important; left: 0px !important; bottom: -1px !important; z-index: -1 !important;\">Advance Chipset with Bluetooth, Scissor switch, Rechargeable, Smart touchpad, Gesture control, Power Saver- Auto Wake & Sleep, Exclusive 10 360 Degree(Horizontal-Vertical ) RotationColor Backlit( Only in typecase Keyboard)</span><span class=\"a-truncate-cut\" aria-hidden=\"true\" style=\"display: inline-block; width: 321.844px; word-break: break-word; height: 3.9em;\">Advance Chipset with Bluetooth, Scissor switch, Rechargeable, Smart touchpad, Gesture control, Power Saver- Auto Wake & Sleep, Exclusive 10 3â€¦</span></span>Â </span><span class=\"a-declarative\" data-action=\"a-modal\" data-csa-c-type=\"widget\" data-csa-c-func-deps=\"aui-da-a-modal\" data-a-modal=\"{\"max-height\":\"400\",\"width\":\"800\",\"header\":\"Special Feature\",\"inlineContent\":\"Advance Chipset with Bluetooth, Scissor switch, Rechargeable, Smart touchpad, Gesture control, Power Saver- Auto Wake &amp; Sleep, Exclusive 10 360 Degree(Horizontal-Vertical ) RotationColor Backlit( Only in typecase Keyboard)\"}\" id=\"po-attribute-see-more-id-4\" data-csa-c-id=\"h63u58-dcl6yt-et520h-8e7ebb\"><a role=\"button\" class=\"a-popover-trigger a-declarative\" style=\"color: rgb(0, 113, 133);\">See more<i class=\"a-icon a-icon-popover\" style=\"background-image: url(\"https://m.media-amazon.com/images/S/sash/McBZv0ZvnbehkIx.png\"); background-size: 400px 900px; background-repeat: no-repeat; display: inline-block; vertical-align: text-top; margin: 5px 0px 0px 0.385em; width: 7px; height: 5px; background-position: -90px -5px; opacity: 0.6;\"></i></a></span></td></tr></tbody></table></div></div><div id=\"featurebullets_feature_div\" class=\"celwidget\" data-feature-name=\"featurebullets\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"featurebullets\" data-csa-c-slot-id=\"featurebullets_feature_div\" data-csa-c-asin=\"B0BCPT7R4G\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"v8zb8f-5wxarw-y5o5oj-ymz6xo\" data-cel-widget=\"featurebullets_feature_div\" style=\"color: rgb(15, 17, 17); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px;\"><div id=\"feature-bullets\" class=\"a-section a-spacing-medium a-spacing-top-small\" style=\"margin-bottom: 0px; margin-top: 8px !important;\"><hr style=\"box-sizing: border-box; background-color: transparent; border-top-color: rgb(187, 191, 191); height: 1px; line-height: 19px; margin-bottom: 14px; margin-top: 0px;\"><h1 class=\"a-size-base-plus a-text-bold\" style=\"padding: 0px 0px 4px; margin-top: 0px; margin-bottom: 0px; text-rendering: optimizelegibility; font-weight: 700 !important; font-size: 16px !important; line-height: 24px !important;\">About this item</h1><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; padding: 0px;\"><li class=\"a-spacing-mini\" style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Compatibility - This touchpad keyboard case is perfectly compatible with new 2022 iPad Pro 11 4th Gen (A2759, A2435, A2761, A2762), 3rd Gen 2021 (A2301, A2456, A2460), 2nd Gen 2020 model (A2228, A2068, A2230, A2231), 1st Gen 2018 (A1980, A2013, A1934, A1979) & 2022 10.9-inch Air 5th Generation (A2589 A2591), 2020 Air 4th Generation (A2072, A2316, A2324, A2325). Please check the model number start with A**** on the iPad â€œSettingsâ€ before purchase. iPad or Apple Pencil NOT INCLUDED.</span></li><li class=\"a-spacing-mini\" style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Precision Trackpad - The iPad Pro 11 inch keyboard case has a unique design with high precision Trackpad, navigate your iPad Pro 11\" 3rd generation in a whole new way with your fingers. Edit documents, browse the web, and build presentations with unparalleled speed, bringing you the convenience of high productivity.</span></li><li class=\"a-spacing-mini\" style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">10-Color RGB Backlit Keys - Premium laptop-like keyboard case for iPad Pro 11 3rd gen, designed for maximizing typing experience, type on 10-color RGB laser-etched keys. The iPad Pro 11\" case with keyboard comes with 3 brightness levels to adjust as you expected and equip with a full row of PadOS shortcuts.</span></li><li class=\"a-spacing-mini\" style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">7 Use Modes - Dual-axis rotatable 360Â° Hinge (20,000 cycles stress tested) of the iPad Pro 11 case 3rd generation with keyboard provides infinite viewing angle, you could use your iPad Pro 11 3rd gen in 7 different modes. Show your presentations, edit documents, transform use modes at an unparalleled speed.</span></li><li class=\"a-spacing-mini\" style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Smart Features - Rugged hard - shell - the iPad Pro 11 case 3rd generation with keyboard designed for protecting your iPad on both front and the back sides, preventing being scratched from accidental dropping and bumps. Auto sleep/wake when you open or close your iPad, conserving your iPad battery life; holder for Apple Pencil so it won\'t get lost or in the way.</span><div id=\"postPurchaseWhatsInTheBox_MP_feature_div\" class=\"celwidget\" data-feature-name=\"postPurchaseWhatsInTheBox_MP\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"postPurchaseWhatsInTheBox_MP\" data-csa-c-slot-id=\"postPurchaseWhatsInTheBox_MP_feature_div\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"ar0gak-tm5ull-bhjeif-vca0m1\" data-cel-widget=\"postPurchaseWhatsInTheBox_MP_feature_div\"><div id=\"whatsInTheBoxDeck\" class=\"a-section a-spacing-base celwidget\" data-csa-c-id=\"prchrp-5yea2a-yvoiuf-yau9m0\" data-cel-widget=\"whatsInTheBoxDeck\" style=\"margin-bottom: 0px;\"><h2 style=\"padding: 0px 0px 4px; margin: 0px; text-rendering: optimizelegibility; font-weight: 700; font-size: 24px; line-height: 32px;\">What is in the box?</h2><dl id=\"witb-content-list\" class=\"a-definition-list a-vertical a-spacing-none postpurchase-included-components-list-group\" style=\"padding: 0px; margin-right: 0px; margin-left: 18px; margin-bottom: 0px !important;\"><li class=\"postpurchase-included-components-list-item\" style=\"text-align: left; overflow-wrap: break-word;\"><span class=\"a-list-item\">Keyboard Case & USB Cable</span></li></dl></div></div><div id=\"legal_feature_div\" class=\"celwidget\" data-feature-name=\"legal\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"legal\" data-csa-c-slot-id=\"legal_feature_div\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"lrivzi-r8ar0w-ctpzpg-e0bxmk\" data-cel-widget=\"legal_feature_div\"></div><div id=\"buffetServiceCard_feature_div\" class=\"celwidget\" data-feature-name=\"buffetServiceCard\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"buffetServiceCard\" data-csa-c-slot-id=\"buffetServiceCard_feature_div\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"yvexgp-aewmod-n02m0a-ltldv7\" data-cel-widget=\"buffetServiceCard_feature_div\"><div class=\"celwidget c-f\" cel_widget_id=\"buffet-disclaimers-card_DetailPage_0\" data-csa-op-log-render=\"\" data-csa-c-content-id=\"DsUnknown\" data-csa-c-slot-id=\"DsUnknown-1\" data-csa-c-type=\"widget\" data-csa-c-painter=\"buffet-disclaimers-card-cards\" data-csa-c-id=\"5e6nt-2v8688-ei6lxa-cs5qzj\" data-cel-widget=\"buffet-disclaimers-card_DetailPage_0\"><div id=\"CardInstancesiiYPq4sxjP5PCRoZqRJOQ\" data-card-metrics-id=\"buffet-disclaimers-card_DetailPage_0\"></div></div></div><div id=\"btf_arenas\" class=\"celwidget\" data-feature-name=\"btf_arenas\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"btf_arenas\" data-csa-c-slot-id=\"btf_arenas\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"67slpl-2m0527-3k1usn-5mds63\" data-cel-widget=\"btf_arenas\"><div id=\"renewedProgramDescriptionBtf_feature_div\" class=\"celwidget pd_rd_w-krpfa pd_rd_r-8YCM6CAWQ4EB5EYD0PVK pd_rd_wg-UJacp\" data-feature-name=\"renewedProgramDescriptionBtf\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"renewedProgramDescriptionBtf\" data-csa-c-slot-id=\"renewedProgramDescriptionBtf_feature_div\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"5uhst6-uw4vz1-rn5wp7-txcy7l\" data-cel-widget=\"renewedProgramDescriptionBtf_feature_div\"></div><div id=\"ask-dp-search_feature_div\" class=\"celwidget pd_rd_w-JTKJt pd_rd_r-8YCM6CAWQ4EB5EYD0PVK pd_rd_wg-UJacp\" data-feature-name=\"ask-dp-search\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"ask-dp-search\" data-csa-c-slot-id=\"ask-dp-search_feature_div\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"er8870-mbxxpe-k5aco4-58tt03\" data-cel-widget=\"ask-dp-search_feature_div\"><div id=\"ask-dp-search_feature_div\"><div id=\"ask-dp-search_feature_div\"><a style=\"color: rgb(0, 113, 133);\"></a></div></div></div><div id=\"HLCXComparisonWidget_feature_div\" class=\"celwidget pd_rd_w-WFybo pd_rd_r-8YCM6CAWQ4EB5EYD0PVK pd_rd_wg-UJacp\" data-feature-name=\"HLCXComparisonWidget_after_ask-dp-search\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"HLCXComparisonWidget_after_ask-dp-search\" data-csa-c-slot-id=\"HLCXComparisonWidget_feature_div\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"cm6ay5-xrx3ez-38spmo-y9gzce\" data-cel-widget=\"HLCXComparisonWidget_feature_div\"></div><div id=\"aplusBrandStory_feature_div\" class=\"celwidget pd_rd_w-ORTqp pd_rd_r-8YCM6CAWQ4EB5EYD0PVK pd_rd_wg-UJacp\" data-feature-name=\"aplusBrandStory\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"aplusBrandStory\" data-csa-c-slot-id=\"aplusBrandStory_feature_div\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"96mjz9-czsd7v-4l5pd-70jqsx\" data-cel-widget=\"aplusBrandStory_feature_div\"></div><div id=\"aplus_feature_div\" class=\"celwidget pd_rd_w-dZv51 pd_rd_r-8YCM6CAWQ4EB5EYD0PVK pd_rd_wg-UJacp\" data-feature-name=\"aplus\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"aplus\" data-csa-c-slot-id=\"aplus_feature_div\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"7u0hsb-ehm7hg-95o5qp-kpe24g\" data-cel-widget=\"aplus_feature_div\"><div id=\"aplus\" class=\"a-section a-spacing-large bucket\" style=\"margin-bottom: 0px;\"><hr noshade=\"true\" size=\"1\" class=\"bucketDivider\" style=\"box-sizing: border-box; line-height: 19px; margin-top: 0px; filter: none; z-index: 0; zoom: 1; clear: left; background: 0px 0px !important; border-top-color: rgb(204, 204, 204) !important; height: 44px !important; margin-bottom: -36px !important;\"><h2 style=\"padding: 0px 0px 4px; margin: 0px; text-rendering: optimizelegibility; font-weight: 700; line-height: 32px; font-size: 21px !important; color: rgb(51, 51, 51) !important;\">From the manufacturer</h2><div class=\"aplus-v2 desktop celwidget\" cel_widget_id=\"aplus\" data-csa-c-id=\"xn98h3-p95kq7-fkda2c-2xq9n\" data-cel-widget=\"aplus\" style=\"margin-left: auto; margin-right: auto; overflow-wrap: break-word; word-break: break-word;\"><div class=\"celwidget aplus-module 3p-module-b aplus-standard\" cel_widget_id=\"aplus-3p-module-b\" data-csa-c-id=\"j7t98n-wcixk4-3shi7u-yooikp\" data-cel-widget=\"aplus-3p-module-b\" style=\"min-width: 979px;\"><div class=\"aplus-module-wrapper aplus-3p-fixed-width\" style=\"width: 970px; margin-left: auto; margin-right: auto; text-align: inherit;\"><img alt=\".\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/69a38bfb-eb53-4d84-a2e8-62871e158694.__CR0,0,970,600_PT0_SX970_V1___.jpg\" class=\"a-spacing-base\" data-src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/69a38bfb-eb53-4d84-a2e8-62871e158694.__CR0,0,970,600_PT0_SX970_V1___.jpg\" style=\"max-width: 100%; vertical-align: top; margin-bottom: 14px !important;\"><p class=\"a-spacing-base\" style=\"padding: 0px; margin-bottom: 14px !important;\">typecase Touch iPad Pro 11 inch Case with Keyboard (11\", 2021) - Multi-Touch Trackpad & 10 Colors Backlight & 360Â° Rotatable - Thin & Light for iPad Pro 11 & iPad Air 5th & 4th Gen & Pencil - Black</p></div></div><div class=\"celwidget aplus-module 3p-module-b aplus-standard\" cel_widget_id=\"aplus-3p-module-b\" data-csa-c-id=\"hhja1t-edwbtv-v197wb-hv6w92\" data-cel-widget=\"aplus-3p-module-b\" style=\"min-width: 979px;\"><div class=\"aplus-module-wrapper aplus-3p-fixed-width\" style=\"width: 970px; margin-left: auto; margin-right: auto; text-align: inherit;\"><img alt=\".\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/2637c1c5-681a-4b48-8b4f-5c17c6084dea.__CR0,0,970,600_PT0_SX970_V1___.jpg\" class=\"a-spacing-base\" data-src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/2637c1c5-681a-4b48-8b4f-5c17c6084dea.__CR0,0,970,600_PT0_SX970_V1___.jpg\" style=\"max-width: 100%; vertical-align: top; margin-bottom: 14px !important;\"></div></div><div class=\"celwidget aplus-module 3p-module-b aplus-standard\" cel_widget_id=\"aplus-3p-module-b\" data-csa-c-id=\"iiudd2-ywy4g0-ihhq12-mh2882\" data-cel-widget=\"aplus-3p-module-b\" style=\"min-width: 979px;\"><div class=\"aplus-module-wrapper aplus-3p-fixed-width\" style=\"width: 970px; margin-left: auto; margin-right: auto; text-align: inherit;\"><img alt=\".\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/452fcceb-bb7b-4eb8-a974-485f313847b1.__CR0,0,970,600_PT0_SX970_V1___.jpg\" class=\"a-spacing-base\" data-src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/452fcceb-bb7b-4eb8-a974-485f313847b1.__CR0,0,970,600_PT0_SX970_V1___.jpg\" style=\"max-width: 100%; vertical-align: top; margin-bottom: 14px !important;\"></div></div><div class=\"celwidget aplus-module 3p-module-b aplus-standard\" cel_widget_id=\"aplus-3p-module-b\" data-csa-c-id=\"vrurb5-mmpu6v-n02605-upyo0z\" data-cel-widget=\"aplus-3p-module-b\" style=\"min-width: 979px;\"><div class=\"aplus-module-wrapper aplus-3p-fixed-width\" style=\"width: 970px; margin-left: auto; margin-right: auto; text-align: inherit;\"><img alt=\".\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/fd1f5fee-2b66-46d3-a4c3-6ba6fe72d648.__CR0,0,970,600_PT0_SX970_V1___.jpg\" class=\"a-spacing-base\" data-src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/fd1f5fee-2b66-46d3-a4c3-6ba6fe72d648.__CR0,0,970,600_PT0_SX970_V1___.jpg\" style=\"max-width: 100%; vertical-align: top; margin-bottom: 14px !important;\"></div></div></div></div></div></div></li></ul></div></div>', '', '<div id=\"postPurchaseWhatsInTheBox_MP_feature_div\" class=\"celwidget\" data-feature-name=\"postPurchaseWhatsInTheBox_MP\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"postPurchaseWhatsInTheBox_MP\" data-csa-c-slot-id=\"postPurchaseWhatsInTheBox_MP_feature_div\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"ar0gak-tm5ull-bhjeif-vca0m1\" data-cel-widget=\"postPurchaseWhatsInTheBox_MP_feature_div\" style=\"color: rgb(15, 17, 17); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px;\"><div id=\"whatsInTheBoxDeck\" class=\"a-section a-spacing-base celwidget\" data-csa-c-id=\"prchrp-5yea2a-yvoiuf-yau9m0\" data-cel-widget=\"whatsInTheBoxDeck\" style=\"margin-bottom: 0px;\"><h2 style=\"padding: 0px 0px 4px; margin: 0px; text-rendering: optimizelegibility; font-weight: 700; font-size: 24px; line-height: 32px;\">What is in the box?</h2><dl id=\"witb-content-list\" class=\"a-definition-list a-vertical a-spacing-none postpurchase-included-components-list-group\" style=\"padding: 0px; margin-right: 0px; margin-left: 18px; margin-bottom: 0px !important;\"><li class=\"postpurchase-included-components-list-item\" style=\"text-align: left; overflow-wrap: break-word;\"><span class=\"a-list-item\">Keyboard Case & USB Cable</span></li></dl></div></div><div id=\"legal_feature_div\" class=\"celwidget\" data-feature-name=\"legal\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"legal\" data-csa-c-slot-id=\"legal_feature_div\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"lrivzi-r8ar0w-ctpzpg-e0bxmk\" data-cel-widget=\"legal_feature_div\" style=\"color: rgb(15, 17, 17); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px;\"></div><div id=\"buffetServiceCard_feature_div\" class=\"celwidget\" data-feature-name=\"buffetServiceCard\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"buffetServiceCard\" data-csa-c-slot-id=\"buffetServiceCard_feature_div\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"yvexgp-aewmod-n02m0a-ltldv7\" data-cel-widget=\"buffetServiceCard_feature_div\" style=\"color: rgb(15, 17, 17); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px;\"><div class=\"celwidget c-f\" cel_widget_id=\"buffet-disclaimers-card_DetailPage_0\" data-csa-op-log-render=\"\" data-csa-c-content-id=\"DsUnknown\" data-csa-c-slot-id=\"DsUnknown-1\" data-csa-c-type=\"widget\" data-csa-c-painter=\"buffet-disclaimers-card-cards\" data-csa-c-id=\"5e6nt-2v8688-ei6lxa-cs5qzj\" data-cel-widget=\"buffet-disclaimers-card_DetailPage_0\"><div id=\"CardInstancesiiYPq4sxjP5PCRoZqRJOQ\" data-card-metrics-id=\"buffet-disclaimers-card_DetailPage_0\"></div></div></div><div id=\"btf_arenas\" class=\"celwidget\" data-feature-name=\"btf_arenas\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"btf_arenas\" data-csa-c-slot-id=\"btf_arenas\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"67slpl-2m0527-3k1usn-5mds63\" data-cel-widget=\"btf_arenas\" style=\"color: rgb(15, 17, 17); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px;\"><div id=\"renewedProgramDescriptionBtf_feature_div\" class=\"celwidget pd_rd_w-krpfa pd_rd_r-8YCM6CAWQ4EB5EYD0PVK pd_rd_wg-UJacp\" data-feature-name=\"renewedProgramDescriptionBtf\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"renewedProgramDescriptionBtf\" data-csa-c-slot-id=\"renewedProgramDescriptionBtf_feature_div\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"5uhst6-uw4vz1-rn5wp7-txcy7l\" data-cel-widget=\"renewedProgramDescriptionBtf_feature_div\"></div><div id=\"ask-dp-search_feature_div\" class=\"celwidget pd_rd_w-JTKJt pd_rd_r-8YCM6CAWQ4EB5EYD0PVK pd_rd_wg-UJacp\" data-feature-name=\"ask-dp-search\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"ask-dp-search\" data-csa-c-slot-id=\"ask-dp-search_feature_div\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"er8870-mbxxpe-k5aco4-58tt03\" data-cel-widget=\"ask-dp-search_feature_div\"><div id=\"ask-dp-search_feature_div\"><div id=\"ask-dp-search_feature_div\"><a style=\"color: rgb(0, 113, 133);\"></a></div></div></div><div id=\"HLCXComparisonWidget_feature_div\" class=\"celwidget pd_rd_w-WFybo pd_rd_r-8YCM6CAWQ4EB5EYD0PVK pd_rd_wg-UJacp\" data-feature-name=\"HLCXComparisonWidget_after_ask-dp-search\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"HLCXComparisonWidget_after_ask-dp-search\" data-csa-c-slot-id=\"HLCXComparisonWidget_feature_div\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"cm6ay5-xrx3ez-38spmo-y9gzce\" data-cel-widget=\"HLCXComparisonWidget_feature_div\"></div><div id=\"aplusBrandStory_feature_div\" class=\"celwidget pd_rd_w-ORTqp pd_rd_r-8YCM6CAWQ4EB5EYD0PVK pd_rd_wg-UJacp\" data-feature-name=\"aplusBrandStory\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"aplusBrandStory\" data-csa-c-slot-id=\"aplusBrandStory_feature_div\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"96mjz9-czsd7v-4l5pd-70jqsx\" data-cel-widget=\"aplusBrandStory_feature_div\"></div><div id=\"aplus_feature_div\" class=\"celwidget pd_rd_w-dZv51 pd_rd_r-8YCM6CAWQ4EB5EYD0PVK pd_rd_wg-UJacp\" data-feature-name=\"aplus\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"aplus\" data-csa-c-slot-id=\"aplus_feature_div\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"7u0hsb-ehm7hg-95o5qp-kpe24g\" data-cel-widget=\"aplus_feature_div\"><div id=\"aplus\" class=\"a-section a-spacing-large bucket\" style=\"margin-bottom: 0px;\"><hr noshade=\"true\" size=\"1\" class=\"bucketDivider\" style=\"box-sizing: border-box; line-height: 19px; margin-top: 0px; filter: none; z-index: 0; zoom: 1; clear: left; background: 0px 0px !important; border-top-color: rgb(204, 204, 204) !important; height: 44px !important; margin-bottom: -36px !important;\"><h2 style=\"padding: 0px 0px 4px; margin: 0px; text-rendering: optimizelegibility; font-weight: 700; line-height: 32px; font-size: 21px !important; color: rgb(51, 51, 51) !important;\">From the manufacturer</h2><div class=\"aplus-v2 desktop celwidget\" cel_widget_id=\"aplus\" data-csa-c-id=\"xn98h3-p95kq7-fkda2c-2xq9n\" data-cel-widget=\"aplus\" style=\"margin-left: auto; margin-right: auto; overflow-wrap: break-word; word-break: break-word;\"><div class=\"celwidget aplus-module 3p-module-b aplus-standard\" cel_widget_id=\"aplus-3p-module-b\" data-csa-c-id=\"j7t98n-wcixk4-3shi7u-yooikp\" data-cel-widget=\"aplus-3p-module-b\" style=\"min-width: 979px;\"><div class=\"aplus-module-wrapper aplus-3p-fixed-width\" style=\"width: 970px; margin-left: auto; margin-right: auto; text-align: inherit;\"><img alt=\".\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/69a38bfb-eb53-4d84-a2e8-62871e158694.__CR0,0,970,600_PT0_SX970_V1___.jpg\" class=\"a-spacing-base\" data-src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/69a38bfb-eb53-4d84-a2e8-62871e158694.__CR0,0,970,600_PT0_SX970_V1___.jpg\" style=\"max-width: 100%; vertical-align: top; margin-bottom: 14px !important;\"><p class=\"a-spacing-base\" style=\"padding: 0px; margin-bottom: 14px !important;\">typecase Touch iPad Pro 11 inch Case with Keyboard (11\", 2021) - Multi-Touch Trackpad & 10 Colors Backlight & 360Â° Rotatable - Thin & Light for iPad Pro 11 & iPad Air 5th & 4th Gen & Pencil - Black</p></div></div><div class=\"celwidget aplus-module 3p-module-b aplus-standard\" cel_widget_id=\"aplus-3p-module-b\" data-csa-c-id=\"hhja1t-edwbtv-v197wb-hv6w92\" data-cel-widget=\"aplus-3p-module-b\" style=\"min-width: 979px;\"><div class=\"aplus-module-wrapper aplus-3p-fixed-width\" style=\"width: 970px; margin-left: auto; margin-right: auto; text-align: inherit;\"><img alt=\".\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/2637c1c5-681a-4b48-8b4f-5c17c6084dea.__CR0,0,970,600_PT0_SX970_V1___.jpg\" class=\"a-spacing-base\" data-src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/2637c1c5-681a-4b48-8b4f-5c17c6084dea.__CR0,0,970,600_PT0_SX970_V1___.jpg\" style=\"max-width: 100%; vertical-align: top; margin-bottom: 14px !important;\"></div></div><div class=\"celwidget aplus-module 3p-module-b aplus-standard\" cel_widget_id=\"aplus-3p-module-b\" data-csa-c-id=\"iiudd2-ywy4g0-ihhq12-mh2882\" data-cel-widget=\"aplus-3p-module-b\" style=\"min-width: 979px;\"><div class=\"aplus-module-wrapper aplus-3p-fixed-width\" style=\"width: 970px; margin-left: auto; margin-right: auto; text-align: inherit;\"><img alt=\".\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/452fcceb-bb7b-4eb8-a974-485f313847b1.__CR0,0,970,600_PT0_SX970_V1___.jpg\" class=\"a-spacing-base\" data-src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/452fcceb-bb7b-4eb8-a974-485f313847b1.__CR0,0,970,600_PT0_SX970_V1___.jpg\" style=\"max-width: 100%; vertical-align: top; margin-bottom: 14px !important;\"></div></div><div class=\"celwidget aplus-module 3p-module-b aplus-standard\" cel_widget_id=\"aplus-3p-module-b\" data-csa-c-id=\"vrurb5-mmpu6v-n02605-upyo0z\" data-cel-widget=\"aplus-3p-module-b\" style=\"min-width: 979px;\"><div class=\"aplus-module-wrapper aplus-3p-fixed-width\" style=\"width: 970px; margin-left: auto; margin-right: auto; text-align: inherit;\"><img alt=\".\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/fd1f5fee-2b66-46d3-a4c3-6ba6fe72d648.__CR0,0,970,600_PT0_SX970_V1___.jpg\" class=\"a-spacing-base\" data-src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/fd1f5fee-2b66-46d3-a4c3-6ba6fe72d648.__CR0,0,970,600_PT0_SX970_V1___.jpg\" style=\"max-width: 100%; vertical-align: top; margin-bottom: 14px !important;\"></div></div></div></div></div></div>', 1, 1, 39, 24, 0, 'typecase-flexbook-touch-keyboard-case-for-ipad-air-5th--4th-gen-20222020--ipad-pro-11-4th3rd2nd-gen-touchpad-keyboard-case-exclusive-10-colors-backlit-360-rotable-variant-1', NULL, '2023-11-02 12:25:36');
INSERT INTO `tbl_product` (`p_id`, `p_name`, `p_size`, `p_old_price`, `p_current_price`, `p_sku`, `p_vendor`, `p_delivery`, `p_qty`, `collection`, `color`, `variant`, `p_featured_photo`, `p_description`, `p_short_description`, `additional_info`, `p_is_featured`, `p_is_active`, `mid_id`, `top_id`, `ecat_id`, `slug`, `video`, `create_date`) VALUES
(24, 'typecase Flexbook Touch Keyboard case for iPad Air 5th & 4th Gen (2022,2020) & iPad Pro 11 (4th,3rd,2nd Gen), touchpad Keyboard case, Exclusive 10-Colors Backlit, 360Â° Rotable (Rose Gold)', '3', '10999', '5999', 'B0BCPT7R4G', 'DP', '2-5', 1, '1', '9', 17, NULL, '<div id=\"productOverview_feature_div\" class=\"celwidget\" data-feature-name=\"productOverview\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"productOverview\" data-csa-c-slot-id=\"productOverview_feature_div\" data-csa-c-asin=\"B0BCPT7R4G\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"7i9a8e-k0uk04-ifqcpp-123nxq\" data-cel-widget=\"productOverview_feature_div\" style=\"color: rgb(15, 17, 17); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px;\"><div class=\"a-section a-spacing-small a-spacing-top-small\" style=\"margin-bottom: 0px; margin-top: 8px !important;\"><table class=\"a-normal a-spacing-micro\" style=\"width: 440.047px; margin-bottom: 0px !important;\"><tbody><tr class=\"a-spacing-small po-brand\" style=\"margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding-right: 3px; padding-bottom: 3px; margin-right: 0px; width: 115.203px; float: none !important;\"><span class=\"a-size-base a-text-bold\" style=\"font-weight: 700 !important; line-height: 20px !important;\">Brand</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding-bottom: 3px; padding-left: 3px; margin-right: 0px; width: 324.844px; float: none !important;\"><span class=\"a-size-base po-break-word\" style=\"word-break: break-word; line-height: 20px !important;\">typecase</span></td></tr><tr class=\"a-spacing-small po-compatible_devices\" style=\"margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding-top: 3px; padding-right: 3px; padding-bottom: 3px; margin-right: 0px; width: 115.203px; float: none !important;\"><span class=\"a-size-base a-text-bold\" style=\"font-weight: 700 !important; line-height: 20px !important;\">Compatible Devices</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding-top: 3px; padding-bottom: 3px; padding-left: 3px; margin-right: 0px; width: 324.844px; float: none !important;\"><span class=\"a-size-base po-break-word\" style=\"word-break: break-word; line-height: 20px !important;\">iPad Pro 11 (4th,3rd,2nd Gen)- 2022 2021 2020, iPad Air 5th & 4th Generation (2022,2020)</span></td></tr><tr class=\"a-spacing-small po-connectivity_technology\" style=\"margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding-top: 3px; padding-right: 3px; padding-bottom: 3px; margin-right: 0px; width: 115.203px; float: none !important;\"><span class=\"a-size-base a-text-bold\" style=\"font-weight: 700 !important; line-height: 20px !important;\">Connectivity Technology</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding-top: 3px; padding-bottom: 3px; padding-left: 3px; margin-right: 0px; width: 324.844px; float: none !important;\"><span class=\"a-size-base po-break-word\" style=\"word-break: break-word; line-height: 20px !important;\">Bluetooth</span></td></tr><tr class=\"a-spacing-small po-keyboard_description\" style=\"margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding-top: 3px; padding-right: 3px; padding-bottom: 3px; margin-right: 0px; width: 115.203px; float: none !important;\"><span class=\"a-size-base a-text-bold\" style=\"font-weight: 700 !important; line-height: 20px !important;\">Keyboard Description</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding-top: 3px; padding-bottom: 3px; padding-left: 3px; margin-right: 0px; width: 324.844px; float: none !important;\"><span class=\"a-size-base po-break-word\" style=\"word-break: break-word; line-height: 20px !important;\">Flexible</span></td></tr><tr class=\"a-spacing-small po-special_feature\" style=\"margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding-top: 3px; padding-right: 3px; margin-right: 0px; width: 115.203px; float: none !important;\"><span class=\"a-size-base a-text-bold\" style=\"font-weight: 700 !important; line-height: 20px !important;\">Special Feature</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding-top: 3px; padding-left: 3px; margin-right: 0px; width: 324.844px; float: none !important;\"><span class=\"a-size-base\" style=\"line-height: 20px !important;\"><span class=\"a-truncate po-truncate-attribute\" data-a-word-break=\"normal\" data-a-truncate-name=\"po-attribute-truncate-4\" data-a-max-rows=\"3\" data-a-overflow-marker=\"&hellip;\" data-a-recalculate=\"false\" data-a-updated=\"true\" style=\"display: inline-block; position: relative; width: 321.844px; overflow: hidden; word-break: normal; max-height: 3.9em; line-height: 1.3em !important;\"><span class=\"a-truncate-full a-offscreen\" style=\"display: inline-block; width: 321.844px; opacity: 0; position: absolute !important; left: 0px !important; bottom: -1px !important; z-index: -1 !important;\">Advance Chipset with Bluetooth, Scissor switch, Rechargeable, Smart touchpad, Gesture control, Power Saver- Auto Wake & Sleep, Exclusive 10 360 Degree(Horizontal-Vertical ) RotationColor Backlit( Only in typecase Keyboard)</span><span class=\"a-truncate-cut\" aria-hidden=\"true\" style=\"display: inline-block; width: 321.844px; word-break: break-word; height: 3.9em;\">Advance Chipset with Bluetooth, Scissor switch, Rechargeable, Smart touchpad, Gesture control, Power Saver- Auto Wake & Sleep, Exclusive 10 3â€¦</span></span>Â </span><span class=\"a-declarative\" data-action=\"a-modal\" data-csa-c-type=\"widget\" data-csa-c-func-deps=\"aui-da-a-modal\" data-a-modal=\"{\"max-height\":\"400\",\"width\":\"800\",\"header\":\"Special Feature\",\"inlineContent\":\"Advance Chipset with Bluetooth, Scissor switch, Rechargeable, Smart touchpad, Gesture control, Power Saver- Auto Wake &amp; Sleep, Exclusive 10 360 Degree(Horizontal-Vertical ) RotationColor Backlit( Only in typecase Keyboard)\"}\" id=\"po-attribute-see-more-id-4\" data-csa-c-id=\"h63u58-dcl6yt-et520h-8e7ebb\"><a role=\"button\" class=\"a-popover-trigger a-declarative\" style=\"color: rgb(0, 113, 133);\">See more<i class=\"a-icon a-icon-popover\" style=\"background-image: url(\"https://m.media-amazon.com/images/S/sash/McBZv0ZvnbehkIx.png\"); background-size: 400px 900px; background-repeat: no-repeat; display: inline-block; vertical-align: text-top; margin: 5px 0px 0px 0.385em; width: 7px; height: 5px; background-position: -90px -5px; opacity: 0.6;\"></i></a></span></td></tr></tbody></table></div></div><div id=\"featurebullets_feature_div\" class=\"celwidget\" data-feature-name=\"featurebullets\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"featurebullets\" data-csa-c-slot-id=\"featurebullets_feature_div\" data-csa-c-asin=\"B0BCPT7R4G\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"v8zb8f-5wxarw-y5o5oj-ymz6xo\" data-cel-widget=\"featurebullets_feature_div\" style=\"color: rgb(15, 17, 17); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px;\"><div id=\"feature-bullets\" class=\"a-section a-spacing-medium a-spacing-top-small\" style=\"margin-bottom: 0px; margin-top: 8px !important;\"><hr style=\"box-sizing: border-box; background-color: transparent; border-top-color: rgb(187, 191, 191); height: 1px; line-height: 19px; margin-bottom: 14px; margin-top: 0px;\"><h1 class=\"a-size-base-plus a-text-bold\" style=\"padding: 0px 0px 4px; margin-top: 0px; margin-bottom: 0px; text-rendering: optimizelegibility; font-weight: 700 !important; font-size: 16px !important; line-height: 24px !important;\">About this item</h1><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; padding: 0px;\"><li class=\"a-spacing-mini\" style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Compatibility - This touchpad keyboard case is perfectly compatible with new 2022 iPad Pro 11 4th Gen (A2759, A2435, A2761, A2762), 3rd Gen 2021 (A2301, A2456, A2460), 2nd Gen 2020 model (A2228, A2068, A2230, A2231), 1st Gen 2018 (A1980, A2013, A1934, A1979) & 2022 10.9-inch Air 5th Generation (A2589 A2591), 2020 Air 4th Generation (A2072, A2316, A2324, A2325). Please check the model number start with A**** on the iPad â€œSettingsâ€ before purchase. iPad or Apple Pencil NOT INCLUDED.</span></li><li class=\"a-spacing-mini\" style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Precision Trackpad - The iPad Pro 11 inch keyboard case has a unique design with high precision Trackpad, navigate your iPad Pro 11\" 3rd generation in a whole new way with your fingers. Edit documents, browse the web, and build presentations with unparalleled speed, bringing you the convenience of high productivity.</span></li><li class=\"a-spacing-mini\" style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">10-Color RGB Backlit Keys - Premium laptop-like keyboard case for iPad Pro 11 3rd gen, designed for maximizing typing experience, type on 10-color RGB laser-etched keys. The iPad Pro 11\" case with keyboard comes with 3 brightness levels to adjust as you expected and equip with a full row of PadOS shortcuts.</span></li><li class=\"a-spacing-mini\" style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">7 Use Modes - Dual-axis rotatable 360Â° Hinge (20,000 cycles stress tested) of the iPad Pro 11 case 3rd generation with keyboard provides infinite viewing angle, you could use your iPad Pro 11 3rd gen in 7 different modes. Show your presentations, edit documents, transform use modes at an unparalleled speed.</span></li><li class=\"a-spacing-mini\" style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Smart Features - Rugged hard - shell - the iPad Pro 11 case 3rd generation with keyboard designed for protecting your iPad on both front and the back sides, preventing being scratched from accidental dropping and bumps. Auto sleep/wake when you open or close your iPad, conserving your iPad battery life; holder for Apple Pencil so it won\'t get lost or in the way.</span><div id=\"postPurchaseWhatsInTheBox_MP_feature_div\" class=\"celwidget\" data-feature-name=\"postPurchaseWhatsInTheBox_MP\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"postPurchaseWhatsInTheBox_MP\" data-csa-c-slot-id=\"postPurchaseWhatsInTheBox_MP_feature_div\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"ar0gak-tm5ull-bhjeif-vca0m1\" data-cel-widget=\"postPurchaseWhatsInTheBox_MP_feature_div\"><div id=\"whatsInTheBoxDeck\" class=\"a-section a-spacing-base celwidget\" data-csa-c-id=\"prchrp-5yea2a-yvoiuf-yau9m0\" data-cel-widget=\"whatsInTheBoxDeck\" style=\"margin-bottom: 0px;\"><h2 style=\"padding: 0px 0px 4px; margin: 0px; text-rendering: optimizelegibility; font-weight: 700; font-size: 24px; line-height: 32px;\">What is in the box?</h2><dl id=\"witb-content-list\" class=\"a-definition-list a-vertical a-spacing-none postpurchase-included-components-list-group\" style=\"padding: 0px; margin-right: 0px; margin-left: 18px; margin-bottom: 0px !important;\"><li class=\"postpurchase-included-components-list-item\" style=\"text-align: left; overflow-wrap: break-word;\"><span class=\"a-list-item\">Keyboard Case & USB Cable</span></li></dl></div></div><div id=\"legal_feature_div\" class=\"celwidget\" data-feature-name=\"legal\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"legal\" data-csa-c-slot-id=\"legal_feature_div\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"lrivzi-r8ar0w-ctpzpg-e0bxmk\" data-cel-widget=\"legal_feature_div\"></div><div id=\"buffetServiceCard_feature_div\" class=\"celwidget\" data-feature-name=\"buffetServiceCard\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"buffetServiceCard\" data-csa-c-slot-id=\"buffetServiceCard_feature_div\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"yvexgp-aewmod-n02m0a-ltldv7\" data-cel-widget=\"buffetServiceCard_feature_div\"><div class=\"celwidget c-f\" cel_widget_id=\"buffet-disclaimers-card_DetailPage_0\" data-csa-op-log-render=\"\" data-csa-c-content-id=\"DsUnknown\" data-csa-c-slot-id=\"DsUnknown-1\" data-csa-c-type=\"widget\" data-csa-c-painter=\"buffet-disclaimers-card-cards\" data-csa-c-id=\"5e6nt-2v8688-ei6lxa-cs5qzj\" data-cel-widget=\"buffet-disclaimers-card_DetailPage_0\"><div id=\"CardInstancesiiYPq4sxjP5PCRoZqRJOQ\" data-card-metrics-id=\"buffet-disclaimers-card_DetailPage_0\"></div></div></div><div id=\"btf_arenas\" class=\"celwidget\" data-feature-name=\"btf_arenas\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"btf_arenas\" data-csa-c-slot-id=\"btf_arenas\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"67slpl-2m0527-3k1usn-5mds63\" data-cel-widget=\"btf_arenas\"><div id=\"renewedProgramDescriptionBtf_feature_div\" class=\"celwidget pd_rd_w-krpfa pd_rd_r-8YCM6CAWQ4EB5EYD0PVK pd_rd_wg-UJacp\" data-feature-name=\"renewedProgramDescriptionBtf\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"renewedProgramDescriptionBtf\" data-csa-c-slot-id=\"renewedProgramDescriptionBtf_feature_div\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"5uhst6-uw4vz1-rn5wp7-txcy7l\" data-cel-widget=\"renewedProgramDescriptionBtf_feature_div\"></div><div id=\"ask-dp-search_feature_div\" class=\"celwidget pd_rd_w-JTKJt pd_rd_r-8YCM6CAWQ4EB5EYD0PVK pd_rd_wg-UJacp\" data-feature-name=\"ask-dp-search\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"ask-dp-search\" data-csa-c-slot-id=\"ask-dp-search_feature_div\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"er8870-mbxxpe-k5aco4-58tt03\" data-cel-widget=\"ask-dp-search_feature_div\"><div id=\"ask-dp-search_feature_div\"><div id=\"ask-dp-search_feature_div\"><a style=\"color: rgb(0, 113, 133);\"></a></div></div></div><div id=\"HLCXComparisonWidget_feature_div\" class=\"celwidget pd_rd_w-WFybo pd_rd_r-8YCM6CAWQ4EB5EYD0PVK pd_rd_wg-UJacp\" data-feature-name=\"HLCXComparisonWidget_after_ask-dp-search\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"HLCXComparisonWidget_after_ask-dp-search\" data-csa-c-slot-id=\"HLCXComparisonWidget_feature_div\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"cm6ay5-xrx3ez-38spmo-y9gzce\" data-cel-widget=\"HLCXComparisonWidget_feature_div\"></div><div id=\"aplusBrandStory_feature_div\" class=\"celwidget pd_rd_w-ORTqp pd_rd_r-8YCM6CAWQ4EB5EYD0PVK pd_rd_wg-UJacp\" data-feature-name=\"aplusBrandStory\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"aplusBrandStory\" data-csa-c-slot-id=\"aplusBrandStory_feature_div\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"96mjz9-czsd7v-4l5pd-70jqsx\" data-cel-widget=\"aplusBrandStory_feature_div\"></div><div id=\"aplus_feature_div\" class=\"celwidget pd_rd_w-dZv51 pd_rd_r-8YCM6CAWQ4EB5EYD0PVK pd_rd_wg-UJacp\" data-feature-name=\"aplus\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"aplus\" data-csa-c-slot-id=\"aplus_feature_div\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"7u0hsb-ehm7hg-95o5qp-kpe24g\" data-cel-widget=\"aplus_feature_div\"><div id=\"aplus\" class=\"a-section a-spacing-large bucket\" style=\"margin-bottom: 0px;\"><hr noshade=\"true\" size=\"1\" class=\"bucketDivider\" style=\"box-sizing: border-box; line-height: 19px; margin-top: 0px; filter: none; z-index: 0; zoom: 1; clear: left; background: 0px 0px !important; border-top-color: rgb(204, 204, 204) !important; height: 44px !important; margin-bottom: -36px !important;\"><h2 style=\"padding: 0px 0px 4px; margin: 0px; text-rendering: optimizelegibility; font-weight: 700; line-height: 32px; font-size: 21px !important; color: rgb(51, 51, 51) !important;\">From the manufacturer</h2><div class=\"aplus-v2 desktop celwidget\" cel_widget_id=\"aplus\" data-csa-c-id=\"xn98h3-p95kq7-fkda2c-2xq9n\" data-cel-widget=\"aplus\" style=\"margin-left: auto; margin-right: auto; overflow-wrap: break-word; word-break: break-word;\"><div class=\"celwidget aplus-module 3p-module-b aplus-standard\" cel_widget_id=\"aplus-3p-module-b\" data-csa-c-id=\"j7t98n-wcixk4-3shi7u-yooikp\" data-cel-widget=\"aplus-3p-module-b\" style=\"min-width: 979px;\"><div class=\"aplus-module-wrapper aplus-3p-fixed-width\" style=\"width: 970px; margin-left: auto; margin-right: auto; text-align: inherit;\"><img alt=\".\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/69a38bfb-eb53-4d84-a2e8-62871e158694.__CR0,0,970,600_PT0_SX970_V1___.jpg\" class=\"a-spacing-base\" data-src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/69a38bfb-eb53-4d84-a2e8-62871e158694.__CR0,0,970,600_PT0_SX970_V1___.jpg\" style=\"max-width: 100%; vertical-align: top; margin-bottom: 14px !important;\"><p class=\"a-spacing-base\" style=\"padding: 0px; margin-bottom: 14px !important;\">typecase Touch iPad Pro 11 inch Case with Keyboard (11\", 2021) - Multi-Touch Trackpad & 10 Colors Backlight & 360Â° Rotatable - Thin & Light for iPad Pro 11 & iPad Air 5th & 4th Gen & Pencil - Black</p></div></div><div class=\"celwidget aplus-module 3p-module-b aplus-standard\" cel_widget_id=\"aplus-3p-module-b\" data-csa-c-id=\"hhja1t-edwbtv-v197wb-hv6w92\" data-cel-widget=\"aplus-3p-module-b\" style=\"min-width: 979px;\"><div class=\"aplus-module-wrapper aplus-3p-fixed-width\" style=\"width: 970px; margin-left: auto; margin-right: auto; text-align: inherit;\"><img alt=\".\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/2637c1c5-681a-4b48-8b4f-5c17c6084dea.__CR0,0,970,600_PT0_SX970_V1___.jpg\" class=\"a-spacing-base\" data-src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/2637c1c5-681a-4b48-8b4f-5c17c6084dea.__CR0,0,970,600_PT0_SX970_V1___.jpg\" style=\"max-width: 100%; vertical-align: top; margin-bottom: 14px !important;\"></div></div><div class=\"celwidget aplus-module 3p-module-b aplus-standard\" cel_widget_id=\"aplus-3p-module-b\" data-csa-c-id=\"iiudd2-ywy4g0-ihhq12-mh2882\" data-cel-widget=\"aplus-3p-module-b\" style=\"min-width: 979px;\"><div class=\"aplus-module-wrapper aplus-3p-fixed-width\" style=\"width: 970px; margin-left: auto; margin-right: auto; text-align: inherit;\"><img alt=\".\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/452fcceb-bb7b-4eb8-a974-485f313847b1.__CR0,0,970,600_PT0_SX970_V1___.jpg\" class=\"a-spacing-base\" data-src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/452fcceb-bb7b-4eb8-a974-485f313847b1.__CR0,0,970,600_PT0_SX970_V1___.jpg\" style=\"max-width: 100%; vertical-align: top; margin-bottom: 14px !important;\"></div></div><div class=\"celwidget aplus-module 3p-module-b aplus-standard\" cel_widget_id=\"aplus-3p-module-b\" data-csa-c-id=\"vrurb5-mmpu6v-n02605-upyo0z\" data-cel-widget=\"aplus-3p-module-b\" style=\"min-width: 979px;\"><div class=\"aplus-module-wrapper aplus-3p-fixed-width\" style=\"width: 970px; margin-left: auto; margin-right: auto; text-align: inherit;\"><img alt=\".\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/fd1f5fee-2b66-46d3-a4c3-6ba6fe72d648.__CR0,0,970,600_PT0_SX970_V1___.jpg\" class=\"a-spacing-base\" data-src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/fd1f5fee-2b66-46d3-a4c3-6ba6fe72d648.__CR0,0,970,600_PT0_SX970_V1___.jpg\" style=\"max-width: 100%; vertical-align: top; margin-bottom: 14px !important;\"></div></div></div></div></div></div></li></ul></div></div>', '', '<div id=\"postPurchaseWhatsInTheBox_MP_feature_div\" class=\"celwidget\" data-feature-name=\"postPurchaseWhatsInTheBox_MP\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"postPurchaseWhatsInTheBox_MP\" data-csa-c-slot-id=\"postPurchaseWhatsInTheBox_MP_feature_div\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"ar0gak-tm5ull-bhjeif-vca0m1\" data-cel-widget=\"postPurchaseWhatsInTheBox_MP_feature_div\" style=\"color: rgb(15, 17, 17); font-family: \" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><div id=\"whatsInTheBoxDeck\" class=\"a-section a-spacing-base celwidget\" data-csa-c-id=\"prchrp-5yea2a-yvoiuf-yau9m0\" data-cel-widget=\"whatsInTheBoxDeck\" style=\"margin-bottom: 0px;\"><h2 style=\"padding: 0px 0px 4px; margin: 0px; text-rendering: optimizelegibility; font-weight: 700; font-size: 24px; line-height: 32px;\"><br></h2></div></div>', 1, 1, 39, 24, 0, 'typecase-flexbook-touch-keyboard-case-for-ipad-air-5th--4th-gen-20222020--ipad-pro-11-4th3rd2nd-gen-touchpad-keyboard-case-exclusive-10-colors-backlit-360-rotable-variant-2', 'https://www.youtube.com/embed/0RdpMgjRPPA?si=stS_iqBktTgfwG5A', '2023-11-02 12:42:28'),
(25, 'typecase Flexbook Touch Keyboard case for iPad Air 5th & 4th Gen (2022,2020) & iPad Pro 11 (4th,3rd,2nd Gen), touchpad Keyboard case, Exclusive 10-Colors Backlit, 360Â° Rotable (Space Grey)', '3', '10999', '5999', 'B0BCPP8P5S', 'DP', '2-5', 1, '1', '24', 17, NULL, '<div id=\"productOverview_feature_div\" class=\"celwidget\" data-feature-name=\"productOverview\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"productOverview\" data-csa-c-slot-id=\"productOverview_feature_div\" data-csa-c-asin=\"B0BCPT7R4G\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"7i9a8e-k0uk04-ifqcpp-123nxq\" data-cel-widget=\"productOverview_feature_div\" style=\"color: rgb(15, 17, 17); font-family: \" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><div class=\"a-section a-spacing-small a-spacing-top-small\" style=\"margin-bottom: 0px; margin-top: 8px !important;\"><table class=\"a-normal a-spacing-micro\" style=\"width: 440.047px; margin-bottom: 0px !important;\"><tbody><tr class=\"a-spacing-small po-brand\" style=\"margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding-right: 3px; padding-bottom: 3px; margin-right: 0px; width: 115.203px; float: none !important;\"><span class=\"a-size-base a-text-bold\" style=\"font-weight: 700 !important; line-height: 20px !important;\">Brand</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding-bottom: 3px; padding-left: 3px; margin-right: 0px; width: 324.844px; float: none !important;\"><span class=\"a-size-base po-break-word\" style=\"word-break: break-word; line-height: 20px !important;\">typecase</span></td></tr><tr class=\"a-spacing-small po-compatible_devices\" style=\"margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding-top: 3px; padding-right: 3px; padding-bottom: 3px; margin-right: 0px; width: 115.203px; float: none !important;\"><span class=\"a-size-base a-text-bold\" style=\"font-weight: 700 !important; line-height: 20px !important;\">Compatible Devices</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding-top: 3px; padding-bottom: 3px; padding-left: 3px; margin-right: 0px; width: 324.844px; float: none !important;\"><span class=\"a-size-base po-break-word\" style=\"word-break: break-word; line-height: 20px !important;\">iPad Pro 11 (4th,3rd,2nd Gen)- 2022 2021 2020, iPad Air 5th & 4th Generation (2022,2020)</span></td></tr><tr class=\"a-spacing-small po-connectivity_technology\" style=\"margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding-top: 3px; padding-right: 3px; padding-bottom: 3px; margin-right: 0px; width: 115.203px; float: none !important;\"><span class=\"a-size-base a-text-bold\" style=\"font-weight: 700 !important; line-height: 20px !important;\">Connectivity Technology</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding-top: 3px; padding-bottom: 3px; padding-left: 3px; margin-right: 0px; width: 324.844px; float: none !important;\"><span class=\"a-size-base po-break-word\" style=\"word-break: break-word; line-height: 20px !important;\">Bluetooth</span></td></tr><tr class=\"a-spacing-small po-keyboard_description\" style=\"margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding-top: 3px; padding-right: 3px; padding-bottom: 3px; margin-right: 0px; width: 115.203px; float: none !important;\"><span class=\"a-size-base a-text-bold\" style=\"font-weight: 700 !important; line-height: 20px !important;\">Keyboard Description</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding-top: 3px; padding-bottom: 3px; padding-left: 3px; margin-right: 0px; width: 324.844px; float: none !important;\"><span class=\"a-size-base po-break-word\" style=\"word-break: break-word; line-height: 20px !important;\">Flexible</span></td></tr><tr class=\"a-spacing-small po-special_feature\" style=\"margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding-top: 3px; padding-right: 3px; margin-right: 0px; width: 115.203px; float: none !important;\"><span class=\"a-size-base a-text-bold\" style=\"font-weight: 700 !important; line-height: 20px !important;\">Special Feature</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding-top: 3px; padding-left: 3px; margin-right: 0px; width: 324.844px; float: none !important;\"><span class=\"a-size-base\" style=\"line-height: 20px !important;\"><span class=\"a-truncate po-truncate-attribute\" data-a-word-break=\"normal\" data-a-truncate-name=\"po-attribute-truncate-4\" data-a-max-rows=\"3\" data-a-overflow-marker=\"â€¦\" data-a-recalculate=\"false\" data-a-updated=\"true\" style=\"display: inline-block; position: relative; width: 321.844px; overflow: hidden; word-break: normal; max-height: 3.9em; line-height: 1.3em !important;\"><span class=\"a-truncate-full a-offscreen\" style=\"display: inline-block; width: 321.844px; opacity: 0; position: absolute !important; left: 0px !important; bottom: -1px !important; z-index: -1 !important;\">Advance Chipset with Bluetooth, Scissor switch, Rechargeable, Smart touchpad, Gesture control, Power Saver- Auto Wake & Sleep, Exclusive 10 360 Degree(Horizontal-Vertical ) RotationColor Backlit( Only in typecase Keyboard)</span><span class=\"a-truncate-cut\" aria-hidden=\"true\" style=\"display: inline-block; width: 321.844px; word-break: break-word; height: 3.9em;\">Advance Chipset with Bluetooth, Scissor switch, Rechargeable, Smart touchpad, Gesture control, Power Saver- Auto Wake & Sleep, Exclusive 10 3â€¦</span></span>Â </span><span class=\"a-declarative\" data-action=\"a-modal\" data-csa-c-type=\"widget\" data-csa-c-func-deps=\"aui-da-a-modal\" data-a-modal=\"{\" max-height\":\"400\",\"width\":\"800\",\"header\":\"special=\"\" feature\",\"inlinecontent\":\"advance=\"\" chipset=\"\" with=\"\" bluetooth,=\"\" scissor=\"\" switch,=\"\" rechargeable,=\"\" smart=\"\" touchpad,=\"\" gesture=\"\" control,=\"\" power=\"\" saver-=\"\" auto=\"\" wake=\"\" &=\"\" sleep,=\"\" exclusive=\"\" 10=\"\" 360=\"\" degree(horizontal-vertical=\"\" )=\"\" rotationcolor=\"\" backlit(=\"\" only=\"\" in=\"\" typecase=\"\" keyboard)\"}\"=\"\" id=\"po-attribute-see-more-id-4\" data-csa-c-id=\"h63u58-dcl6yt-et520h-8e7ebb\"><a role=\"button\" class=\"a-popover-trigger a-declarative\" style=\"color: rgb(0, 113, 133);\">See more<i class=\"a-icon a-icon-popover\" style=\"background-image: url(\" https:=\"\" m.media-amazon.com=\"\" images=\"\" s=\"\" sash=\"\" mcbzv0zvnbehkix.png\");=\"\" background-size:=\"\" 400px=\"\" 900px;=\"\" background-repeat:=\"\" no-repeat;=\"\" display:=\"\" inline-block;=\"\" vertical-align:=\"\" text-top;=\"\" margin:=\"\" 5px=\"\" 0px=\"\" 0.385em;=\"\" width:=\"\" 7px;=\"\" height:=\"\" 5px;=\"\" background-position:=\"\" -90px=\"\" -5px;=\"\" opacity:=\"\" 0.6;\"=\"\"></i></a></span></td></tr></tbody></table></div></div><div id=\"featurebullets_feature_div\" class=\"celwidget\" data-feature-name=\"featurebullets\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"featurebullets\" data-csa-c-slot-id=\"featurebullets_feature_div\" data-csa-c-asin=\"B0BCPT7R4G\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"v8zb8f-5wxarw-y5o5oj-ymz6xo\" data-cel-widget=\"featurebullets_feature_div\" style=\"color: rgb(15, 17, 17); font-family: \" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><div id=\"feature-bullets\" class=\"a-section a-spacing-medium a-spacing-top-small\" style=\"margin-bottom: 0px; margin-top: 8px !important;\"><hr style=\"box-sizing: border-box; background-color: transparent; border-top-color: rgb(187, 191, 191); height: 1px; line-height: 19px; margin-bottom: 14px; margin-top: 0px;\"><h1 class=\"a-size-base-plus a-text-bold\" style=\"padding: 0px 0px 4px; margin-top: 0px; margin-bottom: 0px; text-rendering: optimizelegibility; font-weight: 700 !important; font-size: 16px !important; line-height: 24px !important;\">About this item</h1><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; padding: 0px;\"><li class=\"a-spacing-mini\" style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Compatibility - This touchpad keyboard case is perfectly compatible with new 2022 iPad Pro 11 4th Gen (A2759, A2435, A2761, A2762), 3rd Gen 2021 (A2301, A2456, A2460), 2nd Gen 2020 model (A2228, A2068, A2230, A2231), 1st Gen 2018 (A1980, A2013, A1934, A1979) & 2022 10.9-inch Air 5th Generation (A2589 A2591), 2020 Air 4th Generation (A2072, A2316, A2324, A2325). Please check the model number start with A**** on the iPad â€œSettingsâ€ before purchase. iPad or Apple Pencil NOT INCLUDED.</span></li><li class=\"a-spacing-mini\" style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Precision Trackpad - The iPad Pro 11 inch keyboard case has a unique design with high precision Trackpad, navigate your iPad Pro 11\" 3rd generation in a whole new way with your fingers. Edit documents, browse the web, and build presentations with unparalleled speed, bringing you the convenience of high productivity.</span></li><li class=\"a-spacing-mini\" style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">10-Color RGB Backlit Keys - Premium laptop-like keyboard case for iPad Pro 11 3rd gen, designed for maximizing typing experience, type on 10-color RGB laser-etched keys. The iPad Pro 11\" case with keyboard comes with 3 brightness levels to adjust as you expected and equip with a full row of PadOS shortcuts.</span></li><li class=\"a-spacing-mini\" style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">7 Use Modes - Dual-axis rotatable 360Â° Hinge (20,000 cycles stress tested) of the iPad Pro 11 case 3rd generation with keyboard provides infinite viewing angle, you could use your iPad Pro 11 3rd gen in 7 different modes. Show your presentations, edit documents, transform use modes at an unparalleled speed.</span></li><li class=\"a-spacing-mini\" style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Smart Features - Rugged hard - shell - the iPad Pro 11 case 3rd generation with keyboard designed for protecting your iPad on both front and the back sides, preventing being scratched from accidental dropping and bumps. Auto sleep/wake when you open or close your iPad, conserving your iPad battery life; holder for Apple Pencil so it won\'t get lost or in the way.</span></li></ul></div></div><table class=\"a-normal a-spacing-micro\" style=\"width: 440.044px; color: rgb(15, 17, 17); font-family: \" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" margin-bottom:=\"\" 0px=\"\" !important;\"=\"\"><tbody><tr class=\"a-spacing-small po-recommended_uses_for_product\" style=\"margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding-top: 3px; padding-right: 3px; margin-right: 0px; width: 115.2px; float: none !important;\"></td><td class=\"a-span9\" style=\"vertical-align: top; padding-top: 3px; padding-left: 3px; margin-right: 0px; width: 324.844px; float: none !important;\"><p><span class=\"a-size-base po-break-word\" style=\"word-break: break-word; line-height: 20px !important;\">Home & office use</span></p><p><span class=\"a-size-base po-break-word\" style=\"word-break: break-word; line-height: 20px !important;\"><br></span></p><p><span class=\"a-size-base po-break-word\" style=\"word-break: break-word; line-height: 20px !important;\"><br></span></p><div id=\"postPurchaseWhatsInTheBox_MP_feature_div\" class=\"celwidget\" data-feature-name=\"postPurchaseWhatsInTheBox_MP\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"postPurchaseWhatsInTheBox_MP\" data-csa-c-slot-id=\"postPurchaseWhatsInTheBox_MP_feature_div\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"ar0gak-tm5ull-bhjeif-vca0m1\" data-cel-widget=\"postPurchaseWhatsInTheBox_MP_feature_div\" style=\"font-family: \" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><div id=\"whatsInTheBoxDeck\" class=\"a-section a-spacing-base celwidget\" data-csa-c-id=\"prchrp-5yea2a-yvoiuf-yau9m0\" data-cel-widget=\"whatsInTheBoxDeck\" style=\"margin-bottom: 0px;\"><h2 style=\"padding: 0px 0px 4px; margin: 0px; text-rendering: optimizelegibility; font-weight: 700; font-size: 24px; line-height: 32px;\">What is in the box?</h2><dl id=\"witb-content-list\" class=\"a-definition-list a-vertical a-spacing-none postpurchase-included-components-list-group\" style=\"padding: 0px; margin-right: 0px; margin-left: 18px; margin-bottom: 0px !important;\"><li class=\"postpurchase-included-components-list-item\" style=\"text-align: left; overflow-wrap: break-word;\"><span class=\"a-list-item\">Keyboard Case & USB Cable</span></li></dl></div></div><div id=\"legal_feature_div\" class=\"celwidget\" data-feature-name=\"legal\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"legal\" data-csa-c-slot-id=\"legal_feature_div\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"lrivzi-r8ar0w-ctpzpg-e0bxmk\" data-cel-widget=\"legal_feature_div\" style=\"font-family: \" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"></div><div id=\"buffetServiceCard_feature_div\" class=\"celwidget\" data-feature-name=\"buffetServiceCard\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"buffetServiceCard\" data-csa-c-slot-id=\"buffetServiceCard_feature_div\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"yvexgp-aewmod-n02m0a-ltldv7\" data-cel-widget=\"buffetServiceCard_feature_div\" style=\"font-family: \" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><div class=\"celwidget c-f\" cel_widget_id=\"buffet-disclaimers-card_DetailPage_0\" data-csa-op-log-render=\"\" data-csa-c-content-id=\"DsUnknown\" data-csa-c-slot-id=\"DsUnknown-1\" data-csa-c-type=\"widget\" data-csa-c-painter=\"buffet-disclaimers-card-cards\" data-csa-c-id=\"5e6nt-2v8688-ei6lxa-cs5qzj\" data-cel-widget=\"buffet-disclaimers-card_DetailPage_0\"><div id=\"CardInstancesiiYPq4sxjP5PCRoZqRJOQ\" data-card-metrics-id=\"buffet-disclaimers-card_DetailPage_0\"></div></div></div><p><span class=\"a-size-base po-break-word\" style=\"word-break: break-word; line-height: 20px !important;\"></span></p><div id=\"btf_arenas\" class=\"celwidget\" data-feature-name=\"btf_arenas\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"btf_arenas\" data-csa-c-slot-id=\"btf_arenas\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"67slpl-2m0527-3k1usn-5mds63\" data-cel-widget=\"btf_arenas\" style=\"font-family: \" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><div id=\"renewedProgramDescriptionBtf_feature_div\" class=\"celwidget pd_rd_w-krpfa pd_rd_r-8YCM6CAWQ4EB5EYD0PVK pd_rd_wg-UJacp\" data-feature-name=\"renewedProgramDescriptionBtf\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"renewedProgramDescriptionBtf\" data-csa-c-slot-id=\"renewedProgramDescriptionBtf_feature_div\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"5uhst6-uw4vz1-rn5wp7-txcy7l\" data-cel-widget=\"renewedProgramDescriptionBtf_feature_div\"></div><div id=\"ask-dp-search_feature_div\" class=\"celwidget pd_rd_w-JTKJt pd_rd_r-8YCM6CAWQ4EB5EYD0PVK pd_rd_wg-UJacp\" data-feature-name=\"ask-dp-search\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"ask-dp-search\" data-csa-c-slot-id=\"ask-dp-search_feature_div\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"er8870-mbxxpe-k5aco4-58tt03\" data-cel-widget=\"ask-dp-search_feature_div\"><div id=\"ask-dp-search_feature_div\"><div id=\"ask-dp-search_feature_div\"><a style=\"color: rgb(0, 113, 133);\"></a></div></div></div><div id=\"HLCXComparisonWidget_feature_div\" class=\"celwidget pd_rd_w-WFybo pd_rd_r-8YCM6CAWQ4EB5EYD0PVK pd_rd_wg-UJacp\" data-feature-name=\"HLCXComparisonWidget_after_ask-dp-search\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"HLCXComparisonWidget_after_ask-dp-search\" data-csa-c-slot-id=\"HLCXComparisonWidget_feature_div\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"cm6ay5-xrx3ez-38spmo-y9gzce\" data-cel-widget=\"HLCXComparisonWidget_feature_div\"></div><div id=\"aplusBrandStory_feature_div\" class=\"celwidget pd_rd_w-ORTqp pd_rd_r-8YCM6CAWQ4EB5EYD0PVK pd_rd_wg-UJacp\" data-feature-name=\"aplusBrandStory\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"aplusBrandStory\" data-csa-c-slot-id=\"aplusBrandStory_feature_div\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"96mjz9-czsd7v-4l5pd-70jqsx\" data-cel-widget=\"aplusBrandStory_feature_div\"></div><div id=\"aplus_feature_div\" class=\"celwidget pd_rd_w-dZv51 pd_rd_r-8YCM6CAWQ4EB5EYD0PVK pd_rd_wg-UJacp\" data-feature-name=\"aplus\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"aplus\" data-csa-c-slot-id=\"aplus_feature_div\" data-csa-c-asin=\"\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"7u0hsb-ehm7hg-95o5qp-kpe24g\" data-cel-widget=\"aplus_feature_div\"><div id=\"aplus\" class=\"a-section a-spacing-large bucket\" style=\"margin-bottom: 0px;\"><hr noshade=\"true\" size=\"1\" class=\"bucketDivider\" style=\"box-sizing: border-box; line-height: 19px; margin-top: 0px; filter: none; z-index: 0; zoom: 1; clear: left; background: 0px 0px !important; border-top-color: rgb(204, 204, 204) !important; height: 44px !important; margin-bottom: -36px !important;\"><h2 style=\"padding: 0px 0px 4px; margin: 0px; text-rendering: optimizelegibility; font-weight: 700; line-height: 32px; font-size: 21px !important; color: rgb(51, 51, 51) !important;\">From the manufacturer</h2><div class=\"aplus-v2 desktop celwidget\" cel_widget_id=\"aplus\" data-csa-c-id=\"xn98h3-p95kq7-fkda2c-2xq9n\" data-cel-widget=\"aplus\" style=\"margin-left: auto; margin-right: auto; overflow-wrap: break-word; word-break: break-word;\"><div class=\"celwidget aplus-module 3p-module-b aplus-standard\" cel_widget_id=\"aplus-3p-module-b\" data-csa-c-id=\"j7t98n-wcixk4-3shi7u-yooikp\" data-cel-widget=\"aplus-3p-module-b\" style=\"min-width: 979px;\"><div class=\"aplus-module-wrapper aplus-3p-fixed-width\" style=\"width: 970px; margin-left: auto; margin-right: auto; text-align: inherit;\"><img alt=\".\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/69a38bfb-eb53-4d84-a2e8-62871e158694.__CR0,0,970,600_PT0_SX970_V1___.jpg\" class=\"a-spacing-base\" data-src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/69a38bfb-eb53-4d84-a2e8-62871e158694.__CR0,0,970,600_PT0_SX970_V1___.jpg\" style=\"max-width: 100%; vertical-align: top; margin-bottom: 14px !important; width: 50%;\"><p class=\"a-spacing-base\" style=\"padding: 0px; margin-bottom: 14px !important;\">typecase Touch iPad Pro 11 inch Case with Keyboard (11\", 2021) - Multi-Touch Trackpad & 10 Colors Backlight & 360Â° Rotatable - Thin & Light for iPad Pro 11 & iPad Air 5th & 4th Gen & Pencil - Black</p></div></div><div class=\"celwidget aplus-module 3p-module-b aplus-standard\" cel_widget_id=\"aplus-3p-module-b\" data-csa-c-id=\"hhja1t-edwbtv-v197wb-hv6w92\" data-cel-widget=\"aplus-3p-module-b\" style=\"min-width: 979px;\"><div class=\"aplus-module-wrapper aplus-3p-fixed-width\" style=\"width: 970px; margin-left: auto; margin-right: auto; text-align: inherit;\"><img alt=\".\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/2637c1c5-681a-4b48-8b4f-5c17c6084dea.__CR0,0,970,600_PT0_SX970_V1___.jpg\" class=\"a-spacing-base\" data-src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/2637c1c5-681a-4b48-8b4f-5c17c6084dea.__CR0,0,970,600_PT0_SX970_V1___.jpg\" style=\"max-width: 100%; vertical-align: top; margin-bottom: 14px !important; width: 50%;\"></div></div><div class=\"celwidget aplus-module 3p-module-b aplus-standard\" cel_widget_id=\"aplus-3p-module-b\" data-csa-c-id=\"iiudd2-ywy4g0-ihhq12-mh2882\" data-cel-widget=\"aplus-3p-module-b\" style=\"min-width: 979px;\"><div class=\"aplus-module-wrapper aplus-3p-fixed-width\" style=\"width: 970px; margin-left: auto; margin-right: auto; text-align: inherit;\"><img alt=\".\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/452fcceb-bb7b-4eb8-a974-485f313847b1.__CR0,0,970,600_PT0_SX970_V1___.jpg\" class=\"a-spacing-base\" data-src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/452fcceb-bb7b-4eb8-a974-485f313847b1.__CR0,0,970,600_PT0_SX970_V1___.jpg\" style=\"max-width: 100%; vertical-align: top; margin-bottom: 14px !important; width: 50%;\"></div></div><div class=\"celwidget aplus-module 3p-module-b aplus-standard\" cel_widget_id=\"aplus-3p-module-b\" data-csa-c-id=\"vrurb5-mmpu6v-n02605-upyo0z\" data-cel-widget=\"aplus-3p-module-b\" style=\"min-width: 979px;\"><div class=\"aplus-module-wrapper aplus-3p-fixed-width\" style=\"width: 970px; margin-left: auto; margin-right: auto; text-align: inherit;\"><img alt=\".\" src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/fd1f5fee-2b66-46d3-a4c3-6ba6fe72d648.__CR0,0,970,600_PT0_SX970_V1___.jpg\" class=\"a-spacing-base\" data-src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/fd1f5fee-2b66-46d3-a4c3-6ba6fe72d648.__CR0,0,970,600_PT0_SX970_V1___.jpg\" style=\"max-width: 100%; vertical-align: top; margin-bottom: 14px !important; width: 50%;\"></div></div></div></div></div></div></td></tr></tbody></table>', '', '', 1, 1, 39, 24, 0, 'typecase-flexbook-touch-keyboard-case-for-ipad-air-5th--4th-gen-20222020--ipad-pro-11-4th3rd2nd-gen-touchpad-keyboard-case-exclusive-10-colors-backlit-360-rotable-variant-3', '', '2023-11-03 09:16:23');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_color`
--

CREATE TABLE `tbl_product_color` (
  `id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product_color`
--

INSERT INTO `tbl_product_color` (`id`, `color_id`, `p_id`) VALUES
(18, 1, 6),
(19, 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_photo`
--

CREATE TABLE `tbl_product_photo` (
  `pp_id` int(11) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `p_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product_photo`
--

INSERT INTO `tbl_product_photo` (`pp_id`, `photo`, `p_id`) VALUES
(6, 'varient6.jpg', 2),
(7, 'varient7.jpg', 2),
(8, 'varient8.jpg', 2),
(12, '12.jpg', 2),
(13, '13.jpg', 2),
(14, '14.jpg', 2),
(21, 'varient21.jpg', 4),
(22, 'varient22.jpg', 4),
(23, 'varient23.jpg', 4),
(24, '24.jpg', 1),
(25, '25.jpg', 1),
(26, '26.jpg', 1),
(27, '27.jpg', 1),
(28, '28.jpg', 1),
(36, '36.jpg', 6),
(37, '37.jpg', 6),
(38, '38.jpg', 6),
(39, '39.jpg', 6),
(40, '40.jpg', 6),
(41, '41.jpg', 6),
(42, '42.jpg', 6),
(81, '81.jpg', 17),
(82, '82.jpg', 17),
(87, 'varient87.jpg', 23),
(88, 'varient88.jpg', 23),
(89, 'varient89.jpg', 23),
(90, 'varient90.jpg', 23),
(91, 'varient91.jpg', 23),
(93, '93.jpg', 24),
(94, '94.jpg', 24),
(95, '95.jpg', 24),
(96, '96.jpg', 24),
(97, '97.jpg', 24),
(98, '98.jpg', 17),
(99, '99.jpg', 17),
(100, '100.jpg', 17),
(106, '106.jpg', 25),
(107, '107.jpg', 25),
(108, '108.jpg', 25),
(109, '109.jpg', 25),
(110, '110.jpg', 25);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_size`
--

CREATE TABLE `tbl_product_size` (
  `id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rating`
--

CREATE TABLE `tbl_rating` (
  `rt_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_service`
--

CREATE TABLE `tbl_service` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settings`
--

CREATE TABLE `tbl_settings` (
  `id` int(11) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `favicon` varchar(255) NOT NULL,
  `footer_about` text NOT NULL,
  `footer_copyright` text NOT NULL,
  `contact_address` text NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `contact_phone` varchar(255) NOT NULL,
  `contact_fax` varchar(255) NOT NULL,
  `contact_map_iframe` text NOT NULL,
  `receive_email` varchar(255) NOT NULL,
  `receive_email_subject` varchar(255) NOT NULL,
  `receive_email_thank_you_message` text NOT NULL,
  `forget_password_message` text NOT NULL,
  `total_recent_post_footer` int(10) NOT NULL,
  `total_popular_post_footer` int(10) NOT NULL,
  `total_recent_post_sidebar` int(11) NOT NULL,
  `total_popular_post_sidebar` int(11) NOT NULL,
  `total_featured_product_home` int(11) NOT NULL,
  `total_latest_product_home` int(11) NOT NULL,
  `total_popular_product_home` int(11) NOT NULL,
  `meta_title_home` text NOT NULL,
  `meta_keyword_home` text NOT NULL,
  `meta_description_home` text NOT NULL,
  `banner_login` varchar(255) NOT NULL,
  `banner_registration` varchar(255) NOT NULL,
  `banner_forget_password` varchar(255) NOT NULL,
  `banner_reset_password` varchar(255) NOT NULL,
  `banner_search` varchar(255) NOT NULL,
  `banner_cart` varchar(255) NOT NULL,
  `banner_checkout` varchar(255) NOT NULL,
  `banner_product_category` varchar(255) NOT NULL,
  `banner_blog` varchar(255) NOT NULL,
  `cta_title` varchar(255) NOT NULL,
  `cta_content` text NOT NULL,
  `cta_read_more_text` varchar(255) NOT NULL,
  `cta_read_more_url` varchar(255) NOT NULL,
  `cta_photo` varchar(255) NOT NULL,
  `featured_product_title` varchar(255) NOT NULL,
  `featured_product_subtitle` varchar(255) NOT NULL,
  `latest_product_title` varchar(255) NOT NULL,
  `latest_product_subtitle` varchar(255) NOT NULL,
  `popular_product_title` varchar(255) NOT NULL,
  `popular_product_subtitle` varchar(255) NOT NULL,
  `testimonial_title` varchar(255) NOT NULL,
  `testimonial_subtitle` varchar(255) NOT NULL,
  `testimonial_photo` varchar(255) NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_subtitle` varchar(255) NOT NULL,
  `newsletter_text` text NOT NULL,
  `paypal_email` varchar(255) NOT NULL,
  `stripe_public_key` varchar(255) NOT NULL,
  `stripe_secret_key` varchar(255) NOT NULL,
  `bank_detail` text NOT NULL,
  `before_head` text NOT NULL,
  `after_body` text NOT NULL,
  `before_body` text NOT NULL,
  `home_service_on_off` int(11) NOT NULL,
  `home_welcome_on_off` int(11) NOT NULL,
  `home_featured_product_on_off` int(11) NOT NULL,
  `home_latest_product_on_off` int(11) NOT NULL,
  `home_popular_product_on_off` int(11) NOT NULL,
  `home_testimonial_on_off` int(11) NOT NULL,
  `home_blog_on_off` int(11) NOT NULL,
  `newsletter_on_off` int(11) NOT NULL,
  `ads_above_welcome_on_off` int(1) NOT NULL,
  `ads_above_featured_product_on_off` int(1) NOT NULL,
  `ads_above_latest_product_on_off` int(1) NOT NULL,
  `ads_above_popular_product_on_off` int(1) NOT NULL,
  `ads_above_testimonial_on_off` int(1) NOT NULL,
  `ads_category_sidebar_on_off` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_settings`
--

INSERT INTO `tbl_settings` (`id`, `logo`, `favicon`, `footer_about`, `footer_copyright`, `contact_address`, `contact_email`, `contact_phone`, `contact_fax`, `contact_map_iframe`, `receive_email`, `receive_email_subject`, `receive_email_thank_you_message`, `forget_password_message`, `total_recent_post_footer`, `total_popular_post_footer`, `total_recent_post_sidebar`, `total_popular_post_sidebar`, `total_featured_product_home`, `total_latest_product_home`, `total_popular_product_home`, `meta_title_home`, `meta_keyword_home`, `meta_description_home`, `banner_login`, `banner_registration`, `banner_forget_password`, `banner_reset_password`, `banner_search`, `banner_cart`, `banner_checkout`, `banner_product_category`, `banner_blog`, `cta_title`, `cta_content`, `cta_read_more_text`, `cta_read_more_url`, `cta_photo`, `featured_product_title`, `featured_product_subtitle`, `latest_product_title`, `latest_product_subtitle`, `popular_product_title`, `popular_product_subtitle`, `testimonial_title`, `testimonial_subtitle`, `testimonial_photo`, `blog_title`, `blog_subtitle`, `newsletter_text`, `paypal_email`, `stripe_public_key`, `stripe_secret_key`, `bank_detail`, `before_head`, `after_body`, `before_body`, `home_service_on_off`, `home_welcome_on_off`, `home_featured_product_on_off`, `home_latest_product_on_off`, `home_popular_product_on_off`, `home_testimonial_on_off`, `home_blog_on_off`, `newsletter_on_off`, `ads_above_welcome_on_off`, `ads_above_featured_product_on_off`, `ads_above_latest_product_on_off`, `ads_above_popular_product_on_off`, `ads_above_testimonial_on_off`, `ads_category_sidebar_on_off`) VALUES
(1, 'logo.png', 'favicon.jpg', '<p>Lorem ipsum dolor sit amet, omnis signiferumque in mei, mei ex enim concludaturque. Senserit salutandi euripidis no per, modus maiestatis scribentur est an.Â Ea suas pertinax has.</p>\r\n', 'Copyright Â© 2022 - Ecommerce Website PHP - Developed By Hammad Hassan', '', 'Info@fitnityhealthcare.com', '+91 96037 77715', '', '', 'support@ecommercephp.com', 'Visitor Email Message from Ecommerce Site PHP', 'Thank you for sending email. We will contact you shortly.', 'A confirmation link is sent to your email address. You will get the password reset information in there.', 4, 4, 5, 5, 5, 6, 8, 'Ecommerce PHP', 'online fashion store, garments shop, online garments', 'ecommerce php project with mysql database', 'banner_login.jpg', 'banner_registration.jpg', 'banner_forget_password.jpg', 'banner_reset_password.jpg', 'banner_search.jpg', 'banner_cart.jpg', 'banner_checkout.jpg', 'banner_product_category.jpg', 'banner_blog.jpg', 'Welcome To Our Ecommerce Website', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, \r\nat usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. ', 'Read More', '#', 'cta.jpg', 'Featured Products', 'Our list on Top Featured Products', 'Latest Products', 'Our list of recently added products', 'Popular Products', 'Popular products based on customer\'s choice', 'Testimonials', 'See what our clients tell about us', 'testimonial.jpg', 'Latest Blog', 'See all our latest articles and news from below', 'Sign-up to our newsletter for latest promotions and discounts.', 'admin@ecom.com', 'pk_test_0SwMWadgu8DwmEcPdUPRsZ7b', 'sk_test_TFcsLJ7xxUtpALbDo1L5c1PN', 'Bank Name: WestView Bank\r\nAccount Number: CA100270589600\r\nBranch Name: CA Branch\r\nCountry: USA', '<div id=\"fb-root\"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \"//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.10&appId=323620764400430\";\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));</script>', '<div id=\"fb-root\"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \"//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.10&appId=323620764400430\";\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));</script>', '<!--Start of Tawk.to Script-->\r\n<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/5ae370d7227d3d7edc24cb96/default\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>\r\n<!--End of Tawk.to Script-->', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping_cost`
--

CREATE TABLE `tbl_shipping_cost` (
  `shipping_cost_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `amount` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping_cost_all`
--

CREATE TABLE `tbl_shipping_cost_all` (
  `sca_id` int(11) NOT NULL,
  `amount` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_size`
--

CREATE TABLE `tbl_size` (
  `size_id` int(11) NOT NULL,
  `size_name` varchar(255) NOT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_size`
--

INSERT INTO `tbl_size` (`size_id`, `size_name`, `status`) VALUES
(1, '12.9 Inch', '1'),
(2, '10.9 Inch', '1'),
(3, '10.9/11 Inch', '1'),
(4, '10.2 Inch', '1'),
(5, ' 8.7 Inch', '1'),
(15, '10.5 Inch', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `mphoto` varchar(300) DEFAULT NULL,
  `heading` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `button_text` varchar(255) NOT NULL,
  `button_url` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social`
--

CREATE TABLE `tbl_social` (
  `social_id` int(11) NOT NULL,
  `social_name` varchar(30) NOT NULL,
  `social_url` varchar(255) NOT NULL,
  `social_icon` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_social`
--

INSERT INTO `tbl_social` (`social_id`, `social_name`, `social_url`, `social_icon`) VALUES
(1, 'Facebook', 'https://www.facebook.com/people/typecase-india/100083491986637/?sk=about', 'fa fa-facebook'),
(2, 'Twitter', '', 'fa fa-twitter'),
(3, 'LinkedIn', '', 'fa fa-linkedin'),
(4, 'Google Plus', '', 'fa fa-google-plus'),
(5, 'Pinterest', '', 'fa fa-pinterest'),
(6, 'YouTube', '', 'fa fa-youtube'),
(7, 'Instagram', '', 'fa fa-instagram'),
(8, 'Tumblr', '', 'fa fa-tumblr'),
(9, 'Flickr', '', 'fa fa-flickr'),
(10, 'Reddit', '', 'fa fa-reddit'),
(11, 'Snapchat', '', 'fa fa-snapchat'),
(12, 'WhatsApp', '', 'fa fa-whatsapp'),
(13, 'Quora', '', 'fa fa-quora'),
(14, 'StumbleUpon', '', 'fa fa-stumbleupon'),
(15, 'Delicious', '', 'fa fa-delicious'),
(16, 'Digg', '', 'fa fa-digg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_state`
--

CREATE TABLE `tbl_state` (
  `id` int(11) NOT NULL,
  `state` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_state`
--

INSERT INTO `tbl_state` (`id`, `state`) VALUES
(1, 'Andhra Pradesh'),
(2, 'Andaman and Nicobar Islands'),
(3, 'Arunachal Pradesh'),
(4, 'Assam'),
(5, 'Bihar'),
(6, 'Chandigarh'),
(7, 'Chhattisgarh'),
(8, 'Dadar and Nagar Haveli'),
(9, 'Daman and Diu'),
(10, 'Delhi'),
(11, 'Lakshadweep'),
(12, 'Puducherry'),
(13, 'Goa'),
(14, 'Gujarat'),
(15, 'Haryana'),
(16, 'Himachal Pradesh'),
(17, 'Jammu and Kashmir'),
(18, 'Jharkhand'),
(19, 'Karnataka'),
(20, 'Kerala'),
(21, 'Madhya Pradesh'),
(22, 'Maharashtra'),
(23, 'Manipur'),
(24, 'Meghalaya'),
(25, 'Mizoram'),
(26, 'Nagaland'),
(27, 'Odisha'),
(28, 'Punjab'),
(29, 'Rajasthan'),
(30, 'Sikkim'),
(31, 'Tamil Nadu'),
(32, 'Telangana'),
(33, 'Tripura'),
(34, 'Uttar Pradesh'),
(35, 'Uttarakhand'),
(36, 'West Bengal');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subscriber`
--

CREATE TABLE `tbl_subscriber` (
  `subs_id` int(11) NOT NULL,
  `subs_email` varchar(255) NOT NULL,
  `subs_date` varchar(100) NOT NULL,
  `subs_date_time` varchar(100) NOT NULL,
  `subs_hash` varchar(255) NOT NULL,
  `subs_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_top_category`
--

CREATE TABLE `tbl_top_category` (
  `tcat_id` int(11) NOT NULL,
  `tcat_name` varchar(255) NOT NULL,
  `show_on_menu` int(1) NOT NULL,
  `cimage` varchar(350) DEFAULT NULL,
  `banner` varchar(300) DEFAULT NULL,
  `mbanner` varchar(300) NOT NULL,
  `description` text,
  `meta_title` text,
  `meta_keyword` text,
  `meta_description` text,
  `show_home` enum('0','1') DEFAULT '0',
  `slug` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_top_category`
--

INSERT INTO `tbl_top_category` (`tcat_id`, `tcat_name`, `show_on_menu`, `cimage`, `banner`, `mbanner`, `description`, `meta_title`, `meta_keyword`, `meta_description`, `show_home`, `slug`) VALUES
(24, 'iPad Keyboard Cases', 1, NULL, NULL, '', NULL, 'iPad Keyboard Cases', 'iPad Keyboard Cases', 'iPad Keyboard Cases', '0', 'ipad-keyboard-cases'),
(25, 'Samsung Keyboard Cases', 1, NULL, NULL, '', NULL, 'Samsung Keyboard Cases', 'Samsung Keyboard Cases', 'Samsung Keyboard Cases', '0', 'samsung-keyboard-cases'),
(26, 'Lenovo Keyboard Cases', 1, NULL, NULL, '', NULL, 'Lenovo Keyboard Cases', 'Lenovo Keyboard Cases', 'Lenovo Keyboard Cases', '0', 'lenovo-keyboard-cases'),
(27, 'Microsoft Keyboard Cases', 0, NULL, NULL, '', NULL, 'Microsoft Keyboard Cases', 'Microsoft Keyboard Cases', 'Microsoft Keyboard Cases', '0', 'microsoft-keyboard-cases'),
(28, 'iPad Screen Protector', 1, NULL, NULL, '', NULL, 'iPad Screen Protector', 'iPad Screen Protector', 'iPad Screen Protector', '0', 'ipad-screen-protector'),
(29, 'iPad Stylus Pencil', 1, NULL, NULL, '', NULL, 'iPad Stylus Pencil', 'iPad Stylus Pencil', 'iPad Stylus Pencil', '0', 'ipad-stylus-pencil'),
(30, 'Xiaomi Keyboard Cases', 1, NULL, NULL, '', NULL, 'Xiaomi Keyboard Cases', 'Xiaomi Keyboard Cases', 'Xiaomi Keyboard Cases', '0', 'xiaomi-keyboard-cases');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(10) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `role` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `full_name`, `email`, `phone`, `password`, `photo`, `role`, `status`) VALUES
(1, 'Admin', 'typecase@gmail.com', '7777777777', '014671d4c2c7ccc5b2925d7c8ab52f65', 'user-1.gif', 'Super Admin', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_video`
--

CREATE TABLE `tbl_video` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `iframe_code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `collection`
--
ALTER TABLE `collection`
  ADD UNIQUE KEY `id_2` (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `ipdb`
--
ALTER TABLE `ipdb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meta_tag`
--
ALTER TABLE `meta_tag`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cid`),
  ADD UNIQUE KEY `cid` (`cid`);

--
-- Indexes for table `tbl_color`
--
ALTER TABLE `tbl_color`
  ADD PRIMARY KEY (`color_id`);

--
-- Indexes for table `tbl_country`
--
ALTER TABLE `tbl_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`cust_id`),
  ADD UNIQUE KEY `cust_id` (`cust_id`);

--
-- Indexes for table `tbl_customer_message`
--
ALTER TABLE `tbl_customer_message`
  ADD PRIMARY KEY (`customer_message_id`);

--
-- Indexes for table `tbl_customer_review`
--
ALTER TABLE `tbl_customer_review`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `tbl_end_category`
--
ALTER TABLE `tbl_end_category`
  ADD PRIMARY KEY (`ecat_id`);

--
-- Indexes for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  ADD PRIMARY KEY (`faq_id`);

--
-- Indexes for table `tbl_language`
--
ALTER TABLE `tbl_language`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `tbl_mid_category`
--
ALTER TABLE `tbl_mid_category`
  ADD PRIMARY KEY (`mcat_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `tbl_photo`
--
ALTER TABLE `tbl_photo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`p_id`),
  ADD UNIQUE KEY `p_id` (`p_id`);

--
-- Indexes for table `tbl_product_color`
--
ALTER TABLE `tbl_product_color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product_photo`
--
ALTER TABLE `tbl_product_photo`
  ADD PRIMARY KEY (`pp_id`);

--
-- Indexes for table `tbl_product_size`
--
ALTER TABLE `tbl_product_size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  ADD PRIMARY KEY (`rt_id`);

--
-- Indexes for table `tbl_service`
--
ALTER TABLE `tbl_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_shipping_cost`
--
ALTER TABLE `tbl_shipping_cost`
  ADD PRIMARY KEY (`shipping_cost_id`);

--
-- Indexes for table `tbl_shipping_cost_all`
--
ALTER TABLE `tbl_shipping_cost_all`
  ADD PRIMARY KEY (`sca_id`);

--
-- Indexes for table `tbl_size`
--
ALTER TABLE `tbl_size`
  ADD PRIMARY KEY (`size_id`),
  ADD UNIQUE KEY `size_id` (`size_id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`social_id`);

--
-- Indexes for table `tbl_state`
--
ALTER TABLE `tbl_state`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `tbl_subscriber`
--
ALTER TABLE `tbl_subscriber`
  ADD PRIMARY KEY (`subs_id`);

--
-- Indexes for table `tbl_top_category`
--
ALTER TABLE `tbl_top_category`
  ADD PRIMARY KEY (`tcat_id`),
  ADD UNIQUE KEY `tcat_name` (`tcat_name`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_video`
--
ALTER TABLE `tbl_video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `collection`
--
ALTER TABLE `collection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ipdb`
--
ALTER TABLE `ipdb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `meta_tag`
--
ALTER TABLE `meta_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_color`
--
ALTER TABLE `tbl_color`
  MODIFY `color_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_country`
--
ALTER TABLE `tbl_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_customer_message`
--
ALTER TABLE `tbl_customer_message`
  MODIFY `customer_message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_customer_review`
--
ALTER TABLE `tbl_customer_review`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_end_category`
--
ALTER TABLE `tbl_end_category`
  MODIFY `ecat_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  MODIFY `faq_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_language`
--
ALTER TABLE `tbl_language`
  MODIFY `lang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `tbl_mid_category`
--
ALTER TABLE `tbl_mid_category`
  MODIFY `mcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_photo`
--
ALTER TABLE `tbl_photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_product_color`
--
ALTER TABLE `tbl_product_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_product_photo`
--
ALTER TABLE `tbl_product_photo`
  MODIFY `pp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `tbl_product_size`
--
ALTER TABLE `tbl_product_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  MODIFY `rt_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_service`
--
ALTER TABLE `tbl_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_shipping_cost`
--
ALTER TABLE `tbl_shipping_cost`
  MODIFY `shipping_cost_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_shipping_cost_all`
--
ALTER TABLE `tbl_shipping_cost_all`
  MODIFY `sca_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_size`
--
ALTER TABLE `tbl_size`
  MODIFY `size_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `social_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_state`
--
ALTER TABLE `tbl_state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tbl_subscriber`
--
ALTER TABLE `tbl_subscriber`
  MODIFY `subs_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_top_category`
--
ALTER TABLE `tbl_top_category`
  MODIFY `tcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_video`
--
ALTER TABLE `tbl_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
