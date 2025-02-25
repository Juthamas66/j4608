-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2025 at 07:42 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--
CREATE DATABASE IF NOT EXISTS `shop` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `shop`;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `p_id` int(7) NOT NULL,
  `p_name` varchar(200) NOT NULL,
  `p_detall` text NOT NULL,
  `p_price` float(9,2) NOT NULL,
  `p_ext` varchar(50) NOT NULL,
  `c_id` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`p_id`, `p_name`, `p_detall`, `p_price`, `p_ext`, `c_id`) VALUES
(1, 'เค้กกล้วยหอม ', 'เมนูเบเกอรีเนื้อฟูนุ่มเต็มคำ รสหอมหวานละมุนวิธีทำก็ไม่ซับซ้อน ', 55.50, 'jpg', 1),
(2, 'บราวนีกรอบ', 'เมนูของหวานที่จะทำให้คุณเพลิดเพลินไปกับช็อกโกแลตแบบจัดเต็มที่มาในรูปแบบกรุบกรอบ กินง่าย เคี้ยวเพลินจนหยุดไม่อยู่', 60.00, 'jpg', 1),
(3, 'บาสก์ชีสเค้ก ', ' ชีสเค้กหน้าไหม้สุดฮิตสไตล์ญี่ปุ่น เนื้อชุ่มนุ่มละมุนสุดฟินใครได้ชิมก็ต้องร้องว้าว!', 99.00, 'jpg', 1),
(4, 'ขนมปังช็อกโกแลตเนยสด ', 'เมนูขนมหวานสุดอร่อย เพิ่มความหวานมันแบบพิเศษ รับรองอร่อยเริ่ด! ', 89.00, 'jpg', 2),
(5, ' ครัวซองต์', 'เบเกอรี่จากฝรั่งเศสที่มีลักษณะพิเศษจากการที่มีชั้นแป้งบาง ๆ หลายชั้นที่ถูกทบกับเนยไปมา ทำให้มีความกรอบนอกและนุ่มใน ', 69.00, 'jpg', 3),
(6, 'พายชั้น', 'เบเกอรี่ที่มีฐานเป็นแป้งพายที่กรอบและมีหลายชั้น โดยทั่วไปจะเป็นพายไส้คาว และพายไส้หวาน อาทิ พายกะหรี่ไก่ พายทูน่า', 59.00, 'jpg', 3),
(7, 'ทาร์ตไข่', 'เบเกอรี่ที่มีลักษณะเด่นคือ เนื้อสัมผัสที่ร่วน มีความกรอบและนุ่มละมุนลิ้นในคราวเดียว ทำให้ได้ขนมที่มีความกรอบนอกนุ่มในอันเป็นเอกลักษณ์', 30.00, 'jpg', 2),
(8, 'ชูเพสต์', 'ขนมอบเนื้อนุ่ม ไส้ทะลัก เมื่ออบแล้วจะมีช่องว่างภายใน ทำให้สามารถบรรจุไส้ต่างๆ ได้หลากหลาย เช่น ครีม คัสตาร์ด', 50.00, 'jpg', 3),
(9, 'ชิฟฟอนเค้ก', 'ชีฟองเค้ก ปัจจุบันเป็นที่นิยมกันมากในกลุ่มผู้ที่ต้องการบริโภคเค้กที่มีไขมันไม่มาก และรสชาติที่ไม่เลี่ยนจนเกินไป', 70.00, 'jpg', 1),
(10, 'พัฟฟ์ผลไม้สด ', 'ขนมอบที่มีลักษณะกรอบบางและเป็นชั้นๆ ซึ่งมีต้นกำเนิดจากยุโรป', 95.00, 'jpg', 1),
(11, 'ขนมปังลาวาชาเขียว ', 'ขนมปังลาวาชาเขียว สูตรขนมปังเหนียวนุ่มแบบฮ่องกงสูตรนี้พร้อมไส้ชาเขียวสุดเข้มข้นแบบทะลักทะลวงสุด ๆ', 99.00, 'jpg', 2),
(12, 'บลูเบอร์รีครัมเบิลมัฟฟิน ', ' เมนูเบเกอรีสุดฟิน จนต้องขอเพิ่ม เปรี้ยวหวานลงตัว โรยหน้าด้วยครัมเบิ้ลกรุบกรอบหอมมัน', 89.00, 'jpg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`p_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `p_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
