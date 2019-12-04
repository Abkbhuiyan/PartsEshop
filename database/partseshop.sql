-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2019 at 07:21 AM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `partseshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(9, 9, 1, 1),
(10, 16, 9, 1),
(11, 13, 2, 2),
(12, 13, 1, 1),
(13, 13, 5, 1),
(14, 18, 10, 1),
(15, 18, 5, 1),
(16, 20, 7, 1),
(17, 20, 17, 1),
(18, 20, 2, 21),
(20, 23, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'CNG Spare Parts', 'laptops'),
(2, 'Motor Bike Spare Parts', 'desktop-pc'),
(3, 'CNGs', 'tablets'),
(4, 'Bikes', 'tablets'),
(6, 'Car Spare Parts', 'laptops');

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `ID` int(10) NOT NULL,
  `userID` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `transaction` varchar(100) NOT NULL,
  `role` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`ID`, `userID`, `amount`, `transaction`, `role`) VALUES
(25, 21, 59999, 'ab4582901d', 0),
(26, 21, 59999, 'cash on delivery', 0),
(27, 21, 59999, 'cash on delivery', 0),
(28, 21, 59999, 'as', 0),
(29, 21, 59999, 'aaadsdfsdf', 0),
(30, 21, 59999, 'qwe', 0),
(31, 21, 59999, 'ab4582901d', 0),
(32, 21, 59999, 'ab4582901d', 0),
(33, 21, 59999, 'ab4582901d', 0),
(34, 21, 59999, 'ab4582901d', 0),
(35, 21, 35072900, '123asdfghj', 0),
(36, 0, 0, 'qwe', 0),
(37, 21, 0, 'qwe', 0),
(38, 21, 0, 'qwe', 0),
(39, 24, 500000, 'cash on delivery', 0),
(40, 24, 485000, 'cash on delivery', 0),
(41, 24, 485000, 'cash on delivery', 0),
(42, 24, 485000, 'cash on delivery', 0),
(43, 24, 29900000, 'cash on delivery', 0),
(44, 24, 29900000, 'cash on delivery', 0),
(45, 24, 29900000, 'cash on delivery', 0),
(46, 24, 485000, 'cash on delivery', 0),
(47, 24, 480000, 'cash on delivery', 0);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `ID` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`ID`, `name`, `email`, `subject`, `comment`) VALUES
(6, 'konok mahamud', 'konokmahamud22@gmail.com', 'dewqed', 'dfdfdsf'),
(7, 'md prince', 'shaharuf@yahoo.com', 'sub', 'please help'),
(8, 'rim', 'shaharufs@gmail.com', 'sub', '999999999999999999999999'),
(10, 'md prince', 'konokmahamud22@gmail.com', 'subdjjehh', 'dhgawdghbdejbdfhb'),
(11, 'md prince', '100266@daffodil.ac', 'help', 'please contact help');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_address`
--

CREATE TABLE `delivery_address` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `house_no` varchar(25) NOT NULL,
  `street` varchar(256) NOT NULL,
  `post_code` int(4) NOT NULL,
  `police_stattion` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery_address`
--

INSERT INTO `delivery_address` (`id`, `order_id`, `house_no`, `street`, `post_code`, `police_stattion`, `district`) VALUES
(1, 47, '34', ' sjkdjkf', 1234, 'jkefjwef', 'jkjkr');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`, `quantity`) VALUES
(1, 1, 'CNG Kit', '<p>Riding on unfathomable volumes of industrial expertise, we are providing a broad array of&nbsp;<strong>CNG Kit.</strong><br />\r\n<strong>Features</strong>:</p>\r\n\r\n<ul>\r\n	<li>Perfect finish</li>\r\n	<li>Simple installation</li>\r\n	<li>High durability</li>\r\n</ul>\r\n', 'cng-kit', 5000, 'cng-kit_1565196259.jpg', '2019-09-16', 2, 100),
(3, 1, 'CNG Sequential Reducer', '<h2>We are a unique entity in this industry, actively engaged in offering a premium quality array of&nbsp;<strong>CNG Sequential Reducer.</strong><br />\r\n<strong>Features</strong>:</h2>\r\n\r\n<ul>\r\n	<li>Easy installation</li>\r\n	<li>Reliable functioning</li>\r\n	<li>Superior finish</li>\r\n</ul>\r\n', 'cng-sequential-reducer', 1500, 'cng-sequential-reducer_1565195750.jpg', '2019-09-17', 1, 100),
(4, 1, 'CNG MPFI Indicator Switch', '<p>We are devoted towards offering the qualitative range of&nbsp;<strong>CNG MPFI Indicator Switch,</strong>&nbsp;as per client&rsquo;s precise need and requirements.<br />\r\n<strong>Features</strong>:</p>\r\n\r\n<ul>\r\n	<li>Clear indications</li>\r\n	<li>Simple installation</li>\r\n	<li>Optimum finish</li>\r\n</ul>\r\n', 'cng-mpfi-indicator-switch', 1750, 'cng-mpfi-indicator-switch_1565196479.jpg', '2019-09-15', 5, 100),
(5, 2, 'Car Parts', '<p>9.7 inch Retina Display, 2048 x 1536 Resolution, Wide Color and True Tone Display</p>\r\n\r\n<p>Apple iOS 9, A9X chip with 64bit architecture, M9 coprocessor</p>\r\n\r\n<p>12 MP iSight Camera, True Tone Flash, Panorama (up to 63MP), Four-Speaker Audio</p>\r\n\r\n<p>Up to 10 Hours of Battery Life</p>\r\n\r\n<p>iPad Pro Supports Apple Smart Keyboard and Apple Pencil</p>\r\n', 'car-parts', 339, 'apple-9-7-ipad-32-gb-gold_1568540923.jpg', '2019-04-15', 1, 100),
(6, 1, 'CNG Pressure Reducer', '<p>In line with clients&#39; diverse requirements, we are involved in providing an optimum quality range of&nbsp;<strong>CNG Pressure Reducer.</strong><br />\r\n<strong>Features</strong>:</p>\r\n\r\n<ul>\r\n	<li>Perfect finish</li>\r\n	<li>Precise design</li>\r\n	<li>Easy to install</li>\r\n</ul>\r\n', 'cng-pressure-reducer', 449, 'cng-pressure-reducer_1565195944.jpg', '0000-00-00', 0, 100),
(8, 1, 'Car CNG Kit', '<p>Being a leader in the industry, we are engaged in offering a qualitative range of&nbsp;<strong>Car CNG Kit</strong>&nbsp;to our clients.<br />\r\n<strong>Features</strong>:</p>\r\n\r\n<ul>\r\n	<li>Easy installation</li>\r\n	<li>Fine finish</li>\r\n	<li>Precise design</li>\r\n</ul>\r\n', 'car-cng-kit', 3500, 'car-cng-kit_1565196087.jpg', '0000-00-00', 0, 100),
(9, 2, 'Motor Parts', '<p>- Top performance for playing eSports and more&nbsp;<br />\r\n<br />\r\n- NVIDIA GeForce GTX graphics deliver smooth visuals&nbsp;<br />\r\n<br />\r\n- GeForce Experience delivers updates straight to your PC&nbsp;<br />\r\n<br />\r\nThe PC Specialist&nbsp;<strong>Vortex Core Lite&nbsp;</strong>is part of our Gaming range, bringing you the most impressive PCs available today. It has spectacular graphics and fast processing performance to suit the most exacting players.</p>\r\n', 'motor-parts', 599.99, 'pc-specialist-vortex-core-lite-gaming-pc_1568541078.jpg', '2019-09-17', 1, 100),
(10, 2, 'Bridgestone Exedra Max Cruiser and Touring Tire ', '<p>Features:</p>\r\n\r\n<ul>\r\n	<li>State-of-the-art pattern designs created specifically for cruisers</li>\r\n	<li>Central grooves running around the tire provide enhanced water evacuation properties, creating excellent wet grip and riding comfort</li>\r\n	<li>The grooves to the left and right provide ideal rigidity and linear handling</li>\r\n	<li>The center of the tread has a wide contact area to increase traction and wear resistance</li>\r\n	<li>EXEDRA MAX is available in an variety of sizes to fit all Japanese cruisers</li>\r\n	<li>Available in three basic structures: radial, bias and belted bias</li>\r\n	<li>S-rated for speeds up to 112 mph; H-rated for speeds up to 130 mph; V-rated for speeds up to 149+ mph; W-rated for speeds of 168+ mph</li>\r\n</ul>\r\n', 'bridgestone-exedra-max-cruiser-and-touring-tire', 599.99, 'bridgestone-exedra-max-cruiser-and-touring-tire_1565198264.JPG', '2019-09-14', 1, 100),
(11, 2, 'Dunlop Sportmax GPR-300 Motorcycle Tire', '<p>The Dunlop Sportmax GPR-300 Motorcycle Tire is one of the newest editions to the Sportmax family featuring a optimized construction to enhance handling and responsiveness for street riding. A advanced belt design and Joint less Band (JLB) rear tire construction utilizes a continuously wound belt for smooth performance and consistent tire contact patch while radial tire technology provides enhanced grip in wet and dry conditions.<br />\r\n&nbsp; &nbsp;<strong>Features:</strong></p>\r\n\r\n<ul>\r\n	<li>Radial tire technology provides enhanced grip in wet and dry conditions.</li>\r\n	<li>A advanced belt design and Joint-less Band (JLB) rear tire construction utilizes a continuously wound belt for smooth performance and consistent tire contact patch.</li>\r\n	<li>Optimized construction to enhance handling and responsiveness for street riding.</li>\r\n	<li>Radial tire for small displacement bikes</li>\r\n	<li>Aggressive sport-derived tread pattern for enhanced on-bike appearance.</li>\r\n</ul>\r\n', 'dunlop-sportmax-gpr-300-motorcycle-tire', 489.98, 'dunlop-sportmax-gpr-300-motorcycle-tire_1565198061.JPG', '2019-09-15', 4, 100),
(12, 2, 'CNG Sensor', '<p><strong>Being one of the renowned firms in the industry, we are decidedly involved in providing a premium quality array of&nbsp;CNG Sensor.<br />\r\nFeatures:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>High sensitivity</strong></li>\r\n	<li><strong>High durability</strong></li>\r\n	<li><strong>Accurate reading</strong></li>\r\n</ul>\r\n', 'cng-sensor', 149, 'cng-sensor_1565195595.jpg', '2018-05-12', 3, 100),
(13, 2, 'Metzeler ME 888 Marathon Ultra Motorcycle TireÂ ', '<p>New from Metzeler the Triple Eight ME 888 Marathon Ultra Motorcycle Tire that combines long tread life with the handling and performance you&#39;d expect from Metzeler<br />\r\n&nbsp; &nbsp;<strong>Features</strong></p>\r\n\r\n<ul>\r\n	<li>Ultra high mileage coupled with Metzeler performance and handling</li>\r\n	<li>Tubeless (TL)</li>\r\n	<li>H-rated for speeds up to 130 mph, V-rated for speeds up to 149 mph, (V)-rated for speeds of 149+ mph or (W) rated for speeds of 168+ mph</li>\r\n	<li>Wide Whitewall sizes available</li>\r\n	<li>Technology offering consistent performance throughout the tire&#39;s life</li>\r\n	<li>Specifically designed for custom touring bikes</li>\r\n	<li>Outstanding high and low speed stability and smooth handling</li>\r\n</ul>\r\n', 'metzeler-me-888-marathon-ultra-motorcycle-tire', 7999, 'metzeler-me-888-marathon-ultra-motorcycle-tire_1565198722.JPG', '2019-09-14', 4, 100),
(14, 1, 'CNG Sponsor', '<p>- Multi-task with ease thanks to Intel&reg; i5 processor&nbsp;<br />\r\n<br />\r\n- Prepare for battle with NVIDIA GeForce GTX graphics card&nbsp;<br />\r\n<br />\r\n- VR ready for the next-generation of immersive gaming and entertainment<br />\r\n<br />\r\n- Tool-less upgrade helps you personalise your system to your own demands&nbsp;<br />\r\n<br />\r\nPart of our Gaming range, which features the most powerful PCs available today, the Lenovo&nbsp;<strong>Legion Y520 Gaming PC</strong>&nbsp;has superior graphics and processing performance to suit the most demanding gamer.</p>\r\n', 'cng-sponsor', 899.99, 'lenovo-legion-y520-gaming-pc_1568540986.jpg', '2018-05-10', 13, 100),
(16, 2, 'Tires', '<p>Processor: Intel&reg; CoreTM i3-6100 Processor- Dual-core- 3.7 GHz- 3 MB cache</p>\r\n\r\n<p>Memory (RAM): 8 GB DDR4 HyperX, Storage: 1 TB HDD, 7200 rpm</p>\r\n\r\n<p>Graphics card: NVIDIA GeForce GTX 950 (2 GB GDDR5), Motherboard: ASUS H110M-R</p>\r\n\r\n<p>USB: USB 3.0 x 3- USB 2.0 x 5, Video interface: HDMI x 1- DisplayPort x 1- DVI x 2, Audio interface: 3.5 mm jack, Optical disc drive: DVD/RW, Expansion card slot PCIe: (x1) x 2</p>\r\n\r\n<p>Sound: 5.1 Surround Sound support PSU Corsair: VS350, 350W, Colour: Black- Green highlights, Box contents: PC Specialist Vortex Core- AC power cable</p>\r\n', 'tires', 649.99, 'pc-specialist-vortex-core-ii-gaming-pc_1568541052.jpg', '2018-05-10', 2, 100),
(17, 4, '125 CC Bike, Black', '<p>The next generation of our best-selling Fire tablet ever - now thinner, lighter, and with longer battery life and an improved display. More durable than the latest iPad</p>\r\n\r\n<p>Beautiful 7&quot; IPS display with higher contrast and sharper text, a 1.3 GHz quad-core processor, and up to 8 hours of battery life. 8 or 16 GB of internal storage and a microSD slot for up to 256 GB of expandable storage.</p>\r\n', '125-cc-bike-black', 49.99, 'amazon-fire-7-tablet-alexa-2017-8-gb-black_1568540153.jpg', '2019-07-11', 1, 100),
(18, 4, 'Full Body Parts (Bike)', '<p>Take your personal assistant with you wherever you go with this Amazon Fire HD 8 tablet featuring Alexa voice-activated cloud service. The slim design of the tablet is easy to handle, and the ample 8-inch screen is ideal for work or play. This Amazon Fire HD 8 features super-sharp high-definition graphics for immersive streaming.</p>\r\n', 'full-body-parts-bike', 79.99, 'amazon-fire-hd-8-tablet-alexa-2017-16-gb-black_1568540807.jpg', '2019-09-16', 1, 100),
(19, 4, 'Engine Parts.', '<p>The next generation of our best-reviewed Fire tablet, with up to 12 hours of battery life, a vibrant 8&quot; HD display, a 1.3 GHz quad-core processor, 1.5 GB of RAM, and Dolby Audio. More durable than the latest iPad.</p>\r\n\r\n<p>16 or 32 GB of internal storage and a microSD slot for up to 256 GB of expandable storage.</p>\r\n', 'engine-parts', 99.99, 'amazon-fire-hd-8-tablet-alexa-2017-32-gb-black_1568540853.jpg', '2018-05-10', 1, 100),
(27, 1, 'CNG Indicator Switch', '<p>To cater the variegated needs of our esteemed customers, we are highly engaged in offering a wide array of&nbsp;<strong>CNG Indicator Switch.</strong><br />\r\n<strong>Features</strong>:</p>\r\n\r\n<ul>\r\n	<li>Easy to install</li>\r\n	<li>Durable finish</li>\r\n	<li>Precise design</li>\r\n</ul>\r\n', 'cng-indicator-switch', 1599, 'cng-indicator-switch_1565196650.jpg', '2019-04-14', 1, 100),
(28, 4, 'GPR-300 Motorcycle Tire', '<p>See the bigger picture and communicate in a whole new way. With the Galaxy Note8 in your hand, bigger things are just waiting to happen.&nbsp;</p>\r\n\r\n<h3>The Infinity Display that&#39;s larger than life.&nbsp;</h3>\r\n\r\n<p>More screen means more space to do great things. Go big with the Galaxy Note8&#39;s 6.3&quot; screen. It&#39;s the largest ever screen on a Note device and it still fits easily in your hand.</p>\r\n\r\n<p>*Infinity Display: a near bezel-less, full-frontal glass, edge-to-edge screen.</p>\r\n\r\n<p>*Screen measured diagonally as a full rectangle without accounting for the rounded corners.</p>\r\n\r\n<p>Use the S Pen to express yourself in ways that make a difference. Draw your own emojis to show how you feel or write a message on a photo and send it as a handwritten note. Do things that matter with the S Pen.</p>\r\n\r\n<p>*Image simulated for illustration purpose only.</p>\r\n', 'gpr-300-motorcycle-tire', 829, 'samsung-note-8_1568541318.JPG', '2019-09-17', 1, 100),
(29, 5, 'Car Parts', '<h2>The revolutionary camera that adapts like the human eye.&nbsp;</h2>\r\n\r\n<h3>Capture stunning pictures in bright daylight and super low light.</h3>\r\n\r\n<p>Our category-defining Dual Aperture lens adapts like the human eye. It&#39;s able to automatically switch between various lighting conditions with ease&mdash;making your photos look great whether it&#39;s bright or dark, day or night.</p>\r\n\r\n<p>*Dual Aperture supports F1.5 and F2.4 modes. Installed on the rear camera (Galaxy S9)/rear wide camera (Galaxy S9+).</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.samsung.com/global/galaxy/galaxy-s9/images/galaxy-s9_slow_gif_visual_l.jpg\" style=\"height:464px; width:942px\" />Add music. Make GIFs. Get likes</p>\r\n\r\n<p>Super Slow-mo lets you see the things you could have missed in the blink of an eye. Set the video to music or turn it into a looping GIF, and share it with a tap. Then sit back and watch the reactions roll in.</p>\r\n', 'car-parts', 889.99, 'samsung-galaxy-s9-128-gb_1568541273.jpg', '2018-07-09', 3, 100),
(30, 3, 'CNG Auto RickShaw', '<p>Vehicle Model&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Chief 711 CNG Pass</p>\r\n\r\n<p>Sitting Capacity&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6 + Driver</p>\r\n\r\n<p>Color&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Yellow Green And Black</p>\r\n\r\n<p>Fuel Type&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Petrol And CNG</p>\r\n\r\n<p>Tank Capacity&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Gas 6.8 Kg Petrol 3.00 Ltr.</p>\r\n', 'cng-auto-rickshaw', 299000, 'cng-auto-rickshaw.jpg', '2019-09-24', 1, 100),
(31, 3, 'CNG Auto RickShaw New Model', '', 'cng-auto-rickshaw-new-model', 349900, 'cng-auto-rickshaw-new-model.jpg', '2019-09-17', 1, 100),
(32, 6, 'Bullet alloy wheels', '<p>Neo Wheels provides&nbsp;<strong>14&quot; Bullet alloy wheels</strong>&nbsp;that are suitably fitted in the vehicles like Aveo, Brio, Figo, I-20 and many more.</p>\r\n', 'bullet-alloy-wheels', 5000, 'bullet-alloy-wheels.png', '2019-09-24', 7, 95);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(9, 9, 'PAY-1RT494832H294925RLLZ7TZA', '2018-05-10'),
(10, 9, 'PAY-21700797GV667562HLLZ7ZVY', '2018-05-10'),
(14, 21, 'ab4582901d', '2019-09-16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$G60lq.dL5mokQdHfZw6ZuuaZCxO/pTcUMQm./7hNwgr0J0Xno/bzq', 1, 'Admin', 'User', '', '', 'Featured-Image5.png', 1, '', '', '2018-05-01'),
(13, 'rayhan35@diit.info', '$2y$10$CwGGprViB2.ksV.92VECSuhCQr0JLx9iqRocBcxj8n6DOFpvVcasG', 0, 'Rayhan', 'm', '', '', '', 1, 'uIcQ3dS8Pqyr', '', '2019-04-12'),
(18, 'srk@ac.cc', '$2y$10$33B9hjhra5Fr2fiKfFPuOegYmwiKCxLFYM3gYVd2W0.ygPRMkHy1y', 0, 'monjil', 'rahman', '', '', '', 0, '', '', '0000-00-00'),
(19, 'user@dev.local', '$2y$10$TP9w1bT3iih.TjkCU23QdOoL6tze1m4z0S5ZP8U/eQBy.cf5kOsp6', 0, 'shaharuf', 'rahman', '', '', '', 0, 'qHeTyrbpSJ9W', '', '2019-07-11'),
(20, 'shaharufs@gmail.com', '$2y$10$bl.jNWr.37x261mvv/G38.w5knja.TAllU2MaLmCGk7e/e6fcWw3u', 1, 'shaharuf', 'rahman', '', '', '', 1, '6cE9PMeIkt4K', '', '2019-07-11'),
(21, 'shaharuf@yahoo.com', '$2y$10$JoP/Ol96w/6DHOYdXjQwm.xmI3VUU1Pz3kWr3oTFopH8FZtoZD8Ru', 0, 'shaharuf', 'rocky', '', '', '', 1, 'WhDJBdUPIzo4', '', '2019-08-08'),
(22, '1000100@daffodil.ac', '$2y$10$1LS71Jly57uEkTyihC5x7.qb5GDVEs6.wEAPpJz.dsXn/YW26dmPC', 0, 'Md. Ibrahim', 'Khalil', '', '', '', 1, 'c43rmyS2sBXD', '', '2019-09-15'),
(23, 'mdibrahimk48@gmail.com', '$2y$10$tpTHAJ95SIhrTUO3GVNRBeaMs3NvvXH4O8KAd0w4O2wRw.vtFg0Om', 0, 'Test ', 'User', '', '', '', 1, 'ruJYlWBOoSk6', '', '2019-09-15'),
(24, 'abk@bk.com', '$2y$10$zjhqATH0vtEOaNtvy3X65.Ub/JjQytCp84Qx6nzv.wCt0XQypaWha', 0, 'none', 'none', '', '', '', 1, 'ov8BWuH4ViQI', '', '2019-09-24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `delivery_address`
--
ALTER TABLE `delivery_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `delivery_address`
--
ALTER TABLE `delivery_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
