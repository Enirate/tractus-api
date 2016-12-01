-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2016 at 11:18 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `the_tractus`
--

-- --------------------------------------------------------

--
-- Table structure for table `acceptance`
--

CREATE TABLE IF NOT EXISTS `acceptance` (
`accpt_id` int(10) unsigned NOT NULL,
  `accpt_user` int(11) NOT NULL,
  `accpt_request` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `availability`
--

CREATE TABLE IF NOT EXISTS `availability` (
`a_id` int(10) unsigned NOT NULL,
  `a_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE IF NOT EXISTS `complaint` (
`c_id` int(10) unsigned NOT NULL,
  `c_from` int(11) NOT NULL,
  `c_message` varchar(140) NOT NULL,
  `c_reg_at` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`c_id`, `c_from`, `c_message`, `c_reg_at`) VALUES
(1, 2, 'Please my tractor driver did not show up.', '2016-12-01 10:52:09'),
(2, 3, 'Please my tractor driver did not show early as expected', '2016-12-01 10:54:03'),
(3, 1, 'Get your acts together oh.', '2016-12-01 11:03:01'),
(4, 2, 'Get your acts together oh.', '2016-12-01 11:03:40');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE IF NOT EXISTS `request` (
`r_id` int(10) unsigned NOT NULL,
  `r_from` int(11) NOT NULL,
  `r_reg_at` datetime NOT NULL,
  `r_accepted_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`u_id` int(10) unsigned NOT NULL,
  `u_name` varchar(100) NOT NULL,
  `u_phone` varchar(12) NOT NULL,
  `u_email` varchar(100) NOT NULL,
  `u_location` varchar(60) NOT NULL,
  `u_type` int(11) NOT NULL,
  `u_reg_at` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `u_name`, `u_phone`, `u_email`, `u_location`, `u_type`, `u_reg_at`) VALUES
(1, 'Eniola', '09077665543', 'eniratw@gg.com', 'kwara', 0, '2016-11-30 22:33:12'),
(2, 'Alice', '09077665543', 'alice@alice.com', 'Kwali area council', 1, '2016-11-30 22:44:28'),
(3, 'Bayo', '08097654367', 'Bayo@bayo.com', 'Area 11', 1, '2016-12-01 08:19:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acceptance`
--
ALTER TABLE `acceptance`
 ADD PRIMARY KEY (`accpt_id`);

--
-- Indexes for table `availability`
--
ALTER TABLE `availability`
 ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
 ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
 ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acceptance`
--
ALTER TABLE `acceptance`
MODIFY `accpt_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `availability`
--
ALTER TABLE `availability`
MODIFY `a_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
MODIFY `c_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
MODIFY `r_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `u_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
