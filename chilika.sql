-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2018 at 02:56 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chilika`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_logs`
--

CREATE TABLE `admin_logs` (
  `login_id` int(11) NOT NULL,
  `login_uid` varchar(100) NOT NULL,
  `login_date_time` varchar(100) NOT NULL,
  `login_ip` varchar(100) NOT NULL,
  `login_user` varchar(100) DEFAULT NULL,
  `login_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_logs`
--

INSERT INTO `admin_logs` (`login_id`, `login_uid`, `login_date_time`, `login_ip`, `login_user`, `login_status`) VALUES
(1, '1', '15-03-2018 05:04', '::1', NULL, 0),
(2, '1', '15-03-2018 05:10', '::1', NULL, 0),
(3, '1', '15-03-2018 05:10', '::1', NULL, 0),
(4, '1', '15-03-2018 05:38', '::1', NULL, 0),
(5, '1', '15-03-2018 05:39', '::1', NULL, 0),
(6, '1', '15-03-2018 05:41', '::1', NULL, 0),
(7, '1', '15-03-2018 05:42', '::1', NULL, 0),
(8, '1', '15-03-2018 05:42', '::1', NULL, 0),
(9, '1', '15-03-2018 05:46', '::1', NULL, 0),
(10, '', '', '', 'demo', 0),
(11, '', '15-03-2018 06:05', '::1', 'admin546546', 0),
(12, '1', '15-03-2018 06:05', '::1', 'admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `site_controller`
--

CREATE TABLE `site_controller` (
  `admin_id` int(11) NOT NULL,
  `admin_user` varchar(100) NOT NULL,
  `admin_pass` varchar(100) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_phone` varchar(100) NOT NULL,
  `admin_type` int(1) NOT NULL DEFAULT '0',
  `admin_status` char(1) NOT NULL DEFAULT '0',
  `admin_regdate` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `site_controller`
--

INSERT INTO `site_controller` (`admin_id`, `admin_user`, `admin_pass`, `admin_name`, `admin_email`, `admin_phone`, `admin_type`, `admin_status`, `admin_regdate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'demo', 'shimamca@gmail.com', '999999999', 1, '1', '2018-03-11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_banner`
--

CREATE TABLE `tbl_banner` (
  `photo_id` int(11) NOT NULL,
  `photo_caption` varchar(250) DEFAULT NULL,
  `photo_file` varchar(250) DEFAULT NULL,
  `photo_date` varchar(200) DEFAULT NULL,
  `sort_order` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_banner`
--

INSERT INTO `tbl_banner` (`photo_id`, `photo_caption`, `photo_file`, `photo_date`, `sort_order`, `status`) VALUES
(8, 'The Sanctuary of Birds', 'banner_1520837722.jpg', '12-03-2018', 1, 1),
(9, 'The story of Nature', 'banner_1520837664.jpg', '12-03-2018', 2, 1),
(10, 'demo abc', 'banner_1520837190.png', '15-03-2018', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_images`
--

CREATE TABLE `tbl_images` (
  `id` int(11) NOT NULL,
  `c_id` int(11) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_images`
--

INSERT INTO `tbl_images` (`id`, `c_id`, `photo`) VALUES
(1, 1, 'image_1384914326.jpg'),
(2, 2, 'image_1384914401.jpg'),
(3, 3, 'image_1384914630.jpg'),
(4, 4, 'image_1384914936.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE `tbl_news` (
  `id` int(11) NOT NULL,
  `title` text,
  `category` varchar(20) DEFAULT NULL,
  `publish_date` varchar(50) DEFAULT NULL,
  `file_name` varchar(100) DEFAULT NULL,
  `description` text,
  `status` int(11) DEFAULT '1',
  `sort_order` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_news`
--

INSERT INTO `tbl_news` (`id`, `title`, `category`, `publish_date`, `file_name`, `description`, `status`, `sort_order`) VALUES
(26, 'Ramsar Wetland Conservation Award -2002', 'Events', '06-11-2013', '', '<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div><img src=\"images/wpe1E.gif\" width=\"242\" height=\"178\" align=\"right\" alt=\"\" />The Chilika Development Authority <br />\r\n            Att. Mr Ajit Pattnaik <br />\r\n            C-5, BJB Nagar <br />\r\n            Bhubaneswar <br />\r\n            Odisha <br />\r\n            INDIA 751014<br />\r\n            Gland, 10 June 2002<br />\r\n            &nbsp;</div>\r\n            <div>Dear Mr Pattnaik,</div>\r\n            <div>It is my great pleasure to inform you that the Jury to the Ramsar Wetland Conservation Award has decided to present one of the three Awards for 2002 to the Chilika Development Authority in view of its outstanding achievements in the field of restoration and wise use of wetlands, as well as the impressive way in which local communities have been included in these activities. To give you more detailed information about the Award, a copy of the call for nominations with the rules for the Award as established by the Convention is being sent by post. Information about the Ramsar Convention will be attached. More details can also be found on our web site at www.ramsar.org<br />\r\n            <br />\r\n            <strong>For your information, the other Award winners are:</strong><br />\r\n            <img src=\"images/bullet.png\" width=\"7\" height=\"7\" alt=\"\" /> A consortium of NGOs working in the Morava-Dyje Floodplain transboundary region in Europe (Austria, Czech Republic and Slovak Republic). The four organisations are Distelverein (Austria), Daphne (Slovak Republic), Veronika (Slovak Republic), and the WWF International-Danube Carpathian Programme (based in Austria): and<br />\r\n            <img src=\"images/bullet.png\" width=\"7\" height=\"7\" alt=\"\" /> The Banrock Station Initiative of the BRL Hardy Wine Company, an Australian compan, for its outstanding achievements in the fields of restoration and wise use of wetlands on its property, public awareness and sponsorship of wetland conservation in Australia and other countries.<br />\r\n            <br />\r\n            In addition, the Jury has decided to award a &amp;ldquo:Recognition of Excellence&amp;rdquo: to two further nominees: Dr Max Finlayson, an Australian scientist, and Dr Monique Coulet, a French scientist. Both are being recognised for their outstanding contribution to wetland science and for their commitment to wetland conservation and wise use on the ground.<br />\r\n            &nbsp;</div>\r\n            <div>I would be grateful if you would let me know at your earliest convenience whether the Chilika Development Authority accepts the Award, which includes the Evian Special Prize consisting of US$ 10,000.00, generously donated by the Danone Group as part of a collaborative project with the Ramsar Convention.</div>\r\n            <div>The Ramsar Award will be presented to the winners at the opening ceremony of the 8th Meeting of the Conference of the Parties to the Convention, which will take place in Valencia, Spain, on 18 November 2002 at 10 a.m. Hopefully, the ceremony will be presided over by the Crown Prince of Spain, H.R.H. Pr&iacute;:ncipe Felipe de Borb&oacute;:n y Grecia.<br />\r\n            &nbsp;</div>\r\n            <div>The Conference of the Parties will bring together the delegates of the 131 countries that so far have joined the Convention, plus many representatives of international organisations and NGOs.<br />\r\n            &nbsp;</div>\r\n            <div>We would be grateful if, between now and the ceremony, you would consider and let us know to what use the Evian Special Prize could best be put. In this way, your intentions can be announced at the latest at the time of the Award ceremony.</div>\r\n            <div>After an initial announcement of the laureates on our web site and to our Contracting Parties, it is our intention to prepare a longer article, maybe also with a short video footage for showing at the ceremony on 18 November, and we will be in touch with you in this respect.</div>\r\n            <div>I look forward to hearing from you.</div>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td align=\"right\">Yours sincerely,<br />\r\n            <img src=\"images/ramsar3.gif\" width=\"100\" height=\"50\" alt=\"\" /> <br />\r\n            Delmar Blasco,&nbsp;Secretary General</td>\r\n        </tr>\r\n        <tr>\r\n            <td>For further information about the Ramsar Convention on Wetlands, please contact the Ramsar Convention Bureau, Rue Mauverney 28, CH-1196 Gland, Switzerland (tel +41 22 999 0170, fax +41 22 999 0169, e-mail: <a href=\"mailto:ramsar@ramsar.org\" class=\"topmenu\"><strong>ramsar@ramsar.org</strong></a>. Posted 19 April 2000, updated 2 November 2006, Dwight Peck, Ramsar.: <a href=\"www.ramsar.org\" target=\"_blank\" class=\"topmenu\"><strong>www.ramsar.org</strong></a></td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;:</td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <div><strong>The Ramsar Wetland Conservation Award and Evian Special Prize - 2002- Citation</strong></div>\r\n            <div><img src=\"images/wca.jpg\" width=\"160\" height=\"170\" align=\"right\" alt=\"\" />The Chilika Development Authority (CDA) receives the Ramsar Award for its impressive work and outstanding achievements in restoring the Chilika Lake Ramsar Site. This restoration has been carried out based on the principles of wise use and integrated management, and with a major emphasis on the participation of the local population and their shared decision-making, as well as capacity building. Chilika Lake is a striking example of how restoration of the ecological characteristics of a site can result not only in increased biodiversity (plant and animal species, notably birds), but also in a spectacular increase in fish catches (including the reappearance of some economic species) and other socio-economic benefits to the local population.<br />\r\n            &nbsp;</div>\r\n            <div>Chilika Lake (Odisha, India), the largest lagoon on the east coast of India, was added to the Ramsar List of Wetlands of International Importance in 1981. It is a 116,500 hectare brackish lagoon separated from the Bay of Bengal by a long sandy ridge. Because of serious degradation brought about mainly by siltation and choking of the seawater inlet channel, resulting inter alia in the proliferation of invasive freshwater species, the decrease in fish productivity,and an overall loss of biodiversity, Chilika Lake was added to the List of Ramsar sites in danger (the Montreux Record) in 1993. In addition to its importance for water birds (over one million migratory birds winter there) and biodiversity in general, significant numbers of people are dependent upon the lake\'s resources. Created in 1992 to address these problems, the Chilika Development Authority has implemented a bold programme of action to restore the ecosystem action to restore the ecosystem and to improve the socio-economic conditions of the communities living around the lagoon and on its islands. One of the major interventions was the desiltation of the channel connecting the lagoon to the sea and opening of a new mouth to restore the natural flows of water and salinity levels. This resulted notably, in only a couple of years, in a substantial increase in the lagoon\'s fish yield and a reduction of freshwater weeds. Other measures include catchments management in a participatory manner: protection of bird habitat and of bird species: economic incentives to the local population to stop poaching of birds: measures to improve the socio-economic conditions, such as training programmes to develop eco-tourism, provision of solar streetlight systems to island villages, development of a ferry service for isolated villages, construction of landing facilities for fisher folk, as well as education and environmental awareness activities.<br />\r\n            &nbsp;</div>\r\n            <div><img src=\"images/award-ramsarr.jpg\" width=\"280\" height=\"200\" align=\"right\" alt=\"\" />The above-mentioned activities were carried out based on the scientific studies and recommendations of the premier institutes of the country, with the involvement of the local population and the support of Wetlands International and local NGOs, as well as grass-root and community-based organisations, under the guidance of the CDA Chief Executive Officer, Ajit Pattnaik, a native of the region who devoted himself wholeheartedly to the task. The restoration of Chilika lagoon derives its uniqueness from the strong participation by local communities, linkage with various national and international institutions, and intensive monitoring and assessment systems. In 2001, a Ramsar Advisory Mission was carried out at the Chilika Lake Ramsar site, which concluded with the recommendation that the site should be removed from the Montreux Record, provided that the management measures are continued and monitored. The case of Chilika Lake is a perfect example of how the listing of a site on the Montreux Record can be used to promote measures to correct change in ecological character of a site, and also to improve the socio-economic conditions of the population living in and around the site.<br />\r\n            &nbsp;</div>\r\n            <div>The Ramsar Award is being given to the Chilika Development Authority in recognition of the exemplary restoration work carried out with the active involvement of all stakeholders.<br />\r\n            &nbsp;</div>\r\n            <div>From left: Chaman Trisal, Wetlands International, South Asia Programme: Najam Khurshid, Ramsar Bureau: A. J. Pattnaik, Chilika Development Authority: Max Finlayson, Ramsar expert consultant: Sidharth Kaul, Ministry of Environment and Forests, on the occasion of the Ramsar Advisory Mission to Chilika Lake, 2001.</div>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 1, 0),
(32, 'test', 'Events', '11-03-2018 10:59PM', 'newsevents_1520747089.jpg', '<div>&nbsp;dghfdhdh</div>', 1, 2),
(33, 'test one', 'Events', '11-03-2018 10:59PM', 'newsevents_1520747681.jpg', '<div>&nbsp;dghfdhdh hdfghgf</div>', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_photo_category`
--

CREATE TABLE `tbl_photo_category` (
  `category_id` int(10) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_url` varchar(150) DEFAULT NULL,
  `category_status` int(11) DEFAULT '1',
  `sort_order` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_photo_category`
--

INSERT INTO `tbl_photo_category` (`category_id`, `category_name`, `category_url`, `category_status`, `sort_order`) VALUES
(67, 'Media abc', 'media-abc', 1, 1),
(62, 'Photos', 'photos', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_photo_gallery`
--

CREATE TABLE `tbl_photo_gallery` (
  `photo_id` int(11) NOT NULL,
  `photo_caption` varchar(255) NOT NULL,
  `photo_file` varchar(255) NOT NULL,
  `publish_date` varchar(50) DEFAULT NULL,
  `photo_date` varchar(255) NOT NULL,
  `photo_category` varchar(250) NOT NULL,
  `photo_status` int(11) DEFAULT '1',
  `sort_order` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_photo_gallery`
--

INSERT INTO `tbl_photo_gallery` (`photo_id`, `photo_caption`, `photo_file`, `publish_date`, `photo_date`, `photo_category`, `photo_status`, `sort_order`) VALUES
(114, 'Kalijai', 'photo_140318194212.jpg', '14-03-2018 07:42PM', '14-Mar-2018', '62', 1, 2),
(90, 'Kalijai', 'photo_0511130928222.jpg', NULL, '06-Dec-2013', '62', 1, 1),
(148, 'ccc', 'photo_1203181543162.png', NULL, '12-Mar-2018', '67', 1, 8),
(147, 'bbb', 'photo_1203181543161.jpg', NULL, '12-Mar-2018', '67', 1, 7),
(146, 'aaa', 'photo_1203181543160.png', NULL, '12-Mar-2018', '67', 1, 6),
(143, 'Activities', 'photo_120318154247.jpg', NULL, '12-Mar-2018', '67', 1, 4),
(144, 'Activities aaa', 'photo_120318154233.jpg', NULL, '12-Mar-2018', '67', 1, 5),
(149, 'sadas', 'photo_1203181651510.jpg', 'Array', '12-Mar-2018', '67', 1, 9),
(150, 'dfgfdg', 'photo_1203181651511.jpg', '03-03-2018 04:55PM', '12-Mar-2018', '67', 1, 10),
(151, 'dfgdfg', 'photo_1203181659170.jpg', 'Array', '12-Mar-2018', '67', 1, 11),
(152, 'sdfgds', 'photo_1203181659171.png', 'Array', '12-Mar-2018', '67', 1, 12),
(153, 'dsad dgdf', 'photo_1203181724260.jpg', '01-03-2018 05:24PM', '15-Mar-2018', '67', 1, 2),
(154, 'dgfdg ac', 'photo_1203181724261.jpg', '02-03-2018 05:24PM', '15-Mar-2018', '67', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_logs`
--
ALTER TABLE `admin_logs`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `site_controller`
--
ALTER TABLE `site_controller`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_banner`
--
ALTER TABLE `tbl_banner`
  ADD PRIMARY KEY (`photo_id`);

--
-- Indexes for table `tbl_images`
--
ALTER TABLE `tbl_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_photo_category`
--
ALTER TABLE `tbl_photo_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_photo_gallery`
--
ALTER TABLE `tbl_photo_gallery`
  ADD PRIMARY KEY (`photo_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_logs`
--
ALTER TABLE `admin_logs`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `site_controller`
--
ALTER TABLE `site_controller`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_banner`
--
ALTER TABLE `tbl_banner`
  MODIFY `photo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_images`
--
ALTER TABLE `tbl_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tbl_photo_category`
--
ALTER TABLE `tbl_photo_category`
  MODIFY `category_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `tbl_photo_gallery`
--
ALTER TABLE `tbl_photo_gallery`
  MODIFY `photo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
