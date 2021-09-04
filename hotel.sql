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

 Date: 04/09/2021 16:36:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_hotel
-- ----------------------------
DROP TABLE IF EXISTS `t_hotel`;
CREATE TABLE `t_hotel`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'primary key',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'name of hotel',
  `address` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'location of hotel',
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'type of hotel',
  `area` decimal(20, 0) UNSIGNED NOT NULL COMMENT 'area of hotel',
  `star` decimal(20, 0) UNSIGNED NOT NULL COMMENT 'star of hotel',
  `score` decimal(20, 0) UNSIGNED NOT NULL COMMENT 'score of hotel from remark',
  `introduction` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'introduction of hotel',
  `picture_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'picture of hotel',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'primary key',
  `user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'user id',
  `room_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'room id',
  `start_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'the time that user start using the room',
  `end_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'the time that user end using the room',
  `amount` decimal(20, 0) UNSIGNED NOT NULL COMMENT 'amount (price)',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'some comment from customer',
  `status` smallint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'status of the order',
  `create_date` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT 'the time that this order been created.',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_pictrue
-- ----------------------------
DROP TABLE IF EXISTS `t_pictrue`;
CREATE TABLE `t_pictrue`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'primary key',
  `pictrue_path` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'the path of the picture',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_remark
-- ----------------------------
DROP TABLE IF EXISTS `t_remark`;
CREATE TABLE `t_remark`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'primary key',
  `user_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'user name who create this comment',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'the context of the remark',
  `score` smallint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'the score of this remark (for services)',
  `roomID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'the specific room that this remark belong to',
  `user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'the user id of the user who add this comment',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_room
-- ----------------------------
DROP TABLE IF EXISTS `t_room`;
CREATE TABLE `t_room`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'primary key',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'the name of the room',
  `number` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'the number of this room (in single hotel)',
  `picture_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'default.jpg' COMMENT 'the picture of the hotel',
  `type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'the type of hotel',
  `area` decimal(32, 0) UNSIGNED NOT NULL COMMENT 'the area of hotel',
  `bed_width` decimal(32, 0) UNSIGNED NOT NULL COMMENT 'the width of the bed in room',
  `price` decimal(10, 0) UNSIGNED NOT NULL COMMENT 'price of this room',
  `score` decimal(20, 0) UNSIGNED NOT NULL DEFAULT 4 COMMENT 'the score of this room (from remark)',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'no remark' COMMENT 'some comment information( from hotel )',
  `hotel_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'the id of the hotel that it belong to ',
  `status` smallint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'the status of the room (0 means usble)',
  `level` smallint(0) NULL DEFAULT NULL COMMENT 'which level this room in of the hotel',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_hotel_id`(`hotel_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'primary key',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'user name',
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1234' COMMENT 'login password',
  `type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'USER' COMMENT 'user type',
  `phone_number` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'phone number',
  `picture_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'picture of user head portrait',
  `balance` decimal(32, 0) NOT NULL COMMENT 'balance of user',
  `pay_pwd` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '4QrcOUm6Wau+VuBX8g+IPg==' COMMENT 'the password before user paying',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;