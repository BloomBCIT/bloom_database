-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 20, 2018 at 10:51 PM
-- Server version: 5.5.58-cll
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfoli_bloomsocket`
--

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `game_id` int(11) NOT NULL,
  `game_playername` varchar(255) NOT NULL,
  `game_score` int(11) NOT NULL,
  `game_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`game_id`, `game_playername`, `game_score`, `game_date`) VALUES
(1, 'james', 111, '2018-03-20 18:37:09'),
(2, 'kaylie', 999, '2018-03-21 02:03:07'),
(3, 'kaylie', 123, '2018-03-21 02:49:02'),
(4, 'asdfasdf', 7, '2018-03-21 03:03:09'),
(5, 'asdfasdf', 15, '2018-03-21 03:03:24');

-- --------------------------------------------------------

--
-- Table structure for table `quizes`
--

CREATE TABLE `quizes` (
  `quiz_id` int(11) NOT NULL,
  `quiz_question` varchar(255) NOT NULL,
  `quiz_option1` varchar(255) NOT NULL,
  `quiz_option2` varchar(255) NOT NULL,
  `quiz_answer` int(11) NOT NULL,
  `quiz_room` varchar(255) NOT NULL,
  `quiz_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quizes`
--

INSERT INTO `quizes` (`quiz_id`, `quiz_question`, `quiz_option1`, `quiz_option2`, `quiz_answer`, `quiz_room`, `quiz_date`) VALUES
(1, 'what is your name?', 'kaylie', 'sehee', 1, 'room1', '2018-03-21 02:04:05'),
(2, 'This is a question, what is your name?', 'Kaylie', 'Sehee', 1, 'room1', '2018-03-21 02:33:47'),
(3, 'Question for room 2, what\'s the project?', 'Bloom', 'Luminosity', 1, 'room2', '2018-03-21 02:34:18'),
(4, 'Second option is the answer', 'option1', 'second', 2, 'room2', '2018-03-21 02:34:40');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_results`
--

CREATE TABLE `quiz_results` (
  `quiz_result_id` int(11) NOT NULL,
  `quiz_room` varchar(255) NOT NULL,
  `quiz_result_answer` int(11) NOT NULL,
  `quiz_result_message` varchar(255) NOT NULL,
  `quiz_result_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz_results`
--

INSERT INTO `quiz_results` (`quiz_result_id`, `quiz_room`, `quiz_result_answer`, `quiz_result_message`, `quiz_result_date`) VALUES
(1, 'roomname', 1, 'testing', '2018-03-21 02:28:37'),
(2, 'room1', 1, 'you got it! 1', '2018-03-21 02:29:16'),
(3, 'room1', 2, 'wrong! 1', '2018-03-21 02:29:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`game_id`);

--
-- Indexes for table `quizes`
--
ALTER TABLE `quizes`
  ADD PRIMARY KEY (`quiz_id`);

--
-- Indexes for table `quiz_results`
--
ALTER TABLE `quiz_results`
  ADD PRIMARY KEY (`quiz_result_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `game_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `quizes`
--
ALTER TABLE `quizes`
  MODIFY `quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `quiz_results`
--
ALTER TABLE `quiz_results`
  MODIFY `quiz_result_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
