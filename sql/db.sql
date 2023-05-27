/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80030 (8.0.30)
 Source Host           : localhost:3306
 Source Schema         : ecommerce_website

 Target Server Type    : MySQL
 Target Server Version : 80030 (8.0.30)
 File Encoding         : 65001

 Date: 27/05/2023 13:19:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for camera
-- ----------------------------
DROP TABLE IF EXISTS `camera`;
CREATE TABLE `camera`  (
  `id` int NOT NULL,
  `model_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `model_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `manufacturer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `retail_price` float NOT NULL,
  `num_in_stock` int NOT NULL,
  `release_date` date NOT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of camera
-- ----------------------------
INSERT INTO `camera` VALUES (1, 'Canon EOS Rebel T7 DSLR Camera', 'EOS REBEL T7 18-55mm f/3.5-5.6 IS II Kit', 'Canon', 539, 20, '2023-05-11', 'https://m.media-amazon.com/images/I/71EWRyqzw0L._AC_SX425_.jpg');
INSERT INTO `camera` VALUES (2, 'test', 'test', 'test', 0, 0, '2023-05-27', 'https://img0.baidu.com/it/u=1442536931,57766296&fm=253&fmt=auto&app=138&f=JPG?w=225&h=225');

SET FOREIGN_KEY_CHECKS = 1;
