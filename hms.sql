-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2021 at 04:14 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) NOT NULL,
  `doctorId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `consultancyFees` int(11) NOT NULL,
  `appointmentDate` varchar(255) NOT NULL,
  `appointmentTime` varchar(255) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userStatus` int(11) NOT NULL,
  `doctorStatus` int(11) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) NOT NULL,
  `doctorName` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `docFees` varchar(255) NOT NULL,
  `contactno` bigint(11) NOT NULL,
  `docEmail` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 0, 'abhi@12.gmail.com', 0x3a3a3100000000000000000000000000, '2021-11-29 17:39:42', '', 0),
(2, 0, 'raktim@demo.com', 0x3a3a3100000000000000000000000000, '2021-11-29 17:42:18', '', 0),
(3, 0, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-11-29 17:43:22', '', 0),
(4, 0, 'abhi@12.gmail.com', 0x3a3a3100000000000000000000000000, '2021-11-29 17:43:24', '', 0),
(5, 0, 'abhi@12.gmail.com', 0x3a3a3100000000000000000000000000, '2021-11-29 17:43:25', '', 0),
(6, 0, 'abhi@12.gmail.com', 0x3a3a3100000000000000000000000000, '2021-11-29 17:43:26', '', 0),
(7, 0, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-11-29 17:43:48', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(15, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2021-11-10 12:51:59', '10-11-2021 06:22:11 PM', 1),
(16, 0, 'test@raktim.com', 0x3a3a3100000000000000000000000000, '2021-11-10 14:42:26', '', 0),
(17, 8, 'test@tanmay.com', 0x3a3a3100000000000000000000000000, '2021-11-12 02:53:59', '', 1),
(18, 0, 'neha@test.com', 0x3a3a3100000000000000000000000000, '2021-11-14 16:39:26', '', 0),
(19, 9, 'neha@test.com', 0x3a3a3100000000000000000000000000, '2021-11-14 16:41:40', '', 1),
(20, 10, 'abhi@12.gmail.com', 0x3a3a3100000000000000000000000000, '2021-11-29 16:07:22', '', 1),
(21, 10, 'abhi@12.gmail.com', 0x3a3a3100000000000000000000000000, '2021-11-29 17:40:41', '', 1),
(22, 10, 'abhi@12.gmail.com', 0x3a3a3100000000000000000000000000, '2021-11-29 18:42:31', '', 1),
(23, 10, 'abhi@12.gmail.com', 0x3a3a3100000000000000000000000000, '2021-11-30 07:39:39', '', 1),
(24, 10, 'abhi@12.gmail.com', 0x3a3a3100000000000000000000000000, '2021-11-30 17:45:56', '', 1),
(25, 10, 'abhi@12.gmail.com', 0x3a3a3100000000000000000000000000, '2021-11-30 17:47:45', '', 1),
(26, 10, 'abhi@12.gmail.com', 0x3a3a3100000000000000000000000000, '2021-11-30 17:51:09', '', 1),
(27, 10, 'abhi@12.gmail.com', 0x3a3a3100000000000000000000000000, '2021-11-30 17:53:19', '', 1),
(28, 11, 'aman@1234gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-01 05:35:55', '', 1),
(29, 11, 'aman@1234gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-01 05:51:40', '', 1),
(30, 11, 'aman@1234gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-01 08:02:54', '', 1),
(31, 12, 'simranbedi123@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-01 13:30:13', '', 1),
(32, 11, 'aman@1234gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-01 13:30:57', '01-12-2021 07:01:30 PM', 1),
(33, 13, 'prabal123@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-02 08:36:07', '', 1),
(34, 13, 'prabal123@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-02 08:53:16', '', 1),
(35, 14, 'divya12@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-02 08:57:36', '', 1),
(36, 14, 'divya12@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-03 04:35:37', '', 1),
(37, 14, 'divya12@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-03 04:36:00', '', 1),
(38, 14, 'divya12@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-03 04:36:30', '', 1),
(39, 14, 'divya12@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-04 06:02:34', '', 1),
(40, 14, 'divya12@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-04 06:16:02', '', 1),
(41, 14, 'divya12@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-04 06:17:32', '04-12-2021 11:48:47 AM', 1),
(42, 14, 'divya12@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-04 06:18:50', '', 1),
(43, 14, 'divya12@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-04 06:23:09', '', 1),
(44, 14, 'divya12@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-04 06:33:06', '', 1),
(45, 14, 'divya12@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-04 06:42:32', '', 1),
(46, 14, 'divya12@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-04 16:59:30', '', 1),
(47, 14, 'divya12@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-04 18:03:02', '', 1),
(48, 14, 'divya12@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-04 18:04:38', '', 1),
(49, 14, 'divya12@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-04 18:07:28', '', 1),
(50, 14, 'divya12@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-04 18:10:42', '', 1),
(51, 14, 'divya12@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-04 18:37:56', '', 1),
(52, 14, 'divya12@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-04 18:53:03', '', 1),
(53, 14, 'divya12@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-04 18:59:59', '', 1),
(54, 14, 'divya12@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-05 04:28:09', '', 1),
(55, 14, 'divya12@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-05 04:28:33', '', 1),
(56, 14, 'divya12@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-05 04:59:58', '', 1),
(57, 14, 'divya12@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-05 05:09:05', '', 1),
(58, 14, 'divya12@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-05 05:49:03', '', 1),
(59, 0, 'excel.nj17@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-05 15:09:21', '', 0),
(60, 0, 'basant borah', 0x3a3a3100000000000000000000000000, '2021-12-05 15:09:35', '', 0),
(61, 0, 'Basant borah', 0x3a3a3100000000000000000000000000, '2021-12-05 15:10:16', '', 0),
(62, 16, 'excel.nj@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-05 15:11:25', '', 1),
(63, 16, 'excel.nj@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-06 10:02:01', '', 1),
(64, 16, 'excel.nj@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-06 11:59:36', '', 1),
(65, 16, 'excel.nj@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-06 15:05:31', '', 1),
(66, 16, 'excel.nj@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-06 15:11:03', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `city` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(6, 'raktim sarkar', 'guwahati', 'Guwahati', 'male', 'test@raktim.com', 'bdcadd86fe5b7353f6c53de6dc29f4a7', '2021-11-10 14:41:40', ''),
(8, 'TANMAY SARKAR', 'guwahati', 'Guwahati', 'male', 'test@tanmay.com', '9036b3fa19a935436502145b64fc24c8', '2021-11-12 02:53:34', ''),
(9, 'neha dutta', 'guwahati', 'Guwahati', 'male', 'neha@test.com', '2e3e798e0f93b9450a20fe39ebe4a885', '2021-11-14 16:40:55', ''),
(10, 'abhi', 'nogaon', 'nogaon', 'male', 'abhi@12.gmail.com', '167784d36ab99e49738fe6a6a98798b7', '2021-11-29 16:06:50', ''),
(11, 'AMAN', 'KOKRAJHAR', 'KOKRAJHAR', 'male', 'aman@1234gmail.com', 'bd00eb0f2a3ce174d021c6c7a6163eba', '2021-12-01 05:35:30', ''),
(13, 'Prabal', 'silchar', 'silchar', 'male', 'prabal123@gmail.com', '9290bd1858e55bdb8bb43ea11d12b7b7', '2021-12-02 08:35:44', ''),
(14, 'Divya ', 'Shillong', 'shillong', 'female', 'divya12@gmail.com', '473c182f8129335c3936c9528528d3dc', '2021-12-02 08:57:23', ''),
(15, 'basant borah', 'azara', 'Guwahati', 'male', 'excel.nj17@gmail.com', 'c4d308cc5619d1d837a8f65fd452a96b', '2021-12-05 15:08:46', ''),
(16, 'basant borah', 'azara', 'Guwahati', 'male', 'excel.nj@gmail.com', '702d8b8e23e31f2517c6505c18e4b460', '2021-12-05 15:11:15', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
