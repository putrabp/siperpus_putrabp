-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2026 at 05:54 AM
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
-- Database: `siperpus_ci_pbp`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_code` varchar(20) NOT NULL,
  `isbn` varchar(20) DEFAULT NULL,
  `title` varchar(200) NOT NULL,
  `author` varchar(150) NOT NULL,
  `publisher` varchar(150) DEFAULT NULL,
  `publication_year` int(4) UNSIGNED DEFAULT NULL,
  `category` varchar(100) NOT NULL,
  `stock_total` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `stock_available` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cover_filename` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `book_code`, `isbn`, `title`, `author`, `publisher`, `publication_year`, `category`, `stock_total`, `stock_available`, `cover_filename`, `created_at`, `updated_at`) VALUES
(1, 'BK001', '9786020000001', 'Pemrograman PHP Dasar', 'Andi Saputra', 'Informatika', 2025, 'Pemrograman', 10, 10, NULL, '2026-09-10 10:07:57', '2026-09-10 10:07:57'),
(2, 'BK002', '9786020000002', 'Dasar Database MySQL', 'Budi Santoso', 'Tekno Media', 2024, 'Database', 8, 8, NULL, '2026-09-10 10:07:57', '2026-09-10 10:07:57'),
(3, 'BK003', '9786020000003', 'Membangun Web dengan CodeIgniter 4', 'Citra Lestari', 'Digital Press', 2026, 'Framework', 5, 5, NULL, '2026-09-10 10:07:57', '2026-09-10 10:07:57'),
(4, 'BK004', '9786020000004', 'Cara jago Maen ep\" ala KENTUNG', '@putrabelok', 'kentungxkoplok', 1945, 'Framework', 666, 5, NULL, '2026-09-10 10:07:57', '2026-09-16 03:44:01'),
(5, 'BK005', '9786020000004', 'Cara Pus Reng ML ke immo ala KENTUNG', '@putrabelok', 'Kxk', 2222, 'Framework', 2222, 2, NULL, '2026-09-10 10:07:57', '2026-09-14 10:22:13'),
(6, 'BK007', '97880508687', 'cara LARP\" ALA KENTUNG', '@putrabelok', 'kentungxkoplok', 1999, 'Anjay', 99999, 99998, NULL, '2026-09-14 07:49:57', '2026-09-16 03:18:43'),
(7, 'BK008', '97880508667', 'cara LARP\" ALA KENTUNG\'s', '@putrabelok', 'kentungxkoplok', 2, 'Anjay', 1, 1, NULL, '2026-09-14 10:20:49', '2026-09-14 10:20:49');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(5, '2026-09-10-085931', 'App\\Database\\Migrations\\CreateBooksTable', 'default', 'App', 1789034837, 1),
(6, '2026-09-16-012733', 'App\\Database\\Migrations\\CreateMembersTable', 'default', 'App', 1789522161, 2),
(7, '2026-09-16-020430', 'App\\Database\\Migrations\\CreateLoansTable', 'default', 'App', 1789524410, 3),
(8, '2026-09-16-020603', 'App\\Database\\Migrations\\CreateLoanDetailsTable', 'default', 'App', 1789524410, 3),
(9, '2026-09-16-033221', 'App\\Database\\Migrations\\AddReturnFieldsToLoans', 'default', 'App', 1789529685, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
