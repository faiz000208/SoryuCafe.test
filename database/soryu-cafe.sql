-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2021 at 10:09 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `soryu-cafe`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(30) NOT NULL,
  `client_ip` varchar(20) NOT NULL,
  `user_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `qty` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `address` text NOT NULL,
  `mobile` text NOT NULL,
  `email` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `qty` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product_list`
--

CREATE TABLE `product_list` (
  `id` int(30) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL DEFAULT 0,
  `img_path` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0= unavailable, 2 Available'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_list`
--

INSERT INTO `product_list` (`id`, `name`, `description`, `price`, `img_path`, `status`) VALUES
(3, 'Iced Lemon Paprican', 'Iced Lemon Paprican menjadi rebutan ramai sejak terciptanya iced lemon tea. Paprican merujuk kepada cara pembuatan air ini iaitu dengan cara Mexican.', 15, '1611552960_iced-tea-best-health-768x576.jpg', 1),
(4, 'ButterMilk Chicken Gempak', 'Disaluti cheese leleh yang mempersonakan sehinggakan menjilat jari', 15, '1611553140_buttermilk-cheese-chicken-ayam-munahmasak-resipi-foto-utama.jpg', 1),
(5, 'Lamb Steak Origami', 'Lamb Stick lagi segar disembelih dlm tempoh 5 hari sebelum dimasak. Ini kerana kami mengutamakan daging yang merah fresh untuk dimasak.', 20, '1637959620_lamb_steak.jpg', 1),
(6, 'Chicken Chop Origi', 'Chicken Chop Origi diformulakan daripada nama ayam mexice yang mula mendapat nama di mata dunia kerana dagingnya yang lembut dan berkualiti tinggi', 10, '1611553080_Crispy-Chicken-Chop-5.jpg', 1),
(7, 'Cafe Favrito Espresso', 'Kopi ini diperbuat daripada biji kopi yang berkualiti tinggi yang diimport dari Bosnia. Kopi ini disaluti dengan rasa pahit dan manis.', 6, '1611553080_20180613-coffee-vs-espresso-vicky-wasik-3-1500x1125.jpg', 1),
(9, 'Ricardo Aglio Olio', 'Kind of shagetti from mexican that been verified by Mexico.', 11, '1611686820_image.jpg', 1),
(10, 'Teabeng Forza Antartica', 'Teabeng fresh yang dibuat daripada duan teh import', 5, '1611687180_teabengmadu.jpg', 1),
(11, 'Ais Krim', 'Ais Krim', 5, '1611712620_soya-cincau.png', 1),
(13, 'McFurry', 'McD Flurry', 5, '1637959860_McFlurry.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `cover_img`, `about_content`) VALUES
(1, 'Soryu Cafe', 'soryucafe@gmail.com', '01157083992', 'themev3.jpg', '&lt;h2 style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;span style=&quot;background: transparent; position: relative; font-size: 18px;&quot;&gt;&lt;span style=&quot;background: transparent; position: relative; font-size: 20px;&quot;&gt;&lt;span style=&quot;background: transparent; position: relative; font-size: 20px;&quot;&gt;&lt;span style=&quot;background: transparent; position: relative; font-size: 20px;&quot;&gt;&lt;b style=&quot;background: transparent; position: relative; font-size: 20px;&quot;&gt;&lt;span style=&quot;font-size:24px;background: transparent; position: relative;&quot;&gt;ABOUT US&lt;/span&gt;&lt;/b&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h2&gt;&lt;h5 style=&quot;font-size: 15px; color: rgb(0, 0, 0); text-align: center;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-size: 24px;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-size: 24px;&quot;&gt;&lt;span style=&quot;font-size:18px;color: rgb(0, 0, 0);&quot;&gt;The Cafe was founded in Kota Bharu by Mr. Fahmi bin Feerman in early 2020. The cafe serves beverages and foods such as sandwiches, soup, salads, breakfast, pastries and desserts. The cafe will operates from 8.00 a.m. to 10.00 p.m. and from Saturday to Thursday. The cafe will be closed on Friday.&amp;nbsp;&lt;span style=&quot;color: rgb(0, 0, 0); font-size: 18px;&quot;&gt;In addition to our full espresso and brew bar menu, we serve fresh made-to-order breakfast and lunch sandwiches, as well as a selection of sides and salads and other good stuff.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 14px; background: transparent; position: relative;&quot;&gt;&lt;span style=&quot;font-size: 14px; background: transparent; position: relative;&quot;&gt;&lt;span style=&quot;font-size: 28px; background: transparent; position: relative;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&lt;br style=&quot;font-size: 14px;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 14px; background: transparent; position: relative;&quot;&gt;&lt;/p&gt;&lt;/h2&gt;&lt;h2 style=&quot;font-size: 28px; text-align: center; background: transparent; position: relative;&quot;&gt;&lt;span style=&quot;font-size: 28px; font-weight: bolder; background: transparent; position: relative;&quot;&gt;Trademark&lt;/span&gt;&lt;/h2&gt;&lt;h2 style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;p style=&quot;color: rgb(0, 0, 0); font-size: 15px;&quot;&gt;&lt;i style=&quot;color: rgb(0, 0, 0); font-size: 15px;&quot;&gt;&quot;Sesempurna pun apa kopi yang kamu buat. Kopi tetap Kopi. Punya sisi pahit yang tidak dapat kamu sembunyikan.&quot;&lt;/i&gt;&lt;/p&gt;&lt;p style=&quot;color: rgb(0, 0, 0); font-size: 15px;&quot;&gt;Dewa Kopi Enthusiast: Mr. Faiz Baba&lt;/p&gt;&lt;/h2&gt;&lt;p&gt;&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1=admin , 2 = staff'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`) VALUES
(1, 'Administrator', 'soryu', 'Soryu0123', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address`) VALUES
(6, 'Muhd', 'Faiz', 'zxc@yes.my', '5fa72358f0b4fb4f2c5d7de8c9a41846', '013', 'Lot'),
(8, 'Fahmi', 'Hensem', 'fahmi@yes.my', 'f11d50d63d3891a44c332e46d6d7d561', '013333333', 'Lot 1305, Belakang Masjid');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_list`
--
ALTER TABLE `product_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `product_list`
--
ALTER TABLE `product_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
