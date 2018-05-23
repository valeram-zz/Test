-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 23, 2018 at 04:45 AM
-- Server version: 5.6.38
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `songs_bd`
--

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Rock', NULL, '0000-00-00 00:00:00'),
(2, 'Country', NULL, '0000-00-00 00:00:00'),
(3, 'Rap', NULL, '0000-00-00 00:00:00'),
(4, 'Classical', NULL, '0000-00-00 00:00:00'),
(5, 'Indie Rock', NULL, '0000-00-00 00:00:00'),
(6, 'Noise Rock', NULL, '0000-00-00 00:00:00'),
(7, 'Latin Pop Rock', NULL, '0000-00-00 00:00:00'),
(8, 'Classic Rock', NULL, '0000-00-00 00:00:00'),
(9, 'Pop', NULL, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `artist` varchar(1024) DEFAULT NULL,
  `title` varchar(1024) DEFAULT NULL,
  `genre` int(11) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `artist`, `title`, `genre`, `duration`, `created_at`, `updated_at`) VALUES
(0, '424', 'Gala', 5, 189, '2018-05-23 03:13:08', '0000-00-00 00:00:00'),
(0, 'Colornoise', 'Amalie', 6, 246, '2018-05-23 03:13:08', '0000-00-00 00:00:00'),
(0, 'Los Waldners', 'Horacio', 7, 165, '2018-05-23 03:13:08', '0000-00-00 00:00:00'),
(0, 'Beatles', 'Strawberry Fields Forever', 8, 245, '2018-05-23 03:13:08', '0000-00-00 00:00:00'),
(0, 'Chubby Checker', 'The Twist', 9, 235, '2018-05-23 03:13:08', '0000-00-00 00:00:00'),
(0, 'Santana', 'Smooth', 9, 167, '2018-05-23 03:13:08', '0000-00-00 00:00:00'),
(0, 'Bobby Darin', 'Mack the Knife', 1, 245, '2018-05-23 03:13:08', '0000-00-00 00:00:00'),
(0, 'LeAnn Rhimes', 'How Do I Live', 2, 237, '2018-05-23 03:13:08', '0000-00-00 00:00:00'),
(0, 'LMFAO', 'Party Rock Anthem', 3, 189, '2018-05-23 03:13:08', '0000-00-00 00:00:00'),
(0, 'The Black Eyed Peas', 'I Gotta Feeling', 3, 219, '2018-05-23 03:13:08', '0000-00-00 00:00:00'),
(0, 'Los Del Rio', 'Macarena', 9, 159, '2018-05-23 03:13:08', '0000-00-00 00:00:00'),
(0, 'Olivia Newton-John', 'Physical', 9, 195, '2018-05-23 03:13:08', '0000-00-00 00:00:00'),
(0, 'Debby Boone', 'You Light Up My Life', 9, 245, '2018-05-23 03:13:08', '0000-00-00 00:00:00'),
(0, 'Beatles', 'Hey Jude', 8, 162, '2018-05-23 03:13:08', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD KEY `genre` (`genre`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `songs`
--
ALTER TABLE `songs`
  ADD CONSTRAINT `songs_ibfk_1` FOREIGN KEY (`genre`) REFERENCES `genres` (`id`);
