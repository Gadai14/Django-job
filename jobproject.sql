-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2024 at 02:55 PM
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
-- Database: `jobproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_candidate`
--

CREATE TABLE `app_candidate` (
  `id` bigint(20) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `address` varchar(150) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `min_salary` bigint(20) NOT NULL,
  `max_salary` bigint(20) NOT NULL,
  `jobtype` varchar(150) NOT NULL,
  `jobcategory` varchar(150) NOT NULL,
  `highestedu` varchar(150) NOT NULL,
  `experience` varchar(150) NOT NULL,
  `website` varchar(150) NOT NULL,
  `shift` varchar(150) NOT NULL,
  `city` varchar(150) NOT NULL,
  `jobdescription` varchar(500) NOT NULL,
  `profile_pic` varchar(100) NOT NULL,
  `user_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app_candidate`
--

INSERT INTO `app_candidate` (`id`, `firstname`, `lastname`, `contact`, `state`, `address`, `dob`, `gender`, `min_salary`, `max_salary`, `jobtype`, `jobcategory`, `highestedu`, `experience`, `website`, `shift`, `city`, `jobdescription`, `profile_pic`, `user_id_id`) VALUES
(1, 'Biswajit', 'Pal', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 2),
(2, 'Abhi', 'Pal', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 4),
(3, 'Abhijit', 'Das', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 5),
(4, 'Monimala', 'pal', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 6),
(5, 's', 's', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 7),
(6, 'sq', 'sq', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 8),
(7, 'ram', 'pal', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 9),
(8, 'shyam', 'das', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 10),
(9, 'ram', 'charan', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 11),
(10, 'shyam', 'de', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 12);

-- --------------------------------------------------------

--
-- Table structure for table `app_company`
--

CREATE TABLE `app_company` (
  `id` bigint(20) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `company_name` varchar(150) NOT NULL,
  `state` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `address` varchar(150) NOT NULL,
  `logo_pic` varchar(100) NOT NULL,
  `user_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app_company`
--

INSERT INTO `app_company` (`id`, `firstname`, `lastname`, `company_name`, `state`, `city`, `contact`, `address`, `logo_pic`, `user_id_id`) VALUES
(1, 'Monimala', 'Pal', '', '', '', '', '', '', 3),
(2, 'Ayan', 'de', '', '', '', '', '', '', 13);

-- --------------------------------------------------------

--
-- Table structure for table `app_jobdetails`
--

CREATE TABLE `app_jobdetails` (
  `id` bigint(20) NOT NULL,
  `jobname` varchar(250) NOT NULL,
  `companyname` varchar(250) NOT NULL,
  `companyaddress` varchar(250) NOT NULL,
  `jobdescription` longtext NOT NULL,
  `qualification` varchar(250) NOT NULL,
  `responsibilities` varchar(250) NOT NULL,
  `location` varchar(250) NOT NULL,
  `companywebsite` varchar(250) NOT NULL,
  `companyemail` varchar(250) NOT NULL,
  `companycontact` varchar(20) NOT NULL,
  `salarypackage` varchar(250) NOT NULL,
  `experience` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_usermaster`
--

CREATE TABLE `app_usermaster` (
  `id` bigint(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `otp` int(11) NOT NULL,
  `role` varchar(50) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_verified` tinyint(1) NOT NULL,
  `is_created` datetime(6) NOT NULL,
  `is_updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app_usermaster`
--

INSERT INTO `app_usermaster` (`id`, `email`, `password`, `otp`, `role`, `is_active`, `is_verified`, `is_created`, `is_updated`) VALUES
(1, 'Ab@gmail.com', 'abhi2003', 264289, 'Candidate', 1, 0, '2024-04-30 05:38:23.446747', '2024-04-30 05:38:23.446747'),
(2, 'Aeb@gmail.com', 'abhi2003', 381332, 'Candidate', 1, 0, '2024-04-30 05:43:51.379544', '2024-04-30 05:43:51.379544'),
(3, 'gtc@gmail.com', 'abhi2003', 972260, 'Company', 1, 0, '2024-04-30 06:06:04.846796', '2024-04-30 06:06:04.846796'),
(4, 'Abhi@gmail.com', 'abhi2003', 903676, 'Candidate', 1, 0, '2024-04-30 07:25:58.870273', '2024-04-30 07:25:58.871283'),
(5, 'Das@gmail.com', 'abhi2003', 121231, 'Candidate', 1, 0, '2024-05-01 09:54:11.558604', '2024-05-01 09:54:11.558604'),
(6, 'pal@gmail.com', 'abhi2003', 651870, 'Candidate', 0, 0, '2024-05-03 02:25:55.739552', '2024-05-03 02:25:55.739552'),
(7, 'Aabhi@gmail.com', 'abhi2003', 443040, 'Candidate', 1, 0, '2024-05-04 11:43:57.159011', '2024-05-04 11:43:57.159011'),
(8, 'Abhis@gmail.com', 'abhi2003', 697328, 'Candidate', 1, 0, '2024-05-04 11:44:40.775616', '2024-05-04 11:44:40.775616'),
(9, 'Abhiss@gmail.com', 'abhi2003', 185180, 'Candidate', 1, 0, '2024-05-04 11:47:20.822126', '2024-05-04 11:47:20.822126'),
(10, 'Abrthi@gmail.com', 'abhi2003', 242499, 'Candidate', 1, 0, '2024-05-04 11:48:35.515189', '2024-05-04 11:48:35.515189'),
(11, 'Abhwei@gmail.com', 'abhi2003', 628172, 'Candidate', 1, 0, '2024-05-04 12:27:30.151049', '2024-05-04 12:27:30.151049'),
(12, 'shyam@gmail.com', 'abhi2003', 983772, 'Candidate', 1, 0, '2024-05-04 12:29:31.614161', '2024-05-04 12:29:31.614161'),
(13, 'ayan@gmail.com', 'abhi2003', 484958, 'Company', 1, 0, '2024-05-04 12:35:15.475516', '2024-05-04 12:35:15.475516');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add candidate', 7, 'add_candidate'),
(26, 'Can change candidate', 7, 'change_candidate'),
(27, 'Can delete candidate', 7, 'delete_candidate'),
(28, 'Can view candidate', 7, 'view_candidate'),
(29, 'Can add user master', 8, 'add_usermaster'),
(30, 'Can change user master', 8, 'change_usermaster'),
(31, 'Can delete user master', 8, 'delete_usermaster'),
(32, 'Can view user master', 8, 'view_usermaster'),
(33, 'Can add company', 9, 'add_company'),
(34, 'Can change company', 9, 'change_company'),
(35, 'Can delete company', 9, 'delete_company'),
(36, 'Can view company', 9, 'view_company'),
(37, 'Can add contact', 10, 'add_contact'),
(38, 'Can change contact', 10, 'change_contact'),
(39, 'Can delete contact', 10, 'delete_contact'),
(40, 'Can view contact', 10, 'view_contact'),
(41, 'Can add job details', 11, 'add_jobdetails'),
(42, 'Can change job details', 11, 'change_jobdetails'),
(43, 'Can delete job details', 11, 'delete_jobdetails'),
(44, 'Can view job details', 11, 'view_jobdetails');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(7, 'app', 'candidate'),
(9, 'app', 'company'),
(10, 'app', 'contact'),
(11, 'app', 'jobdetails'),
(8, 'app', 'usermaster'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-04-30 01:45:21.343147'),
(2, 'auth', '0001_initial', '2024-04-30 01:45:21.961476'),
(3, 'admin', '0001_initial', '2024-04-30 01:45:22.100390'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-04-30 01:45:22.113001'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-04-30 01:45:22.128896'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-04-30 01:45:22.210636'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-04-30 01:45:22.292012'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-04-30 01:45:22.326511'),
(9, 'auth', '0004_alter_user_username_opts', '2024-04-30 01:45:22.342307'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-04-30 01:45:22.401478'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-04-30 01:45:22.405810'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-04-30 01:45:22.419846'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-04-30 01:45:22.442404'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-04-30 01:45:22.462275'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-04-30 01:45:22.485548'),
(16, 'auth', '0011_update_proxy_permissions', '2024-04-30 01:45:22.497793'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-04-30 01:45:22.519172'),
(18, 'sessions', '0001_initial', '2024-04-30 01:45:22.559633'),
(19, 'app', '0001_initial', '2024-04-30 01:48:29.569202'),
(20, 'app', '0002_company', '2024-04-30 01:49:54.137318'),
(21, 'app', '0003_alter_candidate_address_alter_candidate_contact_and_more', '2024-04-30 05:31:04.344697'),
(22, 'app', '0004_alter_candidate_max_salary_and_more', '2024-04-30 05:42:46.483965'),
(23, 'app', '0005_contact', '2024-04-30 08:51:07.074121'),
(24, 'app', '0006_alter_contact_email_alter_contact_message', '2024-04-30 09:14:23.371164'),
(25, 'app', '0007_alter_contact_email', '2024-05-01 02:40:14.338890'),
(26, 'app', '0008_rename_message_contact_comments_and_more', '2024-05-01 14:17:12.995690'),
(27, 'app', '0009_delete_contact', '2024-05-02 14:46:48.624478'),
(28, 'app', '0010_jobdetails_alter_usermaster_is_active', '2024-05-03 12:43:54.172418'),
(29, 'app', '0011_alter_usermaster_is_active', '2024-05-04 03:33:11.601532');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('jmdw0c0vn9l66wn310fm7l4i2w2vfkqe', '.eJyrVspMUbIyNNJRKsrPSVWyUnJOzEvJTEksSVXSUUrLLCouyUvMBYkXZ1Qm5gLFchLhQikgNam5iZk5MHmHdBBPLzk_V6kWABddHXg:1s3Eek:G5O3agjPqTeaahdLdZBolOxWFH6VzRIJV9CQ0b9XnV4', '2024-05-18 12:38:22.974312');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_candidate`
--
ALTER TABLE `app_candidate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_candidate_user_id_id_587d9de9_fk_app_usermaster_id` (`user_id_id`);

--
-- Indexes for table `app_company`
--
ALTER TABLE `app_company`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_company_user_id_id_e462576f_fk_app_usermaster_id` (`user_id_id`);

--
-- Indexes for table `app_jobdetails`
--
ALTER TABLE `app_jobdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_usermaster`
--
ALTER TABLE `app_usermaster`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_candidate`
--
ALTER TABLE `app_candidate`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `app_company`
--
ALTER TABLE `app_company`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `app_jobdetails`
--
ALTER TABLE `app_jobdetails`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_usermaster`
--
ALTER TABLE `app_usermaster`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `app_candidate`
--
ALTER TABLE `app_candidate`
  ADD CONSTRAINT `app_candidate_user_id_id_587d9de9_fk_app_usermaster_id` FOREIGN KEY (`user_id_id`) REFERENCES `app_usermaster` (`id`);

--
-- Constraints for table `app_company`
--
ALTER TABLE `app_company`
  ADD CONSTRAINT `app_company_user_id_id_e462576f_fk_app_usermaster_id` FOREIGN KEY (`user_id_id`) REFERENCES `app_usermaster` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
