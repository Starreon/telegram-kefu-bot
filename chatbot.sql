/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50740
Source Host           : localhost:3306
Source Database       : chatbot

Target Server Type    : MYSQL
Target Server Version : 50740
File Encoding         : 65001

Date: 2023-10-11 17:42:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `uid` varchar(100) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `content` text,
  `kind` varchar(255) DEFAULT NULL,
  `message_id` int(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `status` tinyint(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4;
