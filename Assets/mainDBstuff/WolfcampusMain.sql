-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Feb 04, 2023 at 06:16 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `WolfcampusMain`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `user_id` int NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `last_login` date NOT NULL,
  `creation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `answer_id` int NOT NULL,
  `answer_value` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blocked_list`
--

CREATE TABLE `blocked_list` (
  `user_id` int NOT NULL,
  `blocked_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` int NOT NULL,
  `book_isbn` varchar(50) NOT NULL,
  `book_status` int NOT NULL,
  `book_name` varchar(50) NOT NULL,
  `book_author` varchar(50) NOT NULL,
  `book_price` double NOT NULL,
  `book_class` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `book_publication`
--

CREATE TABLE `book_publication` (
  `publication_id` int NOT NULL,
  `publication_text` text NOT NULL,
  `publication_date` date NOT NULL,
  `publication_photo` varchar(50) DEFAULT NULL,
  `book_id` int NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `buildings`
--

CREATE TABLE `buildings` (
  `build_id` int NOT NULL,
  `build_name` varchar(50) NOT NULL,
  `build_code` varchar(10) NOT NULL,
  `build_location` varchar(50) NOT NULL,
  `build_photo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `class_id` int NOT NULL,
  `begin_end_class` varchar(50) NOT NULL COMMENT 'This is gonna be the begining and end of the class',
  `class_sched` varchar(50) NOT NULL,
  `professor` varchar(50) NOT NULL,
  `requirements` varchar(50) NOT NULL,
  `section` varchar(50) NOT NULL,
  `moderator` int NOT NULL COMMENT 'this is the moderator of the class',
  `building_id` int NOT NULL,
  `room` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `class_note`
--

CREATE TABLE `class_note` (
  `classnote_id` int NOT NULL,
  `classnote_text` text NOT NULL,
  `classnote_photo` varchar(50) NOT NULL,
  `classnote_status` tinyint NOT NULL,
  `class_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `friend_list`
--

CREATE TABLE `friend_list` (
  `user_id` int NOT NULL,
  `friend_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int NOT NULL,
  `post_date` date NOT NULL,
  `post_text` text NOT NULL,
  `post_photo` varchar(50) DEFAULT NULL,
  `post_status` tinyint NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `profile_id` int NOT NULL,
  `user_id` int NOT NULL,
  `post_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `report_id` int NOT NULL,
  `report_status` tinyint NOT NULL,
  `post_id` int NOT NULL,
  `classnote_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students_class_list`
--

CREATE TABLE `students_class_list` (
  `class_id` int NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `study_sessions`
--

CREATE TABLE `study_sessions` (
  `ss_id` int NOT NULL,
  `ss_place` varchar(50) NOT NULL,
  `ss_date` date NOT NULL,
  `ss_time` varchar(10) NOT NULL,
  `build_id` int NOT NULL,
  `ss_class` int NOT NULL,
  `ss_student_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `surveys`
--

CREATE TABLE `surveys` (
  `survey_id` int NOT NULL,
  `class_id` int NOT NULL,
  `answer_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int NOT NULL,
  `user_name` int NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_phone` int NOT NULL,
  `user_dob` date DEFAULT NULL,
  `preferred_pronouns` varchar(50) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `profile_picture` varchar(100) NOT NULL COMMENT 'ask Vinh about the blob thing',
  `type_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE `user_type` (
  `type_id` int NOT NULL,
  `type` varchar(50) NOT NULL COMMENT 'type of user description'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`answer_id`);

--
-- Indexes for table `blocked_list`
--
ALTER TABLE `blocked_list`
  ADD PRIMARY KEY (`user_id`,`blocked_id`),
  ADD KEY `FK_blocked_list_users_blocked_id` (`blocked_id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `FK_book_class_class_id` (`book_class`);

--
-- Indexes for table `book_publication`
--
ALTER TABLE `book_publication`
  ADD PRIMARY KEY (`publication_id`),
  ADD KEY `FK_bookpublication_book_book_id` (`book_id`),
  ADD KEY `FK_bookpublication_user_user_id` (`user_id`);

--
-- Indexes for table `buildings`
--
ALTER TABLE `buildings`
  ADD PRIMARY KEY (`build_id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`class_id`),
  ADD KEY `FK_class_building_id_build_id` (`building_id`),
  ADD KEY `FK_class_user_user_id` (`moderator`);

--
-- Indexes for table `class_note`
--
ALTER TABLE `class_note`
  ADD PRIMARY KEY (`classnote_id`),
  ADD KEY `FK_class_note_class_class_id` (`class_id`);

--
-- Indexes for table `friend_list`
--
ALTER TABLE `friend_list`
  ADD PRIMARY KEY (`friend_id`,`user_id`),
  ADD KEY `FK_friend_list_users_friend_id` (`user_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `FK_posts_user_user_id` (`user_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`profile_id`),
  ADD KEY `FK_profiles_posts_post_id` (`post_id`),
  ADD KEY `FK_profiles_users_user_id` (`user_id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`report_id`),
  ADD KEY `FK_reports_posts_post_id` (`post_id`),
  ADD KEY `FK_reports_class_note_class_note_id` (`classnote_id`);

--
-- Indexes for table `students_class_list`
--
ALTER TABLE `students_class_list`
  ADD PRIMARY KEY (`class_id`,`user_id`),
  ADD KEY `FK_students_class_list_user_user_id` (`user_id`);

--
-- Indexes for table `study_sessions`
--
ALTER TABLE `study_sessions`
  ADD PRIMARY KEY (`ss_id`),
  ADD KEY `FK_study_sessions_buildings_build_id` (`build_id`),
  ADD KEY `FK_study_sessions_classes_class_id` (`ss_class`),
  ADD KEY `FK_study_sessions_users_user_id` (`ss_student_id`);

--
-- Indexes for table `surveys`
--
ALTER TABLE `surveys`
  ADD PRIMARY KEY (`survey_id`),
  ADD KEY `FK_surverys_answers_answer_id` (`answer_id`),
  ADD KEY `FK_surveys_class_class_id` (`class_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `FK_user_user_type_type_id` (`type_id`);

--
-- Indexes for table `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `answer_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_type`
--
ALTER TABLE `user_type`
  MODIFY `type_id` int NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `FK_account_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `blocked_list`
--
ALTER TABLE `blocked_list`
  ADD CONSTRAINT `FK_blocked_list_users_blocked_id` FOREIGN KEY (`blocked_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_blocked_list_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `FK_book_class_class_id` FOREIGN KEY (`book_class`) REFERENCES `classes` (`class_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `book_publication`
--
ALTER TABLE `book_publication`
  ADD CONSTRAINT `FK_bookpublication_book_book_id` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_bookpublication_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `FK_building_id` FOREIGN KEY (`building_id`) REFERENCES `buildings` (`build_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_class_user_user_id` FOREIGN KEY (`moderator`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `class_note`
--
ALTER TABLE `class_note`
  ADD CONSTRAINT `FK_class_note_class_class_id` FOREIGN KEY (`class_id`) REFERENCES `classes` (`class_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `friend_list`
--
ALTER TABLE `friend_list`
  ADD CONSTRAINT `FK_friend_list_users_friend_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_friend_list_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `FK_posts_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `FK_profiles_posts_post_id` FOREIGN KEY (`post_id`) REFERENCES `posts` (`post_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_profiles_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `FK_reports_class_note_class_note_id` FOREIGN KEY (`classnote_id`) REFERENCES `class_note` (`classnote_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_reports_posts_post_id` FOREIGN KEY (`post_id`) REFERENCES `posts` (`post_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `students_class_list`
--
ALTER TABLE `students_class_list`
  ADD CONSTRAINT `FK_students_class_list_class_class_id` FOREIGN KEY (`class_id`) REFERENCES `classes` (`class_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_students_class_list_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `study_sessions`
--
ALTER TABLE `study_sessions`
  ADD CONSTRAINT `FK_study_sessions_buildings_build_id` FOREIGN KEY (`build_id`) REFERENCES `buildings` (`build_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_study_sessions_classes_class_id` FOREIGN KEY (`ss_class`) REFERENCES `classes` (`class_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_study_sessions_users_user_id` FOREIGN KEY (`ss_student_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `surveys`
--
ALTER TABLE `surveys`
  ADD CONSTRAINT `FK_surverys_answers_answer_id` FOREIGN KEY (`answer_id`) REFERENCES `answers` (`answer_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_surveys_class_class_id` FOREIGN KEY (`class_id`) REFERENCES `classes` (`class_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK_user_user_type_type_id` FOREIGN KEY (`type_id`) REFERENCES `user_type` (`type_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
