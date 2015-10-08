/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50545
Source Host           : localhost:3306
Source Database       : curd

Target Server Type    : MYSQL
Target Server Version : 50545
File Encoding         : 65001

Date: 2015-10-08 23:02:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('2015_10_08_135058_create_users_table', '1');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'kisorniru', 'kisorniru@gmail.com', '12', '2015-10-08 14:31:15', '2015-10-08 14:31:15');
INSERT INTO `users` VALUES ('2', 'kisorniru', 'kisorniru@kisorniru.com', '123456', '2015-10-08 14:32:41', '2015-10-08 16:30:55');
INSERT INTO `users` VALUES ('3', 'kisorniru', 'kisornirqwu@gmail.com', '12', '2015-10-08 14:33:09', '2015-10-08 14:33:09');
INSERT INTO `users` VALUES ('7', 'kisorniru', 'kisorniru007@gmail.com', '12345', '2015-10-08 15:27:55', '2015-10-08 16:29:35');
INSERT INTO `users` VALUES ('8', 'kisorniru', 'kisasdasdasdwserwerworniru@gmail.com', '123123', '2015-10-08 15:32:54', '2015-10-08 15:32:54');
INSERT INTO `users` VALUES ('9', 'kisorniru', 'kisornsadasdasdasdairu@gmail.com', '123123123', '2015-10-08 15:36:58', '2015-10-08 15:36:58');
