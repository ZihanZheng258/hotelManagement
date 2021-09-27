/*
 Navicat Premium Data Transfer

 Source Server         : zzz
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : hotel

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 27/09/2021 19:17:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_hotel
-- ----------------------------
DROP TABLE IF EXISTS `t_hotel`;
CREATE TABLE `t_hotel`  (
  `id` int(0) NOT NULL COMMENT 'primary key',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'name of hotel',
  `address` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'location of hotel',
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'type of hotel',
  `area` double(20, 0) UNSIGNED NOT NULL COMMENT 'area of hotel',
  `star` int(0) UNSIGNED NOT NULL COMMENT 'star of hotel',
  `score` int(0) UNSIGNED NOT NULL COMMENT 'score of hotel from remark',
  `introduction` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'introduction of hotel',
  `picture_id` int(0) NULL DEFAULT NULL COMMENT 'picture of hotel',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10001 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order`  (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'primary key',
  `user_id` int(0) NOT NULL COMMENT 'user id',
  `room_id` int(0) NOT NULL DEFAULT 0 COMMENT 'room id',
  `start_time` date NOT NULL COMMENT 'the time that user start using the room',
  `end_time` date NOT NULL COMMENT 'the time that user end using the room',
  `amount` double(20, 0) UNSIGNED NOT NULL COMMENT 'amount (price)',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'some comment from customer',
  `status` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'status of the order',
  `create_date` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT 'the time that this order been created.',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1101 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_pictrue
-- ----------------------------
DROP TABLE IF EXISTS `t_pictrue`;
CREATE TABLE `t_pictrue`  (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'primary key',
  `pictrue_path` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'the path of the picture',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_remark
-- ----------------------------
DROP TABLE IF EXISTS `t_remark`;
CREATE TABLE `t_remark`  (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'primary key',
  `user_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'user name who create this comment',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'the context of the remark',
  `score` smallint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'the score of this remark (for services)',
  `roomID` int(0) NOT NULL COMMENT 'the specific room that this remark belong to',
  `user_id` int(0) NOT NULL COMMENT 'the user id of the user who add this comment',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_room
-- ----------------------------
DROP TABLE IF EXISTS `t_room`;
CREATE TABLE `t_room`  (
  `id` int(32) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'primary key',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'the name of the room',
  `number` int(0) NOT NULL DEFAULT 0 COMMENT 'the number of this room (in single hotel)',
  `picture_id` int(0) NOT NULL COMMENT 'the picture of the hotel',
  `type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'the type of hotel',
  `area` double(32, 0) UNSIGNED NOT NULL COMMENT 'the area of hotel',
  `bed_width` double(32, 0) UNSIGNED NOT NULL COMMENT 'the width of the bed in room',
  `price` double(10, 0) UNSIGNED NOT NULL COMMENT 'price of this room',
  `score` int(0) UNSIGNED NOT NULL DEFAULT 4 COMMENT 'the score of this room (from remark)',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '没有备注信息' COMMENT 'some comment information( from hotel )',
  `hotel_id` int(0) NOT NULL DEFAULT 0 COMMENT 'the id of the hotel that it belong to ',
  `status` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'the status of the room (0 means usble)',
  `level` int(0) NULL DEFAULT NULL COMMENT 'which level this room in of the hotel',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_hotel_id`(`hotel_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` int(32) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'primary key',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'user name',
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1234' COMMENT 'login password',
  `type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'USER' COMMENT 'user type',
  `phone_number` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'phone number',
  `picture_id` int(0) NOT NULL COMMENT 'picture of user head portrait',
  `balance` double(32, 0) NOT NULL COMMENT 'balance of user',
  `pay_pwd` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '4QrcOUm6Wau+VuBX8g+IPg==' COMMENT 'the password before user paying',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
