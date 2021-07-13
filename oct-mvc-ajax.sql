-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 13, 2021 at 04:34 PM
-- Server version: 8.0.24
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oct-mvc-ajax`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `author` varchar(100) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `message`, `author`, `date`) VALUES
(63, '1', 'Nikita', '2021-07-10 18:45:39'),
(64, '2', 'Nikita', '2021-07-10 18:45:44'),
(65, '3\n4\n5\n6\n7\n8\n9\n10', 'Nikita', '2021-07-10 18:45:57'),
(66, '11', 'Nikita', '2021-07-10 18:46:10'),
(67, '12', 'Nikita', '2021-07-10 18:46:14'),
(68, '13', 'Nikita', '2021-07-10 18:46:18'),
(69, '14', 'Mykyta', '2021-07-10 18:47:05'),
(70, 'show me your tits and pussy', 'Mykyta', '2021-07-10 18:47:55'),
(71, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque dignissimos excepturi illum inventore itaque iure, neque optio porro. Dolorem ipsum optio porro quaerat sint. Aliquam animi aperiam assumenda autem consectetur corporis cumque deleniti ducimus ea, eaque earum eligendi eos est fugit hic illum impedit iste iure laborum magnam modi nemo nobis nostrum numquam obcaecati odio provident reiciendis reprehenderit rerum sint tempora velit vitae voluptas? Architecto, at aut consectetur corporis cum dolores enim, eos est exercitationem in maxime nemo nihil obcaecati quibusdam quisquam ratione, vitae. Aliquam asperiores atque error molestias, nam optio quaerat quibusdam rem rerum, sequi tempora ullam vel voluptatem?', 'Mykyta', '2021-07-10 18:48:32'),
(72, 'I am interesting person and I love Nikita', 'Diana', '2021-07-10 18:50:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
