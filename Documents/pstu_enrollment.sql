-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2026 at 05:25 PM
-- Server version: 11.5.2-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pstu_enrollment`
--

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
(25, 'Can add faculty', 7, 'add_faculty'),
(26, 'Can change faculty', 7, 'change_faculty'),
(27, 'Can delete faculty', 7, 'delete_faculty'),
(28, 'Can view faculty', 7, 'view_faculty'),
(29, 'Can add semester', 8, 'add_semester'),
(30, 'Can change semester', 8, 'change_semester'),
(31, 'Can delete semester', 8, 'delete_semester'),
(32, 'Can view semester', 8, 'view_semester'),
(33, 'Can add department', 9, 'add_department'),
(34, 'Can change department', 9, 'change_department'),
(35, 'Can delete department', 9, 'delete_department'),
(36, 'Can view department', 9, 'view_department'),
(37, 'Can add faculty controller', 10, 'add_facultycontroller'),
(38, 'Can change faculty controller', 10, 'change_facultycontroller'),
(39, 'Can delete faculty controller', 10, 'delete_facultycontroller'),
(40, 'Can view faculty controller', 10, 'view_facultycontroller'),
(41, 'Can add course', 11, 'add_course'),
(42, 'Can change course', 11, 'change_course'),
(43, 'Can delete course', 11, 'delete_course'),
(44, 'Can view course', 11, 'view_course'),
(45, 'Can add teacher', 12, 'add_teacher'),
(46, 'Can change teacher', 12, 'change_teacher'),
(47, 'Can delete teacher', 12, 'delete_teacher'),
(48, 'Can view teacher', 12, 'view_teacher'),
(49, 'Can add course_ instructor', 13, 'add_course_instructor'),
(50, 'Can change course_ instructor', 13, 'change_course_instructor'),
(51, 'Can delete course_ instructor', 13, 'delete_course_instructor'),
(52, 'Can view course_ instructor', 13, 'view_course_instructor'),
(53, 'Can add student', 14, 'add_student'),
(54, 'Can change student', 14, 'change_student'),
(55, 'Can delete student', 14, 'delete_student'),
(56, 'Can view student', 14, 'view_student'),
(57, 'Can add course_ mark', 15, 'add_course_mark'),
(58, 'Can change course_ mark', 15, 'change_course_mark'),
(59, 'Can delete course_ mark', 15, 'delete_course_mark'),
(60, 'Can view course_ mark', 15, 'view_course_mark'),
(61, 'Can add semester_ result', 16, 'add_semester_result'),
(62, 'Can change semester_ result', 16, 'change_semester_result'),
(63, 'Can delete semester_ result', 16, 'delete_semester_result'),
(64, 'Can view semester_ result', 16, 'view_semester_result'),
(65, 'Can add exam_period', 17, 'add_exam_period'),
(66, 'Can change exam_period', 17, 'change_exam_period'),
(67, 'Can delete exam_period', 17, 'delete_exam_period'),
(68, 'Can view exam_period', 17, 'view_exam_period'),
(69, 'Can add payment', 18, 'add_payment'),
(70, 'Can change payment', 18, 'change_payment'),
(71, 'Can delete payment', 18, 'delete_payment'),
(72, 'Can view payment', 18, 'view_payment'),
(73, 'Can add special_ repeat', 19, 'add_special_repeat'),
(74, 'Can change special_ repeat', 19, 'change_special_repeat'),
(75, 'Can delete special_ repeat', 19, 'delete_special_repeat'),
(76, 'Can view special_ repeat', 19, 'view_special_repeat'),
(77, 'Can add special_ course_ instructor', 20, 'add_special_course_instructor'),
(78, 'Can change special_ course_ instructor', 20, 'change_special_course_instructor'),
(79, 'Can delete special_ course_ instructor', 20, 'delete_special_course_instructor'),
(80, 'Can view special_ course_ instructor', 20, 'view_special_course_instructor'),
(81, 'Can add cost', 21, 'add_cost'),
(82, 'Can change cost', 21, 'change_cost'),
(83, 'Can delete cost', 21, 'delete_cost'),
(84, 'Can view cost', 21, 'view_cost'),
(85, 'Can add student_ transaction', 22, 'add_student_transaction'),
(86, 'Can change student_ transaction', 22, 'change_student_transaction'),
(87, 'Can delete student_ transaction', 22, 'delete_student_transaction'),
(88, 'Can view student_ transaction', 22, 'view_student_transaction');

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

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$870000$TGZMBkQqt0oi0eDqQKvQtD$9imVfOjkeItxMSBpf5rCwqN3Ktv7sXrO6cspB/VwLAc=', '2026-01-03 11:12:06.877404', 1, 'admin', '', '', 'admin@pstu.ac.bd', 1, 1, '2024-09-18 06:01:56.115834'),
(2, 'pbkdf2_sha256$870000$nPRm0WbGFMnOTpsifqe3MJ$FYC9glitKCF89Prfjx0CSiHKt8BF5TeenueNcBHFx3s=', '2026-01-03 11:06:36.629347', 0, 'cseadmin', 'CSE Admin', 'PSTU', 'cse@pstu.ac.bd', 0, 1, '2024-09-18 06:04:34.000000'),
(3, 'pbkdf2_sha256$870000$Co15MPRUgnC9GGszkXEwXb$70Q0gUZZ2X36YOfxrk/DLYnW0QoJJZvLmSMs+y9mc3k=', NULL, 0, 'agricultureadmin', 'Agriculture Admin', 'PSTU', 'agriculture@pstu.ac.bd', 0, 1, '2024-09-18 06:07:03.000000'),
(4, 'pbkdf2_sha256$870000$RfBxRTzvDbEg82SZ1DimwN$WzmpWB7VeIGijm0J/bISjBiwT2zZwBqc9Q+gVvKuh2g=', NULL, 0, 'baadmin', 'BA Admin', 'PSTU', 'ba@pstu.ac.bd', 0, 1, '2024-09-18 06:08:51.000000'),
(20, 'pbkdf2_sha256$870000$In86bJMYzdr6P7fxnHZjiY$9G3qkCOw7UU/c9nm2oMRMca4UElsO988yZn0eyv95LA=', '2026-01-03 15:34:45.756053', 0, 'mehedi.cse.16', 'Mehedi Hasan', 'Rabbi', 'mehedi.saiyan@gmail.com', 0, 1, '2024-09-29 06:22:03.077602'),
(21, 'pbkdf2_sha256$870000$pscLPyOviVNTDhpXZVj6ha$04BSbudMb5cjchlpGzjRX+75j/yw/Wj1zrL4mJf4mic=', '2024-10-29 04:19:18.969852', 0, 'murad.cce', 'Golam Md. Muradul', 'Bashir', 'murad98csekuet@yahoo.com', 0, 1, '2024-09-29 06:25:30.000000'),
(22, 'pbkdf2_sha256$870000$OoJDz1FkA5qQVSvUqt2R2Z$t5kti3HFKiBSQUFfxLmbjbAk9oCkwZEopaemcWpgLH8=', '2026-01-03 10:01:38.309215', 0, 'mahbubur.csit', 'Md. Mahbubur', 'Rahman', 'mahbub.cse@pstu.ac.bd', 0, 1, '2024-10-06 08:46:26.000000'),
(23, 'pbkdf2_sha256$870000$VeeZrd8GotutSreliC9YuR$4BtQm6lt/oQF73WnwxTX7icdtArHvzSG7aNQLStUjjU=', NULL, 0, 'simanto.cse.16', 'Md. Tasnif', 'Rahman', 'tasnifsimanto99@gmail.com', 0, 1, '2024-10-06 16:23:14.000000'),
(24, 'pbkdf2_sha256$870000$cIfNgnYY4ukCHjAbmWdQRU$PVpB317B2j4dUBNZEdz3z5Uv5W4gjXpLDiUcQ0dd0Nk=', '2026-01-03 11:09:41.563346', 0, 'sohag.cse.15', 'Md. Sohag', 'Mia', 'mahbub.cse@pstu.ac.bd', 0, 1, '2024-10-11 04:49:52.000000'),
(25, 'pbkdf2_sha256$870000$c4APOL5Gr2rhslQW7rm5VB$+PMiCUrhxqJXcJIh7hc5Vv52h75lILXMkXE9c9vHSCM=', NULL, 0, 'fiad.cse.15', 'Md. Fiadul Hasan', 'Fiad', 'fiadulhasan2222@gmail.com', 0, 1, '2024-10-21 18:01:49.000000'),
(26, 'pbkdf2_sha256$870000$AUMSXYjzKEbfBUcGVck5vh$0E1rGlmZC8Q/4iblEqakDLGD2oCfcMu+7lcTiffHAD4=', '2024-10-27 16:38:06.079900', 0, 'mithil.cse.16', 'Md. Mahdi Hasan', 'Mithil', 'mmithil35@gmail.com', 0, 1, '2024-10-21 18:04:40.000000'),
(27, 'pbkdf2_sha256$870000$DqY0XMahsngVhK9emulnc8$oM3/0ZWd4FO39ukIGNMki2J3TE1tC8aYXYopVEE/WB0=', NULL, 0, 'sourav.cse.16', 'Sourav', 'Saha', 'sourav@gmail.com', 0, 1, '2024-10-21 18:30:10.186942'),
(29, 'pbkdf2_sha256$870000$oZiaNnulYrZ4qhMTRIUvRE$gBlcXtDn3iSaP5WiG/T0Wq4qQ/a4Zn2jWZFQXjw1fis=', NULL, 0, 'adnan.cse.16', 'Md. Adnan', 'Hossain', 'mdadnanhossain5@gmail.com', 0, 1, '2024-10-21 18:48:58.000000'),
(30, 'pbkdf2_sha256$870000$1A4hC6DTVMDtM18RrGIDEs$la5SS25viihhp912nxv5UCr7EQY2UD6Uwz2emRaVItc=', '2024-10-24 05:19:21.232913', 0, 'masud.csit', 'Md. Abdul', 'Masud', 'masud@pstu.ac.bd', 0, 1, '2024-10-23 16:37:27.998179'),
(31, 'pbkdf2_sha256$870000$c9d6044l1Wl7qm0j0TnAEK$VTWyBbpZzktIB6Uhy9WBr3QDoG/4C96I9F4INqOJGD8=', '2024-10-28 12:44:02.235852', 0, 'sobuz.cce', 'Md. Samsuzzaman', 'Sobuz', 'sobuz@pstu.ac.bd', 0, 1, '2024-10-23 17:46:02.720466'),
(32, 'pbkdf2_sha256$870000$0Xvgpi9gYVOVaRjlusHSM7$FfIqDhcavpctHA93cklqbnb9yChp0lfFvYioe1318yg=', '2024-10-23 18:18:32.517105', 0, 'chinmoy.csit', 'Chinmay', 'Bepery', 'chinmay.cse@pstu.ac.bd', 0, 1, '2024-10-23 18:15:58.466391'),
(33, 'pbkdf2_sha256$870000$AZS0xKbus58aLNt9Fmh9l8$Y4Y1bcSOUz4v79NCpZwA/AdybYcc9VAz6X5z0xEZP18=', '2024-10-23 18:33:31.191134', 0, 'jamal.csit', 'Mohammad Jamal', 'Hossain', 'jamalpstu07@gmail.com', 0, 1, '2024-10-23 18:33:17.900817'),
(34, 'pbkdf2_sha256$870000$nvv4GmHbgP0j7r2IzejErC$p6lVPYD/5yG+nLd8UeybkXeBnp9imEzhzcjjvJbgIIw=', '2024-10-23 18:45:50.687776', 0, 'sarna.cce', 'Sarna', 'Majumder', 'saran.majumder90@gmail.com', 0, 1, '2024-10-23 18:44:29.000000'),
(35, 'pbkdf2_sha256$870000$JsA9fvADmnckz2Xj4VI8AN$oNti262adttvNu7hWYxMf9GEP0yucR953xCHCprltG8=', '2024-10-28 09:12:27.696664', 0, 'arpita.cce', 'Arpita', 'Howlader', 'arpita@pstu.ac.bd', 0, 1, '2024-10-24 04:31:41.618002'),
(38, 'pbkdf2_sha256$870000$LkULWOQWppGkpsTOkRFl9e$az/4/EjkBrgmtnicdADI00XOem/TDpqNkknWt5U+wpY=', NULL, 0, 'ruhit.cse.16', 'Ruhit', 'Shah', 'ruhitshah16@cse.pstu.ac.bd', 0, 1, '2024-10-28 06:51:35.369426'),
(39, 'pbkdf2_sha256$870000$vEMJdknvM5Wm5MXHRRI4tp$do3BFV5aqdFiUaZudoRlIeKIxQlo+2Lz0uxZPodRhRo=', NULL, 0, 'jamiul.cse.16', 'Md. Jamiul', 'Haque', 'jamiul16@cse.pstu.ac.bd', 0, 1, '2024-10-28 12:06:31.560068'),
(40, 'pbkdf2_sha256$870000$0NQZnvvpzLO1DmyYaoP4Hb$p9ubB7yPsq/UNZlQWENKC6Uk7n0ESkKbP9MF/IQyzvQ=', NULL, 0, 'sohan.cse.18', 'Tasnim Ahammed', 'sohan', 'tasnimahammed18@cse.pstu.ac.bd', 0, 1, '2024-10-28 12:17:57.896057'),
(41, 'pbkdf2_sha256$870000$hLCC8cjvrqDTnuWKybTBis$+xHG9AkN9qmNxnioJTlTvZ4WIsMOfAkPWpyEz98NNns=', NULL, 0, 'arfan.cse.18', 'Arfan ', 'Ahamed', 'arfan18@cse.pstu.ac.bd', 0, 1, '2024-10-28 12:22:09.887889'),
(42, 'pbkdf2_sha256$870000$sj8By8aNonCVQ5TZCaLMlZ$sI3kTII6X3kGsOxoXJ0zGisvl07ATPoWGk3LneMGzXM=', NULL, 0, 'Dabasis.cse.18', 'Dabasis', 'Das', 'Dabasis18@cse.pstu.ac.bd', 0, 1, '2024-10-28 12:25:13.096697'),
(43, 'pbkdf2_sha256$870000$EBkFEMx7F9p3y27juKgpKd$tMiFBT+uxdWTkAxdkOK+LLIahXB9srNwfkPC8zLvAbM=', NULL, 0, 'khokon.pme', 'Md. Khokon', 'Hossain', 'khokon@gmail.com', 0, 1, '2024-10-28 12:26:20.249588'),
(44, 'pbkdf2_sha256$870000$UVDPYKPhgmEr5Z2gCR2d6p$txSJwe/+vdsoDywSPkJRiipcxjtX/729c8UoU1Fc3y4=', NULL, 0, 'prince.cse.18', 'Aziz Reza', 'prince', 'prince18@cse.pstu.ac.bd', 0, 1, '2024-10-28 12:27:30.516370'),
(45, 'pbkdf2_sha256$870000$3lHurYtmJeM98PO1x3weXF$0paS7vkK1+gfQZVtmHzdqMQ0+Cck5M3WL715Q3403LU=', NULL, 0, 'olly.pme', 'Olly Roy', 'Chowdhury', 'olly@gmail.com', 0, 1, '2024-10-28 12:29:38.679066'),
(46, 'pbkdf2_sha256$870000$Soz1tUZrnKbG1IdM2IGsUD$Hsoe3jxnS5cMHjpV8WEyFmO03WCA53gCaiWfO/8jbII=', NULL, 0, 'tofaiel.cse.18', 'Tofaiel Hossein', 'Tota', 'tofaiel18@cse.pstu.ac.bd', 0, 1, '2024-10-28 12:31:21.511641'),
(47, 'pbkdf2_sha256$870000$gAFOaxo0nEbJ9RVlczJLH3$WwHohW/uNarTPPCmBu2wCMgu3Y8ljaqC9SODgU4sESA=', NULL, 0, 'asfiq.cse.18', 'Asfiqur rahman ', 'nahid', 'asfiq18@cse.pstu.ac.bd', 0, 1, '2024-10-28 12:34:53.086427'),
(48, 'pbkdf2_sha256$870000$pr3vQIgmkfkGxdkP4mpGc9$+XCczg8aqwEzrIwK+yLNOfYOlQGH/Gef/erfqQKwhYA=', NULL, 0, 'avinash.cse.18', 'Avhinas Kumar', 'Sah', 'avinash18@cse.pstu.ac.bd', 0, 1, '2024-10-28 12:36:51.469438'),
(49, 'pbkdf2_sha256$870000$b6219t9dX6gj1Il5lsEoJ0$wkk+NPkd09i4793I44t+pMLqPlPR1/vzta77Mm/o4Ac=', NULL, 0, 'avro.cse.18', 'Jotirmoy', 'Avro', 'avro18@cse.pstu.ac.bd', 0, 1, '2024-10-28 12:38:41.677259'),
(50, 'pbkdf2_sha256$870000$sxCFxUMpuGTfVvgEsJ8Kgw$pUXetXotCakeDVnhvRO9Y+sY5aPwBsAVijdNQgtF2ZM=', NULL, 0, 'rakib.cse.18', 'Rakibul islam', 'ratul', 'rakib18@cse.pstu.ac.bd', 0, 1, '2024-10-28 12:40:18.691631'),
(51, 'pbkdf2_sha256$870000$e9MjBbNmGIIL6dQ4zMjyLZ$8cwH8TJN6nA1MQwyv/jq/7K1AJtMqnuwuL7LH8tWgsQ=', '2024-10-28 13:53:37.000000', 0, 'alim.cse.18', 'Abdul', 'Alim', 'tasnif16@cse.pstu.ac.bd', 0, 1, '2024-10-28 12:41:38.000000'),
(52, 'pbkdf2_sha256$870000$TA8PBphqbrGBgVKqRYikfQ$ELfoX1IEkvVenMvCHQ/s1/OO8zI9FMe6gf+m/XhwQFY=', NULL, 0, 'muzahid.cse.16', 'Muhammad', 'AL-Muzahid', 'almuzahid16@gmail.com', 0, 1, '2024-10-31 15:37:02.263810');

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

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-09-18 06:02:46.770259', '1', 'Agriculture', 1, '[{\"added\": {}}]', 7, 1),
(2, '2024-09-18 06:02:56.912780', '2', 'Computer Science and Engineering', 1, '[{\"added\": {}}]', 7, 1),
(3, '2024-09-18 06:03:02.499041', '3', 'Business Administration', 1, '[{\"added\": {}}]', 7, 1),
(4, '2024-09-18 06:04:35.286054', '2', 'cseadmin', 1, '[{\"added\": {}}]', 4, 1),
(5, '2024-09-18 06:06:05.993175', '2', 'cseadmin', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\"]}}]', 4, 1),
(6, '2024-09-18 06:07:03.981386', '3', 'agricultureadmin', 1, '[{\"added\": {}}]', 4, 1),
(7, '2024-09-18 06:08:03.894856', '3', 'agricultureadmin', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\"]}}]', 4, 1),
(8, '2024-09-18 06:08:52.362992', '4', 'baadmin', 1, '[{\"added\": {}}]', 4, 1),
(9, '2024-09-18 06:09:28.713118', '4', 'baadmin', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\"]}}]', 4, 1),
(10, '2024-09-18 06:09:39.985565', '1', 'FacultyController object (1)', 1, '[{\"added\": {}}]', 10, 1),
(11, '2024-09-18 06:09:46.829165', '2', 'FacultyController object (2)', 1, '[{\"added\": {}}]', 10, 1),
(12, '2024-09-18 06:09:54.155340', '3', 'FacultyController object (3)', 1, '[{\"added\": {}}]', 10, 1),
(13, '2024-09-27 10:09:28.971206', '5', 'mehedicse16', 1, '[{\"added\": {}}]', 4, 1),
(14, '2024-09-27 10:10:10.363927', '1', '1', 1, '[{\"added\": {}}]', 8, 1),
(15, '2024-09-27 10:10:14.805054', '2', '2', 1, '[{\"added\": {}}]', 8, 1),
(16, '2024-09-27 10:10:19.235193', '3', '3', 1, '[{\"added\": {}}]', 8, 1),
(17, '2024-09-27 10:10:23.771276', '4', '4', 1, '[{\"added\": {}}]', 8, 1),
(18, '2024-09-27 10:10:27.528783', '5', '5', 1, '[{\"added\": {}}]', 8, 1),
(19, '2024-09-27 10:10:34.667522', '6', '6', 1, '[{\"added\": {}}]', 8, 1),
(20, '2024-09-27 10:10:37.616858', '7', '7', 1, '[{\"added\": {}}]', 8, 1),
(21, '2024-09-27 10:10:40.015025', '8', '8', 1, '[{\"added\": {}}]', 8, 1),
(22, '2024-09-27 10:11:25.255391', '1', 'Student object (1)', 1, '[{\"added\": {}}]', 14, 1),
(23, '2024-09-27 16:28:37.175505', 'CIT-111', 'CIT-111', 1, '[{\"added\": {}}]', 11, 1),
(24, '2024-09-27 16:49:30.652281', 'CIT-111', 'CIT-111', 3, '', 11, 1),
(25, '2024-09-29 00:33:56.413905', 'ACM-111', 'ACM-111', 1, '[{\"added\": {}}]', 11, 1),
(26, '2024-09-29 01:19:07.982353', '5', 'mehedicse16', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\"]}}]', 4, 1),
(27, '2024-09-29 01:33:11.656924', '6', 'murad.cce', 1, '[{\"added\": {}}]', 4, 1),
(28, '2024-09-29 01:34:16.058306', '6', 'murad.cce', 3, '', 4, 1),
(29, '2024-09-29 01:35:51.446082', '7', 'murad.cce', 1, '[{\"added\": {}}]', 4, 1),
(30, '2024-09-29 01:36:45.104017', '7', 'murad.cce', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\"]}}]', 4, 1),
(31, '2024-09-29 01:37:45.274061', '1', 'Computer and Communication Engineering', 1, '[{\"added\": {}}]', 9, 1),
(32, '2024-09-29 01:39:31.693803', '1', 'Teacher object (1)', 1, '[{\"added\": {}}]', 12, 1),
(33, '2024-09-29 02:21:55.532887', '2', 'Computer Science and Information Technology', 1, '[{\"added\": {}}]', 9, 1),
(34, '2024-09-29 02:22:07.175516', '3', 'Electrical and Electronics Engineering', 1, '[{\"added\": {}}]', 9, 1),
(35, '2024-09-29 02:24:07.928157', '1', 'Teacher object (1)', 2, '[{\"changed\": {\"fields\": [\"Phone number\"]}}]', 12, 1),
(36, '2024-09-29 03:17:35.547518', '7', 'murad.cce', 3, '', 4, 1),
(37, '2024-09-29 03:17:47.862085', '5', 'mehedicse16', 3, '', 4, 1),
(38, '2024-09-29 03:46:48.825082', '9', 'murad.cce', 3, '', 4, 1),
(39, '2024-09-29 03:51:19.325953', '11', 'murad.cce', 3, '', 4, 1),
(40, '2024-09-29 03:54:05.783939', '13', 'murad.cce', 3, '', 4, 1),
(41, '2024-09-29 03:56:53.881772', '13', 'fdgsdfgsfgsfg', 3, '', 9, 1),
(42, '2024-09-29 05:23:40.747570', '15', 'mehedi.cse16', 1, '[{\"added\": {}}]', 4, 1),
(43, '2024-09-29 05:24:44.000302', '15', 'mehedi.cse16', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\"]}}]', 4, 1),
(44, '2024-09-29 05:26:58.181915', '15', 'mehedi.cse16', 3, '', 4, 1),
(45, '2024-09-29 05:31:30.108009', '16', 'mehedi.cse16', 1, '[{\"added\": {}}]', 4, 1),
(46, '2024-09-29 05:31:47.980343', '16', 'mehedi.cse16', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\"]}}]', 4, 1),
(47, '2024-09-29 05:35:59.915672', '2', 'Student object (2)', 1, '[{\"added\": {}}]', 14, 1),
(48, '2024-10-06 08:11:07.943537', 'PHY-112', 'PHY-112', 2, '[{\"changed\": {\"fields\": [\"Course title\"]}}]', 11, 1),
(49, '2024-10-06 16:13:14.485656', '6', 'Student object (6)', 2, '[{\"changed\": {\"fields\": [\"Curr semester\"]}}]', 14, 1),
(50, '2024-10-06 16:59:43.912857', '2', 'Course_Mark object (2)', 3, '', 15, 1),
(51, '2024-10-06 16:59:53.271656', '1', 'Course_Mark object (1)', 3, '', 15, 1),
(52, '2024-10-10 10:06:15.053248', '6', 'Student object (6)', 2, '[{\"changed\": {\"fields\": [\"Curr semester\"]}}]', 14, 1),
(53, '2024-10-11 04:39:06.580500', '20', 'mehedi.cse.16', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1),
(54, '2024-10-11 04:39:40.855480', '23', 'simanto.cse.16', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1),
(55, '2024-10-13 09:41:29.112672', '1', 'Exam_Period object (1)', 1, '[{\"added\": {}}]', 17, 1),
(56, '2024-10-13 11:26:24.034651', '1', 'Exam_Period object (1)', 2, '[{\"changed\": {\"fields\": [\"Period\"]}}]', 17, 1),
(57, '2024-10-13 11:26:48.263201', '1', 'Exam_Period object (1)', 2, '[{\"changed\": {\"fields\": [\"Period\"]}}]', 17, 1),
(58, '2024-10-13 13:30:55.903596', '1', 'Exam_Period object (1)', 2, '[{\"changed\": {\"fields\": [\"Period\"]}}]', 17, 1),
(59, '2024-10-14 04:43:32.826667', '1', 'Exam_Period object (1)', 2, '[{\"changed\": {\"fields\": [\"Period\"]}}]', 17, 1),
(60, '2024-10-14 05:10:27.826819', '1', 'Exam_Period object (1)', 2, '[{\"changed\": {\"fields\": [\"Period\"]}}]', 17, 1),
(61, '2024-10-14 05:10:45.886209', '1', 'Exam_Period object (1)', 2, '[{\"changed\": {\"fields\": [\"Period\"]}}]', 17, 1),
(62, '2024-10-14 05:37:00.445753', '1', 'Exam_Period object (1)', 2, '[{\"changed\": {\"fields\": [\"Period\"]}}]', 17, 1),
(63, '2024-10-14 05:37:53.203256', '1', 'Exam_Period object (1)', 2, '[{\"changed\": {\"fields\": [\"Period\"]}}]', 17, 1),
(64, '2024-10-14 05:39:08.160947', '1', 'Exam_Period object (1)', 2, '[{\"changed\": {\"fields\": [\"Period\"]}}]', 17, 1),
(65, '2024-10-14 05:57:43.564284', '1', 'Exam_Period object (1)', 2, '[{\"changed\": {\"fields\": [\"Period\"]}}]', 17, 1),
(66, '2024-10-21 05:15:53.959101', '1', 'Exam_Period object (1)', 2, '[{\"changed\": {\"fields\": [\"Period\"]}}]', 17, 1),
(67, '2024-10-21 05:17:41.746722', '1', 'Exam_Period object (1)', 2, '[{\"changed\": {\"fields\": [\"Period\"]}}]', 17, 1),
(68, '2024-10-21 05:26:46.785483', '1', 'Exam_Period object (1)', 2, '[{\"changed\": {\"fields\": [\"Period\"]}}]', 17, 1),
(69, '2024-10-21 05:28:16.370202', '1', 'Exam_Period object (1)', 2, '[{\"changed\": {\"fields\": [\"Period\"]}}]', 17, 1),
(70, '2024-10-21 05:33:22.160245', '1', 'Exam_Period object (1)', 2, '[{\"changed\": {\"fields\": [\"Period\"]}}]', 17, 1),
(71, '2024-10-21 08:10:50.345636', '1', 'Exam_Period object (1)', 2, '[{\"changed\": {\"fields\": [\"Period\"]}}]', 17, 1),
(72, '2024-10-21 08:17:09.384188', '1', 'Exam_Period object (1)', 2, '[{\"changed\": {\"fields\": [\"Period\"]}}]', 17, 1),
(73, '2024-10-21 08:17:28.629980', '1', 'Exam_Period object (1)', 2, '[{\"changed\": {\"fields\": [\"Period\"]}}]', 17, 1),
(74, '2024-10-21 09:02:44.339286', '1', 'Exam_Period object (1)', 2, '[{\"changed\": {\"fields\": [\"Period\"]}}]', 17, 1),
(75, '2024-10-21 09:05:31.936066', '8', 'Student object (8)', 2, '[{\"changed\": {\"fields\": [\"Curr semester\"]}}]', 14, 1),
(76, '2024-10-21 09:05:38.132852', '7', 'Student object (7)', 2, '[{\"changed\": {\"fields\": [\"Curr semester\"]}}]', 14, 1),
(77, '2024-10-21 09:07:43.475254', '6', 'Student object (6)', 2, '[{\"changed\": {\"fields\": [\"Curr semester\"]}}]', 14, 1),
(78, '2024-10-21 09:08:54.065082', '7', 'Student object (7)', 2, '[{\"changed\": {\"fields\": [\"Curr semester\"]}}]', 14, 1),
(79, '2024-10-21 15:53:48.093930', '7', 'Student object (7)', 2, '[{\"changed\": {\"fields\": [\"Curr semester\"]}}]', 14, 1),
(80, '2024-10-21 15:57:29.286588', '1', 'Exam_Period object (1)', 2, '[{\"changed\": {\"fields\": [\"Period\"]}}]', 17, 1),
(81, '2024-10-21 16:02:35.883125', '8', 'Student object (8)', 2, '[{\"changed\": {\"fields\": [\"Curr semester\"]}}]', 14, 1),
(82, '2024-10-21 16:02:39.723556', '7', 'Student object (7)', 2, '[{\"changed\": {\"fields\": [\"Curr semester\"]}}]', 14, 1),
(83, '2024-10-21 16:02:43.469425', '6', 'Student object (6)', 2, '[{\"changed\": {\"fields\": [\"Curr semester\"]}}]', 14, 1),
(84, '2024-10-21 16:04:34.656943', '8', 'Student object (8)', 2, '[{\"changed\": {\"fields\": [\"Curr semester\"]}}]', 14, 1),
(85, '2024-10-21 16:04:36.745907', '7', 'Student object (7)', 2, '[{\"changed\": {\"fields\": [\"Curr semester\"]}}]', 14, 1),
(86, '2024-10-21 16:04:41.650672', '6', 'Student object (6)', 2, '[{\"changed\": {\"fields\": [\"Curr semester\"]}}]', 14, 1),
(87, '2024-10-21 16:07:01.486953', '4', 'Course_Instructor object (4)', 3, '', 13, 1),
(88, '2024-10-21 16:07:01.486953', '1', 'Course_Instructor object (1)', 3, '', 13, 1),
(89, '2024-10-21 16:07:37.159613', '1', 'Exam_Period object (1)', 2, '[{\"changed\": {\"fields\": [\"Period\"]}}]', 17, 1),
(90, '2024-10-21 16:24:43.096463', '65', 'Course_Mark object (65)', 3, '', 15, 1),
(91, '2024-10-21 16:24:43.096463', '63', 'Course_Mark object (63)', 3, '', 15, 1),
(92, '2024-10-21 16:24:43.096463', '61', 'Course_Mark object (61)', 3, '', 15, 1),
(93, '2024-10-21 16:24:43.096463', '59', 'Course_Mark object (59)', 3, '', 15, 1),
(94, '2024-10-21 16:24:43.096463', '57', 'Course_Mark object (57)', 3, '', 15, 1),
(95, '2024-10-21 16:24:43.096463', '55', 'Course_Mark object (55)', 3, '', 15, 1),
(96, '2024-10-21 16:24:43.096463', '53', 'Course_Mark object (53)', 3, '', 15, 1),
(97, '2024-10-21 16:24:43.096463', '51', 'Course_Mark object (51)', 3, '', 15, 1),
(98, '2024-10-21 16:24:43.096463', '49', 'Course_Mark object (49)', 3, '', 15, 1),
(99, '2024-10-21 17:56:23.831694', '8', 'Student object (8)', 2, '[{\"changed\": {\"fields\": [\"Curr semester\"]}}]', 14, 1),
(100, '2024-10-21 17:56:33.881616', '7', 'Student object (7)', 2, '[{\"changed\": {\"fields\": [\"Curr semester\"]}}]', 14, 1),
(101, '2024-10-21 17:56:40.188312', '6', 'Student object (6)', 2, '[{\"changed\": {\"fields\": [\"Curr semester\"]}}]', 14, 1),
(102, '2024-10-21 18:47:38.886906', '28', 'adnan.cse.15', 3, '', 4, 1),
(103, '2024-10-21 18:54:12.943945', '10', 'Student object (10)', 2, '[{\"changed\": {\"fields\": [\"Curr semester\"]}}]', 14, 1),
(104, '2024-10-21 18:54:16.635722', '7', 'Student object (7)', 2, '[{\"changed\": {\"fields\": [\"Curr semester\"]}}]', 14, 1),
(105, '2024-10-21 18:54:20.686473', '6', 'Student object (6)', 2, '[{\"changed\": {\"fields\": [\"Curr semester\"]}}]', 14, 1),
(106, '2024-10-23 08:25:52.176941', '1', 'Payment object (1)', 1, '[{\"added\": {}}]', 18, 1),
(107, '2024-10-23 08:26:03.601810', '2', 'Payment object (2)', 1, '[{\"added\": {}}]', 18, 1),
(108, '2024-10-23 08:26:11.418186', '3', 'Payment object (3)', 1, '[{\"added\": {}}]', 18, 1),
(109, '2024-10-23 08:26:18.775872', '4', 'Payment object (4)', 1, '[{\"added\": {}}]', 18, 1),
(110, '2024-10-23 08:26:36.482975', '5', 'Payment object (5)', 1, '[{\"added\": {}}]', 18, 1),
(111, '2024-10-23 08:26:40.123882', '6', 'Payment object (6)', 1, '[{\"added\": {}}]', 18, 1),
(112, '2024-10-23 08:26:45.459267', '7', 'Payment object (7)', 1, '[{\"added\": {}}]', 18, 1),
(113, '2024-10-23 08:42:13.064627', '12', 'Student object (12)', 2, '[{\"changed\": {\"fields\": [\"Curr semester\"]}}]', 14, 1),
(114, '2024-10-23 08:42:25.779101', '11', 'Student object (11)', 2, '[{\"changed\": {\"fields\": [\"Curr semester\"]}}]', 14, 1),
(115, '2024-10-23 08:42:32.381420', '10', 'Student object (10)', 2, '[{\"changed\": {\"fields\": [\"Curr semester\"]}}]', 14, 1),
(116, '2024-10-23 08:42:38.154427', '9', 'Student object (9)', 2, '[{\"changed\": {\"fields\": [\"Curr semester\"]}}]', 14, 1),
(117, '2024-10-23 08:42:46.810438', '7', 'Student object (7)', 2, '[{\"changed\": {\"fields\": [\"Curr semester\"]}}]', 14, 1),
(118, '2024-10-23 08:42:52.625388', '6', 'Student object (6)', 2, '[{\"changed\": {\"fields\": [\"Curr semester\"]}}]', 14, 1),
(119, '2024-10-23 08:44:06.841982', '1', 'Exam_Period object (1)', 2, '[{\"changed\": {\"fields\": [\"Period\"]}}]', 17, 1),
(120, '2024-10-23 08:45:15.425608', '6', 'Student object (6)', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 14, 1),
(121, '2024-10-23 08:45:27.734304', '6', 'Student object (6)', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 14, 1),
(122, '2024-10-23 08:51:17.106665', '6', 'Student object (6)', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 14, 1),
(123, '2024-10-23 08:58:51.819919', '6', 'Student object (6)', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 14, 1),
(124, '2024-10-23 08:59:20.323795', '1', 'Exam_Period object (1)', 2, '[{\"changed\": {\"fields\": [\"Period\"]}}]', 17, 1),
(125, '2024-10-23 09:00:13.807120', '6', 'Student object (6)', 2, '[{\"changed\": {\"fields\": [\"Curr semester\"]}}]', 14, 1),
(126, '2024-10-23 16:23:05.686201', '22', 'Course_Instructor object (22)', 3, '', 13, 1),
(127, '2024-10-23 16:23:05.686201', '21', 'Course_Instructor object (21)', 3, '', 13, 1),
(128, '2024-10-23 16:23:05.686201', '20', 'Course_Instructor object (20)', 3, '', 13, 1),
(129, '2024-10-23 16:23:05.686201', '19', 'Course_Instructor object (19)', 3, '', 13, 1),
(130, '2024-10-23 16:23:05.686201', '18', 'Course_Instructor object (18)', 3, '', 13, 1),
(131, '2024-10-23 16:23:05.686201', '17', 'Course_Instructor object (17)', 3, '', 13, 1),
(132, '2024-10-23 16:23:05.686201', '16', 'Course_Instructor object (16)', 3, '', 13, 1),
(133, '2024-10-23 16:23:05.686201', '15', 'Course_Instructor object (15)', 3, '', 13, 1),
(134, '2024-10-23 16:23:05.686201', '14', 'Course_Instructor object (14)', 3, '', 13, 1),
(135, '2024-10-23 16:23:05.686201', '13', 'Course_Instructor object (13)', 3, '', 13, 1),
(136, '2024-10-23 16:29:21.017370', '1', 'Exam_Period object (1)', 2, '[{\"changed\": {\"fields\": [\"Period\"]}}]', 17, 1),
(137, '2024-10-23 16:31:34.202117', '7', 'Student object (7)', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 14, 1),
(138, '2024-10-23 16:42:08.675469', '1', 'Exam_Period object (1)', 2, '[{\"changed\": {\"fields\": [\"Period\"]}}]', 17, 1),
(139, '2024-10-23 16:43:17.857719', '1', 'Exam_Period object (1)', 2, '[{\"changed\": {\"fields\": [\"Period\"]}}]', 17, 1),
(140, '2024-10-23 16:44:12.347395', '6', 'Student object (6)', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 14, 1),
(141, '2024-10-23 16:44:16.233131', '7', 'Student object (7)', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 14, 1),
(142, '2024-10-23 17:41:07.841214', '1', 'Exam_Period object (1)', 2, '[{\"changed\": {\"fields\": [\"Period\"]}}]', 17, 1),
(143, '2024-10-23 17:43:02.023558', '7', 'Student object (7)', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 14, 1),
(144, '2024-10-23 17:43:05.736337', '6', 'Student object (6)', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 14, 1),
(145, '2024-10-23 17:48:31.602715', '1', 'Exam_Period object (1)', 2, '[{\"changed\": {\"fields\": [\"Period\"]}}]', 17, 1),
(146, '2024-10-23 18:07:20.841566', '7', 'Student object (7)', 2, '[{\"changed\": {\"fields\": [\"Curr semester\"]}}]', 14, 1),
(147, '2024-10-23 18:08:04.355898', '7', 'Student object (7)', 2, '[{\"changed\": {\"fields\": [\"Curr semester\"]}}]', 14, 1),
(148, '2024-10-23 18:11:14.109875', '7', 'Student object (7)', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 14, 1),
(149, '2024-10-23 18:11:35.761106', '7', 'Student object (7)', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 14, 1),
(150, '2024-10-23 18:12:58.817633', '6', 'Student object (6)', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 14, 1),
(151, '2024-10-23 18:13:02.551792', '7', 'Student object (7)', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 14, 1),
(152, '2024-10-23 18:19:03.484572', '1', 'Exam_Period object (1)', 2, '[{\"changed\": {\"fields\": [\"Period\"]}}]', 17, 1),
(153, '2024-10-23 18:25:27.221750', '1', 'Exam_Period object (1)', 2, '[{\"changed\": {\"fields\": [\"Period\"]}}]', 17, 1),
(154, '2024-10-23 18:26:29.531338', '1', 'Exam_Period object (1)', 2, '[{\"changed\": {\"fields\": [\"Period\"]}}]', 17, 1),
(155, '2024-10-23 18:30:25.931396', '1', 'Exam_Period object (1)', 2, '[{\"changed\": {\"fields\": [\"Period\"]}}]', 17, 1),
(156, '2024-10-23 18:30:53.878975', '7', 'Student object (7)', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 14, 1),
(157, '2024-10-23 18:30:57.591964', '6', 'Student object (6)', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 14, 1),
(158, '2024-10-23 18:31:19.040398', '1', 'Exam_Period object (1)', 2, '[{\"changed\": {\"fields\": [\"Period\"]}}]', 17, 1),
(159, '2024-10-23 18:41:24.482780', '1', 'Exam_Period object (1)', 2, '[{\"changed\": {\"fields\": [\"Period\"]}}]', 17, 1),
(160, '2024-10-23 18:41:40.300324', '6', 'Student object (6)', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 14, 1),
(161, '2024-10-23 18:41:44.332474', '7', 'Student object (7)', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 14, 1),
(162, '2024-10-23 18:45:31.059763', '34', 'sarna.cce', 2, '[{\"changed\": {\"fields\": [\"Username\", \"First name\"]}}]', 4, 1),
(163, '2024-10-23 18:48:45.888648', '1', 'Exam_Period object (1)', 2, '[{\"changed\": {\"fields\": [\"Period\"]}}]', 17, 1),
(164, '2024-10-23 18:53:05.058633', '1', 'Exam_Period object (1)', 2, '[{\"changed\": {\"fields\": [\"Period\"]}}]', 17, 1),
(165, '2024-10-23 18:53:45.835906', '6', 'Student object (6)', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 14, 1),
(166, '2024-10-23 18:53:49.593090', '7', 'Student object (7)', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 14, 1),
(167, '2024-10-24 04:08:03.292035', '12', 'Student object (12)', 2, '[{\"changed\": {\"fields\": [\"Curr semester\", \"Payment status\"]}}]', 14, 1),
(168, '2024-10-24 04:08:24.999794', '11', 'Student object (11)', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 14, 1),
(169, '2024-10-24 04:08:39.900075', '11', 'Student object (11)', 2, '[{\"changed\": {\"fields\": [\"Curr semester\"]}}]', 14, 1),
(170, '2024-10-24 04:08:52.785918', '10', 'Student object (10)', 2, '[{\"changed\": {\"fields\": [\"Curr semester\", \"Payment status\"]}}]', 14, 1),
(171, '2024-10-24 04:09:05.952766', '9', 'Student object (9)', 2, '[{\"changed\": {\"fields\": [\"Curr semester\", \"Payment status\"]}}]', 14, 1),
(172, '2024-10-24 04:09:23.701225', '1', 'Exam_Period object (1)', 2, '[{\"changed\": {\"fields\": [\"Period\"]}}]', 17, 1),
(173, '2024-10-24 04:13:46.319602', '1', 'Exam_Period object (1)', 2, '[{\"changed\": {\"fields\": [\"Period\"]}}]', 17, 1),
(174, '2024-10-24 04:15:21.166234', '1', 'Exam_Period object (1)', 2, '[{\"changed\": {\"fields\": [\"Period\"]}}]', 17, 1),
(175, '2024-10-24 04:17:00.693578', '1', 'Exam_Period object (1)', 2, '[{\"changed\": {\"fields\": [\"Period\"]}}]', 17, 1),
(176, '2024-10-24 04:18:14.289566', '1', 'Exam_Period object (1)', 2, '[{\"changed\": {\"fields\": [\"Period\"]}}]', 17, 1),
(177, '2024-10-24 04:18:34.668570', '12', 'Student object (12)', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 14, 1),
(178, '2024-10-24 04:18:46.691225', '11', 'Student object (11)', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 14, 1),
(179, '2024-10-24 05:20:15.491005', '12', 'Student object (12)', 2, '[{\"changed\": {\"fields\": [\"Curr semester\"]}}]', 14, 1),
(180, '2024-10-24 05:20:24.548361', '11', 'Student object (11)', 2, '[{\"changed\": {\"fields\": [\"Curr semester\"]}}]', 14, 1),
(181, '2024-10-24 05:20:43.511104', '10', 'Student object (10)', 2, '[{\"changed\": {\"fields\": [\"Curr semester\", \"Payment status\"]}}]', 14, 1),
(182, '2024-10-24 05:25:46.178411', '9', 'Student object (9)', 2, '[{\"changed\": {\"fields\": [\"Curr semester\", \"Payment status\"]}}]', 14, 1),
(183, '2024-10-24 13:45:50.031645', '1', 'Exam_Period object (1)', 2, '[{\"changed\": {\"fields\": [\"Period\"]}}]', 17, 1),
(184, '2024-10-24 17:12:27.761133', '1', 'Special_Repeat object (1)', 1, '[{\"added\": {}}]', 19, 1),
(185, '2024-10-24 17:53:05.666912', '1', 'Special_Repeat object (1)', 2, '[{\"changed\": {\"fields\": [\"Special period\"]}}]', 19, 1),
(186, '2024-10-24 18:01:15.027504', '86', 'Course_Instructor object (86)', 3, '', 13, 1),
(187, '2024-10-24 18:04:20.657584', '87', 'Course_Instructor object (87)', 3, '', 13, 1),
(188, '2024-10-24 18:09:26.982770', '88', 'Course_Instructor object (88)', 3, '', 13, 1),
(189, '2024-10-25 08:48:07.868926', '1', 'Special_Course_Instructor object (1)', 3, '', 20, 1),
(190, '2024-10-25 08:49:02.423094', '1', 'Exam_Period object (1)', 2, '[{\"changed\": {\"fields\": [\"Period\"]}}]', 17, 1),
(191, '2024-10-25 08:50:02.790859', '1', 'Exam_Period object (1)', 2, '[{\"changed\": {\"fields\": [\"Period\"]}}]', 17, 1),
(192, '2024-10-25 09:01:59.759778', '1', 'Exam_Period object (1)', 2, '[{\"changed\": {\"fields\": [\"Period\"]}}]', 17, 1),
(193, '2024-10-25 09:05:08.689341', '53', 'Course_Instructor object (53)', 3, '', 13, 1),
(194, '2024-10-25 10:57:51.716667', '1', 'Exam_Period object (1)', 2, '[{\"changed\": {\"fields\": [\"Period\"]}}]', 17, 1),
(195, '2024-10-25 12:24:18.371530', '1', 'Exam_Period object (1)', 2, '[{\"changed\": {\"fields\": [\"Period\"]}}]', 17, 1),
(196, '2024-10-25 13:00:50.561785', '1', 'Exam_Period object (1)', 2, '[{\"changed\": {\"fields\": [\"Period\"]}}]', 17, 1),
(197, '2024-10-25 13:05:19.158887', '1', 'Exam_Period object (1)', 2, '[{\"changed\": {\"fields\": [\"Period\"]}}]', 17, 1),
(198, '2024-10-25 13:05:28.949175', '1', 'Special_Repeat object (1)', 2, '[{\"changed\": {\"fields\": [\"Special period\"]}}]', 19, 1),
(199, '2024-10-25 13:07:42.498480', '1', 'Special_Repeat object (1)', 2, '[{\"changed\": {\"fields\": [\"Special period\"]}}]', 19, 1),
(200, '2024-10-25 13:07:50.339120', '1', 'Exam_Period object (1)', 2, '[{\"changed\": {\"fields\": [\"Period\"]}}]', 17, 1),
(201, '2024-10-25 13:10:46.559633', '1', 'Exam_Period object (1)', 2, '[{\"changed\": {\"fields\": [\"Period\"]}}]', 17, 1),
(202, '2024-10-25 13:10:51.657097', '1', 'Special_Repeat object (1)', 2, '[{\"changed\": {\"fields\": [\"Special period\"]}}]', 19, 1),
(203, '2024-10-25 16:09:07.784037', '1', 'Special_Repeat object (1)', 2, '[{\"changed\": {\"fields\": [\"Special period\"]}}]', 19, 1),
(204, '2024-10-25 17:04:27.703323', '7', 'Student object (7)', 2, '[{\"changed\": {\"fields\": [\"Curr semester\"]}}]', 14, 1),
(205, '2024-10-25 17:04:53.744694', '7', 'Student object (7)', 2, '[{\"changed\": {\"fields\": [\"Curr semester\"]}}]', 14, 1),
(206, '2024-10-25 17:38:15.498961', 'CCE-223', 'CCE-223', 2, '[{\"changed\": {\"fields\": [\"Credit hour\"]}}]', 11, 1),
(207, '2024-10-25 17:50:33.436215', '1', 'Exam_Period object (1)', 2, '[{\"changed\": {\"fields\": [\"Period\"]}}]', 17, 1),
(208, '2024-10-25 17:50:46.206470', '1', 'Special_Repeat object (1)', 2, '[{\"changed\": {\"fields\": [\"Special period\"]}}]', 19, 1),
(209, '2024-10-25 18:08:22.461060', '1', 'Exam_Period object (1)', 2, '[{\"changed\": {\"fields\": [\"Period\"]}}]', 17, 1),
(210, '2024-10-25 18:23:51.026984', '64', 'Course_Mark object (64)', 3, '', 15, 1),
(211, '2024-10-25 18:23:51.026984', '62', 'Course_Mark object (62)', 3, '', 15, 1),
(212, '2024-10-25 18:23:51.026984', '60', 'Course_Mark object (60)', 3, '', 15, 1),
(213, '2024-10-25 18:23:51.026984', '58', 'Course_Mark object (58)', 3, '', 15, 1),
(214, '2024-10-25 18:23:51.026984', '56', 'Course_Mark object (56)', 3, '', 15, 1),
(215, '2024-10-25 18:23:51.026984', '54', 'Course_Mark object (54)', 3, '', 15, 1),
(216, '2024-10-25 18:23:51.027981', '52', 'Course_Mark object (52)', 3, '', 15, 1),
(217, '2024-10-25 18:23:51.027981', '50', 'Course_Mark object (50)', 3, '', 15, 1),
(218, '2024-10-25 18:23:51.027981', '48', 'Course_Mark object (48)', 3, '', 15, 1),
(219, '2024-10-25 18:24:15.092003', '5', 'Semester_Result object (5)', 3, '', 16, 1),
(220, '2024-10-26 09:32:26.883696', '1', 'Cost Details: Admission Fee - 300, Enrollment Fee - 200, Cost per Credit - 75, Electricity - 120', 1, '[{\"added\": {}}]', 21, 1),
(221, '2024-10-26 10:14:45.366501', '29', 'adnan.cse.16', 2, '[{\"changed\": {\"fields\": [\"Username\"]}}]', 4, 1),
(222, '2024-10-26 15:43:03.860241', '8', 'Student object (8)', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 14, 1),
(223, '2024-10-26 15:45:36.224210', '8', 'Student object (8)', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 14, 1),
(224, '2024-10-26 16:14:01.197772', '1', 'Student_Transaction object (1)', 3, '', 22, 1),
(225, '2024-10-26 16:14:11.850389', '8', 'Student object (8)', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 14, 1),
(226, '2024-10-26 16:26:58.417361', '8', 'Student object (8)', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 14, 1),
(227, '2024-10-26 16:27:05.658396', '2', 'Student_Transaction object (2)', 3, '', 22, 1),
(228, '2024-10-26 16:31:26.698965', '8', 'Student object (8)', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 14, 1),
(229, '2024-10-26 16:31:40.691509', '3', 'Student_Transaction object (3)', 3, '', 22, 1),
(230, '2024-10-26 16:33:25.937494', '4', 'Student_Transaction object (4)', 3, '', 22, 1),
(231, '2024-10-26 16:33:34.105806', '8', 'Student object (8)', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 14, 1),
(232, '2024-10-26 17:11:15.181963', '5', 'TXN242138.7500KC0SHH3T8PLM - 2138.75 - 2024-10-26 17:10:57', 3, '', 22, 1),
(233, '2024-10-26 17:11:29.810030', '8', 'Student object (8)', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 14, 1),
(234, '2024-10-26 17:16:20.500078', '6', 'TXN242138.750098JE07BX8P5P - 2138.75 - 2024-10-26 17:11:52', 3, '', 22, 1),
(235, '2024-10-26 17:16:28.148541', '8', 'Student object (8)', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 14, 1),
(236, '2024-10-26 17:37:35.131535', '7', 'TXN242138.7500RQP933WBT0KQ - 2138.75 - 2024-10-26 17:16:46', 3, '', 22, 1),
(237, '2024-10-26 17:37:47.553563', '8', 'Student object (8)', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 14, 1),
(238, '2024-10-26 17:40:20.674844', '8', 'TXN242138.7500D3F18WPPNWG9 - 2138.75 - 2024-10-26 17:37:59', 3, '', 22, 1),
(239, '2024-10-26 17:40:29.643645', '8', 'Student object (8)', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 14, 1),
(240, '2024-10-26 17:44:14.151412', '9', 'TXN242138.7500DEJ3U2LSM19T - 2138.75 - 2024-10-26 23:40:48', 3, '', 22, 1),
(241, '2024-10-26 17:44:53.170712', '8', 'Student object (8)', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 14, 1),
(242, '2024-10-26 19:34:05.181831', '8', 'Student object (8)', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 14, 1),
(243, '2024-10-26 19:34:23.111347', '10', 'TXN242138.75004D67D388TJ57 - 2138.75 - 2024-10-26 17:45:12', 3, '', 22, 1),
(244, '2024-10-27 08:32:26.645728', '13', 'Student object (13)', 3, '', 14, 1),
(245, '2024-10-27 08:33:00.208474', '36', 'simanto.csit', 3, '', 4, 1),
(246, '2024-10-27 08:33:00.208474', '37', 'sohag.cse.17', 3, '', 4, 1),
(247, '2024-10-27 08:34:41.087677', '29', 'adnan.cse.16', 2, '[{\"changed\": {\"fields\": [\"Email address\"]}}]', 4, 1),
(248, '2024-10-27 08:35:10.048066', '25', 'fiad.cse.15', 2, '[{\"changed\": {\"fields\": [\"Email address\"]}}]', 4, 1),
(249, '2024-10-27 08:35:30.290070', '26', 'mithil.cse.16', 2, '[{\"changed\": {\"fields\": [\"Email address\"]}}]', 4, 1),
(250, '2024-10-27 08:35:46.267061', '23', 'simanto.cse.16', 2, '[{\"changed\": {\"fields\": [\"Email address\"]}}]', 4, 1),
(251, '2024-10-27 08:36:00.409823', '24', 'sohag.cse.15', 2, '[{\"changed\": {\"fields\": [\"Email address\"]}}]', 4, 1),
(252, '2024-10-27 08:51:18.793238', '11', 'TXN242138.7500PA9XIZX3OZOX - 2138.75 - 2024-10-26 19:35:11', 3, '', 22, 1),
(253, '2024-10-27 08:51:30.841212', '8', 'Student object (8)', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 14, 1),
(254, '2024-10-27 08:54:16.285960', '8', 'Student object (8)', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 14, 1),
(255, '2024-10-27 08:54:24.855557', '12', 'TXN242138.750062GEVYNZIZNR - 2138.75 - 2024-10-27 08:51:52', 3, '', 22, 1),
(256, '2024-10-27 09:23:29.722188', '8', 'Student object (8)', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 14, 1),
(257, '2024-10-27 09:23:35.512578', '13', 'TXN242138.75007T8VVVM7QOB9 - 2138.75 - 2024-10-27 08:54:44', 3, '', 22, 1),
(258, '2024-10-27 11:39:32.014811', '8', 'Student object (8)', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 14, 1),
(259, '2024-10-27 11:39:41.000360', '14', 'TXN242138.7500YZN0UADCHJAU - 2138.75 - 2024-10-27 09:23:54', 3, '', 22, 1),
(260, '2024-10-27 12:06:23.545433', '8', 'Student object (8)', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 14, 1),
(261, '2024-10-27 12:06:37.780489', '16', 'TXN242138.7500YFXK363KFKC9 - 2138.75 - 2024-10-27 12:05:57', 3, '', 22, 1),
(262, '2024-10-27 12:06:37.780489', '15', 'TXN242138.7500YFXK363KFKC9 - 2138.75 - 2024-10-27 12:05:55', 3, '', 22, 1),
(263, '2024-10-27 12:08:56.961010', '23', 'TXN242138.7500JA075H5UYVG4 - 2138.75 - 2024-10-27 12:07:18', 3, '', 22, 1),
(264, '2024-10-27 12:08:56.961010', '22', 'TXN242138.7500JA075H5UYVG4 - 2138.75 - 2024-10-27 12:07:18', 3, '', 22, 1),
(265, '2024-10-27 12:08:56.961010', '21', 'TXN242138.7500JA075H5UYVG4 - 2138.75 - 2024-10-27 12:07:18', 3, '', 22, 1),
(266, '2024-10-27 12:08:56.961010', '20', 'TXN242138.7500JA075H5UYVG4 - 2138.75 - 2024-10-27 12:07:16', 3, '', 22, 1),
(267, '2024-10-27 12:08:56.961010', '19', 'TXN242138.7500JA075H5UYVG4 - 2138.75 - 2024-10-27 12:07:16', 3, '', 22, 1),
(268, '2024-10-27 12:08:56.961010', '18', 'TXN242138.7500JA075H5UYVG4 - 2138.75 - 2024-10-27 12:07:15', 3, '', 22, 1),
(269, '2024-10-27 12:08:56.961010', '17', 'TXN242138.7500JA075H5UYVG4 - 2138.75 - 2024-10-27 12:07:13', 3, '', 22, 1),
(270, '2024-10-27 12:09:07.011616', '8', 'Student object (8)', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 14, 1),
(271, '2024-10-28 04:05:51.945789', '21', 'murad.cce', 2, '[{\"changed\": {\"fields\": [\"Email address\"]}}]', 4, 1),
(272, '2024-10-28 04:06:41.509224', '24', 'sohag.cse.15', 2, '[{\"changed\": {\"fields\": [\"Email address\"]}}]', 4, 1),
(273, '2024-10-28 04:12:09.812661', '1', 'Cost Details: Admission Fee - 300.00, Enrollment Fee - 200.00, Cost per Credit - 100, Electricity - 120.00', 2, '[{\"changed\": {\"fields\": [\"Cost per credit\"]}}]', 21, 1),
(274, '2024-10-28 04:33:54.181283', '8', 'Student object (8)', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 14, 1),
(275, '2024-10-28 04:34:18.819165', '25', 'TXN242138.7500URZ6I4DDIB5O - 2138.75 - 2024-10-28 04:09:35', 3, '', 22, 1),
(276, '2024-10-28 04:37:08.142895', '21', 'murad.cce', 2, '[{\"changed\": {\"fields\": [\"Email address\"]}}]', 4, 1),
(277, '2024-10-28 04:37:24.540892', '22', 'mahbubur.csit', 2, '[{\"changed\": {\"fields\": [\"Email address\"]}}]', 4, 1),
(278, '2024-10-28 04:37:36.764798', '24', 'sohag.cse.15', 2, '[{\"changed\": {\"fields\": [\"Email address\"]}}]', 4, 1),
(279, '2024-10-28 07:18:10.061883', '7', 'Student object (7)', 2, '[{\"changed\": {\"fields\": [\"Graduation status\"]}}]', 14, 1),
(280, '2024-10-28 07:18:16.384608', '6', 'Student object (6)', 2, '[{\"changed\": {\"fields\": [\"Graduation status\"]}}]', 14, 1),
(281, '2024-10-28 08:49:35.465704', '7', 'Student object (7)', 2, '[{\"changed\": {\"fields\": [\"Graduation status\"]}}]', 14, 1),
(282, '2024-10-28 08:49:42.393960', '6', 'Student object (6)', 2, '[{\"changed\": {\"fields\": [\"Graduation status\"]}}]', 14, 1),
(283, '2024-10-28 09:11:45.255932', '7', 'Student object (7)', 2, '[{\"changed\": {\"fields\": [\"Graduation status\"]}}]', 14, 1),
(284, '2024-10-28 09:11:49.953166', '6', 'Student object (6)', 2, '[{\"changed\": {\"fields\": [\"Graduation status\"]}}]', 14, 1),
(285, '2024-10-28 09:22:02.096298', '6', 'Student object (6)', 2, '[{\"changed\": {\"fields\": [\"Graduation status\"]}}]', 14, 1),
(286, '2024-10-28 09:22:06.698056', '7', 'Student object (7)', 2, '[{\"changed\": {\"fields\": [\"Graduation status\"]}}]', 14, 1),
(287, '2024-10-28 10:10:57.033230', '7', 'Student object (7)', 2, '[{\"changed\": {\"fields\": [\"Graduation status\"]}}]', 14, 1),
(288, '2024-10-28 10:11:03.103944', '6', 'Student object (6)', 2, '[{\"changed\": {\"fields\": [\"Graduation status\"]}}]', 14, 1),
(289, '2024-10-28 12:47:21.137598', '15', 'Student object (15)', 2, '[{\"changed\": {\"fields\": [\"Curr semester\"]}}]', 14, 1),
(290, '2024-10-28 12:47:31.767076', '14', 'Student object (14)', 2, '[{\"changed\": {\"fields\": [\"Curr semester\"]}}]', 14, 1),
(291, '2024-10-28 13:56:34.363549', '1', 'Cost Details: Admission Fee - 300.00, Enrollment Fee - 200.00, Cost per Credit - 75, Electricity - 120.00', 2, '[{\"changed\": {\"fields\": [\"Cost per credit\"]}}]', 21, 1),
(292, '2024-10-28 13:59:45.043439', '51', 'alim.cse.18', 2, '[{\"changed\": {\"fields\": [\"Email address\"]}}]', 4, 1),
(293, '2024-10-28 20:59:34.627850', '6', 'Student object (6)', 2, '[{\"changed\": {\"fields\": [\"Graduation status\"]}}]', 14, 1),
(294, '2024-10-28 20:59:38.292868', '7', 'Student object (7)', 2, '[{\"changed\": {\"fields\": [\"Graduation status\"]}}]', 14, 1),
(295, '2024-10-28 21:10:24.682995', '6', 'Student object (6)', 2, '[{\"changed\": {\"fields\": [\"Graduation status\"]}}]', 14, 1),
(296, '2024-10-28 21:10:28.861819', '7', 'Student object (7)', 2, '[{\"changed\": {\"fields\": [\"Graduation status\"]}}]', 14, 1),
(297, '2024-10-29 03:21:42.883811', '6', 'Student object (6)', 2, '[{\"changed\": {\"fields\": [\"Graduation status\"]}}]', 14, 1),
(298, '2024-10-29 03:21:48.894141', '7', 'Student object (7)', 2, '[{\"changed\": {\"fields\": [\"Graduation status\"]}}]', 14, 1),
(299, '2024-10-29 03:23:54.693565', '25', 'Student object (25)', 2, '[{\"changed\": {\"fields\": [\"Curr semester\"]}}]', 14, 1),
(300, '2024-10-29 03:24:20.114743', '23', 'Student object (23)', 2, '[{\"changed\": {\"fields\": [\"Curr semester\", \"Payment status\"]}}]', 14, 1),
(301, '2024-10-29 03:24:33.938165', '22', 'Student object (22)', 2, '[{\"changed\": {\"fields\": [\"Curr semester\", \"Payment status\"]}}]', 14, 1),
(302, '2024-10-29 03:24:42.380954', '21', 'Student object (21)', 2, '[{\"changed\": {\"fields\": [\"Curr semester\", \"Payment status\"]}}]', 14, 1),
(303, '2024-10-29 03:24:52.600557', '12', 'Student object (12)', 2, '[{\"changed\": {\"fields\": [\"Curr semester\", \"Payment status\"]}}]', 14, 1),
(304, '2024-10-29 03:25:01.695359', '11', 'Student object (11)', 2, '[{\"changed\": {\"fields\": [\"Curr semester\", \"Payment status\"]}}]', 14, 1),
(305, '2024-10-29 03:25:10.453008', '10', 'Student object (10)', 2, '[{\"changed\": {\"fields\": [\"Curr semester\"]}}]', 14, 1),
(306, '2024-10-29 03:25:23.406102', '9', 'Student object (9)', 2, '[{\"changed\": {\"fields\": [\"Curr semester\", \"Payment status\"]}}]', 14, 1),
(307, '2024-10-29 04:24:58.019564', '22', 'mahbubur.csit', 2, '[{\"changed\": {\"fields\": [\"Email address\"]}}]', 4, 1),
(308, '2025-05-15 18:32:24.553983', '8', 'Student object (8)', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 14, 1),
(309, '2025-05-15 18:36:25.284990', '28', 'TXN242138.75009THVSJEVXN5C - 2138.75 - 2024-10-29 04:44:58', 3, '', 22, 1),
(310, '2025-05-15 18:36:25.284990', '27', 'TXN242138.75009THVSJEVXN5C - 2138.75 - 2024-10-29 04:44:58', 3, '', 22, 1),
(311, '2026-01-03 11:09:19.508369', '8', 'Student object (8)', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 14, 1),
(312, '2026-01-03 11:12:19.037775', '8', 'Student object (8)', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 14, 1),
(313, '2026-01-03 13:10:29.726928', '8', 'Student object (8)', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 14, 1),
(314, '2026-01-03 13:22:20.207834', '8', 'Student object (8)', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 14, 1),
(315, '2026-01-03 13:24:34.002750', '8', 'Student object (8)', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 14, 1),
(316, '2026-01-03 15:19:28.643702', '8', 'Student object (8)', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 14, 1),
(317, '2026-01-03 15:21:55.407460', '8', 'Student object (8)', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 14, 1),
(318, '2026-01-03 15:23:13.554229', '8', 'Student object (8)', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 14, 1),
(319, '2026-01-03 15:24:02.044579', '8', 'Student object (8)', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 14, 1),
(320, '2026-01-03 15:26:27.293511', '8', 'Student object (8)', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 14, 1),
(321, '2026-01-03 15:32:12.961307', '8', 'Student object (8)', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 14, 1),
(322, '2026-01-03 15:33:34.984339', '8', 'Student object (8)', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 14, 1),
(323, '2026-01-03 15:34:17.197948', '8', 'Student object (8)', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 14, 1),
(324, '2026-01-03 15:35:01.334198', '6', 'Student object (6)', 2, '[{\"changed\": {\"fields\": [\"Curr semester\", \"Payment status\"]}}]', 14, 1),
(325, '2026-01-03 15:36:18.156523', '6', 'Student object (6)', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 14, 1),
(326, '2026-01-03 15:37:16.399441', '6', 'Student object (6)', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 14, 1),
(327, '2026-01-03 15:57:12.402662', '6', 'Student object (6)', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 14, 1),
(328, '2026-01-03 15:59:31.786288', '6', 'Student object (6)', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 14, 1);

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
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(21, 'FacultyApp', 'cost'),
(11, 'FacultyApp', 'course'),
(9, 'FacultyApp', 'department'),
(7, 'FacultyApp', 'faculty'),
(10, 'FacultyApp', 'facultycontroller'),
(8, 'FacultyApp', 'semester'),
(15, 'ResultApp', 'course_mark'),
(17, 'ResultApp', 'exam_period'),
(16, 'ResultApp', 'semester_result'),
(19, 'ResultApp', 'special_repeat'),
(6, 'sessions', 'session'),
(18, 'StudentApp', 'payment'),
(14, 'StudentApp', 'student'),
(22, 'StudentApp', 'student_transaction'),
(13, 'TeacherApp', 'course_instructor'),
(20, 'TeacherApp', 'special_course_instructor'),
(12, 'TeacherApp', 'teacher');

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
(1, 'contenttypes', '0001_initial', '2024-09-18 06:01:08.442215'),
(2, 'auth', '0001_initial', '2024-09-18 06:01:09.032343'),
(3, 'FacultyApp', '0001_initial', '2024-09-18 06:01:09.424570'),
(4, 'StudentApp', '0001_initial', '2024-09-18 06:01:09.670206'),
(5, 'ResultApp', '0001_initial', '2024-09-18 06:01:09.904515'),
(6, 'TeacherApp', '0001_initial', '2024-09-18 06:01:10.235141'),
(7, 'admin', '0001_initial', '2024-09-18 06:01:10.361694'),
(8, 'admin', '0002_logentry_remove_auto_add', '2024-09-18 06:01:10.377125'),
(9, 'admin', '0003_logentry_add_action_flag_choices', '2024-09-18 06:01:10.405212'),
(10, 'contenttypes', '0002_remove_content_type_name', '2024-09-18 06:01:10.541378'),
(11, 'auth', '0002_alter_permission_name_max_length', '2024-09-18 06:01:10.598611'),
(12, 'auth', '0003_alter_user_email_max_length', '2024-09-18 06:01:10.633822'),
(13, 'auth', '0004_alter_user_username_opts', '2024-09-18 06:01:10.653812'),
(14, 'auth', '0005_alter_user_last_login_null', '2024-09-18 06:01:10.717716'),
(15, 'auth', '0006_require_contenttypes_0002', '2024-09-18 06:01:10.723457'),
(16, 'auth', '0007_alter_validators_add_error_messages', '2024-09-18 06:01:10.735579'),
(17, 'auth', '0008_alter_user_username_max_length', '2024-09-18 06:01:10.779106'),
(18, 'auth', '0009_alter_user_last_name_max_length', '2024-09-18 06:01:10.819024'),
(19, 'auth', '0010_alter_group_name_max_length', '2024-09-18 06:01:10.863047'),
(20, 'auth', '0011_update_proxy_permissions', '2024-09-18 06:01:10.881857'),
(21, 'auth', '0012_alter_user_first_name_max_length', '2024-09-18 06:01:10.928870'),
(22, 'sessions', '0001_initial', '2024-09-18 06:01:10.983163'),
(23, 'FacultyApp', '0002_course_credit_hour', '2024-09-27 16:51:41.433952'),
(24, 'TeacherApp', '0002_teacher_phone_number', '2024-09-29 01:35:12.629191'),
(25, 'StudentApp', '0002_student_reg_no', '2024-09-29 05:30:55.461648'),
(26, 'ResultApp', '0002_semester_result_credit_earned_semester_result_remark', '2024-10-09 04:22:29.955925'),
(27, 'ResultApp', '0003_rename_credit_earned_semester_result_cumulative_credit_earned_and_more', '2024-10-10 09:21:30.760639'),
(28, 'ResultApp', '0004_course_mark_grade_point_course_mark_letter_grade', '2024-10-10 11:33:32.793772'),
(29, 'StudentApp', '0003_remove_student_cgpa', '2024-10-11 04:48:10.840030'),
(30, 'ResultApp', '0005_exam_period', '2024-10-13 09:35:58.199525'),
(31, 'StudentApp', '0004_payment', '2024-10-23 08:16:26.223767'),
(32, 'StudentApp', '0005_student_payment_status', '2024-10-23 08:41:55.133271'),
(33, 'FacultyApp', '0003_alter_course_course_title', '2024-10-23 16:13:28.428442'),
(34, 'ResultApp', '0006_alter_exam_period_period_special_repeat', '2024-10-24 17:11:55.352839'),
(35, 'TeacherApp', '0003_special_course_instructor', '2024-10-24 17:47:14.838006'),
(36, 'StudentApp', '0006_student_academic_status', '2024-10-25 16:50:34.666631'),
(37, 'FacultyApp', '0004_cost', '2024-10-26 09:31:54.781786'),
(38, 'StudentApp', '0007_student_transaction_delete_payment', '2024-10-26 16:00:50.858950'),
(39, 'StudentApp', '0008_student_transaction_created_at', '2024-10-26 17:10:57.340704'),
(40, 'StudentApp', '0009_student_graduation_status', '2024-10-28 06:47:27.292560');

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
('26fcrvy66uxafoymvw222q2nh8rgy2vr', '.eJxVjM0OwiAQhN-FsyG0S_nx6N1nILssSNXQpLQn47srSQ96m8z3zbxEwH0rYW9pDTOLsxi1OP2WhPGRaid8x3pbZFzqts4kuyIP2uR14fS8HO7fQcFW-hpMVsQRsss-sgU_aCBLoDVm7_w35wEoG1ITGgfGGWQHitMINFkr3h8aJzgb:1t51zI:x_Iiz-s4KUWb8X3GRDDkevWnc3vb_--yAPdcd9z4WTA', '2024-11-10 12:03:16.930287'),
('48kuvenavz7pe0kygf6scvyldwcmj03e', '.eJxVjDEOwjAMAP-SGUWJHZqakb1viOLYkAJqpaadEH9HlTrAene6t0l5W2vami5pFHMxAOb0CzmXp067kUee7rMt87QuI9s9sYdtdphFX9ej_RvU3Or-FfXae2XRwL47C3AMyNhTdL7c0EUQoewwONcDeUZU6oBBKBJSNp8vBXc3bg:1t3qIY:eHcv2PvF0mahJs7ydGA6RkENtlliDA6EPV9ODWtgF8w', '2024-11-07 05:22:14.410188'),
('6sv9lsim2b4pu0kocsohqj4brdx9ccjz', '.eJxVjDsOwjAQBe_iGlnx36Gk5wzWeneNA8iR4qRC3B0ipYD2zcx7iQTbWtPWeUkTibPQSpx-xwz44LYTukO7zRLnti5TlrsiD9rldSZ-Xg7376BCr98aXOSc0URCq31xBZkABiRvrSceWYegrFYaRozGhIJ-MJ6dMxZMJhbvDzLLOME:1t5dhO:1okWmNtEQxbOh7DnfXsJBt5aJTQLSLIsj5rQW0Foi8o', '2024-11-12 04:19:18.976743'),
('71ok8r6z2dmw1znuja9oddq1pn8kurkv', '.eJxVjDsOwyAQBe9CHSHA5pcyvc-All0ITiKQjF1FuXtsyUXSzsx7bxZgW0vYelrCTOzKJLv8sgj4TPUQ9IB6bxxbXZc58iPhp-18apRet7P9OyjQy77OYsw5ykRaIXo1otbW2ZScweiFFGhIkdEIHp0UEcQAg3Nqh2QF6sw-X_nlOFs:1t5dnb:aba3hpikmE3_5kdBH0THOCyTCB2f0eD4IN4YOP7uXuw', '2024-11-12 04:25:43.590558'),
('7v7f6p9qs9gifxz4u7a0sbdm6dpngwh7', '.eJxVjDsOwyAQBe9CHSHA5pcyvc-All0ITiKQjF1FuXtsyUXSzsx7bxZgW0vYelrCTOzKJLv8sgj4TPUQ9IB6bxxbXZc58iPhp-18apRet7P9OyjQy77OYsw5ykRaIXo1otbW2ZScweiFFGhIkdEIHp0UEcQAg3Nqh2QF6sw-X_nlOFs:1vbzYE:nnwdw18fg27IwWVxdvWGk_JSv1mHNdk2dOh7VDsGPYI', '2026-01-17 11:12:06.884831'),
('84wyh92dbeziuw7jjrxkkp8vikha5q96', '.eJxVjEEOwiAQRe_C2hCgA0WX7j0DYZhBqgaS0q6Md7dNutDtf-_9twhxXUpYO89hInERRpx-N4zpyXUH9Ij13mRqdZknlLsiD9rlrRG_rof7d1BiL1vtB-fHpHkEQu1U1qRsNAhnyzkxokUAApO09db7bJwbDKDiyJtJTonPF96QN8U:1t2kxP:kMQobW30THtLgexrDUmvKw0QkZ_vdmafpF8RYElxSsg', '2024-11-04 05:27:55.570622'),
('9jd7qepjv7ljs6q1b443re1an6bjxyfb', '.eJxVjDkOwjAUBe_iGlnG8bcTSvqcIfpbcADZUpYKcXeIlALaNzPvZQbc1jxsi87DJOZi4GxOvyMhP7TsRO5YbtVyLes8kd0Ve9DF9lX0eT3cv4OMS_7WjXqELsHoMY0gXcuJlIibFJXa6Dxpw2F0AZggpFbIaQqCIMGji2zeHyKuOMc:1t5QBd:DJr95_x4-pz2izKCrDThPwfwBIVVAT1tPbT0YvW1fUA', '2024-11-11 13:53:37.935624'),
('9n76jhqtp0kt6tghvqq7s5tijcphuvl7', '.eJxVjDsOwyAQBe9CHSHA5pcyvc-All0ITiKQjF1FuXtsyUXSzsx7bxZgW0vYelrCTOzKJLv8sgj4TPUQ9IB6bxxbXZc58iPhp-18apRet7P9OyjQy77OYsw5ykRaIXo1otbW2ZScweiFFGhIkdEIHp0UEcQAg3Nqh2QF6sw-X_nlOFs:1sqnlc:vsQZPSMEGY6Y-lRNGn8jMlF4MUJdeZxnfwNsqGvJa7Y', '2024-10-02 06:02:20.406032'),
('bhq17elvkqa841g19poss54y180yu5gv', '.eJxVjM0OwiAQhN-FsyG0S_nx6N1nILssSNXQpLQn47srSQ96m8z3zbxEwH0rYW9pDTOLsxi1OP2WhPGRaid8x3pbZFzqts4kuyIP2uR14fS8HO7fQcFW-hpMVsQRsss-sgU_aCBLoDVm7_w35wEoG1ITGgfGGWQHitMINFkr3h8aJzgb:1t5dZW:4_0tr3RTvmDzOL9SgHW7Xr3fCL9xSPgcnPiwqkJ08xc', '2024-11-12 04:11:10.072347'),
('brn6is5sbya112xapxfjgelwzu67n7og', '.eJxVjEEOwiAQRe_C2hCgA0WX7j0DYZhBqgaS0q6Md7dNutDtf-_9twhxXUpYO89hInERRpx-N4zpyXUH9Ij13mRqdZknlLsiD9rlrRG_rof7d1BiL1vtB-fHpHkEQu1U1qRsNAhnyzkxokUAApO09db7bJwbDKDiyJtJTonPF96QN8U:1t6XAs:NrYk8gNEfOtv6a-oPHzC6-FkyfBvaVJlq4iN-v-Axds', '2024-11-14 15:33:26.653849'),
('dfzfa9ozk1uq9r6r754bmpzqnp86pxji', '.eJxVjMsOwiAUBf-FtSG8Hy7d9xsIlwtSNZCUdmX8d9ukC93OzDlvEuK21rCNvIQZyZUIRS6_EGJ65nYYfMR27zT1ti4z0COhpx106phft7P9O6hx1H2dwRfukkABMUePSqciUQKC1VwwiVwXYQ0zTklbjNfF2Z2yxNEXZgX5fAEk5DgJ:1t4dqJ:wweM4CMC_paJrZoHSSRnLNJOxuMNOMyx_qy99FKZWsQ', '2024-11-09 10:16:23.869453'),
('jgys1i2p9d07dw7trila7qu0krbejiiw', '.eJxVjEEOwiAQRe_C2hCgA0WX7j0DYZhBqgaS0q6Md7dNutDtf-_9twhxXUpYO89hInERRpx-N4zpyXUH9Ij13mRqdZknlLsiD9rlrRG_rof7d1BiL1vtB-fHpHkEQu1U1qRsNAhnyzkxokUAApO09db7bJwbDKDiyJtJTonPF96QN8U:1t5Pno:4QhkP8V71nrkDOHf6P8o5wNIaJbv-h8dD6vKUvVM114', '2024-11-11 13:29:00.450243'),
('lernt9omgowbuel1m71okor8ei6b2njv', '.eJxVjEEOwiAQRe_C2hCgA0WX7j0DYZhBqgaS0q6Md7dNutDtf-_9twhxXUpYO89hInERRpx-N4zpyXUH9Ij13mRqdZknlLsiD9rlrRG_rof7d1BiL1vtB-fHpHkEQu1U1qRsNAhnyzkxokUAApO09db7bJwbDKDiyJtJTonPF96QN8U:1t5e2Q:YOcOnM6QYwy7Azqm-qvSK4V1KAH95RERoCcK8P8g3tU', '2024-11-12 04:41:02.294711'),
('mb6b1sy1y8hgt9ke70er17ase5okmbjz', '.eJxVjDsOwyAQBe9CHSHA5pcyvc-All0ITiKQjF1FuXtsyUXSzsx7bxZgW0vYelrCTOzKJLv8sgj4TPUQ9IB6bxxbXZc58iPhp-18apRet7P9OyjQy77OYsw5ykRaIXo1otbW2ZScweiFFGhIkdEIHp0UEcQAg3Nqh2QF6sw-X_nlOFs:1t5Q3u:874Tty2xG4nbXLT2TCnCzftQsmDGa1GCrGbA8TGngaA', '2024-11-11 13:45:38.157783'),
('ncll3i3o9kcq6yy095r5u199zwpg0z0i', '.eJxVjDsOwjAQBe_iGlnrT4iXkj5nsHbtFQ4gW4qTCnF3iJQC2jcz76UibWuJW5clzlldlLXq9DsypYfUneQ71VvTqdV1mVnvij5o11PL8rwe7t9BoV6-NQcQw4gusxiP4EMOA8MZTGKHib0bswP0IESQgsPAgwhZY9NogFG9P_3-N8E:1t5cms:tML0pYrE4-KfaRJ-zAY6tfyg73JeT4OB7wX4Nw-n5ks', '2024-11-12 03:20:54.136409'),
('nfo0t4u6epajcm81t53mosgapoq28ygc', '.eJxVjDsOwyAQBe9CHSHA5pcyvc-All0ITiKQjF1FuXtsyUXSzsx7bxZgW0vYelrCTOzKJLv8sgj4TPUQ9IB6bxxbXZc58iPhp-18apRet7P9OyjQy77OYsw5ykRaIXo1otbW2ZScweiFFGhIkdEIHp0UEcQAg3Nqh2QF6sw-X_nlOFs:1t3B2c:dSSVLPleWI2lPs73EsZP8qbwH0B6lcdQt08Ekn4LpOY', '2024-11-05 09:19:02.257076'),
('qeu6jq8rx3q3e83e9i36o0kq55hgvqay', '.eJxVjM0OwiAQhN-FsyG0S_nx6N1nILssSNXQpLQn47srSQ96m8z3zbxEwH0rYW9pDTOLsxi1OP2WhPGRaid8x3pbZFzqts4kuyIP2uR14fS8HO7fQcFW-hpMVsQRsss-sgU_aCBLoDVm7_w35wEoG1ITGgfGGWQHitMINFkr3h8aJzgb:1t5diz:5_oUzgMygBsyHSxjv18ozqWg6KRGOwxBZICjxJZ5O1k', '2024-11-12 04:20:57.423868'),
('qq8sjwsjw5u3ahdhqijwmo0d5dd31bqb', '.eJxVjEEOwiAQRe_C2hCgA0WX7j0DYZhBqgaS0q6Md7dNutDtf-_9twhxXUpYO89hInERRpx-N4zpyXUH9Ij13mRqdZknlLsiD9rlrRG_rof7d1BiL1vtB-fHpHkEQu1U1qRsNAhnyzkxokUAApO09db7bJwbDKDiyJtJTonPF96QN8U:1t3B39:spsxEP2hr5Ju8KG3HerdhKvQAXXJJtOmR6EHjsQVWwk', '2024-11-05 09:19:35.607122'),
('sfwv87h029c00swy6ey6cvgzaji1o5kt', 'e30:1sqqpY:4g_89wxBzvdznq6XdNi5jn7a_UYZGRkhg1v5XV_IC-k', '2024-10-02 09:18:36.004784'),
('tzjwu37444dgcsse3sectk7v3p13955n', '.eJxVjM0OwiAQhN-FsyG0S_nx6N1nILssSNXQpLQn47srSQ96m8z3zbxEwH0rYW9pDTOLsxi1OP2WhPGRaid8x3pbZFzqts4kuyIP2uR14fS8HO7fQcFW-hpMVsQRsss-sgU_aCBLoDVm7_w35wEoG1ITGgfGGWQHitMINFkr3h8aJzgb:1uFdIR:G4JhTBJ4hXfUKmaoEXAms-5sVkGB-xT81lnm2MGWaCs', '2025-05-29 18:27:07.477338'),
('u4fit7g4fpa7alwrm4kijoeades1e28t', '.eJxVjEEOwiAQRe_C2hCgA0WX7j0DYZhBqgaS0q6Md7dNutDtf-_9twhxXUpYO89hInERRpx-N4zpyXUH9Ij13mRqdZknlLsiD9rlrRG_rof7d1BiL1vtB-fHpHkEQu1U1qRsNAhnyzkxokUAApO09db7bJwbDKDiyJtJTonPF96QN8U:1sumD1:51uyIO7FJqa_iuH55d-1xoZqLS4SAHnYxz85pmvnhkk', '2024-10-13 05:11:03.275764'),
('uhpxxh507jhlqour1utq6ffsuq9f5rfq', '.eJxVjM0OwiAQhN-FsyG0S_nx6N1nILssSNXQpLQn47srSQ96m8z3zbxEwH0rYW9pDTOLsxi1OP2WhPGRaid8x3pbZFzqts4kuyIP2uR14fS8HO7fQcFW-hpMVsQRsss-sgU_aCBLoDVm7_w35wEoG1ITGgfGGWQHitMINFkr3h8aJzgb:1uQq5k:YTzuMR6_fKxCXDnIIEdMGt-Lo8gkBubXwkhZ5-g2mQE', '2025-06-29 16:20:20.333819'),
('uzmghrigupdi6pwcqfmfj609hwyuytq1', '.eJxVjM0OwiAQhN-FsyG0S_nx6N1nILssSNXQpLQn47srSQ96m8z3zbxEwH0rYW9pDTOLsxi1OP2WhPGRaid8x3pbZFzqts4kuyIP2uR14fS8HO7fQcFW-hpMVsQRsss-sgU_aCBLoDVm7_w35wEoG1ITGgfGGWQHitMINFkr3h8aJzgb:1t5VOt:xlP3aFy3MQprz_mWzTLU5Y7KRBaAPKPO4rn6xWqAnvc', '2024-11-11 19:27:39.743476'),
('yeahviaff6jgpt0mt866pc5ztlk69cxm', '.eJxVjDsOwyAQBe9CHSHA5pcyvc-All0ITiKQjF1FuXtsyUXSzsx7bxZgW0vYelrCTOzKJLv8sgj4TPUQ9IB6bxxbXZc58iPhp-18apRet7P9OyjQy77OYsw5ykRaIXo1otbW2ZScweiFFGhIkdEIHp0UEcQAg3Nqh2QF6sw-X_nlOFs:1sz7RE:uAp_0EzjDR20ZzX8yJqr2--st4lNGapIEoKybs76QsA', '2024-10-25 04:39:40.877637'),
('yrsyco7fo9scud6inn7alp0piehw73cb', '.eJxVjDsOwjAQBe_iGlnx36Gk5wzWeneNA8iR4qRC3B0ipYD2zcx7iQTbWtPWeUkTibPQSpx-xwz44LYTukO7zRLnti5TlrsiD9rldSZ-Xg7376BCr98aXOSc0URCq31xBZkABiRvrSceWYegrFYaRozGhIJ-MJ6dMxZMJhbvDzLLOME:1t2xWn:14QwP8jiio08AoualgDi6Tzf8uLYMxril7-KDq9-_Bc', '2024-11-04 18:53:17.598678'),
('yxj04u8qf2imhhuzh2k8jrzul9q0ut5o', '.eJxVjM0OwiAQhN-FsyG0S_nx6N1nILssSNXQpLQn47srSQ96m8z3zbxEwH0rYW9pDTOLsxi1OP2WhPGRaid8x3pbZFzqts4kuyIP2uR14fS8HO7fQcFW-hpMVsQRsss-sgU_aCBLoDVm7_w35wEoG1ITGgfGGWQHitMINFkr3h8aJzgb:1t521H:ZzcE1yOfyo7DbxkM7xfNurjJP0tRp2SQxkS0tsdC1HI', '2024-11-10 12:05:19.548236'),
('zn6z6oqrdcgow4369fk1w8ln8ft9y7di', '.eJxVjDEOwjAMAP-SGUWJHZqakb1viOLYkAJqpaadEH9HlTrAene6t0l5W2vami5pFHMxAOb0CzmXp067kUee7rMt87QuI9s9sYdtdphFX9ej_RvU3Or-FfXae2XRwL47C3AMyNhTdL7c0EUQoewwONcDeUZU6oBBKBJSNp8vBXc3bg:1t3y1E:jjlOJIkk-rPfk_u8TeyDlrU92eFRof51e5AXhY9VFQ4', '2024-11-07 13:36:52.234275');

-- --------------------------------------------------------

--
-- Table structure for table `facultyapp_cost`
--

CREATE TABLE `facultyapp_cost` (
  `id` bigint(20) NOT NULL,
  `admission_fee` decimal(5,2) NOT NULL,
  `enrollment_fee` decimal(5,2) NOT NULL,
  `cost_per_credit` decimal(5,2) NOT NULL,
  `electricity` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facultyapp_cost`
--

INSERT INTO `facultyapp_cost` (`id`, `admission_fee`, `enrollment_fee`, `cost_per_credit`, `electricity`) VALUES
(1, 300.00, 200.00, 75.00, 120.00);

-- --------------------------------------------------------

--
-- Table structure for table `facultyapp_course`
--

CREATE TABLE `facultyapp_course` (
  `course_code` varchar(20) NOT NULL,
  `course_title` varchar(255) NOT NULL,
  `faculty_name_id` bigint(20) DEFAULT NULL,
  `semester_id` int(11) DEFAULT NULL,
  `credit_hour` decimal(3,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facultyapp_course`
--

INSERT INTO `facultyapp_course` (`course_code`, `course_title`, `faculty_name_id`, `semester_id`, `credit_hour`) VALUES
('AES-221', 'Government and Economics', 2, 4, 3.00),
('AIS 211', 'Accounting and Management', 2, 3, 3.00),
('CCE-112', 'Engineering Drawing', 2, 1, 0.75),
('CCE-121', 'Object Oriented Programming', 2, 2, 3.00),
('CCE-122', 'Object Oriented Programming Sessional', 2, 2, 1.50),
('CCE-211', 'Data Communication and Engineering', 2, 3, 3.00),
('CCE-221', 'Digital Logic Design', 2, 4, 3.00),
('CCE-222', 'Digital Logic Design Sessional', 2, 4, 1.50),
('CCE-223', 'Database System', 2, 4, 3.00),
('CCE-224	', 'Database System Sessional', 2, 4, 1.50),
('CCE-310	', 'Software Development Project-I', 2, 5, 1.50),
('CCE-311', 'Numerical Methods', 2, 5, 3.00),
('CCE-312	', 'Numerical Methods Sessional', 2, 5, 0.75),
('CCE-313	', 'Computer Networks', 2, 5, 3.00),
('CCE-314	', 'Computer Networks Sessional', 2, 5, 1.50),
('CCE-321', 'Computer Peripheral and Interfacing', 2, 6, 3.00),
('CCE-322', 'Computer Peripheral and Interfacing Sessional', 2, 6, 1.50),
('CCE-323', 'Optical Fiber Communication', 2, 6, 3.00),
('CCE-411', 'Algorithm Engineering', 2, 7, 3.00),
('CCE-413', 'VLSI Design', 2, 7, 3.00),
('CCE-415', 'Network Routing and Switching', 2, 7, 3.00),
('CCE-416', 'Network Routing and Switching Sessional', 2, 7, 1.50),
('CCE-417', 'Data Warehousing and Mining', 2, 7, 3.00),
('CCE-421', 'Cryptography and Network Security', 2, 8, 3.00),
('CCE-422', 'Wireless and Cellular Communication', 2, 8, 3.00),
('CHE-111', 'Chemistry', 2, 1, 3.00),
('CHE-112', 'Chemistry Sessional', 2, 1, 0.75),
('CIT-111', 'Programming Language', 2, 1, 3.00),
('CIT-112', 'Programming Language Sessional', 2, 1, 1.50),
('CIT-121', 'Discrete Mathematics', 2, 2, 3.00),
('CIT-211', 'Data Structure and Algorithms', 2, 3, 3.00),
('CIT-212', 'Data Structure and Algorithms Sessional', 2, 3, 1.50),
('CIT-213', 'Software Engineering', 2, 3, 3.00),
('CIT-220', 'Web Programming Project', 2, 4, 1.50),
('CIT-221', 'Information System Analysis and Design', 2, 4, 3.00),
('CIT-222', 'Information System Analysis and Design Sessional', 2, 4, 1.50),
('CIT-311', 'Microprocessors and Assembly Language', 2, 5, 3.00),
('CIT-312', 'Microprocessors and Assembly Language Sessional', 2, 5, 1.50),
('CIT-313	', 'Computer Organization and Architecture', 2, 5, 3.00),
('CIT-315', 'Artificial Intelligence', 2, 5, 3.00),
('CIT-316', 'Artificial Intelligence Sessional', 2, 5, 1.50),
('CIT-320', 'Software Development Project-II', 2, 6, 1.50),
('CIT-321', 'Operating System', 2, 6, 3.00),
('CIT-322', 'Operating System Sessional', 2, 6, 1.50),
('CIT-323', 'Simulation and Modeling', 2, 6, 3.00),
('CIT-324', 'Simulation and Modeling Sessional', 2, 6, 1.50),
('CIT-411', 'Compiler Design and Autometa Theory', 2, 7, 3.00),
('CIT-412', 'Compiler Design and Autometa Theory Sessional', 2, 7, 1.50),
('CIT-421', 'Computer Graphics and Image Processing', 2, 8, 3.00),
('CIT-422', 'Computer Graphics and Image Processing Sessional', 2, 8, 0.75),
('CIT-423', 'Machine learning (Optional)', 2, 8, 3.00),
('CSE-410', 'Project/Thesis', 2, 7, 3.00),
('CSE-412', 'Industrial Training', 2, 7, 1.00),
('CSE-420', 'Project/Thesis', 2, 8, 3.00),
('CSE-421', 'Seminar', 2, 8, 0.75),
('EEE-111', 'Basic Electrical Engineering', 2, 1, 3.00),
('EEE-112', 'Basic Electrical Engineering Sessional', 2, 1, 1.50),
('EEE-121', 'Electronic Device and Circuits', 2, 2, 3.00),
('EEE-122', 'Electronic Device and Circuits Sessional', 2, 2, 1.50),
('EEE-211', 'Electrical Technology', 2, 3, 3.00),
('EEE-212', 'Electrical Technology Sessional', 2, 3, 1.50),
('EEE-321', 'Digital Electronics and Pulse Techniques', 2, 6, 3.00),
('EEE-322', 'Digital Electronics and Pulse Techniques Sessional', 2, 6, 0.75),
('LCM-121', 'Communicative English', 2, 2, 2.00),
('MAT-111', 'Mathematics-1', 2, 1, 3.00),
('MAT-121', 'Mathematics-II', 2, 2, 3.00),
('MAT-211', 'Mathematics-III', 2, 3, 3.00),
('MAT-221', 'Mathematics-IV', 2, 4, 3.00),
('PHY-111', 'Physics-1', 2, 1, 3.00),
('PHY-112', 'Physics–1 Sessional', 2, 1, 0.75),
('PHY-121', 'Physics-II', 2, 2, 3.00),
('PHY-122', 'Physics –II Sessional', 2, 2, 0.75);

-- --------------------------------------------------------

--
-- Table structure for table `facultyapp_department`
--

CREATE TABLE `facultyapp_department` (
  `id` bigint(20) NOT NULL,
  `dept_name` varchar(255) NOT NULL,
  `faculty_name_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facultyapp_department`
--

INSERT INTO `facultyapp_department` (`id`, `dept_name`, `faculty_name_id`) VALUES
(14, 'Computer and Communication Engineering', 2),
(5, 'Computer Science and Information Technology', 2),
(7, 'Electrical and Electronics Engineering', 2),
(15, 'Mathematics', 2),
(8, 'Physics and Mechanical Engineering', 2);

-- --------------------------------------------------------

--
-- Table structure for table `facultyapp_faculty`
--

CREATE TABLE `facultyapp_faculty` (
  `id` bigint(20) NOT NULL,
  `faculty_name` varchar(100) NOT NULL,
  `number_of_semseter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facultyapp_faculty`
--

INSERT INTO `facultyapp_faculty` (`id`, `faculty_name`, `number_of_semseter`) VALUES
(1, 'Agriculture', 8),
(2, 'Computer Science and Engineering', 8),
(3, 'Business Administration', 8);

-- --------------------------------------------------------

--
-- Table structure for table `facultyapp_facultycontroller`
--

CREATE TABLE `facultyapp_facultycontroller` (
  `id` bigint(20) NOT NULL,
  `faculty_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facultyapp_facultycontroller`
--

INSERT INTO `facultyapp_facultycontroller` (`id`, `faculty_id`, `user_id`) VALUES
(2, 2, 2),
(1, 1, 3),
(3, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `facultyapp_semester`
--

CREATE TABLE `facultyapp_semester` (
  `semester_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facultyapp_semester`
--

INSERT INTO `facultyapp_semester` (`semester_number`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8);

-- --------------------------------------------------------

--
-- Table structure for table `resultapp_course_mark`
--

CREATE TABLE `resultapp_course_mark` (
  `id` bigint(20) NOT NULL,
  `attendance` decimal(4,2) DEFAULT NULL,
  `assignment` decimal(4,2) DEFAULT NULL,
  `mid_exam` decimal(4,2) DEFAULT NULL,
  `final_exam` decimal(4,2) DEFAULT NULL,
  `total` decimal(5,2) DEFAULT NULL,
  `course_id_id` varchar(20) DEFAULT NULL,
  `student_id_id` bigint(20) DEFAULT NULL,
  `grade_point` decimal(3,2) NOT NULL,
  `letter_grade` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resultapp_course_mark`
--

INSERT INTO `resultapp_course_mark` (`id`, `attendance`, `assignment`, `mid_exam`, `final_exam`, `total`, `course_id_id`, `student_id_id`, `grade_point`, `letter_grade`) VALUES
(9, 7.00, 5.00, 12.00, 45.00, 69.00, 'CIT-111', 7, 3.25, 'B+'),
(10, 10.00, 5.00, 12.00, 34.00, 61.00, 'CIT-111', 6, 3.00, 'B'),
(11, 7.00, 5.00, 15.00, 45.00, 72.00, 'CIT-112', 7, 3.50, 'A-'),
(12, 10.00, 5.00, 15.00, 60.00, 90.00, 'CIT-112', 6, 4.00, 'A+'),
(13, 7.00, 5.00, 15.00, 55.00, 82.00, 'PHY-111', 7, 4.00, 'A+'),
(14, 10.00, 5.00, 15.00, 15.00, 45.00, 'PHY-111', 6, 2.25, 'C'),
(15, 10.00, 5.00, 12.00, 44.00, 71.00, 'PHY-112', 7, 3.50, 'A-'),
(16, 10.00, 5.00, 15.00, 50.00, 80.00, 'PHY-112', 6, 4.00, 'A+'),
(17, 10.00, 5.00, 12.00, 70.00, 97.00, 'CHE-111', 7, 4.00, 'A+'),
(18, 10.00, 5.00, 15.00, 50.00, 80.00, 'CHE-111', 6, 4.00, 'A+'),
(19, 10.00, 5.00, 12.00, 33.00, 60.00, 'CHE-112', 7, 3.00, 'B'),
(20, 10.00, 5.00, 15.00, 50.00, 80.00, 'CHE-112', 6, 4.00, 'A+'),
(21, 7.00, 5.00, 12.00, 33.00, 57.00, 'MAT-111', 7, 2.75, 'B-'),
(22, 10.00, 5.00, 15.00, 25.00, 55.00, 'MAT-111', 6, 2.75, 'B-'),
(23, 8.00, 5.00, 12.00, 44.00, 69.00, 'EEE-111', 7, 3.25, 'B+'),
(24, 10.00, 5.00, 15.00, 20.00, 50.00, 'EEE-111', 6, 2.50, 'C+'),
(25, 9.00, 5.00, 12.00, 33.00, 59.00, 'EEE-112', 7, 2.75, 'B-'),
(26, 10.00, 5.00, 15.00, 32.00, 62.00, 'EEE-112', 6, 3.00, 'B'),
(27, 8.00, 5.00, 6.00, 45.00, 64.00, 'CCE-112', 7, 3.00, 'B'),
(28, 10.00, 5.00, 15.00, 41.00, 71.00, 'CCE-112', 6, 3.50, 'A-'),
(29, 10.00, 5.00, 15.00, 15.00, 45.00, 'PHY-121', 6, 2.25, 'C'),
(30, 10.00, 5.00, 15.00, 60.00, 90.00, 'PHY-122', 6, 4.00, 'A+'),
(31, 10.00, 5.00, 15.00, 25.00, 55.00, 'MAT-121', 6, 2.75, 'B-'),
(32, 10.00, 5.00, 15.00, 46.00, 76.00, 'CIT-121', 6, 3.75, 'A'),
(33, 10.00, 5.00, 15.00, 34.00, 64.00, 'LCM-121', 6, 3.00, 'B'),
(34, 10.00, 5.00, 15.00, 25.00, 55.00, 'EEE-121', 6, 2.75, 'B-'),
(35, 10.00, 5.00, 15.00, 43.00, 73.00, 'EEE-122', 6, 3.50, 'A-'),
(36, 10.00, 5.00, 15.00, 43.00, 73.00, 'CCE-121', 6, 3.50, 'A-'),
(37, 10.00, 5.00, 15.00, 70.00, 100.00, 'CCE-122', 6, 4.00, 'A+'),
(66, 10.00, 5.00, 15.00, 36.00, 66.00, 'CIT-111', 9, 3.25, 'B+'),
(67, 10.00, 5.00, 15.00, 36.00, 66.00, 'CIT-111', 10, 3.25, 'B+'),
(68, 10.00, 5.00, 15.00, 23.00, 53.00, 'CIT-112', 9, 2.50, 'C+'),
(69, 10.00, 5.00, 15.00, 40.00, 70.00, 'CIT-112', 10, 3.50, 'A-'),
(70, 10.00, 5.00, 15.00, 23.00, 53.00, 'PHY-111', 9, 2.50, 'C+'),
(71, 10.00, 5.00, 15.00, 34.00, 64.00, 'PHY-111', 10, 3.00, 'B'),
(72, 10.00, 5.00, 15.00, 44.00, 74.00, 'PHY-112', 9, 3.50, 'A-'),
(73, 10.00, 5.00, 15.00, 24.00, 54.00, 'PHY-112', 10, 2.50, 'C+'),
(74, 10.00, 5.00, 15.00, 28.00, 58.00, 'CHE-111', 9, 2.75, 'B-'),
(75, 10.00, 4.00, 13.00, 33.00, 60.00, 'CHE-111', 10, 3.00, 'B'),
(76, 10.00, 5.00, 15.00, 44.00, 74.00, 'CHE-112', 9, 3.50, 'A-'),
(77, 10.00, 5.00, 15.00, 44.00, 74.00, 'CHE-112', 10, 3.50, 'A-'),
(78, 10.00, 5.00, 14.00, 33.00, 62.00, 'MAT-111', 9, 3.00, 'B'),
(79, 10.00, 4.00, 12.00, 19.00, 45.00, 'MAT-111', 10, 2.25, 'C'),
(80, 10.00, 5.00, 14.00, 34.00, 63.00, 'EEE-111', 9, 3.00, 'B'),
(81, 10.00, 5.00, 14.00, 43.00, 72.00, 'EEE-111', 10, 3.50, 'A-'),
(82, 10.00, 5.00, 12.00, 34.00, 61.00, 'EEE-112', 9, 3.00, 'B'),
(83, 10.00, 3.00, 9.00, 34.00, 56.00, 'EEE-112', 10, 2.75, 'B-'),
(84, 10.00, 5.00, 15.00, 33.00, 63.00, 'CCE-112', 9, 3.00, 'B'),
(85, 10.00, 4.00, 12.00, 53.00, 79.00, 'CCE-112', 10, 3.75, 'A'),
(86, 10.00, 5.00, 15.00, 10.00, 40.00, 'CIT-111', 11, 2.00, 'D'),
(87, 10.00, 5.00, 15.00, 10.00, 40.00, 'CIT-112', 11, 2.00, 'D'),
(88, 10.00, 5.00, 15.00, 10.00, 40.00, 'PHY-111', 11, 2.00, 'D'),
(89, 10.00, 5.00, 15.00, 11.00, 41.00, 'PHY-112', 11, 2.00, 'D'),
(90, 10.00, 5.00, 15.00, 10.00, 40.00, 'CHE-111', 11, 2.00, 'D'),
(91, 10.00, 5.00, 15.00, 10.00, 40.00, 'CHE-112', 11, 2.00, 'D'),
(92, 10.00, 5.00, 15.00, 10.00, 40.00, 'MAT-111', 11, 2.00, 'D'),
(93, 10.00, 5.00, 15.00, 10.00, 40.00, 'EEE-111', 11, 2.00, 'D'),
(94, 10.00, 5.00, 15.00, 10.00, 40.00, 'EEE-112', 11, 2.00, 'D'),
(95, 10.00, 5.00, 15.00, 10.00, 40.00, 'CCE-112', 11, 2.00, 'D'),
(96, 10.00, 5.00, 15.00, 12.00, 42.00, 'CIT-111', 12, 2.00, 'D'),
(97, 10.00, 5.00, 15.00, 12.00, 42.00, 'CIT-112', 12, 2.00, 'D'),
(98, 10.00, 5.00, 15.00, 12.00, 42.00, 'PHY-111', 12, 2.00, 'D'),
(99, 10.00, 5.00, 14.00, 13.00, 42.00, 'PHY-112', 12, 2.00, 'D'),
(100, 10.00, 5.00, 15.00, 12.00, 42.00, 'CHE-111', 12, 2.00, 'D'),
(101, 10.00, 5.00, 15.00, 12.00, 42.00, 'CHE-112', 12, 2.00, 'D'),
(102, 10.00, 5.00, 12.00, 14.00, 41.00, 'MAT-111', 12, 2.00, 'D'),
(103, 10.00, 4.00, 15.00, 13.00, 42.00, 'EEE-111', 12, 2.00, 'D'),
(104, 10.00, 4.00, 15.00, 13.00, 42.00, 'EEE-112', 12, 2.00, 'D'),
(105, 10.00, 5.00, 14.00, 13.00, 42.00, 'CCE-112', 12, 2.00, 'D'),
(106, 10.00, 5.00, 15.00, 10.00, 40.00, 'PHY-121', 11, 2.00, 'D'),
(107, 10.00, 5.00, 15.00, 20.00, 50.00, 'PHY-121', 12, 2.50, 'C+'),
(108, 10.00, 5.00, 15.00, 10.00, 40.00, 'PHY-122', 11, 2.00, 'D'),
(109, 10.00, 5.00, 15.00, 20.00, 50.00, 'PHY-122', 12, 2.50, 'C+'),
(110, 10.00, 5.00, 15.00, 10.00, 40.00, 'MAT-121', 11, 2.00, 'D'),
(111, 10.00, 5.00, 15.00, 20.00, 50.00, 'MAT-121', 12, 2.50, 'C+'),
(112, 10.00, 5.00, 15.00, 10.00, 40.00, 'CIT-121', 11, 2.00, 'D'),
(113, 10.00, 5.00, 15.00, 20.00, 50.00, 'CIT-121', 12, 2.50, 'C+'),
(114, 10.00, 5.00, 15.00, 10.00, 40.00, 'LCM-121', 11, 2.00, 'D'),
(115, 10.00, 5.00, 15.00, 20.00, 50.00, 'LCM-121', 12, 2.50, 'C+'),
(116, 10.00, 5.00, 15.00, 10.00, 40.00, 'EEE-121', 11, 2.00, 'D'),
(117, 10.00, 5.00, 15.00, 20.00, 50.00, 'EEE-121', 12, 2.50, 'C+'),
(118, 10.00, 5.00, 15.00, 10.00, 40.00, 'EEE-122', 11, 2.00, 'D'),
(119, 10.00, 5.00, 15.00, 20.00, 50.00, 'EEE-122', 12, 2.50, 'C+'),
(120, 10.00, 5.00, 15.00, 10.00, 40.00, 'CCE-121', 11, 2.00, 'D'),
(121, 10.00, 5.00, 15.00, 20.00, 50.00, 'CCE-121', 12, 2.50, 'C+'),
(122, 10.00, 5.00, 15.00, 10.00, 40.00, 'CCE-122', 11, 2.00, 'D'),
(123, 10.00, 5.00, 15.00, 20.00, 50.00, 'CCE-122', 12, 2.50, 'C+'),
(124, 10.00, 5.00, 15.00, 60.00, 90.00, 'PHY-121', 7, 4.00, 'A+'),
(125, 10.00, 5.00, 15.00, 30.00, 60.00, 'PHY-122', 7, 3.00, 'B'),
(126, 10.00, 5.00, 14.00, 45.00, 74.00, 'MAT-121', 7, 3.50, 'A-'),
(127, 10.00, 5.00, 15.00, 55.00, 85.00, 'CIT-121', 7, 4.00, 'A+'),
(128, 10.00, 5.00, 15.00, 33.00, 63.00, 'LCM-121', 7, 3.00, 'B'),
(129, 10.00, 5.00, 15.00, 44.00, 74.00, 'EEE-121', 7, 3.50, 'A-'),
(130, 10.00, 5.00, 15.00, 44.00, 74.00, 'EEE-122', 7, 3.50, 'A-'),
(131, 10.00, 5.00, 15.00, 55.00, 85.00, 'CCE-121', 7, 4.00, 'A+'),
(132, 10.00, 5.00, 15.00, 55.00, 85.00, 'CCE-122', 7, 4.00, 'A+'),
(133, 10.00, 4.00, 15.00, 33.00, 62.00, 'CIT-211', 7, 3.00, 'B'),
(134, 10.00, 4.00, 15.00, 33.00, 62.00, 'CIT-211', 6, 3.00, 'B'),
(135, 10.00, 5.00, 13.00, 5.00, 33.00, 'CIT-212', 7, 0.00, 'F'),
(136, 10.00, 5.00, 14.00, 44.00, 73.00, 'CIT-212', 6, 3.50, 'A-'),
(137, 10.00, 5.00, 13.00, 44.00, 72.00, 'CIT-213', 7, 3.50, 'A-'),
(138, 10.00, 5.00, 14.00, 53.00, 82.00, 'CIT-213', 6, 4.00, 'A+'),
(139, 10.00, 5.00, 15.00, 70.00, 100.00, 'CCE-211', 7, 4.00, 'A+'),
(140, 10.00, 5.00, 10.00, 40.00, 65.00, 'CCE-211', 6, 3.25, 'B+'),
(141, 10.00, 5.00, 14.00, 44.00, 73.00, 'MAT-211', 7, 3.50, 'A-'),
(142, 10.00, 5.00, 14.00, 45.00, 74.00, 'MAT-211', 6, 3.50, 'A-'),
(143, 10.00, 5.00, 10.00, 45.00, 70.00, 'EEE-211', 7, 3.50, 'A-'),
(144, 10.00, 5.00, 10.00, 35.00, 60.00, 'EEE-211', 6, 3.00, 'B'),
(145, 10.00, 5.00, 15.00, 34.00, 64.00, 'EEE-212', 7, 3.00, 'B'),
(146, 10.00, 5.00, 15.00, 35.00, 65.00, 'EEE-212', 6, 3.25, 'B+'),
(147, 10.00, 5.00, 14.00, 40.00, 69.00, 'AIS 211', 7, 3.25, 'B+'),
(148, 10.00, 5.00, 14.00, 45.00, 74.00, 'AIS 211', 6, 3.50, 'A-'),
(149, 10.00, 5.00, 15.00, 40.00, 70.00, 'CCE-221', 7, 3.50, 'A-'),
(150, 10.00, 5.00, 15.00, 44.00, 74.00, 'CCE-221', 6, 3.50, 'A-'),
(151, 10.00, 4.00, 11.00, 38.00, 63.00, 'CCE-222', 7, 3.00, 'B'),
(152, 9.00, 5.00, 14.00, 58.00, 86.00, 'CCE-222', 6, 4.00, 'A+'),
(153, 10.00, 5.00, 3.00, 34.00, 52.00, 'CCE-223', 7, 2.50, 'C+'),
(154, 10.00, 5.00, 13.00, 62.00, 90.00, 'CCE-223', 6, 4.00, 'A+'),
(155, 10.00, 4.00, 9.00, 39.00, 62.00, 'CCE-224	', 7, 3.00, 'B'),
(156, 10.00, 5.00, 12.00, 66.00, 93.00, 'CCE-224	', 6, 4.00, 'A+'),
(157, 10.00, 5.00, 13.00, 56.00, 84.00, 'AES-221', 7, 4.00, 'A+'),
(158, 10.00, 3.56, 14.00, 59.50, 87.06, 'AES-221', 6, 4.00, 'A+'),
(159, 8.00, 5.00, 13.00, 52.00, 78.00, 'MAT-221', 7, 3.75, 'A'),
(160, 9.00, 4.00, 9.00, 48.00, 70.00, 'MAT-221', 6, 3.50, 'A-'),
(161, 10.00, 5.00, 12.00, 61.00, 88.00, 'CIT-220', 7, 4.00, 'A+'),
(162, 8.00, 4.00, 14.00, 64.00, 90.00, 'CIT-220', 6, 4.00, 'A+'),
(163, 9.00, 4.00, 13.00, 44.00, 70.00, 'CIT-221', 7, 3.50, 'A-'),
(164, 10.00, 4.00, 14.00, 36.00, 64.00, 'CIT-221', 6, 3.00, 'B'),
(165, 7.00, 3.00, 4.00, 44.00, 58.00, 'CIT-222', 7, 2.75, 'B-'),
(166, 9.00, 5.00, 14.00, 59.00, 87.00, 'CIT-222', 6, 4.00, 'A+'),
(167, 10.00, 4.00, 7.00, 44.00, 65.00, 'CIT-311', 7, 3.25, 'B+'),
(168, 10.00, 4.00, 7.00, 43.00, 64.00, 'CIT-311', 6, 3.00, 'B'),
(169, 10.00, 5.00, 15.00, 42.00, 72.00, 'CIT-312', 7, 3.50, 'A-'),
(170, 10.00, 5.00, 15.00, 34.00, 64.00, 'CIT-312', 6, 3.00, 'B'),
(171, 10.00, 5.00, 15.00, 54.00, 84.00, 'CIT-313	', 7, 4.00, 'A+'),
(172, 10.00, 5.00, 15.00, 68.00, 98.00, 'CIT-313	', 6, 4.00, 'A+'),
(173, 10.00, 5.00, 15.00, 23.00, 53.00, 'CIT-315', 7, 2.50, 'C+'),
(174, 10.00, 5.00, 15.00, 49.00, 79.00, 'CIT-315', 6, 3.75, 'A'),
(175, 10.00, 5.00, 15.00, 25.00, 55.00, 'CCE-310	', 7, 2.75, 'B-'),
(176, 10.00, 5.00, 15.00, 37.00, 67.00, 'CCE-310	', 6, 3.25, 'B+'),
(177, 10.00, 5.00, 15.00, 55.00, 85.00, 'CCE-311', 7, 4.00, 'A+'),
(178, 10.00, 5.00, 15.00, 43.00, 73.00, 'CCE-311', 6, 3.50, 'A-'),
(179, 10.00, 5.00, 15.00, 34.00, 64.00, 'CCE-312	', 7, 3.00, 'B'),
(180, 10.00, 5.00, 15.00, 42.00, 72.00, 'CCE-312	', 6, 3.50, 'A-'),
(181, 10.00, 5.00, 15.00, 44.00, 74.00, 'CCE-313	', 7, 3.50, 'A-'),
(182, 10.00, 5.00, 15.00, 32.00, 62.00, 'CCE-313	', 6, 3.00, 'B'),
(183, 10.00, 5.00, 15.00, 23.00, 53.00, 'CCE-314	', 7, 2.50, 'C+'),
(184, 10.00, 5.00, 15.00, 45.00, 75.00, 'CCE-314	', 6, 3.75, 'A'),
(185, 10.00, 5.00, 14.00, 44.00, 73.00, 'CIT-316', 7, 3.50, 'A-'),
(186, 10.00, 3.00, 13.00, 34.00, 60.00, 'CIT-316', 6, 3.00, 'B'),
(187, 10.00, 5.00, 10.00, 5.00, 30.00, 'CIT-320', 7, 0.00, 'F'),
(188, 10.00, 5.00, 2.00, 44.00, 61.00, 'CIT-320', 6, 3.00, 'B'),
(189, 10.00, 5.00, 15.00, 5.00, 35.00, 'CIT-321', 7, 0.00, 'F'),
(190, 10.00, 5.00, 15.00, 55.00, 85.00, 'CIT-321', 6, 4.00, 'A+'),
(191, 10.00, 5.00, 15.00, 70.00, 100.00, 'CIT-322', 7, 4.00, 'A+'),
(192, 10.00, 5.00, 4.00, 55.00, 74.00, 'CIT-322', 6, 3.50, 'A-'),
(193, 10.00, 5.00, 14.00, 55.00, 84.00, 'CIT-323', 7, 4.00, 'A+'),
(194, 10.00, 5.00, 12.00, 44.00, 71.00, 'CIT-323', 6, 3.50, 'A-'),
(195, 10.00, 5.00, 15.00, 44.00, 74.00, 'CIT-324', 7, 3.50, 'A-'),
(196, 10.00, 5.00, 14.00, 44.00, 73.00, 'CIT-324', 6, 3.50, 'A-'),
(197, 10.00, 5.00, 9.00, 66.00, 90.00, 'EEE-322', 7, 4.00, 'A+'),
(198, 10.00, 5.00, 8.00, 33.00, 56.00, 'EEE-322', 6, 2.75, 'B-'),
(199, 10.00, 5.00, 12.00, 33.00, 60.00, 'CCE-321', 7, 3.00, 'B'),
(200, 10.00, 5.00, 12.00, 33.00, 60.00, 'CCE-321', 6, 3.00, 'B'),
(201, 10.00, 4.00, 7.00, 34.00, 55.00, 'CCE-322', 7, 2.75, 'B-'),
(202, 10.00, 4.00, 7.00, 55.00, 76.00, 'CCE-322', 6, 3.75, 'A'),
(203, 10.00, 5.00, 15.00, 55.00, 85.00, 'CCE-323', 7, 4.00, 'A+'),
(204, 10.00, 5.00, 12.00, 44.00, 71.00, 'CCE-323', 6, 3.50, 'A-'),
(205, 10.00, 5.00, 10.00, 44.00, 69.00, 'EEE-321', 7, 3.25, 'B+'),
(206, 10.00, 5.00, 13.00, 55.00, 83.00, 'EEE-321', 6, 4.00, 'A+'),
(207, 10.00, 5.00, 10.00, 5.00, 30.00, 'CSE-410', 7, 0.00, 'F'),
(208, 10.00, 5.00, 9.00, 55.00, 79.00, 'CSE-410', 6, 3.75, 'A'),
(209, 10.00, 5.00, 15.00, 55.00, 85.00, 'CSE-412', 7, 4.00, 'A+'),
(210, 10.00, 5.00, 15.00, 38.00, 68.00, 'CSE-412', 6, 3.25, 'B+'),
(211, 10.00, 5.00, 9.00, 47.00, 71.00, 'CCE-411', 7, 3.50, 'A-'),
(212, 10.00, 5.00, 8.00, 56.00, 79.00, 'CCE-411', 6, 3.75, 'A'),
(213, 10.00, 5.00, 10.00, 49.00, 74.00, 'CCE-413', 7, 3.50, 'A-'),
(214, 10.00, 5.00, 8.00, 33.00, 56.00, 'CCE-413', 6, 2.75, 'B-'),
(215, 10.00, 5.00, 12.00, 45.00, 72.00, 'CCE-415', 7, 3.50, 'A-'),
(216, 10.00, 5.00, 8.00, 33.00, 56.00, 'CCE-415', 6, 2.75, 'B-'),
(217, 10.00, 5.00, 10.00, 60.00, 85.00, 'CCE-416', 7, 4.00, 'A+'),
(218, 10.00, 5.00, 10.00, 49.00, 74.00, 'CCE-416', 6, 3.50, 'A-'),
(219, 10.00, 3.00, 12.00, 45.00, 70.00, 'CCE-417', 7, 3.50, 'A-'),
(220, 10.00, 5.00, 13.00, 56.00, 84.00, 'CCE-417', 6, 4.00, 'A+'),
(221, 10.00, 5.00, 13.00, 30.00, 58.00, 'CIT-411', 7, 2.75, 'B-'),
(222, 10.00, 5.00, 9.00, 45.00, 69.00, 'CIT-411', 6, 3.25, 'B+'),
(223, 10.00, 5.00, 12.00, 36.00, 63.00, 'CIT-412', 7, 3.00, 'B'),
(224, 10.00, 4.00, 9.00, 44.00, 67.00, 'CIT-412', 6, 3.25, 'B+'),
(225, 10.00, 5.00, 15.00, 55.00, 85.00, 'CSE-420', 7, 4.00, 'A+'),
(226, 10.00, 5.00, 15.00, 44.00, 74.00, 'CSE-420', 6, 3.50, 'A-'),
(227, 10.00, 5.00, 15.00, 44.00, 74.00, 'CSE-421', 7, 3.50, 'A-'),
(228, 10.00, 5.00, 15.00, 55.00, 85.00, 'CSE-421', 6, 4.00, 'A+'),
(229, 10.00, 5.00, 15.00, 55.00, 85.00, 'CCE-421', 7, 4.00, 'A+'),
(230, 10.00, 5.00, 15.00, 55.00, 85.00, 'CCE-421', 6, 4.00, 'A+'),
(231, 10.00, 5.00, 15.00, 55.00, 85.00, 'CCE-422', 7, 4.00, 'A+'),
(232, 10.00, 5.00, 15.00, 44.00, 74.00, 'CCE-422', 6, 3.50, 'A-'),
(233, 10.00, 5.00, 7.00, 44.00, 66.00, 'CIT-421', 7, 3.25, 'B+'),
(234, 10.00, 5.00, 15.00, 44.00, 74.00, 'CIT-421', 6, 3.50, 'A-'),
(235, 10.00, 5.00, 15.00, 66.00, 96.00, 'CIT-422', 7, 4.00, 'A+'),
(236, 10.00, 5.00, 15.00, 33.00, 63.00, 'CIT-422', 6, 3.00, 'B'),
(237, 10.00, 5.00, 10.00, 66.00, 91.00, 'CIT-423', 7, 4.00, 'A+'),
(238, 10.00, 5.00, 10.00, 44.00, 69.00, 'CIT-423', 6, 3.25, 'B+'),
(239, 9.00, 5.00, 12.00, 45.00, 71.00, 'CIT-111', 25, 3.50, 'A-'),
(240, 10.00, 4.00, 14.00, 55.00, 83.00, 'CIT-111', 23, 4.00, 'A+'),
(242, 9.00, 4.00, 13.00, 52.00, 78.00, 'CIT-111', 21, 3.75, 'A'),
(243, 10.00, 3.00, 15.00, 40.00, 68.00, 'CIT-111', 22, 3.25, 'B+'),
(244, 7.00, 4.00, 9.00, 40.00, 60.00, 'CIT-112', 25, 3.00, 'B'),
(245, 9.00, 5.00, 12.00, 54.00, 80.00, 'CIT-112', 23, 4.00, 'A+'),
(247, 9.00, 5.00, 10.00, 60.00, 84.00, 'CIT-112', 21, 4.00, 'A+'),
(248, 10.00, 4.00, 5.00, 49.00, 68.00, 'CIT-112', 22, 3.25, 'B+'),
(249, 8.00, 3.00, 9.00, 54.00, 74.00, 'PHY-111', 25, 3.50, 'A-'),
(250, 9.00, 5.00, 10.00, 16.00, 40.00, 'PHY-111', 23, 2.00, 'D'),
(252, 7.00, 4.00, 5.00, 17.00, 33.00, 'PHY-111', 21, 0.00, 'F'),
(253, 8.00, 5.00, 8.00, 57.00, 78.00, 'PHY-111', 22, 3.75, 'A'),
(254, 8.00, 4.00, 6.00, 38.00, 56.00, 'PHY-112', 25, 2.75, 'B-'),
(255, 10.00, 5.00, 14.00, 62.00, 91.00, 'PHY-112', 23, 4.00, 'A+'),
(257, 9.00, 5.00, 15.00, 35.00, 64.00, 'PHY-112', 21, 3.00, 'B'),
(258, 7.00, 4.00, 5.00, 55.00, 71.00, 'PHY-112', 22, 3.50, 'A-'),
(259, 10.00, 5.00, 13.00, 49.00, 77.00, 'CHE-111', 25, 3.75, 'A'),
(260, 8.00, 3.00, 11.00, 24.00, 46.00, 'CHE-111', 23, 2.25, 'C'),
(262, 8.00, 3.00, 14.00, 57.00, 82.00, 'CHE-111', 21, 4.00, 'A+'),
(263, 10.00, 5.00, 5.00, 68.00, 88.00, 'CHE-111', 22, 4.00, 'A+'),
(264, 9.00, 4.00, 7.00, 45.00, 65.00, 'CHE-112', 25, 3.25, 'B+'),
(265, 10.00, 5.00, 12.00, 43.00, 70.00, 'CHE-112', 23, 3.50, 'A-'),
(267, 8.00, 5.00, 8.00, 41.00, 62.00, 'CHE-112', 21, 3.00, 'B'),
(268, 9.00, 4.00, 8.00, 16.00, 37.00, 'CHE-112', 22, 0.00, 'F'),
(269, 7.00, 4.00, 12.00, 18.00, 41.00, 'MAT-111', 25, 2.00, 'D'),
(270, 8.00, 5.00, 10.00, 42.00, 65.00, 'MAT-111', 23, 3.25, 'B+'),
(272, 7.00, 5.00, 5.00, 25.00, 42.00, 'MAT-111', 21, 2.00, 'D'),
(273, 9.00, 3.00, 8.00, 47.00, 67.00, 'MAT-111', 22, 3.25, 'B+'),
(274, 8.00, 4.00, 13.00, 35.00, 60.00, 'EEE-111', 25, 3.00, 'B'),
(275, 9.00, 3.00, 9.00, 38.00, 59.00, 'EEE-111', 23, 2.75, 'B-'),
(277, 7.00, 5.00, 2.00, 43.00, 57.00, 'EEE-111', 21, 2.75, 'B-'),
(278, 9.00, 5.00, 10.00, 32.00, 56.00, 'EEE-111', 22, 2.75, 'B-'),
(279, 7.00, 4.00, 14.00, 65.00, 90.00, 'EEE-112', 25, 4.00, 'A+'),
(280, 10.00, 5.00, 9.00, 35.00, 59.00, 'EEE-112', 23, 2.75, 'B-'),
(282, 10.00, 5.00, 9.00, 64.00, 88.00, 'EEE-112', 21, 4.00, 'A+'),
(283, 8.00, 4.00, 9.00, 56.00, 77.00, 'EEE-112', 22, 3.75, 'A'),
(284, 10.00, 4.00, 14.00, 45.00, 73.00, 'CCE-112', 25, 3.50, 'A-'),
(285, 9.00, 5.00, 13.00, 12.00, 39.00, 'CCE-112', 23, 0.00, 'F'),
(287, 7.00, 2.00, 6.00, 23.00, 38.00, 'CCE-112', 21, 0.00, 'F'),
(288, 8.00, 5.00, 9.00, 43.00, 65.00, 'CCE-112', 22, 3.25, 'B+');

-- --------------------------------------------------------

--
-- Table structure for table `resultapp_exam_period`
--

CREATE TABLE `resultapp_exam_period` (
  `id` bigint(20) NOT NULL,
  `period` varchar(20) NOT NULL,
  `faculty_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resultapp_exam_period`
--

INSERT INTO `resultapp_exam_period` (`id`, `period`, `faculty_id`) VALUES
(1, 'Regular', 2);

-- --------------------------------------------------------

--
-- Table structure for table `resultapp_semester_result`
--

CREATE TABLE `resultapp_semester_result` (
  `id` bigint(20) NOT NULL,
  `gpa` decimal(4,3) NOT NULL,
  `cgpa` decimal(4,3) NOT NULL,
  `semester_id` int(11) DEFAULT NULL,
  `student_id_id` bigint(20) DEFAULT NULL,
  `cumulative_credit_earned` decimal(5,2) NOT NULL,
  `remark` varchar(50) NOT NULL,
  `curr_sem_credit_earned` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resultapp_semester_result`
--

INSERT INTO `resultapp_semester_result` (`id`, `gpa`, `cgpa`, `semester_id`, `student_id_id`, `cumulative_credit_earned`, `remark`, `curr_sem_credit_earned`) VALUES
(1, 3.370, 3.370, 1, 7, 20.25, 'Passed', 20.25),
(2, 3.093, 3.093, 1, 6, 20.25, 'Passed', 20.25),
(3, 3.145, 3.119, 2, 6, 41.00, 'Passed', 20.75),
(6, 3.687, 3.530, 2, 7, 41.00, 'Passed', 20.75),
(7, 2.926, 2.926, 1, 9, 20.25, 'Passed', 20.25),
(8, 3.046, 3.046, 1, 10, 20.25, 'Passed', 20.25),
(9, 2.000, 2.000, 1, 11, 20.25, 'Passed', 20.25),
(10, 2.000, 2.000, 1, 12, 20.25, 'Passed', 20.25),
(11, 2.000, 2.000, 2, 11, 41.00, 'Failed', 20.75),
(12, 2.500, 2.253, 2, 12, 41.00, 'Passed', 20.75),
(13, 3.423, 3.496, 3, 7, 60.50, 'Conditional Passed', 19.50),
(14, 3.375, 3.206, 3, 6, 62.00, 'Passed', 21.00),
(15, 3.375, 3.465, 4, 7, 81.50, 'Passed', 21.00),
(16, 3.714, 3.334, 4, 6, 83.00, 'Passed', 21.00),
(17, 3.328, 3.436, 5, 7, 103.25, 'Passed', 21.75),
(18, 3.397, 3.347, 5, 6, 104.75, 'Passed', 21.75),
(19, 3.543, 3.451, 6, 7, 120.50, 'Conditional Passed', 17.25),
(20, 3.526, 3.378, 6, 6, 126.50, 'Passed', 21.75),
(21, 3.408, 3.445, 7, 7, 139.50, 'Conditional Passed', 19.00),
(22, 3.369, 3.377, 7, 6, 148.50, 'Passed', 22.00),
(23, 3.841, 3.487, 8, 7, 156.00, 'Passed', 16.50),
(24, 3.545, 3.394, 8, 6, 165.00, 'Passed', 16.50),
(25, 3.204, 3.204, 1, 25, 20.25, 'Passed', 20.25),
(26, 3.000, 3.000, 1, 23, 19.50, 'Conditional Passed', 19.50),
(28, 3.273, 3.273, 1, 21, 16.50, 'Conditional Passed', 16.50),
(29, 3.413, 3.413, 1, 22, 19.50, 'Conditional Passed', 19.50);

-- --------------------------------------------------------

--
-- Table structure for table `resultapp_special_repeat`
--

CREATE TABLE `resultapp_special_repeat` (
  `id` bigint(20) NOT NULL,
  `special_period` varchar(20) NOT NULL,
  `faculty_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resultapp_special_repeat`
--

INSERT INTO `resultapp_special_repeat` (`id`, `special_period`, `faculty_id`) VALUES
(1, 'Enable', 2);

-- --------------------------------------------------------

--
-- Table structure for table `studentapp_student`
--

CREATE TABLE `studentapp_student` (
  `id` bigint(20) NOT NULL,
  `student_id` int(11) NOT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `session` varchar(20) DEFAULT NULL,
  `profile_pic` varchar(100) NOT NULL,
  `curr_semester_id` int(11) DEFAULT NULL,
  `faculty_id` bigint(20) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `reg_no` int(11) NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `academic_status` varchar(20) NOT NULL,
  `graduation_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `studentapp_student`
--

INSERT INTO `studentapp_student` (`id`, `student_id`, `phone_number`, `session`, `profile_pic`, `curr_semester_id`, `faculty_id`, `user_id`, `reg_no`, `payment_status`, `academic_status`, `graduation_status`) VALUES
(6, 1802052, '+8801521236716', '2018-19', 'students_profile_pics/20180824221531_IMG_6339.JPG', 7, 2, 20, 8462, 'Paid', 'Regular', 'Complete'),
(7, 1802014, '+8801718323601', '2018-19', 'students_profile_pics/68455463_720155528424045_2908917058215346176_n.jpg', 8, 2, 23, 8424, 'Paid', 'Irregular', 'Complete'),
(8, 1702026, '+8801521237616', '2017-18', 'students_profile_pics/299951370_1263966017748460_1667838045761069404_n.jpg', 1, 2, 24, 7596, 'Unpaid', 'Irregular', 'Incomplete'),
(9, 1702005, '+8801531236716', '2017-18', 'students_profile_pics/352796979_1320693185193686_6512592111027141681_n.jpg', 1, 2, 25, 7575, 'Paid', 'Regular', 'Incomplete'),
(10, 1802035, '+8801531236726', '2018-19', 'students_profile_pics/458099171_122100216722505828_39427924350116232_n.jpg', 1, 2, 26, 8445, 'Paid', 'Regular', 'Incomplete'),
(11, 1802047, '+8801531336726', '2018-19', 'students_profile_pics/photo-1559583985-c80d8ad9b29f.jpeg', 1, 2, 27, 8457, 'Paid', 'Regular', 'Incomplete'),
(12, 1802053, '+8801531236711', '2018-19', 'students_profile_pics/459322655_2023430428074073_5655191352182056528_n.jpg', 1, 2, 29, 8463, 'Paid', 'Regular', 'Incomplete'),
(14, 1802055, '+8801710531031', '2018-19', 'students_profile_pics/431298740_3704475766545881_2614331543189733428_n.jpg', 3, 2, 38, 8465, 'Paid', 'Regular', 'Incomplete'),
(15, 1802048, '+8801617782746', '2018-19', 'students_profile_pics/own.jpeg', 3, 2, 39, 8458, 'Paid', 'Regular', 'Incomplete'),
(16, 2002061, '+8801619880970', '2020-21', 'students_profile_pics/sohan1.jpg', 5, 2, 40, 9578, 'Paid', 'Regular', 'Incomplete'),
(17, 2002040, '+8801785681242', '2020-21', 'students_profile_pics/sohan1_zMmpHCp.jpg', 5, 2, 41, 9557, 'Paid', 'Regular', 'Incomplete'),
(18, 2002068, '+8801925678942', '2020-21', 'students_profile_pics/sohan1_wJhsFH5.jpg', 5, 2, 42, 9585, 'Paid', 'Regular', 'Incomplete'),
(20, 2002079, '+8801756984233', '2020-21', 'students_profile_pics/sohan1_re8pabY.jpg', 5, 2, 46, 9596, 'Paid', 'Regular', 'Incomplete'),
(21, 2002066, '+8801689750225', '2020-21', 'students_profile_pics/sohan1_MXLcDKz.jpg', 1, 2, 47, 9583, 'Paid', 'Irregular', 'Incomplete'),
(22, 2002082, '+8801302547892', '2020-21', 'students_profile_pics/sohan1_sqoUX0R.jpg', 1, 2, 48, 9598, 'Paid', 'Irregular', 'Incomplete'),
(23, 2002006, '+8801569872369', '2020-21', 'students_profile_pics/sohan1_FbWDF1A.jpg', 1, 2, 49, 9545, 'Paid', 'Irregular', 'Incomplete'),
(24, 2002058, '+8801698745631', '2020-21', 'students_profile_pics/sohan1_0EwAIAA.jpg', 1, 2, 50, 9575, 'Unpaid', 'Irregular', 'Incomplete'),
(25, 2002004, '+8801678942872', '2020-21', 'students_profile_pics/sohan1_Q6k4Bar.jpg', 1, 2, 51, 9538, 'Paid', 'Irregular', 'Incomplete'),
(26, 1802034, '+8801710531040', '2018-19', '', 1, 2, 52, 8444, 'Paid', 'Regular', 'Incomplete');

-- --------------------------------------------------------

--
-- Table structure for table `studentapp_student_transaction`
--

CREATE TABLE `studentapp_student_transaction` (
  `id` bigint(20) NOT NULL,
  `trxID` varchar(50) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `semester_id` int(11) DEFAULT NULL,
  `student_id_id` bigint(20) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `studentapp_student_transaction`
--

INSERT INTO `studentapp_student_transaction` (`id`, `trxID`, `amount`, `semester_id`, `student_id_id`, `created_at`) VALUES
(24, 'TXN262176.2500ZLURNKAJMNTO', 2176.25, 2, 10, '2024-10-27 16:39:13.839642'),
(26, 'TXN512176.2500EEM15L3IR2M6', 2176.25, 2, 25, '2024-10-28 14:00:45.547772'),
(29, 'TXN242138.7500GORX53BQT3AD', 2138.75, 1, 8, '2025-05-15 18:34:02.024512'),
(30, 'TXN242138.7500XEJB8DWUFWA4', 2138.75, 1, 8, '2026-01-03 11:10:07.330593'),
(31, 'TXN242138.7500XEJB8DWUFWA4', 2138.75, 1, 8, '2026-01-03 11:10:21.592488'),
(32, 'TXN242138.7500KKTZ24F7S4ME', 2138.75, 1, 8, '2026-01-03 11:12:40.905655'),
(33, 'TXN242138.7500KKTZ24F7S4ME', 2138.75, 1, 8, '2026-01-03 11:14:49.043005'),
(34, 'TXN242138.7500VA0FGJECVKRO', 2138.75, 1, 8, '2026-01-03 13:10:49.722008'),
(35, 'TXN242138.75009VLXYE1CALG8', 2138.75, 1, 8, '2026-01-03 13:22:33.775478'),
(36, 'TXN242138.7500M9U59EMTAL0S', 2138.75, 1, 8, '2026-01-03 13:24:52.233875'),
(37, 'TXN242138.75000J8QFQI5QKH3', 2138.75, 1, 8, '2026-01-03 15:19:53.957864'),
(38, 'TXN242138.75007BZOACZ7MQBT', 2138.75, 1, 8, '2026-01-03 15:22:28.558280'),
(39, 'TXN242138.75007XJHWRFQ3W61', 2138.75, 1, 8, '2026-01-03 15:23:32.757081'),
(40, 'TXN242138.7500FS33AXO498W2', 2138.75, 1, 8, '2026-01-03 15:24:23.075107'),
(41, 'TXN242138.75007WBFURW2E0YL', 2138.75, 1, 8, '2026-01-03 15:26:47.125790'),
(42, 'TXN242138.7500CM57AXAMH1CR', 2138.75, 1, 8, '2026-01-03 15:32:32.993164'),
(43, 'TXN242138.7500SW2X6MBZAV6O', 2138.75, 1, 8, '2026-01-03 15:33:50.520790'),
(44, 'TXN202270.0000MFH6T4UKGJNL', 2270.00, 7, 6, '2026-01-03 15:35:39.431849'),
(45, 'TXN202270.0000C4TBDA102T41', 2270.00, 7, 6, '2026-01-03 15:36:59.212795'),
(46, 'TXN202270.0000NZ7RYZR5K6UY', 2270.00, 7, 6, '2026-01-03 15:38:09.040863'),
(47, 'TXN202270.0000L2D2X79DIX1K', 2270.00, 7, 6, '2026-01-03 15:57:35.609571'),
(48, 'TXN202270.0000EV2OYTWN04KM', 2270.00, 7, 6, '2026-01-03 15:59:47.796980');

-- --------------------------------------------------------

--
-- Table structure for table `teacherapp_course_instructor`
--

CREATE TABLE `teacherapp_course_instructor` (
  `id` bigint(20) NOT NULL,
  `courseinfo_id` varchar(20) DEFAULT NULL,
  `teacher_id_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacherapp_course_instructor`
--

INSERT INTO `teacherapp_course_instructor` (`id`, `courseinfo_id`, `teacher_id_id`) VALUES
(2, 'CIT-111', 10),
(3, 'CIT-112', 10),
(5, 'PHY-111', 10),
(6, 'PHY-112', 10),
(7, 'CHE-111', 10),
(8, 'CHE-112', 10),
(9, 'MAT-111', 10),
(10, 'EEE-111', 10),
(11, 'EEE-112', 10),
(12, 'CCE-112', 10),
(23, 'CIT-211', 9),
(24, 'CIT-212', 9),
(25, 'CIT-213', 9),
(26, 'CCE-211', 9),
(27, 'MAT-211', 9),
(28, 'EEE-211', 9),
(29, 'EEE-212', 9),
(30, 'AIS 211', 9),
(31, 'PHY-121', 11),
(32, 'PHY-122', 11),
(33, 'MAT-121', 11),
(34, 'CIT-121', 11),
(35, 'LCM-121', 11),
(36, 'EEE-121', 11),
(37, 'EEE-122', 11),
(38, 'CCE-121', 11),
(39, 'CCE-122', 11),
(40, 'CCE-221', 12),
(41, 'CCE-222', 12),
(42, 'CCE-223', 12),
(43, 'CCE-224	', 12),
(44, 'AES-221', 12),
(45, 'MAT-221', 12),
(46, 'CIT-220', 12),
(47, 'CIT-221', 12),
(48, 'CIT-222', 12),
(49, 'CIT-311', 13),
(50, 'CIT-312', 13),
(51, 'CIT-313	', 13),
(52, 'CIT-315', 13),
(54, 'CCE-310	', 13),
(55, 'CCE-311', 13),
(56, 'CCE-312	', 13),
(57, 'CCE-313	', 13),
(58, 'CCE-314	', 13),
(59, 'CIT-316', 13),
(60, 'CIT-320', 14),
(61, 'CIT-321', 14),
(62, 'CIT-322', 14),
(63, 'CIT-323', 14),
(64, 'CIT-324', 14),
(65, 'EEE-321', 14),
(66, 'EEE-322', 14),
(67, 'CCE-321', 14),
(68, 'CCE-322', 14),
(69, 'CCE-323', 14),
(70, 'CSE-410', 15),
(71, 'CSE-412', 15),
(72, 'CCE-411', 15),
(73, 'CCE-413', 15),
(74, 'CCE-415', 15),
(75, 'CCE-416', 15),
(76, 'CCE-417', 15),
(77, 'CIT-411', 15),
(78, 'CIT-412', 15),
(79, 'CSE-420', 16),
(80, 'CSE-421', 16),
(81, 'CCE-421', 16),
(82, 'CCE-422', 16),
(83, 'CIT-421', 16),
(84, 'CIT-422', 16),
(85, 'CIT-423', 16),
(89, 'CCE-121', 12),
(90, 'CCE-121', 15),
(91, 'CIT-121', 14),
(92, 'PHY-121', 18),
(93, 'PHY-112', 19),
(94, 'PHY-122', 18),
(95, 'PHY-122', 19),
(96, 'AES-221', 10);

-- --------------------------------------------------------

--
-- Table structure for table `teacherapp_special_course_instructor`
--

CREATE TABLE `teacherapp_special_course_instructor` (
  `id` bigint(20) NOT NULL,
  `courseinfo_id` varchar(20) DEFAULT NULL,
  `teacher_id_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacherapp_special_course_instructor`
--

INSERT INTO `teacherapp_special_course_instructor` (`id`, `courseinfo_id`, `teacher_id_id`) VALUES
(2, 'CIT-211', 9),
(3, 'CIT-212', 9),
(4, 'CIT-320', 9),
(5, 'CIT-321', 9),
(6, 'CSE-410', 9),
(7, 'CSE-420', 9),
(8, 'CSE-421', 9),
(9, 'CCE-121', 12),
(10, 'CCE-121', 15),
(11, 'PHY-121', 18),
(12, 'PHY-121', 19),
(13, 'PHY-122', 18),
(14, 'PHY-122', 19),
(15, 'CIT-121', 11),
(16, 'CIT-121', 14);

-- --------------------------------------------------------

--
-- Table structure for table `teacherapp_teacher`
--

CREATE TABLE `teacherapp_teacher` (
  `id` bigint(20) NOT NULL,
  `profile_pic` varchar(100) NOT NULL,
  `department_id` bigint(20) DEFAULT NULL,
  `faculty_id` bigint(20) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `phone_number` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacherapp_teacher`
--

INSERT INTO `teacherapp_teacher` (`id`, `profile_pic`, `department_id`, `faculty_id`, `user_id`, `phone_number`) VALUES
(9, 'teachers_profile_pics/1692702855_1532863496.jpg', 14, 2, 21, '+8801718323601'),
(10, 'teachers_profile_pics/1692703800_1532947914.jpg', 5, 2, 22, '+8801556449873'),
(11, 'teachers_profile_pics/1692703356_Dr._Md_AbdulMasud236.jpg', 5, 2, 30, '+8801915461874'),
(12, 'teachers_profile_pics/sobuz.jpg', 14, 2, 31, '+8801712653210'),
(13, 'teachers_profile_pics/1692703459_ChinmayBepery236.jpg', 5, 2, 32, '+8801710531024'),
(14, 'teachers_profile_pics/1726543751_Prof._Jamal_Hossain.jpg', 5, 2, 33, '+8801865102400'),
(15, 'teachers_profile_pics/sarna.jpg', 14, 2, 34, '+8801767265119'),
(16, 'teachers_profile_pics/arpita.png', 14, 2, 35, '+8801767265122'),
(18, 'teachers_profile_pics/dummy.png', 8, 2, 43, '+8801617782742'),
(19, 'teachers_profile_pics/dummy_1vCgZjN.png', 8, 2, 45, '+8801617782734');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `facultyapp_cost`
--
ALTER TABLE `facultyapp_cost`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facultyapp_course`
--
ALTER TABLE `facultyapp_course`
  ADD PRIMARY KEY (`course_code`),
  ADD UNIQUE KEY `unique_course_code_semester` (`course_code`,`semester_id`,`faculty_name_id`),
  ADD KEY `FacultyApp_course_faculty_name_id_5a758986_fk_FacultyAp` (`faculty_name_id`),
  ADD KEY `FacultyApp_course_semester_id_bdff5b1e_fk_FacultyAp` (`semester_id`);

--
-- Indexes for table `facultyapp_department`
--
ALTER TABLE `facultyapp_department`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dept_name` (`dept_name`),
  ADD UNIQUE KEY `unique_faculty_dept` (`dept_name`,`faculty_name_id`),
  ADD KEY `FacultyApp_departmen_faculty_name_id_978cc264_fk_FacultyAp` (`faculty_name_id`);

--
-- Indexes for table `facultyapp_faculty`
--
ALTER TABLE `facultyapp_faculty`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `faculty_name` (`faculty_name`);

--
-- Indexes for table `facultyapp_facultycontroller`
--
ALTER TABLE `facultyapp_facultycontroller`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD UNIQUE KEY `unique_faculty_admin` (`user_id`,`faculty_id`),
  ADD KEY `FacultyApp_facultyco_faculty_id_dd6592b6_fk_FacultyAp` (`faculty_id`);

--
-- Indexes for table `facultyapp_semester`
--
ALTER TABLE `facultyapp_semester`
  ADD PRIMARY KEY (`semester_number`);

--
-- Indexes for table `resultapp_course_mark`
--
ALTER TABLE `resultapp_course_mark`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ResultApp_course_mar_course_id_id_d7803cf7_fk_FacultyAp` (`course_id_id`),
  ADD KEY `ResultApp_course_mar_student_id_id_2314d49f_fk_StudentAp` (`student_id_id`);

--
-- Indexes for table `resultapp_exam_period`
--
ALTER TABLE `resultapp_exam_period`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ResultApp_exam_perio_faculty_id_26ec3345_fk_FacultyAp` (`faculty_id`);

--
-- Indexes for table `resultapp_semester_result`
--
ALTER TABLE `resultapp_semester_result`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ResultApp_semester_r_semester_id_01d40a14_fk_FacultyAp` (`semester_id`),
  ADD KEY `ResultApp_semester_r_student_id_id_7304f31f_fk_StudentAp` (`student_id_id`);

--
-- Indexes for table `resultapp_special_repeat`
--
ALTER TABLE `resultapp_special_repeat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ResultApp_special_re_faculty_id_51b0aa21_fk_FacultyAp` (`faculty_id`);

--
-- Indexes for table `studentapp_student`
--
ALTER TABLE `studentapp_student`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD UNIQUE KEY `reg_no` (`reg_no`),
  ADD UNIQUE KEY `phone_number` (`phone_number`),
  ADD UNIQUE KEY `unique_student` (`user_id`,`student_id`,`faculty_id`),
  ADD KEY `StudentApp_student_curr_semester_id_bcc4beed_fk_FacultyAp` (`curr_semester_id`),
  ADD KEY `StudentApp_student_faculty_id_28f4535a_fk_FacultyApp_faculty_id` (`faculty_id`);

--
-- Indexes for table `studentapp_student_transaction`
--
ALTER TABLE `studentapp_student_transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `StudentApp_student_t_semester_id_a05fffe7_fk_FacultyAp` (`semester_id`),
  ADD KEY `StudentApp_student_t_student_id_id_c05dff5d_fk_StudentAp` (`student_id_id`);

--
-- Indexes for table `teacherapp_course_instructor`
--
ALTER TABLE `teacherapp_course_instructor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `TeacherApp_course_in_courseinfo_id_4ca490af_fk_FacultyAp` (`courseinfo_id`),
  ADD KEY `TeacherApp_course_in_teacher_id_id_76b833d5_fk_TeacherAp` (`teacher_id_id`);

--
-- Indexes for table `teacherapp_special_course_instructor`
--
ALTER TABLE `teacherapp_special_course_instructor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `TeacherApp_special_c_courseinfo_id_aab715a5_fk_FacultyAp` (`courseinfo_id`),
  ADD KEY `TeacherApp_special_c_teacher_id_id_57aa17fe_fk_TeacherAp` (`teacher_id_id`);

--
-- Indexes for table `teacherapp_teacher`
--
ALTER TABLE `teacherapp_teacher`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD UNIQUE KEY `unique_teacher` (`user_id`,`faculty_id`,`department_id`),
  ADD UNIQUE KEY `phone_number` (`phone_number`),
  ADD KEY `TeacherApp_teacher_department_id_eb347db5_fk_FacultyAp` (`department_id`),
  ADD KEY `TeacherApp_teacher_faculty_id_1aeb5b5f_fk_FacultyApp_faculty_id` (`faculty_id`);

--
-- AUTO_INCREMENT for dumped tables
--

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=329;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `facultyapp_cost`
--
ALTER TABLE `facultyapp_cost`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `facultyapp_department`
--
ALTER TABLE `facultyapp_department`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `facultyapp_faculty`
--
ALTER TABLE `facultyapp_faculty`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `facultyapp_facultycontroller`
--
ALTER TABLE `facultyapp_facultycontroller`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `resultapp_course_mark`
--
ALTER TABLE `resultapp_course_mark`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=289;

--
-- AUTO_INCREMENT for table `resultapp_exam_period`
--
ALTER TABLE `resultapp_exam_period`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `resultapp_semester_result`
--
ALTER TABLE `resultapp_semester_result`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `resultapp_special_repeat`
--
ALTER TABLE `resultapp_special_repeat`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `studentapp_student`
--
ALTER TABLE `studentapp_student`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `studentapp_student_transaction`
--
ALTER TABLE `studentapp_student_transaction`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `teacherapp_course_instructor`
--
ALTER TABLE `teacherapp_course_instructor`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `teacherapp_special_course_instructor`
--
ALTER TABLE `teacherapp_special_course_instructor`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `teacherapp_teacher`
--
ALTER TABLE `teacherapp_teacher`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

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

--
-- Constraints for table `facultyapp_course`
--
ALTER TABLE `facultyapp_course`
  ADD CONSTRAINT `FacultyApp_course_faculty_name_id_5a758986_fk_FacultyAp` FOREIGN KEY (`faculty_name_id`) REFERENCES `facultyapp_faculty` (`id`),
  ADD CONSTRAINT `FacultyApp_course_semester_id_bdff5b1e_fk_FacultyAp` FOREIGN KEY (`semester_id`) REFERENCES `facultyapp_semester` (`semester_number`);

--
-- Constraints for table `facultyapp_department`
--
ALTER TABLE `facultyapp_department`
  ADD CONSTRAINT `FacultyApp_departmen_faculty_name_id_978cc264_fk_FacultyAp` FOREIGN KEY (`faculty_name_id`) REFERENCES `facultyapp_faculty` (`id`);

--
-- Constraints for table `facultyapp_facultycontroller`
--
ALTER TABLE `facultyapp_facultycontroller`
  ADD CONSTRAINT `FacultyApp_facultyco_faculty_id_dd6592b6_fk_FacultyAp` FOREIGN KEY (`faculty_id`) REFERENCES `facultyapp_faculty` (`id`),
  ADD CONSTRAINT `FacultyApp_facultycontroller_user_id_0033dc10_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `resultapp_course_mark`
--
ALTER TABLE `resultapp_course_mark`
  ADD CONSTRAINT `ResultApp_course_mar_course_id_id_d7803cf7_fk_FacultyAp` FOREIGN KEY (`course_id_id`) REFERENCES `facultyapp_course` (`course_code`),
  ADD CONSTRAINT `ResultApp_course_mar_student_id_id_2314d49f_fk_StudentAp` FOREIGN KEY (`student_id_id`) REFERENCES `studentapp_student` (`id`);

--
-- Constraints for table `resultapp_exam_period`
--
ALTER TABLE `resultapp_exam_period`
  ADD CONSTRAINT `ResultApp_exam_perio_faculty_id_26ec3345_fk_FacultyAp` FOREIGN KEY (`faculty_id`) REFERENCES `facultyapp_faculty` (`id`);

--
-- Constraints for table `resultapp_semester_result`
--
ALTER TABLE `resultapp_semester_result`
  ADD CONSTRAINT `ResultApp_semester_r_semester_id_01d40a14_fk_FacultyAp` FOREIGN KEY (`semester_id`) REFERENCES `facultyapp_semester` (`semester_number`),
  ADD CONSTRAINT `ResultApp_semester_r_student_id_id_7304f31f_fk_StudentAp` FOREIGN KEY (`student_id_id`) REFERENCES `studentapp_student` (`id`);

--
-- Constraints for table `resultapp_special_repeat`
--
ALTER TABLE `resultapp_special_repeat`
  ADD CONSTRAINT `ResultApp_special_re_faculty_id_51b0aa21_fk_FacultyAp` FOREIGN KEY (`faculty_id`) REFERENCES `facultyapp_faculty` (`id`);

--
-- Constraints for table `studentapp_student`
--
ALTER TABLE `studentapp_student`
  ADD CONSTRAINT `StudentApp_student_curr_semester_id_bcc4beed_fk_FacultyAp` FOREIGN KEY (`curr_semester_id`) REFERENCES `facultyapp_semester` (`semester_number`),
  ADD CONSTRAINT `StudentApp_student_faculty_id_28f4535a_fk_FacultyApp_faculty_id` FOREIGN KEY (`faculty_id`) REFERENCES `facultyapp_faculty` (`id`),
  ADD CONSTRAINT `StudentApp_student_user_id_188c6a88_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `studentapp_student_transaction`
--
ALTER TABLE `studentapp_student_transaction`
  ADD CONSTRAINT `StudentApp_student_t_semester_id_a05fffe7_fk_FacultyAp` FOREIGN KEY (`semester_id`) REFERENCES `facultyapp_semester` (`semester_number`),
  ADD CONSTRAINT `StudentApp_student_t_student_id_id_c05dff5d_fk_StudentAp` FOREIGN KEY (`student_id_id`) REFERENCES `studentapp_student` (`id`);

--
-- Constraints for table `teacherapp_course_instructor`
--
ALTER TABLE `teacherapp_course_instructor`
  ADD CONSTRAINT `TeacherApp_course_in_courseinfo_id_4ca490af_fk_FacultyAp` FOREIGN KEY (`courseinfo_id`) REFERENCES `facultyapp_course` (`course_code`),
  ADD CONSTRAINT `TeacherApp_course_in_teacher_id_id_76b833d5_fk_TeacherAp` FOREIGN KEY (`teacher_id_id`) REFERENCES `teacherapp_teacher` (`id`);

--
-- Constraints for table `teacherapp_special_course_instructor`
--
ALTER TABLE `teacherapp_special_course_instructor`
  ADD CONSTRAINT `TeacherApp_special_c_courseinfo_id_aab715a5_fk_FacultyAp` FOREIGN KEY (`courseinfo_id`) REFERENCES `facultyapp_course` (`course_code`),
  ADD CONSTRAINT `TeacherApp_special_c_teacher_id_id_57aa17fe_fk_TeacherAp` FOREIGN KEY (`teacher_id_id`) REFERENCES `teacherapp_teacher` (`id`);

--
-- Constraints for table `teacherapp_teacher`
--
ALTER TABLE `teacherapp_teacher`
  ADD CONSTRAINT `TeacherApp_teacher_department_id_eb347db5_fk_FacultyAp` FOREIGN KEY (`department_id`) REFERENCES `facultyapp_department` (`id`),
  ADD CONSTRAINT `TeacherApp_teacher_faculty_id_1aeb5b5f_fk_FacultyApp_faculty_id` FOREIGN KEY (`faculty_id`) REFERENCES `facultyapp_faculty` (`id`),
  ADD CONSTRAINT `TeacherApp_teacher_user_id_9f1efd6b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
