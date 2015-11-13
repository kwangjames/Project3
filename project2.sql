-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2015 at 03:25 AM
-- Server version: 10.0.17-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project2`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_id` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `age` varchar(3) NOT NULL,
  `tel` varchar(12) NOT NULL,
  `email` varchar(30) NOT NULL,
  `graduate_stop` varchar(10) NOT NULL,
  `pic` varchar(250) NOT NULL,
  `faculty` varchar(100) NOT NULL,
  `major` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_id`, `fname`, `lname`, `age`, `tel`, `email`, `graduate_stop`, `pic`, `faculty`, `major`) VALUES
(20, 'สิทธิศักดิ์', 'ศรีวรรณ', '26', '098-333-4567', 'ta_tuktuk@hotmail.com', '2519', 'http://www.taklong.com/tkfanclub/p/7006528772_378294632264459_2065139970_n.jpg', 'คณะมนุษย์ศาสตร์และสังคมศาสตร์', 'ธรณีศาสตร์'),
(21, 'สารีนารถ', 'ยาริน', '28', '099-777-4444', 'kok_kak@hotmail.com', '2519', 'http://www.manager.co.th/asp-bin/Image.aspx?ID=3071142', 'คณะวิศวกรรมศาสตร์', 'เกษตรศาตร์'),
(22, 'dd', 'dd', '34', '555', '555', '2505', 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRWJNPip97Ht4tmfugv0C6TomnSH98AtYjitPxt6rE53d3Z0qltVA', 'คณะพยาบาลศาสตร์', 'วิชาผู้ประกอบการ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`),
  ADD UNIQUE KEY `u_id` (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
