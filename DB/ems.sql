SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ems`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts_accounts`
--

CREATE TABLE `accounts_accounts` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `is_ec` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add accounts', 6, 'add_accounts'),
(22, 'Can change accounts', 6, 'change_accounts'),
(23, 'Can delete accounts', 6, 'delete_accounts'),
(24, 'Can view accounts', 6, 'view_accounts'),
(25, 'Can add club_ ec', 7, 'add_club_ec'),
(26, 'Can change club_ ec', 7, 'change_club_ec'),
(27, 'Can delete club_ ec', 7, 'delete_club_ec'),
(28, 'Can view club_ ec', 7, 'view_club_ec'),
(29, 'Can add clubs', 8, 'add_clubs'),
(30, 'Can change clubs', 8, 'change_clubs'),
(31, 'Can delete clubs', 8, 'delete_clubs'),
(32, 'Can view clubs', 8, 'view_clubs'),
(33, 'Can add member', 9, 'add_member'),
(34, 'Can change member', 9, 'change_member'),
(35, 'Can delete member', 9, 'delete_member'),
(36, 'Can view member', 9, 'view_member'),
(37, 'Can add gallery', 10, 'add_gallery'),
(38, 'Can change gallery', 10, 'change_gallery'),
(39, 'Can delete gallery', 10, 'delete_gallery'),
(40, 'Can view gallery', 10, 'view_gallery'),
(41, 'Can add academic_calendar', 11, 'add_academic_calendar'),
(42, 'Can change academic_calendar', 11, 'change_academic_calendar'),
(43, 'Can delete academic_calendar', 11, 'delete_academic_calendar'),
(44, 'Can view academic_calendar', 11, 'view_academic_calendar'),
(45, 'Can add events', 12, 'add_events'),
(46, 'Can change events', 12, 'change_events'),
(47, 'Can delete events', 12, 'delete_events'),
(48, 'Can view events', 12, 'view_events'),
(49, 'Can add perticipants_details', 13, 'add_perticipants_details'),
(50, 'Can change perticipants_details', 13, 'change_perticipants_details'),
(51, 'Can delete perticipants_details', 13, 'delete_perticipants_details'),
(52, 'Can view perticipants_details', 13, 'view_perticipants_details'),
(53, 'Can add news', 14, 'add_news'),
(54, 'Can change news', 14, 'change_news'),
(55, 'Can delete news', 14, 'delete_news'),
(56, 'Can view news', 14, 'view_news'),
(57, 'Can add notices', 15, 'add_notices'),
(58, 'Can change notices', 15, 'change_notices'),
(59, 'Can delete notices', 15, 'delete_notices'),
(60, 'Can view notices', 15, 'view_notices');

-- --------------------------------------------------------

--
-- Table structure for table `club_clubs`
--

CREATE TABLE `club_clubs` (
  `id` int(11) NOT NULL,
  `clubname` varchar(255) NOT NULL,
  `shortname` varchar(10) NOT NULL,
  `clubemail` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `form` date NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `club_club_ec`
--

CREATE TABLE `club_club_ec` (
  `id` int(11) NOT NULL,
  `date_joined` date NOT NULL,
  `designation` varchar(64) NOT NULL,
  `club_id` int(11) NOT NULL,
  `ec_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `club_gallery`
--

CREATE TABLE `club_gallery` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `upload_date` date NOT NULL,
  `club_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `club_member`
--

CREATE TABLE `club_member` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `std_id` varchar(13) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `semister` int(11) NOT NULL,
  `completed_credit` int(11) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `club_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Table structure for table `eventapp_events`
--

CREATE TABLE `eventapp_events` (
  `id` int(11) NOT NULL,
  `event_cover_photo` varchar(100) NOT NULL,
  `eventname` varchar(255) NOT NULL,
  `eventlocation` longtext NOT NULL,
  `description` longtext NOT NULL,
  `startdate` datetime(6) NOT NULL,
  `enddate` datetime(6) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `created_by_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eventapp_perticipants_details`
--

CREATE TABLE `eventapp_perticipants_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `std_id` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `club_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mainadmin_academic_calendar`
--

CREATE TABLE `mainadmin_academic_calendar` (
  `id` int(11) NOT NULL,
  `calendar_label` varchar(255) NOT NULL,
  `file` varchar(100) NOT NULL,
  `uploaded_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `newandnotices_news`
--

CREATE TABLE `newandnotices_news` (
  `id` int(11) NOT NULL,
  `newstitle` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `newandnotices_notices`
--

CREATE TABLE `newandnotices_notices` (
  `id` int(11) NOT NULL,
  `noticetitle` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts_accounts`
--
ALTER TABLE `accounts_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

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
-- Indexes for table `club_clubs`
--
ALTER TABLE `club_clubs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clubname` (`clubname`);

--
-- Indexes for table `club_club_ec`
--
ALTER TABLE `club_club_ec`
  ADD PRIMARY KEY (`id`),
  ADD KEY `club_club_ec_club_id_72d50398_fk_club_clubs_id` (`club_id`),
  ADD KEY `club_club_ec_ec_id_d7f96265_fk_accounts_accounts_id` (`ec_id`);

--
-- Indexes for table `club_gallery`
--
ALTER TABLE `club_gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `club_gallery_club_id_a07f735a_fk_club_clubs_id` (`club_id`);

--
-- Indexes for table `club_member`
--
ALTER TABLE `club_member`
  ADD PRIMARY KEY (`id`),
  ADD KEY `club_member_club_id_a1892159_fk_club_clubs_id` (`club_id`);

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
-- Indexes for table `eventapp_events`
--
ALTER TABLE `eventapp_events`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `eventname` (`eventname`),
  ADD KEY `eventapp_events_created_by_id_bb97ff3a_fk_club_clubs_id` (`created_by_id`);

--
-- Indexes for table `eventapp_perticipants_details`
--
ALTER TABLE `eventapp_perticipants_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eventapp_perticipants_details_club_id_d7597494_fk_club_clubs_id` (`club_id`),
  ADD KEY `eventapp_perticipant_event_id_ef162a10_fk_eventapp_` (`event_id`);

--
-- Indexes for table `mainadmin_academic_calendar`
--
ALTER TABLE `mainadmin_academic_calendar`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `calendar_label` (`calendar_label`);

--
-- Indexes for table `newandnotices_news`
--
ALTER TABLE `newandnotices_news`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `newstitle` (`newstitle`);

--
-- Indexes for table `newandnotices_notices`
--
ALTER TABLE `newandnotices_notices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `noticetitle` (`noticetitle`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts_accounts`
--
ALTER TABLE `accounts_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `club_clubs`
--
ALTER TABLE `club_clubs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `club_club_ec`
--
ALTER TABLE `club_club_ec`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `club_gallery`
--
ALTER TABLE `club_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `club_member`
--
ALTER TABLE `club_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `eventapp_events`
--
ALTER TABLE `eventapp_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `eventapp_perticipants_details`
--
ALTER TABLE `eventapp_perticipants_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mainadmin_academic_calendar`
--
ALTER TABLE `mainadmin_academic_calendar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `newandnotices_news`
--
ALTER TABLE `newandnotices_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `newandnotices_notices`
--
ALTER TABLE `newandnotices_notices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
-- Constraints for table `club_club_ec`
--
ALTER TABLE `club_club_ec`
  ADD CONSTRAINT `club_club_ec_club_id_72d50398_fk_club_clubs_id` FOREIGN KEY (`club_id`) REFERENCES `club_clubs` (`id`),
  ADD CONSTRAINT `club_club_ec_ec_id_d7f96265_fk_accounts_accounts_id` FOREIGN KEY (`ec_id`) REFERENCES `accounts_accounts` (`id`);

--
-- Constraints for table `club_gallery`
--
ALTER TABLE `club_gallery`
  ADD CONSTRAINT `club_gallery_club_id_a07f735a_fk_club_clubs_id` FOREIGN KEY (`club_id`) REFERENCES `club_clubs` (`id`);

--
-- Constraints for table `club_member`
--
ALTER TABLE `club_member`
  ADD CONSTRAINT `club_member_club_id_a1892159_fk_club_clubs_id` FOREIGN KEY (`club_id`) REFERENCES `club_clubs` (`id`);

--
-- Constraints for table `eventapp_events`
--
ALTER TABLE `eventapp_events`
  ADD CONSTRAINT `eventapp_events_created_by_id_bb97ff3a_fk_club_clubs_id` FOREIGN KEY (`created_by_id`) REFERENCES `club_clubs` (`id`);

--
-- Constraints for table `eventapp_perticipants_details`
--
ALTER TABLE `eventapp_perticipants_details`
  ADD CONSTRAINT `eventapp_perticipant_event_id_ef162a10_fk_eventapp_` FOREIGN KEY (`event_id`) REFERENCES `eventapp_events` (`id`),
  ADD CONSTRAINT `eventapp_perticipants_details_club_id_d7597494_fk_club_clubs_id` FOREIGN KEY (`club_id`) REFERENCES `club_clubs` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
