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

 Date: 05/06/2023 00:50:27
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
  PRIMARY KEY (`id`) USING BTREE,
  CONSTRAINT `accessory_id` FOREIGN KEY (`id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
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
  PRIMARY KEY (`id`) USING BTREE,
  CONSTRAINT `camera_id` FOREIGN KEY (`id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of camera
-- ----------------------------
INSERT INTO `camera` VALUES (6, 'EOS Rebel T7 DSLR ', 'EOS REBEL T7 18-55mm f/3.5-5.6 IS II Kit', 'Canon', 539, 20, '2023-05-11', 'https://m.media-amazon.com/images/I/71EWRyqzw0L._AC_SX425_.jpg');
INSERT INTO `camera` VALUES (7, 'FHD 1080P Kids Camera', '', 'CAMKORY', 69.99, 10, '2023-05-27', 'https://m.media-amazon.com/images/I/6121MRPGyJL._AC_SY450_.jpg');
INSERT INTO `camera` VALUES (8, '48MP Vlogging Camera', NULL, 'Femivo', 179.99, 5, '2023-05-04', 'https://m.media-amazon.com/images/I/819vw4Yp-zL._AC_SX466_.jpg');
INSERT INTO `camera` VALUES (9, 'Alpha 7 IV ', NULL, 'Sony', 2698, 3, '2023-05-01', 'https://m.media-amazon.com/images/I/71vpzW1nQJL.__AC_SY300_SX300_QL70_FMwebp_.jpg');
INSERT INTO `camera` VALUES (10, '48MP Digital Camera ', NULL, 'Monitech', 149.99, 5, '2023-05-18', 'https://m.media-amazon.com/images/I/71sAnXHjo-L._AC_SX466_.jpg');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `prod_id` int NULL DEFAULT NULL,
  `prod_num` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `cart_user_id`(`user_id` ASC) USING BTREE,
  INDEX `cart_prod_id`(`prod_id` ASC) USING BTREE,
  CONSTRAINT `cart_prod_id` FOREIGN KEY (`prod_id`) REFERENCES `product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `cart_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES (2, 1, 7, 1);
INSERT INTO `cart` VALUES (4, 1, 8, 1);
INSERT INTO `cart` VALUES (9, 1, 9, 2);
INSERT INTO `cart` VALUES (10, 1, 6, 1);

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------

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
  PRIMARY KEY (`id`) USING BTREE,
  CONSTRAINT `lens_id` FOREIGN KEY (`id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lens
-- ----------------------------
INSERT INTO `lens` VALUES (11, 'Contemporary DG OS HSM', NULL, 'Sigma', 1089, 14, 'https://m.media-amazon.com/images/I/81o6z3YrNZL._AC_SL1500_.jpg');
INSERT INTO `lens` VALUES (12, 'USM Super-Telephoto Lens', NULL, 'Canon', 2899, 5, 'https://m.media-amazon.com/images/I/71cBW7Mb44L._AC_SX466_.jpg');
INSERT INTO `lens` VALUES (13, 'RF 85mm F1.2 L USM Lens', NULL, 'Canon', 2799, 2, 'https://m.media-amazon.com/images/I/612WNSfff9L._AC_SX466_.jpg');
INSERT INTO `lens` VALUES (14, 'Milvus Full Frame Camera Lens', NULL, 'ZEISS', 1274, 3, 'https://m.media-amazon.com/images/I/61DcU2Z9tDL._AC_SX466_.jpg');
INSERT INTO `lens` VALUES (15, 'Di III VC VXD Lens', NULL, 'Tamron', 1399, 6, 'https://m.media-amazon.com/images/I/61al59-ZpZS._AC_SX466_.jpg');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `model_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `retail_price` decimal(10, 2) NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, 'MT-33 Camera Tripod', 27.95, 'https://m.media-amazon.com/images/I/61+Wp2qMx3L._AC_SX466_.jpg');
INSERT INTO `product` VALUES (2, '67 Inch Heavy Duty Tripod', 36.99, 'https://m.media-amazon.com/images/I/71I+Q2wKdFL._AC_SX466_.jpg');
INSERT INTO `product` VALUES (3, 'Leather Camera Backpack Bag', 69.99, 'https://m.media-amazon.com/images/I/718b9HptW0L._AC_SX466_.jpg');
INSERT INTO `product` VALUES (4, 'Camera Lens Rain Cover', 7.99, 'https://m.media-amazon.com/images/I/71l0y6xt1vS._AC_SX679_.jpg');
INSERT INTO `product` VALUES (5, 'VL100C Bi-Color LED Video Light', 19.95, 'https://m.media-amazon.com/images/I/61GgRmStCfL._AC_SX466_.jpg');
INSERT INTO `product` VALUES (6, 'EOS Rebel T7 DSLR ', 539.00, 'https://m.media-amazon.com/images/I/71EWRyqzw0L._AC_SX425_.jpg');
INSERT INTO `product` VALUES (7, 'FHD 1080P Kids Camera', 69.99, 'https://m.media-amazon.com/images/I/6121MRPGyJL._AC_SY450_.jpg');
INSERT INTO `product` VALUES (8, '48MP Vlogging Camera', 179.99, 'https://m.media-amazon.com/images/I/819vw4Yp-zL._AC_SX466_.jpg');
INSERT INTO `product` VALUES (9, 'Alpha 7 IV ', 2698.00, 'https://m.media-amazon.com/images/I/71vpzW1nQJL.__AC_SY300_SX300_QL70_FMwebp_.jpg');
INSERT INTO `product` VALUES (10, '48MP Digital Camera ', 149.99, 'https://m.media-amazon.com/images/I/71sAnXHjo-L._AC_SX466_.jpg');
INSERT INTO `product` VALUES (11, 'Contemporary DG OS HSM', 1089.00, 'https://m.media-amazon.com/images/I/81o6z3YrNZL._AC_SL1500_.jpg');
INSERT INTO `product` VALUES (12, 'USM Super-Telephoto Lens', 2899.00, 'https://m.media-amazon.com/images/I/71cBW7Mb44L._AC_SX466_.jpg');
INSERT INTO `product` VALUES (13, 'RF 85mm F1.2 L USM Lens', 2799.00, 'https://m.media-amazon.com/images/I/612WNSfff9L._AC_SX466_.jpg');
INSERT INTO `product` VALUES (14, 'Milvus Full Frame Camera Lens', 1274.00, 'https://m.media-amazon.com/images/I/61DcU2Z9tDL._AC_SX466_.jpg');
INSERT INTO `product` VALUES (15, 'Di III VC VXD Lens', 1399.00, 'https://m.media-amazon.com/images/I/61al59-ZpZS._AC_SX466_.jpg');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'test_user');

SET FOREIGN_KEY_CHECKS = 1;
