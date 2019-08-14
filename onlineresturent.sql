-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2019 at 02:01 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlineresturent`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `contact`, `address`, `image`) VALUES
(1, 'babay', 'bittu@123', '123', '8294112444', 'warangal', 'bg.jpg'),
(2, 'mukesh', 'mk@123', '123', '12345678', 'warangal', 'bg.jpg'),
(3, 'jahangeer ansari', 'ans@123', '123', '1234567', 'warangal', 'bg.jpg'),
(4, 'akm', 'ak@123', '123', '2345678', 'warangal', 'default.png');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `image` varchar(200) NOT NULL,
  `date` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `address`, `contact`, `email`, `name`, `password`, `image`, `date`) VALUES
(1, 'warangal', '023333333333333', 'baby@123', 'ansari', 'asdf', '', NULL),
(6, 'warangal', '8294112444', 'aashish@123', 'aasish', '1234567', 'bg.jpg', NULL),
(9, 'warangal City', '23456781', 'ak@123', 'akm', '123', 'default.png', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_order`
--

CREATE TABLE `customer_order` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `ordered_date` date NOT NULL,
  `order_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `p_category` varchar(255) DEFAULT NULL,
  `p_image` varchar(255) DEFAULT NULL,
  `p_name` varchar(255) DEFAULT NULL,
  `p_price` varchar(255) DEFAULT NULL,
  `p_rating` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `p_category`, `p_image`, `p_name`, `p_price`, `p_rating`) VALUES
(54, 'Non-veg', 'b2.jpg', 'Biryani,Hydrabad ', '200', '4.0'),
(52, 'Desert', 'b2.jpg', 'Dosaaaa', '500', '5.0'),
(50, 'Non-veg', 'b1.jpg', 'purirert m', '2000', '4.5'),
(49, 'Non-veg dfgh', 'b2.jpg', 'Biryani,Hydrabad sdfghj', '42', '5'),
(65, 'Non-veg', 'b3.jpg', 'biryani', '300', '4.0'),
(64, 'Desert', 'b2.jpg', 'biryani', '300', '3.5'),
(33, 'Non-veg', 'chicken.jpg', 'biryani', '300', '4.0'),
(34, 'Non-veg', 'chicken.jpg', 'biryani', '300', '4.0'),
(35, 'Non-veg', 'chicken.jpg', 'biryani', '300', '4.0'),
(62, 'Veg', 'dosa.jpg', 'biryani', '300', '3.5');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `customer_order`
--
ALTER TABLE `customer_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
