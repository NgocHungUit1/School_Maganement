-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 19, 2023 lúc 12:06 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `school`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `class`
--

CREATE TABLE `class` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:active,1:inactive',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `is_delete` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `class`
--

INSERT INTO `class` (`id`, `name`, `status`, `created_at`, `updated_at`, `created_by`, `is_delete`) VALUES
(1, '12A', 0, '2023-04-18 03:07:49', '2023-04-18 04:03:23', 6, 0),
(2, '10B', 0, '2023-04-18 03:18:11', '2023-04-18 04:05:56', 6, 0),
(3, '10C', 0, '2023-04-18 03:42:07', '2023-04-18 04:06:03', 6, 0),
(4, '11A', 1, '2023-04-18 03:46:23', '2023-04-18 06:35:36', 6, 0),
(5, '10A', 0, '2023-04-18 04:05:05', '2023-04-18 04:05:05', 6, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `class_subject`
--

CREATE TABLE `class_subject` (
  `id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `is_delete` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `class_subject`
--

INSERT INTO `class_subject` (`id`, `class_id`, `subject_id`, `created_by`, `is_delete`, `status`, `created_at`, `updated_at`) VALUES
(31, NULL, 1, 6, 0, 0, '2023-04-18 10:55:40', '2023-04-18 10:55:40'),
(32, NULL, 4, 6, 0, 0, '2023-04-18 10:55:40', '2023-04-18 10:55:40'),
(35, NULL, 6, 6, 0, 0, '2023-04-18 10:56:49', '2023-04-18 10:56:49'),
(38, 3, 1, 6, 0, 0, '2023-04-18 10:57:24', '2023-04-18 10:57:24'),
(39, 3, 6, 6, 0, 0, '2023-04-18 10:57:24', '2023-04-18 10:57:24'),
(40, 3, 4, 6, 0, 0, '2023-04-18 10:57:24', '2023-04-18 10:57:24'),
(41, 3, 2, 6, 0, 0, '2023-04-18 10:57:24', '2023-04-18 10:57:24'),
(42, 2, 1, 6, 0, 0, '2023-04-18 10:57:36', '2023-04-18 10:57:36'),
(43, 2, 6, 6, 0, 0, '2023-04-18 10:57:36', '2023-04-18 10:57:36'),
(44, 2, 4, 6, 0, 0, '2023-04-18 10:57:36', '2023-04-18 10:57:36'),
(45, 2, 2, 6, 0, 0, '2023-04-18 10:57:36', '2023-04-18 10:57:36'),
(48, 5, 4, 6, 0, 0, '2023-04-18 11:03:00', '2023-04-18 11:03:00'),
(49, 5, 2, 6, 0, 0, '2023-04-18 11:03:00', '2023-04-18 11:03:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subject`
--

CREATE TABLE `subject` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `is_delete` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `subject`
--

INSERT INTO `subject` (`id`, `name`, `type`, `created_by`, `status`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 'Big Data', 'Theory', 6, 0, 0, '2023-04-18 05:20:20', '2023-04-18 05:28:46'),
(2, 'OOP123', 'Theory', 6, 0, 0, '2023-04-18 05:21:45', '2023-04-18 07:18:03'),
(4, 'IOT', '1', 6, 0, 0, '2023-04-18 07:27:04', '2023-04-18 07:27:04'),
(6, 'ERP', 'Practical', 6, 0, 0, '2023-04-18 07:28:54', '2023-04-18 07:29:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `user_type` tinyint(4) NOT NULL DEFAULT 3 COMMENT '1:admin,2:teacher,3:student,4:parent\r\n',
  `is_delete` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1:deleted\r\n0:not delete',
  `admission_number` varchar(50) DEFAULT NULL,
  `roll_number` varchar(50) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `mobile_number` varchar(15) DEFAULT NULL,
  `user_avatar` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `user_type`, `is_delete`, `admission_number`, `roll_number`, `class_id`, `gender`, `date_of_birth`, `mobile_number`, `user_avatar`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$5eOk4G4F3dsZpIIZrgvsHOI71k3/YNeNB/u4PtBcK/pDxn.uSZQeW', 'YtbxGDg9mp07Mfhvto7ABzslvwvep4', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2023-04-17 19:06:54'),
(2, 'Teacher', 'teacher@gmail.com', NULL, '$2y$10$Pj.0iwyO1nbHT0kgCJhRYuJQLsbfsCJUFPBwZVPnmiVaUY9gnh3cG', 'czXksg1R9UTPq4H7ffJDKJ2nxfLUmJ0NfZX3ClWgNap1glkCuJfBQZZFaL89', 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(4, 'Parent', 'Parent@gmail.com', NULL, '$2y$10$Pj.0iwyO1nbHT0kgCJhRYuJQLsbfsCJUFPBwZVPnmiVaUY9gnh3cG', 'hUVW0AjlznJQMaTUCiRymD9V8ftnQt1vtX7pOHd2qWYaDdAi6ajOujmEj9Lp', 4, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(6, 'Cody', 'admin@gmail', NULL, '$2y$10$2jV98A6ESOx5whl44jQwcOC1q1MWlLVIrCwnCbn/fSgAzvRKeeV2a', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-04-17 01:35:41', '2023-04-17 07:28:20'),
(8, 'Dannyy', 'Danny@gmail', NULL, '$2y$10$3bXqo7boAgjtjcyKqn85COyjO7tl7gxVs4ApcSZF9nxLVCON.acUW', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-04-17 01:38:51', '2023-04-17 07:28:46'),
(9, 'Marcus', 'Marcus@gmail', NULL, '$2y$10$3bXqo7boAgjtjcyKqn85COyjO7tl7gxVs4ApcSZF9nxLVCON.acUW', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-04-17 01:38:51', '2023-04-17 10:36:16'),
(10, 'Kelvin', 'Kelvin@gmail', NULL, '$2y$10$3bXqo7boAgjtjcyKqn85COyjO7tl7gxVs4ApcSZF9nxLVCON.acUW', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-04-17 01:38:51', '2023-04-17 07:30:54'),
(11, 'Logan', 'Logan@gmail', NULL, '$2y$10$3bXqo7boAgjtjcyKqn85COyjO7tl7gxVs4ApcSZF9nxLVCON.acUW', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-04-17 01:38:51', '2023-04-17 10:32:20'),
(12, 'Leo', 'Leo@gmail', NULL, '$2y$10$3bXqo7boAgjtjcyKqn85COyjO7tl7gxVs4ApcSZF9nxLVCON.acUW', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-04-17 01:38:51', '2023-04-17 10:32:42'),
(13, 'Jenna', 'Jenna@gmail', NULL, '$2y$10$3bXqo7boAgjtjcyKqn85COyjO7tl7gxVs4ApcSZF9nxLVCON.acUW', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-04-17 01:38:51', '2023-04-17 02:53:15'),
(53, 'Cody', 'cody@gmail', NULL, '$2y$10$QmdGIjiMwHWH1.7YDk0stuHjKq/ruGq.dBTz1DbbeVMcOa8cmW5wO', NULL, 3, 0, '1', '123', 2, 'Male', '2023-04-02', '0917214318', '310547953_3326544357664940_6449244382606623462_n45.jpg', 0, '2023-04-19 02:34:40', '2023-04-19 02:39:20'),
(54, 'Danny', 'Dannyyy@gmail', NULL, '$2y$10$Vc4K/DT.0aY8ms.R.NfyCup7NvCqWsNFZi4g6dg.DFlx6H9Q8qM0q', NULL, 3, 0, '12', '123', 5, 'Male', '2023-04-11', '0917214318', '310547953_3326544357664940_6449244382606623462_n10.jpg', 0, '2023-04-19 02:42:16', '2023-04-19 02:42:16');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `class_subject`
--
ALTER TABLE `class_subject`
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
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_2` (`email`),
  ADD UNIQUE KEY `admission_number` (`admission_number`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `class`
--
ALTER TABLE `class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `class_subject`
--
ALTER TABLE `class_subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
