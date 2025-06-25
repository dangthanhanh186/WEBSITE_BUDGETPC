-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2024 at 04:54 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_db`
--
-- DROP DATABASE `shop_db`;
CREATE DATABASE `shop_db`;
USE `shop_db`;

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(255),
    `username` VARCHAR(50) UNIQUE,
    `password_hash` VARCHAR(255),
    `email` VARCHAR(255),
    `phone` VARCHAR(15),
    `address` VARCHAR(255),
    `img_url` VARCHAR(255),
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO `account` (`id`, `name`, `username`, `password_hash`, `email`, `phone`, `address`, `img_url`) VALUES
(1, 'Nguyễn Hữu Nhật Minh', 'nyattomin', '$2y$10$4UjDJN97P/NISakxAvwdcu8mAm7Hj7I88lPGhtFAGx1O9xxib3kXW', 'dinhnguyen11050@gmail.com', '0328424319', 'Thành Thái', 'https://tse4.mm.bing.net/th?id=OIP.l_bIVEg5kI7JAKL17_P1VwHaHa&pid=Api&P=0&h=180'),
(2, 'Đặng Thành Anh', 'thanhanh', '$2y$10$4UjDJN97P/NISakxAvwdcu8mAm7Hj7I88lPGhtFAGx1O9xxib3kXW', 'thanhanh@gmail.com', '0125478963', 'Thành Thái', 'https://scontent.fhan3-4.fna.fbcdn.net/v/t39.30808-1/301001372_587157913055272_6433316245330578129_n.jpg?stp=c0.0.539.539a_dst-jpg_s200x200_tt6&_nc_cat=106&ccb=1-7&_nc_sid=0ecb9b&_nc_ohc=gxC-VWZ4Wg0Q7kNvgFEek7s&_nc_zt=24&_nc_ht=scontent.fhan3-4.fna&_nc_gid=Ac1-pHI36PtvSqLlZpTRWKz&oh=00_AYD9rcmytNAeuRzb0-i4UGBeyuXhj0rKLeI7X4v2qYo35A&oe=675706D1');
-- (3, 'Nguyễn Phan Duy Minh', 'duyminh', '$2y$10$4UjDJN97P/NISakxAvwdcu8mAm7Hj7I88lPGhtFAGx1O9xxib3kXW', 'duyminh@gmail.com', '012536', 'Bách Khoa', '');
-- (4, 'Hồng Anh Quân', 'anhquan', '$2y$10$4UjDJN97P/NISakxAvwdcu8mAm7Hj7I88lPGhtFAGx1O9xxib3kXW', 'anhquan@gmail.com', '01398725', 'Bách Khoa', '');
-- pass là "qwe123"
--
-- Dumping data for table `account`
--
/*
INSERT INTO `account` (`ID`, `NAME`, `PHONE`, `ADDRESS`, `USERNAME`, `EMAIL`, `IMG_URL`, `password_hash`, `created_at`) VALUES
(1, 'Nguyễn Phan Duy Minh', '0786201662', 'Tây Ninh', 'minh123', 'minh.nguyendyingobelink1@hcmut.edu.vn', './Views/images/Orion.jpg', ),
(2, 'Đặng Thành Anh', '0906482890', 'quận 12 TP HCM', 'anh123', 'minh.ngo147596382@hcmut.edu.vn', './Views/images/anh.jpg'),
(3, 'Nguyễn Hữu Nhật Minh', '0328424319', 'quận 10, TP HCM', 'nyattomin', 'huy.dangthanh1006@gmail.com', './Views/images/nhatminh.jpg'),
(4, 'Hồng Anh Quân', '0338375019', '268 Lý Thường Kiệt, Phường 14, Quận 10, Hồ Chí Minh', 'quan123', 'quan.anh@gmail.com', './Views/images/UI_Card_Icon_101883.png');
*/
-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `username` VARCHAR(50) UNIQUE,
    `password_hash` VARCHAR(255)
    -- role VARCHAR(50),
    -- `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


--
-- Dumping data for table `admin`
--
INSERT INTO `admin` (`id`, `username`, `password_hash`) VALUES
(1, 'admin', '$2y$10$xuG8P1rIrbaoEFN7h3Fon.KMQFUTj84krfXuPwl.hGk4m9HLvJ4Ma');
-- pass là "admin"

CREATE TABLE `product` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(255) NOT NULL,
    `price` DECIMAL(10, 2) NOT NULL,
    `img_url` VARCHAR(255),
    `quantity` INT DEFAULT 0,
    `description` TEXT,
    `category` VARCHAR(100),
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO `product` (`id`, `name`, `price`, `img_url`, `quantity`, `description`, `category`) VALUES
(1, 'PC Gaming ASUS ROG Strix GT15 G15', 25000000, 'https://tfpalive.github.io/Web/1.jpg', 10, 'PC gaming ASUS ROG Strix với card đồ họa NVIDIA GeForce RTX 3070 và CPU Intel i7, đảm bảo hiệu năng mượt mà cho mọi tựa game.', 'PC Gaming'),
(2, 'Laptop Gaming MSI Raider GE78', 35000000, 'https://tfpalive.github.io/Web/2.jpg', 15, 'Laptop gaming MSI Raider GE78 với màn hình 17 inch QHD, card RTX 3080 và RAM 16GB, giúp bạn trải nghiệm game tuyệt vời mọi lúc.', 'Laptop Gaming'),
(3, 'Sony PlayStation 5', 15000000, 'https://tfpalive.github.io/Web/3.jpg', 5, 'Máy chơi game console Sony PlayStation 5, hỗ trợ 4K HDR và khả năng tương thích ngược với nhiều tựa game PS4.', 'Console'),
(4, 'Xbox Series X', 14000000, 'https://tfpalive.github.io/Web/4.jpg', 7, 'Console Xbox Series X của Microsoft, hiệu năng ấn tượng với SSD 1TB, giúp load game nhanh chóng và trải nghiệm đồ họa tuyệt đẹp.', 'Console'),
(5, 'PC Gaming Acer Predator Orion', 28000000, 'https://tfpalive.github.io/Web/5.jpg', 8, 'PC gaming Acer Predator Orion với CPU Intel i9, card đồ họa RTX 3080 và khả năng làm mát vượt trội, mang đến trải nghiệm game mạnh mẽ.', 'PC Gaming'),
(6, 'Laptop Gaming ASUS TUF', 20000000, 'https://tfpalive.github.io/Web/6.jpg', 12, 'Laptop gaming ASUS TUF với màn hình Full HD 144Hz, card GTX 1660Ti và RAM 8GB, thiết kế bền bỉ cho game thủ.', 'Laptop Gaming'),
(7, 'PC Gaming Dell Alienware Aurora', 32000000, 'https://tfpalive.github.io/Web/7.jpg', 6, 'PC gaming Dell Alienware Aurora với CPU AMD Ryzen 7, card RTX 3070, thiết kế độc đáo và hiệu năng cao.', 'PC Gaming'),
(8, 'Nintendo Switch OLED', 9000000, 'https://tfpalive.github.io/Web/8.jpg', 10, 'Nintendo Switch OLED phiên bản cải tiến với màn hình OLED 7 inch, hỗ trợ chế độ chơi console và handheld linh hoạt.', 'Console'),
(9, 'Bàn phím cơ Razer BlackWidow', 2500000, 'https://tfpalive.github.io/Web/9.jpg', 20, 'Bàn phím cơ Razer BlackWidow với đèn RGB và thiết kế chắc chắn, mang đến trải nghiệm chơi game tuyệt vời.', 'Accessories'),
(10, 'Chuột gaming Logitech G502', 1500000, 'https://tfpalive.github.io/Web/10.jpg', 25, 'Chuột gaming Logitech G502 với cảm biến HERO 25K, thiết kế công thái học và 11 nút lập trình, phù hợp cho mọi game thủ.', 'Accessories');

CREATE TABLE `sub_img_url` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,       -- Khóa chính tự động tăng
    `pid` INT NOT NULL,                        -- Khóa ngoại tham chiếu đến product
    `img_url` VARCHAR(255) NOT NULL,           -- Đường dẫn hình ảnh

    -- Thiết lập khóa ngoại liên kết với bảng product
    FOREIGN KEY (`pid`) REFERENCES `product`(`id`) 
    ON DELETE CASCADE                        -- Xóa tất cả sub_img khi xóa product
    ON UPDATE CASCADE                        -- Cập nhật khi product thay đổi
);

INSERT INTO `sub_img_url` (`PID`, `IMG_URL`) VALUES
(1, '../public/images/pc_asus_rog_strix_01.png'),
(1, '../public/images/pc_asus_rog_strix_02.png'),
(1, '../public/images/pc_asus_rog_strix_03.png'),
(2, '../public/images/laptop_msi_raider_01.png'),
(2, '../public/images/laptop_msi_raider_02.png'),
(2, '../public/images/ps5_01.jpg'),
(3, '../public/images/ps5_02.jpg'),
(3, '../public/images/ps5_03.jpg'),
(3, '../public/images/xbox_series_x_01.jpg'),
(4, '../public/images/xbox_series_x_02.jpg'),
(4, '../public/images/pc_acer_predator_01.jpg'),
(4, '../public/images/pc_acer_predator_02.jpg'),
(5, '../public/images/laptop_asus_tuf_01.jpg'),
(5, '../public/images/laptop_asus_tuf_02.jpg'),
(5, '../public/images/nintendo_switch_oled_01.jpg'),
(6, '../public/images/nintendo_switch_oled_02.jpg'),
(6, '../public/images/razer_blackwidow_01.jpg'),
(6, '../public/images/razer_blackwidow_02.jpg'),
(7, '../public/images/logitech_g502_01.jpg'),
(7, '../public/images/logitech_g502_02.jpg'),
(7, '../public/images/default_image.png'),
(7, '../public/images/default_image.png');

CREATE TABLE `cart` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `uid` INT NOT NULL UNIQUE,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (uid) REFERENCES account(id) ON DELETE CASCADE
);

INSERT INTO `cart` (`uid`) VALUES
(1),
(2);

CREATE TABLE `product_in_cart` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `cid` INT NOT NULL,
    `pid` INT NOT NULL,
    `quantity` INT DEFAULT 1,
    `added_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (`cid`) REFERENCES `cart`(`id`) ON DELETE CASCADE,
    FOREIGN KEY (`pid`) REFERENCES `product`(`id`) ON DELETE CASCADE
);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
