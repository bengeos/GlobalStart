-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2016 at 09:40 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `global_start`
--

-- --------------------------------------------------------

--
-- Table structure for table `news_feeds`
--

CREATE TABLE `news_feeds` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `published_date` datetime NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news_feeds`
--

INSERT INTO `news_feeds` (`id`, `user_id`, `title`, `content`, `image`, `description`, `published_date`, `created`, `updated`) VALUES
(1, 4234, 'ffsdfsdfs', 'dfsdfsdfsdf', 'https://www.planwallpaper.com/static/images/9-credit-1.jpg', 'sdfsdf', '0000-00-00 00:00:00', '2016-03-17 16:44:35', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `news_feed_logs`
--

CREATE TABLE `news_feed_logs` (
  `id` int(11) NOT NULL,
  `news_feed_id` int(11) NOT NULL,
  `IMEI` varchar(100) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news_feed_logs`
--

INSERT INTO `news_feed_logs` (`id`, `news_feed_id`, `IMEI`, `created`) VALUES
(424, 1, '2343430293', '2016-03-18 04:15:48'),
(427, 1, '352584066232031', '2016-03-18 08:02:24');

-- --------------------------------------------------------

--
-- Table structure for table `testimony`
--

CREATE TABLE `testimony` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `testimony` text NOT NULL,
  `gps` varchar(100) NOT NULL,
  `imei` varchar(100) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimony`
--

INSERT INTO `testimony` (`id`, `full_name`, `testimony`, `gps`, `imei`, `created`) VALUES
(3, '', 'hjsb zbzhjs shjsjs shjs\n', 'Lat: ,Long: ', '352584066232031', '2016-03-18 05:15:05'),
(4, '', 'hjsb zbzhjs shjsjs shjs\nbhhhbvbh', 'Lat: ,Long: ', '352584066232031', '2016-03-18 05:15:42'),
(5, '', 'hjsb zbzhjs shjsjs shjs\nbhhhbvbh', 'Lat: ,Long: ', '352584066232031', '2016-03-18 05:15:53'),
(6, '', 'ghsbs shhshs shhshs shhshs shbsbs', 'Lat: ,Long: ', '352584066232031', '2016-03-18 05:17:11'),
(7, 'haha sbdbbs', 'ghsbs sbbhs shhs. shhs', 'Lat:9.0196767,Long:9.0196767', '352584066232031', '2016-03-18 05:19:12'),
(8, 'BENGEOS', '3dsdsd', '12,323', '2343430293', '2016-03-18 07:47:53'),
(9, 'BENGEOS', '3dsdsd', '12,323', '2343430293', '2016-03-18 07:47:54'),
(10, 'BENGEOS', '3dsdsd', '12,323', '2343430293', '2016-03-18 08:00:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `news_feeds`
--
ALTER TABLE `news_feeds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_feed_logs`
--
ALTER TABLE `news_feed_logs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `news_feed_id_2` (`news_feed_id`,`IMEI`),
  ADD KEY `news_feed_id` (`news_feed_id`);

--
-- Indexes for table `testimony`
--
ALTER TABLE `testimony`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `news_feeds`
--
ALTER TABLE `news_feeds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `news_feed_logs`
--
ALTER TABLE `news_feed_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=428;
--
-- AUTO_INCREMENT for table `testimony`
--
ALTER TABLE `testimony`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `news_feed_logs`
--
ALTER TABLE `news_feed_logs`
  ADD CONSTRAINT `news_feed_logs_ibfk_1` FOREIGN KEY (`news_feed_id`) REFERENCES `news_feeds` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
