-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th10 16, 2022 lúc 06:17 AM
-- Phiên bản máy phục vụ: 8.0.17
-- Phiên bản PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlykho`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'ĐIỆN THOẠI', NULL, '2022-06-13 03:57:05', '2022-06-13 03:57:05'),
(2, 'LAPTOP', NULL, '2022-06-13 03:57:10', '2022-06-13 03:57:10'),
(3, 'TABLET', NULL, '2022-06-13 03:57:16', '2022-06-13 03:57:16'),
(4, 'TAI NGHE', NULL, '2022-06-26 03:39:46', '2022-06-26 03:39:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_05_16_192646_create_sessions_table', 1),
(7, '2022_05_17_133906_create_categories_table', 1),
(8, '2022_05_17_135342_create_products_table', 1),
(9, '2022_05_24_074359_create_orders_table', 1),
(10, '2022_05_24_074526_create_order_items_table', 1),
(11, '2022_06_12_144823_create_totals_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total` decimal(20,2) NOT NULL DEFAULT '0.00',
  `is_check` tinyint(1) DEFAULT NULL,
  `is_payment` tinyint(1) NOT NULL,
  `typeOrder` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tenNVK` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `country`, `city`, `province`, `address`, `phone`, `email`, `note`, `total`, `is_check`, `is_payment`, `typeOrder`, `tenNVK`, `created_at`, `updated_at`) VALUES
(1, 6, 'Trieu Thao', 'VN', 'Lạng Sơn', 'Hữu Lũng', 'xóm 1', '0925366751', 'thaotrieu0109@gmail.com', NULL, '15756000.00', 1, 0, 'nhap', 'Nguyễn Thị Hòa', '2022-06-13 03:58:18', '2022-05-17 04:14:24'),
(2, 6, 'Trieu Thao', 'VN', 'Lạng Sơn', 'Hữu Lũng', 'xóm 1', '0925366751', 'thaotrieu0109@gmail.com', NULL, '203900000.00', 1, 0, 'nhap', 'Nguyễn Đức Kiên', '2022-06-13 04:01:13', '2022-05-26 04:23:02'),
(5, 7, 'Hà Bùi', 'VN', 'Vĩnh Phúc', 'Vĩnh Yên', 'xóm 5', '0942454624', 'habui198@gmail.com', NULL, '268600000.00', 1, 0, 'nhap', 'Nguyễn Thị Hòa', '2022-06-13 07:27:38', '2022-06-13 07:30:35'),
(6, 7, 'Hà Bùi', 'VN', 'Vĩnh Phúc', 'Vĩnh Yên', 'xóm 5', '0942454624', 'habui198@gmail.com', NULL, '98640000.00', 1, 0, 'nhap', 'Nguyễn Thị Hòa', '2022-06-13 07:29:36', '2022-06-13 07:30:38'),
(7, 6, 'Trieu Thao', 'VN', 'Lạng Sơn', 'Hữu Lũng', 'xóm 1', '0925366751', 'thaotrieu0109@gmail.com', NULL, '187820000.00', 1, 0, 'nhap', 'Nguyễn Đức Kiên', '2022-06-13 07:32:08', '2022-06-13 07:32:45'),
(10, 6, 'Trieu Thao', 'VN', 'Lạng Sơn', 'Hữu Lũng', 'xóm 1', '0925366751', 'thaotrieu0109@gmail.com', NULL, '81560000.00', 1, 0, 'nhap', 'Tạ Giang', '2022-06-24 14:01:59', '2022-09-21 13:46:07'),
(11, 6, 'Công ty TNHH Minh Long', 'VN', 'Hà Nội', 'Cầu Giấy', 'số 10 Trung Hòa', '0925366751', 'thaotrieu0109@gmail.com', NULL, '27490000.00', NULL, 0, 'nhap', NULL, '2022-06-26 02:57:47', '2022-06-26 02:57:48'),
(12, 6, 'Công ty TNHH Minh Long', 'VN', 'Hà Nội', 'Cầu Giấy', 'số 10 Trung Hòa', '0925366751', 'thaotrieu0109@gmail.com', 'Hàng chất lượng cao', '36296000.00', 1, 0, 'nhap', 'Nguyễn Thị Hòa', '2022-06-26 03:48:58', '2022-06-26 03:49:35'),
(14, 19, 'Nguyễn Ngọc Lan', 'VN', 'HaNoi', 'Kim Chung', '101A/10 Tây Lai Xá', '0397159480', 'lancute109@gmail.com', NULL, '18760000.00', 1, 0, 'xuat', 'Tạ Thị Giang', '2022-06-29 15:08:32', '2022-06-30 04:44:10'),
(15, 19, 'Nguyễn Ngọc Lan', 'VN', 'HaNoi', 'Kim Chung', '101A/10 Tây Lai Xá', '0397159480', 'lancute109@gmail.com', NULL, '6090000.00', 1, 1, 'xuat', 'Tạ Thị Giang', '2022-06-29 15:09:32', '2022-05-18 15:09:54'),
(16, 6, 'Trieu Thao', 'VN', 'Lạng Sơn', 'Hữu Lũng', 'xóm 1', '0925366751', 'thaotrieu0109@gmail.com', NULL, '71750000.00', 1, 0, 'nhap', 'Tạ Thị Giang', '2022-06-30 04:42:30', '2022-06-30 04:43:04'),
(17, 19, 'Nguyễn Ngọc Lan', 'VN', 'HaNoi', 'Kim Chung', '101A/10 Tây Lai Xá', '0397159480', 'lancute109@gmail.com', NULL, '27080000.00', 0, 0, 'xuat', 'Tạ Thị Giang', '2022-06-30 04:43:58', '2022-06-30 10:46:08'),
(18, 19, 'Ta Giang', 'VN', 'HaNoi', 'Cầu Giấy', 'Test address', '0925366751', 'hieugiang2k1@gmail.com', NULL, '9380000.00', NULL, 1, 'xuat', NULL, '2022-06-30 10:40:48', '2022-06-30 10:40:48'),
(19, 19, 'Trieu Thao', 'VN', 'Lạng Sơn', 'Hữu Lũng', 'xóm 1', '0925366751', 'thaotrieu0109@gmail.com', NULL, '28140000.00', NULL, 0, 'xuat', NULL, '2022-07-01 02:33:02', '2022-07-01 02:33:02'),
(20, 19, 'Trieu Thao', 'VN', 'Lạng Sơn', 'Hữu Lũng', 'xóm 1', '0925366751', 'thaotrieu0109@gmail.com', NULL, '4690000.00', NULL, 1, 'xuat', NULL, '2022-07-01 02:55:31', '2022-07-01 02:55:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pro_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(20,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_items`
--

INSERT INTO `order_items` (`id`, `pro_id`, `order_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 4, '3939000.00', '2022-06-13 03:58:18', '2022-06-13 03:58:18'),
(2, 3, 2, 10, '20390000.00', '2022-06-13 04:01:13', '2022-06-13 04:01:13'),
(8, 7, 7, 5, '13390000.00', '2022-06-13 07:32:08', '2022-06-13 07:32:08'),
(11, 3, 10, 4, '20390000.00', '2022-06-24 14:01:59', '2022-06-24 14:01:59'),
(12, 10, 11, 10, '2749000.00', '2022-06-26 02:57:47', '2022-06-26 02:57:47'),
(13, 23, 12, 14, '629000.00', '2022-06-26 03:48:58', '2022-06-26 03:48:58'),
(14, 10, 12, 10, '2749000.00', '2022-06-26 03:48:58', '2022-06-26 03:48:58'),
(16, 1, 14, 4, '4690000.00', '2022-06-29 15:08:32', '2022-06-29 15:08:32'),
(17, 23, 15, 2, '700000.00', '2022-06-29 15:09:32', '2022-06-29 15:09:32'),
(18, 1, 15, 1, '4690000.00', '2022-06-29 15:09:32', '2022-06-29 15:09:32'),
(19, 19, 16, 2, '11690000.00', '2022-06-30 04:42:30', '2022-06-30 04:42:30'),
(20, 3, 16, 1, '20390000.00', '2022-06-30 04:42:30', '2022-06-30 04:42:30'),
(21, 17, 16, 2, '13990000.00', '2022-06-30 04:42:30', '2022-06-30 04:42:30'),
(22, 19, 17, 2, '13540000.00', '2022-06-30 04:43:58', '2022-06-30 04:43:58'),
(23, 1, 18, 2, '4690000.00', '2022-06-30 10:40:48', '2022-06-30 10:40:48'),
(24, 1, 19, 6, '4690000.00', '2022-07-01 02:33:02', '2022-07-01 02:33:02'),
(25, 1, 20, 1, '4690000.00', '2022-07-01 02:55:31', '2022-07-01 02:55:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tenSP` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DVT` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mauSac` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `giaNhap` decimal(20,2) NOT NULL DEFAULT '0.00',
  `giaXuat` decimal(20,2) NOT NULL DEFAULT '0.00',
  `tgBaoQuan` timestamp NULL DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT '1652787335.jpg',
  `images` text COLLATE utf8_unicode_ci,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `tenSP`, `DVT`, `mauSac`, `giaNhap`, `giaXuat`, `tgBaoQuan`, `description`, `quantity`, `image`, `images`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Điện thoại Xiaomi Redmi Note 11 (4GB/64GB)', 'Chiếc', 'Xám than', '3939000.00', '4690000.00', '2023-05-12 03:00:00', 'Màn hình: AMOLED 6.43\", Full HD+ (2400x1080 Pixels)\r\nHệ điều hành: Android 11\r\nCamera sau: 50 MP + 8 MP + 2 MP + 2 MP\r\nCamera trước: 13 MP\r\nChipset: Snapdragon 680\r\nRAM: 4 GB\r\nBộ nhớ trong: 64 GB\r\nCổng kết nối/sạc: USB Type-C\r\nDung lượng pin: 5000 mAh - Hỗ trợ sạc nhanh 33 W\r\nBộ sản phẩm gồm: Thân máy, sạc, cáp, sách hướng dẫn,', 18, '1655106167.jpg', NULL, 1, '2022-06-12 10:42:47', '2022-06-30 04:44:10'),
(3, 'Apple iPhone 13', 'Chiếc', 'Hồng', '20390000.00', '20490000.00', '2022-07-13 17:00:00', 'Màn hình Super Retina XDR 6.1 inch2\r\nChế độ Điện Ảnh làm tăng thêm độ sâu trường ảnh nông và tự động thay đổi tiêu cự trong video\r\nHệ thống camera kép tiên tiến với camera Wide và Ultra Wide 12MP; Phong Cách Nhiếp Ảnh, HDR thông minh thế hệ 4, chế độ Ban Đêm, khả năng quay video HDR Dolby Vision 4K\r\nCamera trước TrueDepth 12MP với chế độ Ban Đêm và khả năng quay video HDR Dolby Vision 4K\r\nChip A15 Bionic cho hiệu năng thần tốc\r\nThời gian xem video lên đến 19 giờ3\r\nThiết kế bền bỉ với Ceramic Shield\r\nKhả năng chống nước đạt chuẩn IP68 đứng đầu thị trường\r\nMạng 5G cho tốc độ tải xuống siêu nhanh, xem video và nghe nhạc trực tuyến chất lượng cao\r\niOS 15 tích hợp nhiều tính năng mới cho phép bạn làm được nhiều việc hơn bao giờ hết với iPhone\r\nHỗ trợ phụ kiện MagSafe giúp dễ dàng gắn kết và sạc không dây nhanh hơn', 23, '1655106611.jpg', NULL, 1, '2022-06-12 10:50:11', '2022-09-21 13:46:07'),
(5, 'Điện Thoại Oppo Reno 5 (8GB/128G)', 'Chiếc', 'Đen', '5590000.00', '5990000.00', '2022-11-28 20:00:00', 'Điện thoại OPPO Reno5 dùng chung hệ thống cảm biến cao cấp trên OPPO Reno5 Pro với cụm 4 camera sau gồm camera chính 64 MP, camera góc siêu rộng 8 MP, camera macro 2 MP và camera xóa phông 2 MP hứa hẹn đem đến chất lượng ảnh vô cùng ấn tượng. Cảm biến 64 MP cùng các camera phụ cung cấp nhiều tùy chọn chụp đa dạng từ chụp cận cảnh đến góc rộng, xóa phông dù ngày hay đêm, thỏa mãn đam mê nhiếp ảnh của bạn.\r\n\r\nThách thức bóng đêm với cảm biến Sony cao cấp và thuật toán xử lý bằng AI cải tiến giúp thu sáng và tái tạo các chi tiết rõ nét và cho ra những tấm hình tỏa sáng trong đêm.\r\n\r\nGiờ đây, Reno5 đã có thể quay phim HDR, bạn có thể quay phim khi ngược sáng mà các chi tiết vẫn được giữ lại đầy đủ cùng cân bằng trắng được thể hiện tự nhiên giữa các vùng chênh sáng.\r\n\r\nCùng với đó là công nghệ siêu chống rung 3.0, chế độ quay đồng thời từ cả camera trước và sau, chỉnh sửa video dễ dàng với Soloop giúp bạn sáng tạo những nội dung vlog thú vị để chia sẻ với bạn bè.', 0, '1655107172.jpg', NULL, 1, '2022-06-12 10:59:32', '2022-06-12 10:59:32'),
(6, 'Điện thoại Samsung Galaxy M23 5G (6GB/128GB)', 'Chiếc', 'Xanh', '6390000.00', '6670000.00', '2024-02-06 17:00:00', 'Sức mạnh vượt trội của công nghệ kết nối 5G mang đến những trải nghiệm di động ấn tượng.\r\nHiệu năng mãi đỉnh với vi xử lý thông minh\r\nRộng mở đa trải nghiệm với Ram Plus\r\nLưu nhiều hơn xóa ít hơn với bộ nhớ khổng lồ\r\nTrải nghiệm màn hình mượt trội phân khúc', 0, '1655107437.jpg', NULL, 1, '2022-06-12 11:03:57', '2022-06-25 13:18:59'),
(7, 'Apple iPhone 11', 'Chiếc', 'Đỏ', '13390000.00', '13490000.00', '2022-02-01 10:00:00', 'Quay video 4K, chụp ảnh chân dung tuyệt đẹp và chụp phong cảnh rộng với hệ thống camera kép hoàn toàn mới. Chụp ảnh tối ưu trong điều kiện ánh sáng yếu với chế độ Ban Đêm. Xem ảnh, video và chơi game với màu sắc chân thực trên màn hình Liquid Retina 6.1 inch.3 Trải nghiệm hiệu năng tuyệt vời với chip A13 Bionic dành cho game, thực tế ảo tăng cường (AR) và chụp ảnh. Làm được nhiều việc hơn và sạc ít hơn với thời lượng pin bền bỉ cả ngày.2 Và bớt phải lo lắng nhờ khả năng chống nước ở độ sâu tối đa 2 mét trong vòng 30 phút', 5, '1655107540.jpg', NULL, 1, '2022-06-12 11:05:40', '2022-06-13 19:31:51'),
(9, 'Máy tính bảng Samsung Galaxy Tab A8 (4GB/64GB)', 'Cái', 'Xám Titan', '6790000.00', '8490000.00', '2023-08-14 10:00:00', 'Mở ra thế giới giải trí rộng lớn hơn\r\nSở hữu màn hình siêu lớn 10.5\" với thiết kế đường viền mỏng chỉ 10.2mm và tỉ lệ 16:10 chuẩn chỉnh cho bạn đắm chìm trọn vẹn vào thế giới điện ảnh ấn tượng. Thưởng thức nội dung yêu thích ở chất lượng tốt hơn cho bạn khám phá nhiều điều mới lạ hơn.', 0, '1655133472.jpg', NULL, 3, '2022-06-13 08:17:52', '2022-06-13 08:19:08'),
(10, 'Máy Tính Bảng Samsung Galaxy Tab A8 8\" T295', 'Cái', 'Đen', '2749000.00', '3390000.00', '2022-06-28 10:00:00', 'Màn hình lớn thoải mái sử dụng\r\nMáy Tính Bảng Samsung Galaxy Tab A8 8\" T295 (2019) sở hữu kính thước màn hình lớn đem lại không gian sử dụng thoải mái. Màn hình của chiếc máy tính bảng Samsung được thiết kế theo tỷ lệ 16:10 rất lý tưởng cho việc đọc sách, tạp chí, đọc báo hoặc lướt web. Đặc biệt với độ phân giải 1280 x 800 pixels cho hình ảnh hiển thị chi tiết, giúp bạn thoải mái lướt web hay xem phim phụ đề mà không mỏi mắt.', 10, '1655133540.jpg', NULL, 3, '2022-06-13 08:19:00', '2022-06-26 03:49:35'),
(11, 'Máy Tính Bảng Samsung Galaxy Tab S7 FE 4GB/64GB', 'Cái', 'Đen', '9909000.00', '13990000.00', '2022-06-20 10:00:00', 'Máy Tính Bảng Samsung Galaxy Tab S7 FE 4GB/64GB - Hàng Chính Hãng\r\n\r\nBộ sản phẩm bao gồm: Thân máy, sạc, cáp dữ liệu, bút S Pen, tài liệu hướng dẫn sử dụng, dụng cụ lấy sim và lấy thẻ nhớ.\r\n\r\nMàn hình lớn hiển thị nhiều hơn và rõ hơn\r\n\r\n- Galaxy Tab S7 FE có một phiên bản màn hình duy nhất với kích thước lớn 12.4 inch, phần viền bao quanh được thu nhỏ, tạo nên không gian rộng rãi, thoải mái cho bạn làm việc hay giải trí.\r\n\r\nHiệu năng ổn định cho nhu cầu giải trí cơ bản\r\n\r\n- Vi xử lý Snapdragon 750G giúp cho máy có tốc độ mở ứng dụng khá nhanh và chơi game 3D mượt mà.\r\n\r\n- Galaxy Tab S7 FE sẽ khiến bạn choáng ngợp với dụng lượng pin cực khủng 10090 mAh đảm bảo cho cường độ làm việc, giải trí liên tục trong nhiều giờ liền. máy hỗ trợ sạc nhanh công suất tối đa lên đến 45 W, tuy nhiên để sạc với tốc độ này bạn cần mua củ sạc phù hợp vì sạc kèm theo máy chỉ 15 W.', 0, '1655174050.jpg', NULL, 3, '2022-06-13 19:34:10', '2022-06-13 19:34:10'),
(12, 'Máy Tính Bảng Samsung Galaxy Tab S7 FE LTE T735 (4GB/64GB)', 'Cái', 'Xanh', '9990000.00', '13990000.00', '2022-07-05 10:00:00', 'S Pen cân tất, học chơi hết nấc\r\nTận hưởng tính năng đột phá và thế hệ S Pen cải tiến thông minh viết vẽ như thật. Thiết bị hoàn hảo cho học tập, làm việc và giải trí với màn hình 12.4”, vi xử lý Snapdragon 750G, loa kép cùng Pin 10,090mAh cho trải nghiệm liền mạch suốt ngày dài.', 0, '1655174343.jpg', NULL, 3, '2022-06-13 19:39:03', '2022-06-13 19:39:03'),
(13, 'Máy tính bảng Xiaomi Pad 5 (6GB/256GB)', 'Cái', 'Xám', '10699000.00', '10999000.00', '2024-03-07 10:00:00', 'Trải nghiệm không gian không giới hạn\r\nMàn hình lớn 11 inch có độ hiển thị siêu rõ nét với độ phân giải cao và hỗ trợ HDR10 giúp cho mọi chi tiết đều trở nên bắt mắt. Màn hình có khả năng hiển thị lên đến 1 tỷ màu sẽ khôi phục lại màu sắc rực rỡ nhất của cuộc sống xung quanh ngay trên màn hình.', 0, '1655174460.jpg', NULL, 3, '2022-06-13 19:41:00', '2022-06-13 19:41:00'),
(14, 'Máy tính bảng Samsung Galaxy Tab S8 (8gb/128gb)', 'Cái', 'Bạc', '15990000.00', '20990000.00', '2022-06-23 10:00:00', 'Không gian cho khả năng vô hạn: Ba kích thước, ba phiên bản,\r\nba sự lựa chọn hoàn hảo cho cá nhân\r\nTự hào mang đến bộ Camera trước góc siêu rộng và góc rộng, Galaxy Tab8 series cho phép bạn quay video ở chuẩn 4K vô cùng xuất sắc.', 0, '1655174776.jpg', NULL, 3, '2022-06-13 19:46:16', '2022-06-13 19:46:16'),
(16, 'Laptop Acer Aspire 7 A715-42G-R4XX', 'Chiếc', 'Đen', '20299000.00', '20499000.00', '2022-07-06 17:00:00', 'Acer Aspire 7 là chiếc laptop gaming 2021 được tích hợp rất nhiều sức mạnh vào khung máy. Với NVIDIA graphic GTX 1650 mới nhất giúp tăng khả năng xử lý công việc và giải trí của bạn, đồng thời CPU AMD Ryzen 5000 giúp mọi thứ hoạt động ở tốc độ tối ưu. Anh em dễ dàng \"vi vu\" mượt mà những tựa game online như Liên Minh Huyền Thoại, Fifa Online 4, Valorant, CS:GO ở mức đồ họa cao nhất.', 0, '1656214192.jpg', NULL, 2, '2022-06-26 03:29:52', '2022-06-26 03:29:52'),
(17, 'Laptop Asus ExpertBook B1400CEAE-EK3724', 'Chiếc', 'Đen', '13990000.00', '14000000.00', '2022-08-26 17:00:00', 'Hãy tận hưởng hiệu năng cực mạnh trên Laptop Asus ExpertBook B1400CEAE-EK3724, với bộ vi xử lý Intel Core thế hệ 11 tiên tiến, mang lại hiệu năng mạnh mẽ giúp bạn hoàn thành mọi tác vụ. Được kết hợp với bộ nhớ lên đến 48 GB và dung lượng lưu trữ thoải mái, B1400 chính là chiếc máy tính xách tay dành cho doanh nghiệp được trang bị để thực hiện những tác vụ cường độ cao nhất và cho phép bạn truy cập nhanh chóng nội dung mình cần. Máy cũng được trang bị kết nối liên tục với công nghệ ASUS WiFi Master và WiFi 6 chống nghẽn giúp bạn tự động kết nối với tín hiệu WiFi mạnh nhất, đảm bảo kết nối ổn định và mạnh mẽ cho dù bạn ở bất kỳ đâu.\r\n\r\nBạn có thể cấu hình ASUS ExpertBook B1 với hai ổ cứng bao gồm một SSD và một HDD, cung cấp giải pháp lưu trữ toàn diện về tốc độ và dung lượng. Chỉ với thao tác tháo ốc ở mặt đáy, việc nâng cấp RAM và ổ cứng có thể được thực hiện dễ dàng mà không cần phải tháo toàn bộ máy.\r\n\r\nCông nghệ Hiệu năng Thông minh của ASUS nằm ở thiết kế tản nhiệt siêu hiệu quả và giải pháp tiết kiệm điện năng. Công nghệ sử dụng các thuật toán độc quyền của ASUS kết hợp với năm4 cảm biến thông minh, thiết kế khí động học và bộ nguồn lên tới 90-watt (tùy chọn thêm) nhằm tăng cường hiệu năng CPU một cách thông minh với độ ổn định được cải thiện, tạo nên một chiếc máy tính xách tay mát mẻ và bớt ồn hơn. Với công nghệ Hiệu năng Thông minh của ASUS, ExpertBook B1 sẽ mang lại hiệu năng tối đa theo nhu cầu sử dụng của bạn.', 2, '1656214283.jpg', NULL, 2, '2022-06-26 03:31:23', '2022-06-30 04:43:04'),
(18, 'Máy Tính Xách Tay Laptop Huawei Matebook D15', 'chiếc', 'Trắng', '11490000.00', '11590000.00', '2022-06-29 17:00:00', 'Phản hồi siêu nhanh, dung lượng siêu lớn', 0, '1656214385.jpg', NULL, 2, '2022-06-26 03:33:05', '2022-06-26 03:33:05'),
(19, 'Laptop Dell Vostro 3510 V5I3305W', 'Chiếc', 'Đen', '11690000.00', '13540000.00', '2022-07-08 17:00:00', 'Vỏ của chiếc laptop Dell Vostro này được làm hoàn toàn bằng nhựa đem đến trọng lượng 1.69 kg và dày 17.5 mm gọn nhẹ, dễ dàng di chuyển, được chế tác vô cùng chắc chắn, bền bỉ. Bạn có thể bỏ laptop vào balo và mang khi đi làm, đi học một cách gọn gàng, không lo chiếm quá nhiều diện tích hay vướng víu khi di chuyển.', 2, '1656214471.jpg', NULL, 2, '2022-06-26 03:34:31', '2022-06-30 04:43:04'),
(20, 'Laptop Dell Inspiron 15 3511 P112F001BBL', 'Cái', 'Đen', '14490000.00', '15490000.00', '2023-08-16 17:00:00', 'ộ vi xử lý:Intel Core i5-1135G7 (8MB Cache, 2.4GHz, Turbo Boost 4.2GHz)\r\n\r\nBộ nhớ:4GB (1x4GB) DDR4 2666MHz\r\n\r\nỔ cứng lưu trữ:512GB M.2 PCIe NVMe SSD\r\n\r\nĐồ hoạ:Intel(R) Iris Xe Graphics\r\n\r\nMàn hình:15.6-inch FHD (1920 x 1080) Anti-glare LED Backlight Non-Touch Narrow Border WVA Display\r\n\r\nBàn phím:Non Led backlit\r\n\r\nCổng kết nối:2x USB 3.2 Gen 1 ports\r\n1x USB 2.0 port\r\n1x HDMI 1.4 port\r\n1x Audio jack\r\n\r\nỔ quang:Không\r\n\r\nKết nối không dây:Intel(R) Wi-Fi 6 2x2 (Gig+) and Bluetooth 5.1\r\n\r\nHệ điều hành:Windows 10 Home Single Language \r\n\r\nCảm ứng:Không\r\n\r\nMàu sắc:Black\r\n\r\nPin:3 Cell 41WHr', 0, '1656214592.jpg', NULL, 2, '2022-06-26 03:36:32', '2022-06-26 03:36:32'),
(21, 'Laptop Asus VivoBook A515EA-BQ1530W', 'Chiếc', 'Đen', '12390000.00', '15390000.00', '2024-07-15 17:00:00', 'Cùng bạn đến bất cứ nơi đâu\r\nVivoBook 14 A515EA giúp bạn làm việc hiệu quả và giải trí dù bạn ở bất cứ đâu. Với tổng trọng lượng chỉ 1.7 kg và siêu mỏng chỉ 17.9mm, VivoBook 14 có thể nằm gọn gàng trong túi xách để bạn dễ dàng mang theo trên mọi hành trình.\r\n\r\nHỗ trợ tối đa công việc của bạn\r\nĐược trang bị bộ vi xử lý Intel Core i3 mới nhất với bộ nhớ lên tới 4GB, VivoBook 15 2021 mang đến hiệu năng bạn cần để xử lý mọi tác vụ. Thiết bị cũng đi kèm ổ SSD PCIe dung lượng lớn cho phép lưu trữ siêu nhanh.\r\n\r\nMàu sắc Bật cá tính\r\nVivoBook 15 với nắp kim loại đang thúc đẩy những giới hạn, tạo ra chuẩn mực mới, và thiết kế cá tính này đã làm nên tuyên ngôn cho thế hệ Gen Z. Chọn giữa màu Đen đá không đường cá tính, Bạc soda đậm chất thời trang hoặc nếu bạn thực sự đầy đam mê và ngọt ngào, hãy chọn màu Vàng trà sữa cho riêng mình.\r\n\r\nEnter Bật cá tính với viền Vàng Neon\r\nMàu sắc nổi bật cùng thiết kế phá cách tiếp tục là chủ đề cho dòng máy với phím Enter viền vàng neon nổi bật.', 0, '1656214679.jpg', NULL, 2, '2022-06-26 03:37:59', '2022-06-26 03:37:59'),
(22, 'Laptop Lenovo IdeaPad 3 15ITL05 81X800KRVN', 'Chiếc', 'Trắng', '10200000.00', '10700000.00', '2022-07-22 17:00:00', 'Thiết kế gọn nhẹ, phong cách trẻ trung\r\nViệc hằng ngày bạn phải mang theo máy tính và di chuyển giữa nhiều địa điểm vốn rất nặng nề và phiền toái, Laptop Lenovo IdeaPad 3 15ITL05 81X800KRVN đã mang đến kích thước vô cùng gọn nhẹ với ba chiều dài - rộng - cao lần lượt là 362.2 x 253.4 x 19.9 mm cùng khối lượng chỉ 1.7 kg, bạn đã hoàn toàn có thể giải quyết được vấn đề này. Đặt máy gọn gàng trong balo và tự do đến bất kì đâu bạn muốn mà không lo ngại sự nặng nề, bất tiện.', 0, '1656214760.jpg', NULL, 2, '2022-06-26 03:39:20', '2022-06-26 03:39:20'),
(23, 'Tai nghe chụp tai không dây Remax RB-660HB', 'Đôi', 'Đen', '629000.00', '700000.00', '2022-07-12 17:00:00', 'Sự ra đời của chiếc #tai_nghe_Bluetooth chụp tai thế hệ mới Remax RB-660HB mang đến những trải nghiệm âm thanh sống động, kịch tính hơn hẳn các dòng headphone thường.\r\n\r\n️ Kiểu dáng nhỏ gọn, năng động, hiện đại không gây cảm giác khó chịu, nặng nề với người dùng.\r\n\r\n️ Chất liệu cao cấp tạo sự chắc chắn, bền bỉ giúp cách ly tạp âm hiệu quả, không cho lọt vào tai cũng như không để âm thanh bên trong lọt ra ngoài.\r\n\r\n️ Âm thanh chất lượng cao, sắc nét với âm bass mạnh mẽ, âm cao trong trẻo và âm trung đầm ấm.\r\n️ Kết nối Bluetooth 5.0 nhanh hơn đến 2 lần, ít bị trễ tín hiệu, ít hao pin, tránh được tình trạng giật lag hay mất kết nối giữa chừng.\r\n\r\n️ Tích hợp giao diện AUX, bạn có thể biến chiếc tai nghe không dây này thành có dây thông qua jack cắm 3.5mm.\r\n\r\n️ Dung lượng pin lên đến 330mAh cho khả năng sử dụng liên tục lên đến 12h và thời gian chờ lên đến 300h trong khi chỉ mất 1.5h để sạc đầy pin trở lại.\r\n\r\n️ Khả năng tương thích rộng rãi, cách kết nối cực kì đơn giản', 12, '1656214915.jpg', NULL, 4, '2022-06-26 03:41:55', '2022-06-29 15:09:54'),
(24, 'Máy tính bảng VANKYO MatrixPad S30', 'Cái', 'Xanh', '3190000.00', '3690000.00', '2022-07-08 17:00:00', 'Có được những trải nghiệm thoải mái nhất\r\nMáy tính bảng Vankyo MatrixPad S30 được GMS chứng nhận dùng hệ điều hành thông minh Android 9.0 Pie mới nhất, bạn sẽ không bị làm phiền bởi pop-ups hay quảng cáo spam và có toàn quyền truy cập vào Google Play và tải xuống bất kỳ ứng dụng nào bạn muốn.', 0, '1656215043.jpg', NULL, 3, '2022-06-26 03:44:03', '2022-06-26 03:44:03'),
(25, 'Máy Tính Bảng Samsung Galaxy Tab A7 Lite T225 3GB/32GB', 'Cái', 'Vàng', '3379000.00', '3379000.00', '2022-08-17 17:00:00', 'Máy Tính Bảng Samsung Galaxy Tab A7 Lite T225 3GB/32GB - Hàng Chính Hãng\r\n\r\nBộ sản phẩm bao gồm: Thân máy, sạc, cáp dữ liệu, tài liệu hướng dẫn sử dụng, dụng cụ lấy sim và lấy thẻ nhớ.\r\n\r\nTrọng lượng chỉ 371g  siêu mỏng nhẹ\r\n\r\nMàn hình kích thước rộng  8.7 inch độ phân giải cao 800 x 1340 pixel\r\n\r\nDung lượng pin 5100mAh, hổ trợ sạc nhanh 15W\r\n\r\nThiết kế siêu mỏng nhẹ\r\n\r\n- Samsung Galaxy Tab A7 Lite 3GB/32GB thiết kế với chất liệu nhôm nguyên khối giúp cho máy trở nên cao cấp. Mặc khác, sản phẩm vẫn có độ mỏng nhẹ ấn tượng chỉ nặng 371 g và dày chỉ 8 mm, giúp cho việc cầm nắm hay sử dụng cũng trở nên tiện lợi hơn. Bạn có thể mang máy tính bảng theo đi bất cứ đâu để phục vụ cho công việc, giải trí.\r\n\r\nMàn hình lớn hiển thị nhiều hơn và rõ hơn\r\n\r\n- Galaxy Tab A7 Lite trang bị màn hình kích thước 8.7 inch, sử dụng tấm nền LCD TFT với độ phân giải 1340 x 800. Đặc biệt, hệ thống loa kép cùng âm thanh Dolby Atmos sẽ mang đến chất âm sống động hơn bao giờ hết. Galaxy Tab A7 Lite giống như một trung tâm giải trí đích thực.\r\n\r\nHiệu năng ổn định cho nhu cầu giải trí cơ bản\r\n\r\n- Trang bị vi xử lý Helio P22T 8 nhân xung nhịp tối đa 2.3 GHz, Galaxy Tab A7 Lite có hiệu năng ổn định, đáp ứng cho nhu cầu giải trí khác nhau như chơi game nhẹ nhàng đọc báo cập nhật tin tức.\r\n\r\nMặc dù Galaxy Tab A7 Lite đã sở hữu bộ nhớ 32GB đủ để cài đặt ứng dụng, lưu trữ hình ảnh, dữ liệu cơ bản. Thế nhưng nếu có nhu cầu nhiều hơn thì bạn hoàn toàn có thể mở rộng không gian lưu trữ với khe cắm thẻ nhớ microSD. Khả năng mở rộng tối đa lên tới 1TB cho bạn thoải mái lưu trữ dữ liệu.', 0, '1656215142.jpg', NULL, 3, '2022-06-26 03:45:42', '2022-06-26 03:45:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8_unicode_ci,
  `payload` text COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('5Q08EsxZHuBaHnuIPdgQYDuQuodf7t43WpCioTvl', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36 Edg/105.0.1343.42', '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', 1663768000),
('9UBmmg1TSYhnkkFbSl62ZJMhKkiW4lUxIrKopBLC', NULL, '127.0.0.1', 'ZaloPC-win32-24v470', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSlY1NURkd3ljb2JZSU5DeGdJNUdET0V1WGFHYUhJVE5ockN5SlRSNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1656644485),
('b5ergf60ZBL5U88qhjzfhoR3MG6JFQOamQIvQYdl', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.102 Safari/537.36 Edg/104.0.1293.70', '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', 1661695774),
('ju70KFU4SS2yGVgCJCzx0Qxz5whCXyydk06zcHk2', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'YTo0OntzOjQ6ImNhdHMiO086Mzk6IklsbHVtaW5hdGVcRGF0YWJhc2VcRWxvcXVlbnRcQ29sbGVjdGlvbiI6Mjp7czo4OiIAKgBpdGVtcyI7YTo0OntpOjA7TzoxOToiQXBwXE1vZGVsc1xDYXRlZ29yeSI6MzA6e3M6MTE6IgAqAGZpbGxhYmxlIjthOjI6e2k6MDtzOjQ6Im5hbWUiO2k6MTtzOjQ6InNsdWciO31zOjEzOiIAKgBjb25uZWN0aW9uIjtzOjU6Im15c3FsIjtzOjg6IgAqAHRhYmxlIjtzOjEwOiJjYXRlZ29yaWVzIjtzOjEzOiIAKgBwcmltYXJ5S2V5IjtzOjI6ImlkIjtzOjEwOiIAKgBrZXlUeXBlIjtzOjM6ImludCI7czoxMjoiaW5jcmVtZW50aW5nIjtiOjE7czo3OiIAKgB3aXRoIjthOjA6e31zOjEyOiIAKgB3aXRoQ291bnQiO2E6MDp7fXM6MTk6InByZXZlbnRzTGF6eUxvYWRpbmciO2I6MDtzOjEwOiIAKgBwZXJQYWdlIjtpOjE1O3M6NjoiZXhpc3RzIjtiOjE7czoxODoid2FzUmVjZW50bHlDcmVhdGVkIjtiOjA7czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO3M6MTM6IgAqAGF0dHJpYnV0ZXMiO2E6NTp7czoyOiJpZCI7aToxO3M6NDoibmFtZSI7czoxNToixJBJ4buGTiBUSE/huqBJIjtzOjQ6InNsdWciO047czoxMDoiY3JlYXRlZF9hdCI7czoxOToiMjAyMi0wNi0xMyAxMDo1NzowNSI7czoxMDoidXBkYXRlZF9hdCI7czoxOToiMjAyMi0wNi0xMyAxMDo1NzowNSI7fXM6MTE6IgAqAG9yaWdpbmFsIjthOjU6e3M6MjoiaWQiO2k6MTtzOjQ6Im5hbWUiO3M6MTU6IsSQSeG7hk4gVEhP4bqgSSI7czo0OiJzbHVnIjtOO3M6MTA6ImNyZWF0ZWRfYXQiO3M6MTk6IjIwMjItMDYtMTMgMTA6NTc6MDUiO3M6MTA6InVwZGF0ZWRfYXQiO3M6MTk6IjIwMjItMDYtMTMgMTA6NTc6MDUiO31zOjEwOiIAKgBjaGFuZ2VzIjthOjA6e31zOjg6IgAqAGNhc3RzIjthOjA6e31zOjE3OiIAKgBjbGFzc0Nhc3RDYWNoZSI7YTowOnt9czoyMToiACoAYXR0cmlidXRlQ2FzdENhY2hlIjthOjA6e31zOjg6IgAqAGRhdGVzIjthOjA6e31zOjEzOiIAKgBkYXRlRm9ybWF0IjtOO3M6MTA6IgAqAGFwcGVuZHMiO2E6MDp7fXM6MTk6IgAqAGRpc3BhdGNoZXNFdmVudHMiO2E6MDp7fXM6MTQ6IgAqAG9ic2VydmFibGVzIjthOjA6e31zOjEyOiIAKgByZWxhdGlvbnMiO2E6MDp7fXM6MTA6IgAqAHRvdWNoZXMiO2E6MDp7fXM6MTA6InRpbWVzdGFtcHMiO2I6MTtzOjk6IgAqAGhpZGRlbiI7YTowOnt9czoxMDoiACoAdmlzaWJsZSI7YTowOnt9czoxMDoiACoAZ3VhcmRlZCI7YToxOntpOjA7czoxOiIqIjt9fWk6MTtPOjE5OiJBcHBcTW9kZWxzXENhdGVnb3J5IjozMDp7czoxMToiACoAZmlsbGFibGUiO2E6Mjp7aTowO3M6NDoibmFtZSI7aToxO3M6NDoic2x1ZyI7fXM6MTM6IgAqAGNvbm5lY3Rpb24iO3M6NToibXlzcWwiO3M6ODoiACoAdGFibGUiO3M6MTA6ImNhdGVnb3JpZXMiO3M6MTM6IgAqAHByaW1hcnlLZXkiO3M6MjoiaWQiO3M6MTA6IgAqAGtleVR5cGUiO3M6MzoiaW50IjtzOjEyOiJpbmNyZW1lbnRpbmciO2I6MTtzOjc6IgAqAHdpdGgiO2E6MDp7fXM6MTI6IgAqAHdpdGhDb3VudCI7YTowOnt9czoxOToicHJldmVudHNMYXp5TG9hZGluZyI7YjowO3M6MTA6IgAqAHBlclBhZ2UiO2k6MTU7czo2OiJleGlzdHMiO2I6MTtzOjE4OiJ3YXNSZWNlbnRseUNyZWF0ZWQiO2I6MDtzOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7czoxMzoiACoAYXR0cmlidXRlcyI7YTo1OntzOjI6ImlkIjtpOjI7czo0OiJuYW1lIjtzOjY6IkxBUFRPUCI7czo0OiJzbHVnIjtOO3M6MTA6ImNyZWF0ZWRfYXQiO3M6MTk6IjIwMjItMDYtMTMgMTA6NTc6MTAiO3M6MTA6InVwZGF0ZWRfYXQiO3M6MTk6IjIwMjItMDYtMTMgMTA6NTc6MTAiO31zOjExOiIAKgBvcmlnaW5hbCI7YTo1OntzOjI6ImlkIjtpOjI7czo0OiJuYW1lIjtzOjY6IkxBUFRPUCI7czo0OiJzbHVnIjtOO3M6MTA6ImNyZWF0ZWRfYXQiO3M6MTk6IjIwMjItMDYtMTMgMTA6NTc6MTAiO3M6MTA6InVwZGF0ZWRfYXQiO3M6MTk6IjIwMjItMDYtMTMgMTA6NTc6MTAiO31zOjEwOiIAKgBjaGFuZ2VzIjthOjA6e31zOjg6IgAqAGNhc3RzIjthOjA6e31zOjE3OiIAKgBjbGFzc0Nhc3RDYWNoZSI7YTowOnt9czoyMToiACoAYXR0cmlidXRlQ2FzdENhY2hlIjthOjA6e31zOjg6IgAqAGRhdGVzIjthOjA6e31zOjEzOiIAKgBkYXRlRm9ybWF0IjtOO3M6MTA6IgAqAGFwcGVuZHMiO2E6MDp7fXM6MTk6IgAqAGRpc3BhdGNoZXNFdmVudHMiO2E6MDp7fXM6MTQ6IgAqAG9ic2VydmFibGVzIjthOjA6e31zOjEyOiIAKgByZWxhdGlvbnMiO2E6MDp7fXM6MTA6IgAqAHRvdWNoZXMiO2E6MDp7fXM6MTA6InRpbWVzdGFtcHMiO2I6MTtzOjk6IgAqAGhpZGRlbiI7YTowOnt9czoxMDoiACoAdmlzaWJsZSI7YTowOnt9czoxMDoiACoAZ3VhcmRlZCI7YToxOntpOjA7czoxOiIqIjt9fWk6MjtPOjE5OiJBcHBcTW9kZWxzXENhdGVnb3J5IjozMDp7czoxMToiACoAZmlsbGFibGUiO2E6Mjp7aTowO3M6NDoibmFtZSI7aToxO3M6NDoic2x1ZyI7fXM6MTM6IgAqAGNvbm5lY3Rpb24iO3M6NToibXlzcWwiO3M6ODoiACoAdGFibGUiO3M6MTA6ImNhdGVnb3JpZXMiO3M6MTM6IgAqAHByaW1hcnlLZXkiO3M6MjoiaWQiO3M6MTA6IgAqAGtleVR5cGUiO3M6MzoiaW50IjtzOjEyOiJpbmNyZW1lbnRpbmciO2I6MTtzOjc6IgAqAHdpdGgiO2E6MDp7fXM6MTI6IgAqAHdpdGhDb3VudCI7YTowOnt9czoxOToicHJldmVudHNMYXp5TG9hZGluZyI7YjowO3M6MTA6IgAqAHBlclBhZ2UiO2k6MTU7czo2OiJleGlzdHMiO2I6MTtzOjE4OiJ3YXNSZWNlbnRseUNyZWF0ZWQiO2I6MDtzOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7czoxMzoiACoAYXR0cmlidXRlcyI7YTo1OntzOjI6ImlkIjtpOjM7czo0OiJuYW1lIjtzOjY6IlRBQkxFVCI7czo0OiJzbHVnIjtOO3M6MTA6ImNyZWF0ZWRfYXQiO3M6MTk6IjIwMjItMDYtMTMgMTA6NTc6MTYiO3M6MTA6InVwZGF0ZWRfYXQiO3M6MTk6IjIwMjItMDYtMTMgMTA6NTc6MTYiO31zOjExOiIAKgBvcmlnaW5hbCI7YTo1OntzOjI6ImlkIjtpOjM7czo0OiJuYW1lIjtzOjY6IlRBQkxFVCI7czo0OiJzbHVnIjtOO3M6MTA6ImNyZWF0ZWRfYXQiO3M6MTk6IjIwMjItMDYtMTMgMTA6NTc6MTYiO3M6MTA6InVwZGF0ZWRfYXQiO3M6MTk6IjIwMjItMDYtMTMgMTA6NTc6MTYiO31zOjEwOiIAKgBjaGFuZ2VzIjthOjA6e31zOjg6IgAqAGNhc3RzIjthOjA6e31zOjE3OiIAKgBjbGFzc0Nhc3RDYWNoZSI7YTowOnt9czoyMToiACoAYXR0cmlidXRlQ2FzdENhY2hlIjthOjA6e31zOjg6IgAqAGRhdGVzIjthOjA6e31zOjEzOiIAKgBkYXRlRm9ybWF0IjtOO3M6MTA6IgAqAGFwcGVuZHMiO2E6MDp7fXM6MTk6IgAqAGRpc3BhdGNoZXNFdmVudHMiO2E6MDp7fXM6MTQ6IgAqAG9ic2VydmFibGVzIjthOjA6e31zOjEyOiIAKgByZWxhdGlvbnMiO2E6MDp7fXM6MTA6IgAqAHRvdWNoZXMiO2E6MDp7fXM6MTA6InRpbWVzdGFtcHMiO2I6MTtzOjk6IgAqAGhpZGRlbiI7YTowOnt9czoxMDoiACoAdmlzaWJsZSI7YTowOnt9czoxMDoiACoAZ3VhcmRlZCI7YToxOntpOjA7czoxOiIqIjt9fWk6MztPOjE5OiJBcHBcTW9kZWxzXENhdGVnb3J5IjozMDp7czoxMToiACoAZmlsbGFibGUiO2E6Mjp7aTowO3M6NDoibmFtZSI7aToxO3M6NDoic2x1ZyI7fXM6MTM6IgAqAGNvbm5lY3Rpb24iO3M6NToibXlzcWwiO3M6ODoiACoAdGFibGUiO3M6MTA6ImNhdGVnb3JpZXMiO3M6MTM6IgAqAHByaW1hcnlLZXkiO3M6MjoiaWQiO3M6MTA6IgAqAGtleVR5cGUiO3M6MzoiaW50IjtzOjEyOiJpbmNyZW1lbnRpbmciO2I6MTtzOjc6IgAqAHdpdGgiO2E6MDp7fXM6MTI6IgAqAHdpdGhDb3VudCI7YTowOnt9czoxOToicHJldmVudHNMYXp5TG9hZGluZyI7YjowO3M6MTA6IgAqAHBlclBhZ2UiO2k6MTU7czo2OiJleGlzdHMiO2I6MTtzOjE4OiJ3YXNSZWNlbnRseUNyZWF0ZWQiO2I6MDtzOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7czoxMzoiACoAYXR0cmlidXRlcyI7YTo1OntzOjI6ImlkIjtpOjQ7czo0OiJuYW1lIjtzOjg6IlRBSSBOR0hFIjtzOjQ6InNsdWciO047czoxMDoiY3JlYXRlZF9hdCI7czoxOToiMjAyMi0wNi0yNiAxMDozOTo0NiI7czoxMDoidXBkYXRlZF9hdCI7czoxOToiMjAyMi0wNi0yNiAxMDozOTo0NiI7fXM6MTE6IgAqAG9yaWdpbmFsIjthOjU6e3M6MjoiaWQiO2k6NDtzOjQ6Im5hbWUiO3M6ODoiVEFJIE5HSEUiO3M6NDoic2x1ZyI7TjtzOjEwOiJjcmVhdGVkX2F0IjtzOjE5OiIyMDIyLTA2LTI2IDEwOjM5OjQ2IjtzOjEwOiJ1cGRhdGVkX2F0IjtzOjE5OiIyMDIyLTA2LTI2IDEwOjM5OjQ2Ijt9czoxMDoiACoAY2hhbmdlcyI7YTowOnt9czo4OiIAKgBjYXN0cyI7YTowOnt9czoxNzoiACoAY2xhc3NDYXN0Q2FjaGUiO2E6MDp7fXM6MjE6IgAqAGF0dHJpYnV0ZUNhc3RDYWNoZSI7YTowOnt9czo4OiIAKgBkYXRlcyI7YTowOnt9czoxMzoiACoAZGF0ZUZvcm1hdCI7TjtzOjEwOiIAKgBhcHBlbmRzIjthOjA6e31zOjE5OiIAKgBkaXNwYXRjaGVzRXZlbnRzIjthOjA6e31zOjE0OiIAKgBvYnNlcnZhYmxlcyI7YTowOnt9czoxMjoiACoAcmVsYXRpb25zIjthOjA6e31zOjEwOiIAKgB0b3VjaGVzIjthOjA6e31zOjEwOiJ0aW1lc3RhbXBzIjtiOjE7czo5OiIAKgBoaWRkZW4iO2E6MDp7fXM6MTA6IgAqAHZpc2libGUiO2E6MDp7fXM6MTA6IgAqAGd1YXJkZWQiO2E6MTp7aTowO3M6MToiKiI7fX19czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO31zOjY6Il90b2tlbiI7czo0MDoiSWZEYUNJa2hVS2Nnd1lBNDZnbEM2RUJwTWNqTmc1bFlJUlR5eDByTCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1656644598),
('lglRydvlKeCeLXPIuof6It6Ud7BySH7ymrzmU4tQ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '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', 1656644553),
('ONR7c02MSfsyUt4GND8NJQjWswBl3m5ZfEAuOPwZ', NULL, '127.0.0.1', 'ZaloPC-win32-24v470', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTlhQYk8yWnJkSnB6cUtqU2R5ZW9XWDBMS1FGaVhQbUozbWVBZUZXdSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyNzoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2FkbWluIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1656644485),
('Q0W5lW9Mx2PfzPBJFnQtwIC9ORp2AoO8NZ8vqkNE', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.53 Safari/537.36 Edg/103.0.1264.37', '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', 1656642360);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `totals`
--

CREATE TABLE `totals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tongX` int(11) NOT NULL DEFAULT '0',
  `tongN` int(11) NOT NULL DEFAULT '0',
  `doanhThu` decimal(20,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `totals`
--

INSERT INTO `totals` (`id`, `name`, `tongX`, `tongN`, `doanhThu`, `created_at`, `updated_at`) VALUES
(1, '01', 10, 11, '300000.00', NULL, NULL),
(2, '02', 2, 9, '258000.00', NULL, NULL),
(3, '03', 4, 14, '386000.00', NULL, NULL),
(4, '04', 10, 8, '179000.00', NULL, NULL),
(5, '05', 3, 14, '893000.00', NULL, '2022-06-30 10:45:32'),
(6, '06', 8, 48, '8206000.00', NULL, '2022-07-01 03:01:13'),
(7, '07', 7, 0, '5257000.00', NULL, '2022-08-28 13:57:07'),
(8, '08', 0, 0, '0.00', NULL, '2022-09-21 13:45:58'),
(9, '09', 54, 73, '320000.00', NULL, NULL),
(10, '10', 42, 26, '735000.00', NULL, NULL),
(11, '11', 32, 63, '623000.00', NULL, NULL),
(12, '12', 80, 73, '984000.00', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT '1652787335.jpg',
  `is_admin` tinyint(4) NOT NULL DEFAULT '0',
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `gender` tinyint(4) NOT NULL DEFAULT '1',
  `dob` int(11) DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `image`, `is_admin`, `address`, `gender`, `dob`, `phone`, `created_at`, `updated_at`) VALUES
(2, 'Nguyễn Đức Kiên', 'ndkien@gmail.com', NULL, '$2y$10$IcRSzair6uKxBjyadeIyQuBypQV09biaeyqpdbtoKy6RhLaZ6TCRW', NULL, NULL, NULL, NULL, NULL, '1655109735.jpg', 3, 'Vĩnh Phúc', 1, 1997, '093243424', '2022-06-12 18:42:15', '2022-06-12 19:47:04'),
(3, 'Nguyễn Thị Hòa', 'nthoa@gmail.com', NULL, '$2y$10$nE8KPIXGgGYfZNQSoK4g4OO1yYPbkAGn0nIzpJ04OBO4NIudceJcW', NULL, NULL, NULL, NULL, NULL, '1655110825.jpg', 3, 'Nam Định', 2, 1999, '092342464', '2022-06-12 19:00:25', '2022-06-12 19:46:54'),
(6, 'Trieu Thao', 'thaotrieu0109@gmail.com', NULL, '$2y$10$3nJuRiehZvIIRSUGHqzReua3HOv52e8dRV2T7g3YvGGzRkHM3SBdi', NULL, NULL, NULL, NULL, NULL, '1652787335.jpg', 2, 'Lạng Sơn', 1, NULL, '0925366751', '2022-06-12 20:33:10', '2022-06-12 20:33:10'),
(7, 'Bùi Thị Hà', 'habui198@gmail.com', NULL, '$2y$10$tcKj9sFWTETdfIsD5NKzBOcdeeFNucJLbaxDFnahji13FmqnS8ErG', NULL, NULL, NULL, NULL, NULL, '1652787335.jpg', 2, 'Vĩnh Phúc', 1, NULL, '0942454624', '2022-06-13 07:25:51', '2022-06-13 07:25:51'),
(8, 'Bùi Thị Thu Chang', 'changbui@gmail.com', NULL, '$2y$10$SCSu4Ic76d24C14tUyQVrunvQUeO6fNkrdaJ/Cpgf5oGXoAP.sW0e', NULL, NULL, NULL, NULL, NULL, '1656129076.jpg', 3, 'Yên Bái', 2, 2001, '0942454624', '2022-06-25 03:51:17', '2022-06-25 03:51:17'),
(19, 'Nguyễn Ngọc Lan', 'lancute109@gmail.com', NULL, '$2y$10$PIcnU1KIo37J1kWd4scOQukvazQ108ocsUmspVV7GktU44OZz.Byu', NULL, NULL, NULL, NULL, NULL, '1656514153.jpg', 0, '101A/10 Tây Lai Xá, Kim Chung, Hoài Đức, Hà Nội', 1, NULL, '0397159480', '2022-06-29 12:46:16', '2022-06-29 14:53:25'),
(20, 'Nguyễn Ngọc Lan1', 'lancute9@gmail.com', NULL, '$2y$10$np.6Wo.545/wuFdkfHbQ/.iAwflP68Bp8/kwp03eml16J1XwJ.5AC', NULL, NULL, NULL, NULL, NULL, '1652787335.jpg', 0, '101A/10 Tây Lai Xá', 1, NULL, '0397159480', '2022-06-30 05:04:06', '2022-06-30 05:04:06'),
(21, 'Nguyễn Ngọc lan2', 'lancute209@gmail.com', NULL, '$2y$10$2XgcapOxzW5m9zJml2f8AuYrNBADt1177hUEj0gBrJalsom.BKkfi', NULL, NULL, NULL, NULL, NULL, '1652787335.jpg', 0, '101A/10 Tây Lai Xá', 1, NULL, '0397159480', '2022-06-30 05:14:08', '2022-06-30 05:14:08'),
(22, 'Tạ Giang', 'tagiang2001thi@gmail.com', NULL, '$2y$10$0VEFpFzhwlHaSbfZqWJAKOrzeLEwsLZwrOfIpwWsSl5YB/6Q6E4p6', NULL, NULL, NULL, NULL, NULL, '1652787335.jpg', 1, 'TB', 1, NULL, '0936942502', '2022-07-01 02:43:08', '2022-07-01 02:43:08');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_pro_id_foreign` (`pro_id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Chỉ mục cho bảng `totals`
--
ALTER TABLE `totals`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `totals`
--
ALTER TABLE `totals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_items_pro_id_foreign` FOREIGN KEY (`pro_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
