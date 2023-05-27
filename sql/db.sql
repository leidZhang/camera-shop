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

 Date: 27/05/2023 17:21:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for accessory
-- ----------------------------
DROP TABLE IF EXISTS `accessory`;
CREATE TABLE `accessory`  (
  `id` int NOT NULL,
  `model_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `model_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `manufacturer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `retail_price` float NOT NULL,
  `num_in_stock` int NOT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of accessory
-- ----------------------------
INSERT INTO `accessory` VALUES (1, 'MT-33 Camera Tripod', NULL, 'ULANZI', 27.95, 8, 'https://m.media-amazon.com/images/I/61+Wp2qMx3L._AC_SX466_.jpg');
INSERT INTO `accessory` VALUES (2, '67 Inch Heavy Duty Tripod', NULL, 'Eicanus', 36.99, 6, 'https://m.media-amazon.com/images/I/71I+Q2wKdFL._AC_SX466_.jpg');
INSERT INTO `accessory` VALUES (3, 'Leather Camera Backpack Bag', NULL, 'Endurax', 69.99, 5, 'https://m.media-amazon.com/images/I/718b9HptW0L._AC_SX466_.jpg');
INSERT INTO `accessory` VALUES (4, 'Camera Lens Rain Cover', NULL, 'Kiorafoto', 7.99, 228, 'https://m.media-amazon.com/images/I/71l0y6xt1vS._AC_SX679_.jpg');
INSERT INTO `accessory` VALUES (5, 'VL100C Bi-Color LED Video Light', NULL, 'VIJIM', 19.95, 10, 'https://m.media-amazon.com/images/I/61GgRmStCfL._AC_SX466_.jpg');

-- ----------------------------
-- Table structure for camera
-- ----------------------------
DROP TABLE IF EXISTS `camera`;
CREATE TABLE `camera`  (
  `id` int NOT NULL,
  `model_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `model_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
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
INSERT INTO `camera` VALUES (1, 'EOS Rebel T7 DSLR ', 'EOS REBEL T7 18-55mm f/3.5-5.6 IS II Kit', 'Canon', 539, 20, '2023-05-11', 'https://m.media-amazon.com/images/I/71EWRyqzw0L._AC_SX425_.jpg');
INSERT INTO `camera` VALUES (2, 'FHD 1080P Kids Camera', '', 'CAMKORY', 69.99, 10, '2023-05-27', 'https://m.media-amazon.com/images/I/6121MRPGyJL._AC_SY450_.jpg');
INSERT INTO `camera` VALUES (3, '48MP Vlogging Camera', NULL, 'Femivo', 179.99, 5, '2023-05-04', 'https://m.media-amazon.com/images/I/819vw4Yp-zL._AC_SX466_.jpg');
INSERT INTO `camera` VALUES (4, 'Alpha 7 IV ', NULL, 'Sony', 2698, 3, '2023-05-01', 'https://m.media-amazon.com/images/I/71vpzW1nQJL.__AC_SY300_SX300_QL70_FMwebp_.jpg');
INSERT INTO `camera` VALUES (5, '48MP Digital Camera ', NULL, 'Monitech', 149.99, 5, '2023-05-18', 'https://m.media-amazon.com/images/I/71sAnXHjo-L._AC_SX466_.jpg');

-- ----------------------------
-- Table structure for lens
-- ----------------------------
DROP TABLE IF EXISTS `lens`;
CREATE TABLE `lens`  (
  `id` int NOT NULL,
  `model_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `model_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `manufacturer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `retail_price` float NOT NULL,
  `num_in_stock` int NOT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lens
-- ----------------------------
INSERT INTO `lens` VALUES (1, 'Contemporary DG OS HSM', NULL, 'Sigma', 1089, 14, 'https://m.media-amazon.com/images/I/81o6z3YrNZL._AC_SL1500_.jpg');
INSERT INTO `lens` VALUES (2, 'USM Super-Telephoto Lens', NULL, 'Canon', 2899, 5, 'https://m.media-amazon.com/images/I/71cBW7Mb44L._AC_SX466_.jpg');
INSERT INTO `lens` VALUES (3, 'RF 85mm F1.2 L USM Lens', NULL, 'Canon', 2799, 2, 'https://m.media-amazon.com/images/I/612WNSfff9L._AC_SX466_.jpg');
INSERT INTO `lens` VALUES (4, 'Milvus Full Frame Camera Lens', NULL, 'ZEISS', 1274, 3, 'https://m.media-amazon.com/images/I/61DcU2Z9tDL._AC_SX466_.jpg');
INSERT INTO `lens` VALUES (5, 'Di III VC VXD Lens', NULL, 'Tamron', 1399, 6, 'https://m.media-amazon.com/images/I/61al59-ZpZS._AC_SX466_.jpg');

SET FOREIGN_KEY_CHECKS = 1;
