-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 13, 2018 at 02:24 AM
-- Server version: 5.7.20-0ubuntu0.16.04.1
-- PHP Version: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bamazon`
--
DROP DATABASE IF EXISTS bamazon;
CREATE database bamazon;

USE bamazon;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `item_id` int(11) NOT NULL,
  `product_name` varchar(150) DEFAULT NULL,
  `department_name` varchar(150) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `stock_quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`item_id`, `product_name`, `department_name`, `price`, `stock_quantity`) VALUES
(1, 'Batteries (12pk AA)', 'Electronics', '5.99', 1500),
(2, 'Digital Camera', 'Electronics', '55.49', 1500),
(3, 'Palm Tree', 'Garden', '99.95', 1500),
(4, 'Insecticide', 'Garden', '9.99', 1500),
(5, 'Floor Mats', 'Automotive', '19.54', 1500),
(6, 'Racing Decals', 'Automotive', '15.99', 1500),
(7, 'Hair Gel', 'Health & Beauty', '4.50', 1000),
(8, 'Shampoo', 'Health & Beauty', '6.29', 1500),
(9, 'Corn Pops', 'Foodstuffs', '3.49', 1500),
(10, 'Pretzel Sticks', 'Foodstuffs', '2.89', 2500),
(11, 'Ferrari GT', 'Automotive', '150000.00', 100);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`item_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
