-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2023 at 01:18 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin_role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_phone`, `created_at`, `updated_at`, `admin_role`) VALUES
(1, 'hieunadal2411@gmail.com', '419e9bc2c90d694d91187e3daca27f50', 'Híu Đụt', '0382524296', NULL, NULL, 0),
(2, 'pth0512@gmail.com', '929933c00466716d32f0957ecf659cd4', 'Phạm Thị Hòa', '0365073198', NULL, NULL, 2),
(3, 'dong123@gmail.com', '202cb962ac59075b964b07152d234b70', 'Đông', '123', NULL, NULL, 1),
(4, 'duy123@gmail.com', '202cb962ac59075b964b07152d234b70', 'Duy', '123', NULL, NULL, 1),
(5, 'dung123@gmail.com', '202cb962ac59075b964b07152d234b70', 'Dung', '123', NULL, NULL, 1),
(6, 'quang123@gmail.com', '202cb962ac59075b964b07152d234b70', 'Quang', '123', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `banner_id` int(11) NOT NULL,
  `banner_name` varchar(255) NOT NULL,
  `banner_image` varchar(255) NOT NULL,
  `banner_status` int(11) NOT NULL,
  `banner_desc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`banner_id`, `banner_name`, `banner_image`, `banner_status`, `banner_desc`) VALUES
(1, 'Back to school', '300.jpg', 0, '<p>Back to school</p>'),
(2, 'Công nghệ', '220.jpg', 0, '<p>C&ocirc;ng nghệ mới với gi&aacute; cả phải chăng</p>'),
(3, 'Sale', '630.jpg', 0, '<p>Sản phẩm đ&atilde; sale off với gi&aacute; cả phải chăng</p>'),
(4, 'Đẹp', '393.png', 1, '<p>Đẹp</p>'),
(5, 'Đẹp 2', '159.jpg', 1, '<p>Đẹp</p>'),
(6, 'Đẹp 3', '446.jpg', 1, '<p>Đẹp</p>');

-- --------------------------------------------------------

--
-- Table structure for table `brand_product`
--

CREATE TABLE `brand_product` (
  `brand_id` int(10) NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brand_product`
--

INSERT INTO `brand_product` (`brand_id`, `brand_name`, `brand_desc`, `brand_status`, `created_at`, `updated_at`) VALUES
(2, 'HUMTTO', '<p>Thương hiệu uy t&iacute;n.</p>', 0, NULL, NULL),
(3, 'NATUREHIKE', '<p>Thương hiệu c&oacute; gi&aacute; tầm thấp với ph&acirc;n kh&uacute;c d&agrave;nh nhiều cho học sinh sinh vi&ecirc;n</p>', 1, NULL, NULL),
(4, 'GOTHIAR', '<p>GOTHIAR</p>', 0, NULL, NULL),
(5, 'GERBER', NULL, 1, NULL, NULL),
(6, 'SAKOS', '<p>Ram c&oacute; chất lượng cao v&agrave; chạy ổn định</p>', 0, NULL, NULL),
(7, 'GARMIN', NULL, 1, NULL, NULL),
(8, 'GOPRO', NULL, 1, NULL, NULL),
(9, 'TRANGIA', NULL, 0, NULL, NULL),
(10, 'CAMPINGMOON', NULL, 1, NULL, NULL),
(11, 'GIVI', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

CREATE TABLE `category_product` (
  `category_id` int(10) NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_product`
--

INSERT INTO `category_product` (`category_id`, `category_name`, `category_desc`, `category_status`, `created_at`, `updated_at`) VALUES
(1, 'Lều', '<p>Lều chất lượng cao</p>', 1, NULL, NULL),
(2, 'Ghế', '<p>Ghế du lịch</p>', 1, NULL, NULL),
(3, 'Bộ đàm', '<p>Bộ đ&agrave;m nghe gọi</p>', 1, NULL, NULL),
(4, 'Dây thừng', '<p>D&acirc;y buộc</p>', 1, NULL, NULL),
(6, 'Móc an toàn', '<p>M&oacute;c an to&agrave;n</p>', 1, NULL, NULL),
(7, 'Đồ ăn khô', '<p>Đồ ăn nhẹ</p>', 1, NULL, NULL),
(8, 'Túi ngủ', '<p>T&uacute;i ngủ</p>', 1, NULL, NULL),
(9, 'Găng tay', '<p>Găng tay</p>', 1, NULL, NULL),
(10, 'Dụng cụ y tế', '<p>Bộ dụng cụ y tế</p>', 1, NULL, NULL),
(11, 'Dụng cụ phòng thân', '<p>Bộ dụng cụ ph&ograve;ng th&acirc;n</p>', 0, NULL, NULL),
(12, 'Phụ kiện', '<p>Phụ kiện</p>', 1, NULL, NULL),
(13, 'Bếp ga', '<p>Bếp ga</p>', 1, NULL, NULL),
(14, 'Nồi', '<p>Nồi</p>', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cate_news`
--

CREATE TABLE `cate_news` (
  `cate_news_id` int(11) NOT NULL,
  `cate_news_name` varchar(255) NOT NULL,
  `cate_news_slug` varchar(255) NOT NULL,
  `cate_news_status` int(11) NOT NULL,
  `cate_news_desc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cate_news`
--

INSERT INTO `cate_news` (`cate_news_id`, `cate_news_name`, `cate_news_slug`, `cate_news_status`, `cate_news_desc`) VALUES
(1, 'Tin công nghệ', 'tin-cong-nghe', 1, '<p>Tin về c&ocirc;ng nghệ hot nhất hiện nay</p>');

-- --------------------------------------------------------

--
-- Table structure for table `code`
--

CREATE TABLE `code` (
  `code_id` int(11) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `code_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `code`
--

INSERT INTO `code` (`code_id`, `customer_email`, `code_number`) VALUES
(1, 'hieunadal2411@gmail.com', 816434),
(2, 'hieunadal2411@gmail.com', 462449),
(3, 'hieunadal2411@gmail.com', 579629),
(4, 'hieunadal2411@gmail.com', 230791),
(5, 'hieunadal2411@gmail.com', 388456),
(6, 'hieunadal2411@gmail.com', 588681),
(7, 'hieunadal2411@gmail.com', 307136),
(8, 'hieunadal2411@gmail.com', 999095),
(9, 'hieunadal2411@gmail.com', 953755),
(10, 'pth1205@gmail.com', 161973),
(11, 'pth1205@gmail.com', 36131),
(12, 'pth1205@gmail.com', 812359),
(13, 'hieunadal2411@gmail.com', 266722),
(14, 'hieunadal2411@gmail.com', 824059),
(15, 'hieunadal2411@gmail.com', 740701),
(16, 'hieunadal2411@gmail.com', 637060),
(17, 'hieunadal2411@gmail.com', 733519),
(18, 'hieunadal2411@gmail.com', 331143),
(19, 'hieunadal2411@gmail.com', 791781),
(20, 'hieunadal2411@gmail.com', 853216);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) UNSIGNED NOT NULL,
  `contact_name` varchar(25) NOT NULL,
  `contact_email` char(25) NOT NULL,
  `contact_phone` int(10) NOT NULL,
  `contact_message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `contact_name`, `contact_email`, `contact_phone`, `contact_message`) VALUES
(2, 'Trần Trung Hiếu', 'hieunadal2411@gmail.com', 382524296, 'abcd');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `customer_email`, `customer_password`, `customer_phone`, `created_at`, `updated_at`) VALUES
(1, 'Trần Trung Hiếu', 'hieunadal2411@gmail.com', '908a316ea8afa378a0d5b9b3345aa108', '0382524296', NULL, NULL),
(3, 'Phạm Thị Hòa', 'pth1205@gmail.com', '929933c00466716d32f0957ecf659cd4', '0365073198', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_07_29_074501_create_admin_table', 1),
(6, '2022_07_30_045442_create_category_product', 2),
(7, '2022_07_30_201601_create_brand_product', 3),
(8, '2022_07_30_203616_create_product', 4),
(9, '2022_08_01_025439_create_review_product', 5),
(10, '2022_08_10_114753_create_customer', 6),
(11, '2022_08_10_133107_create_shipping', 7),
(15, '2022_08_10_174113_create_payment', 8),
(16, '2022_08_10_174353_create_order', 8),
(17, '2022_08_10_174417_create_order_details', 8);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int(20) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `order_total` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `customer_id`, `shipping_id`, `payment_id`, `order_total`, `order_status`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 3, '1,224,000.00', 'Đang chờ xử lý', NULL, NULL),
(2, 1, 2, 4, '1,224,000.00', 'Đang chờ xử lý', NULL, NULL),
(3, 1, 2, 5, '1,224,000.00', 'Đang chờ xử lý', NULL, NULL),
(5, 3, 3, 7, '32,742,000.00', 'Đang chờ xử lý', NULL, NULL),
(6, 1, 4, 8, '10,914,000.00', 'Đang chờ xử lý', NULL, NULL),
(7, 1, 12, 9, '8262000.00', 'Đang chờ xử lý', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_details_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_sale_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_sale_quantity`, `created_at`, `updated_at`) VALUES
(1, 2, 6, 'Ram 8G King Stone', '1200000', 1, NULL, NULL),
(2, 3, 6, 'Ram 8G King Stone', '1200000', 1, NULL, NULL),
(3, 5, 9, 'Case gaming màu hồng', '10700000', 3, NULL, NULL),
(4, 6, 9, 'Case gaming màu hồng', '10700000', 1, NULL, NULL),
(5, 7, 14, 'Lều dây cỡ vừa', '1500000', 3, NULL, NULL),
(6, 7, 15, 'Găng tay chất lượng cao', '1200000', 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(20) NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(50) CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `payment_method`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, '2', 'Đang chờ xử lý', NULL, NULL),
(2, '2', 'Đang chờ xử lý', NULL, NULL),
(3, '2', 'Đang chờ xử lý', NULL, NULL),
(4, '2', 'Đang chờ xử lý', NULL, NULL),
(5, '2', 'Đang chờ xử lý', NULL, NULL),
(6, '2', 'Đang chờ xử lý', NULL, NULL),
(7, '1', 'Đang chờ xử lý', NULL, NULL),
(8, '2', 'Đang chờ xử lý', NULL, NULL),
(9, '1', 'Đang chờ xử lý', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(10) NOT NULL,
  `category_id` int(10) NOT NULL,
  `brand_id` int(10) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `category_id`, `brand_id`, `product_name`, `product_desc`, `product_content`, `product_price`, `product_image`, `product_status`, `created_at`, `updated_at`) VALUES
(3, 8, 4, 'Túi ngủ con sâu nhiều màu', NULL, NULL, '600000', '61.jpeg', 1, NULL, NULL),
(4, 10, 11, 'Dụng cụ y tế cơ bản', NULL, NULL, '800000', '346.jpeg', 1, NULL, NULL),
(6, 3, 9, 'Bộ đàm JFH574', NULL, NULL, '1200000', '632.jpg', 1, NULL, NULL),
(7, 14, 8, 'Nồi inox và phụ kiện', NULL, NULL, '1300000', '908.png', 1, NULL, NULL),
(8, 14, 2, 'Nồi cắm trại cao cấp', NULL, NULL, '3000000', '385.jpg', 1, NULL, NULL),
(9, 4, 5, 'Dây căng trại chất lượng cao', NULL, NULL, '10700000', '120.webp', 1, NULL, NULL),
(10, 4, 7, 'Dây thừng căng lều trại', NULL, NULL, '700000', '555.jpg', 1, NULL, NULL),
(11, 2, 3, 'Ghế xếp khum đen Naturehike NH21JOO2', NULL, NULL, '300000', '185.webp', 1, NULL, NULL),
(12, 1, 11, 'Lều dây cỡ to', NULL, NULL, '3000000', '602.jpg', 1, NULL, NULL),
(13, 1, 11, 'Lều không dây cỡ vừa', NULL, NULL, '1000000', '32.jpg', 0, NULL, NULL),
(14, 1, 11, 'Lều dây cỡ vừa', NULL, NULL, '1500000', '172.jpg', 1, NULL, NULL),
(15, 9, 7, 'Găng tay chất lượng cao', '<p>Đ&acirc;y l&agrave; sản phẩm chất lượng cao&nbsp;</p>', '<p>Đ&acirc;y l&agrave; sản phẩm chất lượng cao, c&oacute; thể d&ugrave;ng để đi xe hoặc leo n&uacute;i đều được.</p>', '1200000', '362.jfif', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `review_product`
--

CREATE TABLE `review_product` (
  `review_id` int(10) UNSIGNED NOT NULL,
  `reviewer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviewer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `review_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `shipping_id` int(10) NOT NULL,
  `shipping_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping`
--

INSERT INTO `shipping` (`shipping_id`, `shipping_name`, `shipping_address`, `shipping_phone`, `shipping_email`, `shipping_note`, `created_at`, `updated_at`) VALUES
(1, 'Trần Trung Hiếu', '19, ngõ 39, Hồ Tùng Mậu, Cầu Giấy, Hà Nội', '0382524296', 'hieunadal2411@gmail.com', 'Giao hàng vào giờ hành chính', NULL, NULL),
(2, 'Trần Trung Hiếu', '19, ngõ 39, Hồ Tùng Mậu, Cầu Giấy, Hà Nội', '0382524296', 'hieunadal2411@gmail.com', '123', NULL, NULL),
(3, 'Phạm Thị Hòa', 'Cầu Diễn, Bắc Từ Liêm, Hà Nội', '0365073198', 'gdhp1205@gmail.com', 'Giao hàng vào giờ hành chính', NULL, NULL),
(4, 'Phạm Thị Hòa', 'Cầu Diễn, Bắc Từ Liêm, Hà Nội', '0365073198', 'gdhp1205@gmail.com', 'b', NULL, NULL),
(5, 'Trần Trung Hiếu', '19, ngõ 39, Hồ Tùng Mậu, Cầu Giấy, Hà Nội', '0382524296', 'hieunadal2411@gmail.com', 'abc', NULL, NULL),
(6, 'Trần Trung Hiếu', '19, ngõ 39, Hồ Tùng Mậu, Cầu Giấy, Hà Nội', '0382524296', 'hieunadal2411@gmail.com', 'đsdsds', NULL, NULL),
(7, 'Trần Trung Hiếu', '19, ngõ 39, Hồ Tùng Mậu, Cầu Giấy, Hà Nội', '0382524296', 'hieunadal2411@gmail.com', 'ghhjghjkgkjgk', NULL, NULL),
(8, 'Trần Trung Hiếu', '19, ngõ 39, Hồ Tùng Mậu, Cầu Giấy, Hà Nội', '0382524296', 'hieunadal2411@gmail.com', 'fsfsfsfsfe', NULL, NULL),
(9, 'Trần Trung Hiếu', '19, ngõ 39, Hồ Tùng Mậu, Cầu Giấy, Hà Nội', '0382524296', 'hieunadal2411@gmail.com', 'fefefe', NULL, NULL),
(10, 'Trần Trung Hiếu', '19, ngõ 39, Hồ Tùng Mậu, Cầu Giấy, Hà Nội', '0382524296', 'hieunadal2411@gmail.com', 'FRFRFR', NULL, NULL),
(11, 'Trần Trung Hiếu', '19, ngõ 39, Hồ Tùng Mậu, Cầu Giấy, Hà Nội', '0382524296', 'hieunadal2411@gmail.com', 'dfvasdv', NULL, NULL),
(12, 'Trần Trung Hiếu', '19, ngõ 39, Hồ Tùng Mậu, Cầu Giấy, Hà Nội', '0382524296', 'hieunadal2411@gmail.com', 'gsgg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `brand_product`
--
ALTER TABLE `brand_product`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `cate_news`
--
ALTER TABLE `cate_news`
  ADD PRIMARY KEY (`cate_news_id`);

--
-- Indexes for table `code`
--
ALTER TABLE `code`
  ADD PRIMARY KEY (`code_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `shipping_id` (`shipping_id`),
  ADD KEY `payment_id` (`payment_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_details_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `brand_id` (`brand_id`);

--
-- Indexes for table `review_product`
--
ALTER TABLE `review_product`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `brand_product`
--
ALTER TABLE `brand_product`
  MODIFY `brand_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `category_product`
--
ALTER TABLE `category_product`
  MODIFY `category_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `cate_news`
--
ALTER TABLE `cate_news`
  MODIFY `cate_news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `code`
--
ALTER TABLE `code`
  MODIFY `code_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_details_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `review_product`
--
ALTER TABLE `review_product`
  MODIFY `review_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shipping`
--
ALTER TABLE `shipping`
  MODIFY `shipping_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_cus` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `order_pay` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`payment_id`),
  ADD CONSTRAINT `order_ship` FOREIGN KEY (`shipping_id`) REFERENCES `shipping` (`shipping_id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `orderde_order` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`),
  ADD CONSTRAINT `orderde_pro` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `pro_bran` FOREIGN KEY (`brand_id`) REFERENCES `brand_product` (`brand_id`),
  ADD CONSTRAINT `pro_cate` FOREIGN KEY (`category_id`) REFERENCES `category_product` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
