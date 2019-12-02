/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50727
 Source Host           : localhost:3306
 Source Schema         : Compiler_teaching

 Target Server Type    : MySQL
 Target Server Version : 50727
 File Encoding         : 65001

 Date: 02/12/2019 23:07:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------
BEGIN;
INSERT INTO `auth_group` VALUES (3, '内容管理');
INSERT INTO `auth_group` VALUES (2, '前端管咯');
INSERT INTO `auth_group` VALUES (1, '后端管理员');
COMMIT;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=209 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------
BEGIN;
INSERT INTO `auth_group_permissions` VALUES (1, 1, 1);
INSERT INTO `auth_group_permissions` VALUES (2, 1, 2);
INSERT INTO `auth_group_permissions` VALUES (3, 1, 3);
INSERT INTO `auth_group_permissions` VALUES (4, 1, 4);
INSERT INTO `auth_group_permissions` VALUES (5, 1, 5);
INSERT INTO `auth_group_permissions` VALUES (6, 1, 6);
INSERT INTO `auth_group_permissions` VALUES (7, 1, 7);
INSERT INTO `auth_group_permissions` VALUES (8, 1, 8);
INSERT INTO `auth_group_permissions` VALUES (9, 1, 9);
INSERT INTO `auth_group_permissions` VALUES (10, 1, 10);
INSERT INTO `auth_group_permissions` VALUES (11, 1, 11);
INSERT INTO `auth_group_permissions` VALUES (12, 1, 12);
INSERT INTO `auth_group_permissions` VALUES (13, 1, 13);
INSERT INTO `auth_group_permissions` VALUES (14, 1, 14);
INSERT INTO `auth_group_permissions` VALUES (15, 1, 15);
INSERT INTO `auth_group_permissions` VALUES (16, 1, 16);
INSERT INTO `auth_group_permissions` VALUES (17, 1, 17);
INSERT INTO `auth_group_permissions` VALUES (18, 1, 18);
INSERT INTO `auth_group_permissions` VALUES (19, 1, 19);
INSERT INTO `auth_group_permissions` VALUES (20, 1, 20);
INSERT INTO `auth_group_permissions` VALUES (21, 1, 21);
INSERT INTO `auth_group_permissions` VALUES (22, 1, 22);
INSERT INTO `auth_group_permissions` VALUES (23, 1, 23);
INSERT INTO `auth_group_permissions` VALUES (24, 1, 24);
INSERT INTO `auth_group_permissions` VALUES (25, 1, 25);
INSERT INTO `auth_group_permissions` VALUES (26, 1, 26);
INSERT INTO `auth_group_permissions` VALUES (27, 1, 27);
INSERT INTO `auth_group_permissions` VALUES (28, 1, 28);
INSERT INTO `auth_group_permissions` VALUES (29, 1, 29);
INSERT INTO `auth_group_permissions` VALUES (30, 1, 30);
INSERT INTO `auth_group_permissions` VALUES (31, 1, 31);
INSERT INTO `auth_group_permissions` VALUES (32, 1, 32);
INSERT INTO `auth_group_permissions` VALUES (33, 1, 33);
INSERT INTO `auth_group_permissions` VALUES (34, 1, 34);
INSERT INTO `auth_group_permissions` VALUES (35, 1, 35);
INSERT INTO `auth_group_permissions` VALUES (36, 1, 36);
INSERT INTO `auth_group_permissions` VALUES (37, 1, 37);
INSERT INTO `auth_group_permissions` VALUES (38, 1, 38);
INSERT INTO `auth_group_permissions` VALUES (39, 1, 39);
INSERT INTO `auth_group_permissions` VALUES (40, 1, 40);
INSERT INTO `auth_group_permissions` VALUES (41, 1, 41);
INSERT INTO `auth_group_permissions` VALUES (42, 1, 42);
INSERT INTO `auth_group_permissions` VALUES (43, 1, 43);
INSERT INTO `auth_group_permissions` VALUES (44, 1, 44);
INSERT INTO `auth_group_permissions` VALUES (45, 1, 45);
INSERT INTO `auth_group_permissions` VALUES (46, 1, 46);
INSERT INTO `auth_group_permissions` VALUES (47, 1, 47);
INSERT INTO `auth_group_permissions` VALUES (48, 1, 48);
INSERT INTO `auth_group_permissions` VALUES (49, 1, 49);
INSERT INTO `auth_group_permissions` VALUES (50, 1, 50);
INSERT INTO `auth_group_permissions` VALUES (51, 1, 51);
INSERT INTO `auth_group_permissions` VALUES (52, 1, 52);
INSERT INTO `auth_group_permissions` VALUES (53, 1, 53);
INSERT INTO `auth_group_permissions` VALUES (54, 1, 54);
INSERT INTO `auth_group_permissions` VALUES (55, 1, 55);
INSERT INTO `auth_group_permissions` VALUES (56, 1, 56);
INSERT INTO `auth_group_permissions` VALUES (57, 1, 57);
INSERT INTO `auth_group_permissions` VALUES (58, 1, 58);
INSERT INTO `auth_group_permissions` VALUES (59, 1, 59);
INSERT INTO `auth_group_permissions` VALUES (60, 1, 60);
INSERT INTO `auth_group_permissions` VALUES (61, 1, 61);
INSERT INTO `auth_group_permissions` VALUES (62, 1, 62);
INSERT INTO `auth_group_permissions` VALUES (63, 1, 63);
INSERT INTO `auth_group_permissions` VALUES (64, 1, 64);
INSERT INTO `auth_group_permissions` VALUES (65, 1, 65);
INSERT INTO `auth_group_permissions` VALUES (66, 1, 66);
INSERT INTO `auth_group_permissions` VALUES (67, 1, 67);
INSERT INTO `auth_group_permissions` VALUES (68, 1, 68);
INSERT INTO `auth_group_permissions` VALUES (69, 1, 69);
INSERT INTO `auth_group_permissions` VALUES (70, 1, 70);
INSERT INTO `auth_group_permissions` VALUES (71, 1, 71);
INSERT INTO `auth_group_permissions` VALUES (72, 1, 72);
INSERT INTO `auth_group_permissions` VALUES (73, 2, 1);
INSERT INTO `auth_group_permissions` VALUES (74, 2, 2);
INSERT INTO `auth_group_permissions` VALUES (75, 2, 4);
INSERT INTO `auth_group_permissions` VALUES (76, 2, 5);
INSERT INTO `auth_group_permissions` VALUES (77, 2, 6);
INSERT INTO `auth_group_permissions` VALUES (78, 2, 7);
INSERT INTO `auth_group_permissions` VALUES (79, 2, 8);
INSERT INTO `auth_group_permissions` VALUES (80, 2, 12);
INSERT INTO `auth_group_permissions` VALUES (81, 2, 13);
INSERT INTO `auth_group_permissions` VALUES (82, 2, 14);
INSERT INTO `auth_group_permissions` VALUES (83, 2, 15);
INSERT INTO `auth_group_permissions` VALUES (84, 2, 16);
INSERT INTO `auth_group_permissions` VALUES (85, 2, 17);
INSERT INTO `auth_group_permissions` VALUES (86, 2, 18);
INSERT INTO `auth_group_permissions` VALUES (87, 2, 19);
INSERT INTO `auth_group_permissions` VALUES (88, 2, 20);
INSERT INTO `auth_group_permissions` VALUES (89, 2, 21);
INSERT INTO `auth_group_permissions` VALUES (90, 2, 22);
INSERT INTO `auth_group_permissions` VALUES (91, 2, 23);
INSERT INTO `auth_group_permissions` VALUES (92, 2, 24);
INSERT INTO `auth_group_permissions` VALUES (93, 2, 25);
INSERT INTO `auth_group_permissions` VALUES (94, 2, 26);
INSERT INTO `auth_group_permissions` VALUES (95, 2, 27);
INSERT INTO `auth_group_permissions` VALUES (96, 2, 28);
INSERT INTO `auth_group_permissions` VALUES (97, 2, 29);
INSERT INTO `auth_group_permissions` VALUES (98, 2, 30);
INSERT INTO `auth_group_permissions` VALUES (99, 2, 31);
INSERT INTO `auth_group_permissions` VALUES (100, 2, 32);
INSERT INTO `auth_group_permissions` VALUES (101, 2, 33);
INSERT INTO `auth_group_permissions` VALUES (102, 2, 34);
INSERT INTO `auth_group_permissions` VALUES (103, 2, 35);
INSERT INTO `auth_group_permissions` VALUES (104, 2, 36);
INSERT INTO `auth_group_permissions` VALUES (105, 2, 37);
INSERT INTO `auth_group_permissions` VALUES (106, 2, 38);
INSERT INTO `auth_group_permissions` VALUES (107, 2, 39);
INSERT INTO `auth_group_permissions` VALUES (108, 2, 40);
INSERT INTO `auth_group_permissions` VALUES (109, 2, 41);
INSERT INTO `auth_group_permissions` VALUES (110, 2, 42);
INSERT INTO `auth_group_permissions` VALUES (111, 2, 43);
INSERT INTO `auth_group_permissions` VALUES (112, 2, 44);
INSERT INTO `auth_group_permissions` VALUES (113, 2, 45);
INSERT INTO `auth_group_permissions` VALUES (114, 2, 46);
INSERT INTO `auth_group_permissions` VALUES (115, 2, 47);
INSERT INTO `auth_group_permissions` VALUES (116, 2, 48);
INSERT INTO `auth_group_permissions` VALUES (117, 2, 49);
INSERT INTO `auth_group_permissions` VALUES (118, 2, 50);
INSERT INTO `auth_group_permissions` VALUES (119, 2, 51);
INSERT INTO `auth_group_permissions` VALUES (120, 2, 52);
INSERT INTO `auth_group_permissions` VALUES (121, 2, 53);
INSERT INTO `auth_group_permissions` VALUES (122, 2, 54);
INSERT INTO `auth_group_permissions` VALUES (123, 2, 55);
INSERT INTO `auth_group_permissions` VALUES (124, 2, 56);
INSERT INTO `auth_group_permissions` VALUES (125, 2, 57);
INSERT INTO `auth_group_permissions` VALUES (126, 2, 58);
INSERT INTO `auth_group_permissions` VALUES (127, 2, 59);
INSERT INTO `auth_group_permissions` VALUES (128, 2, 60);
INSERT INTO `auth_group_permissions` VALUES (129, 2, 61);
INSERT INTO `auth_group_permissions` VALUES (130, 2, 62);
INSERT INTO `auth_group_permissions` VALUES (131, 2, 63);
INSERT INTO `auth_group_permissions` VALUES (132, 2, 64);
INSERT INTO `auth_group_permissions` VALUES (133, 2, 65);
INSERT INTO `auth_group_permissions` VALUES (134, 2, 66);
INSERT INTO `auth_group_permissions` VALUES (135, 2, 67);
INSERT INTO `auth_group_permissions` VALUES (136, 2, 68);
INSERT INTO `auth_group_permissions` VALUES (137, 2, 69);
INSERT INTO `auth_group_permissions` VALUES (138, 2, 70);
INSERT INTO `auth_group_permissions` VALUES (139, 2, 71);
INSERT INTO `auth_group_permissions` VALUES (140, 2, 72);
INSERT INTO `auth_group_permissions` VALUES (141, 3, 1);
INSERT INTO `auth_group_permissions` VALUES (142, 3, 4);
INSERT INTO `auth_group_permissions` VALUES (143, 3, 5);
INSERT INTO `auth_group_permissions` VALUES (144, 3, 6);
INSERT INTO `auth_group_permissions` VALUES (145, 3, 7);
INSERT INTO `auth_group_permissions` VALUES (146, 3, 8);
INSERT INTO `auth_group_permissions` VALUES (147, 3, 9);
INSERT INTO `auth_group_permissions` VALUES (148, 3, 12);
INSERT INTO `auth_group_permissions` VALUES (149, 3, 13);
INSERT INTO `auth_group_permissions` VALUES (150, 3, 14);
INSERT INTO `auth_group_permissions` VALUES (151, 3, 15);
INSERT INTO `auth_group_permissions` VALUES (152, 3, 16);
INSERT INTO `auth_group_permissions` VALUES (153, 3, 17);
INSERT INTO `auth_group_permissions` VALUES (154, 3, 18);
INSERT INTO `auth_group_permissions` VALUES (155, 3, 19);
INSERT INTO `auth_group_permissions` VALUES (156, 3, 20);
INSERT INTO `auth_group_permissions` VALUES (157, 3, 21);
INSERT INTO `auth_group_permissions` VALUES (158, 3, 22);
INSERT INTO `auth_group_permissions` VALUES (159, 3, 23);
INSERT INTO `auth_group_permissions` VALUES (160, 3, 24);
INSERT INTO `auth_group_permissions` VALUES (161, 3, 25);
INSERT INTO `auth_group_permissions` VALUES (162, 3, 26);
INSERT INTO `auth_group_permissions` VALUES (163, 3, 27);
INSERT INTO `auth_group_permissions` VALUES (164, 3, 28);
INSERT INTO `auth_group_permissions` VALUES (165, 3, 29);
INSERT INTO `auth_group_permissions` VALUES (166, 3, 30);
INSERT INTO `auth_group_permissions` VALUES (167, 3, 31);
INSERT INTO `auth_group_permissions` VALUES (168, 3, 32);
INSERT INTO `auth_group_permissions` VALUES (169, 3, 33);
INSERT INTO `auth_group_permissions` VALUES (170, 3, 34);
INSERT INTO `auth_group_permissions` VALUES (171, 3, 35);
INSERT INTO `auth_group_permissions` VALUES (172, 3, 36);
INSERT INTO `auth_group_permissions` VALUES (173, 3, 37);
INSERT INTO `auth_group_permissions` VALUES (174, 3, 38);
INSERT INTO `auth_group_permissions` VALUES (175, 3, 39);
INSERT INTO `auth_group_permissions` VALUES (176, 3, 40);
INSERT INTO `auth_group_permissions` VALUES (177, 3, 41);
INSERT INTO `auth_group_permissions` VALUES (178, 3, 42);
INSERT INTO `auth_group_permissions` VALUES (179, 3, 43);
INSERT INTO `auth_group_permissions` VALUES (180, 3, 44);
INSERT INTO `auth_group_permissions` VALUES (181, 3, 45);
INSERT INTO `auth_group_permissions` VALUES (182, 3, 46);
INSERT INTO `auth_group_permissions` VALUES (183, 3, 47);
INSERT INTO `auth_group_permissions` VALUES (184, 3, 48);
INSERT INTO `auth_group_permissions` VALUES (185, 3, 49);
INSERT INTO `auth_group_permissions` VALUES (186, 3, 50);
INSERT INTO `auth_group_permissions` VALUES (187, 3, 51);
INSERT INTO `auth_group_permissions` VALUES (188, 3, 52);
INSERT INTO `auth_group_permissions` VALUES (189, 3, 53);
INSERT INTO `auth_group_permissions` VALUES (190, 3, 54);
INSERT INTO `auth_group_permissions` VALUES (191, 3, 55);
INSERT INTO `auth_group_permissions` VALUES (192, 3, 56);
INSERT INTO `auth_group_permissions` VALUES (193, 3, 57);
INSERT INTO `auth_group_permissions` VALUES (194, 3, 58);
INSERT INTO `auth_group_permissions` VALUES (195, 3, 59);
INSERT INTO `auth_group_permissions` VALUES (196, 3, 60);
INSERT INTO `auth_group_permissions` VALUES (197, 3, 61);
INSERT INTO `auth_group_permissions` VALUES (198, 3, 62);
INSERT INTO `auth_group_permissions` VALUES (199, 3, 63);
INSERT INTO `auth_group_permissions` VALUES (200, 3, 64);
INSERT INTO `auth_group_permissions` VALUES (201, 3, 65);
INSERT INTO `auth_group_permissions` VALUES (202, 3, 66);
INSERT INTO `auth_group_permissions` VALUES (203, 3, 67);
INSERT INTO `auth_group_permissions` VALUES (204, 3, 68);
INSERT INTO `auth_group_permissions` VALUES (205, 3, 69);
INSERT INTO `auth_group_permissions` VALUES (206, 3, 70);
INSERT INTO `auth_group_permissions` VALUES (207, 3, 71);
INSERT INTO `auth_group_permissions` VALUES (208, 3, 72);
COMMIT;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
BEGIN;
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add content type', 4, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (14, 'Can change content type', 4, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (15, 'Can delete content type', 4, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (16, 'Can view content type', 4, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (17, 'Can add session', 5, 'add_session');
INSERT INTO `auth_permission` VALUES (18, 'Can change session', 5, 'change_session');
INSERT INTO `auth_permission` VALUES (19, 'Can delete session', 5, 'delete_session');
INSERT INTO `auth_permission` VALUES (20, 'Can view session', 5, 'view_session');
INSERT INTO `auth_permission` VALUES (21, 'Can add 用户信息', 6, 'add_userprofile');
INSERT INTO `auth_permission` VALUES (22, 'Can change 用户信息', 6, 'change_userprofile');
INSERT INTO `auth_permission` VALUES (23, 'Can delete 用户信息', 6, 'delete_userprofile');
INSERT INTO `auth_permission` VALUES (24, 'Can view 用户信息', 6, 'view_userprofile');
INSERT INTO `auth_permission` VALUES (25, 'Can add Bookmark', 7, 'add_bookmark');
INSERT INTO `auth_permission` VALUES (26, 'Can change Bookmark', 7, 'change_bookmark');
INSERT INTO `auth_permission` VALUES (27, 'Can delete Bookmark', 7, 'delete_bookmark');
INSERT INTO `auth_permission` VALUES (28, 'Can view Bookmark', 7, 'view_bookmark');
INSERT INTO `auth_permission` VALUES (29, 'Can add User Setting', 8, 'add_usersettings');
INSERT INTO `auth_permission` VALUES (30, 'Can change User Setting', 8, 'change_usersettings');
INSERT INTO `auth_permission` VALUES (31, 'Can delete User Setting', 8, 'delete_usersettings');
INSERT INTO `auth_permission` VALUES (32, 'Can view User Setting', 8, 'view_usersettings');
INSERT INTO `auth_permission` VALUES (33, 'Can add User Widget', 9, 'add_userwidget');
INSERT INTO `auth_permission` VALUES (34, 'Can change User Widget', 9, 'change_userwidget');
INSERT INTO `auth_permission` VALUES (35, 'Can delete User Widget', 9, 'delete_userwidget');
INSERT INTO `auth_permission` VALUES (36, 'Can view User Widget', 9, 'view_userwidget');
INSERT INTO `auth_permission` VALUES (37, 'Can add log entry', 10, 'add_log');
INSERT INTO `auth_permission` VALUES (38, 'Can change log entry', 10, 'change_log');
INSERT INTO `auth_permission` VALUES (39, 'Can delete log entry', 10, 'delete_log');
INSERT INTO `auth_permission` VALUES (40, 'Can view log entry', 10, 'view_log');
INSERT INTO `auth_permission` VALUES (41, 'Can add captcha store', 11, 'add_captchastore');
INSERT INTO `auth_permission` VALUES (42, 'Can change captcha store', 11, 'change_captchastore');
INSERT INTO `auth_permission` VALUES (43, 'Can delete captcha store', 11, 'delete_captchastore');
INSERT INTO `auth_permission` VALUES (44, 'Can view captcha store', 11, 'view_captchastore');
INSERT INTO `auth_permission` VALUES (45, 'Can add 课程信息', 12, 'add_course');
INSERT INTO `auth_permission` VALUES (46, 'Can change 课程信息', 12, 'change_course');
INSERT INTO `auth_permission` VALUES (47, 'Can delete 课程信息', 12, 'delete_course');
INSERT INTO `auth_permission` VALUES (48, 'Can view 课程信息', 12, 'view_course');
INSERT INTO `auth_permission` VALUES (49, 'Can add 章节信息', 13, 'add_section');
INSERT INTO `auth_permission` VALUES (50, 'Can change 章节信息', 13, 'change_section');
INSERT INTO `auth_permission` VALUES (51, 'Can delete 章节信息', 13, 'delete_section');
INSERT INTO `auth_permission` VALUES (52, 'Can view 章节信息', 13, 'view_section');
INSERT INTO `auth_permission` VALUES (53, 'Can add 用户消息', 14, 'add_usermessage');
INSERT INTO `auth_permission` VALUES (54, 'Can change 用户消息', 14, 'change_usermessage');
INSERT INTO `auth_permission` VALUES (55, 'Can delete 用户消息', 14, 'delete_usermessage');
INSERT INTO `auth_permission` VALUES (56, 'Can view 用户消息', 14, 'view_usermessage');
INSERT INTO `auth_permission` VALUES (57, 'Can add 课程段落标记', 15, 'add_coursesectionsign');
INSERT INTO `auth_permission` VALUES (58, 'Can change 课程段落标记', 15, 'change_coursesectionsign');
INSERT INTO `auth_permission` VALUES (59, 'Can delete 课程段落标记', 15, 'delete_coursesectionsign');
INSERT INTO `auth_permission` VALUES (60, 'Can view 课程段落标记', 15, 'view_coursesectionsign');
INSERT INTO `auth_permission` VALUES (61, 'Can add 课程评论', 16, 'add_coursecomment');
INSERT INTO `auth_permission` VALUES (62, 'Can change 课程评论', 16, 'change_coursecomment');
INSERT INTO `auth_permission` VALUES (63, 'Can delete 课程评论', 16, 'delete_coursecomment');
INSERT INTO `auth_permission` VALUES (64, 'Can view 课程评论', 16, 'view_coursecomment');
INSERT INTO `auth_permission` VALUES (65, 'Can view 课程段落标记', 15, 'view_usercoursesectionsign');
INSERT INTO `auth_permission` VALUES (66, 'Can add 课程段落标记', 15, 'add_usercoursesectionsign');
INSERT INTO `auth_permission` VALUES (67, 'Can change 课程段落标记', 15, 'change_usercoursesectionsign');
INSERT INTO `auth_permission` VALUES (68, 'Can delete 课程段落标记', 15, 'delete_usercoursesectionsign');
INSERT INTO `auth_permission` VALUES (69, 'Can add 用户课程', 17, 'add_usercourse');
INSERT INTO `auth_permission` VALUES (70, 'Can change 用户课程', 17, 'change_usercourse');
INSERT INTO `auth_permission` VALUES (71, 'Can delete 用户课程', 17, 'delete_usercourse');
INSERT INTO `auth_permission` VALUES (72, 'Can view 用户课程', 17, 'view_usercourse');
COMMIT;

-- ----------------------------
-- Table structure for captcha_captchastore
-- ----------------------------
DROP TABLE IF EXISTS `captcha_captchastore`;
CREATE TABLE `captcha_captchastore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) NOT NULL,
  `response` varchar(32) NOT NULL,
  `hashkey` varchar(40) NOT NULL,
  `expiration` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hashkey` (`hashkey`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of captcha_captchastore
-- ----------------------------
BEGIN;
INSERT INTO `captcha_captchastore` VALUES (1, 'GTOR', 'gtor', 'efc88aa02829f59236369c786b751cf11d6abc4a', '2019-11-23 17:22:55.873658');
INSERT INTO `captcha_captchastore` VALUES (2, 'KZOM', 'kzom', '08b93de2e7f5c17706ddf254022801705d0ccf0f', '2019-11-23 17:23:05.747497');
INSERT INTO `captcha_captchastore` VALUES (3, 'UZPQ', 'uzpq', 'e66d42e6ac59dbf44776a42e6878faf662944fca', '2019-11-23 17:24:22.897121');
INSERT INTO `captcha_captchastore` VALUES (4, 'JNAL', 'jnal', 'c57939ffac7cc15d3c83913012c11153b9fa3a57', '2019-11-23 17:24:36.206619');
INSERT INTO `captcha_captchastore` VALUES (5, 'ATZW', 'atzw', 'ed50633f9b9f3c280d96d92e93110c5e799f8abd', '2019-11-23 17:24:54.041426');
INSERT INTO `captcha_captchastore` VALUES (6, 'WBMI', 'wbmi', '0b5d86d8281fd14869af5775955197cb29e3fac8', '2019-11-23 17:25:59.616058');
INSERT INTO `captcha_captchastore` VALUES (7, 'AZBO', 'azbo', '46f60148802a435da3a24e6d8aba00221ab0b6a7', '2019-11-23 17:28:37.618782');
INSERT INTO `captcha_captchastore` VALUES (8, 'DRUB', 'drub', '60ccb10190982d34bf40d11eac982d1ac7b136aa', '2019-11-23 17:29:03.031118');
INSERT INTO `captcha_captchastore` VALUES (9, 'KNAR', 'knar', 'f52646f2050723e0d7ac322544e01d34bf31f744', '2019-11-23 17:32:27.840983');
INSERT INTO `captcha_captchastore` VALUES (10, 'TDJO', 'tdjo', '00d133be7f1e4f9478ce26b68053361035d42836', '2019-11-24 00:24:42.260818');
INSERT INTO `captcha_captchastore` VALUES (11, 'BNJT', 'bnjt', 'dab6e1e3fbb161fc33567c9677dd6953f5d8b21f', '2019-11-24 00:24:54.735420');
INSERT INTO `captcha_captchastore` VALUES (12, 'JENM', 'jenm', 'f8f4228d9febc8fcb430f066c2d326e89870b753', '2019-12-01 16:26:57.549894');
INSERT INTO `captcha_captchastore` VALUES (13, 'TEQC', 'teqc', '13959a7f9294abf4fc4f2b990d3770cf1e745092', '2019-12-01 16:29:00.892806');
INSERT INTO `captcha_captchastore` VALUES (14, 'VURD', 'vurd', '71919a5762ec82dd65c59fa1fc831af00d78e358', '2019-12-01 16:29:01.778844');
INSERT INTO `captcha_captchastore` VALUES (15, 'PJIN', 'pjin', 'a9b380d53b2188f83c5e38c2b11c05d0fc9cd049', '2019-12-02 15:12:08.638471');
INSERT INTO `captcha_captchastore` VALUES (16, 'MUEK', 'muek', '9f55858ae87e8192a069eb5ed52231df0739259b', '2019-12-02 15:28:49.970927');
COMMIT;

-- ----------------------------
-- Table structure for courses_course
-- ----------------------------
DROP TABLE IF EXISTS `courses_course`;
CREATE TABLE `courses_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `name` varchar(50) NOT NULL,
  `desc` varchar(300) NOT NULL,
  `file_path` varchar(100) NOT NULL,
  `body` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `learn_times` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courses_course
-- ----------------------------
BEGIN;
INSERT INTO `courses_course` VALUES (1, '2019-11-23 14:11:00.000000', 'Course1', '编译器入门', 'course1/', '## Chapter 3 语法分析\r\n\r\n### 1. 开发流程\r\n\r\n- 用chapter2中的lex.yy.c替换chapter3中的lex.yy.c\r\n- 把lex.yy.c中引入的头文件token.h替换为y.tab.h\r\n- 编写tiger语言的BNF范式\r\n- 完成tiger.grm程序框架\r\n- 使用testcases文件夹中的测试用例测试语法分析器\r\n\r\n### 2. BNF范式\r\n\r\n#### 2.1 语法描述约定\r\n\r\n|     符号     |         作用         |\r\n| :----------: | :------------------: |\r\n|     ::=      |    非终结符的定义    |\r\n|   abc xyz    |     abc 后接 xyz     |\r\n|      \\|      |         可选         |\r\n|    [abc]     |   0个或1个abc示例    |\r\n|    {abc}     |      Kleene闭包      |\r\n|    {abc}+    |        正闭包        |\r\n|   （...）    |         组合         |\r\n| conditionExp | 非终结符（驼峰写法） |\r\n|     \"+\"      | 终结符（用引号标注） |\r\n\r\n#### 2.2 BNF产生式\r\n\r\n##### 2.2.1 Tiger 程序\r\n\r\n1. program ::= exp\r\n\r\n##### 2.2.2 声明\r\n\r\n1. decs ::= {dec}\r\n\r\n2. dec ::= tydec\r\n\r\n   ​          | vardec\r\n\r\n   ​          | fundec\r\n\r\n3. tydec ::= typeKeyword typeId \"=\" ty\r\n\r\n4. typeKeyword ::= \"type\"\r\n\r\n5. ty ::= typeId\r\n\r\n   ​       | arrayofKeyword typeId\r\n\r\n   ​       | \"{\" tyfields \"}\"\r\n\r\n6. arrayofKeyword ::= \"array of\"\r\n\r\n7. identifier ::= ID\r\n\r\n8. intKeyword ::= \"int\"\r\n\r\n9. stringKeyword ::= \"string\"\r\n\r\n10. varKeyword ::= \"var\"\r\n\r\n11. functionKeyword ::= \"function\"\r\n\r\n12. tyfields ::= tyfieldsElement {\",\" tyfieldsElement}\r\n\r\n13. tyfieldsElement ::= identifier \":\" typeId\r\n\r\n14. typeId ::= identifier\r\n\r\n    ​              | intKeyword\r\n\r\n    ​              | stringKeyword\r\n\r\n15. vardec ::= varKeyword identifier \":=\" exp\r\n\r\n    ​               | varKeyword identifier \":\" typeId \":=\" exp\r\n\r\n16. fundec ::= functionKeyword identifier \"(\"  tyfields \")\" \"=\" exp\r\n\r\n    ​               | functionKeyword identifier \"(\"  tyfields \")\" \":\" typeId = exp\r\n\r\n##### 2.2.3 左值\r\n\r\n1. lvalue ::= identifier\r\n\r\n   ​              | lvalue \".\" identifier\r\n\r\n   ​              | lvalue \"[\" exp \"]\"\r\n\r\n##### 2.2.4 表达式\r\n\r\n1. exp ::= lvalue\r\n             | conditionExp\r\n             | whileExp\r\n             | breakKeyword\r\n             | nilKeyword\r\n             | expSeq\r\n             | intValue\r\n             | stringValue\r\n             | negValue\r\n             | negId\r\n             | functionCall\r\n             | arithmetic\r\n             | comparition\r\n             | boolOperation\r\n             | record\r\n             | arrayDec\r\n             | arrayAssign\r\n             | assignExp\r\n             | forExp\r\n             | letExp\r\n             | typeName\r\n2. breakKeyword ::= \"break\"\r\n3. nilKeyword ::= \"nil\"\r\n4. intValue ::= INT\r\n5. stringValue ::= String\r\n\r\n##### 2.2.5 条件表达式\r\n\r\n1. conditionExp ::= ifKeyword exp thenKeyword [elseExp]\r\n2. elseExp ::= elseKeyword exp\r\n3. ifKeyword ::= \"if\"\r\n4. thenKeyword ::= \"then\"\r\n5. elseKeyword ::= \"else\"\r\n\r\n##### 2.2.6 循环表达式\r\n\r\n1. whileExp ::= whileKeyword exp doKeyword exp\r\n2. whileKeyword ::= \"while\"\r\n3. doKeyword ::= \"do\"\r\n4. forExp ::= forKeyword identifier \":=\" exp toKeyword exp doKeyword exp\r\n5. forKeyword ::= \"for\"\r\n6. doKeyword ::= \"do\"\r\n\r\n##### 2.2.7 序列\r\n\r\n1. expSeq ::= \"(\" exp {\";\" exp}+ \")\"\r\n\r\n##### 2.2.8 负值\r\n\r\n1. negValue ::= \"-\" intValue\r\n2. negId ::= \"-\" indentifier\r\n\r\n##### 2.2.9 函数调用\r\n\r\n1. functionCall ::= lvalue \"(\" argList \")\"\r\n\r\n2. argList ::= {argListElement}\r\n3. argListElement ::= exp {\";\" exp}\r\n\r\n##### 2.2.10 二元操作\r\n\r\n1. arithmetic ::= exp \"+\" exp\r\n\r\n   ​                    | exp \"-\" exp\r\n\r\n   ​                    | exp \"*\" exp\r\n\r\n​                              | exp \"/\" exp\r\n\r\n2. comparition ::= exp \"=\" exp\r\n\r\n   ​                       | exp \"<>\" exp\r\n\r\n   ​                       | exp \"<\" exp\r\n\r\n   ​                       | exp \"<=\" exp\r\n\r\n   ​                       | exp \">\" exp\r\n\r\n   ​                       | exp \">=\" exp\r\n\r\n3. boolOperation ::= exp \"&\" exp\r\n                              | exp \"|\" exp\r\n\r\n##### 2.2.11 记录创建\r\n\r\n1. record ::= typeId \"{\" {recordList} \"}\"\r\n2. recordList ::= recordListElement {\",\" recordListElement}\r\n3. recordListElement ::= identifier \"=\" exp\r\n\r\n##### 2.2.12 数组创建\r\n\r\n1. array ::= typeId \"[\" exp \"]\" ofKeyword exp\r\n2. ofKeyword ::= \"of\"\r\n\r\n##### 2.2.13 赋值操作\r\n\r\n1. assignExp ::= lvalue \":=\" exp\r\n                        | typeId \"[\" exp \"]\" ofKeyword exp\r\n\r\n##### 2.2.14 let 表达式\r\n\r\n1. letExp ::= letKeyword decs inKeyword expSeq endKeyword\r\n2. letKeyword ::= \"let\"\r\n3. inKeyword ::= \"in\"\r\n4. endKeyword ::= \"end\"\r\n\r\n### 3. 冲突\r\n\r\n语法分析器中存在6个移进/归约冲突，全部由一个原因造成：\r\n\r\n为了消除```if - then```和```if - then - else``` 的移进/归约冲突，使用改造文法和添加冗余文法的方法解决，改造后的文法中存在新的移进归约冲突。\r\n\r\n改造后的文法：\r\n\r\n```C\r\nvoidExp: matchedExp\r\n       | unmatchedExp\r\n  ;\r\n\r\nmatchedExp: IF lvalueList THEN matchedExp ELSE matchedExp\r\n          | IF comparition THEN matchedExp ELSE matchedExp\r\n          | IF identifier THEN matchedExp ELSE matchedExp\r\n          | IF lvalueArray THEN matchedExp ELSE matchedExp\r\n          | IF INT THEN matchedExp ELSE matchedExp\r\n          | IF expSeq THEN matchedExp ELSE matchedExp\r\n          | functionCall\r\n          | assignExp\r\n          | whileExp\r\n          | BREAK\r\n          | forExp\r\n          | expSeq\r\n          | record\r\n          | NIL \r\n          | INT\r\n          | STRING\r\n          | identifier \r\n          | lvalueList\r\n          | lvalueArray\r\n  ;\r\n\r\nunmatchedExp: IF comparition THEN voidExp\r\n            | IF lvalueList THEN voidExp\r\n            | IF identifier THEN voidExp\r\n            | IF lvalueArray THEN voidExp\r\n            | IF INT THEN voidExp\r\n            | IF expSeq THEN voidExp\r\n            | IF comparition THEN matchedExp ELSE unmatchedExp\r\n            | IF lvalueList THEN matchedExp ELSE unmatchedExp\r\n            | IF identifier THEN matchedExp ELSE unmatchedExp\r\n            | IF lvalueArray THEN matchedExp ELSE unmatchedExp\r\n            | IF INT THEN matchedExp ELSE unmatchedExp\r\n            | IF expSeq THEN matchedExp ELSE unmatchedExp\r\n  ;\r\n```\r\n\r\n其中，由于```Follow(voidExp)``` 集合中存在```ELSE``` 产生新的冲突：\r\n\r\n```\r\nState 125\r\n\r\n   47 voidExp: matchedExp .\r\n   53 matchedExp: IF INT THEN matchedExp . ELSE matchedExp\r\n   78 unmatchedExp: IF INT THEN matchedExp . ELSE unmatchedExp\r\n\r\n    ELSE  shift, and go to state 155\r\n\r\n    ELSE      [reduce using rule 47 (voidExp)]\r\n    $default  reduce using rule 47 (voidExp)\r\n```\r\n\r\n因为Bison在处理移进/归约冲突时，默认选择移进的方法，所以此冲突并不会对语法分析的正确性产生影响。然而，彻底解决该冲突的方法还需要进一步研究。', 'courses/2019/11/540e57300001d6d906000338-240-135.jpg', 15);
INSERT INTO `courses_course` VALUES (2, '2019-11-23 14:21:00.000000', 'Course2', '编译器初级', 'Course2/', '## Chapter 3 语法分析\r\n\r\n### 1. 开发流程\r\n\r\n- 用chapter2中的lex.yy.c替换chapter3中的lex.yy.c\r\n- 把lex.yy.c中引入的头文件token.h替换为y.tab.h\r\n- 编写tiger语言的BNF范式\r\n- 完成tiger.grm程序框架\r\n- 使用testcases文件夹中的测试用例测试语法分析器\r\n\r\n### 2. BNF范式\r\n\r\n#### 2.1 语法描述约定\r\n\r\n|     符号     |         作用         |\r\n| :----------: | :------------------: |\r\n|     ::=      |    非终结符的定义    |\r\n|   abc xyz    |     abc 后接 xyz     |\r\n|      \\|      |         可选         |\r\n|    [abc]     |   0个或1个abc示例    |\r\n|    {abc}     |      Kleene闭包      |\r\n|    {abc}+    |        正闭包        |\r\n|   （...）    |         组合         |\r\n| conditionExp | 非终结符（驼峰写法） |\r\n|     \"+\"      | 终结符（用引号标注） |\r\n\r\n#### 2.2 BNF产生式\r\n\r\n##### 2.2.1 Tiger 程序\r\n\r\n1. program ::= exp\r\n\r\n##### 2.2.2 声明\r\n\r\n1. decs ::= {dec}\r\n\r\n2. dec ::= tydec\r\n\r\n   ​          | vardec\r\n\r\n   ​          | fundec\r\n\r\n3. tydec ::= typeKeyword typeId \"=\" ty\r\n\r\n4. typeKeyword ::= \"type\"\r\n\r\n5. ty ::= typeId\r\n\r\n   ​       | arrayofKeyword typeId\r\n\r\n   ​       | \"{\" tyfields \"}\"\r\n\r\n6. arrayofKeyword ::= \"array of\"\r\n\r\n7. identifier ::= ID\r\n\r\n8. intKeyword ::= \"int\"\r\n\r\n9. stringKeyword ::= \"string\"\r\n\r\n10. varKeyword ::= \"var\"\r\n\r\n11. functionKeyword ::= \"function\"\r\n\r\n12. tyfields ::= tyfieldsElement {\",\" tyfieldsElement}\r\n\r\n13. tyfieldsElement ::= identifier \":\" typeId\r\n\r\n14. typeId ::= identifier\r\n\r\n    ​              | intKeyword\r\n\r\n    ​              | stringKeyword\r\n\r\n15. vardec ::= varKeyword identifier \":=\" exp\r\n\r\n    ​               | varKeyword identifier \":\" typeId \":=\" exp\r\n\r\n16. fundec ::= functionKeyword identifier \"(\"  tyfields \")\" \"=\" exp\r\n\r\n    ​               | functionKeyword identifier \"(\"  tyfields \")\" \":\" typeId = exp\r\n\r\n##### 2.2.3 左值\r\n\r\n1. lvalue ::= identifier\r\n\r\n   ​              | lvalue \".\" identifier\r\n\r\n   ​              | lvalue \"[\" exp \"]\"\r\n\r\n##### 2.2.4 表达式\r\n\r\n1. exp ::= lvalue\r\n             | conditionExp\r\n             | whileExp\r\n             | breakKeyword\r\n             | nilKeyword\r\n             | expSeq\r\n             | intValue\r\n             | stringValue\r\n             | negValue\r\n             | negId\r\n             | functionCall\r\n             | arithmetic\r\n             | comparition\r\n             | boolOperation\r\n             | record\r\n             | arrayDec\r\n             | arrayAssign\r\n             | assignExp\r\n             | forExp\r\n             | letExp\r\n             | typeName\r\n2. breakKeyword ::= \"break\"\r\n3. nilKeyword ::= \"nil\"\r\n4. intValue ::= INT\r\n5. stringValue ::= String\r\n\r\n##### 2.2.5 条件表达式\r\n\r\n1. conditionExp ::= ifKeyword exp thenKeyword [elseExp]\r\n2. elseExp ::= elseKeyword exp\r\n3. ifKeyword ::= \"if\"\r\n4. thenKeyword ::= \"then\"\r\n5. elseKeyword ::= \"else\"\r\n\r\n##### 2.2.6 循环表达式\r\n\r\n1. whileExp ::= whileKeyword exp doKeyword exp\r\n2. whileKeyword ::= \"while\"\r\n3. doKeyword ::= \"do\"\r\n4. forExp ::= forKeyword identifier \":=\" exp toKeyword exp doKeyword exp\r\n5. forKeyword ::= \"for\"\r\n6. doKeyword ::= \"do\"\r\n\r\n##### 2.2.7 序列\r\n\r\n1. expSeq ::= \"(\" exp {\";\" exp}+ \")\"\r\n\r\n##### 2.2.8 负值\r\n\r\n1. negValue ::= \"-\" intValue\r\n2. negId ::= \"-\" indentifier\r\n\r\n##### 2.2.9 函数调用\r\n\r\n1. functionCall ::= lvalue \"(\" argList \")\"\r\n\r\n2. argList ::= {argListElement}\r\n3. argListElement ::= exp {\";\" exp}\r\n\r\n##### 2.2.10 二元操作\r\n\r\n1. arithmetic ::= exp \"+\" exp\r\n\r\n   ​                    | exp \"-\" exp\r\n\r\n   ​                    | exp \"*\" exp\r\n\r\n​                              | exp \"/\" exp\r\n\r\n2. comparition ::= exp \"=\" exp\r\n\r\n   ​                       | exp \"<>\" exp\r\n\r\n   ​                       | exp \"<\" exp\r\n\r\n   ​                       | exp \"<=\" exp\r\n\r\n   ​                       | exp \">\" exp\r\n\r\n   ​                       | exp \">=\" exp\r\n\r\n3. boolOperation ::= exp \"&\" exp\r\n                              | exp \"|\" exp\r\n\r\n##### 2.2.11 记录创建\r\n\r\n1. record ::= typeId \"{\" {recordList} \"}\"\r\n2. recordList ::= recordListElement {\",\" recordListElement}\r\n3. recordListElement ::= identifier \"=\" exp\r\n\r\n##### 2.2.12 数组创建\r\n\r\n1. array ::= typeId \"[\" exp \"]\" ofKeyword exp\r\n2. ofKeyword ::= \"of\"\r\n\r\n##### 2.2.13 赋值操作\r\n\r\n1. assignExp ::= lvalue \":=\" exp\r\n                        | typeId \"[\" exp \"]\" ofKeyword exp\r\n\r\n##### 2.2.14 let 表达式\r\n\r\n1. letExp ::= letKeyword decs inKeyword expSeq endKeyword\r\n2. letKeyword ::= \"let\"\r\n3. inKeyword ::= \"in\"\r\n4. endKeyword ::= \"end\"\r\n\r\n### 3. 冲突\r\n\r\n语法分析器中存在6个移进/归约冲突，全部由一个原因造成：\r\n\r\n为了消除```if - then```和```if - then - else``` 的移进/归约冲突，使用改造文法和添加冗余文法的方法解决，改造后的文法中存在新的移进归约冲突。\r\n\r\n改造后的文法：\r\n\r\n```C\r\nvoidExp: matchedExp\r\n       | unmatchedExp\r\n  ;\r\n\r\nmatchedExp: IF lvalueList THEN matchedExp ELSE matchedExp\r\n          | IF comparition THEN matchedExp ELSE matchedExp\r\n          | IF identifier THEN matchedExp ELSE matchedExp\r\n          | IF lvalueArray THEN matchedExp ELSE matchedExp\r\n          | IF INT THEN matchedExp ELSE matchedExp\r\n          | IF expSeq THEN matchedExp ELSE matchedExp\r\n          | functionCall\r\n          | assignExp\r\n          | whileExp\r\n          | BREAK\r\n          | forExp\r\n          | expSeq\r\n          | record\r\n          | NIL \r\n          | INT\r\n          | STRING\r\n          | identifier \r\n          | lvalueList\r\n          | lvalueArray\r\n  ;\r\n\r\nunmatchedExp: IF comparition THEN voidExp\r\n            | IF lvalueList THEN voidExp\r\n            | IF identifier THEN voidExp\r\n            | IF lvalueArray THEN voidExp\r\n            | IF INT THEN voidExp\r\n            | IF expSeq THEN voidExp\r\n            | IF comparition THEN matchedExp ELSE unmatchedExp\r\n            | IF lvalueList THEN matchedExp ELSE unmatchedExp\r\n            | IF identifier THEN matchedExp ELSE unmatchedExp\r\n            | IF lvalueArray THEN matchedExp ELSE unmatchedExp\r\n            | IF INT THEN matchedExp ELSE unmatchedExp\r\n            | IF expSeq THEN matchedExp ELSE unmatchedExp\r\n  ;\r\n```\r\n\r\n其中，由于```Follow(voidExp)``` 集合中存在```ELSE``` 产生新的冲突：\r\n\r\n```\r\nState 125\r\n\r\n   47 voidExp: matchedExp .\r\n   53 matchedExp: IF INT THEN matchedExp . ELSE matchedExp\r\n   78 unmatchedExp: IF INT THEN matchedExp . ELSE unmatchedExp\r\n\r\n    ELSE  shift, and go to state 155\r\n\r\n    ELSE      [reduce using rule 47 (voidExp)]\r\n    $default  reduce using rule 47 (voidExp)\r\n```\r\n\r\n因为Bison在处理移进/归约冲突时，默认选择移进的方法，所以此冲突并不会对语法分析的正确性产生影响。然而，彻底解决该冲突的方法还需要进一步研究。', 'courses/2019/11/mysql.jpg', 20);
INSERT INTO `courses_course` VALUES (3, '2019-12-01 12:43:00.000000', 'Course3', '编译器高级', 'course3/', '## Chapter 3 语法分析 ### \r\n1. 开发流程 - 用chapter2中的lex.yy.c替换chapter3中的lex.yy.c - 把lex.yy.c中引入的头文件token.h替换为y.tab.h - 编写tiger语言的BNF范式 - 完成tiger.grm程序框架 - 使用testcases文件夹中的测试用例测试语法分析器\r\n### 2. BNF范式 \r\n#### 2.1 语法描述约定 | 符号 | 作用 | | :----------: | :------------------: | | ::= | 非终结符的定义 | | abc xyz | abc 后接 xyz | | \\| | 可选 | | [abc] | 0个或1个abc示例 | | {abc} | Kleene闭包 | | {abc}+ | 正闭包 | | （...） | 组合 | | conditionExp | 非终结符（驼峰写法） | | \"+\" | 终结符（用引号标注） | #### 2.2 BNF产生式 ##### 2.2.1 Tiger 程序 1. program ::= exp ##### 2.2.2 声明 1. decs ::= {dec} 2. dec ::= tydec​ | vardec​ | fundec 3. tydec ::= typeKeyword typeId \"=\" ty 4. typeKeyword ::= \"type\" 5. ty ::= typeId​ | arrayofKeyword typeId​ | \"{\" tyfields \"}\" 6. arrayofKeyword ::= \"array of\" 7. identifier ::= ID 8. intKeyword ::= \"int\" 9. stringKeyword ::= \"string\" 10. varKeyword ::= \"var\" 11. functionKeyword ::= \"function\" 12. tyfields ::= tyfieldsElement {\",\" tyfieldsElement} 13. tyfieldsElement ::= identifier \":\" typeId 14. typeId ::= identifier​ | intKeyword​ | stringKeyword 15. vardec ::= varKeyword identifier \":=\" exp​ | varKeyword identifier \":\" typeId \":=\" exp 16. fundec ::= functionKeyword identifier \"(\" tyfields \")\" \"=\" exp​ | functionKeyword identifier \"(\" tyfields \")\" \":\" typeId = exp ##### 2.2.3 左值 1. lvalue ::= identifier​ | lvalue \".\" identifier​ | lvalue \"[\" exp \"]\" ##### 2.2.4 表达式 1. exp ::= lvalue | conditionExp | whileExp | breakKeyword | nilKeyword | expSeq | intValue | stringValue | negValue | negId | functionCall | arithmetic | comparition | boolOperation | record | arrayDec | arrayAssign | assignExp | forExp | letExp | typeName 2. breakKeyword ::= \"break\" 3. nilKeyword ::= \"nil\" 4. intValue ::= INT 5. stringValue ::= String ##### 2.2.5 条件表达式 1. conditionExp ::= ifKeyword', 'courses/2019/12/aobama.png', 123);
COMMIT;

-- ----------------------------
-- Table structure for courses_section
-- ----------------------------
DROP TABLE IF EXISTS `courses_section`;
CREATE TABLE `courses_section` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sign_num` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `courses_section_course_id_name_30a74b3d_uniq` (`course_id`,`name`),
  CONSTRAINT `courses_section_course_id_28d10451_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courses_section
-- ----------------------------
BEGIN;
INSERT INTO `courses_section` VALUES (8, '2019-11-23 14:28:00.000000', '第一章', 0, 1);
INSERT INTO `courses_section` VALUES (9, '2019-11-23 14:40:00.000000', '第二章', 0, 1);
INSERT INTO `courses_section` VALUES (10, '2019-11-23 14:41:00.000000', '第一章', 0, 2);
INSERT INTO `courses_section` VALUES (11, '2019-11-23 14:41:00.000000', '第二章', 0, 2);
INSERT INTO `courses_section` VALUES (12, '2019-11-23 14:42:00.000000', '第三章', 0, 1);
COMMIT;

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
BEGIN;
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (11, 'captcha', 'captchastore');
INSERT INTO `django_content_type` VALUES (4, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (12, 'courses', 'course');
INSERT INTO `django_content_type` VALUES (13, 'courses', 'section');
INSERT INTO `django_content_type` VALUES (16, 'operation', 'coursecomment');
INSERT INTO `django_content_type` VALUES (17, 'operation', 'usercourse');
INSERT INTO `django_content_type` VALUES (15, 'operation', 'usercoursesectionsign');
INSERT INTO `django_content_type` VALUES (14, 'operation', 'usermessage');
INSERT INTO `django_content_type` VALUES (5, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (6, 'users', 'userprofile');
INSERT INTO `django_content_type` VALUES (7, 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES (10, 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES (8, 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES (9, 'xadmin', 'userwidget');
COMMIT;

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
BEGIN;
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2019-11-23 12:36:55.905777');
INSERT INTO `django_migrations` VALUES (2, 'contenttypes', '0002_remove_content_type_name', '2019-11-23 12:36:55.960105');
INSERT INTO `django_migrations` VALUES (3, 'auth', '0001_initial', '2019-11-23 12:36:56.006067');
INSERT INTO `django_migrations` VALUES (4, 'auth', '0002_alter_permission_name_max_length', '2019-11-23 12:36:56.130007');
INSERT INTO `django_migrations` VALUES (5, 'auth', '0003_alter_user_email_max_length', '2019-11-23 12:36:56.134850');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0004_alter_user_username_opts', '2019-11-23 12:36:56.139430');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0005_alter_user_last_login_null', '2019-11-23 12:36:56.143862');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0006_require_contenttypes_0002', '2019-11-23 12:36:56.144908');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0007_alter_validators_add_error_messages', '2019-11-23 12:36:56.149306');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0008_alter_user_username_max_length', '2019-11-23 12:36:56.153828');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0009_alter_user_last_name_max_length', '2019-11-23 12:36:56.158449');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0010_alter_group_name_max_length', '2019-11-23 12:36:56.179184');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0011_update_proxy_permissions', '2019-11-23 12:36:56.183768');
INSERT INTO `django_migrations` VALUES (14, 'users', '0001_initial', '2019-11-23 12:36:56.234030');
INSERT INTO `django_migrations` VALUES (15, 'admin', '0001_initial', '2019-11-23 12:36:56.351395');
INSERT INTO `django_migrations` VALUES (16, 'admin', '0002_logentry_remove_auto_add', '2019-11-23 12:36:56.404017');
INSERT INTO `django_migrations` VALUES (17, 'admin', '0003_logentry_add_action_flag_choices', '2019-11-23 12:36:56.412629');
INSERT INTO `django_migrations` VALUES (18, 'captcha', '0001_initial', '2019-11-23 12:36:56.428237');
INSERT INTO `django_migrations` VALUES (19, 'sessions', '0001_initial', '2019-11-23 12:36:56.441454');
INSERT INTO `django_migrations` VALUES (20, 'xadmin', '0001_initial', '2019-11-23 12:36:56.508271');
INSERT INTO `django_migrations` VALUES (21, 'xadmin', '0002_log', '2019-11-23 12:36:56.588069');
INSERT INTO `django_migrations` VALUES (22, 'xadmin', '0003_auto_20160715_0100', '2019-11-23 12:36:56.647560');
INSERT INTO `django_migrations` VALUES (23, 'courses', '0001_initial', '2019-11-23 13:47:04.018832');
INSERT INTO `django_migrations` VALUES (24, 'operation', '0001_initial', '2019-11-23 13:47:04.123462');
INSERT INTO `django_migrations` VALUES (25, 'users', '0002_userprofile_file_path', '2019-11-23 13:47:04.389453');
INSERT INTO `django_migrations` VALUES (26, 'courses', '0002_course_learn_times', '2019-11-23 14:07:02.458707');
INSERT INTO `django_migrations` VALUES (27, 'operation', '0002_auto_20191123_1406', '2019-11-23 14:07:02.538560');
INSERT INTO `django_migrations` VALUES (28, 'courses', '0003_auto_20191123_1504', '2019-11-23 15:04:19.870422');
INSERT INTO `django_migrations` VALUES (29, 'operation', '0003_auto_20191123_1504', '2019-11-23 15:04:19.886296');
COMMIT;

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
BEGIN;
INSERT INTO `django_session` VALUES ('8m7uhnn3bilwc57j1u49j54e2idhbyan', 'OTg4MTJjNmU4YzIwYWFiNzhlOWZiNjVkMjc0YTFmOGFjNTVlMTJjMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlMDNhNjliY2IwNGNlZDk0ZTYyMTI4NjFlYjY4YjlhNjE4YTBiNmE0In0=', '2019-12-15 19:07:13.292585');
INSERT INTO `django_session` VALUES ('mpvuyyj52y5ky8elo3mt3h2kh50hx3h7', 'OGQ5NmYwYzUxNDgzZDFlNGMzZmY3YTRjYThlYTUxZjY3ZGE3MjE4YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlMDNhNjliY2IwNGNlZDk0ZTYyMTI4NjFlYjY4YjlhNjE4YTBiNmE0IiwiTElTVF9RVUVSWSI6W1siY291cnNlcyIsImNvdXJzZSJdLCIiXX0=', '2019-12-08 22:43:27.901280');
INSERT INTO `django_session` VALUES ('p2zyqglx79q7ujk9fnsurb9r2c5ljkf9', 'ODA5NGNmMDc0YWE3MDEyNjE2ZTczYjUzNWI2NDgyNjRhZjFjMzQ1Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlMDNhNjliY2IwNGNlZDk0ZTYyMTI4NjFlYjY4YjlhNjE4YTBiNmE0IiwiTElTVF9RVUVSWSI6W1sib3BlcmF0aW9uIiwiY291cnNlY29tbWVudCJdLCIiXX0=', '2019-12-07 15:10:43.764048');
COMMIT;

-- ----------------------------
-- Table structure for operation_coursecomment
-- ----------------------------
DROP TABLE IF EXISTS `operation_coursecomment`;
CREATE TABLE `operation_coursecomment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `comments` varchar(300) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_coursecomment_course_id_ae7551b0_fk_courses_course_id` (`course_id`),
  KEY `operation_coursecomment_user_id_8f3ff0f8_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `operation_coursecomment_course_id_ae7551b0_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`),
  CONSTRAINT `operation_coursecomment_user_id_8f3ff0f8_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_coursecomment
-- ----------------------------
BEGIN;
INSERT INTO `operation_coursecomment` VALUES (3, '2019-11-23 14:50:00.000000', '课程非常有用', 1, 2);
COMMIT;

-- ----------------------------
-- Table structure for operation_usercourse
-- ----------------------------
DROP TABLE IF EXISTS `operation_usercourse`;
CREATE TABLE `operation_usercourse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_usercourse_course_id_9f1eab2e_fk_courses_course_id` (`course_id`),
  KEY `operation_usercourse_user_id_835fe81a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `operation_usercourse_course_id_9f1eab2e_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`),
  CONSTRAINT `operation_usercourse_user_id_835fe81a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_usercourse
-- ----------------------------
BEGIN;
INSERT INTO `operation_usercourse` VALUES (4, '2019-11-23 15:21:00.000000', 1, 2);
COMMIT;

-- ----------------------------
-- Table structure for operation_usercoursesectionsign
-- ----------------------------
DROP TABLE IF EXISTS `operation_usercoursesectionsign`;
CREATE TABLE `operation_usercoursesectionsign` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `sign` tinyint(1) NOT NULL,
  `course_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_coursesect_course_id_b4ad694d_fk_courses_c` (`course_id`),
  KEY `operation_coursesect_section_id_50a37e45_fk_courses_s` (`section_id`),
  KEY `operation_coursesect_user_id_caca7b09_fk_users_use` (`user_id`),
  CONSTRAINT `operation_coursesect_course_id_b4ad694d_fk_courses_c` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`),
  CONSTRAINT `operation_coursesect_section_id_50a37e45_fk_courses_s` FOREIGN KEY (`section_id`) REFERENCES `courses_section` (`id`),
  CONSTRAINT `operation_coursesect_user_id_caca7b09_fk_users_use` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_usercoursesectionsign
-- ----------------------------
BEGIN;
INSERT INTO `operation_usercoursesectionsign` VALUES (3, '2019-11-23 15:18:00.000000', 1, 1, 8, 2);
COMMIT;

-- ----------------------------
-- Table structure for operation_usermessage
-- ----------------------------
DROP TABLE IF EXISTS `operation_usermessage`;
CREATE TABLE `operation_usermessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `message` varchar(200) NOT NULL,
  `has_read` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_usermessage_user_id_716f8b9d_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `operation_usermessage_user_id_716f8b9d_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_usermessage
-- ----------------------------
BEGIN;
INSERT INTO `operation_usermessage` VALUES (1, '2019-11-23 14:57:00.000000', '欢迎加入CompilerBuddy学习！', 0, 2);
COMMIT;

-- ----------------------------
-- Table structure for users_userprofile
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile`;
CREATE TABLE `users_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `nike_name` varchar(50) NOT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(6) NOT NULL,
  `school` varchar(50) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `head_image` varchar(100) NOT NULL,
  `file_path` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile
-- ----------------------------
BEGIN;
INSERT INTO `users_userprofile` VALUES (1, 'pbkdf2_sha256$150000$yO4CsYgWgGwq$J0M6VgcXmFa5+btc4cfxUyaMaJR5fEISSrU2D/tFL54=', '2019-12-01 19:07:13.281440', 1, 'zach', '', '', '', 1, 1, '2019-11-23 12:44:00.000000', 'Zach', NULL, 'male', '\'\'', '15339087369', 'default.jpg', 'users_file/default_user/');
INSERT INTO `users_userprofile` VALUES (2, 'pbkdf2_sha256$150000$aftphhRNmiYV$yajXoFySlywmLZtXrN+pko8VpR+q9TJjbnBodKbodLw=', NULL, 0, 'bob', 'bob', '', '', 0, 1, '2019-11-23 14:46:00.000000', 'bob', '2019-11-23', 'male', '国科大', '1888888888', 'head_image/2019/11/default_middile_1.png', 'users_file/1888888888/');
INSERT INTO `users_userprofile` VALUES (3, 'pbkdf2_sha256$150000$Tyt09nU5fK4Y$CfQEMohKl9d++YoE7vgr66uzwcPDSvVKMFJjNhqCm+E=', '2019-11-23 17:27:50.481946', 0, '11111111111', '', '', '', 0, 1, '2019-11-23 17:27:50.391090', '', NULL, '', '', '11111111111', 'default.jpg', 'users_file/default_user/');
COMMIT;

-- ----------------------------
-- Table structure for users_userprofile_groups
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_groups`;
CREATE TABLE `users_userprofile_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_groups_userprofile_id_group_id_823cf2fc_uniq` (`userprofile_id`,`group_id`),
  KEY `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_userprofile_gr_userprofile_id_a4496a80_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for users_userprofile_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
CREATE TABLE `users_userprofile_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_user_p_userprofile_id_permissio_d0215190_uniq` (`userprofile_id`,`permission_id`),
  KEY `users_userprofile_us_permission_id_393136b6_fk_auth_perm` (`permission_id`),
  CONSTRAINT `users_userprofile_us_permission_id_393136b6_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `users_userprofile_us_userprofile_id_34544737_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for xadmin_bookmark
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `url_name` varchar(64) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookmark_content_type_id_60941679_fk_django_co` (`content_type_id`),
  KEY `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_bookmark_content_type_id_60941679_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for xadmin_log
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` varchar(32) NOT NULL,
  `message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
BEGIN;
INSERT INTO `xadmin_log` VALUES (1, '2019-11-23 12:46:32.890523', '127.0.0.1', '1', 'Zach', 'change', '修改 last_login，nike_name，gender，school 和 mobile', 6, 1);
INSERT INTO `xadmin_log` VALUES (2, '2019-11-23 14:14:24.889468', '127.0.0.1', '1', 'Course1', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (3, '2019-11-23 14:22:32.888198', '127.0.0.1', '2', 'Course2', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (4, '2019-11-23 14:38:57.100172', '127.0.0.1', '8', 'Section object (8)', 'create', '已添加。', 13, 1);
INSERT INTO `xadmin_log` VALUES (5, '2019-11-23 14:40:59.246935', '127.0.0.1', '9', 'Section object (9)', 'create', '已添加。', 13, 1);
INSERT INTO `xadmin_log` VALUES (6, '2019-11-23 14:41:18.292471', '127.0.0.1', '10', 'Section object (10)', 'create', '已添加。', 13, 1);
INSERT INTO `xadmin_log` VALUES (7, '2019-11-23 14:41:30.132330', '127.0.0.1', '10', 'Section object (10)', 'change', '修改 course 和 name', 13, 1);
INSERT INTO `xadmin_log` VALUES (8, '2019-11-23 14:41:41.190460', '127.0.0.1', '11', 'Section object (11)', 'create', '已添加。', 13, 1);
INSERT INTO `xadmin_log` VALUES (9, '2019-11-23 14:42:15.586437', '127.0.0.1', '12', 'Section object (12)', 'create', '已添加。', 13, 1);
INSERT INTO `xadmin_log` VALUES (10, '2019-11-23 14:46:12.567894', '127.0.0.1', '2', 'bob', 'create', '已添加。', 6, 1);
INSERT INTO `xadmin_log` VALUES (11, '2019-11-23 14:47:55.517219', '127.0.0.1', '2', 'bob', 'change', '修改 first_name，nike_name，birthday，gender，school，mobile，head_image 和 file_path', 6, 1);
INSERT INTO `xadmin_log` VALUES (12, '2019-11-23 14:52:33.732094', '127.0.0.1', '3', '课程非常有用', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (13, '2019-11-23 14:53:14.438236', '127.0.0.1', '4', '课程非常有用', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (14, '2019-11-23 14:54:03.553921', '127.0.0.1', '4', '课程非常有用', 'delete', '', 16, 1);
INSERT INTO `xadmin_log` VALUES (15, '2019-11-23 14:58:00.400195', '127.0.0.1', '1', '欢迎加入CompilerBuddy学习！', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (16, '2019-11-23 15:08:55.350546', '127.0.0.1', '3', 'Course1', 'create', '已添加。', 17, 1);
INSERT INTO `xadmin_log` VALUES (17, '2019-11-23 15:20:21.015416', '127.0.0.1', '3', 'bob', 'create', '已添加。', 15, 1);
INSERT INTO `xadmin_log` VALUES (18, '2019-11-23 15:21:21.468934', '127.0.0.1', '4', 'Course1', 'create', '已添加。', 17, 1);
INSERT INTO `xadmin_log` VALUES (19, '2019-11-23 15:21:29.132050', '127.0.0.1', NULL, '', 'delete', '批量删除 1 个 用户课程', NULL, 1);
INSERT INTO `xadmin_log` VALUES (20, '2019-11-23 15:22:05.311823', '127.0.0.1', '1', '后端管理员', 'create', '已添加。', 3, 1);
INSERT INTO `xadmin_log` VALUES (21, '2019-11-23 15:24:37.065069', '127.0.0.1', '2', '前端管咯', 'create', '已添加。', 3, 1);
INSERT INTO `xadmin_log` VALUES (22, '2019-11-23 15:25:42.832171', '127.0.0.1', '3', '内容管理', 'create', '已添加。', 3, 1);
INSERT INTO `xadmin_log` VALUES (23, '2019-12-01 12:44:55.696466', '127.0.0.1', '3', 'Course3', 'create', '已添加。', 12, 1);
COMMIT;

-- ----------------------------
-- Table structure for xadmin_usersettings
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
BEGIN;
INSERT INTO `xadmin_usersettings` VALUES (1, 'dashboard:home:pos', '', 1);
COMMIT;

-- ----------------------------
-- Table structure for xadmin_userwidget
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) NOT NULL,
  `widget_type` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
