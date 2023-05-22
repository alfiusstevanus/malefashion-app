-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2023 at 12:05 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `malefashion_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_cost` decimal(10,2) NOT NULL,
  `order_status` varchar(100) NOT NULL DEFAULT 'on_hold',
  `user_id` int(11) NOT NULL,
  `user_phone` varchar(15) NOT NULL,
  `user_city` varchar(255) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_cost`, `order_status`, `user_id`, `user_phone`, `user_city`, `user_address`, `order_date`) VALUES
(1, '34.50', 'paid', 1, '08763655111', 'Bandung', 'Arcamanik Residence Regency, Bandung', '2023-03-12 11:46:53');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`item_id`, `order_id`, `product_id`, `product_name`, `product_image`, `product_price`, `product_quantity`, `user_id`, `order_date`) VALUES
(1, 1, '1', 'Sepatu Sneakers Pria Import Original Khamzo D05Terbaru', 'product-1.jpg', '20.00', 1, 1, '2023-03-12 11:46:53'),
(2, 1, '7', 'AD012 Pashmina Cashmere Syal Scarf Shawl Kasmir Bahan Viscose', 'product-6.jpg', '14.50', 1, 1, '2023-03-12 11:46:53');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `transaction_id` varchar(250) NOT NULL,
  `payment_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `order_id`, `user_id`, `transaction_id`, `payment_date`) VALUES
(0, 1, 1, '5GF373104L5481926', '2023-03-12 23:47:35');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `product_brand` varchar(100) DEFAULT NULL,
  `product_category` varchar(100) DEFAULT NULL,
  `product_description` varchar(255) DEFAULT NULL,
  `product_criteria` varchar(50) DEFAULT NULL,
  `product_image1` varchar(100) DEFAULT NULL,
  `product_image2` varchar(100) DEFAULT NULL,
  `product_image3` varchar(100) DEFAULT NULL,
  `product_image4` varchar(100) DEFAULT NULL,
  `product_price` decimal(10,2) DEFAULT NULL,
  `special_offer` decimal(10,2) DEFAULT NULL,
  `product_color` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_brand`, `product_category`, `product_description`, `product_criteria`, `product_image1`, `product_image2`, `product_image3`, `product_image4`, `product_price`, `special_offer`, `product_color`) VALUES
(1, 'Sepatu Sneakers Pria Import Original Khamzo D05Terbaru', 'Khamzo', 'sepatu', 'Sepatu Slip On Khamzo D05 yaitu salah satu model baru dan trendy untuk anda miliki, sangat nyaman dan dapat menunjang penampilan serta kepercayaan diri Anda.', 'favourite', 'product-1.jpg', 'product-1.jpg', 'product-1.jpg', 'product-1.jpg', '20.00', '0.00', 'Biru'),
(3, 'Jaket pria kantor formal casual TRENDY', 'Private', 'jaket', 'Barang terjamin kualitasnya, bahan bagus, dan tebal. Ayo buruan order kak sebelum terlambat.', 'favourite', 'product-2.jpg', 'product-2.jpg', 'product-2.jpg', 'product-2.jpg', '13.50', '0.00', 'Coklat'),
(4, 'SPOTEC Sepatu Student Helios Hitam', 'Spotec', 'sepatu', 'Sepatu ini termasuk kategori sepatu sekolah mempunyai desain klasik, dengan kombinasi material kulit imitasi dan kulit suede imitasi, sepatu ini menggunakan outsole full memberikan kekuatan ekstra.', 'favourite', 'product-3.jpg', 'product-3.jpg', 'product-3.jpg', 'product-3.jpg', '16.50', '0.00', 'Hitam'),
(5, 'M231 Hoodie Panjang Light Brown 2197A', 'Fleece', 'jaket', 'Produk ini too much perfect, ga perlu pake foto lah ya, itu foto produk udah menggambarkan semuanya', 'favourite', 'product-4.jpg', 'product-4.jpg', 'product-4.jpg', 'product-4.jpg', '19.25', '0.00', 'coklat'),
(6, 'Kaos hitam tshirt polos houseofcuff motif Tokyo Black', 'Houseofcut', 'kaos', 'Bahan Kain 100% Premium Cotton-Combed 30s Ultrasoft. Bahan sejuk dan nyaman dipakai, gak gampang kusut, gak gampang berbulu dan mudah dicuci.', 'favourite', 'product-5.jpg', 'product-5.jpg', 'product-5.jpg', 'product-5.jpg', '20.25', '0.00', 'hitam'),
(7, 'AD012 Pashmina Cashmere Syal Scarf Shawl Kasmir Bahan Viscose', 'Unixcomart', 'syal', 'Syal atau Scarf Cashmere, material Viscose (sutera sintetis), ukuran 65cm x 180cm, style casual, unisex, kondisi 100% baru, dan made in China.', 'favourite', 'product-6.jpg', 'product-6.jpg', 'product-6.jpg', 'product-6.jpg', '14.50', '0.00', 'abu-abu'),
(8, 'Tas Selempang Orion Synthetic Leather', 'Firefly', 'tas', 'High quality synthetic leather, waterproof material inside, laptop Sleeve up to 14\", fully padded main compartment, ballpoint & handphone sleeve inside, and roomy main compartment', 'favourite', 'product-7.jpg', 'product-7.jpg', 'product-7.jpg', 'product-7.jpg', '19.75', '0.00', 'coklat'),
(9, 'Matsuda Kaos Polo Shirt Pria Kerah Aioi', 'Matsuda', 'kaos', 'Style Aioi, Polo Shirt Original Premium Jersey Cotton Mix, Matsuda - Your Everyday Premium Clothing dan Bahan premium comfort.\r\n', 'favourite', 'product-8.jpg', 'product-8.jpg', 'product-8.jpg', 'product-8.jpg', '30.00', '0.00', 'hitam');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_phone` varchar(20) DEFAULT NULL,
  `user_address` varchar(255) DEFAULT NULL,
  `user_city` varchar(100) DEFAULT NULL,
  `user_photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_password`, `user_phone`, `user_address`, `user_city`, `user_photo`) VALUES
(1, 'Raihan Hanafi', 'user1@gmail.com', 'fcea920f7412b5da7be0cf42b8c93759', '628763655111', 'Arcamanik Residence Regency', 'Bandung', 'user_profile1.jpg'),
(2, 'Ridwan Hanif', 'user2@gmail.com', 'fcea920f7412b5da7be0cf42b8c93759', '628763655222', 'Green Garden Regency', 'Bandung', 'user_profile2.jpg'),
(3, 'Daffa Ismail', 'user3@gmail.com', 'fcea920f7412b5da7be0cf42b8c93759', '628763655333', 'Bandung City View', 'Bandung', 'user_profile3.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
