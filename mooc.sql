-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-04-27 04:40:13
-- 服务器版本： 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mooc`
--

-- --------------------------------------------------------

--
-- 表的结构 `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add permission', 1, 'add_permission'),
(2, 'Can change permission', 1, 'change_permission'),
(3, 'Can delete permission', 1, 'delete_permission'),
(4, 'Can add group', 2, 'add_group'),
(5, 'Can change group', 2, 'change_group'),
(6, 'Can delete group', 2, 'delete_group'),
(7, 'Can add content type', 3, 'add_contenttype'),
(8, 'Can change content type', 3, 'change_contenttype'),
(9, 'Can delete content type', 3, 'delete_contenttype'),
(10, 'Can add 用户信息', 4, 'add_userprofile'),
(11, 'Can change 用户信息', 4, 'change_userprofile'),
(12, 'Can delete 用户信息', 4, 'delete_userprofile'),
(13, 'Can add 轮播图', 5, 'add_banner'),
(14, 'Can change 轮播图', 5, 'change_banner'),
(15, 'Can delete 轮播图', 5, 'delete_banner'),
(16, 'Can add 邮箱验证码', 6, 'add_emailverifyrecord'),
(17, 'Can change 邮箱验证码', 6, 'change_emailverifyrecord'),
(18, 'Can delete 邮箱验证码', 6, 'delete_emailverifyrecord'),
(19, 'Can add 课程', 7, 'add_course'),
(20, 'Can change 课程', 7, 'change_course'),
(21, 'Can delete 课程', 7, 'delete_course'),
(22, 'Can add 章节', 8, 'add_lesson'),
(23, 'Can change 章节', 8, 'change_lesson'),
(24, 'Can delete 章节', 8, 'delete_lesson'),
(25, 'Can add 视频', 9, 'add_video'),
(26, 'Can change 视频', 9, 'change_video'),
(27, 'Can delete 视频', 9, 'delete_video'),
(28, 'Can add 课程资源', 10, 'add_courseresource'),
(29, 'Can change 课程资源', 10, 'change_courseresource'),
(30, 'Can delete 课程资源', 10, 'delete_courseresource'),
(31, 'Can add 用户咨询', 11, 'add_userask'),
(32, 'Can change 用户咨询', 11, 'change_userask'),
(33, 'Can delete 用户咨询', 11, 'delete_userask'),
(34, 'Can add 用户消息', 12, 'add_usermessage'),
(35, 'Can change 用户消息', 12, 'change_usermessage'),
(36, 'Can delete 用户消息', 12, 'delete_usermessage'),
(37, 'Can add 课程评论', 13, 'add_coursecoments'),
(38, 'Can change 课程评论', 13, 'change_coursecoments'),
(39, 'Can delete 课程评论', 13, 'delete_coursecoments'),
(40, 'Can add 用户课程', 14, 'add_usercourse'),
(41, 'Can change 用户课程', 14, 'change_usercourse'),
(42, 'Can delete 用户课程', 14, 'delete_usercourse'),
(43, 'Can add 用户收藏', 15, 'add_userfavorite'),
(44, 'Can change 用户收藏', 15, 'change_userfavorite'),
(45, 'Can delete 用户收藏', 15, 'delete_userfavorite'),
(46, 'Can add 城市', 16, 'add_citydict'),
(47, 'Can change 城市', 16, 'change_citydict'),
(48, 'Can delete 城市', 16, 'delete_citydict'),
(49, 'Can add 课程机构', 17, 'add_courseorg'),
(50, 'Can change 课程机构', 17, 'change_courseorg'),
(51, 'Can delete 课程机构', 17, 'delete_courseorg'),
(52, 'Can add 教师', 18, 'add_teacher'),
(53, 'Can change 教师', 18, 'change_teacher'),
(54, 'Can delete 教师', 18, 'delete_teacher'),
(55, 'Can add log entry', 19, 'add_logentry'),
(56, 'Can change log entry', 19, 'change_logentry'),
(57, 'Can delete log entry', 19, 'delete_logentry'),
(58, 'Can add session', 20, 'add_session'),
(59, 'Can change session', 20, 'change_session'),
(60, 'Can delete session', 20, 'delete_session'),
(61, 'Can view log entry', 19, 'view_logentry'),
(62, 'Can view group', 2, 'view_group'),
(63, 'Can view permission', 1, 'view_permission'),
(64, 'Can view content type', 3, 'view_contenttype'),
(65, 'Can view 课程', 7, 'view_course'),
(66, 'Can view 课程资源', 10, 'view_courseresource'),
(67, 'Can view 章节', 8, 'view_lesson'),
(68, 'Can view 视频', 9, 'view_video'),
(69, 'Can view 课程评论', 13, 'view_coursecoments'),
(70, 'Can view 用户咨询', 11, 'view_userask'),
(71, 'Can view 用户课程', 14, 'view_usercourse'),
(72, 'Can view 用户收藏', 15, 'view_userfavorite'),
(73, 'Can view 用户消息', 12, 'view_usermessage'),
(74, 'Can view 城市', 16, 'view_citydict'),
(75, 'Can view 课程机构', 17, 'view_courseorg'),
(76, 'Can view 教师', 18, 'view_teacher'),
(77, 'Can view session', 20, 'view_session'),
(78, 'Can view 轮播图', 5, 'view_banner'),
(79, 'Can view 邮箱验证码', 6, 'view_emailverifyrecord'),
(80, 'Can view 用户信息', 4, 'view_userprofile'),
(81, 'Can add Bookmark', 21, 'add_bookmark'),
(82, 'Can change Bookmark', 21, 'change_bookmark'),
(83, 'Can delete Bookmark', 21, 'delete_bookmark'),
(84, 'Can add User Setting', 22, 'add_usersettings'),
(85, 'Can change User Setting', 22, 'change_usersettings'),
(86, 'Can delete User Setting', 22, 'delete_usersettings'),
(87, 'Can add User Widget', 23, 'add_userwidget'),
(88, 'Can change User Widget', 23, 'change_userwidget'),
(89, 'Can delete User Widget', 23, 'delete_userwidget'),
(90, 'Can add log entry', 24, 'add_log'),
(91, 'Can change log entry', 24, 'change_log'),
(92, 'Can delete log entry', 24, 'delete_log'),
(93, 'Can view Bookmark', 21, 'view_bookmark'),
(94, 'Can view log entry', 24, 'view_log'),
(95, 'Can view User Setting', 22, 'view_usersettings'),
(96, 'Can view User Widget', 23, 'view_userwidget'),
(97, 'Can add captcha store', 25, 'add_captchastore'),
(98, 'Can change captcha store', 25, 'change_captchastore'),
(99, 'Can delete captcha store', 25, 'delete_captchastore'),
(100, 'Can view captcha store', 25, 'view_captchastore');

-- --------------------------------------------------------

--
-- 表的结构 `captcha_captchastore`
--

CREATE TABLE `captcha_captchastore` (
  `id` int(11) NOT NULL,
  `challenge` varchar(32) NOT NULL,
  `response` varchar(32) NOT NULL,
  `hashkey` varchar(40) NOT NULL,
  `expiration` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `captcha_captchastore`
--

INSERT INTO `captcha_captchastore` (`id`, `challenge`, `response`, `hashkey`, `expiration`) VALUES
(39, 'MEYB', 'meyb', 'abb7f43fd21b20ce37ac1607240741f56abab1c0', '2019-01-08 10:54:32.920394'),
(41, 'NJWR', 'njwr', '80a541494546a920b135e00b0b755b79276d4187', '2019-01-08 10:58:01.055427'),
(42, 'CVJH', 'cvjh', '1f42e53607e7462bb80408c26fc5c195eada3fbf', '2019-01-24 14:26:48.472880'),
(43, 'GLWH', 'glwh', '7dc6d82625ca0121417bbb6f9ed975e3a4dc5867', '2019-01-27 17:29:12.317506');

-- --------------------------------------------------------

--
-- 表的结构 `course_course`
--

CREATE TABLE `course_course` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `desc` varchar(300) NOT NULL,
  `detail` longtext NOT NULL,
  `degree` varchar(2) NOT NULL,
  `learn_time` int(11) NOT NULL,
  `students` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `click_nums` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_org_id` int(11) DEFAULT NULL,
  `category` varchar(20) NOT NULL,
  `tag` varchar(10) NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `teacher_tell` varchar(300) NOT NULL,
  `youneed_know` varchar(300) NOT NULL,
  `is_banner` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `course_course`
--

INSERT INTO `course_course` (`id`, `name`, `desc`, `detail`, `degree`, `learn_time`, `students`, `fav_nums`, `image`, `click_nums`, `add_time`, `course_org_id`, `category`, `tag`, `teacher_id`, `teacher_tell`, `youneed_know`, `is_banner`) VALUES
(1, 'python入门', '你想哟', '好家伙', 'cj', 48, 61, 1, 'course/2019/01/aobama.png', 3, '2019-01-24 16:05:00.000000', 11, '', '', NULL, '', '', 0),
(2, 'python进阶', '好家伙', '154894', 'zj', 0, 0, 0, 'course/2019/01/01_small.jpg', 0, '2019-01-24 16:08:00.000000', 11, '', '', NULL, '', '', 0),
(3, 'python进阶2', '积极建设大街覅哦啊', '时代覅哦哇嗯发蓝色的发', 'zj', 18, 0, 0, 'course/2019/01/57a801860001c34b12000460.jpg', 0, '2019-01-24 16:09:00.000000', 11, '', '', NULL, '', '', 0),
(4, 'java', 'java', 'java', 'cj', 18, 12, 0, 'course/2019/01/57a801860001c34b12000460_RhQkOum.jpg', 17, '2019-01-24 16:12:00.000000', 1, '初级', 'good', 1, '仰望星空，脚踏实地', '你有点飘呀，老弟', 0),
(5, 'java22', '1d51f616ef', 'afsewfasfwefasf', 'zj', 185, 0, 0, 'course/2019/01/57a801860001c34b12000460_aNuaPuF.jpg', 0, '2019-01-24 16:14:00.000000', 1, '', '', NULL, '', '', 0),
(6, '哲学原理', '你要的就是你要的', '好呀', 'zj', 0, 0, 0, 'course/2019/01/57aa86a0000145c512000460_6Mknmt7.jpg', 0, '2019-01-25 15:20:00.000000', 2, '', '', NULL, '', '', 0),
(7, '经营理念', '小孩你懂', '就死掉就覅违法水力发电', 'gj', 0, 0, 0, 'course/2019/01/02_mid_0bcWLaY.jpg', 0, '2019-01-25 15:21:00.000000', 2, '', '', NULL, '', '', 0),
(8, '高等数学', '你你你你你你您', '手动阀较为解放军拉丝粉', 'gj', 0, 0, 0, 'course/2019/01/bank1.jpg', 1, '2019-01-25 15:22:00.000000', 3, '', '', NULL, '', '', 0),
(9, '电视机佛啊', '发生佛你晚饭呢', '上的覅偶无法', 'zj', 0, 0, 0, 'course/2019/01/bank1_WIa1Pe3.jpg', 0, '2019-01-03 15:23:00.000000', 7, '', '', NULL, '', '', 0),
(10, '圣诞节覅哦啊及', '上房揭瓦及哦啊发', '鸡尾酒佛教搜昂', 'gj', 0, 7, 1, 'course/2019/01/02_mid_IPwmwx8.jpg', 33, '2019-01-25 15:24:00.000000', 9, '初级', 'good', NULL, '仰望星空，脚踏实地', '你有点飘呀，老弟', 0);

-- --------------------------------------------------------

--
-- 表的结构 `course_courseresource`
--

CREATE TABLE `course_courseresource` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `download` varchar(100) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `course_courseresource`
--

INSERT INTO `course_courseresource` (`id`, `name`, `download`, `add_time`, `course_id`) VALUES
(1, '第一章', 'course/resource/2019/01/01.jpg', '2019-01-25 21:58:00.000000', 1),
(2, '第一章', 'course/resource/2019/01/aobama.png', '2019-01-25 21:58:00.000000', 1),
(3, '思维导图', 'course/resource/2019/01/57a801860001c34b12000460.jpg', '2019-01-26 11:10:00.000000', 4);

-- --------------------------------------------------------

--
-- 表的结构 `course_lesson`
--

CREATE TABLE `course_lesson` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `course_lesson`
--

INSERT INTO `course_lesson` (`id`, `name`, `add_time`, `course_id`) VALUES
(1, 'python进阶', '2019-01-25 20:57:00.000000', 10),
(2, '第二章', '2019-01-25 20:57:00.000000', 1),
(3, '圣诞节覅哦啊及', '2019-01-25 20:57:00.000000', 7),
(4, '第一章', '2019-01-25 21:18:00.000000', 1),
(5, '第一章', '2019-01-26 10:32:00.000000', 4),
(6, '第二章--数据类型', '2019-01-26 10:32:00.000000', 4),
(7, '第三章--常用API', '2019-01-26 10:32:00.000000', 4);

-- --------------------------------------------------------

--
-- 表的结构 `course_video`
--

CREATE TABLE `course_video` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `url` varchar(200) NOT NULL,
  `learn_times` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `course_video`
--

INSERT INTO `course_video` (`id`, `name`, `add_time`, `lesson_id`, `url`, `learn_times`) VALUES
(1, '数据类型', '2019-01-25 21:18:00.000000', 4, 'C:\\Users\\Administrator\\Desktop\\asd.mp4', 0),
(2, 'socket编程', '2019-01-25 21:19:00.000000', 1, 'C:\\Users\\Administrator\\Desktop\\asd.mp4', 0),
(3, '装饰器', '2019-01-25 21:19:00.000000', 2, 'C:\\Users\\Administrator\\Desktop\\asd.mp4', 0),
(4, 'java的成长历史', '2019-01-26 10:33:00.000000', 5, 'C:\\Users\\Administrator\\Desktop\\asd.mp4', 8),
(5, '长辈', '2019-01-27 10:09:00.000000', 1, 'C:\\Users\\Administrator\\Desktop\\asd.mp4', 0);

-- --------------------------------------------------------

--
-- 表的结构 `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(19, 'admin', 'logentry'),
(2, 'auth', 'group'),
(1, 'auth', 'permission'),
(25, 'captcha', 'captchastore'),
(3, 'contenttypes', 'contenttype'),
(7, 'course', 'course'),
(10, 'course', 'courseresource'),
(8, 'course', 'lesson'),
(9, 'course', 'video'),
(13, 'operation', 'coursecoments'),
(11, 'operation', 'userask'),
(14, 'operation', 'usercourse'),
(15, 'operation', 'userfavorite'),
(12, 'operation', 'usermessage'),
(16, 'organization', 'citydict'),
(17, 'organization', 'courseorg'),
(18, 'organization', 'teacher'),
(20, 'sessions', 'session'),
(5, 'users', 'banner'),
(6, 'users', 'emailverifyrecord'),
(4, 'users', 'userprofile'),
(21, 'xadmin', 'bookmark'),
(24, 'xadmin', 'log'),
(22, 'xadmin', 'usersettings'),
(23, 'xadmin', 'userwidget');

-- --------------------------------------------------------

--
-- 表的结构 `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-01-02 10:52:32.277988'),
(2, 'contenttypes', '0002_remove_content_type_name', '2019-01-02 10:52:47.226740'),
(3, 'auth', '0001_initial', '2019-01-02 10:53:08.197032'),
(4, 'auth', '0002_alter_permission_name_max_length', '2019-01-02 10:53:10.320078'),
(5, 'auth', '0003_alter_user_email_max_length', '2019-01-02 10:53:10.471096'),
(6, 'auth', '0004_alter_user_username_opts', '2019-01-02 10:53:10.646120'),
(7, 'auth', '0005_alter_user_last_login_null', '2019-01-02 10:53:10.907079'),
(8, 'auth', '0006_require_contenttypes_0002', '2019-01-02 10:53:10.996708'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2019-01-02 10:53:11.099115'),
(10, 'auth', '0008_alter_user_username_max_length', '2019-01-02 10:53:11.367149'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2019-01-02 10:53:11.491165'),
(12, 'users', '0001_initial', '2019-01-02 10:53:28.658477'),
(13, 'course', '0001_initial', '2019-01-02 10:54:36.397768'),
(14, 'organization', '0001_initial', '2019-01-02 10:56:05.127610'),
(15, 'operation', '0001_initial', '2019-01-02 10:57:47.009999'),
(16, 'admin', '0001_initial', '2019-01-02 10:58:30.938761'),
(17, 'admin', '0002_logentry_remove_auto_add', '2019-01-02 10:58:31.056065'),
(18, 'sessions', '0001_initial', '2019-01-02 10:58:32.334319'),
(19, 'xadmin', '0001_initial', '2019-01-05 13:04:02.949141'),
(20, 'xadmin', '0002_log', '2019-01-05 13:04:05.083267'),
(21, 'xadmin', '0003_auto_20160715_0100', '2019-01-05 13:04:06.271333'),
(22, 'captcha', '0001_initial', '2019-01-07 10:54:26.145513'),
(23, 'organization', '0002_courseorg_category', '2019-01-09 10:00:08.327867'),
(24, 'organization', '0003_auto_20190110_0918', '2019-01-10 09:18:52.652813'),
(25, 'course', '0002_course_course_org', '2019-01-22 21:36:51.397110'),
(26, 'organization', '0004_teacher_image', '2019-01-24 15:05:05.968559'),
(27, 'course', '0003_course_category', '2019-01-25 16:59:52.593062'),
(28, 'course', '0004_course_tag', '2019-01-25 17:34:43.501332'),
(29, 'course', '0005_video_url', '2019-01-25 21:17:28.730945'),
(30, 'course', '0006_video_learn_times', '2019-01-25 21:24:40.175503'),
(31, 'course', '0007_auto_20190126_1025', '2019-01-26 10:25:40.299279'),
(32, 'organization', '0005_teacher_teacher_age', '2019-01-26 16:22:45.389930'),
(33, 'users', '0002_auto_20190127_1526', '2019-01-27 15:26:50.835936'),
(34, 'course', '0008_course_is_banner', '2019-01-27 17:05:45.972775'),
(35, 'organization', '0006_courseorg_tag', '2019-01-27 17:08:16.817994');

-- --------------------------------------------------------

--
-- 表的结构 `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('55sj183b4c0fb1imjntn45k63lpxwe20', 'YmQ2MDc3MGY5Zjk5ZGNjMThjZWU4ZDVjNGE1ZWRkMTQyMjA0NTgzODp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZjhkM2NlNDgxMzIzNzdhMWFhMGNiNThmNmU3ZTIxMDFjZmRiMDZkIn0=', '2019-02-14 10:01:52.172056'),
('buw1ndjtxpl20h5wjelfu3ydd8vvf5c0', 'YmQ2MDc3MGY5Zjk5ZGNjMThjZWU4ZDVjNGE1ZWRkMTQyMjA0NTgzODp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZjhkM2NlNDgxMzIzNzdhMWFhMGNiNThmNmU3ZTIxMDFjZmRiMDZkIn0=', '2019-02-23 16:51:50.723474'),
('epftb6zhgplmd97rmjz9nv4r7yqlz2jd', 'Mjk2YmUxZmZhY2JlODgxNjc3ZWVmNWU5MTEwOTA3YWI2OGRkNmYwNzp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiNDZlMjk4ZjYyYWU3ZWY5MmQ5ZGViYTE3NTcyOGZkMTNlODcyNjIyIiwiTElTVF9RVUVSWSI6W1sib3BlcmF0aW9uIiwidXNlcmZhdm9yaXRlIl0sIiJdfQ==', '2019-02-08 19:23:04.035468'),
('mo4x81y7oi561odtpgnzxgh5aovtlha6', 'YWMxOGQ2M2MzMGY3ZTM0NDU4OGY1NTMyZDUzNmIwN2IyNDI4MWE4Yjp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZjhkM2NlNDgxMzIzNzdhMWFhMGNiNThmNmU3ZTIxMDFjZmRiMDZkIiwibmF2X21lbnUiOiJbe1widGl0bGVcIjogXCJcdTY3M2FcdTY3ODRcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTU3Y2VcdTVlMDJcIiwgXCJ1cmxcIjogXCIveGFkbWluL29yZ2FuaXphdGlvbi9jaXR5ZGljdC9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTZ9LCB7XCJ0aXRsZVwiOiBcIlx1OGJmZVx1N2EwYlx1NjczYVx1Njc4NFwiLCBcInVybFwiOiBcIi94YWRtaW4vb3JnYW5pemF0aW9uL2NvdXJzZW9yZy9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTd9LCB7XCJ0aXRsZVwiOiBcIlx1NjU1OVx1NWUwOFwiLCBcInVybFwiOiBcIi94YWRtaW4vb3JnYW5pemF0aW9uL3RlYWNoZXIvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDE4fV0sIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi9vcmdhbml6YXRpb24vY2l0eWRpY3QvXCJ9LCB7XCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1wiLCBcIm1lbnVzXCI6IFt7XCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1x1NGZlMVx1NjA2ZlwiLCBcInVybFwiOiBcIi94YWRtaW4vdXNlcnMvdXNlcnByb2ZpbGUvXCIsIFwiaWNvblwiOiBcImZhIGZhLXVzZXJcIiwgXCJvcmRlclwiOiAzfSwge1widGl0bGVcIjogXCJcdTkwYWVcdTdiYjFcdTlhOGNcdThiYzFcdTc4MDFcIiwgXCJ1cmxcIjogXCIveGFkbWluL3VzZXJzL2VtYWlsdmVyaWZ5cmVjb3JkL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiA1fSwge1widGl0bGVcIjogXCJcdThmNmVcdTY0YWRcdTU2ZmVcIiwgXCJ1cmxcIjogXCIveGFkbWluL3VzZXJzL2Jhbm5lci9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogNn1dLCBcImZpcnN0X2ljb25cIjogXCJmYSBmYS11c2VyXCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi91c2Vycy91c2VycHJvZmlsZS9cIn0sIHtcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XHU2NGNkXHU0ZjVjXCIsIFwibWVudXNcIjogW3tcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XHU1NGE4XHU4YmUyXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9vcGVyYXRpb24vdXNlcmFzay9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTF9LCB7XCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1x1OGJmZVx1N2EwYlwiLCBcInVybFwiOiBcIi94YWRtaW4vb3BlcmF0aW9uL3VzZXJjb3Vyc2UvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDEyfSwge1widGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTZkODhcdTYwNmZcIiwgXCJ1cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi91c2VybWVzc2FnZS9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTN9LCB7XCJ0aXRsZVwiOiBcIlx1OGJmZVx1N2EwYlx1OGJjNFx1OGJiYVwiLCBcInVybFwiOiBcIi94YWRtaW4vb3BlcmF0aW9uL2NvdXJzZWNvbWVudHMvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDE0fSwge1widGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTY1MzZcdTg1Y2ZcIiwgXCJ1cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi91c2VyZmF2b3JpdGUvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDE1fV0sIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi9vcGVyYXRpb24vdXNlcmFzay9cIn0sIHtcInRpdGxlXCI6IFwiXHU3YmExXHU3NDA2XCIsIFwibWVudXNcIjogW3tcInRpdGxlXCI6IFwiXHU2NWU1XHU1ZmQ3XHU4YmIwXHU1ZjU1XCIsIFwidXJsXCI6IFwiL3hhZG1pbi94YWRtaW4vbG9nL1wiLCBcImljb25cIjogXCJmYSBmYS1jb2dcIiwgXCJvcmRlclwiOiAyMH1dLCBcImZpcnN0X2ljb25cIjogXCJmYSBmYS1jb2dcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL3hhZG1pbi9sb2cvXCJ9LCB7XCJ0aXRsZVwiOiBcIlx1OGJhNFx1OGJjMVx1NTQ4Y1x1NjM4OFx1Njc0M1wiLCBcIm1lbnVzXCI6IFt7XCJ0aXRsZVwiOiBcIlx1N2VjNFwiLCBcInVybFwiOiBcIi94YWRtaW4vYXV0aC9ncm91cC9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZ3JvdXBcIiwgXCJvcmRlclwiOiAyfSwge1widGl0bGVcIjogXCJcdTY3NDNcdTk2NTBcIiwgXCJ1cmxcIjogXCIveGFkbWluL2F1dGgvcGVybWlzc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtbG9ja1wiLCBcIm9yZGVyXCI6IDR9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZ3JvdXBcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCJ9LCB7XCJ0aXRsZVwiOiBcIlx1OGJmZVx1N2EwYlwiLCBcIm1lbnVzXCI6IFt7XCJ0aXRsZVwiOiBcIlx1OGJmZVx1N2EwYlwiLCBcInVybFwiOiBcIi94YWRtaW4vY291cnNlL2NvdXJzZS9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogN30sIHtcInRpdGxlXCI6IFwiXHU3YWUwXHU4MjgyXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9jb3Vyc2UvbGVzc29uL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiA4fSwge1widGl0bGVcIjogXCJcdTg5YzZcdTk4OTFcIiwgXCJ1cmxcIjogXCIveGFkbWluL2NvdXJzZS92aWRlby9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogOX0sIHtcInRpdGxlXCI6IFwiXHU4YmZlXHU3YTBiXHU4ZDQ0XHU2ZTkwXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9jb3Vyc2UvY291cnNlcmVzb3VyY2UvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDEwfV0sIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi9jb3Vyc2UvY291cnNlL1wifV0iLCJMSVNUX1FVRVJZIjpbWyJ1c2VycyIsImJhbm5lciJdLCIiXX0=', '2019-02-12 12:59:21.351597'),
('pu31ohdr87violeef6txyyqel4co091f', 'YjI4Zjk0MjRlYjVmZTMyMzNkNWNmMWViY2M1OGQ1ZjEzMWMzOTY0Yjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImFlYWNiMDM4ZGVkZjg1OTI2MTI5MjlmZDcxY2Q1NmRiMjljNDZkOTIifQ==', '2019-02-10 09:58:41.216004'),
('te76ew1odagmd1vy1vzckuahj0478h1g', 'YjI4Zjk0MjRlYjVmZTMyMzNkNWNmMWViY2M1OGQ1ZjEzMWMzOTY0Yjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImFlYWNiMDM4ZGVkZjg1OTI2MTI5MjlmZDcxY2Q1NmRiMjljNDZkOTIifQ==', '2019-04-19 20:42:52.427376'),
('v806436az2xq0zt3cnrvi9jhbh0yr18o', 'NjIzMGU4NjQ2MTczNDc5ZDczNjdjYjhhNTFmMjY0OWE2OTljNWI2MDp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiNDZlMjk4ZjYyYWU3ZWY5MmQ5ZGViYTE3NTcyOGZkMTNlODcyNjIyIiwiTElTVF9RVUVSWSI6W1sib3JnYW5pemF0aW9uIiwidGVhY2hlciJdLCIiXX0=', '2019-02-07 17:42:55.449588'),
('whfmaje4vrku4j3yrij2e3wfygeghvkl', 'NjQ3NDBkNmFiMmRiNjUyOGVmMjQ0MDE5ZTE4YWE4YzUyZGQwMTc5MTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjhhN2QzMDMzOGQyZWIxNDcxM2RmMjY5ZjA1YTM5Y2U5MzYxMjc4ZDYiLCJMSVNUX1FVRVJZIjpbWyJvcmdhbml6YXRpb24iLCJjb3Vyc2VvcmciXSwiIl19', '2019-01-23 10:40:51.685556');

-- --------------------------------------------------------

--
-- 表的结构 `operation_coursecoments`
--

CREATE TABLE `operation_coursecoments` (
  `id` int(11) NOT NULL,
  `comments` varchar(200) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `operation_userask`
--

CREATE TABLE `operation_userask` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `add_time` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `operation_usercourse`
--

CREATE TABLE `operation_usercourse` (
  `id` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `operation_usercourse`
--

INSERT INTO `operation_usercourse` (`id`, `add_time`, `course_id`, `user_id`) VALUES
(1, '2019-01-26 14:28:56.570387', 10, 14),
(2, '2019-01-26 14:43:39.450127', 1, 14),
(3, '2019-01-27 09:59:15.858080', 4, 2),
(4, '2019-01-27 09:59:46.605321', 1, 2),
(5, '2019-01-27 10:05:13.360032', 2, 14),
(6, '2019-01-27 10:05:35.024993', 3, 14),
(7, '2019-01-27 10:06:36.827578', 4, 14),
(8, '2019-01-27 10:25:54.300391', 5, 14),
(9, '2019-01-29 13:26:49.472139', 1, 15);

-- --------------------------------------------------------

--
-- 表的结构 `operation_userfavorite`
--

CREATE TABLE `operation_userfavorite` (
  `id` int(11) NOT NULL,
  `fav_id` int(11) NOT NULL,
  `fav_type` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `operation_userfavorite`
--

INSERT INTO `operation_userfavorite` (`id`, `fav_id`, `fav_type`, `add_time`, `user_id`) VALUES
(28, 11, 2, '2019-01-25 19:22:48.810595', 14),
(29, 1, 2, '2019-01-26 17:14:20.831959', 14),
(32, 1, 1, '2019-01-29 13:26:39.452078', 15),
(34, 10, 1, '2019-01-31 10:03:13.482683', 15),
(35, 1, 3, '2019-04-06 23:22:18.059802', 2);

-- --------------------------------------------------------

--
-- 表的结构 `operation_usermessage`
--

CREATE TABLE `operation_usermessage` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `message` varchar(500) NOT NULL,
  `has_read` tinyint(1) NOT NULL,
  `add_time` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `organization_citydict`
--

CREATE TABLE `organization_citydict` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `desc` varchar(200) NOT NULL,
  `add_time` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `organization_citydict`
--

INSERT INTO `organization_citydict` (`id`, `name`, `desc`, `add_time`) VALUES
(1, '上海', '上海，简称“沪”或“申”，是中国共产党的诞生地，中华人民共和国直辖市、国家中心城市、超大城市，国际经济、金融、贸易、航运、科技创新中心和综合交通枢纽，首批沿海开放城市。上海地处长江入海口，是长江经济带的龙头城市、G60科创走廊核心城市。隔东中国海与日本九州岛相望，南濒杭州湾，北、西与江苏、浙江两省相接。', '2018-02-06 09:42:00.000000'),
(2, '天津', '天津，简称津，是中华人民共和国直辖市、国家中心城市、超大城市、环渤海地区经济中心、首批沿海开放城市、综合交通枢纽，全国先进制造研发基地、北方国际航运核心区、金融创新运营示范区、改革开放先行区。天津自古因漕运而兴起，明永乐二年十一月二十一日（1404年12月23日）正式筑城，是中国古代唯一', '2018-12-04 09:49:00.000000'),
(3, '西安', '西安，古称长安、镐京，是陕西省会、副省级市、关中平原城市群核心城市、丝绸之路起点城市、“一带一路”核心区、中国西部地区重要的中心城市，国家重要的科研、教育、工业基地。西安是中国四大古都之一，联合国科教文组织于1981年确定的“世界历史名城”，美媒评选的世界十大古都之一。', '2018-06-12 09:50:00.000000'),
(4, '成都', '成都是四川省省会，简称蓉，别称蓉城、锦城，副省级市，特大城市，位于四川盆地西部，成都平原腹地，境内地势平坦、河网纵横、物产丰富、农业发达，属亚热带季风性湿润气候。下辖11区、4县，代管5县级市，总面积14335平方千米；2017年常住人口1604.5万人。', '2018-05-01 09:52:00.000000'),
(5, '黑龙江', '黑龙江省，简称黑，中华人民共和国省级行政区。省会哈尔滨，位于中国东北部，是中国位置最北、最东，纬度最高的省份，，黑龙江省因省境北面有黑龙江而得名，西起121°11′，东至135°05′，南起43°26′，北至53°33′，东西跨14个经度，南', '2018-05-23 09:52:00.000000'),
(6, '北京', '北京，简称“京”，是中华人民共和国的首都、直辖市、国家中心城市、超大城市、国际大都市，全国政治中心、文化中心、国际交往中心、科技创新中心和综合交通枢纽，是中国共产党中央委员会、中华人民共和国中央人民政府、全国人民代表大会、中国人民政治协商会议全国委员会、中华人民共和国中央军事委员.', '2019-01-09 10:10:00.000000');

-- --------------------------------------------------------

--
-- 表的结构 `organization_courseorg`
--

CREATE TABLE `organization_courseorg` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `desc` longtext NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `address` varchar(150) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `city_id` int(11) NOT NULL,
  `category` varchar(20) NOT NULL,
  `course_nums` int(11) NOT NULL,
  `students` int(11) NOT NULL,
  `tag` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `organization_courseorg`
--

INSERT INTO `organization_courseorg` (`id`, `name`, `desc`, `click_nums`, `fav_nums`, `image`, `address`, `add_time`, `city_id`, `category`, `course_nums`, `students`, `tag`) VALUES
(1, '北京盖特语言中心', '机构简介：凯特语言中心的课程体系以实用为导向，由浅入深，涵盖零起点-实\r\n\r\n开设课程：匈牙利语中教1对1,希腊语中教1对1,瑞典语中教1对1培训课程,瑞典语外教1对1,雅思培训,希腊语外教1对1,泰语培训中教1对1学习,泰语外教1对1,英语同声传译,托福培训,外教口语,日语初级中外教小班课,俄语外教1对1,日语外教小班课,商务日语,俄语中教1对1,意大利语中教1对1课程,意大利语外教1对1,日语等级考试,俄罗斯语言培训课程,法语培训中教1对1,法语外教1对1,实用日语,法语外教小班课,德语中教1对1课程,波兰语外教1对1,葡萄牙语中教1对1课程,匈牙利语外教1对1,德语外教1对1,英语外教小班课,日语口语,基础英语,波兰语中教1对1,阿拉伯语中教1对1课程,葡萄牙语外教1对1,日语外教1对1,英语外教1对1,出国日语,商务英语,西班牙语外教小班课半年班,斯洛文尼亚语中教1对1,韩语培训中教1对1课程,阿拉伯语外教1对1,西班牙语外教小班课,旅游英语,日语中外教小班课半年班,斯洛文尼亚语外教1对1,韩语外教1对1,西班牙语中教1对1,西班牙外教1对1,日语同声传译,日语中教1对1,实用英语\r\n\r\n联系人：凯特语言中心联系方式：400-029-0997转160360校区地址：雍和宫校区,十里堡校区,劲松校区,望京校区,高碑店校区,菜市口校区,海淀校区', 4, 0, 'org/201901/njdx.jpg', '北京', '2018-04-02 10:08:00.000000', 6, 'pxjg', 0, 0, '全国知名'),
(2, '北京精锐教育', '机构简介：优秀的高端教育连锁机构，由哈佛、北大精英创立\r\n\r\n开设课程：中考辅导,高考辅导,高中课程,小学课程,初中课程,小升初辅导,1对3化学辅导,1对3英语辅导,1对3物理辅导,1对3数学辅导,1对3语文辅导\r\n\r\n联系人：宋老师联系方式：400-029-0997转8978校区地址：右安门学习中心,广渠门学习中心,海淀黄庄学习中心,马家堡学习中心,石景山学习中心', 0, 0, 'org/201901/02_mid.jpg', '右安门学习中心', '2018-06-12 10:11:00.000000', 6, 'pxjg', 0, 0, '全国知名'),
(3, '北京仁和会计', '机构简介：理清中华企业财富，培训中国会计精英\r\n\r\n开设课程：美国注册管理会计师,财税主管班,精算会计班,注册会计师高效综合班,新锐会计班 ,财税主管班,中级会计职称精讲班,美国注册管理会计师,初级会计职称精讲班\r\n\r\n联系人：林老师联系方式：400-029-0997转7241校区地址：三元桥校区,崇文门校区,洋桥校区,通州梨园校区,四惠校区,大兴黄村校区,海淀苏州街校区', 0, 0, 'org/201901/aobama.png', '朝阳区-三元桥小区', '2019-01-09 10:12:00.000000', 6, 'pxjg', 0, 0, '全国知名'),
(4, '北京元真会计教育', '机构简介：会计精英培训优秀品牌，学会计，到元真\r\n\r\n开设课程：天津大学,领英学历班,对外经贸大学,燕山大学,中国石油大学,“领英”优能就业班,北京外国语大学,注册会计师,“领英”实战管理班,精讲会计证课程,会计进阶班,会计精英班,会计证速成 ,会计职称班,精细化财务,会计双证班,会计无忧就业班,中级会计职称全程班（新大纲）,会计实操入门实战,初级会计职称全程班\r\n\r\n联系人：元真会计联系方式：400-029-0997转9990校区地址：海淀校区,朝阳校区,大兴校区,通州校区,昌平校区,望京校区', 0, 0, 'org/201901/course.jpg', '朝阳区', '2019-01-09 10:14:00.000000', 6, 'pxjg', 0, 0, '全国知名'),
(5, '天津皇家少儿', '机构简介：雄厚的师资力量，专业的教学团队，完善的硬件设施\r\n\r\n开设课程：3-4岁幼儿英语班,4-5岁幼儿英语班,5-6岁幼儿英语班,9-10岁少儿英语班,6-7岁少儿英语班,7-8岁少儿英语班,8-9岁少儿英语班,皇家幼小衔接班,3至10岁暑期英语夏令营\r\n\r\n联系人：皇家英语联系方式：400-029-0997转9155校区地址：奥城校区,东马路校区,海光寺校区,下瓦房校区,河东万达校区,梅江校区,梅江校区', 0, 0, 'org/201901/57aa86a0000145c512000460.jpg', '和平区', '2018-03-05 10:21:00.000000', 2, 'pxjg', 0, 0, '全国知名'),
(6, '天津Tina舞蹈', '机构简介：Tina舞蹈健身中心是天津市首家纯女性肚皮舞培训机构，主要以培训肚皮舞为主，同时还有拉丁舞、酒吧热舞、迪厅领舞、民族舞等特色专业舞蹈培训。以肚皮舞为例，参加肚皮舞训练可以为你塑造完美体态，提高身体素质，培养健康心态，在舞蹈中身心得到充分放松，更可以让女人尽显卓越风姿，享受美丽健康，除此之外，拉丁舞的热辣，民族舞的风情，都让您在体会美丽舞步的同时与健康拉近距离。Tina舞蹈提供最专业最时尚的舞蹈健身培训。\r\n\r\n开设课程：天津肚皮舞培训,欢韵爵士舞即将开班\r\n\r\n联系人：Tina舞蹈联系方式：---校区地址：网点一', 0, 0, 'org/201901/companydes.jpg', '西青区', '2019-01-09 10:24:00.000000', 2, 'pxjg', 0, 0, '全国知名'),
(7, '天津爱艾斯教育', '机构简介：天津财经大学易思教育集团系与天津南开大学、天津财经大学、天津外国语大学、天津民航大学、天津工业大学等高等院校师资及国际著名教育集团外教名师深度合作，以教育集团式发展为战略目标，致力于各类特色教育培训，打造明星级服务及专业时尚的师资团队。现主要开设以下教育项目：1.雅思、托福培训、英语口语、MTI翻译资格、大英四六级：大师级导师强强联手，为莘莘学子开启通往梦想的英语大门。集英语口语、大学英语四级考试、口译、笔译、雅思、托福、英语国家文化、英语原版大片观赏与娱乐于一体的大型英语之旅。.师资由南大外国语学院教授及英国利兹大学、英国培生教育集团高级顾问讲师、资深外教共同担任。2、标准化日语——与天津外国语大学教授及日语知名讲师深度合作，拥有全新教学体系与特色，培养日语翻译及应用类专业人才。3.艺术教育——中英文播音主持专业教育培训：这里有历年参加播音主持艺考的考官，有专业院校的播音指导老师，还有更具实战的电台电视台主持人做你的后盾。专业实战团队，高等学府传媒导师助阵，不是一般培训所能比拟。这里是育人的圣殿，是明日之星的摇篮。后期将陆续开展新颖活跃的乐器、舞蹈、书画等艺术类素质教育培训。4.会计类考试培训，立足财大专业优势，精心组织本市一线、拥有多年教学经验丰富的会计教育权威名师团队，以优质的管理以及较高的通过率为己任，信以立志，做会计界良心教育！5.酒店管理实战课程：国际知名六星级酒店HRD(人力资源总监)，跨国品牌酒店多年双语培训HRM从业经验、海外酒店业实战派培训导师，深谙酒店业各部门运营管理规则，集团化酒店运营管理实战专家。熟悉涉外优秀酒店的运作规律及成长型酒店的实际情况，帮助众多企业规范管理，建立起先进的运营管控系统，实现管理和业绩的跨越式突破！全盘掌握并管理培训的需求调查、培训计划的制定、培训预算、培训的组织实施，评估考核，并亲自主持数家知名集团酒店的培训工作，担任首席女讲师、咨询顾问。本校幽雅环境——文化风景区名校专业教室地理位置有优势，天津市*宜人文化景区——百年马场道，绿草茵茵，教室通风明亮，交通便利，更使阔别学校生活多年的职场人士有减压之感。相比闹市商区，更让人心旷神怡，感悟岁月静好。\r\n\r\n开设课程：雅思VIP班,雅思6人班,雅思3-4人班\r\n\r\n联系人：爱艾斯教育联系方式：(022)83455882校区地址：网点一', 0, 0, 'org/201901/gj.png', '津南区', '2019-01-09 10:25:00.000000', 2, 'pxjg', 0, 0, '全国知名'),
(8, '上海昂立中学生', '机构简介：隶属于上海市昂立进修学院,优秀品牌著名商标\r\n\r\n开设课程：中考定向班,初一精品班,初三名师班,中考复读班,小升初名师班,初三尖子班,高三尖子班,初中全科尖子班,艺术特长生培训班,初二名师班,高二尖子班,初中全科精品班,高二学业水平考试班,“天原杯”化学竞赛班,初二精品班,高一尖子班,初中全科专题班,高考自主招生系列班,初一尖子班,高三名师班,小升初尖子班,高三精品班,自主招生班,高考复读班,小升初精品班,初三精品班,高二名师班,高中全科尖子班,初二尖子班,高二精品班,高中全科精品班,学科专题班,高一名师班,高中全科专题班,高一学业水平考试班,“新知杯”数学竞赛班,初一名师班,高一精品班\r\n\r\n联系人：昂立中学生联系方式：400-029-0997转9285校区地址：徐汇校区,田林校区,南方校区,七宝校区,闵行校区,南桥校区,金桥校区,三林校区,八佰伴校区', 0, 0, 'org/201901/module4_2.jpg', '黄浦区', '2018-07-02 10:27:00.000000', 1, 'gx', 0, 0, '全国知名'),
(9, '上海优路教育', '机构简介：全国建设工程企业管理岗位培训中心\r\n\r\n开设课程：教师招聘考试笔试提高班,教师招聘考试笔试 面试招考私塾班,教师招聘考试基础精讲班,教师招聘考试面试私塾班,全国教师资格证笔试专业突破班,教师招聘考试面试协议班,全国教师资格证尊享私塾班笔试,教师招聘考试面试无忧班,全国教师资格证零基础班笔试,中级经济师冲刺班,环境影响评价师考前点题,教师招聘考试笔试考前点睛班,全国教师资格证强化冲刺班笔试,环境影响评价师精讲班,教师招聘考试笔试习题密训班,全国教师资格证幼儿面试协议班,二级消防工程师精讲班,一级消防工程师零基础班,中级经济师至尊私塾班,安全工程师经典班,二级建造师银卡班,一级建造师面授钻石班,BIM全能实操班,一级消防工程师经典班,中级经济师VIP班,安全工程师VIP班,监理工程师VIP班,二级建造师协议班,一级建造师面授白金卡班,BIM战略规划 （取证+实操班）,一级消防工程师精讲班,中级经济师考前点题班,监理工程师考前信息,造价工程师案例高通6.0,一级建造师面授金卡班,BIM项目管理 （取证+实操班）,中级经济师签约班,环境影响评价师VIP班,监理工程师签约班,造价工程师精英集训班,一级建造师面授银卡班,全国教师资格证中小学面试协议班,二级消防工程师精英特训班,监理工程师协议班,一级建造师全程协议班,BIM战略规划 （理论取证班）,教师招聘考试笔试学科突破班,全国教师资格证全程班笔试,中级经济师精讲班,监理工程师精讲班,造价工程师超钻班,BIM建模技术 （取证+实操班）,教师招聘考试笔试至尊私塾班,全国教师资格证模考密训班笔试,环境影响评价师签约班,咨询工程师VIP班,造价工程师钻石班,BIM项目管理 （理论取证班）,教师招聘考试笔试VIP协议班,全国教师资格证考前点题班笔试,二级消防工程师零基础班,环境影响评价师协议班,咨询工程师签约班,造价工程师金卡班,二级建造师钻石B班,一级消防工程师总裁班,咨询工程师精讲班,造价工程师银卡班,二级建造师钻石A班,教师招聘考试笔试强化冲刺班,全国教师资格证精讲实战班笔试,二级消防工程师经典班,一级消防工程师精英特训班,安全工程师零基础班,二级建造师金卡班,一级建造师面授总裁班,执业药师,临床执业医师\r\n\r\n联系人：优路教育联系方式：400-029-0997转8739校区地址：普陀区总校,徐汇区分校', 0, 0, 'org/201901/57a801860001c34b12000460.jpg', '徐汇区', '2018-04-02 10:28:00.000000', 1, 'pxjg', 0, 0, '全国知名'),
(10, '上海爱贝儿英语', '机构简介：爱贝国际教育是专业从事国际儿童英语语言教育及研究的多元化教育公司。2009年，爱贝国际教育进驻中国，开创了具有中国特色的第二语言教育（ESL）模式。爱贝国际少儿英语项目是爱贝国际教育精心为中国儿童打造的幼少儿英语课程，充分结合美国现行课程体系、幼少儿第二语言学习习惯和儿童心理学，集面授课程、多媒体互动教学、网上教学于一体，着重体现效果性、应用性、知识性和趣味性。爱贝国际少儿英语，“更懂中国孩子”的美国教学体系，更适合中国孩子学习的儿童英语品牌。\r\n\r\n开设课程：MyWorldEnglis,MyWorldEnglis,K+课程,MyLittleWorld\r\n\r\n联系人：爱贝少儿英语联系方式：---校区地址：普陀校区', 0, 0, 'org/201901/02_small.jpg', '外滩', '2019-01-09 10:30:00.000000', 1, 'gr', 0, 0, '全国知名'),
(11, '西安交通大学', '西安交通大学（Xi’an Jiaotong University）简称“西安交大”，位于古都西安，是中华人民共和国教育部直属、中央直管副部级建制的综合性研究型全国重点大学，国家“七五”、“八五”首批重点建设高校之一，“211工程”首批重点建设的七所..', 0, 0, 'org/201901/module1_2.jpg', '西安', '2019-01-09 10:37:00.000000', 3, 'gx', 0, 0, '全国知名');

-- --------------------------------------------------------

--
-- 表的结构 `organization_teacher`
--

CREATE TABLE `organization_teacher` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `work_years` int(11) NOT NULL,
  `work_company` varchar(50) NOT NULL,
  `work_position` varchar(50) NOT NULL,
  `points` varchar(50) NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `org_id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `teacher_age` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `organization_teacher`
--

INSERT INTO `organization_teacher` (`id`, `name`, `work_years`, `work_company`, `work_position`, `points`, `click_nums`, `fav_nums`, `add_time`, `org_id`, `image`, `teacher_age`) VALUES
(1, '长辈', 5, '西交大', '西交大', '西交大', 5, 3, '2019-01-24 17:42:00.000000', 11, 'teacher/2019/01/aobama.png', 25);

-- --------------------------------------------------------

--
-- 表的结构 `users_banner`
--

CREATE TABLE `users_banner` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL,
  `index` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `users_banner`
--

INSERT INTO `users_banner` (`id`, `title`, `image`, `url`, `index`, `add_time`) VALUES
(1, '知名网学', 'banner/2019/01/57a801860001c34b12000460.jpg', 'http://www.sust.edu.cn/', 7, '2019-01-29 12:56:00.000000');

-- --------------------------------------------------------

--
-- 表的结构 `users_emailverifyrecord`
--

CREATE TABLE `users_emailverifyrecord` (
  `id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `send_type` varchar(30) NOT NULL,
  `send_time` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `users_emailverifyrecord`
--

INSERT INTO `users_emailverifyrecord` (`id`, `code`, `email`, `send_type`, `send_time`) VALUES
(1, 'H9ppoyb9dbalkltS', '333@163.com', '', '2019-01-07 14:06:14.868802'),
(2, '8CIflA2MZVqov5Ly', '444@163.com', '', '2019-01-07 14:14:31.245289'),
(3, 'kqJDCyTOjyyhDvwt', '4444@163.com', '', '2019-01-07 14:18:55.991281'),
(4, '7yOKq1RrHlYLUQsT', '15698735@qq.com', '', '2019-01-07 14:25:20.815580'),
(5, 'XYHGG8Kv5kgkZ6gq', '5555555@qq.com', '', '2019-01-07 14:28:35.715381'),
(6, '6JkKKYLDTIszskWz', '9999@163.com', '', '2019-01-07 14:32:48.822245'),
(7, 'n5INpCZoAC8zVBTi', '123456@163.com', '', '2019-01-07 14:35:35.739364'),
(8, 'aEvHOeiYMudnHNyQ', '1580542048@qq.com', '', '2019-01-08 10:50:10.623956'),
(9, 'pq9Sl0i8d9vu6bz3', '1580542048@qq.com', '', '2019-01-08 10:54:05.753694');

-- --------------------------------------------------------

--
-- 表的结构 `users_userprofile`
--

CREATE TABLE `users_userprofile` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `nick_name` varchar(50) NOT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(10) NOT NULL,
  `adress` varchar(100) NOT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `users_userprofile`
--

INSERT INTO `users_userprofile` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `nick_name`, `birthday`, `gender`, `adress`, `mobile`, `image`) VALUES
(1, 'pbkdf2_sha256$100000$1vHIy3LcI9iJ$oKZbksnB1x6qS3ScRGReIiS3g77Pse0Vd1vtUE9JF/Y=', '2019-01-09 09:41:46.782356', 1, 'root', '', '', '18209237838@163.com', 1, 1, '2019-01-05 13:06:12.297569', '', NULL, 'female', '', NULL, 'image/default.png'),
(2, 'pbkdf2_sha256$100000$QhuLs9n70moU$9Z8YCc4LrS7L1TszMBwzKc3C0mgrlordJcHBdvysSaU=', '2019-04-05 20:42:52.334369', 0, 'boby', '', '', '', 0, 1, '2019-01-06 18:35:04.843488', '', NULL, 'female', '', NULL, 'image/default.png'),
(3, 'pbkdf2_sha256$100000$9DdizpTdL3ZU$89nlAEWF2rUCxIh8ich/1QgdTSJBj6Y1dOaXmp6I/IM=', NULL, 0, '111@163.com', '', '', '111@163.com', 0, 0, '2019-01-07 11:45:46.987857', '', NULL, 'female', '', NULL, 'image/default.png'),
(4, 'pbkdf2_sha256$100000$msVJ6jOFXYaX$N8v8G3SV2Vqcp7aayyB/qwHYG2+rhARb7qQDqUMDuX0=', '2019-01-07 12:20:44.584033', 0, '222@163.com', '', '', '222@163.com', 0, 0, '2019-01-07 12:20:25.205870', '', NULL, 'female', '', NULL, 'image/default.png'),
(6, 'pbkdf2_sha256$100000$HsTzOhJmr6EA$nDzZ6RjLOiZZQb5MyRr6DpZ0RiM8PUX8TLabvobRyAU=', NULL, 0, '333@163.com', '', '', '333@163.com', 0, 0, '2019-01-07 14:06:14.315731', '', NULL, 'female', '', NULL, 'image/default.png'),
(7, 'pbkdf2_sha256$100000$F3LS5uLxur1J$qlYN6qRUOg6ax4NA6zpYM+h4p5PWh4n1YMZs82crwc0=', NULL, 0, '444@163.com', '', '', '444@163.com', 0, 0, '2019-01-07 14:14:15.848959', '', NULL, 'female', '', NULL, 'image/default.png'),
(8, 'pbkdf2_sha256$100000$QnOLKZsTMEAU$BvRutehyyIfEekGJISVjsLXEM8gL8SRmLNt1u1SzRqk=', NULL, 0, '4444@163.com', '', '', '4444@163.com', 0, 0, '2019-01-07 14:18:37.312761', '', NULL, 'female', '', NULL, 'image/default.png'),
(9, 'pbkdf2_sha256$100000$e6S92WlC3jtl$vWRRuT0U7dSKSVkhV3daCvoQOxLCr4SrcOmMYeDUjgw=', NULL, 0, '15698735@qq.com', '', '', '15698735@qq.com', 0, 1, '2019-01-07 14:25:14.231827', '', NULL, 'female', '', NULL, 'image/default.png'),
(10, 'pbkdf2_sha256$100000$5YuAFRSYF6l6$Wn0ITAKJIAfZRfpnqfLeiXdcpZ4htgpKLoNQalpn/II=', NULL, 0, '5555555@qq.com', '', '', '5555555@qq.com', 0, 0, '2019-01-07 14:28:26.946372', '', NULL, 'female', '', NULL, 'image/default.png'),
(11, 'pbkdf2_sha256$100000$kNix8wsGPJ66$hfyIgZago7AcDG+XR+LpbL5PXHEkzxUZYMnZkgz3BFM=', NULL, 0, '9999@163.com', '', '', '9999@163.com', 0, 0, '2019-01-07 14:32:47.961572', '', NULL, 'female', '', NULL, 'image/default.png'),
(12, 'pbkdf2_sha256$100000$wWQnVnHlM196$oNSS7oXhdNYS60Jsi1XHU0m19Ku+44Fk+c5IWlnBqs4=', '2019-01-07 14:37:36.983788', 0, '123456@163.com', '', '', '123456@163.com', 0, 1, '2019-01-07 14:35:34.916760', '', NULL, 'female', '', NULL, 'image/default.png'),
(13, 'pbkdf2_sha256$100000$4NRGcefMcz9A$LRH0Ej6Z5r+dSWzffRRyfy2WLUcTfUJJmLSL2tDdSR0=', NULL, 0, '1580542048@qq.com', '', '', '1580542048@qq.com', 0, 0, '2019-01-08 10:50:09.878916', '', NULL, 'female', '', NULL, 'image/default.png'),
(14, 'pbkdf2_sha256$100000$DhcE2U7zdFQq$A4voKf9hlE2EXpnmjI+h3lBUDzxHmMhIVLE8Z/5wMVQ=', '2019-01-28 17:58:24.982014', 1, 'bobys', '', '', '1580542047@qq.com', 1, 1, '2019-01-24 15:46:15.459411', '', NULL, 'female', '', NULL, 'image/201901/aobama.png'),
(15, 'pbkdf2_sha256$100000$6Gl2SEChDpah$u0OJna/8GPWno29vABhkQxHg8f3M1uyAXdnODNYkbco=', '2019-04-05 20:42:36.407899', 1, 'uuii', '', '', '156983@163.com', 1, 1, '2019-01-28 18:08:10.077654', '', NULL, 'female', '', NULL, 'image/default.png');

-- --------------------------------------------------------

--
-- 表的结构 `users_userprofile_groups`
--

CREATE TABLE `users_userprofile_groups` (
  `id` int(11) NOT NULL,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `users_userprofile_user_permissions`
--

CREATE TABLE `users_userprofile_user_permissions` (
  `id` int(11) NOT NULL,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `xadmin_bookmark`
--

CREATE TABLE `xadmin_bookmark` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url_name` varchar(64) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `xadmin_log`
--

CREATE TABLE `xadmin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` varchar(32) NOT NULL,
  `message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xadmin_log`
--

INSERT INTO `xadmin_log` (`id`, `action_time`, `ip_addr`, `object_id`, `object_repr`, `action_flag`, `message`, `content_type_id`, `user_id`) VALUES
(1, '2019-01-06 18:35:05.320515', '127.0.0.1', '2', 'boby', 'create', '已添加。', 4, 1),
(2, '2019-01-09 09:49:39.504698', '127.0.0.1', '1', 'CityDict object (1)', 'create', '已添加。', 16, 1),
(3, '2019-01-09 09:50:46.024854', '127.0.0.1', '2', 'CityDict object (2)', 'create', '已添加。', 16, 1),
(4, '2019-01-09 09:51:59.962015', '127.0.0.1', '3', 'CityDict object (3)', 'create', '已添加。', 16, 1),
(5, '2019-01-09 09:52:54.599623', '127.0.0.1', '4', 'CityDict object (4)', 'create', '已添加。', 16, 1),
(6, '2019-01-09 09:54:01.620187', '127.0.0.1', '5', 'CityDict object (5)', 'create', '已添加。', 16, 1),
(7, '2019-01-09 10:10:56.028267', '127.0.0.1', '6', '北京', 'create', '已添加。', 16, 1),
(8, '2019-01-09 10:11:17.150195', '127.0.0.1', '1', 'CourseOrg object (1)', 'create', '已添加。', 17, 1),
(9, '2019-01-09 10:12:54.991146', '127.0.0.1', '2', 'CourseOrg object (2)', 'create', '已添加。', 17, 1),
(10, '2019-01-09 10:14:47.186031', '127.0.0.1', '3', 'CourseOrg object (3)', 'create', '已添加。', 17, 1),
(11, '2019-01-09 10:17:36.927238', '127.0.0.1', '4', 'CourseOrg object (4)', 'create', '已添加。', 17, 1),
(12, '2019-01-09 10:24:22.607872', '127.0.0.1', '5', 'CourseOrg object (5)', 'create', '已添加。', 17, 1),
(13, '2019-01-09 10:25:31.615737', '127.0.0.1', '6', 'CourseOrg object (6)', 'create', '已添加。', 17, 1),
(14, '2019-01-09 10:26:43.282152', '127.0.0.1', '7', 'CourseOrg object (7)', 'create', '已添加。', 17, 1),
(15, '2019-01-09 10:28:50.821838', '127.0.0.1', '8', 'CourseOrg object (8)', 'create', '已添加。', 17, 1),
(16, '2019-01-09 10:30:07.786684', '127.0.0.1', '9', 'CourseOrg object (9)', 'create', '已添加。', 17, 1),
(17, '2019-01-09 10:31:36.763796', '127.0.0.1', '10', 'CourseOrg object (10)', 'create', '已添加。', 17, 1),
(18, '2019-01-09 10:39:04.758523', '127.0.0.1', '11', 'CourseOrg object (11)', 'create', '已添加。', 17, 1),
(19, '2019-01-09 10:39:45.816482', '127.0.0.1', '10', 'CourseOrg object (10)', 'change', '修改 image', 17, 1),
(20, '2019-01-09 10:40:06.943084', '127.0.0.1', '9', 'CourseOrg object (9)', 'change', '修改 image', 17, 1),
(21, '2019-01-09 10:40:50.443343', '127.0.0.1', '8', 'CourseOrg object (8)', 'change', '修改 image', 17, 1),
(22, '2019-01-24 16:08:38.258404', '127.0.0.1', '1', 'python入门', 'create', '已添加。', 7, 14),
(23, '2019-01-24 16:09:06.770956', '127.0.0.1', '2', 'python进阶', 'create', '已添加。', 7, 14),
(24, '2019-01-24 16:10:04.648089', '127.0.0.1', '3', 'python进阶2', 'create', '已添加。', 7, 14),
(25, '2019-01-24 16:11:02.303808', '127.0.0.1', '3', 'python进阶2', 'change', '修改 image 和 course_org', 7, 14),
(26, '2019-01-24 16:11:58.471329', '127.0.0.1', '2', 'python进阶', 'change', '修改 image 和 course_org', 7, 14),
(27, '2019-01-24 16:13:27.807063', '127.0.0.1', '4', 'java', 'create', '已添加。', 7, 14),
(28, '2019-01-24 16:15:20.368980', '127.0.0.1', '5', 'java22', 'create', '已添加。', 7, 14),
(29, '2019-01-24 16:45:58.254462', '127.0.0.1', '5', 'java22', 'change', '修改 image', 7, 14),
(30, '2019-01-24 17:42:53.954394', '127.0.0.1', '1', '[西安交通大学]的教师: 长辈', 'create', '已添加。', 18, 14),
(31, '2019-01-25 15:21:19.538054', '127.0.0.1', '6', '哲学原理', 'create', '已添加。', 7, 14),
(32, '2019-01-25 15:22:12.712265', '127.0.0.1', '7', '经营理念', 'create', '已添加。', 7, 14),
(33, '2019-01-25 15:22:48.119023', '127.0.0.1', '8', '高等数学', 'create', '已添加。', 7, 14),
(34, '2019-01-25 15:24:16.770597', '127.0.0.1', '9', '电视机佛啊', 'create', '已添加。', 7, 14),
(35, '2019-01-25 15:24:44.108202', '127.0.0.1', '10', '圣诞节覅哦啊及', 'create', '已添加。', 7, 14),
(36, '2019-01-25 20:57:22.111442', '127.0.0.1', '1', '《圣诞节覅哦啊及》课程章节>>python进阶', 'create', '已添加。', 8, 14),
(37, '2019-01-25 20:57:29.781663', '127.0.0.1', '2', '《圣诞节覅哦啊及》课程章节>>长辈', 'create', '已添加。', 8, 14),
(38, '2019-01-25 20:57:38.170124', '127.0.0.1', '3', '《经营理念》课程章节>>圣诞节覅哦啊及', 'create', '已添加。', 8, 14),
(39, '2019-01-25 21:18:33.586789', '127.0.0.1', '4', '《python入门》课程章节>>长辈', 'create', '已添加。', 8, 14),
(40, '2019-01-25 21:19:24.199130', '127.0.0.1', '1', 'Video object (1)', 'create', '已添加。', 9, 14),
(41, '2019-01-25 21:19:40.830516', '127.0.0.1', '2', 'Video object (2)', 'create', '已添加。', 9, 14),
(42, '2019-01-25 21:19:49.123699', '127.0.0.1', '3', 'Video object (3)', 'create', '已添加。', 9, 14),
(43, '2019-01-25 21:25:41.032936', '127.0.0.1', '4', '《python入门》课程章节>>第一章', 'change', '修改 name', 8, 14),
(44, '2019-01-25 21:26:20.347708', '127.0.0.1', '2', '《python入门》课程章节>>第二章', 'change', '修改 course 和 name', 8, 14),
(45, '2019-01-25 21:26:53.894238', '127.0.0.1', '3', 'Video object (3)', 'change', '修改 lesson 和 name', 9, 14),
(46, '2019-01-25 21:27:12.490934', '127.0.0.1', '2', 'Video object (2)', 'change', '修改 name', 9, 14),
(47, '2019-01-25 21:27:31.916608', '127.0.0.1', '1', 'Video object (1)', 'change', '修改 name', 9, 14),
(48, '2019-01-25 21:58:42.969388', '127.0.0.1', '1', 'CourseResource object (1)', 'create', '已添加。', 10, 14),
(49, '2019-01-25 21:59:03.189058', '127.0.0.1', '2', 'CourseResource object (2)', 'create', '已添加。', 10, 14),
(50, '2019-01-26 10:28:43.385618', '127.0.0.1', '10', '圣诞节覅哦啊及', 'change', '修改 tag，image，category，youneed_know 和 teacher_tell', 7, 14),
(51, '2019-01-26 10:29:36.816783', '127.0.0.1', '4', 'java', 'change', '修改 tag，image，category，teacher，youneed_know 和 teacher_tell', 7, 14),
(52, '2019-01-26 10:32:28.872893', '127.0.0.1', '5', '《java》课程章节>>第一章', 'create', '已添加。', 8, 14),
(53, '2019-01-26 10:32:50.235399', '127.0.0.1', '6', '《java》课程章节>>第二章--数据类型', 'create', '已添加。', 8, 14),
(54, '2019-01-26 10:33:14.459799', '127.0.0.1', '7', '《java》课程章节>>第三章--常用API', 'create', '已添加。', 8, 14),
(55, '2019-01-26 10:34:16.520327', '127.0.0.1', '4', 'Video object (4)', 'create', '已添加。', 9, 14),
(56, '2019-01-26 11:10:42.779615', '127.0.0.1', '3', 'CourseResource object (3)', 'create', '已添加。', 10, 14),
(57, '2019-01-26 15:33:51.708490', '127.0.0.1', '4', 'Video object (4)', 'change', '修改 url', 9, 14),
(58, '2019-01-26 15:34:13.642051', '127.0.0.1', '3', 'Video object (3)', 'change', '修改 url', 9, 14),
(59, '2019-01-26 15:34:26.873179', '127.0.0.1', '2', 'Video object (2)', 'change', '修改 url', 9, 14),
(60, '2019-01-26 15:34:37.021986', '127.0.0.1', '1', 'Video object (1)', 'change', '修改 url', 9, 14),
(61, '2019-01-26 15:34:44.830800', '127.0.0.1', '1', 'Video object (1)', 'change', '修改 url', 9, 14),
(62, '2019-01-27 10:09:41.686362', '127.0.0.1', '5', 'Video object (5)', 'create', '已添加。', 9, 14),
(63, '2019-01-27 12:49:32.312633', '127.0.0.1', '5', 'Video object (5)', 'change', '修改 url', 9, 14),
(64, '2019-01-27 12:49:44.569592', '127.0.0.1', '4', 'Video object (4)', 'change', '修改 url', 9, 14),
(65, '2019-01-27 12:49:58.376331', '127.0.0.1', '3', 'Video object (3)', 'change', '修改 url', 9, 14),
(66, '2019-01-27 12:50:10.308145', '127.0.0.1', '2', 'Video object (2)', 'change', '修改 url', 9, 14),
(67, '2019-01-27 12:50:19.728797', '127.0.0.1', '1', 'Video object (1)', 'change', '修改 url', 9, 14),
(68, '2019-01-29 12:59:20.892798', '127.0.0.1', '1', 'Banner object (1)', 'create', '已添加。', 5, 15);

-- --------------------------------------------------------

--
-- 表的结构 `xadmin_usersettings`
--

CREATE TABLE `xadmin_usersettings` (
  `id` int(11) NOT NULL,
  `key` varchar(256) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xadmin_usersettings`
--

INSERT INTO `xadmin_usersettings` (`id`, `key`, `value`, `user_id`) VALUES
(1, 'dashboard:home:pos', '', 1),
(2, 'dashboard:home:pos', '', 14),
(3, 'dashboard:home:pos', '', 15);

-- --------------------------------------------------------

--
-- 表的结构 `xadmin_userwidget`
--

CREATE TABLE `xadmin_userwidget` (
  `id` int(11) NOT NULL,
  `page_id` varchar(256) NOT NULL,
  `widget_type` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- Indexes for table `captcha_captchastore`
--
ALTER TABLE `captcha_captchastore`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hashkey` (`hashkey`);

--
-- Indexes for table `course_course`
--
ALTER TABLE `course_course`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_course_course_org_id_6a10e205_fk_organizat` (`course_org_id`),
  ADD KEY `course_course_teacher_id_f04a37b5_fk_organization_teacher_id` (`teacher_id`);

--
-- Indexes for table `course_courseresource`
--
ALTER TABLE `course_courseresource`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_courseresource_course_id_d5504211_fk_course_course_id` (`course_id`);

--
-- Indexes for table `course_lesson`
--
ALTER TABLE `course_lesson`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_lesson_course_id_65df4a1c_fk_course_course_id` (`course_id`);

--
-- Indexes for table `course_video`
--
ALTER TABLE `course_video`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_video_lesson_id_0731e8a9_fk_course_lesson_id` (`lesson_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` (`user_id`);

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
-- Indexes for table `operation_coursecoments`
--
ALTER TABLE `operation_coursecoments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `operation_coursecoments_course_id_edd18e38_fk_course_course_id` (`course_id`),
  ADD KEY `operation_coursecoments_user_id_39e2096f_fk_users_userprofile_id` (`user_id`);

--
-- Indexes for table `operation_userask`
--
ALTER TABLE `operation_userask`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `operation_usercourse`
--
ALTER TABLE `operation_usercourse`
  ADD PRIMARY KEY (`id`),
  ADD KEY `operation_usercourse_course_id_9f1eab2e_fk_course_course_id` (`course_id`),
  ADD KEY `operation_usercourse_user_id_835fe81a_fk_users_userprofile_id` (`user_id`);

--
-- Indexes for table `operation_userfavorite`
--
ALTER TABLE `operation_userfavorite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `operation_userfavorite_user_id_ad46a6af_fk_users_userprofile_id` (`user_id`);

--
-- Indexes for table `operation_usermessage`
--
ALTER TABLE `operation_usermessage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organization_citydict`
--
ALTER TABLE `organization_citydict`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organization_courseorg`
--
ALTER TABLE `organization_courseorg`
  ADD PRIMARY KEY (`id`),
  ADD KEY `organization_courseo_city_id_4a842f85_fk_organizat` (`city_id`);

--
-- Indexes for table `organization_teacher`
--
ALTER TABLE `organization_teacher`
  ADD PRIMARY KEY (`id`),
  ADD KEY `organization_teacher_org_id_cd000a1a_fk_organizat` (`org_id`);

--
-- Indexes for table `users_banner`
--
ALTER TABLE `users_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_emailverifyrecord`
--
ALTER TABLE `users_emailverifyrecord`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_userprofile`
--
ALTER TABLE `users_userprofile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `users_userprofile_groups`
--
ALTER TABLE `users_userprofile_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_userprofile_groups_userprofile_id_group_id_823cf2fc_uniq` (`userprofile_id`,`group_id`),
  ADD KEY `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `users_userprofile_user_permissions`
--
ALTER TABLE `users_userprofile_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_userprofile_user_p_userprofile_id_permissio_d0215190_uniq` (`userprofile_id`,`permission_id`),
  ADD KEY `users_userprofile_us_permission_id_393136b6_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `xadmin_bookmark`
--
ALTER TABLE `xadmin_bookmark`
  ADD PRIMARY KEY (`id`),
  ADD KEY `xadmin_bookmark_content_type_id_60941679_fk_django_co` (`content_type_id`),
  ADD KEY `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` (`user_id`);

--
-- Indexes for table `xadmin_log`
--
ALTER TABLE `xadmin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` (`content_type_id`),
  ADD KEY `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` (`user_id`);

--
-- Indexes for table `xadmin_usersettings`
--
ALTER TABLE `xadmin_usersettings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` (`user_id`);

--
-- Indexes for table `xadmin_userwidget`
--
ALTER TABLE `xadmin_userwidget`
  ADD PRIMARY KEY (`id`),
  ADD KEY `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` (`user_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- 使用表AUTO_INCREMENT `captcha_captchastore`
--
ALTER TABLE `captcha_captchastore`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- 使用表AUTO_INCREMENT `course_course`
--
ALTER TABLE `course_course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用表AUTO_INCREMENT `course_courseresource`
--
ALTER TABLE `course_courseresource`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `course_lesson`
--
ALTER TABLE `course_lesson`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用表AUTO_INCREMENT `course_video`
--
ALTER TABLE `course_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- 使用表AUTO_INCREMENT `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- 使用表AUTO_INCREMENT `operation_coursecoments`
--
ALTER TABLE `operation_coursecoments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `operation_userask`
--
ALTER TABLE `operation_userask`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `operation_usercourse`
--
ALTER TABLE `operation_usercourse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用表AUTO_INCREMENT `operation_userfavorite`
--
ALTER TABLE `operation_userfavorite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- 使用表AUTO_INCREMENT `operation_usermessage`
--
ALTER TABLE `operation_usermessage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `organization_citydict`
--
ALTER TABLE `organization_citydict`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `organization_courseorg`
--
ALTER TABLE `organization_courseorg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- 使用表AUTO_INCREMENT `organization_teacher`
--
ALTER TABLE `organization_teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `users_banner`
--
ALTER TABLE `users_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `users_emailverifyrecord`
--
ALTER TABLE `users_emailverifyrecord`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用表AUTO_INCREMENT `users_userprofile`
--
ALTER TABLE `users_userprofile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- 使用表AUTO_INCREMENT `users_userprofile_groups`
--
ALTER TABLE `users_userprofile_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `users_userprofile_user_permissions`
--
ALTER TABLE `users_userprofile_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `xadmin_bookmark`
--
ALTER TABLE `xadmin_bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `xadmin_log`
--
ALTER TABLE `xadmin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- 使用表AUTO_INCREMENT `xadmin_usersettings`
--
ALTER TABLE `xadmin_usersettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `xadmin_userwidget`
--
ALTER TABLE `xadmin_userwidget`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 限制导出的表
--

--
-- 限制表 `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- 限制表 `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- 限制表 `course_course`
--
ALTER TABLE `course_course`
  ADD CONSTRAINT `course_course_course_org_id_6a10e205_fk_organizat` FOREIGN KEY (`course_org_id`) REFERENCES `organization_courseorg` (`id`),
  ADD CONSTRAINT `course_course_teacher_id_f04a37b5_fk_organization_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `organization_teacher` (`id`);

--
-- 限制表 `course_courseresource`
--
ALTER TABLE `course_courseresource`
  ADD CONSTRAINT `course_courseresource_course_id_d5504211_fk_course_course_id` FOREIGN KEY (`course_id`) REFERENCES `course_course` (`id`);

--
-- 限制表 `course_lesson`
--
ALTER TABLE `course_lesson`
  ADD CONSTRAINT `course_lesson_course_id_65df4a1c_fk_course_course_id` FOREIGN KEY (`course_id`) REFERENCES `course_course` (`id`);

--
-- 限制表 `course_video`
--
ALTER TABLE `course_video`
  ADD CONSTRAINT `course_video_lesson_id_0731e8a9_fk_course_lesson_id` FOREIGN KEY (`lesson_id`) REFERENCES `course_lesson` (`id`);

--
-- 限制表 `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`);

--
-- 限制表 `operation_coursecoments`
--
ALTER TABLE `operation_coursecoments`
  ADD CONSTRAINT `operation_coursecoments_course_id_edd18e38_fk_course_course_id` FOREIGN KEY (`course_id`) REFERENCES `course_course` (`id`),
  ADD CONSTRAINT `operation_coursecoments_user_id_39e2096f_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`);

--
-- 限制表 `operation_usercourse`
--
ALTER TABLE `operation_usercourse`
  ADD CONSTRAINT `operation_usercourse_course_id_9f1eab2e_fk_course_course_id` FOREIGN KEY (`course_id`) REFERENCES `course_course` (`id`),
  ADD CONSTRAINT `operation_usercourse_user_id_835fe81a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`);

--
-- 限制表 `operation_userfavorite`
--
ALTER TABLE `operation_userfavorite`
  ADD CONSTRAINT `operation_userfavorite_user_id_ad46a6af_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`);

--
-- 限制表 `organization_courseorg`
--
ALTER TABLE `organization_courseorg`
  ADD CONSTRAINT `organization_courseo_city_id_4a842f85_fk_organizat` FOREIGN KEY (`city_id`) REFERENCES `organization_citydict` (`id`);

--
-- 限制表 `organization_teacher`
--
ALTER TABLE `organization_teacher`
  ADD CONSTRAINT `organization_teacher_org_id_cd000a1a_fk_organizat` FOREIGN KEY (`org_id`) REFERENCES `organization_courseorg` (`id`);

--
-- 限制表 `users_userprofile_groups`
--
ALTER TABLE `users_userprofile_groups`
  ADD CONSTRAINT `users_userprofile_gr_userprofile_id_a4496a80_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`),
  ADD CONSTRAINT `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- 限制表 `users_userprofile_user_permissions`
--
ALTER TABLE `users_userprofile_user_permissions`
  ADD CONSTRAINT `users_userprofile_us_permission_id_393136b6_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `users_userprofile_us_userprofile_id_34544737_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`);

--
-- 限制表 `xadmin_bookmark`
--
ALTER TABLE `xadmin_bookmark`
  ADD CONSTRAINT `xadmin_bookmark_content_type_id_60941679_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`);

--
-- 限制表 `xadmin_log`
--
ALTER TABLE `xadmin_log`
  ADD CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`);

--
-- 限制表 `xadmin_usersettings`
--
ALTER TABLE `xadmin_usersettings`
  ADD CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`);

--
-- 限制表 `xadmin_userwidget`
--
ALTER TABLE `xadmin_userwidget`
  ADD CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
