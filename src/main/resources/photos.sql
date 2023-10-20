/*
 Navicat Premium Data Transfer

 Source Server         : mysqllink
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : localhost:3306
 Source Schema         : photos

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 20/10/2023 11:02:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for photos
-- ----------------------------
DROP TABLE IF EXISTS `photos`;
CREATE TABLE `photos`  (
  `photo-path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `photo-name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `time` datetime(6) NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of photos
-- ----------------------------
INSERT INTO `photos` VALUES ('static', 'aaa.png', '2023-10-19 00:31:26.000000', 'cqu', 1, '风景');
INSERT INTO `photos` VALUES ('static', 'bbb.png', '2023-10-17 15:28:23.000000', 'pku', 2, '风景');
INSERT INTO `photos` VALUES ('static', 'ccc.png', '2023-10-06 15:36:22.000000', 'thu', 3, '风光');
INSERT INTO `photos` VALUES (NULL, 'ddd.png', '2023-10-19 15:54:07.000000', '上海', 4, '风景');
INSERT INTO `photos` VALUES (NULL, 'eee.png', '2023-10-06 15:55:17.000000', 'qqq', 5, '风景');
INSERT INTO `photos` VALUES (NULL, 'fff.png', '2023-10-25 15:56:22.000000', '成都', 6, '风光');
INSERT INTO `photos` VALUES (NULL, 'eee.png', '2023-10-19 22:41:04.000000', 'cqu', 7, '动物');
INSERT INTO `photos` VALUES (NULL, 'download.jpg', '2023-10-18 10:45:16.000000', '重庆', 8, '动物');
INSERT INTO `photos` VALUES (NULL, 'download1.jpg', '2023-10-17 10:46:55.000000', '北京', 9, '太空');
INSERT INTO `photos` VALUES (NULL, 'ggg.png', '2023-10-20 10:47:29.000000', 'cqu', 10, '动物');
INSERT INTO `photos` VALUES (NULL, 'hhh (1).jpg', '2023-10-20 10:48:10.000000', 'pku', 11, '天空');
INSERT INTO `photos` VALUES (NULL, 'hhh (2).jpg', '2023-10-06 10:49:15.000000', 'aaa', 12, '风光');
INSERT INTO `photos` VALUES (NULL, 'hhh (3).jpg', '2023-10-18 10:49:53.000000', '重庆', 13, '运动');
INSERT INTO `photos` VALUES (NULL, 'hhh (4).jpg', '2023-10-18 10:50:35.000000', '北京', 14, '动物');
INSERT INTO `photos` VALUES (NULL, 'hhh (5).jpg', '2023-10-25 10:51:08.000000', 'cqu', 15, '城市');
INSERT INTO `photos` VALUES (NULL, 'iii.jpg', '2023-10-20 10:51:54.000000', '成都', 16, '风光');
INSERT INTO `photos` VALUES (NULL, 'jjj.png', '2023-10-06 10:53:29.000000', '长沙', 17, '景色');
INSERT INTO `photos` VALUES (NULL, 'OIPC.jpg', '2023-10-06 10:54:22.000000', '甘肃', 18, '机车');
INSERT INTO `photos` VALUES (NULL, 'OIC.jpg', '2023-10-20 10:54:54.000000', '甘肃', 19, '机车');
INSERT INTO `photos` VALUES (NULL, 'OC.jpg', '2023-10-17 10:55:21.000000', '北京', 20, '太空');

SET FOREIGN_KEY_CHECKS = 1;
