-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 21, 2021 at 06:23 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `IPS`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_emailaddress`
--

CREATE TABLE `account_emailaddress` (
  `id` bigint(20) NOT NULL,
  `email` varchar(254) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account_emailaddress`
--

INSERT INTO `account_emailaddress` (`id`, `email`, `verified`, `primary`, `user_id`) VALUES
(1, 'jpanoccam@unsa.edu.pe', 1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `account_emailconfirmation`
--

CREATE TABLE `account_emailconfirmation` (
  `id` bigint(20) NOT NULL,
  `created` datetime(6) NOT NULL,
  `sent` datetime(6) DEFAULT NULL,
  `key` varchar(64) NOT NULL,
  `email_address_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(25, 'Can add site', 7, 'add_site'),
(26, 'Can change site', 7, 'change_site'),
(27, 'Can delete site', 7, 'delete_site'),
(28, 'Can view site', 7, 'view_site'),
(29, 'Can add email address', 8, 'add_emailaddress'),
(30, 'Can change email address', 8, 'change_emailaddress'),
(31, 'Can delete email address', 8, 'delete_emailaddress'),
(32, 'Can view email address', 8, 'view_emailaddress'),
(33, 'Can add email confirmation', 9, 'add_emailconfirmation'),
(34, 'Can change email confirmation', 9, 'change_emailconfirmation'),
(35, 'Can delete email confirmation', 9, 'delete_emailconfirmation'),
(36, 'Can view email confirmation', 9, 'view_emailconfirmation'),
(37, 'Can add social account', 10, 'add_socialaccount'),
(38, 'Can change social account', 10, 'change_socialaccount'),
(39, 'Can delete social account', 10, 'delete_socialaccount'),
(40, 'Can view social account', 10, 'view_socialaccount'),
(41, 'Can add social application', 11, 'add_socialapp'),
(42, 'Can change social application', 11, 'change_socialapp'),
(43, 'Can delete social application', 11, 'delete_socialapp'),
(44, 'Can view social application', 11, 'view_socialapp'),
(45, 'Can add social application token', 12, 'add_socialtoken'),
(46, 'Can change social application token', 12, 'change_socialtoken'),
(47, 'Can delete social application token', 12, 'delete_socialtoken'),
(48, 'Can view social application token', 12, 'view_socialtoken'),
(49, 'Can add forum', 13, 'add_forum'),
(50, 'Can change forum', 13, 'change_forum'),
(51, 'Can delete forum', 13, 'delete_forum'),
(52, 'Can view forum', 13, 'view_forum'),
(53, 'Can add discussion', 14, 'add_discussion'),
(54, 'Can change discussion', 14, 'change_discussion'),
(55, 'Can delete discussion', 14, 'delete_discussion'),
(56, 'Can view discussion', 14, 'view_discussion');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$wOSDcGnzPDIWmIaMFKlVob$JcZxVtyNOdRir0pz2HtBhjy8R0upAI7KttXCTzyY/E4=', '2021-07-21 04:53:40.251228', 1, 'admin', '', '', 'admin@mail.com', 1, 1, '2021-07-21 04:44:18.281693'),
(2, '!U0jEGfQu9JQQOOM2Wgk8fyOsSMVb97hpCDrEr1N7', '2021-07-21 04:56:24.050239', 0, 'jhon_franklin', 'JHON FRANKLIN', 'PANOCCA MERMA', 'jpanoccam@unsa.edu.pe', 0, 1, '2021-07-21 04:56:23.582387'),
(3, 'pbkdf2_sha256$260000$GeKjqx74M8XRgdJTxIUJR7$2S456K/uFQGE9dfzAgPV4sOmfihICYeXNSWDxw/eKxg=', '2021-07-21 05:33:41.429459', 0, 'panocca', '', '', '', 0, 1, '2021-07-21 05:33:07.806741');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-07-21 04:48:56.334679', '4', 'localhost:8000', 1, '[{\"added\": {}}]', 7, 1),
(2, '2021-07-21 04:49:21.929896', '5', '127.0.0.1:8000', 1, '[{\"added\": {}}]', 7, 1),
(3, '2021-07-21 04:49:31.663152', '1', 'OAuth App', 1, '[{\"added\": {}}]', 11, 1),
(4, '2021-07-21 04:54:07.073628', '1', 'OAuth App', 2, '[{\"changed\": {\"fields\": [\"Sites\"]}}]', 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(8, 'account', 'emailaddress'),
(9, 'account', 'emailconfirmation'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(14, 'foro', 'discussion'),
(13, 'foro', 'forum'),
(6, 'sessions', 'session'),
(7, 'sites', 'site'),
(10, 'socialaccount', 'socialaccount'),
(11, 'socialaccount', 'socialapp'),
(12, 'socialaccount', 'socialtoken');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-07-21 04:38:44.289028'),
(2, 'auth', '0001_initial', '2021-07-21 04:38:57.042100'),
(3, 'account', '0001_initial', '2021-07-21 04:39:01.389574'),
(4, 'account', '0002_email_max_length', '2021-07-21 04:39:01.535412'),
(5, 'account', '0003_auto_20210716_1917', '2021-07-21 04:39:09.170869'),
(6, 'admin', '0001_initial', '2021-07-21 04:39:13.105499'),
(7, 'admin', '0002_logentry_remove_auto_add', '2021-07-21 04:39:13.177105'),
(8, 'admin', '0003_logentry_add_action_flag_choices', '2021-07-21 04:39:13.240483'),
(9, 'contenttypes', '0002_remove_content_type_name', '2021-07-21 04:39:15.457279'),
(10, 'auth', '0002_alter_permission_name_max_length', '2021-07-21 04:39:17.768508'),
(11, 'auth', '0003_alter_user_email_max_length', '2021-07-21 04:39:18.113193'),
(12, 'auth', '0004_alter_user_username_opts', '2021-07-21 04:39:18.180647'),
(13, 'auth', '0005_alter_user_last_login_null', '2021-07-21 04:39:20.699219'),
(14, 'auth', '0006_require_contenttypes_0002', '2021-07-21 04:39:21.024221'),
(15, 'auth', '0007_alter_validators_add_error_messages', '2021-07-21 04:39:21.184629'),
(16, 'auth', '0008_alter_user_username_max_length', '2021-07-21 04:39:21.493035'),
(17, 'auth', '0009_alter_user_last_name_max_length', '2021-07-21 04:39:22.092229'),
(18, 'auth', '0010_alter_group_name_max_length', '2021-07-21 04:39:22.738220'),
(19, 'auth', '0011_update_proxy_permissions', '2021-07-21 04:39:22.796199'),
(20, 'auth', '0012_alter_user_first_name_max_length', '2021-07-21 04:39:23.552216'),
(21, 'foro', '0001_initial', '2021-07-21 04:39:26.877336'),
(22, 'sessions', '0001_initial', '2021-07-21 04:39:28.204237'),
(23, 'sites', '0001_initial', '2021-07-21 04:39:29.119371'),
(24, 'sites', '0002_alter_domain_unique', '2021-07-21 04:39:29.564964'),
(25, 'socialaccount', '0001_initial', '2021-07-21 04:39:47.372918'),
(26, 'socialaccount', '0002_token_max_lengths', '2021-07-21 04:39:47.965220'),
(27, 'socialaccount', '0003_extra_data_default_dict', '2021-07-21 04:39:48.107925'),
(28, 'socialaccount', '0004_auto_20210716_1917', '2021-07-21 04:40:01.913973');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_site`
--

CREATE TABLE `django_site` (
  `id` int(11) NOT NULL,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(3, 'example.com', 'example.com'),
(4, 'localhost:8000', 'localhost'),
(5, '127.0.0.1:8000', 'localhost');

-- --------------------------------------------------------

--
-- Table structure for table `foro_comentario`
--

CREATE TABLE `foro_comentario` (
  `IDCom` int(11) NOT NULL,
  `ComUsuCod` int(11) NOT NULL,
  `ComIdPro` int(11) NOT NULL,
  `ComDes` text NOT NULL,
  `ComTip` tinyint(1) NOT NULL,
  `ComVis` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `foro_discussion`
--

CREATE TABLE `foro_discussion` (
  `id` bigint(20) NOT NULL,
  `discuss` varchar(1000) NOT NULL,
  `forum_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `foro_forum`
--

CREATE TABLE `foro_forum` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  `topic` varchar(300) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `link` varchar(100) DEFAULT NULL,
  `date_created` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `HosCod` int(11) NOT NULL,
  `HosNom` char(40) NOT NULL,
  `HosTipo` char(40) NOT NULL,
  `HosCama` int(11) NOT NULL,
  `HosDispo` tinyint(1) NOT NULL,
  `HosZonId` int(11) NOT NULL,
  `HosUsuCod` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `producto`
--

CREATE TABLE `producto` (
  `IdPro` int(11) NOT NULL,
  `ProNom` char(40) NOT NULL,
  `ProDis` tinyint(1) NOT NULL,
  `ProCant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `proveedor`
--

CREATE TABLE `proveedor` (
  `ProveCod` int(11) NOT NULL,
  `ProveNom` char(40) NOT NULL,
  `ProveIdPro` int(11) NOT NULL,
  `ProveUsuCod` int(11) NOT NULL,
  `UsuZonId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialaccount`
--

CREATE TABLE `socialaccount_socialaccount` (
  `id` bigint(20) NOT NULL,
  `provider` varchar(30) NOT NULL,
  `uid` varchar(191) NOT NULL,
  `last_login` datetime(6) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `extra_data` longtext NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `socialaccount_socialaccount`
--

INSERT INTO `socialaccount_socialaccount` (`id`, `provider`, `uid`, `last_login`, `date_joined`, `extra_data`, `user_id`) VALUES
(1, 'google', '104254280356094401732', '2021-07-21 04:56:23.637237', '2021-07-21 04:56:23.637269', '{\"id\": \"104254280356094401732\", \"email\": \"jpanoccam@unsa.edu.pe\", \"verified_email\": true, \"name\": \"JHON FRANKLIN PANOCCA MERMA\", \"given_name\": \"JHON FRANKLIN\", \"family_name\": \"PANOCCA MERMA\", \"picture\": \"https://lh3.googleusercontent.com/a-/AOh14GjlWHxT-k9Q6nunbSvFW2vYIExZLKCbNZAqETAL=s96-c\", \"locale\": \"es\", \"hd\": \"unsa.edu.pe\"}', 2);

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialapp`
--

CREATE TABLE `socialaccount_socialapp` (
  `id` bigint(20) NOT NULL,
  `provider` varchar(30) NOT NULL,
  `name` varchar(40) NOT NULL,
  `client_id` varchar(191) NOT NULL,
  `secret` varchar(191) NOT NULL,
  `key` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `socialaccount_socialapp`
--

INSERT INTO `socialaccount_socialapp` (`id`, `provider`, `name`, `client_id`, `secret`, `key`) VALUES
(1, 'google', 'OAuth App', '546948249460-riao1lkh8qnpknqlqvmprksdjuk34dug.apps.googleusercontent.com', 'ed55jBxS5ZxpQnauO3eDTuTc', '');

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialapp_sites`
--

CREATE TABLE `socialaccount_socialapp_sites` (
  `id` bigint(20) NOT NULL,
  `socialapp_id` bigint(20) NOT NULL,
  `site_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `socialaccount_socialapp_sites`
--

INSERT INTO `socialaccount_socialapp_sites` (`id`, `socialapp_id`, `site_id`) VALUES
(1, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialtoken`
--

CREATE TABLE `socialaccount_socialtoken` (
  `id` bigint(20) NOT NULL,
  `token` longtext NOT NULL,
  `token_secret` longtext NOT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `account_id` bigint(20) NOT NULL,
  `app_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `socialaccount_socialtoken`
--

INSERT INTO `socialaccount_socialtoken` (`id`, `token`, `token_secret`, `expires_at`, `account_id`, `app_id`) VALUES
(1, 'ya29.a0ARrdaM98ZiC9lwfX-NMbZMXPukjrFR0TkfC_mt_B50m_tNKi22lSpiwJsdeK-sjaV6Ul4XcGjUiKtX4zgWan1ihBPcVh-kRU0EV-niUjmFKbPxAPOkrDxXCr_ncyHTf0Pbpi7PLzneG1sJ4W-Fi7hsbH_N2ntw', '', '2021-07-21 05:56:22.220115', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `UsuCod` int(11) NOT NULL,
  `UsuNom` char(40) NOT NULL,
  `UsuApe` char(40) NOT NULL,
  `UsuZonId` int(11) NOT NULL,
  `UsuTel` int(9) NOT NULL,
  `UsuDir` char(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `zona`
--

CREATE TABLE `zona` (
  `IdZon` int(11) NOT NULL,
  `ZonDep` char(40) NOT NULL,
  `ZonPro` char(40) NOT NULL,
  `ZonDis` char(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `account_emailaddress_user_id_2c513194_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`),
  ADD KEY `account_emailconfirmation_email_address_id_5b7f8c58_fk` (`email_address_id`);

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
-- Indexes for table `django_site`
--
ALTER TABLE `django_site`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`);

--
-- Indexes for table `foro_comentario`
--
ALTER TABLE `foro_comentario`
  ADD PRIMARY KEY (`IDCom`,`ComUsuCod`,`ComIdPro`),
  ADD KEY `Relationship2` (`ComUsuCod`),
  ADD KEY `Relationship3` (`ComIdPro`);

--
-- Indexes for table `foro_discussion`
--
ALTER TABLE `foro_discussion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foro_discussion_forum_id_9e32ef67_fk_foro_forum_id` (`forum_id`);

--
-- Indexes for table `foro_forum`
--
ALTER TABLE `foro_forum`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`HosCod`,`HosUsuCod`,`HosZonId`),
  ADD KEY `Relationship14` (`HosUsuCod`),
  ADD KEY `Relationship15` (`HosZonId`);

--
-- Indexes for table `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`IdPro`);

--
-- Indexes for table `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`ProveCod`,`ProveIdPro`,`UsuZonId`,`ProveUsuCod`),
  ADD KEY `Relationship5` (`ProveIdPro`),
  ADD KEY `Relationship17` (`ProveUsuCod`,`UsuZonId`);

--
-- Indexes for table `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialaccount_socialaccount_provider_uid_fc810c6e_uniq` (`provider`,`uid`),
  ADD KEY `socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `socialaccount_socialapp`
--
ALTER TABLE `socialaccount_socialapp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socialaccount_socialapp_sites`
--
ALTER TABLE `socialaccount_socialapp_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialaccount_socialapp_sites_socialapp_id_site_id_71a9a768_uniq` (`socialapp_id`,`site_id`),
  ADD KEY `socialaccount_socialapp_sites_site_id_2579dee5_fk_django_site_id` (`site_id`);

--
-- Indexes for table `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq` (`app_id`,`account_id`),
  ADD KEY `socialaccount_socialtoken_account_id_951f210e_fk` (`account_id`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`UsuCod`,`UsuZonId`),
  ADD UNIQUE KEY `UsuCod` (`UsuCod`),
  ADD KEY `Relationship13` (`UsuZonId`);

--
-- Indexes for table `zona`
--
ALTER TABLE `zona`
  ADD PRIMARY KEY (`IdZon`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `django_site`
--
ALTER TABLE `django_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `foro_comentario`
--
ALTER TABLE `foro_comentario`
  MODIFY `IDCom` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `foro_discussion`
--
ALTER TABLE `foro_discussion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `foro_forum`
--
ALTER TABLE `foro_forum`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `HosCod` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `ProveCod` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `socialaccount_socialapp`
--
ALTER TABLE `socialaccount_socialapp`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `socialaccount_socialapp_sites`
--
ALTER TABLE `socialaccount_socialapp_sites`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `UsuCod` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  ADD CONSTRAINT `account_emailaddress_user_id_2c513194_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  ADD CONSTRAINT `account_emailconfirmation_email_address_id_5b7f8c58_fk` FOREIGN KEY (`email_address_id`) REFERENCES `account_emailaddress` (`id`);

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
-- Constraints for table `foro_comentario`
--
ALTER TABLE `foro_comentario`
  ADD CONSTRAINT `Relationship2` FOREIGN KEY (`ComUsuCod`) REFERENCES `usuario` (`UsuCod`),
  ADD CONSTRAINT `Relationship3` FOREIGN KEY (`ComIdPro`) REFERENCES `producto` (`IdPro`);

--
-- Constraints for table `foro_discussion`
--
ALTER TABLE `foro_discussion`
  ADD CONSTRAINT `foro_discussion_forum_id_9e32ef67_fk_foro_forum_id` FOREIGN KEY (`forum_id`) REFERENCES `foro_forum` (`id`);

--
-- Constraints for table `hospital`
--
ALTER TABLE `hospital`
  ADD CONSTRAINT `Relationship14` FOREIGN KEY (`HosUsuCod`) REFERENCES `usuario` (`UsuCod`),
  ADD CONSTRAINT `Relationship15` FOREIGN KEY (`HosZonId`) REFERENCES `zona` (`IdZon`);

--
-- Constraints for table `proveedor`
--
ALTER TABLE `proveedor`
  ADD CONSTRAINT `Relationship17` FOREIGN KEY (`ProveUsuCod`,`UsuZonId`) REFERENCES `usuario` (`UsuCod`, `UsuZonId`),
  ADD CONSTRAINT `Relationship5` FOREIGN KEY (`ProveIdPro`) REFERENCES `producto` (`IdPro`);

--
-- Constraints for table `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  ADD CONSTRAINT `socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `socialaccount_socialapp_sites`
--
ALTER TABLE `socialaccount_socialapp_sites`
  ADD CONSTRAINT `socialaccount_socialapp_sites_site_id_2579dee5_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`);

--
-- Constraints for table `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  ADD CONSTRAINT `socialaccount_socialtoken_account_id_951f210e_fk` FOREIGN KEY (`account_id`) REFERENCES `socialaccount_socialaccount` (`id`),
  ADD CONSTRAINT `socialaccount_socialtoken_app_id_636a42d7_fk` FOREIGN KEY (`app_id`) REFERENCES `socialaccount_socialapp` (`id`);

--
-- Constraints for table `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `Relationship13` FOREIGN KEY (`UsuZonId`) REFERENCES `zona` (`IdZon`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
