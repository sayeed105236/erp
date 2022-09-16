-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 16, 2022 at 04:48 AM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `project_id` int(11) NOT NULL DEFAULT '0',
  `task_id` int(11) NOT NULL DEFAULT '0',
  `deal_id` int(11) NOT NULL DEFAULT '0',
  `log_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `user_id`, `project_id`, `task_id`, `deal_id`, `log_type`, `remark`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 0, 'Create Task', '{\"title\":\"Task 1\"}', '2022-09-15 09:25:49', '2022-09-15 09:25:49'),
(2, 4, 1, 0, 0, 'Create Milestone', '{\"title\":\"1st Milestone\"}', '2022-09-15 09:27:42', '2022-09-15 09:27:42'),
(3, 4, 1, 1, 0, 'Move Task', '{\"title\":\"Task 1\",\"old_stage\":\"To Do\",\"new_stage\":\"In Progress\"}', '2022-09-15 09:28:29', '2022-09-15 09:28:29'),
(4, 4, 1, 1, 0, 'Move Task', '{\"title\":\"Task 1\",\"old_stage\":\"In Progress\",\"new_stage\":\"Review\"}', '2022-09-15 09:28:30', '2022-09-15 09:28:30'),
(5, 4, 1, 1, 0, 'Move Task', '{\"title\":\"Task 1\",\"old_stage\":\"Review\",\"new_stage\":\"Done\"}', '2022-09-15 09:28:31', '2022-09-15 09:28:31'),
(6, 1, 0, 0, 1, 'Move', '{\"title\":\"test developer\",\"old_status\":\"Draft\",\"new_status\":\"Open\"}', '2022-09-15 09:30:38', '2022-09-15 09:30:38'),
(7, 1, 0, 0, 1, 'Move', '{\"title\":\"test developer\",\"old_status\":\"Open\",\"new_status\":\"Revised\"}', '2022-09-15 09:53:05', '2022-09-15 09:53:05'),
(8, 1, 0, 0, 1, 'Move', '{\"title\":\"test developer\",\"old_status\":\"Revised\",\"new_status\":\"Declined\"}', '2022-09-15 09:53:08', '2022-09-15 09:53:08'),
(9, 1, 0, 0, 1, 'Move', '{\"title\":\"test developer\",\"old_status\":\"Declined\",\"new_status\":\"Revised\"}', '2022-09-15 09:53:14', '2022-09-15 09:53:14'),
(10, 1, 0, 0, 1, 'Move', '{\"title\":\"test developer\",\"old_status\":\"Revised\",\"new_status\":\"Open\"}', '2022-09-15 09:53:16', '2022-09-15 09:53:16'),
(11, 1, 0, 0, 1, 'Move', '{\"title\":\"test developer\",\"old_status\":\"Open\",\"new_status\":\"Draft\"}', '2022-09-15 09:53:19', '2022-09-15 09:53:19');

-- --------------------------------------------------------

--
-- Table structure for table `admin_payment_settings`
--

CREATE TABLE `admin_payment_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `allowances`
--

CREATE TABLE `allowances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `allowance_option` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `allowance_options`
--

CREATE TABLE `allowance_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `branch_id` int(11) NOT NULL,
  `department_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `announcement_employees`
--

CREATE TABLE `announcement_employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `announcement_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `appraisals`
--

CREATE TABLE `appraisals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch` int(11) NOT NULL DEFAULT '0',
  `employee` int(11) NOT NULL DEFAULT '0',
  `rating` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appraisal_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_experience` int(11) NOT NULL DEFAULT '0',
  `marketing` int(11) NOT NULL DEFAULT '0',
  `administration` int(11) NOT NULL DEFAULT '0',
  `professionalism` int(11) NOT NULL DEFAULT '0',
  `integrity` int(11) NOT NULL DEFAULT '0',
  `attendance` int(11) NOT NULL DEFAULT '0',
  `remark` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_date` date NOT NULL,
  `supported_date` date NOT NULL,
  `amount` double(8,2) NOT NULL DEFAULT '0.00',
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendance_employees`
--

CREATE TABLE `attendance_employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clock_in` time NOT NULL,
  `clock_out` time NOT NULL,
  `late` time NOT NULL,
  `early_leaving` time NOT NULL,
  `overtime` time NOT NULL,
  `total_rest` time NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE `awards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `award_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `gift` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `award_types`
--

CREATE TABLE `award_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `holder_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opening_balance` double(15,2) NOT NULL DEFAULT '0.00',
  `contact_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bank_accounts`
--

INSERT INTO `bank_accounts` (`id`, `holder_name`, `bank_name`, `account_number`, `opening_balance`, `contact_number`, `bank_address`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'cash', '', '-', 0.00, '-', '-', 1, '2022-07-26 20:44:14', '2022-07-26 20:44:14');

-- --------------------------------------------------------

--
-- Table structure for table `bank_transfers`
--

CREATE TABLE `bank_transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_account` int(11) NOT NULL DEFAULT '0',
  `to_account` int(11) NOT NULL DEFAULT '0',
  `amount` double(15,2) NOT NULL DEFAULT '0.00',
  `date` date NOT NULL,
  `payment_method` int(11) NOT NULL DEFAULT '0',
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bill_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `vender_id` int(11) NOT NULL,
  `bill_date` date NOT NULL,
  `due_date` date NOT NULL,
  `order_number` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `shipping_display` int(11) NOT NULL DEFAULT '1',
  `send_date` date DEFAULT NULL,
  `discount_apply` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bill_payments`
--

CREATE TABLE `bill_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bill_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `amount` decimal(16,2) NOT NULL DEFAULT '0.00',
  `account_id` int(11) NOT NULL,
  `payment_method` int(11) NOT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_receipt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bill_products`
--

CREATE TABLE `bill_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bill_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `tax` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '0.00',
  `discount` double(8,2) NOT NULL DEFAULT '0.00',
  `price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `name`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Dhaka', 1, '2022-09-15 16:48:54', '2022-09-15 16:48:54');

-- --------------------------------------------------------

--
-- Table structure for table `budgets`
--

CREATE TABLE `budgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `period` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `income_data` text COLLATE utf8mb4_unicode_ci,
  `expense_data` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bugs`
--

CREATE TABLE `bugs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bug_id` int(11) NOT NULL DEFAULT '0',
  `project_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `assign_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bug_comments`
--

CREATE TABLE `bug_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bug_id` int(11) NOT NULL DEFAULT '0',
  `user_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bug_files`
--

CREATE TABLE `bug_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bug_id` int(11) NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bug_statuses`
--

CREATE TABLE `bug_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bug_statuses`
--

INSERT INTO `bug_statuses` (`id`, `title`, `created_by`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Confirmed', 1, 0, '2022-07-26 20:44:15', '2022-07-26 20:44:15'),
(2, 'Resolved', 1, 0, '2022-07-26 20:44:15', '2022-07-26 20:44:15'),
(3, 'Unconfirmed', 1, 0, '2022-07-26 20:44:15', '2022-07-26 20:44:15'),
(4, 'In Progress', 1, 0, '2022-07-26 20:44:15', '2022-07-26 20:44:15'),
(5, 'Verified', 1, 0, '2022-07-26 20:44:15', '2022-07-26 20:44:15');

-- --------------------------------------------------------

--
-- Table structure for table `chart_of_accounts`
--

CREATE TABLE `chart_of_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `sub_type` int(11) NOT NULL DEFAULT '0',
  `is_enabled` int(11) NOT NULL DEFAULT '1',
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chart_of_accounts`
--

INSERT INTO `chart_of_accounts` (`id`, `name`, `code`, `type`, `sub_type`, `is_enabled`, `description`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Accounts Receivable', 120, 1, 1, 1, NULL, 1, '2022-07-26 20:44:14', '2022-07-26 20:44:14'),
(2, 'Computer Equipment', 160, 1, 2, 1, NULL, 1, '2022-07-26 20:44:14', '2022-07-26 20:44:14'),
(3, 'Office Equipment', 150, 1, 2, 1, NULL, 1, '2022-07-26 20:44:14', '2022-07-26 20:44:14'),
(4, 'Inventory', 140, 1, 3, 1, NULL, 1, '2022-07-26 20:44:14', '2022-07-26 20:44:14'),
(5, 'Budget - Finance Staff', 857, 1, 6, 1, NULL, 1, '2022-07-26 20:44:14', '2022-07-26 20:44:14'),
(6, 'Accumulated Depreciation', 170, 1, 7, 1, NULL, 1, '2022-07-26 20:44:14', '2022-07-26 20:44:14'),
(7, 'Accounts Payable', 200, 2, 8, 1, NULL, 1, '2022-07-26 20:44:14', '2022-07-26 20:44:14'),
(8, 'Accruals', 205, 2, 8, 1, NULL, 1, '2022-07-26 20:44:14', '2022-07-26 20:44:14'),
(9, 'Office Equipment', 150, 2, 8, 1, NULL, 1, '2022-07-26 20:44:14', '2022-07-26 20:44:14'),
(10, 'Clearing Account', 855, 2, 8, 1, NULL, 1, '2022-07-26 20:44:14', '2022-07-26 20:44:14'),
(11, 'Employee Benefits Payable', 235, 2, 8, 1, NULL, 1, '2022-07-26 20:44:14', '2022-07-26 20:44:14'),
(12, 'Employee Deductions payable', 236, 2, 8, 1, NULL, 1, '2022-07-26 20:44:14', '2022-07-26 20:44:14'),
(13, 'Historical Adjustments', 255, 2, 8, 1, NULL, 1, '2022-07-26 20:44:14', '2022-07-26 20:44:14'),
(14, 'Revenue Received in Advance', 835, 2, 8, 1, NULL, 1, '2022-07-26 20:44:14', '2022-07-26 20:44:14'),
(15, 'Rounding', 260, 2, 8, 1, NULL, 1, '2022-07-26 20:44:14', '2022-07-26 20:44:14'),
(16, 'Costs of Goods Sold', 500, 3, 11, 1, NULL, 1, '2022-07-26 20:44:14', '2022-07-26 20:44:14'),
(17, 'Advertising', 600, 3, 12, 1, NULL, 1, '2022-07-26 20:44:14', '2022-07-26 20:44:14'),
(18, 'Automobile Expenses', 644, 3, 12, 1, NULL, 1, '2022-07-26 20:44:14', '2022-07-26 20:44:14'),
(19, 'Bad Debts', 684, 3, 12, 1, NULL, 1, '2022-07-26 20:44:14', '2022-07-26 20:44:14'),
(20, 'Bank Revaluations', 810, 3, 12, 1, NULL, 1, '2022-07-26 20:44:14', '2022-07-26 20:44:14'),
(21, 'Bank Service Charges', 605, 3, 12, 1, NULL, 1, '2022-07-26 20:44:14', '2022-07-26 20:44:14'),
(22, 'Consulting & Accounting', 615, 3, 12, 1, NULL, 1, '2022-07-26 20:44:14', '2022-07-26 20:44:14'),
(23, 'Depreciation', 700, 3, 12, 1, NULL, 1, '2022-07-26 20:44:14', '2022-07-26 20:44:14'),
(24, 'General Expenses', 628, 3, 12, 1, NULL, 1, '2022-07-26 20:44:14', '2022-07-26 20:44:14'),
(25, 'Interest Income', 460, 4, 13, 1, NULL, 1, '2022-07-26 20:44:14', '2022-07-26 20:44:14'),
(26, 'Other Revenue', 470, 4, 13, 1, NULL, 1, '2022-07-26 20:44:14', '2022-07-26 20:44:14'),
(27, 'Purchase Discount', 475, 4, 13, 1, NULL, 1, '2022-07-26 20:44:14', '2022-07-26 20:44:14'),
(28, 'Sales', 400, 4, 13, 1, NULL, 1, '2022-07-26 20:44:14', '2022-07-26 20:44:14'),
(29, 'Common Stock', 330, 5, 16, 1, NULL, 1, '2022-07-26 20:44:14', '2022-07-26 20:44:14'),
(30, 'Owners Contribution', 300, 5, 16, 1, NULL, 1, '2022-07-26 20:44:14', '2022-07-26 20:44:14'),
(31, 'Owners Draw', 310, 5, 16, 1, NULL, 1, '2022-07-26 20:44:14', '2022-07-26 20:44:14'),
(32, 'Retained Earnings', 320, 5, 16, 1, NULL, 1, '2022-07-26 20:44:14', '2022-07-26 20:44:14');

-- --------------------------------------------------------

--
-- Table structure for table `chart_of_account_sub_types`
--

CREATE TABLE `chart_of_account_sub_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `type` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chart_of_account_sub_types`
--

INSERT INTO `chart_of_account_sub_types` (`id`, `name`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Current Asset', 1, '2022-07-26 20:44:14', '2022-07-26 20:44:14'),
(2, 'Fixed Asset', 1, '2022-07-26 20:44:14', '2022-07-26 20:44:14'),
(3, 'Inventory', 1, '2022-07-26 20:44:14', '2022-07-26 20:44:14'),
(4, 'Non-current Asset', 1, '2022-07-26 20:44:14', '2022-07-26 20:44:14'),
(5, 'Prepayment', 1, '2022-07-26 20:44:14', '2022-07-26 20:44:14'),
(6, 'Bank & Cash', 1, '2022-07-26 20:44:14', '2022-07-26 20:44:14'),
(7, 'Depreciation', 1, '2022-07-26 20:44:14', '2022-07-26 20:44:14'),
(8, 'Current Liability', 2, '2022-07-26 20:44:14', '2022-07-26 20:44:14'),
(9, 'Liability', 2, '2022-07-26 20:44:14', '2022-07-26 20:44:14'),
(10, 'Non-current Liability', 2, '2022-07-26 20:44:14', '2022-07-26 20:44:14'),
(11, 'Direct Costs', 3, '2022-07-26 20:44:14', '2022-07-26 20:44:14'),
(12, 'Expense', 3, '2022-07-26 20:44:14', '2022-07-26 20:44:14'),
(13, 'Revenue', 4, '2022-07-26 20:44:14', '2022-07-26 20:44:14'),
(14, 'Sales', 4, '2022-07-26 20:44:14', '2022-07-26 20:44:14'),
(15, 'Other Income', 4, '2022-07-26 20:44:14', '2022-07-26 20:44:14'),
(16, 'Equity', 5, '2022-07-26 20:44:14', '2022-07-26 20:44:14');

-- --------------------------------------------------------

--
-- Table structure for table `chart_of_account_types`
--

CREATE TABLE `chart_of_account_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chart_of_account_types`
--

INSERT INTO `chart_of_account_types` (`id`, `name`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Assets', 1, '2022-07-26 20:44:14', '2022-07-26 20:44:14'),
(2, 'Liabilities', 1, '2022-07-26 20:44:14', '2022-07-26 20:44:14'),
(3, 'Expenses', 1, '2022-07-26 20:44:14', '2022-07-26 20:44:14'),
(4, 'Income', 1, '2022-07-26 20:44:14', '2022-07-26 20:44:14'),
(5, 'Equity', 1, '2022-07-26 20:44:14', '2022-07-26 20:44:14');

-- --------------------------------------------------------

--
-- Table structure for table `ch_favorites`
--

CREATE TABLE `ch_favorites` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `favorite_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ch_messages`
--

CREATE TABLE `ch_messages` (
  `id` bigint(20) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_id` bigint(20) NOT NULL,
  `to_id` bigint(20) NOT NULL,
  `body` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `client_deals`
--

CREATE TABLE `client_deals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `deal_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client_deals`
--

INSERT INTO `client_deals` (`id`, `client_id`, `deal_id`, `created_at`, `updated_at`) VALUES
(1, 3, 1, '2022-09-14 05:08:30', '2022-09-14 05:08:30');

-- --------------------------------------------------------

--
-- Table structure for table `commissions`
--

CREATE TABLE `commissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_payment_settings`
--

CREATE TABLE `company_payment_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_policies`
--

CREATE TABLE `company_policies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `competencies`
--

CREATE TABLE `competencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `complaint_from` int(11) NOT NULL,
  `complaint_against` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `complaint_date` date NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contracts`
--

CREATE TABLE `contracts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_name` int(11) NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contract_types`
--

CREATE TABLE `contract_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` double(8,2) NOT NULL DEFAULT '0.00',
  `limit` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `is_active` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `credit_notes`
--

CREATE TABLE `credit_notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice` int(11) NOT NULL DEFAULT '0',
  `customer` int(11) NOT NULL DEFAULT '0',
  `amount` double(15,2) NOT NULL DEFAULT '0.00',
  `date` date NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `is_active` int(11) NOT NULL DEFAULT '1',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `billing_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_zip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `balance` double(8,2) NOT NULL DEFAULT '0.00',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_field_values`
--

CREATE TABLE `custom_field_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `record_id` bigint(20) UNSIGNED NOT NULL,
  `field_id` bigint(20) UNSIGNED NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_questions`
--

CREATE TABLE `custom_questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_required` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deals`
--

CREATE TABLE `deals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `pipeline_id` int(11) NOT NULL,
  `stage_id` int(11) NOT NULL,
  `sources` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `labels` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deals`
--

INSERT INTO `deals` (`id`, `name`, `phone`, `price`, `pipeline_id`, `stage_id`, `sources`, `products`, `notes`, `labels`, `status`, `order`, `created_by`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'test developer', '+8801575202028', 500000.00, 1, 1, NULL, NULL, NULL, '2,5', 'Active', 0, 1, 1, '2022-09-14 05:08:27', '2022-09-15 09:55:01');

-- --------------------------------------------------------

--
-- Table structure for table `deal_calls`
--

CREATE TABLE `deal_calls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `deal_id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `call_type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `call_result` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deal_discussions`
--

CREATE TABLE `deal_discussions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `deal_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deal_emails`
--

CREATE TABLE `deal_emails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `deal_id` bigint(20) UNSIGNED NOT NULL,
  `to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deal_files`
--

CREATE TABLE `deal_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `deal_id` bigint(20) UNSIGNED NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deal_tasks`
--

CREATE TABLE `deal_tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `deal_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `priority` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `debit_notes`
--

CREATE TABLE `debit_notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bill` int(11) NOT NULL DEFAULT '0',
  `vendor` int(11) NOT NULL DEFAULT '0',
  `amount` double(15,2) NOT NULL DEFAULT '0.00',
  `date` date NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deduction_options`
--

CREATE TABLE `deduction_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_required` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ducument_uploads`
--

CREATE TABLE `ducument_uploads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_template_langs`
--

CREATE TABLE `email_template_langs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL,
  `lang` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `branch_id` int(11) NOT NULL DEFAULT '0',
  `department_id` int(11) NOT NULL DEFAULT '0',
  `designation_id` int(11) NOT NULL DEFAULT '0',
  `company_doj` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `documents` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_holder_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_identifier_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_payer_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary_type` int(11) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `user_id`, `name`, `dob`, `gender`, `phone`, `address`, `email`, `password`, `employee_id`, `branch_id`, `department_id`, `designation_id`, `company_doj`, `documents`, `account_holder_name`, `account_number`, `bank_name`, `bank_identifier_code`, `branch_location`, `tax_payer_id`, `salary_type`, `salary`, `is_active`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 2, 'accountant', NULL, NULL, NULL, NULL, 'accountant@example.com', '$2y$10$xt9y5bBjlZhQ8knLN3eWfuBeCWc84LF7RyGqF2md/npWuJrRnbig2', '1', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2022-07-26 20:44:14', '2022-07-26 20:44:14'),
(2, 4, 'Project Manager', NULL, NULL, NULL, NULL, 'projectmanager@gmail.com', '$2y$10$RDVaZE9niarH0SZjpT.0hOrXSCL09igt6dLbfti9J66YweNWn6ibi', '2', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2022-09-14 03:09:00', '2022-09-14 03:09:00');

-- --------------------------------------------------------

--
-- Table structure for table `employee_documents`
--

CREATE TABLE `employee_documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `document_id` int(11) NOT NULL,
  `document_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `estimations`
--

CREATE TABLE `estimations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `estimation_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issue_date` date NOT NULL,
  `discount` double(8,2) NOT NULL,
  `tax_id` bigint(20) UNSIGNED NOT NULL,
  `terms` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` int(11) NOT NULL,
  `department_id` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `event_employees`
--

CREATE TABLE `event_employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(16,2) NOT NULL DEFAULT '0.00',
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `task_id` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `form_builders`
--

CREATE TABLE `form_builders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT '1',
  `is_lead_active` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `form_builders`
--

INSERT INTO `form_builders` (`id`, `name`, `code`, `is_active`, `is_lead_active`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Deal\'s New Form', '6322b73e046d41663219518', 1, 1, 1, '2022-09-15 12:25:18', '2022-09-15 13:22:23');

-- --------------------------------------------------------

--
-- Table structure for table `form_fields`
--

CREATE TABLE `form_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `form_fields`
--

INSERT INTO `form_fields` (`id`, `form_id`, `name`, `type`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'Deal Name', 'text', 1, '2022-09-15 13:11:02', '2022-09-15 13:11:02'),
(3, 1, 'Client Name', 'text', 1, '2022-09-15 13:16:09', '2022-09-15 13:16:09'),
(4, 1, 'Client Details', 'textarea', 1, '2022-09-15 13:16:19', '2022-09-15 13:16:19'),
(5, 1, 'Created By', 'email', 1, '2022-09-15 13:16:32', '2022-09-15 13:16:32'),
(6, 1, 'Platform', 'text', 1, '2022-09-15 13:17:18', '2022-09-15 13:17:18');

-- --------------------------------------------------------

--
-- Table structure for table `form_field_responses`
--

CREATE TABLE `form_field_responses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` int(11) NOT NULL,
  `name_id` int(11) NOT NULL,
  `email_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pipeline_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `form_field_responses`
--

INSERT INTO `form_field_responses` (`id`, `form_id`, `subject_id`, `name_id`, `email_id`, `user_id`, `pipeline_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, 1, '2022-09-15 13:22:23', '2022-09-15 13:22:23');

-- --------------------------------------------------------

--
-- Table structure for table `form_responses`
--

CREATE TABLE `form_responses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_id` bigint(20) UNSIGNED NOT NULL,
  `response` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `form_responses`
--

INSERT INTO `form_responses` (`id`, `form_id`, `response`, `created_at`, `updated_at`) VALUES
(1, 1, '{\"Deal Name\":\"E-Commerce Laravel Project\",\"Client Name\":\"Tamara Hayatt\",\"Client Details\":\"She needs a erp website built in Laravel framework.\",\"Created By\":\"abusayeed33343536@gmail.com\",\"Platform\":\"Upwork\"}', '2022-09-15 13:22:05', '2022-09-15 13:22:05');

-- --------------------------------------------------------

--
-- Table structure for table `genrate_payslip_options`
--

CREATE TABLE `genrate_payslip_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `goals`
--

CREATE TABLE `goals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `is_display` int(11) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `goal_trackings`
--

CREATE TABLE `goal_trackings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch` int(11) NOT NULL,
  `goal_type` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_achievement` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `progress` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `goal_types`
--

CREATE TABLE `goal_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `end_date` date NOT NULL,
  `occasion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `indicators`
--

CREATE TABLE `indicators` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch` int(11) NOT NULL DEFAULT '0',
  `department` int(11) NOT NULL DEFAULT '0',
  `designation` int(11) NOT NULL DEFAULT '0',
  `rating` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_experience` int(11) NOT NULL DEFAULT '0',
  `marketing` int(11) NOT NULL DEFAULT '0',
  `administration` int(11) NOT NULL DEFAULT '0',
  `professionalism` int(11) NOT NULL DEFAULT '0',
  `integrity` int(11) NOT NULL DEFAULT '0',
  `attendance` int(11) NOT NULL DEFAULT '0',
  `created_user` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `interview_schedules`
--

CREATE TABLE `interview_schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate` int(11) NOT NULL,
  `employee` int(11) NOT NULL DEFAULT '0',
  `date` date NOT NULL,
  `time` time NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `employee_response` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `issue_date` date NOT NULL,
  `due_date` date NOT NULL,
  `send_date` date DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `ref_number` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `shipping_display` int(11) NOT NULL DEFAULT '1',
  `discount_apply` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_payments`
--

CREATE TABLE `invoice_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `amount` decimal(16,2) NOT NULL DEFAULT '0.00',
  `account_id` int(11) NOT NULL,
  `payment_method` int(11) NOT NULL,
  `receipt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Manually',
  `txn_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_receipt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_products`
--

CREATE TABLE `invoice_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `tax` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '0.00',
  `discount` double(8,2) NOT NULL DEFAULT '0.00',
  `price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `requirement` text COLLATE utf8mb4_unicode_ci,
  `branch` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `skill` text COLLATE utf8mb4_unicode_ci,
  `position` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `applicant` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visibility` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_question` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_applications`
--

CREATE TABLE `job_applications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resume` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_letter` text COLLATE utf8mb4_unicode_ci,
  `dob` date DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stage` int(11) NOT NULL DEFAULT '1',
  `order` int(11) NOT NULL DEFAULT '0',
  `skill` text COLLATE utf8mb4_unicode_ci,
  `rating` int(11) NOT NULL DEFAULT '0',
  `is_archive` int(11) NOT NULL DEFAULT '0',
  `custom_question` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_application_notes`
--

CREATE TABLE `job_application_notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `application_id` int(11) NOT NULL DEFAULT '0',
  `note_created` int(11) NOT NULL DEFAULT '0',
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_categories`
--

CREATE TABLE `job_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_on_boards`
--

CREATE TABLE `job_on_boards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `application` int(11) NOT NULL,
  `joining_date` date DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `convert_to_employee` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_stages`
--

CREATE TABLE `job_stages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_stages`
--

INSERT INTO `job_stages` (`id`, `title`, `order`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Applied', 0, 1, '2022-07-26 20:44:15', '2022-07-26 20:44:15'),
(2, 'Phone Screen', 0, 1, '2022-07-26 20:44:15', '2022-07-26 20:44:15'),
(3, 'Interview', 0, 1, '2022-07-26 20:44:15', '2022-07-26 20:44:15'),
(4, 'Hired', 0, 1, '2022-07-26 20:44:15', '2022-07-26 20:44:15'),
(5, 'Rejected', 0, 1, '2022-07-26 20:44:15', '2022-07-26 20:44:15');

-- --------------------------------------------------------

--
-- Table structure for table `journal_entries`
--

CREATE TABLE `journal_entries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `journal_id` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `journal_items`
--

CREATE TABLE `journal_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `journal` int(11) NOT NULL DEFAULT '0',
  `account` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `debit` double(8,2) NOT NULL DEFAULT '0.00',
  `credit` double(8,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `labels`
--

CREATE TABLE `labels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pipeline_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `labels`
--

INSERT INTO `labels` (`id`, `name`, `color`, `pipeline_id`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'On Hold', 'primary', 1, 1, '2022-07-26 20:44:15', '2022-07-26 20:44:15'),
(2, 'New', 'info', 1, 1, '2022-07-26 20:44:15', '2022-07-26 20:44:15'),
(3, 'Pending', 'warning', 1, 1, '2022-07-26 20:44:15', '2022-07-26 20:44:15'),
(4, 'Loss', 'danger', 1, 1, '2022-07-26 20:44:15', '2022-07-26 20:44:15'),
(5, 'Win', 'success', 1, 1, '2022-07-26 20:44:15', '2022-07-26 20:44:15');

-- --------------------------------------------------------

--
-- Table structure for table `landing_page_sections`
--

CREATE TABLE `landing_page_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `section_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_order` int(11) NOT NULL DEFAULT '0',
  `content` text COLLATE utf8mb4_unicode_ci,
  `section_type` enum('section-1','section-2','section-3','section-4','section-5','section-6','section-7','section-8','section-9','section-10','section-plan') COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_demo_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_blade_file_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE `leads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `pipeline_id` int(11) NOT NULL,
  `stage_id` int(11) NOT NULL,
  `sources` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `labels` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT '1',
  `is_converted` int(11) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leads`
--

INSERT INTO `leads` (`id`, `name`, `email`, `phone`, `subject`, `user_id`, `pipeline_id`, `stage_id`, `sources`, `products`, `notes`, `labels`, `order`, `created_by`, `is_active`, `is_converted`, `date`, `created_at`, `updated_at`) VALUES
(1, 'Design a Ecommerce Site', 'foreignclient@gmail.com', '01575202028', 'New Lead', 4, 1, 3, NULL, NULL, NULL, NULL, 0, 1, 1, 0, '2022-09-15', '2022-09-15 09:30:08', '2022-09-15 13:24:47');

-- --------------------------------------------------------

--
-- Table structure for table `lead_activity_logs`
--

CREATE TABLE `lead_activity_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `lead_id` bigint(20) UNSIGNED NOT NULL,
  `log_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lead_activity_logs`
--

INSERT INTO `lead_activity_logs` (`id`, `user_id`, `lead_id`, `log_type`, `remark`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Move', '{\"title\":\"Design a Ecommerce Site\",\"old_status\":\"Draft\",\"new_status\":\"Sent\"}', '2022-09-15 09:30:19', '2022-09-15 09:30:19'),
(2, 1, 1, 'Move', '{\"title\":\"Design a Ecommerce Site\",\"old_status\":\"Sent\",\"new_status\":\"Open\"}', '2022-09-15 09:30:21', '2022-09-15 09:30:21'),
(3, 1, 1, 'Move', '{\"title\":\"Design a Ecommerce Site\",\"old_status\":\"Open\",\"new_status\":\"Draft\"}', '2022-09-15 13:24:24', '2022-09-15 13:24:24'),
(4, 1, 1, 'Move', '{\"title\":\"Design a Ecommerce Site\",\"old_status\":\"Draft\",\"new_status\":\"Open\"}', '2022-09-15 13:24:47', '2022-09-15 13:24:47');

-- --------------------------------------------------------

--
-- Table structure for table `lead_calls`
--

CREATE TABLE `lead_calls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lead_id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `call_type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `call_result` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lead_discussions`
--

CREATE TABLE `lead_discussions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lead_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lead_emails`
--

CREATE TABLE `lead_emails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lead_id` bigint(20) UNSIGNED NOT NULL,
  `to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lead_files`
--

CREATE TABLE `lead_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lead_id` bigint(20) UNSIGNED NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lead_stages`
--

CREATE TABLE `lead_stages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pipeline_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lead_stages`
--

INSERT INTO `lead_stages` (`id`, `name`, `pipeline_id`, `created_by`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Draft', 1, 1, 0, '2022-07-26 20:44:14', '2022-07-26 20:44:14'),
(2, 'Sent', 1, 1, 0, '2022-07-26 20:44:14', '2022-07-26 20:44:14'),
(3, 'Open', 1, 1, 0, '2022-07-26 20:44:15', '2022-07-26 20:44:15'),
(4, 'Revised', 1, 1, 0, '2022-07-26 20:44:15', '2022-07-26 20:44:15'),
(5, 'Declined', 1, 1, 0, '2022-07-26 20:44:15', '2022-07-26 20:44:15');

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `leave_type_id` int(11) NOT NULL,
  `applied_on` date NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `total_leave_days` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `leave_reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leave_types`
--

CREATE TABLE `leave_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `days` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loans`
--

CREATE TABLE `loans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `loan_option` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loan_options`
--

CREATE TABLE `loan_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log_activities`
--

CREATE TABLE `log_activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `time` time NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` int(11) NOT NULL,
  `department_id` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meeting_employees`
--

CREATE TABLE `meeting_employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meeting_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_09_22_192348_create_messages_table', 1),
(5, '2019_09_28_102009_create_settings_table', 1),
(6, '2019_09_30_050856_create_pipelines_table', 1),
(7, '2019_09_30_052036_create_sources_table', 1),
(8, '2019_09_30_061801_create_stages_table', 1),
(9, '2019_09_30_092218_create_labels_table', 1),
(10, '2019_10_03_052618_create_deals_table', 1),
(11, '2019_10_05_045358_create_user_deals_table', 1),
(12, '2019_10_05_045359_create_client_deals_table', 1),
(13, '2019_10_07_054657_create_deal_files_table', 1),
(14, '2019_10_07_091153_create_deal_tasks_table', 1),
(15, '2019_10_14_055151_create_deal_discussions_table', 1),
(16, '2019_10_16_211433_create_favorites_table', 1),
(17, '2019_10_18_223259_add_avatar_to_users', 1),
(18, '2019_10_20_211056_add_messenger_color_to_users', 1),
(19, '2019_10_22_000539_add_dark_mode_to_users', 1),
(20, '2019_10_24_060326_create_projectstages_table', 1),
(21, '2019_10_25_214038_add_active_status_to_users', 1),
(22, '2019_11_12_073012_create_bug_comments_table', 1),
(23, '2019_11_12_100007_create_bug_files_table', 1),
(24, '2019_11_13_051828_create_taxes_table', 1),
(25, '2019_11_13_055026_create_invoices_table', 1),
(26, '2019_11_21_090403_create_plans_table', 1),
(27, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(28, '2019_12_18_110230_create_bugs_table', 1),
(29, '2019_12_18_112007_create_bug_statuses_table', 1),
(30, '2019_12_26_101754_create_departments_table', 1),
(31, '2019_12_26_101814_create_designations_table', 1),
(32, '2019_12_26_105721_create_documents_table', 1),
(33, '2019_12_27_083751_create_branches_table', 1),
(34, '2019_12_27_090831_create_employees_table', 1),
(35, '2019_12_27_112922_create_employee_documents_table', 1),
(36, '2019_12_28_050508_create_awards_table', 1),
(37, '2019_12_28_050919_create_award_types_table', 1),
(38, '2019_12_31_060916_create_termination_types_table', 1),
(39, '2019_12_31_062259_create_terminations_table', 1),
(40, '2019_12_31_070521_create_resignations_table', 1),
(41, '2019_12_31_072252_create_travels_table', 1),
(42, '2019_12_31_090637_create_promotions_table', 1),
(43, '2019_12_31_092838_create_transfers_table', 1),
(44, '2019_12_31_100319_create_warnings_table', 1),
(45, '2019_12_31_103019_create_complaints_table', 1),
(46, '2020_01_02_090837_create_payslip_types_table', 1),
(47, '2020_01_02_093331_create_allowance_options_table', 1),
(48, '2020_01_02_102558_create_loan_options_table', 1),
(49, '2020_01_02_103822_create_deduction_options_table', 1),
(50, '2020_01_02_110828_create_genrate_payslip_options_table', 1),
(51, '2020_01_02_111807_create_set_salaries_table', 1),
(52, '2020_01_03_084302_create_allowances_table', 1),
(53, '2020_01_03_101735_create_commissions_table', 1),
(54, '2020_01_03_105019_create_loans_table', 1),
(55, '2020_01_03_105046_create_saturation_deductions_table', 1),
(56, '2020_01_03_105100_create_other_payments_table', 1),
(57, '2020_01_03_105111_create_overtimes_table', 1),
(58, '2020_01_04_060343_create_contract_types_table', 1),
(59, '2020_01_04_060343_create_performance_type_table', 1),
(60, '2020_01_04_060354_create_contracts_table', 1),
(61, '2020_01_04_072527_create_pay_slips_table', 1),
(62, '2020_01_08_063207_create_product_services_table', 1),
(63, '2020_01_08_084029_create_product_service_categories_table', 1),
(64, '2020_01_08_092717_create_product_service_units_table', 1),
(65, '2020_01_08_121541_create_customers_table', 1),
(66, '2020_01_09_104945_create_venders_table', 1),
(67, '2020_01_09_113852_create_bank_accounts_table', 1),
(68, '2020_01_09_124222_create_bank_transfers_table', 1),
(69, '2020_01_10_064723_create_transactions_table', 1),
(70, '2020_01_13_072608_create_invoice_products_table', 1),
(71, '2020_01_13_084720_create_events_table', 1),
(72, '2020_01_15_034438_create_revenues_table', 1),
(73, '2020_01_15_051228_create_bills_table', 1),
(74, '2020_01_15_060859_create_bill_products_table', 1),
(75, '2020_01_15_073237_create_payments_table', 1),
(76, '2020_01_16_041720_create_announcements_table', 1),
(77, '2020_01_16_043907_create_orders_table', 1),
(78, '2020_01_16_090747_create_leave_types_table', 1),
(79, '2020_01_16_093256_create_leaves_table', 1),
(80, '2020_01_16_110357_create_meetings_table', 1),
(81, '2020_01_18_051650_create_invoice_payments_table', 1),
(82, '2020_01_20_091035_create_bill_payments_table', 1),
(83, '2020_01_23_101613_create_meeting_employees_table', 1),
(84, '2020_01_23_123844_create_event_employees_table', 1),
(85, '2020_01_24_062752_create_announcement_employees_table', 1),
(86, '2020_01_27_052503_create_attendance_employees_table', 1),
(87, '2020_02_25_052356_create_credit_notes_table', 1),
(88, '2020_02_26_033827_create_debit_notes_table', 1),
(89, '2020_03_04_122711_create_leads_table', 1),
(90, '2020_03_04_122801_create_lead_stages_table', 1),
(91, '2020_03_05_042105_create_lead_activity_logs_table', 1),
(92, '2020_03_05_042308_create_lead_discussions_table', 1),
(93, '2020_03_05_042318_create_user_leads_table', 1),
(94, '2020_03_05_042549_create_lead_files_table', 1),
(95, '2020_03_05_042636_create_lead_emails_table', 1),
(96, '2020_03_05_042710_create_lead_calls_table', 1),
(97, '2020_03_05_044157_create_deal_emails_table', 1),
(98, '2020_03_05_044322_create_deal_calls_table', 1),
(99, '2020_03_12_095629_create_coupons_table', 1),
(100, '2020_03_12_120749_create_user_coupons_table', 1),
(101, '2020_03_17_104345_create_estimations_table', 1),
(102, '2020_03_18_104909_create_notifications_table', 1),
(103, '2020_04_02_045834_create_proposals_table', 1),
(104, '2020_04_02_055706_create_proposal_products_table', 1),
(105, '2020_04_18_035141_create_goals_table', 1),
(106, '2020_04_21_115823_create_assets_table', 1),
(107, '2020_04_24_023732_create_custom_fields_table', 1),
(108, '2020_04_24_024217_create_custom_field_values_table', 1),
(109, '2020_05_01_122144_create_ducument_uploads_table', 1),
(110, '2020_05_02_075614_create_email_templates_table', 1),
(111, '2020_05_02_075630_create_email_template_langs_table', 1),
(112, '2020_05_02_075647_create_user_email_templates_table', 1),
(113, '2020_05_04_070452_create_indicators_table', 1),
(114, '2020_05_05_023742_create_appraisals_table', 1),
(115, '2020_05_05_061241_create_goal_types_table', 1),
(116, '2020_05_05_095926_create_goal_trackings_table', 1),
(117, '2020_05_07_093520_create_company_policies_table', 1),
(118, '2020_05_07_131311_create_training_types_table', 1),
(119, '2020_05_08_023838_create_trainers_table', 1),
(120, '2020_05_08_043039_create_trainings_table', 1),
(121, '2020_05_21_065337_create_permission_tables', 1),
(122, '2020_06_02_085538_create_task_stages_table', 1),
(123, '2020_06_30_043627_create_user_to_dos_table', 1),
(124, '2020_06_30_120854_add_balance_to_customers_table', 1),
(125, '2020_06_30_121531_add_balance_to_vender_table', 1),
(126, '2020_07_01_033457_change_product_services_tax_id_column_type', 1),
(127, '2020_07_01_063255_change_tax_column_type', 1),
(128, '2020_07_03_054342_add_convert_in_proposal_table', 1),
(129, '2020_07_04_041452_create_project_email_templates_table', 1),
(130, '2020_07_06_102454_add_payment_type_in_orders_table', 1),
(131, '2020_07_06_110501_create_user_contacts_table', 1),
(132, '2020_07_07_052211_add_field_in_invoice_payments_table', 1),
(133, '2020_07_22_131715_change_amount_type_size', 1),
(134, '2020_08_04_034206_change_settings_value_type', 1),
(135, '2020_08_10_073242_create_project_invoices_table', 1),
(136, '2020_08_26_093539_create_time_trackers_table', 1),
(137, '2020_09_16_040822_change_user_type_size_in_users_table', 1),
(138, '2020_09_17_053350_change_shipping_default_val', 1),
(139, '2020_09_17_070031_add_description_field', 1),
(140, '2020_10_07_034726_create_holidays_table', 1),
(141, '2020_12_11_094137_add_mode_to_users', 1),
(142, '2020_12_11_094137_add_receipt_to_payment', 1),
(143, '2020_12_11_094137_add_tax_number_to_customers', 1),
(144, '2021_01_11_062508_create_chart_of_accounts_table', 1),
(145, '2021_01_11_070441_create_chart_of_account_types_table', 1),
(146, '2021_01_12_032834_create_journal_entries_table', 1),
(147, '2021_01_12_033815_create_journal_items_table', 1),
(148, '2021_01_20_072219_create_chart_of_account_sub_types_table', 1),
(149, '2021_01_20_113044_create_log_activities_table', 1),
(150, '2021_03_13_114832_create_job_categories_table', 1),
(151, '2021_03_13_123125_create_job_stages_table', 1),
(152, '2021_03_15_094707_create_jobs_table', 1),
(153, '2021_03_15_153745_create_job_applications_table', 1),
(154, '2021_03_16_115140_create_job_application_notes_table', 1),
(155, '2021_03_17_100224_create_projects_table', 1),
(156, '2021_03_17_163107_create_custom_questions_table', 1),
(157, '2021_03_18_060536_create_project_tasks_table', 1),
(158, '2021_03_18_070146_create_milestones_table', 1),
(159, '2021_03_18_091547_create_task_checklists_table', 1),
(160, '2021_03_18_092113_create_task_files_table', 1),
(161, '2021_03_18_092400_create_task_comments_table', 1),
(162, '2021_03_18_102517_create_activity_logs_table', 1),
(163, '2021_03_18_140630_create_interview_schedules_table', 1),
(164, '2021_03_19_053350_create_project_users_table', 1),
(165, '2021_03_22_100636_create_expenses_table', 1),
(166, '2021_03_22_122532_create_job_on_boards_table', 1),
(167, '2021_03_23_032633_create_timesheets_table', 1),
(168, '2021_06_15_071245_create_landing_page_sections_table', 1),
(169, '2021_08_03_093459_create_form_builders_table', 1),
(170, '2021_08_03_094508_create_form_fields_table', 1),
(171, '2021_08_03_094534_create_form_field_responses_table', 1),
(172, '2021_08_03_094548_create_form_responses_table', 1),
(173, '2021_08_04_072610_admin_payment_settings', 1),
(174, '2021_08_04_090539_company_payment_settings', 1),
(175, '2021_08_05_114738_create_supports_table', 1),
(176, '2021_08_05_115212_create_support_replies_table', 1),
(177, '2021_08_20_084119_create_competencies_table', 1),
(178, '2021_08_21_044211_add_hour_in_project', 1),
(179, '2021_08_21_044211_add_rating_in_competencies', 1),
(180, '2021_09_03_112043_create_track_photos_table', 1),
(181, '2021_09_10_160559_add_last_login_to_user_table', 1),
(182, '2021_09_10_165514_create_plan_requests_table', 1),
(183, '2021_10_13_102756_create_add_new_field_lead_table', 1),
(184, '2021_12_02_052828_create_budgets_table', 1),
(185, '2021_12_24_104639_create_zoom_meetings_table', 1),
(186, '2022_03_03_100148_change_price_val', 1),
(187, '2022_03_11_035602_create_stock_reports_table', 1),
(188, '2022_03_11_103119_add_type_to_allowance', 1);

-- --------------------------------------------------------

--
-- Table structure for table `milestones`
--

CREATE TABLE `milestones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `milestones`
--

INSERT INTO `milestones` (`id`, `project_id`, `title`, `status`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, '1st Milestone', 'complete', 'test purpose', '2022-09-15 09:27:42', '2022-09-15 09:29:16');

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(4, 'App\\Models\\User', 1),
(5, 'App\\Models\\User', 2),
(6, 'App\\Models\\User', 3),
(7, 'App\\Models\\User', 4);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_number` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_exp_month` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_exp_year` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan_id` int(11) NOT NULL,
  `price` double(8,2) NOT NULL,
  `price_currency` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `txn_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Manually',
  `receipt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `other_payments`
--

CREATE TABLE `other_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `overtimes`
--

CREATE TABLE `overtimes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_of_days` int(11) NOT NULL,
  `hours` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `amount` decimal(16,2) NOT NULL DEFAULT '0.00',
  `account_id` int(11) NOT NULL,
  `vender_id` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `recurring` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` int(11) NOT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_receipt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payslip_types`
--

CREATE TABLE `payslip_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pay_slips`
--

CREATE TABLE `pay_slips` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `net_payble` int(11) NOT NULL,
  `salary_month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `basic_salary` int(11) NOT NULL,
  `allowance` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `commission` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `loan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `saturation_deduction` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `other_payment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `overtime` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `performance_types`
--

CREATE TABLE `performance_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'show hrm dashboard', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(2, 'copy invoice', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(3, 'show project dashboard', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(4, 'show account dashboard', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(5, 'manage user', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(6, 'create user', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(7, 'edit user', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(8, 'delete user', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(9, 'create language', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(10, 'manage role', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(11, 'create role', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(12, 'edit role', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(13, 'delete role', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(14, 'manage permission', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(15, 'create permission', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(16, 'edit permission', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(17, 'delete permission', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(18, 'manage company settings', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(19, 'manage print settings', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(20, 'manage business settings', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(21, 'manage stripe settings', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(22, 'manage expense', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(23, 'create expense', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(24, 'edit expense', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(25, 'delete expense', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(26, 'manage invoice', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(27, 'create invoice', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(28, 'edit invoice', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(29, 'delete invoice', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(30, 'show invoice', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(31, 'create payment invoice', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(32, 'delete payment invoice', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(33, 'send invoice', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(34, 'delete invoice product', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(35, 'convert invoice', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(36, 'manage constant unit', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(37, 'create constant unit', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(38, 'edit constant unit', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(39, 'delete constant unit', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(40, 'manage constant tax', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(41, 'create constant tax', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(42, 'edit constant tax', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(43, 'delete constant tax', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(44, 'manage constant category', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(45, 'create constant category', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(46, 'edit constant category', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(47, 'delete constant category', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(48, 'manage product & service', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(49, 'create product & service', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(50, 'edit product & service', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(51, 'delete product & service', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(52, 'manage customer', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(53, 'create customer', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(54, 'edit customer', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(55, 'delete customer', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(56, 'show customer', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(57, 'manage vender', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(58, 'create vender', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(59, 'edit vender', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(60, 'delete vender', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(61, 'show vender', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(62, 'manage bank account', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(63, 'create bank account', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(64, 'edit bank account', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(65, 'delete bank account', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(66, 'manage bank transfer', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(67, 'create bank transfer', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(68, 'edit bank transfer', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(69, 'delete bank transfer', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(70, 'manage transaction', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(71, 'manage revenue', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(72, 'create revenue', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(73, 'edit revenue', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(74, 'delete revenue', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(75, 'manage bill', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(76, 'create bill', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(77, 'edit bill', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(78, 'delete bill', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(79, 'show bill', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(80, 'manage payment', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(81, 'create payment', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(82, 'edit payment', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(83, 'delete payment', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(84, 'delete bill product', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(85, 'send bill', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(86, 'create payment bill', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(87, 'delete payment bill', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(88, 'manage order', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(89, 'income report', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(90, 'expense report', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(91, 'income vs expense report', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(92, 'invoice report', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(93, 'bill report', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(94, 'stock report', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(95, 'tax report', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(96, 'loss & profit report', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(97, 'manage customer payment', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(98, 'manage customer transaction', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(99, 'manage customer invoice', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(100, 'vender manage bill', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(101, 'manage vender bill', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(102, 'manage vender payment', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(103, 'manage vender transaction', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(104, 'manage credit note', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(105, 'create credit note', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(106, 'edit credit note', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(107, 'delete credit note', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(108, 'manage debit note', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(109, 'create debit note', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(110, 'edit debit note', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(111, 'delete debit note', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(112, 'duplicate invoice', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(113, 'duplicate bill', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(114, 'manage proposal', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(115, 'create proposal', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(116, 'edit proposal', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(117, 'delete proposal', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(118, 'duplicate proposal', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(119, 'show proposal', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(120, 'send proposal', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(121, 'delete proposal product', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(122, 'manage customer proposal', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(123, 'manage goal', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(124, 'create goal', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(125, 'edit goal', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(126, 'delete goal', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(127, 'manage assets', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(128, 'create assets', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(129, 'edit assets', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(130, 'delete assets', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(131, 'statement report', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(132, 'manage constant custom field', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(133, 'create constant custom field', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(134, 'edit constant custom field', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(135, 'delete constant custom field', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(136, 'manage chart of account', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(137, 'create chart of account', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(138, 'edit chart of account', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(139, 'delete chart of account', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(140, 'manage journal entry', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(141, 'create journal entry', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(142, 'edit journal entry', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(143, 'delete journal entry', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(144, 'show journal entry', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(145, 'balance sheet report', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(146, 'ledger report', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(147, 'trial balance report', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(148, 'manage client', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(149, 'create client', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(150, 'edit client', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(151, 'delete client', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(152, 'manage lead', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(153, 'create lead', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(154, 'view lead', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(155, 'edit lead', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(156, 'delete lead', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(157, 'move lead', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(158, 'create lead call', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(159, 'edit lead call', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(160, 'delete lead call', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(161, 'create lead email', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(162, 'manage pipeline', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(163, 'create pipeline', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(164, 'edit pipeline', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(165, 'delete pipeline', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(166, 'manage lead stage', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(167, 'create lead stage', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(168, 'edit lead stage', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(169, 'delete lead stage', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(170, 'convert lead to deal', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(171, 'manage source', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(172, 'create source', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(173, 'edit source', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(174, 'delete source', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(175, 'manage label', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(176, 'create label', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(177, 'edit label', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(178, 'delete label', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(179, 'manage deal', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(180, 'create deal', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(181, 'view task', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(182, 'create task', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(183, 'edit task', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(184, 'delete task', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(185, 'edit deal', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(186, 'view deal', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(187, 'delete deal', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(188, 'move deal', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(189, 'create deal call', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(190, 'edit deal call', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(191, 'delete deal call', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(192, 'create deal email', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(193, 'manage stage', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(194, 'create stage', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(195, 'edit stage', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(196, 'delete stage', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(197, 'manage employee', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(198, 'create employee', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(199, 'view employee', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(200, 'edit employee', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(201, 'delete employee', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(202, 'manage employee profile', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(203, 'show employee profile', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(204, 'manage department', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(205, 'create department', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(206, 'view department', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(207, 'edit department', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(208, 'delete department', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(209, 'manage designation', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(210, 'create designation', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(211, 'view designation', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(212, 'edit designation', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(213, 'delete designation', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(214, 'manage branch', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(215, 'create branch', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(216, 'edit branch', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(217, 'delete branch', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(218, 'manage document type', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(219, 'create document type', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(220, 'edit document type', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(221, 'delete document type', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(222, 'manage document', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(223, 'create document', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(224, 'edit document', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(225, 'delete document', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(226, 'manage payslip type', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(227, 'create payslip type', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(228, 'edit payslip type', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(229, 'delete payslip type', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(230, 'create allowance', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(231, 'edit allowance', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(232, 'delete allowance', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(233, 'create commission', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(234, 'edit commission', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(235, 'delete commission', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(236, 'manage allowance option', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(237, 'create allowance option', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(238, 'edit allowance option', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(239, 'delete allowance option', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(240, 'manage loan option', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(241, 'create loan option', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(242, 'edit loan option', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(243, 'delete loan option', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(244, 'manage deduction option', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(245, 'create deduction option', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(246, 'edit deduction option', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(247, 'delete deduction option', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(248, 'create loan', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(249, 'edit loan', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(250, 'delete loan', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(251, 'create saturation deduction', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(252, 'edit saturation deduction', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(253, 'delete saturation deduction', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(254, 'create other payment', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(255, 'edit other payment', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(256, 'delete other payment', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(257, 'create overtime', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(258, 'edit overtime', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(259, 'delete overtime', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(260, 'manage set salary', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(261, 'edit set salary', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(262, 'manage pay slip', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(263, 'create set salary', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(264, 'create pay slip', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(265, 'manage company policy', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(266, 'create company policy', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(267, 'edit company policy', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(268, 'manage appraisal', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(269, 'create appraisal', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(270, 'edit appraisal', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(271, 'show appraisal', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(272, 'delete appraisal', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(273, 'manage goal tracking', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(274, 'create goal tracking', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(275, 'edit goal tracking', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(276, 'delete goal tracking', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(277, 'manage goal type', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(278, 'create goal type', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(279, 'edit goal type', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(280, 'delete goal type', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(281, 'manage indicator', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(282, 'create indicator', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(283, 'edit indicator', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(284, 'show indicator', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(285, 'delete indicator', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(286, 'manage training', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(287, 'create training', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(288, 'edit training', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(289, 'delete training', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(290, 'show training', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(291, 'manage trainer', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(292, 'create trainer', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(293, 'edit trainer', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(294, 'delete trainer', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(295, 'manage training type', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(296, 'create training type', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(297, 'edit training type', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(298, 'delete training type', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(299, 'manage award', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(300, 'create award', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(301, 'edit award', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(302, 'delete award', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(303, 'manage award type', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(304, 'create award type', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(305, 'edit award type', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(306, 'delete award type', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(307, 'manage resignation', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(308, 'create resignation', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(309, 'edit resignation', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(310, 'delete resignation', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(311, 'manage travel', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(312, 'create travel', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(313, 'edit travel', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(314, 'delete travel', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(315, 'manage promotion', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(316, 'create promotion', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(317, 'edit promotion', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(318, 'delete promotion', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(319, 'manage complaint', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(320, 'create complaint', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(321, 'edit complaint', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(322, 'delete complaint', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(323, 'manage warning', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(324, 'create warning', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(325, 'edit warning', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(326, 'delete warning', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(327, 'manage termination', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(328, 'create termination', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(329, 'edit termination', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(330, 'delete termination', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(331, 'manage termination type', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(332, 'create termination type', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(333, 'edit termination type', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(334, 'delete termination type', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(335, 'manage job application', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(336, 'create job application', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(337, 'show job application', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(338, 'delete job application', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(339, 'move job application', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(340, 'add job application skill', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(341, 'add job application note', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(342, 'delete job application note', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(343, 'manage job onBoard', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(344, 'manage job category', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(345, 'create job category', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(346, 'edit job category', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(347, 'delete job category', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(348, 'manage job', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(349, 'create job', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(350, 'edit job', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(351, 'show job', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(352, 'delete job', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(353, 'manage job stage', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(354, 'create job stage', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(355, 'edit job stage', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(356, 'delete job stage', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(357, 'Manage Competencies', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(358, 'Create Competencies', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(359, 'Edit Competencies', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(360, 'Delete Competencies', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(361, 'manage custom question', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(362, 'create custom question', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(363, 'edit custom question', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(364, 'delete custom question', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(365, 'create interview schedule', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(366, 'edit interview schedule', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(367, 'delete interview schedule', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(368, 'show interview schedule', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(369, 'create estimation', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(370, 'view estimation', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(371, 'edit estimation', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(372, 'delete estimation', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(373, 'edit holiday', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(374, 'create holiday', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(375, 'delete holiday', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(376, 'manage holiday', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(377, 'show career', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(378, 'manage meeting', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(379, 'create meeting', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(380, 'edit meeting', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(381, 'delete meeting', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(382, 'manage event', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(383, 'create event', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(384, 'edit event', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(385, 'delete event', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(386, 'manage transfer', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(387, 'create transfer', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(388, 'edit transfer', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(389, 'delete transfer', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(390, 'manage announcement', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(391, 'create announcement', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(392, 'edit announcement', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(393, 'delete announcement', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(394, 'manage leave', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(395, 'create leave', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(396, 'edit leave', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(397, 'delete leave', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(398, 'manage leave type', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(399, 'create leave type', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(400, 'edit leave type', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(401, 'delete leave type', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(402, 'manage attendance', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(403, 'create attendance', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(404, 'edit attendance', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(405, 'delete attendance', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(406, 'manage report', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(407, 'manage project', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(408, 'create project', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(409, 'view project', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(410, 'edit project', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(411, 'delete project', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(412, 'create milestone', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(413, 'edit milestone', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(414, 'delete milestone', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(415, 'view milestone', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(416, 'view grant chart', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(417, 'manage project stage', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(418, 'create project stage', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(419, 'edit project stage', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(420, 'delete project stage', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(421, 'view timesheet', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(422, 'view expense', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(423, 'manage project task', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(424, 'create project task', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(425, 'edit project task', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(426, 'view project task', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(427, 'delete project task', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(428, 'view activity', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(429, 'view CRM activity', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(430, 'manage project task stage', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(431, 'edit project task stage', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(432, 'create project task stage', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(433, 'delete project task stage', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(434, 'manage timesheet', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(435, 'create timesheet', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(436, 'edit timesheet', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(437, 'delete timesheet', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(438, 'manage bug report', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(439, 'create bug report', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(440, 'edit bug report', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(441, 'delete bug report', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(442, 'move bug report', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(443, 'manage bug status', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(444, 'create bug status', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(445, 'edit bug status', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(446, 'delete bug status', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(447, 'manage client dashboard', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(448, 'manage super admin dashboard', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(449, 'manage system settings', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(450, 'manage plan', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(451, 'create plan', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(452, 'edit plan', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(453, 'manage coupon', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(454, 'create coupon', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(455, 'edit coupon', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(456, 'delete coupon', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(457, 'manage company plan', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(458, 'buy plan', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(459, 'manage form builder', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(460, 'create form builder', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(461, 'edit form builder', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(462, 'delete form builder', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(463, 'manage performance type', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(464, 'create performance type', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(465, 'edit performance type', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(466, 'delete performance type', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(467, 'manage form field', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(468, 'create form field', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(469, 'edit form field', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(470, 'delete form field', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(471, 'view form response', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(472, 'create budget plan', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(473, 'edit budget plan', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(474, 'manage budget plan', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(475, 'delete budget plan', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(476, 'view budget plan', 'web', '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(477, 'show hrm dashboard', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(478, 'copy invoice', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(479, 'show project dashboard', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(480, 'show account dashboard', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(481, 'manage user', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(482, 'create user', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(483, 'edit user', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(484, 'delete user', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(485, 'create language', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(486, 'manage role', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(487, 'create role', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(488, 'edit role', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(489, 'delete role', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(490, 'manage permission', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(491, 'create permission', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(492, 'edit permission', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(493, 'delete permission', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(494, 'manage company settings', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(495, 'manage print settings', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(496, 'manage business settings', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(497, 'manage stripe settings', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(498, 'manage expense', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(499, 'create expense', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(500, 'edit expense', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(501, 'delete expense', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(502, 'manage invoice', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(503, 'create invoice', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(504, 'edit invoice', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(505, 'delete invoice', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(506, 'show invoice', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(507, 'create payment invoice', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(508, 'delete payment invoice', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(509, 'send invoice', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(510, 'delete invoice product', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(511, 'convert invoice', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(512, 'manage constant unit', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(513, 'create constant unit', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(514, 'edit constant unit', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(515, 'delete constant unit', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(516, 'manage constant tax', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(517, 'create constant tax', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(518, 'edit constant tax', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(519, 'delete constant tax', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(520, 'manage constant category', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(521, 'create constant category', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(522, 'edit constant category', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(523, 'delete constant category', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(524, 'manage product & service', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(525, 'create product & service', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(526, 'edit product & service', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(527, 'delete product & service', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(528, 'manage customer', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(529, 'create customer', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(530, 'edit customer', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(531, 'delete customer', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(532, 'show customer', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(533, 'manage vender', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(534, 'create vender', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(535, 'edit vender', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(536, 'delete vender', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(537, 'show vender', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(538, 'manage bank account', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(539, 'create bank account', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(540, 'edit bank account', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(541, 'delete bank account', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(542, 'manage bank transfer', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(543, 'create bank transfer', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(544, 'edit bank transfer', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(545, 'delete bank transfer', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(546, 'manage transaction', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(547, 'manage revenue', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(548, 'create revenue', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(549, 'edit revenue', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(550, 'delete revenue', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(551, 'manage bill', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(552, 'create bill', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(553, 'edit bill', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(554, 'delete bill', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(555, 'show bill', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(556, 'manage payment', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(557, 'create payment', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(558, 'edit payment', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(559, 'delete payment', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(560, 'delete bill product', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(561, 'send bill', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(562, 'create payment bill', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(563, 'delete payment bill', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(564, 'manage order', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(565, 'income report', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(566, 'expense report', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(567, 'income vs expense report', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(568, 'invoice report', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(569, 'bill report', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(570, 'stock report', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(571, 'tax report', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(572, 'loss & profit report', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(573, 'manage customer payment', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(574, 'manage customer transaction', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(575, 'manage customer invoice', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(576, 'vender manage bill', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(577, 'manage vender bill', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(578, 'manage vender payment', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(579, 'manage vender transaction', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(580, 'manage credit note', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(581, 'create credit note', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(582, 'edit credit note', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(583, 'delete credit note', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(584, 'manage debit note', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(585, 'create debit note', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(586, 'edit debit note', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(587, 'delete debit note', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(588, 'duplicate invoice', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(589, 'duplicate bill', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(590, 'manage proposal', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(591, 'create proposal', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(592, 'edit proposal', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(593, 'delete proposal', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(594, 'duplicate proposal', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(595, 'show proposal', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(596, 'send proposal', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(597, 'delete proposal product', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(598, 'manage customer proposal', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(599, 'manage goal', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(600, 'create goal', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(601, 'edit goal', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(602, 'delete goal', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(603, 'manage assets', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(604, 'create assets', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(605, 'edit assets', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(606, 'delete assets', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(607, 'statement report', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(608, 'manage constant custom field', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(609, 'create constant custom field', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(610, 'edit constant custom field', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(611, 'delete constant custom field', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(612, 'manage chart of account', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(613, 'create chart of account', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(614, 'edit chart of account', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(615, 'delete chart of account', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(616, 'manage journal entry', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(617, 'create journal entry', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(618, 'edit journal entry', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(619, 'delete journal entry', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(620, 'show journal entry', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(621, 'balance sheet report', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(622, 'ledger report', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(623, 'trial balance report', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(624, 'manage client', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(625, 'create client', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(626, 'edit client', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(627, 'delete client', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(628, 'manage lead', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(629, 'create lead', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(630, 'view lead', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(631, 'edit lead', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(632, 'delete lead', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(633, 'move lead', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(634, 'create lead call', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(635, 'edit lead call', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(636, 'delete lead call', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(637, 'create lead email', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(638, 'manage pipeline', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(639, 'create pipeline', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(640, 'edit pipeline', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(641, 'delete pipeline', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(642, 'manage lead stage', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(643, 'create lead stage', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(644, 'edit lead stage', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(645, 'delete lead stage', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(646, 'convert lead to deal', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(647, 'manage source', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(648, 'create source', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(649, 'edit source', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(650, 'delete source', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(651, 'manage label', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(652, 'create label', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(653, 'edit label', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(654, 'delete label', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(655, 'manage deal', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(656, 'create deal', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(657, 'view task', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(658, 'create task', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(659, 'edit task', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(660, 'delete task', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(661, 'edit deal', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(662, 'view deal', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(663, 'delete deal', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(664, 'move deal', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(665, 'create deal call', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(666, 'edit deal call', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(667, 'delete deal call', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(668, 'create deal email', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(669, 'manage stage', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(670, 'create stage', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(671, 'edit stage', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(672, 'delete stage', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(673, 'manage employee', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(674, 'create employee', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(675, 'view employee', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(676, 'edit employee', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(677, 'delete employee', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(678, 'manage employee profile', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(679, 'show employee profile', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(680, 'manage department', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(681, 'create department', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(682, 'view department', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(683, 'edit department', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(684, 'delete department', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(685, 'manage designation', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(686, 'create designation', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(687, 'view designation', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(688, 'edit designation', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(689, 'delete designation', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(690, 'manage branch', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(691, 'create branch', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(692, 'edit branch', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(693, 'delete branch', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(694, 'manage document type', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(695, 'create document type', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(696, 'edit document type', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(697, 'delete document type', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(698, 'manage document', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(699, 'create document', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(700, 'edit document', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(701, 'delete document', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(702, 'manage payslip type', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(703, 'create payslip type', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(704, 'edit payslip type', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(705, 'delete payslip type', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(706, 'create allowance', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(707, 'edit allowance', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(708, 'delete allowance', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(709, 'create commission', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(710, 'edit commission', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(711, 'delete commission', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(712, 'manage allowance option', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(713, 'create allowance option', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(714, 'edit allowance option', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(715, 'delete allowance option', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(716, 'manage loan option', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(717, 'create loan option', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(718, 'edit loan option', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(719, 'delete loan option', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(720, 'manage deduction option', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(721, 'create deduction option', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(722, 'edit deduction option', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(723, 'delete deduction option', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(724, 'create loan', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(725, 'edit loan', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(726, 'delete loan', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(727, 'create saturation deduction', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(728, 'edit saturation deduction', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(729, 'delete saturation deduction', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(730, 'create other payment', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(731, 'edit other payment', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(732, 'delete other payment', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(733, 'create overtime', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(734, 'edit overtime', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(735, 'delete overtime', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(736, 'manage set salary', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(737, 'edit set salary', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(738, 'manage pay slip', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(739, 'create set salary', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(740, 'create pay slip', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(741, 'manage company policy', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(742, 'create company policy', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(743, 'edit company policy', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(744, 'manage appraisal', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(745, 'create appraisal', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(746, 'edit appraisal', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(747, 'show appraisal', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(748, 'delete appraisal', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(749, 'manage goal tracking', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(750, 'create goal tracking', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(751, 'edit goal tracking', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(752, 'delete goal tracking', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(753, 'manage goal type', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(754, 'create goal type', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(755, 'edit goal type', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(756, 'delete goal type', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(757, 'manage indicator', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(758, 'create indicator', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(759, 'edit indicator', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(760, 'show indicator', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(761, 'delete indicator', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(762, 'manage training', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(763, 'create training', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(764, 'edit training', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(765, 'delete training', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(766, 'show training', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(767, 'manage trainer', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(768, 'create trainer', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(769, 'edit trainer', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(770, 'delete trainer', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(771, 'manage training type', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(772, 'create training type', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(773, 'edit training type', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(774, 'delete training type', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(775, 'manage award', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(776, 'create award', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(777, 'edit award', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(778, 'delete award', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(779, 'manage award type', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(780, 'create award type', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(781, 'edit award type', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(782, 'delete award type', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(783, 'manage resignation', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(784, 'create resignation', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(785, 'edit resignation', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(786, 'delete resignation', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(787, 'manage travel', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(788, 'create travel', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(789, 'edit travel', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(790, 'delete travel', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(791, 'manage promotion', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(792, 'create promotion', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(793, 'edit promotion', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(794, 'delete promotion', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(795, 'manage complaint', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(796, 'create complaint', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(797, 'edit complaint', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(798, 'delete complaint', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(799, 'manage warning', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(800, 'create warning', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(801, 'edit warning', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(802, 'delete warning', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(803, 'manage termination', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(804, 'create termination', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(805, 'edit termination', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(806, 'delete termination', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(807, 'manage termination type', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(808, 'create termination type', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(809, 'edit termination type', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(810, 'delete termination type', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(811, 'manage job application', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(812, 'create job application', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(813, 'show job application', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(814, 'delete job application', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(815, 'move job application', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(816, 'add job application skill', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(817, 'add job application note', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(818, 'delete job application note', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(819, 'manage job onBoard', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(820, 'manage job category', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(821, 'create job category', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(822, 'edit job category', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(823, 'delete job category', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(824, 'manage job', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(825, 'create job', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(826, 'edit job', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(827, 'show job', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(828, 'delete job', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(829, 'manage job stage', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(830, 'create job stage', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(831, 'edit job stage', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(832, 'delete job stage', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(833, 'Manage Competencies', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(834, 'Create Competencies', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(835, 'Edit Competencies', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(836, 'Delete Competencies', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(837, 'manage custom question', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(838, 'create custom question', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(839, 'edit custom question', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(840, 'delete custom question', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(841, 'create interview schedule', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(842, 'edit interview schedule', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(843, 'delete interview schedule', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(844, 'show interview schedule', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(845, 'create estimation', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(846, 'view estimation', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(847, 'edit estimation', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(848, 'delete estimation', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(849, 'edit holiday', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(850, 'create holiday', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(851, 'delete holiday', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(852, 'manage holiday', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(853, 'show career', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(854, 'manage meeting', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(855, 'create meeting', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(856, 'edit meeting', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(857, 'delete meeting', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(858, 'manage event', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(859, 'create event', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(860, 'edit event', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(861, 'delete event', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(862, 'manage transfer', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(863, 'create transfer', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(864, 'edit transfer', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(865, 'delete transfer', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(866, 'manage announcement', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(867, 'create announcement', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(868, 'edit announcement', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(869, 'delete announcement', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(870, 'manage leave', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(871, 'create leave', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(872, 'edit leave', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(873, 'delete leave', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(874, 'manage leave type', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(875, 'create leave type', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(876, 'edit leave type', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(877, 'delete leave type', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(878, 'manage attendance', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(879, 'create attendance', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(880, 'edit attendance', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(881, 'delete attendance', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(882, 'manage report', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(883, 'manage project', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(884, 'create project', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(885, 'view project', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(886, 'edit project', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(887, 'delete project', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(888, 'create milestone', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(889, 'edit milestone', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(890, 'delete milestone', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(891, 'view milestone', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(892, 'view grant chart', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(893, 'manage project stage', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(894, 'create project stage', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(895, 'edit project stage', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(896, 'delete project stage', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(897, 'view timesheet', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(898, 'view expense', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(899, 'manage project task', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(900, 'create project task', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(901, 'edit project task', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(902, 'view project task', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(903, 'delete project task', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(904, 'view activity', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(905, 'view CRM activity', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(906, 'manage project task stage', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(907, 'edit project task stage', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(908, 'create project task stage', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(909, 'delete project task stage', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(910, 'manage timesheet', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(911, 'create timesheet', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(912, 'edit timesheet', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(913, 'delete timesheet', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(914, 'manage bug report', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(915, 'create bug report', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(916, 'edit bug report', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(917, 'delete bug report', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(918, 'move bug report', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(919, 'manage bug status', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(920, 'create bug status', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(921, 'edit bug status', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(922, 'delete bug status', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(923, 'manage client dashboard', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(924, 'manage super admin dashboard', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(925, 'manage system settings', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(926, 'manage plan', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(927, 'create plan', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(928, 'edit plan', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(929, 'manage coupon', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(930, 'create coupon', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(931, 'edit coupon', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(932, 'delete coupon', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(933, 'manage company plan', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(934, 'buy plan', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(935, 'manage form builder', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(936, 'create form builder', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(937, 'edit form builder', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(938, 'delete form builder', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(939, 'manage performance type', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(940, 'create performance type', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(941, 'edit performance type', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(942, 'delete performance type', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(943, 'manage form field', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(944, 'create form field', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(945, 'edit form field', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(946, 'delete form field', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(947, 'view form response', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(948, 'create budget plan', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(949, 'edit budget plan', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(950, 'manage budget plan', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(951, 'delete budget plan', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48'),
(952, 'view budget plan', 'web', '2022-09-13 21:51:48', '2022-09-13 21:51:48');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pipelines`
--

CREATE TABLE `pipelines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pipelines`
--

INSERT INTO `pipelines` (`id`, `name`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Sales', 1, '2022-07-26 20:44:14', '2022-07-26 20:44:14'),
(2, 'Test', 1, '2022-09-14 05:11:45', '2022-09-14 05:11:45');

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL DEFAULT '0.00',
  `duration` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_users` int(11) NOT NULL DEFAULT '0',
  `max_customers` int(11) NOT NULL DEFAULT '0',
  `max_venders` int(11) NOT NULL DEFAULT '0',
  `max_clients` int(11) NOT NULL DEFAULT '0',
  `crm` int(11) NOT NULL DEFAULT '0',
  `hrm` int(11) NOT NULL DEFAULT '0',
  `account` int(11) NOT NULL DEFAULT '0',
  `project` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plan_requests`
--

CREATE TABLE `plan_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `duration` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'monthly',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_services`
--

CREATE TABLE `product_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale_price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `purchase_price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `tax_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  `unit_id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_service_categories`
--

CREATE TABLE `product_service_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#fc544b',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_service_units`
--

CREATE TABLE `product_service_units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `project_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `budget` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estimated_hrs` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `project_name`, `start_date`, `end_date`, `project_image`, `budget`, `client_id`, `description`, `status`, `estimated_hrs`, `tags`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'First Project', '2022-09-14', '2022-09-23', 'projects/1663209098.png', 50000, 3, 'test', 'on_hold', '50', 'test', 1, '2022-09-15 09:25:19', '2022-09-15 09:31:38');

-- --------------------------------------------------------

--
-- Table structure for table `projectstages`
--

CREATE TABLE `projectstages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_email_templates`
--

CREATE TABLE `project_email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `template_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_invoices`
--

CREATE TABLE `project_invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `tax_id` bigint(20) UNSIGNED NOT NULL,
  `due_date` date NOT NULL,
  `created_by` int(11) NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_tasks`
--

CREATE TABLE `project_tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `estimated_hrs` int(11) NOT NULL DEFAULT '0',
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `priority` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'medium',
  `priority_color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assign_to` text COLLATE utf8mb4_unicode_ci,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `milestone_id` int(11) NOT NULL DEFAULT '0',
  `stage_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `is_favourite` int(11) NOT NULL DEFAULT '0',
  `is_complete` int(11) NOT NULL DEFAULT '0',
  `marked_at` date DEFAULT NULL,
  `progress` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_tasks`
--

INSERT INTO `project_tasks` (`id`, `name`, `description`, `estimated_hrs`, `start_date`, `end_date`, `priority`, `priority_color`, `assign_to`, `project_id`, `milestone_id`, `stage_id`, `order`, `created_by`, `is_favourite`, `is_complete`, `marked_at`, `progress`, `created_at`, `updated_at`) VALUES
(1, 'Task 1', 'test1', 5, '2022-09-14', '2022-09-16', 'high', NULL, '4', 1, 0, 4, 0, 1, 0, 1, '2022-09-15', '0', '2022-09-15 09:25:49', '2022-09-15 09:28:31');

-- --------------------------------------------------------

--
-- Table structure for table `project_users`
--

CREATE TABLE `project_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `invited_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_users`
--

INSERT INTO `project_users` (`id`, `project_id`, `user_id`, `invited_by`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, '2022-09-15 09:25:19', '2022-09-15 09:25:19'),
(2, 1, 4, 0, '2022-09-15 09:25:19', '2022-09-15 09:25:19');

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `designation_id` int(11) NOT NULL,
  `promotion_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `promotion_date` date NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `proposals`
--

CREATE TABLE `proposals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `proposal_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `issue_date` date NOT NULL,
  `send_date` date DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `discount_apply` int(11) NOT NULL DEFAULT '0',
  `converted_invoice_id` int(11) NOT NULL DEFAULT '0',
  `is_convert` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `proposal_products`
--

CREATE TABLE `proposal_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `proposal_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `tax` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '0.00',
  `discount` double(8,2) NOT NULL DEFAULT '0.00',
  `price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resignations`
--

CREATE TABLE `resignations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `notice_date` date NOT NULL,
  `resignation_date` date NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `revenues`
--

CREATE TABLE `revenues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `amount` decimal(16,2) NOT NULL DEFAULT '0.00',
  `account_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `payment_method` int(11) NOT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_receipt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'super admin', 'web', 0, '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(2, 'customer', 'web', 0, '2022-07-26 20:44:11', '2022-07-26 20:44:11'),
(3, 'vender', 'web', 0, '2022-07-26 20:44:12', '2022-07-26 20:44:12'),
(4, 'company', 'web', 0, '2022-07-26 20:44:12', '2022-07-26 20:44:12'),
(5, 'accountant', 'web', 1, '2022-07-26 20:44:13', '2022-07-26 20:44:13'),
(6, 'client', 'web', 1, '2022-07-26 20:44:14', '2022-07-26 20:44:14'),
(7, 'Project Manager', 'web', 1, '2022-09-14 03:06:04', '2022-09-14 03:06:04');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(30, 2),
(56, 2),
(97, 2),
(98, 2),
(99, 2),
(119, 2),
(122, 2),
(61, 3),
(79, 3),
(100, 3),
(101, 3),
(102, 3),
(103, 3),
(1, 4),
(2, 4),
(3, 4),
(4, 4),
(5, 4),
(6, 4),
(7, 4),
(8, 4),
(10, 4),
(11, 4),
(12, 4),
(13, 4),
(14, 4),
(15, 4),
(16, 4),
(17, 4),
(18, 4),
(19, 4),
(20, 4),
(22, 4),
(23, 4),
(24, 4),
(25, 4),
(26, 4),
(27, 4),
(28, 4),
(29, 4),
(30, 4),
(31, 4),
(32, 4),
(33, 4),
(34, 4),
(35, 4),
(36, 4),
(37, 4),
(38, 4),
(39, 4),
(40, 4),
(41, 4),
(42, 4),
(43, 4),
(44, 4),
(45, 4),
(46, 4),
(47, 4),
(48, 4),
(49, 4),
(50, 4),
(51, 4),
(52, 4),
(53, 4),
(54, 4),
(55, 4),
(56, 4),
(57, 4),
(58, 4),
(59, 4),
(60, 4),
(61, 4),
(62, 4),
(63, 4),
(64, 4),
(65, 4),
(66, 4),
(67, 4),
(68, 4),
(69, 4),
(70, 4),
(71, 4),
(72, 4),
(73, 4),
(74, 4),
(75, 4),
(76, 4),
(77, 4),
(78, 4),
(79, 4),
(80, 4),
(81, 4),
(82, 4),
(83, 4),
(84, 4),
(85, 4),
(86, 4),
(87, 4),
(88, 4),
(89, 4),
(90, 4),
(91, 4),
(92, 4),
(93, 4),
(94, 4),
(95, 4),
(96, 4),
(104, 4),
(105, 4),
(106, 4),
(107, 4),
(108, 4),
(109, 4),
(110, 4),
(111, 4),
(112, 4),
(113, 4),
(114, 4),
(115, 4),
(116, 4),
(117, 4),
(118, 4),
(119, 4),
(120, 4),
(121, 4),
(123, 4),
(124, 4),
(125, 4),
(126, 4),
(127, 4),
(128, 4),
(129, 4),
(130, 4),
(131, 4),
(132, 4),
(133, 4),
(134, 4),
(135, 4),
(136, 4),
(137, 4),
(138, 4),
(139, 4),
(140, 4),
(141, 4),
(142, 4),
(143, 4),
(144, 4),
(145, 4),
(146, 4),
(147, 4),
(148, 4),
(149, 4),
(150, 4),
(151, 4),
(152, 4),
(153, 4),
(154, 4),
(155, 4),
(156, 4),
(157, 4),
(158, 4),
(159, 4),
(160, 4),
(161, 4),
(162, 4),
(163, 4),
(164, 4),
(165, 4),
(166, 4),
(167, 4),
(168, 4),
(169, 4),
(170, 4),
(171, 4),
(172, 4),
(173, 4),
(174, 4),
(175, 4),
(176, 4),
(177, 4),
(178, 4),
(179, 4),
(180, 4),
(181, 4),
(182, 4),
(183, 4),
(184, 4),
(185, 4),
(186, 4),
(187, 4),
(188, 4),
(189, 4),
(190, 4),
(191, 4),
(192, 4),
(193, 4),
(194, 4),
(195, 4),
(196, 4),
(197, 4),
(198, 4),
(199, 4),
(200, 4),
(201, 4),
(202, 4),
(203, 4),
(204, 4),
(205, 4),
(206, 4),
(207, 4),
(208, 4),
(209, 4),
(210, 4),
(211, 4),
(212, 4),
(213, 4),
(214, 4),
(215, 4),
(216, 4),
(217, 4),
(218, 4),
(219, 4),
(220, 4),
(221, 4),
(222, 4),
(223, 4),
(224, 4),
(225, 4),
(226, 4),
(227, 4),
(228, 4),
(229, 4),
(230, 4),
(231, 4),
(232, 4),
(233, 4),
(234, 4),
(235, 4),
(236, 4),
(237, 4),
(238, 4),
(239, 4),
(240, 4),
(241, 4),
(242, 4),
(243, 4),
(244, 4),
(245, 4),
(246, 4),
(247, 4),
(248, 4),
(249, 4),
(250, 4),
(251, 4),
(252, 4),
(253, 4),
(254, 4),
(255, 4),
(256, 4),
(257, 4),
(258, 4),
(259, 4),
(260, 4),
(261, 4),
(262, 4),
(263, 4),
(264, 4),
(265, 4),
(266, 4),
(267, 4),
(268, 4),
(269, 4),
(270, 4),
(271, 4),
(272, 4),
(273, 4),
(274, 4),
(275, 4),
(276, 4),
(277, 4),
(278, 4),
(279, 4),
(280, 4),
(281, 4),
(282, 4),
(283, 4),
(284, 4),
(285, 4),
(286, 4),
(287, 4),
(288, 4),
(289, 4),
(290, 4),
(291, 4),
(292, 4),
(293, 4),
(294, 4),
(295, 4),
(296, 4),
(297, 4),
(298, 4),
(299, 4),
(300, 4),
(301, 4),
(302, 4),
(303, 4),
(304, 4),
(305, 4),
(306, 4),
(307, 4),
(308, 4),
(309, 4),
(310, 4),
(311, 4),
(312, 4),
(313, 4),
(314, 4),
(315, 4),
(316, 4),
(317, 4),
(318, 4),
(319, 4),
(320, 4),
(321, 4),
(322, 4),
(323, 4),
(324, 4),
(325, 4),
(326, 4),
(327, 4),
(328, 4),
(329, 4),
(330, 4),
(331, 4),
(332, 4),
(333, 4),
(334, 4),
(335, 4),
(336, 4),
(337, 4),
(338, 4),
(339, 4),
(340, 4),
(341, 4),
(342, 4),
(343, 4),
(344, 4),
(345, 4),
(346, 4),
(347, 4),
(348, 4),
(349, 4),
(350, 4),
(351, 4),
(352, 4),
(353, 4),
(354, 4),
(355, 4),
(356, 4),
(357, 4),
(358, 4),
(359, 4),
(360, 4),
(361, 4),
(362, 4),
(363, 4),
(364, 4),
(365, 4),
(366, 4),
(367, 4),
(368, 4),
(369, 4),
(370, 4),
(371, 4),
(372, 4),
(373, 4),
(374, 4),
(375, 4),
(376, 4),
(377, 4),
(378, 4),
(379, 4),
(380, 4),
(381, 4),
(382, 4),
(383, 4),
(384, 4),
(385, 4),
(386, 4),
(387, 4),
(388, 4),
(389, 4),
(390, 4),
(391, 4),
(392, 4),
(393, 4),
(394, 4),
(395, 4),
(396, 4),
(397, 4),
(398, 4),
(399, 4),
(400, 4),
(401, 4),
(402, 4),
(403, 4),
(404, 4),
(405, 4),
(406, 4),
(407, 4),
(408, 4),
(409, 4),
(410, 4),
(411, 4),
(412, 4),
(413, 4),
(414, 4),
(415, 4),
(416, 4),
(417, 4),
(418, 4),
(419, 4),
(420, 4),
(421, 4),
(422, 4),
(423, 4),
(424, 4),
(425, 4),
(426, 4),
(427, 4),
(428, 4),
(429, 4),
(430, 4),
(431, 4),
(432, 4),
(433, 4),
(434, 4),
(435, 4),
(436, 4),
(437, 4),
(438, 4),
(439, 4),
(440, 4),
(441, 4),
(442, 4),
(443, 4),
(444, 4),
(445, 4),
(446, 4),
(450, 4),
(457, 4),
(458, 4),
(459, 4),
(460, 4),
(461, 4),
(462, 4),
(463, 4),
(464, 4),
(465, 4),
(466, 4),
(467, 4),
(468, 4),
(469, 4),
(470, 4),
(471, 4),
(472, 4),
(473, 4),
(474, 4),
(475, 4),
(476, 4),
(4, 5),
(19, 5),
(22, 5),
(23, 5),
(24, 5),
(25, 5),
(26, 5),
(27, 5),
(28, 5),
(29, 5),
(30, 5),
(31, 5),
(32, 5),
(33, 5),
(34, 5),
(35, 5),
(36, 5),
(37, 5),
(38, 5),
(39, 5),
(40, 5),
(41, 5),
(42, 5),
(43, 5),
(44, 5),
(45, 5),
(46, 5),
(47, 5),
(48, 5),
(49, 5),
(50, 5),
(51, 5),
(52, 5),
(53, 5),
(54, 5),
(55, 5),
(56, 5),
(57, 5),
(58, 5),
(59, 5),
(60, 5),
(61, 5),
(62, 5),
(63, 5),
(64, 5),
(65, 5),
(66, 5),
(67, 5),
(68, 5),
(69, 5),
(70, 5),
(71, 5),
(72, 5),
(73, 5),
(74, 5),
(75, 5),
(76, 5),
(77, 5),
(78, 5),
(79, 5),
(80, 5),
(81, 5),
(82, 5),
(83, 5),
(84, 5),
(85, 5),
(86, 5),
(87, 5),
(89, 5),
(90, 5),
(91, 5),
(92, 5),
(93, 5),
(94, 5),
(95, 5),
(96, 5),
(104, 5),
(105, 5),
(106, 5),
(107, 5),
(108, 5),
(109, 5),
(110, 5),
(111, 5),
(114, 5),
(115, 5),
(116, 5),
(117, 5),
(118, 5),
(119, 5),
(120, 5),
(121, 5),
(123, 5),
(124, 5),
(125, 5),
(126, 5),
(127, 5),
(128, 5),
(129, 5),
(130, 5),
(131, 5),
(132, 5),
(133, 5),
(134, 5),
(135, 5),
(136, 5),
(137, 5),
(138, 5),
(139, 5),
(140, 5),
(141, 5),
(142, 5),
(143, 5),
(144, 5),
(145, 5),
(146, 5),
(147, 5),
(472, 5),
(473, 5),
(474, 5),
(475, 5),
(476, 5),
(162, 6),
(166, 6),
(171, 6),
(175, 6),
(179, 6),
(181, 6),
(186, 6),
(188, 6),
(193, 6),
(407, 6),
(409, 6),
(416, 6),
(421, 6),
(423, 6),
(424, 6),
(425, 6),
(426, 6),
(427, 6),
(428, 6),
(434, 6),
(438, 6),
(439, 6),
(440, 6),
(441, 6),
(442, 6),
(447, 6),
(3, 7),
(22, 7),
(23, 7),
(24, 7),
(25, 7),
(181, 7),
(182, 7),
(183, 7),
(184, 7),
(407, 7),
(408, 7),
(409, 7),
(410, 7),
(411, 7),
(412, 7),
(413, 7),
(414, 7),
(415, 7),
(416, 7),
(417, 7),
(418, 7),
(419, 7),
(420, 7),
(421, 7),
(422, 7),
(423, 7),
(424, 7),
(425, 7),
(426, 7),
(427, 7),
(428, 7),
(429, 7),
(430, 7),
(431, 7),
(432, 7),
(433, 7),
(434, 7),
(435, 7),
(436, 7),
(437, 7),
(438, 7),
(439, 7),
(440, 7),
(441, 7),
(442, 7),
(443, 7),
(444, 7),
(445, 7),
(446, 7);

-- --------------------------------------------------------

--
-- Table structure for table `saturation_deductions`
--

CREATE TABLE `saturation_deductions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `deduction_option` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'site_currency', 'BDT', 1, '2022-09-14 03:27:21', '2022-09-14 03:27:21'),
(2, 'site_currency_symbol', '৳', 1, '2022-09-14 03:27:21', '2022-09-14 03:27:21'),
(3, 'site_currency_symbol_position', 'post', 1, '2022-09-14 03:27:21', '2022-09-14 03:27:21'),
(4, 'site_date_format', 'M j, Y', 1, '2022-09-14 03:27:21', '2022-09-14 03:27:21'),
(5, 'site_time_format', 'g:i A', 1, '2022-09-14 03:27:21', '2022-09-14 03:27:21'),
(6, 'invoice_prefix', '#INVO', 1, '2022-09-14 03:27:21', '2022-09-14 03:27:21'),
(7, 'proposal_prefix', '#PROP', 1, '2022-09-14 03:27:21', '2022-09-14 03:27:21'),
(8, 'bill_prefix', '#BILL', 1, '2022-09-14 03:27:21', '2022-09-14 03:27:21'),
(9, 'customer_prefix', '#CUST', 1, '2022-09-14 03:27:21', '2022-09-14 03:27:21'),
(10, 'vender_prefix', '#VEND', 1, '2022-09-14 03:27:21', '2022-09-14 03:27:21'),
(11, 'footer_title', '', 1, '2022-09-14 03:27:21', '2022-09-14 03:27:21'),
(12, 'decimal_number', '2', 1, '2022-09-14 03:27:21', '2022-09-14 03:27:21'),
(13, 'journal_prefix', '#JUR', 1, '2022-09-14 03:27:21', '2022-09-14 03:27:21'),
(14, 'shipping_display', 'on', 1, '2022-09-14 03:27:21', '2022-09-14 03:27:21'),
(15, 'footer_notes', '', 1, '2022-09-14 03:27:21', '2022-09-14 03:27:21');

-- --------------------------------------------------------

--
-- Table structure for table `set_salaries`
--

CREATE TABLE `set_salaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sources`
--

CREATE TABLE `sources` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sources`
--

INSERT INTO `sources` (`id`, `name`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Websites', 1, '2022-07-26 20:44:15', '2022-07-26 20:44:15'),
(2, 'Facebook', 1, '2022-07-26 20:44:15', '2022-07-26 20:44:15'),
(3, 'Naukari.com', 1, '2022-07-26 20:44:15', '2022-07-26 20:44:15'),
(4, 'Phone', 1, '2022-07-26 20:44:15', '2022-07-26 20:44:15'),
(5, 'LinkedIn', 1, '2022-07-26 20:44:15', '2022-07-26 20:44:15');

-- --------------------------------------------------------

--
-- Table structure for table `stages`
--

CREATE TABLE `stages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pipeline_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stages`
--

INSERT INTO `stages` (`id`, `name`, `pipeline_id`, `created_by`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Draft', 1, 1, 0, '2022-07-26 20:44:14', '2022-07-26 20:44:14'),
(2, 'Sent', 1, 1, 0, '2022-07-26 20:44:14', '2022-07-26 20:44:14'),
(3, 'Open', 1, 1, 0, '2022-07-26 20:44:15', '2022-07-26 20:44:15'),
(4, 'Revised', 1, 1, 0, '2022-07-26 20:44:15', '2022-07-26 20:44:15'),
(5, 'Declined', 1, 1, 0, '2022-07-26 20:44:15', '2022-07-26 20:44:15'),
(6, 'New Stage', 1, 1, 0, '2022-09-15 09:54:15', '2022-09-15 09:54:15');

-- --------------------------------------------------------

--
-- Table structure for table `stock_reports`
--

CREATE TABLE `stock_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_id` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supports`
--

CREATE TABLE `supports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticket_created` int(11) NOT NULL DEFAULT '0',
  `user` int(11) NOT NULL DEFAULT '0',
  `priority` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` date NOT NULL,
  `ticket_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_replies`
--

CREATE TABLE `support_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `support_id` int(11) NOT NULL,
  `user` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(11) NOT NULL,
  `is_read` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task_checklists`
--

CREATE TABLE `task_checklists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `task_id` int(11) NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task_checklists`
--

INSERT INTO `task_checklists` (`id`, `name`, `task_id`, `user_type`, `created_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 'check 1', 1, 'User', 4, 1, '2022-09-15 09:26:22', '2022-09-15 09:28:07');

-- --------------------------------------------------------

--
-- Table structure for table `task_comments`
--

CREATE TABLE `task_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `task_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task_comments`
--

INSERT INTO `task_comments` (`id`, `comment`, `task_id`, `user_id`, `user_type`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Done first task', 1, 4, 'Project Manager', 1, '2022-09-15 09:26:35', '2022-09-15 09:26:35');

-- --------------------------------------------------------

--
-- Table structure for table `task_files`
--

CREATE TABLE `task_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `task_id` int(11) NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task_files`
--

INSERT INTO `task_files` (`id`, `file`, `name`, `extension`, `file_size`, `task_id`, `user_type`, `created_by`, `created_at`, `updated_at`) VALUES
(1, '11663208799_DIGITAL MARKETING ChicExecs.png', 'DIGITAL MARKETING ChicExecs.png', 'png', '0.41 MB', 1, 'User', 4, '2022-09-15 09:26:39', '2022-09-15 09:26:39');

-- --------------------------------------------------------

--
-- Table structure for table `task_stages`
--

CREATE TABLE `task_stages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `complete` tinyint(1) NOT NULL DEFAULT '0',
  `project_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `color` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task_stages`
--

INSERT INTO `task_stages` (`id`, `name`, `complete`, `project_id`, `color`, `order`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'To Do', 0, 0, NULL, 0, 1, '2022-07-26 20:44:15', '2022-07-26 20:44:15'),
(2, 'In Progress', 0, 0, NULL, 1, 1, '2022-07-26 20:44:15', '2022-07-26 20:44:15'),
(3, 'Review', 0, 0, NULL, 2, 1, '2022-07-26 20:44:15', '2022-07-26 20:44:15'),
(4, 'Done', 0, 0, NULL, 3, 1, '2022-07-26 20:44:15', '2022-07-26 20:44:15');

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `terminations`
--

CREATE TABLE `terminations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `notice_date` date NOT NULL,
  `termination_date` date NOT NULL,
  `termination_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `termination_types`
--

CREATE TABLE `termination_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `timesheets`
--

CREATE TABLE `timesheets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL DEFAULT '0',
  `date` date NOT NULL,
  `time` time NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `time_trackers`
--

CREATE TABLE `time_trackers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `task_id` int(11) DEFAULT NULL,
  `tag_id` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_billable` int(11) NOT NULL DEFAULT '0',
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `total_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `is_active` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `track_photos`
--

CREATE TABLE `track_photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `track_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `img_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trainers`
--

CREATE TABLE `trainers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `expertise` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trainings`
--

CREATE TABLE `trainings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch` int(11) NOT NULL,
  `trainer_option` int(11) NOT NULL,
  `training_type` int(11) NOT NULL,
  `trainer` int(11) NOT NULL,
  `training_cost` double(8,2) NOT NULL DEFAULT '0.00',
  `employee` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `performance` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `training_types`
--

CREATE TABLE `training_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `training_types`
--

INSERT INTO `training_types` (`id`, `name`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'InHouse', 1, '2022-09-15 16:49:22', '2022-09-15 16:49:22');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(16,2) NOT NULL DEFAULT '0.00',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `payment_id` int(11) NOT NULL DEFAULT '0',
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `transfer_date` date NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `travels`
--

CREATE TABLE `travels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `purpose_of_visit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `place_of_visit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan` int(11) DEFAULT NULL,
  `plan_expire_date` date DEFAULT NULL,
  `requested_plan` int(11) NOT NULL DEFAULT '0',
  `type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'light',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `default_pipeline` int(11) DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT '1',
  `is_active` int(11) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `messenger_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#2180f3',
  `dark_mode` tinyint(1) NOT NULL DEFAULT '0',
  `active_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `plan`, `plan_expire_date`, `requested_plan`, `type`, `avatar`, `lang`, `mode`, `created_by`, `default_pipeline`, `delete_status`, `is_active`, `remember_token`, `last_login_at`, `created_at`, `updated_at`, `messenger_color`, `dark_mode`, `active_status`) VALUES
(1, 'company', 'company@example.com', NULL, '$2y$10$tpUZCn1/UhGEhfVxn9Jy/u8nPC0wVfRwRELx3z4jYthIkDh9BF/a.', 1, NULL, 0, 'company', '', 'en', 'light', 1, 1, 1, 1, NULL, '2022-09-16 02:12:30', '2022-07-26 20:44:13', '2022-09-15 20:12:30', '#2180f3', 0, 0),
(2, 'accountant', 'accountant@example.com', NULL, '$2y$10$xt9y5bBjlZhQ8knLN3eWfuBeCWc84LF7RyGqF2md/npWuJrRnbig2', NULL, NULL, 0, 'accountant', '', 'en', 'light', 1, 1, 1, 1, NULL, NULL, '2022-07-26 20:44:14', '2022-07-26 20:44:14', '#2180f3', 0, 0),
(3, 'client', 'client@example.com', NULL, '$2y$10$DkpftPAlo19GfP0PGRJnJecUqNudZ2.836sMs7WkfzzDd8KxrcwsS', NULL, NULL, 0, 'client', '', 'en', 'light', 1, 1, 1, 1, NULL, NULL, '2022-07-26 20:44:14', '2022-07-26 20:44:14', '#2180f3', 0, 0),
(4, 'Project Manager', 'projectmanager@gmail.com', NULL, '$2y$10$RDVaZE9niarH0SZjpT.0hOrXSCL09igt6dLbfti9J66YweNWn6ibi', NULL, NULL, 0, 'Project Manager', NULL, 'en', 'light', 1, NULL, 1, 1, NULL, '2022-09-15 02:24:14', '2022-09-14 03:09:00', '2022-09-15 09:24:14', '#2180f3', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_contacts`
--

CREATE TABLE `user_contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_coupons`
--

CREATE TABLE `user_coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` int(11) NOT NULL,
  `coupon` int(11) NOT NULL,
  `order` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_deals`
--

CREATE TABLE `user_deals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `deal_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_deals`
--

INSERT INTO `user_deals` (`id`, `user_id`, `deal_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2022-09-14 05:08:30', '2022-09-14 05:08:30');

-- --------------------------------------------------------

--
-- Table structure for table `user_email_templates`
--

CREATE TABLE `user_email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `template_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_leads`
--

CREATE TABLE `user_leads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `lead_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_leads`
--

INSERT INTO `user_leads` (`id`, `user_id`, `lead_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2022-09-15 09:30:08', '2022-09-15 09:30:08'),
(2, 4, 1, '2022-09-15 09:30:08', '2022-09-15 09:30:08');

-- --------------------------------------------------------

--
-- Table structure for table `user_to_dos`
--

CREATE TABLE `user_to_dos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_complete` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `venders`
--

CREATE TABLE `venders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vender_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `is_active` int(11) NOT NULL DEFAULT '1',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `billing_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_zip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `balance` double(8,2) NOT NULL DEFAULT '0.00',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `warnings`
--

CREATE TABLE `warnings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `warning_to` int(11) NOT NULL,
  `warning_by` int(11) NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warning_date` date NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zoom_meetings`
--

CREATE TABLE `zoom_meetings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meeting_id` int(11) NOT NULL DEFAULT '0',
  `project_id` int(11) NOT NULL DEFAULT '0',
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_id` int(11) NOT NULL DEFAULT '0',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `duration` int(11) NOT NULL DEFAULT '0',
  `start_url` text COLLATE utf8mb4_unicode_ci,
  `join_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'waiting',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_payment_settings`
--
ALTER TABLE `admin_payment_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_payment_settings_name_created_by_unique` (`name`,`created_by`);

--
-- Indexes for table `allowances`
--
ALTER TABLE `allowances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `allowance_options`
--
ALTER TABLE `allowance_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcement_employees`
--
ALTER TABLE `announcement_employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appraisals`
--
ALTER TABLE `appraisals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance_employees`
--
ALTER TABLE `attendance_employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `award_types`
--
ALTER TABLE `award_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_transfers`
--
ALTER TABLE `bank_transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill_payments`
--
ALTER TABLE `bill_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill_products`
--
ALTER TABLE `bill_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `budgets`
--
ALTER TABLE `budgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bugs`
--
ALTER TABLE `bugs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bug_comments`
--
ALTER TABLE `bug_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bug_files`
--
ALTER TABLE `bug_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bug_statuses`
--
ALTER TABLE `bug_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chart_of_accounts`
--
ALTER TABLE `chart_of_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chart_of_account_sub_types`
--
ALTER TABLE `chart_of_account_sub_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chart_of_account_types`
--
ALTER TABLE `chart_of_account_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_favorites`
--
ALTER TABLE `ch_favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_messages`
--
ALTER TABLE `ch_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_deals`
--
ALTER TABLE `client_deals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_deals_client_id_foreign` (`client_id`),
  ADD KEY `client_deals_deal_id_foreign` (`deal_id`);

--
-- Indexes for table `commissions`
--
ALTER TABLE `commissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_payment_settings`
--
ALTER TABLE `company_payment_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `company_payment_settings_name_created_by_unique` (`name`,`created_by`);

--
-- Indexes for table `company_policies`
--
ALTER TABLE `company_policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `competencies`
--
ALTER TABLE `competencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contracts`
--
ALTER TABLE `contracts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contract_types`
--
ALTER TABLE `contract_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `credit_notes`
--
ALTER TABLE `credit_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `custom_field_values_record_id_field_id_unique` (`record_id`,`field_id`),
  ADD KEY `custom_field_values_field_id_foreign` (`field_id`);

--
-- Indexes for table `custom_questions`
--
ALTER TABLE `custom_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deals`
--
ALTER TABLE `deals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deal_calls`
--
ALTER TABLE `deal_calls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deal_calls_deal_id_foreign` (`deal_id`);

--
-- Indexes for table `deal_discussions`
--
ALTER TABLE `deal_discussions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deal_discussions_deal_id_foreign` (`deal_id`);

--
-- Indexes for table `deal_emails`
--
ALTER TABLE `deal_emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deal_emails_deal_id_foreign` (`deal_id`);

--
-- Indexes for table `deal_files`
--
ALTER TABLE `deal_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deal_files_deal_id_foreign` (`deal_id`);

--
-- Indexes for table `deal_tasks`
--
ALTER TABLE `deal_tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deal_tasks_deal_id_foreign` (`deal_id`);

--
-- Indexes for table `debit_notes`
--
ALTER TABLE `debit_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deduction_options`
--
ALTER TABLE `deduction_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ducument_uploads`
--
ALTER TABLE `ducument_uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_template_langs`
--
ALTER TABLE `email_template_langs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_documents`
--
ALTER TABLE `employee_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `estimations`
--
ALTER TABLE `estimations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_employees`
--
ALTER TABLE `event_employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_builders`
--
ALTER TABLE `form_builders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `form_builders_code_unique` (`code`);

--
-- Indexes for table `form_fields`
--
ALTER TABLE `form_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_field_responses`
--
ALTER TABLE `form_field_responses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_responses`
--
ALTER TABLE `form_responses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genrate_payslip_options`
--
ALTER TABLE `genrate_payslip_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `goals`
--
ALTER TABLE `goals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `goal_trackings`
--
ALTER TABLE `goal_trackings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `goal_types`
--
ALTER TABLE `goal_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `indicators`
--
ALTER TABLE `indicators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interview_schedules`
--
ALTER TABLE `interview_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_payments`
--
ALTER TABLE `invoice_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_products`
--
ALTER TABLE `invoice_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_applications`
--
ALTER TABLE `job_applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_application_notes`
--
ALTER TABLE `job_application_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_categories`
--
ALTER TABLE `job_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_on_boards`
--
ALTER TABLE `job_on_boards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_stages`
--
ALTER TABLE `job_stages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `journal_entries`
--
ALTER TABLE `journal_entries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `journal_items`
--
ALTER TABLE `journal_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `labels`
--
ALTER TABLE `labels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `landing_page_sections`
--
ALTER TABLE `landing_page_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `leads_email_unique` (`email`);

--
-- Indexes for table `lead_activity_logs`
--
ALTER TABLE `lead_activity_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lead_calls`
--
ALTER TABLE `lead_calls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lead_calls_lead_id_foreign` (`lead_id`);

--
-- Indexes for table `lead_discussions`
--
ALTER TABLE `lead_discussions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lead_discussions_lead_id_foreign` (`lead_id`);

--
-- Indexes for table `lead_emails`
--
ALTER TABLE `lead_emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lead_emails_lead_id_foreign` (`lead_id`);

--
-- Indexes for table `lead_files`
--
ALTER TABLE `lead_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lead_files_lead_id_foreign` (`lead_id`);

--
-- Indexes for table `lead_stages`
--
ALTER TABLE `lead_stages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_types`
--
ALTER TABLE `leave_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loans`
--
ALTER TABLE `loans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_options`
--
ALTER TABLE `loan_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_activities`
--
ALTER TABLE `log_activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meeting_employees`
--
ALTER TABLE `meeting_employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `milestones`
--
ALTER TABLE `milestones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_order_id_unique` (`order_id`);

--
-- Indexes for table `other_payments`
--
ALTER TABLE `other_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `overtimes`
--
ALTER TABLE `overtimes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payslip_types`
--
ALTER TABLE `payslip_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_slips`
--
ALTER TABLE `pay_slips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `performance_types`
--
ALTER TABLE `performance_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pipelines`
--
ALTER TABLE `pipelines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plans_name_unique` (`name`);

--
-- Indexes for table `plan_requests`
--
ALTER TABLE `plan_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_services`
--
ALTER TABLE `product_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_service_categories`
--
ALTER TABLE `product_service_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_service_units`
--
ALTER TABLE `product_service_units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projectstages`
--
ALTER TABLE `projectstages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_email_templates`
--
ALTER TABLE `project_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_invoices`
--
ALTER TABLE `project_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_tasks`
--
ALTER TABLE `project_tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_users`
--
ALTER TABLE `project_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proposals`
--
ALTER TABLE `proposals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proposal_products`
--
ALTER TABLE `proposal_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resignations`
--
ALTER TABLE `resignations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `revenues`
--
ALTER TABLE `revenues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `saturation_deductions`
--
ALTER TABLE `saturation_deductions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_name_created_by_unique` (`name`,`created_by`);

--
-- Indexes for table `set_salaries`
--
ALTER TABLE `set_salaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sources`
--
ALTER TABLE `sources`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stages`
--
ALTER TABLE `stages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_reports`
--
ALTER TABLE `stock_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supports`
--
ALTER TABLE `supports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_replies`
--
ALTER TABLE `support_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_checklists`
--
ALTER TABLE `task_checklists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_comments`
--
ALTER TABLE `task_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_files`
--
ALTER TABLE `task_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_stages`
--
ALTER TABLE `task_stages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terminations`
--
ALTER TABLE `terminations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `termination_types`
--
ALTER TABLE `termination_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timesheets`
--
ALTER TABLE `timesheets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_trackers`
--
ALTER TABLE `time_trackers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `track_photos`
--
ALTER TABLE `track_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainers`
--
ALTER TABLE `trainers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainings`
--
ALTER TABLE `trainings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `training_types`
--
ALTER TABLE `training_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travels`
--
ALTER TABLE `travels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_contacts`
--
ALTER TABLE `user_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_coupons`
--
ALTER TABLE `user_coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_deals`
--
ALTER TABLE `user_deals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_deals_user_id_foreign` (`user_id`),
  ADD KEY `user_deals_deal_id_foreign` (`deal_id`);

--
-- Indexes for table `user_email_templates`
--
ALTER TABLE `user_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_leads`
--
ALTER TABLE `user_leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_leads_user_id_foreign` (`user_id`),
  ADD KEY `user_leads_lead_id_foreign` (`lead_id`);

--
-- Indexes for table `user_to_dos`
--
ALTER TABLE `user_to_dos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `venders`
--
ALTER TABLE `venders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `venders_email_unique` (`email`);

--
-- Indexes for table `warnings`
--
ALTER TABLE `warnings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zoom_meetings`
--
ALTER TABLE `zoom_meetings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `admin_payment_settings`
--
ALTER TABLE `admin_payment_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `allowances`
--
ALTER TABLE `allowances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `allowance_options`
--
ALTER TABLE `allowance_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `announcement_employees`
--
ALTER TABLE `announcement_employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `appraisals`
--
ALTER TABLE `appraisals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendance_employees`
--
ALTER TABLE `attendance_employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `awards`
--
ALTER TABLE `awards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `award_types`
--
ALTER TABLE `award_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bank_transfers`
--
ALTER TABLE `bank_transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bill_payments`
--
ALTER TABLE `bill_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bill_products`
--
ALTER TABLE `bill_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `budgets`
--
ALTER TABLE `budgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bugs`
--
ALTER TABLE `bugs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bug_comments`
--
ALTER TABLE `bug_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bug_files`
--
ALTER TABLE `bug_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bug_statuses`
--
ALTER TABLE `bug_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `chart_of_accounts`
--
ALTER TABLE `chart_of_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `chart_of_account_sub_types`
--
ALTER TABLE `chart_of_account_sub_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `chart_of_account_types`
--
ALTER TABLE `chart_of_account_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `client_deals`
--
ALTER TABLE `client_deals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `commissions`
--
ALTER TABLE `commissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company_payment_settings`
--
ALTER TABLE `company_payment_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company_policies`
--
ALTER TABLE `company_policies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `competencies`
--
ALTER TABLE `competencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contracts`
--
ALTER TABLE `contracts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contract_types`
--
ALTER TABLE `contract_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `credit_notes`
--
ALTER TABLE `credit_notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_questions`
--
ALTER TABLE `custom_questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deals`
--
ALTER TABLE `deals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `deal_calls`
--
ALTER TABLE `deal_calls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deal_discussions`
--
ALTER TABLE `deal_discussions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deal_emails`
--
ALTER TABLE `deal_emails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deal_files`
--
ALTER TABLE `deal_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deal_tasks`
--
ALTER TABLE `deal_tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `debit_notes`
--
ALTER TABLE `debit_notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deduction_options`
--
ALTER TABLE `deduction_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ducument_uploads`
--
ALTER TABLE `ducument_uploads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_template_langs`
--
ALTER TABLE `email_template_langs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employee_documents`
--
ALTER TABLE `employee_documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `estimations`
--
ALTER TABLE `estimations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `event_employees`
--
ALTER TABLE `event_employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_builders`
--
ALTER TABLE `form_builders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `form_fields`
--
ALTER TABLE `form_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `form_field_responses`
--
ALTER TABLE `form_field_responses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `form_responses`
--
ALTER TABLE `form_responses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `genrate_payslip_options`
--
ALTER TABLE `genrate_payslip_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `goals`
--
ALTER TABLE `goals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `goal_trackings`
--
ALTER TABLE `goal_trackings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `goal_types`
--
ALTER TABLE `goal_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `indicators`
--
ALTER TABLE `indicators`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `interview_schedules`
--
ALTER TABLE `interview_schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_payments`
--
ALTER TABLE `invoice_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_products`
--
ALTER TABLE `invoice_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_applications`
--
ALTER TABLE `job_applications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_application_notes`
--
ALTER TABLE `job_application_notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_categories`
--
ALTER TABLE `job_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_on_boards`
--
ALTER TABLE `job_on_boards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_stages`
--
ALTER TABLE `job_stages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `journal_entries`
--
ALTER TABLE `journal_entries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `journal_items`
--
ALTER TABLE `journal_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `labels`
--
ALTER TABLE `labels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `landing_page_sections`
--
ALTER TABLE `landing_page_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leads`
--
ALTER TABLE `leads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lead_activity_logs`
--
ALTER TABLE `lead_activity_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lead_calls`
--
ALTER TABLE `lead_calls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead_discussions`
--
ALTER TABLE `lead_discussions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead_emails`
--
ALTER TABLE `lead_emails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead_files`
--
ALTER TABLE `lead_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead_stages`
--
ALTER TABLE `lead_stages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leave_types`
--
ALTER TABLE `leave_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loans`
--
ALTER TABLE `loans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loan_options`
--
ALTER TABLE `loan_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_activities`
--
ALTER TABLE `log_activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meetings`
--
ALTER TABLE `meetings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meeting_employees`
--
ALTER TABLE `meeting_employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT for table `milestones`
--
ALTER TABLE `milestones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `other_payments`
--
ALTER TABLE `other_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `overtimes`
--
ALTER TABLE `overtimes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payslip_types`
--
ALTER TABLE `payslip_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pay_slips`
--
ALTER TABLE `pay_slips`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `performance_types`
--
ALTER TABLE `performance_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=953;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pipelines`
--
ALTER TABLE `pipelines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plan_requests`
--
ALTER TABLE `plan_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_services`
--
ALTER TABLE `product_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_service_categories`
--
ALTER TABLE `product_service_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_service_units`
--
ALTER TABLE `product_service_units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `projectstages`
--
ALTER TABLE `projectstages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_email_templates`
--
ALTER TABLE `project_email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_invoices`
--
ALTER TABLE `project_invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_tasks`
--
ALTER TABLE `project_tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `project_users`
--
ALTER TABLE `project_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `proposals`
--
ALTER TABLE `proposals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `proposal_products`
--
ALTER TABLE `proposal_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resignations`
--
ALTER TABLE `resignations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `revenues`
--
ALTER TABLE `revenues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `saturation_deductions`
--
ALTER TABLE `saturation_deductions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `set_salaries`
--
ALTER TABLE `set_salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sources`
--
ALTER TABLE `sources`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `stages`
--
ALTER TABLE `stages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `stock_reports`
--
ALTER TABLE `stock_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supports`
--
ALTER TABLE `supports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_replies`
--
ALTER TABLE `support_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task_checklists`
--
ALTER TABLE `task_checklists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `task_comments`
--
ALTER TABLE `task_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `task_files`
--
ALTER TABLE `task_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `task_stages`
--
ALTER TABLE `task_stages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `terminations`
--
ALTER TABLE `terminations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `termination_types`
--
ALTER TABLE `termination_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `timesheets`
--
ALTER TABLE `timesheets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `time_trackers`
--
ALTER TABLE `time_trackers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `track_photos`
--
ALTER TABLE `track_photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trainers`
--
ALTER TABLE `trainers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trainings`
--
ALTER TABLE `trainings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `training_types`
--
ALTER TABLE `training_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `travels`
--
ALTER TABLE `travels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_contacts`
--
ALTER TABLE `user_contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_coupons`
--
ALTER TABLE `user_coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_deals`
--
ALTER TABLE `user_deals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_email_templates`
--
ALTER TABLE `user_email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_leads`
--
ALTER TABLE `user_leads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_to_dos`
--
ALTER TABLE `user_to_dos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `venders`
--
ALTER TABLE `venders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `warnings`
--
ALTER TABLE `warnings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zoom_meetings`
--
ALTER TABLE `zoom_meetings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `client_deals`
--
ALTER TABLE `client_deals`
  ADD CONSTRAINT `client_deals_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `client_deals_deal_id_foreign` FOREIGN KEY (`deal_id`) REFERENCES `deals` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  ADD CONSTRAINT `custom_field_values_field_id_foreign` FOREIGN KEY (`field_id`) REFERENCES `custom_fields` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `deal_calls`
--
ALTER TABLE `deal_calls`
  ADD CONSTRAINT `deal_calls_deal_id_foreign` FOREIGN KEY (`deal_id`) REFERENCES `deals` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `deal_discussions`
--
ALTER TABLE `deal_discussions`
  ADD CONSTRAINT `deal_discussions_deal_id_foreign` FOREIGN KEY (`deal_id`) REFERENCES `deals` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `deal_emails`
--
ALTER TABLE `deal_emails`
  ADD CONSTRAINT `deal_emails_deal_id_foreign` FOREIGN KEY (`deal_id`) REFERENCES `deals` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `deal_files`
--
ALTER TABLE `deal_files`
  ADD CONSTRAINT `deal_files_deal_id_foreign` FOREIGN KEY (`deal_id`) REFERENCES `deals` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `deal_tasks`
--
ALTER TABLE `deal_tasks`
  ADD CONSTRAINT `deal_tasks_deal_id_foreign` FOREIGN KEY (`deal_id`) REFERENCES `deals` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lead_calls`
--
ALTER TABLE `lead_calls`
  ADD CONSTRAINT `lead_calls_lead_id_foreign` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lead_discussions`
--
ALTER TABLE `lead_discussions`
  ADD CONSTRAINT `lead_discussions_lead_id_foreign` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lead_emails`
--
ALTER TABLE `lead_emails`
  ADD CONSTRAINT `lead_emails_lead_id_foreign` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lead_files`
--
ALTER TABLE `lead_files`
  ADD CONSTRAINT `lead_files_lead_id_foreign` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_deals`
--
ALTER TABLE `user_deals`
  ADD CONSTRAINT `user_deals_deal_id_foreign` FOREIGN KEY (`deal_id`) REFERENCES `deals` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_deals_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_leads`
--
ALTER TABLE `user_leads`
  ADD CONSTRAINT `user_leads_lead_id_foreign` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_leads_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
