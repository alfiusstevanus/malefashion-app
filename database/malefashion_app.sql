-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2023 at 02:45 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.23

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
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(11) UNSIGNED NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_phone` varchar(15) DEFAULT NULL,
  `admin_password` varchar(100) NOT NULL,
  `admin_photo` varchar(255) NOT NULL,
  `admin_photo2` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_phone`, `admin_password`, `admin_photo`, `admin_photo2`) VALUES
(1, 'Khaleed', 'admin@gmail.com', '62897765432', '0287040c474dbf44cdeb17eebb99d828', 'admin_profile.jpg', 'admin_profile2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `blog_id` int(11) NOT NULL,
  `blog_title` varchar(100) DEFAULT NULL,
  `blog_description` text DEFAULT NULL,
  `blog_quotes` text DEFAULT NULL,
  `blog_quotes_writer` varchar(100) DEFAULT NULL,
  `blog_image` varchar(100) DEFAULT NULL,
  `blog_image2` varchar(100) DEFAULT NULL,
  `blog_tags` varchar(255) DEFAULT NULL,
  `blog_date` date DEFAULT current_timestamp(),
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`blog_id`, `blog_title`, `blog_description`, `blog_quotes`, `blog_quotes_writer`, `blog_image`, `blog_image2`, `blog_tags`, `blog_date`, `admin_id`) VALUES
(1, 'What Curling Irons Are The Best Ones', 'Spesifikasi Technoplast GB-200:\nTerbuat dari bahan plastik berkualitas( Food Grade), serta bebas dari bahan-bahan berbahaya(BPA free)\n\nTersedia dalam warna hitam, biru, merah\n\nTumbler ini sangat cocok untuk kalian yang ingin memberikan souvenir perusahaan, hadiah wisuda, ulang tahun atau bahkan sebagai koleksi pribadi.\n\nKalian bisa menggunakan desain buatan kalian sendiri untuk botol minum kalian nih. Caranya dengan\n1. order via chat Whatsapp\n2. Kirim desain kalian via email mfbinary18@gmail.com.\n3. Desain yang kalian kirim hanya dalam bentuk .eps ya\n', '“When designing an advertisement for a particular product many things should be researched like where it should be displayed.”', 'JOHN SMITH', 'blog-1.jpg', 'banner1.jpg', '#Poster #Tumbler #2022\n', '2022-02-12', 1),
(2, 'Eternity Bands Do Last Forever', 'Spesifikasi Technoplast GS-400:\nTerbuat dari bahan plastik berkualitas( Food Grade), serta bebas dari bahan-bahan berbahaya(BPA free)\n\nTersedia dalam warna Hitam\n\nTumbler ini sangat cocok untuk kalian yang ingin memberikan souvenir perusahaan, hadiah wisuda, ulang tahun atau bahkan sebagai koleksi pribadi.\n\nKalian bisa menggunakan desain buatan kalian sendiri untuk botol minum kalian nih. Caranya dengan\n1. order via chat Whatsapp\n2. Kirim desain kalian via email mfbinary18@gmail.com.\n3. Desain yang kalian kirim hanya dalam bentuk .eps ya\n', '“When designing an advertisement for a particular product many things should be researched like where it should be displayed.”', 'JOHN SMITH', 'blog-2.jpg', 'banner1.jpg', '#Poster #Tumbler #Edukasi #2022\n', '2022-11-05', 1),
(3, 'The Health Benefits Of Sunglasses', 'Miliki sekarang Tumbler Custom GS-400 2 side.\nDimensi:\nVolume 370 ml\nTinggi 17.1 cm\nLebar 7.5 cm', '“When designing an advertisement for a particular product many things should be researched like where it should be displayed.”', 'JOHN SMITH', 'blog-3.jpg', 'banner1.jpg', '#Tumbler', '2022-11-05', 1),
(4, 'Aiming For Higher The Mastopexy', 'Tu kan Lucu banget, ayo meriahkan hari spesial sahabat mu dengan order sekarang juga tumbler cantik ini di @mfbinary ya', '“When designing an advertisement for a particular product many things should be researched like where it should be displayed.”', 'JOHN SMITH', 'blog-4.jpg', 'banner1.jpg', '#Tumbler', '2022-11-05', 1),
(5, 'Wedding Rings A Gift For A Lifetime', '<p>Hydroderm is the highly desired anti-aging cream on the block. This serum restricts the\n occurrence of early aging sings on the skin and keeps the skin younger, tighter and\n healthier. It reduces the wrinkles and loosening of skin. This cream nourishes the skin\n and brings back the glow that had lost in the run of hectic years.</p>\n <p>The most essential ingredient that makes hydroderm so effective is Vyo-Serum, which is a\n product of natural selected proteins. This concentrate works actively in bringing about\n the natural youthful glow of the skin. It tightens the skin along with its moisturizing\n effect on the skin. The other important ingredient, making hydroderm so effective is\n “marine collagen” which along with Vyo-Serum helps revitalize the skin.</p>', '“When designing an advertisement for a particular product many things should be researched like where it should be displayed.”', 'JOHN SMITH', 'blog-5.jpg', 'banner1.jpg', '#Poster #Tumbler #Edukasi #2022\n', '2022-11-05', 1),
(6, 'The Different Methods Of Hair Removal', 'Kamu bisa beli satuan ya. No min. Order.\r\nJadikan hari spesial keluargamu semakin berkesan, dengan hadiah spesial dari kamu nih.', '“When designing an advertisement for a particular product many things should be researched like where it should be displayed.”', 'JOHN SMITH', 'blog-6.jpg', 'banner1.jpg', '#Tumbler #Quotes', '2022-11-05', 1),
(7, 'Hoop Earrings A Style From History', 'Ada juga ni pulpen dengan desain unik dan lucu, bisa custom sesuai keinginan kamu, dan cocok banget ni buat hadiah perpisahan sekolah.', '“When designing an advertisement for a particular product many things should be researched like where it should be displayed.”', 'JOHN SMITH', 'blog-7.jpg', 'banner1.jpg', '#Pulpen', '2022-11-05', 1),
(8, 'Lasik Eye Surgery Are You Ready', 'Kalender dan Poster Edukasi bisa kamu dapatkan dengan harga terjangkan, untuk desainnya bisa kamu tentukan sendiri loh.., ayo! tunggu apa lagi untuk berkunjung ke toko kami @mfbinary', '“When designing an advertisement for a particular product many things should be researched like where it should be displayed.”', 'JOHN SMITH', 'blog-8.jpg', 'banner1.jpg', '#Poster #Tumbler #Edukasi #2022\n', '2022-11-05', 1),
(9, 'Enjoying Beautiful Scarf', 'Khusus poster edukasi lagi diskon gede-gedean ini sampe 50%, kamu jangan sampai ketinggalan, promonya hanya bulan ini saja, ayo tunggu apa lagi :D.', '“When designing an advertisement for a particular product many things should be researched like where it should be displayed.”', 'JOHN SMITH', 'blog-9.jpg', 'banner1.jpg', '#Poster', '2022-11-05', 1);

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
(1, '133.00', 'paid', 1, '', '', '', '2023-03-13 03:04:42'),
(2, '87.00', 'paid', 1, '628763655111', 'Bandung', 'Arcamanik Residence Regency', '2023-03-13 03:11:28'),
(3, '87.00', 'paid', 1, 'sda', 'adsad', 'das', '2023-03-13 03:12:21'),
(4, '29.00', 'paid', 1, '', '', '', '2023-03-13 03:12:53'),
(5, '29.00', 'paid', 1, '', '', '', '2023-03-13 03:13:05'),
(6, '58.00', 'paid', 1, '', '', '', '2023-03-13 03:14:37'),
(7, '52.00', 'paid', 1, '087714477053', 'Bandung', 'Jl Sentosa Asih 3 No 31', '2023-03-13 03:29:25'),
(8, '24.00', 'paid', 1, '628763655111', 'Bandung', 'Jl Sentosa Asih 3 No 31', '2023-03-13 03:35:07'),
(9, '29.00', 'paid', 1, '', '', '', '2023-03-13 03:42:07'),
(10, '23.00', 'paid', 1, '', '', '', '2023-03-13 03:44:16'),
(11, '29.00', 'not paid', 7, '', '', '', '2023-03-20 02:11:24'),
(12, '58.00', 'paid', 1, '', '', '', '2023-03-20 03:53:32');

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
(1, 0, '4', 'SPOTEC Sepatu Student Helios Hitam', 'product-3.jpg', '25.00', 3, 1, '2023-03-13 03:04:42'),
(2, 0, '5', 'M231 Hoodie Panjang Light Brown 2197A', 'product-4.jpg', '12.00', 1, 1, '2023-03-13 03:04:42'),
(3, 0, '3', 'Jaket pria kantor formal casual TRENDY', 'product-2.jpg', '23.00', 2, 1, '2023-03-13 03:04:42'),
(4, 0, '1', 'Sepatu Sneakers Pria Import Original Khamzo D05Terbaru', 'product-1.jpg', '29.00', 3, 1, '2023-03-13 03:11:28'),
(5, 0, '1', 'Sepatu Sneakers Pria Import Original Khamzo D05Terbaru', 'product-1.jpg', '29.00', 1, 1, '2023-03-13 03:12:53'),
(6, 0, '1', 'Sepatu Sneakers Pria Import Original Khamzo D05Terbaru', 'product-1.jpg', '29.00', 2, 1, '2023-03-13 03:14:37'),
(7, 0, '3', 'Jaket pria kantor formal casual TRENDY', 'product-2.jpg', '23.00', 1, 1, '2023-03-13 03:29:25'),
(8, 0, '9', 'Matsuda Kaos Polo Shirt Pria Kerah Aioi', 'product-8.jpg', '29.00', 1, 1, '2023-03-13 03:29:25'),
(9, 0, '6', 'Kaos hitam tshirt polos houseofcuff motif Tokyo Black', 'product-5.jpg', '24.00', 1, 1, '2023-03-13 03:35:07'),
(10, 0, '1', 'Sepatu Sneakers Pria Import Original Khamzo D05Terbaru', 'product-1.jpg', '29.00', 1, 1, '2023-03-13 03:42:07'),
(11, 0, '3', 'Jaket pria kantor formal casual TRENDY', 'product-2.jpg', '23.00', 1, 1, '2023-03-13 03:44:16'),
(12, 0, '1', 'Sepatu Sneakers Pria Import Original Khamzo D05Terbaru', 'product-1.jpg', '29.00', 1, 7, '2023-03-20 02:11:24'),
(13, 12, '1', 'Sepatu Sneakers Pria Import Original Khamzo D05Terbaru', 'product-1.jpg', '29.00', 2, 1, '2023-03-20 03:53:32');

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
(1, 1, 1, '5J241587LN514291M', '2023-03-13 03:44:29'),
(2, 12, 1, '19792543P0209593S', '2023-03-20 03:55:38');

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
(1, 'Sepatu Sneakers Pria Import Original Khamzo D05Terbaru', 'Khamzo', 'sepatu', 'Sepatu Slip On Khamzo D05 yaitu salah satu model baru dan trendy untuk anda miliki, sangat nyaman dan dapat menunjang penampilan serta kepercayaan diri Anda.', 'favourite', 'product-1.jpg', 'product-1.jpg', 'product-1.jpg', 'product-1.jpg', '29.00', '0.00', 'Biru'),
(3, 'Jaket pria kantor formal casual TRENDY', 'Private', 'jaket', 'Barang terjamin kualitasnya, bahan bagus, dan tebal. Ayo buruan order kak sebelum terlambat.', 'favourite', 'product-2.jpg', 'product-2.jpg', 'product-2.jpg', 'product-2.jpg', '23.00', '0.00', 'Coklat'),
(4, 'SPOTEC Sepatu Student Helios Hitam', 'Spotec', 'sepatu', 'Sepatu ini termasuk kategori sepatu sekolah mempunyai desain klasik, dengan kombinasi material kulit imitasi dan kulit suede imitasi, sepatu ini menggunakan outsole full memberikan kekuatan ekstra.', 'favourite', 'product-3.jpg', 'product-3.jpg', 'product-3.jpg', 'product-3.jpg', '25.00', '0.00', 'Hitam'),
(5, 'M231 Hoodie Panjang Light Brown 2197A', 'Fleece', 'jaket', 'Produk ini too much perfect, ga perlu pake foto lah ya, itu foto produk udah menggambarkan semuanya', 'favourite', 'product-4.jpg', 'product-4.jpg', 'product-4.jpg', 'product-4.jpg', '12.00', '0.00', 'coklat'),
(6, 'Kaos hitam tshirt polos houseofcuff motif Tokyo Black', 'Houseofcut', 'kaos', 'Bahan Kain 100% Premium Cotton-Combed 30s Ultrasoft. Bahan sejuk dan nyaman dipakai, gak gampang kusut, gak gampang berbulu dan mudah dicuci.', 'favourite', 'product-5.jpg', 'product-5.jpg', 'product-5.jpg', 'product-5.jpg', '24.00', '0.00', 'hitam'),
(7, 'AD012 Pashmina Cashmere Syal Scarf Shawl Kasmir Bahan Viscose', 'Unixcomart', 'syal', 'Syal atau Scarf Cashmere, material Viscose (sutera sintetis), ukuran 65cm x 180cm, style casual, unisex, kondisi 100% baru, dan made in China.', 'favourite', 'product-6.jpg', 'product-6.jpg', 'product-6.jpg', 'product-6.jpg', '24.00', '0.00', 'abu-abu'),
(8, 'Tas Selempang Orion Synthetic Leather', 'Firefly', 'tas', 'High quality synthetic leather, waterproof material inside, laptop Sleeve up to 14\", fully padded main compartment, ballpoint & handphone sleeve inside, and roomy main compartment', 'favourite', 'product-7.jpg', 'product-7.jpg', 'product-7.jpg', 'product-7.jpg', '23.00', '0.00', 'coklat'),
(9, 'Matsuda Kaos Polo Shirt Pria Kerah Aioi', 'Matsuda', 'kaos', 'Style Aioi, Polo Shirt Original Premium Jersey Cotton Mix, Matsuda - Your Everyday Premium Clothing dan Bahan premium comfort.\r\n', 'favourite', 'product-8.jpg', 'product-8.jpg', 'product-8.jpg', 'product-8.jpg', '29.00', '0.00', 'hitam'),
(10, 'Parfum Bandung', 'Kafh Ijo', 'None', 'Murah meriah', 'Parfum', 'product-10.jpg', 'product-10.jpg', 'product-10.jpg', 'product-10.jpg', '28.00', '0.00', 'Hijau'),
(12, 'Jaket Bomber', 'Uniclo', 'jaket', 'Barang terjamin kualitasnya, bahan bagus, dan tebal. Ayo buruan order kak sebelum terlambat. Jaket terbaik', 'None', 'Jaket_Bomber1.jpg', 'Jaket_Bomber2.jpg', 'Jaket_Bomber3.jpg', 'Jaket_Bomber4.jpg', '25.00', '0.00', 'hijau');

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
(3, 'Daffa Ismail', 'user3@gmail.com', 'fcea920f7412b5da7be0cf42b8c93759', '628763655333', 'Bandung City View', 'Bandung', 'user_profile3.jpg'),
(4, 'Justin Bieber', 'justin@gmail.com', 'f6eca4dbc78df78d63fba980e448185f', '+6287714477053', 'Jl Amerika no 123', 'New York', 'Justin_Bieber.jpg'),
(5, 'robet', 'robet@gmail.com', '8eed86c72f853af1aa25638e7a27586e', '+6287714477053', 'jl durian', 'Bandung', 'robet.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

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
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
