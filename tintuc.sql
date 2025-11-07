-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2025 at 11:45 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tintuc_php`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `category_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `categories` (`id`, `category_name`, `category_url`) VALUES
(1, 'Thể thao', 'the-thao'),
(2, 'Giải trí', 'giai-tri'),
(3, 'Công nghệ', 'cong-nghe'),
(4, 'Kinh doanh', 'kinh-doanh'),
(5, 'Thời sự', 'thoi-su'),
(6, 'Pháp luật', 'phap-luat'),
(7, 'Sức khỏe', 'suc-khoe'),
(8, 'Du lịch', 'du-lich'),
(9, 'Giáo dục', 'giao-duc');





--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 1,
  `quest` varchar(255) NOT NULL,
  `post_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `comment_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `comments` (`id`, `user_id`, `quest`, `post_id`, `message`, `comment_time`) VALUES
(2, 1, '{\"name\":\"hello\",\"email\":\"nhathoan1105@gmail.com\"}', 60, 'Bài viết rất hay nha', '2025-11-04 11:23:29'),
(3, 1, '{\"name\":\"hello\",\"email\":\"nhathoan1105@gmail.com\"}', 60, 'xin chào các bạn', '2025-11-04 11:23:45'),


--
-- Table structure for table `configs`
--

CREATE TABLE `configs` (
  `id` int(11) NOT NULL,
  `config_name` varchar(50) NOT NULL,
  `config_value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `configs` (`id`, `config_name`, `config_value`) VALUES
(1, 'numofpost', '12'),
(2, 'title', 'Website tin tức số 1'),
(4, 'description', 'Website tin tức số 1 Việt Nam'),
(5, 'favicon', 'favicon.jpg');


--
-- Table structure for table `forgot_password`
--

CREATE TABLE `forgot_password` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_date` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

INSERT INTO `forgot_password` (`id`, `email`, `created_date`, `token`) VALUES
(0, 'nhathoan1105@gmail.com', '2025-11-04 23:42:56', '8f6f5e3e1f3b1c2d3e4f5a6b7c8d9e0f');


--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `post_time` datetime NOT NULL,
  `post_url` varchar(255) DEFAULT NULL,
  `views` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `detail`, `thumbnail`, `post_time`, `post_url`, `views`) VALUES
(1, 1, 1, 'Bài viết thứ 1', 'Nội dung bài viết thứ 1', 'post-1.jpg', '2025-11-04 11:20:00', 'bai-viet-thu-1', 0),
(2, 1, 1, 'Bài viết thứ 2', 'Nội dung bài viết thứ 2', 'post-2.jpg', '2025-11-04 11:20:00', 'bai-viet-thu-2', 0),
(3, 1, 1, 'Bài viết thứ 3', 'Nội dung bài viết thứ 3', 'post-3.jpg', '2025-11-04 11:20:00', 'bai-viet-thu-3', 0),
(4, 1, 1, 'Bài viết thứ 4', 'Nội dung bài viết thứ 4', 'post-4.jpg', '2025-11-04 11:20:00', 'bai-viet-thu-4', 0),
(5, 1, 1, 'Bài viết thứ 5', 'Nội dung bài viết thứ 5', 'post-5.jpg', '2025-11-04 11:20:00', 'bai-viet-thu-5', 0),
(6, 1, 1, 'Bài viết thứ 6', 'Nội dung bài viết thứ 6', 'post-6.jpg', '2025-11-04 11:20:00', 'bai-viet-thu-6', 0),
(7, 1, 1, 'Bài viết thứ 7', 'Nội dung bài viết thứ 7', 'post-7.jpg', '2025-11-04 11:20:00', 'bai-viet-thu-7', 0),
(8, 1, 1, 'Bài viết thứ 8', 'Nội dung bài viết thứ 8', 'post-8.jpg', '2025-11-04 11:20:00', 'bai-viet-thu-8', 0),
(9, 1, 1, 'Bài viết thứ 9', 'Nội dung bài viết thứ 9', 'post-9.jpg', '2025-11-04 11:20:00', 'bai-viet-thu-9', 0),
(10, 1, 1, 'Bài viết thứ 10', 'Nội dung bài viết thứ 10', 'post-10.jpg', '2025-11-04 11:20:00', 'bai-viet-thu-10', 0);


--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `about` text NOT NULL,
  `group_id` int(1) DEFAULT 1,
  `remember_token` varchar(255) DEFAULT NULL,
  `expired_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `email`, `username`, `fullname`, `avatar`, `password`, `about`, `group_id`, `remember_token`, `expired_time`) VALUES
(1, 'nhathoan1105@gmail.com', 'nhathoan', 'Phan Tấn Nhật Hoàn', 'avatar.jpg', 'IMG_bc710f5d5b1eeba3592dd059af82d828.jpg', 'Tôi là một lập trình viên', 1, NULL, NULL);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_COMMETNS_POSTS` (`post_id`),
  ADD KEY `FK_COMMETNS_USERS` (`user_id`);



--
-- Indexes for table `configs`
--
ALTER TABLE `configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_POSTS_CATEGORIES` (`category_id`),
  ADD KEY `FK_POSTS_USERS` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `configs`
--
ALTER TABLE `configs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `FK_COMMETNS_POSTS` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_COMMETNS_USERS` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `FK_POSTS_CATEGORIES` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_POSTS_USERS` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
