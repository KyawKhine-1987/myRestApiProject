-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2019 at 11:30 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `firstapiproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `school` varchar(1000) NOT NULL,
  CONSTRAINT users_pk PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `school`) VALUES
(1, 'Edward Brooklyn', 'edwardbro41@gmail.com', '$2y$10$7C8LUpLmA.wh/rCPtM.z7.st2rCaArpVBk6Tk1iHMQAlqci.ZYzGi', 'St.John\'s');

INSERT INTO `quotes` (`id`, `quote`, `author`, `thumbnail`, `created_at`, `updated_at`) VALUES ('1', 'Don\'t cry because it\'s over, smile because it happened.', 'Dr.Seuss', NULL, current_timestamp(), current_timestamp());
--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

Select `name`, `email`, `password`, `school` from users nolock;
Select `email`, `password` from users nolock where id = 1;
Select `email` from users nolock where email = 'edwardbro41@gmail.com';
Select `name`, `email`, `password`, `school` from users nolock where school = 'St.John''s';

Select `name`, `email`, `password`, `school` from users nolock where name like 'a%';
Select `name`, `email`, `password`, `school` from users nolock where name like '%a';
Select `name`, `email`, `password`, `school` from users nolock where name like '%khan%';
Select `name`, `email`, `password`, `school` from users nolock where name like 'b%n';

update users 
set password = 'new strong password', name = 'new name'
where email = 'edwardbro41@gmail.com';

update users 
set password = 'new strong password', name = 'new name'
where id = '1';

delete from users
where email = 'edwardbro41@gmail.com';

delete from users
where id = 1;