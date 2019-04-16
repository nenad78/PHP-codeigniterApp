-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 16, 2019 at 05:09 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `website`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(35) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `status`) VALUES
(1, 'admin1', '827ccb0eea8a706c4c34a16891f84e7b', 4),
(2, 'admin2', '827ccb0eea8a706c4c34a16891f84e7b', 2);

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `image` varchar(2048) NOT NULL,
  `sub_title` varchar(255) NOT NULL,
  `text` varchar(2048) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `image`, `sub_title`, `text`, `created_at`, `category_id`) VALUES
(1, 'Lorem ipsum', '_thumb05', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ut massa vehicula, condimentum nisl non, convallis est. Fusce bibendum laoreet urna, quis accumsan purus bibendum ac. Suspendisse eu ante sit amet lacus interdum vulputate. Ut finibus rutrum diam vitae consectetur. Phasellus non faucibus augue. Maecenas sagittis, tellus et faucibus ornare, sapien orci ultricies felis, quis mattis diam sapien sed ex. Nulla sed convallis tortor. Nulla egestas massa sed felis vulputate efficitur.\r\n\r\nSuspendisse quis eros scelerisque, vulputate libero eu, hendrerit quam. Curabitur sodales nibh vitae sollicitudin porttitor. Maecenas urna quam, sagittis quis tortor sed, feugiat fringilla urna. Mauris pellentesque purus ac justo facilisis sollicitudin. Pellentesque quis arcu quis lacus malesuada mattis. Quisque ultrices augue sed placerat iaculis. Suspendisse odio diam, mollis a tortor gravida, pharetra rutrum tortor. Quisque mattis vulputate nulla sit amet feugiat. Quisque erat ante, pharetra non pulvinar et, facilisis euismod lorem. Cras non tellus ornare, eleifend ipsum vel, volutpat nunc. Duis nec neque neque.', '2017-10-29 16:51:52', 1),
(2, 'Lorem ipsum', '_thumb05', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ut massa vehicula, condimentum nisl non, convallis est. Fusce bibendum laoreet urna, quis accumsan purus bibendum ac. Suspendisse eu ante sit amet lacus interdum vulputate. Ut finibus rutrum diam vitae consectetur. Phasellus non faucibus augue. Maecenas sagittis, tellus et faucibus ornare, sapien orci ultricies felis, quis mattis diam sapien sed ex. Nulla sed convallis tortor. Nulla egestas massa sed felis vulputate efficitur.\r\n\r\nSuspendisse quis eros scelerisque, vulputate libero eu, hendrerit quam. Curabitur sodales nibh vitae sollicitudin porttitor. Maecenas urna quam, sagittis quis tortor sed, feugiat fringilla urna. Mauris pellentesque purus ac justo facilisis sollicitudin. Pellentesque quis arcu quis lacus malesuada mattis. Quisque ultrices augue sed placerat iaculis. Suspendisse odio diam, mollis a tortor gravida, pharetra rutrum tortor. Quisque mattis vulputate nulla sit amet feugiat. Quisque erat ante, pharetra non pulvinar et, facilisis euismod lorem. Cras non tellus ornare, eleifend ipsum vel, volutpat nunc. Duis nec neque neque.', '2017-10-29 16:51:52', 1),
(3, 'Lorem ipsum', '_thumb05', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ut massa vehicula, condimentum nisl non, convallis est. Fusce bibendum laoreet urna, quis accumsan purus bibendum ac. Suspendisse eu ante sit amet lacus interdum vulputate. Ut finibus rutrum diam vitae consectetur. Phasellus non faucibus augue. Maecenas sagittis, tellus et faucibus ornare, sapien orci ultricies felis, quis mattis diam sapien sed ex. Nulla sed convallis tortor. Nulla egestas massa sed felis vulputate efficitur.\r\n\r\nSuspendisse quis eros scelerisque, vulputate libero eu, hendrerit quam. Curabitur sodales nibh vitae sollicitudin porttitor. Maecenas urna quam, sagittis quis tortor sed, feugiat fringilla urna. Mauris pellentesque purus ac justo facilisis sollicitudin. Pellentesque quis arcu quis lacus malesuada mattis. Quisque ultrices augue sed placerat iaculis. Suspendisse odio diam, mollis a tortor gravida, pharetra rutrum tortor. Quisque mattis vulputate nulla sit amet feugiat. Quisque erat ante, pharetra non pulvinar et, facilisis euismod lorem. Cras non tellus ornare, eleifend ipsum vel, volutpat nunc. Duis nec neque neque.', '2017-10-29 16:54:02', 1),
(4, 'Lorem ipsum', '_thumb05', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ut massa vehicula, condimentum nisl non, convallis est. Fusce bibendum laoreet urna, quis accumsan purus bibendum ac. Suspendisse eu ante sit amet lacus interdum vulputate. Ut finibus rutrum diam vitae consectetur. Phasellus non faucibus augue. Maecenas sagittis, tellus et faucibus ornare, sapien orci ultricies felis, quis mattis diam sapien sed ex. Nulla sed convallis tortor. Nulla egestas massa sed felis vulputate efficitur.\r\n\r\nSuspendisse quis eros scelerisque, vulputate libero eu, hendrerit quam. Curabitur sodales nibh vitae sollicitudin porttitor. Maecenas urna quam, sagittis quis tortor sed, feugiat fringilla urna. Mauris pellentesque purus ac justo facilisis sollicitudin. Pellentesque quis arcu quis lacus malesuada mattis. Quisque ultrices augue sed placerat iaculis. Suspendisse odio diam, mollis a tortor gravida, pharetra rutrum tortor. Quisque mattis vulputate nulla sit amet feugiat. Quisque erat ante, pharetra non pulvinar et, facilisis euismod lorem. Cras non tellus ornare, eleifend ipsum vel, volutpat nunc. Duis nec neque neque.', '2017-10-29 16:54:02', 1),
(5, 'Lorem ipsum', '_thumb04', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ut massa vehicula, condimentum nisl non, convallis est. Fusce bibendum laoreet urna, quis accumsan purus bibendum ac. Suspendisse eu ante sit amet lacus interdum vulputate. Ut finibus rutrum diam vitae consectetur. Phasellus non faucibus augue. Maecenas sagittis, tellus et faucibus ornare, sapien orci ultricies felis, quis mattis diam sapien sed ex. Nulla sed convallis tortor. Nulla egestas massa sed felis vulputate efficitur.\r\n\r\nSuspendisse quis eros scelerisque, vulputate libero eu, hendrerit quam. Curabitur sodales nibh vitae sollicitudin porttitor. Maecenas urna quam, sagittis quis tortor sed, feugiat fringilla urna. Mauris pellentesque purus ac justo facilisis sollicitudin. Pellentesque quis arcu quis lacus malesuada mattis. Quisque ultrices augue sed placerat iaculis. Suspendisse odio diam, mollis a tortor gravida, pharetra rutrum tortor. Quisque mattis vulputate nulla sit amet feugiat. Quisque erat ante, pharetra non pulvinar et, facilisis euismod lorem. Cras non tellus ornare, eleifend ipsum vel, volutpat nunc. Duis nec neque neque.', '2017-10-29 16:56:00', 2),
(6, 'Lorem ipsum', '_thumb04', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ut massa vehicula, condimentum nisl non, convallis est. Fusce bibendum laoreet urna, quis accumsan purus bibendum ac. Suspendisse eu ante sit amet lacus interdum vulputate. Ut finibus rutrum diam vitae consectetur. Phasellus non faucibus augue. Maecenas sagittis, tellus et faucibus ornare, sapien orci ultricies felis, quis mattis diam sapien sed ex. Nulla sed convallis tortor. Nulla egestas massa sed felis vulputate efficitur.\r\n\r\nSuspendisse quis eros scelerisque, vulputate libero eu, hendrerit quam. Curabitur sodales nibh vitae sollicitudin porttitor. Maecenas urna quam, sagittis quis tortor sed, feugiat fringilla urna. Mauris pellentesque purus ac justo facilisis sollicitudin. Pellentesque quis arcu quis lacus malesuada mattis. Quisque ultrices augue sed placerat iaculis. Suspendisse odio diam, mollis a tortor gravida, pharetra rutrum tortor. Quisque mattis vulputate nulla sit amet feugiat. Quisque erat ante, pharetra non pulvinar et, facilisis euismod lorem. Cras non tellus ornare, eleifend ipsum vel, volutpat nunc. Duis nec neque neque.', '2017-10-29 16:56:00', 2),
(7, 'Lorem ipsum', '_thumb01', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ut massa vehicula, condimentum nisl non, convallis est. Fusce bibendum laoreet urna, quis accumsan purus bibendum ac. Suspendisse eu ante sit amet lacus interdum vulputate. Ut finibus rutrum diam vitae consectetur. Phasellus non faucibus augue. Maecenas sagittis, tellus et faucibus ornare, sapien orci ultricies felis, quis mattis diam sapien sed ex. Nulla sed convallis tortor. Nulla egestas massa sed felis vulputate efficitur.\r\n\r\nSuspendisse quis eros scelerisque, vulputate libero eu, hendrerit quam. Curabitur sodales nibh vitae sollicitudin porttitor. Maecenas urna quam, sagittis quis tortor sed, feugiat fringilla urna. Mauris pellentesque purus ac justo facilisis sollicitudin. Pellentesque quis arcu quis lacus malesuada mattis. Quisque ultrices augue sed placerat iaculis. Suspendisse odio diam, mollis a tortor gravida, pharetra rutrum tortor. Quisque mattis vulputate nulla sit amet feugiat. Quisque erat ante, pharetra non pulvinar et, facilisis euismod lorem. Cras non tellus ornare, eleifend ipsum vel, volutpat nunc. Duis nec neque neque.', '2017-10-29 16:57:32', 2),
(8, 'Lorem ipsum', '_thumb02', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ut massa vehicula, condimentum nisl non, convallis est. Fusce bibendum laoreet urna, quis accumsan purus bibendum ac. Suspendisse eu ante sit amet lacus interdum vulputate. Ut finibus rutrum diam vitae consectetur. Phasellus non faucibus augue. Maecenas sagittis, tellus et faucibus ornare, sapien orci ultricies felis, quis mattis diam sapien sed ex. Nulla sed convallis tortor. Nulla egestas massa sed felis vulputate efficitur.\r\n\r\nSuspendisse quis eros scelerisque, vulputate libero eu, hendrerit quam. Curabitur sodales nibh vitae sollicitudin porttitor. Maecenas urna quam, sagittis quis tortor sed, feugiat fringilla urna. Mauris pellentesque purus ac justo facilisis sollicitudin. Pellentesque quis arcu quis lacus malesuada mattis. Quisque ultrices augue sed placerat iaculis. Suspendisse odio diam, mollis a tortor gravida, pharetra rutrum tortor. Quisque mattis vulputate nulla sit amet feugiat. Quisque erat ante, pharetra non pulvinar et, facilisis euismod lorem. Cras non tellus ornare, eleifend ipsum vel, volutpat nunc. Duis nec neque neque.', '2017-10-29 16:59:11', 3),
(9, 'Lorem ipsum', '_thumb02', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ut massa vehicula, condimentum nisl non, convallis est. Fusce bibendum laoreet urna, quis accumsan purus bibendum ac. Suspendisse eu ante sit amet lacus interdum vulputate. Ut finibus rutrum diam vitae consectetur. Phasellus non faucibus augue. Maecenas sagittis, tellus et faucibus ornare, sapien orci ultricies felis, quis mattis diam sapien sed ex. Nulla sed convallis tortor. Nulla egestas massa sed felis vulputate efficitur.\r\n\r\nSuspendisse quis eros scelerisque, vulputate libero eu, hendrerit quam. Curabitur sodales nibh vitae sollicitudin porttitor. Maecenas urna quam, sagittis quis tortor sed, feugiat fringilla urna. Mauris pellentesque purus ac justo facilisis sollicitudin. Pellentesque quis arcu quis lacus malesuada mattis. Quisque ultrices augue sed placerat iaculis. Suspendisse odio diam, mollis a tortor gravida, pharetra rutrum tortor. Quisque mattis vulputate nulla sit amet feugiat. Quisque erat ante, pharetra non pulvinar et, facilisis euismod lorem. Cras non tellus ornare, eleifend ipsum vel, volutpat nunc. Duis nec neque neque.', '2017-10-29 16:59:11', 3),
(10, 'Lorem ipsum', '_thumb06', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ut massa vehicula, condimentum nisl non, convallis est. Fusce bibendum laoreet urna, quis accumsan purus bibendum ac. Suspendisse eu ante sit amet lacus interdum vulputate. Ut finibus rutrum diam vitae consectetur. Phasellus non faucibus augue. Maecenas sagittis, tellus et faucibus ornare, sapien orci ultricies felis, quis mattis diam sapien sed ex. Nulla sed convallis tortor. Nulla egestas massa sed felis vulputate efficitur.\r\n\r\nSuspendisse quis eros scelerisque, vulputate libero eu, hendrerit quam. Curabitur sodales nibh vitae sollicitudin porttitor. Maecenas urna quam, sagittis quis tortor sed, feugiat fringilla urna. Mauris pellentesque purus ac justo facilisis sollicitudin. Pellentesque quis arcu quis lacus malesuada mattis. Quisque ultrices augue sed placerat iaculis. Suspendisse odio diam, mollis a tortor gravida, pharetra rutrum tortor. Quisque mattis vulputate nulla sit amet feugiat. Quisque erat ante, pharetra non pulvinar et, facilisis euismod lorem. Cras non tellus ornare, eleifend ipsum vel, volutpat nunc. Duis nec neque neque.', '2017-10-29 17:00:21', 4),
(11, 'Lorem ipsum', '_thumb06', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ut massa vehicula, condimentum nisl non, convallis est. Fusce bibendum laoreet urna, quis accumsan purus bibendum ac. Suspendisse eu ante sit amet lacus interdum vulputate. Ut finibus rutrum diam vitae consectetur. Phasellus non faucibus augue. Maecenas sagittis, tellus et faucibus ornare, sapien orci ultricies felis, quis mattis diam sapien sed ex. Nulla sed convallis tortor. Nulla egestas massa sed felis vulputate efficitur.\r\n\r\nSuspendisse quis eros scelerisque, vulputate libero eu, hendrerit quam. Curabitur sodales nibh vitae sollicitudin porttitor. Maecenas urna quam, sagittis quis tortor sed, feugiat fringilla urna. Mauris pellentesque purus ac justo facilisis sollicitudin. Pellentesque quis arcu quis lacus malesuada mattis. Quisque ultrices augue sed placerat iaculis. Suspendisse odio diam, mollis a tortor gravida, pharetra rutrum tortor. Quisque mattis vulputate nulla sit amet feugiat. Quisque erat ante, pharetra non pulvinar et, facilisis euismod lorem. Cras non tellus ornare, eleifend ipsum vel, volutpat nunc. Duis nec neque neque.', '2017-10-29 17:00:21', 4),
(12, 'Lorem ipsum', '_thumb01', 'Lorem ipsum dolor sit amet\r\n', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vel mollis risus. Donec interdum sagittis lacus vel commodo. Integer vel blandit sapien, non egestas odio. Proin gravida diam in ipsum viverra fermentum. Cras posuere lacus et fringilla consequat. Mauris efficitur tincidunt nibh in ornare. Maecenas a vestibulum mauris. Aenean pretium quis velit eget volutpat. Aliquam rutrum mattis augue, non maximus purus porta quis. Maecenas quis pellentesque ipsum. Aenean quis ex ante. Suspendisse ut diam in ipsum dictum iaculis sed at dolor.\r\n\r\nAliquam justo tellus, imperdiet a pretium nec, semper non nulla. Phasellus vel massa in elit venenatis pharetra. Duis dignissim hendrerit risus sed sollicitudin. Maecenas vitae quam ut elit dapibus porttitor. Fusce a leo sed purus dapibus fermentum eget non massa. Ut nec enim quis tellus luctus consequat ut volutpat ligula. Curabitur tincidunt hendrerit porttitor. Nam sit amet nisi vel purus rutrum tempus. Etiam dui elit, congue sit amet rutrum facilisis, vehicula eget ipsum. Proin facilisis id erat ac cursus. Nunc semper metus sit amet ligula laoreet interdum. Integer odio massa, imperdiet vitae odio sed, porta pharetra purus. Praesent volutpat tempor enim eu feugiat.', '2017-10-29 17:38:51', 2),
(13, 'Lorem ipsum', 'mymovie.jpg', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sit amet vehicula ex, ac porttitor turpis. Aliquam a eros tortor. Duis in sem quam. In hac habitasse platea dictumst. Nunc sit amet malesuada elit, sed maximus dolor. Fusce tincidunt augue quis odio maximus tempor. Integer cursus a sem sed fermentum. Sed semper rhoncus nunc non feugiat. Praesent vestibulum metus sit amet magna bibendum, eu viverra libero mollis. Aliquam suscipit lorem vitae enim tincidunt condimentum. Vivamus non sagittis justo. Nullam ornare pellentesque arcu vel vulputate. Nam at sollicitudin eros. Etiam eu justo ut nibh pretium mollis. Mauris finibus diam non condimentum elementum. In congue hendrerit lectus non tincidunt.\r\n\r\nIn non lectus dolor. Sed vitae lectus ipsum. Vivamus sed elit interdum, rhoncus ligula nec, laoreet lectus. Mauris viverra vitae orci vel facilisis. Sed et gravida augue. Aenean lacus sapien, mollis sit amet dictum vitae, tincidunt sed risus. Vivamus sit amet ullamcorper nibh, sed tempor est. Praesent faucibus lorem ut ipsum dapibus, eu dapibus orci tristique. Donec consectetur ultricies luctus. Suspendisse semper diam in pulvinar vulputate. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus pulvinar magna et massa feugiat luctus. Donec sit amet volutpat tellus. Donec feugiat pretium nisi.', '2017-10-30 06:56:26', 4);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Sports'),
(2, 'Business'),
(3, 'Technology'),
(4, 'Entertainment');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `register_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
