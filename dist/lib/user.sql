/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50714
 Source Host           : localhost:3306
 Source Schema         : user

 Target Server Type    : MySQL
 Target Server Version : 50714
 File Encoding         : 65001

 Date: 13/02/2019 16:36:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for buy
-- ----------------------------
DROP TABLE IF EXISTS `buy`;
CREATE TABLE `buy`  (
  `idx` int(255) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `uname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `imgurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` int(10) NULL DEFAULT NULL,
  `qty` int(11) NULL DEFAULT NULL,
  `allprice` int(10) NULL DEFAULT NULL,
  `buy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idx`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 269 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of buy
-- ----------------------------
INSERT INTO `buy` VALUES (265, 2, 'ewrasdf', '../images/list/t2.png', '12345', 1633, 1, 1633, '0');
INSERT INTO `buy` VALUES (266, 30, 'Calvin Klein', '../images/index1/sp15.png', '12345', 4085, 2, 8170, '0');
INSERT INTO `buy` VALUES (267, 39, 'Calvin Klein Jeans', '../images/index1/sp24.png', '12345', 4482, 2, 8964, '0');
INSERT INTO `buy` VALUES (264, 82, 'Calvin Klein Jeans', '../images/index1/sp24.png', '12', 4482, 1, 4482, '0');
INSERT INTO `buy` VALUES (262, 6, 'Calvin Klein', '../images/list/t6.png', '12', 234, 1, 234, '0');
INSERT INTO `buy` VALUES (261, 43, 'Klein', '../images/index1/xt4.png', '12', 634, 2, 1268, '0');
INSERT INTO `buy` VALUES (260, 41, 'Calvin ', '../images/index1/xt2.png', '12', 453, 2, 906, '1');
INSERT INTO `buy` VALUES (259, 42, 'Klein', '../images/index1/xt3.png', '12', 153, 3, 459, '1');
INSERT INTO `buy` VALUES (256, 3, 'Calvin Klein Jeans', '../images/list/t3.png', '12', 302, 2, 604, '1');

-- ----------------------------
-- Table structure for list
-- ----------------------------
DROP TABLE IF EXISTS `list`;
CREATE TABLE `list`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `imgurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goodname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jies` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` int(255) NULL DEFAULT NULL,
  `yprice` int(255) NULL DEFAULT NULL,
  `rd` int(255) NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of list
-- ----------------------------
INSERT INTO `list` VALUES ('1', '../images/list/t1.png', 'Calvin Klein', '男士不知道干什么的', 302, 392, 230);
INSERT INTO `list` VALUES ('2', '../images/list/t2.png', 'ewrasdf', '男士短袖纯棉T恤', 1633, 2122, 123);
INSERT INTO `list` VALUES ('3', '../images/list/t3.png', 'Calvin Klein Jeans', '男士黑白色短袖 棉 T恤', 302, 392, 213);
INSERT INTO `list` VALUES ('4', '../images/list/t4.png', 'Burberry', '男士黑白色短袖T恤', 304, 395, 333);
INSERT INTO `list` VALUES ('5', '../images/list/t5.png', 'Calvin Klein Jeans', '男士圆领休闲短袖T恤', 234, 304, 111);
INSERT INTO `list` VALUES ('6', '../images/list/t6.png', 'Calvin Klein', '男士不知道干什么的', 234, 304, 240);
INSERT INTO `list` VALUES ('7', '../images/list/t7.png', 'ewrasdf', '男士短袖纯棉T恤', 1233, 1602, 333);
INSERT INTO `list` VALUES ('8', '../images/list/t8.png', 'Calvin Klein Jeans', '男士黑白色短袖 棉 T恤', 423, 549, 384);
INSERT INTO `list` VALUES ('9', '../images/index1/t1.png', 'Calvin Klein Jeans', '碧然德（BRITA）滤水壶滤芯', 2869, 3729, 197);
INSERT INTO `list` VALUES ('10', '../images/index1/t2.png', 'Calvin Klein', 'Ferrari法拉利男士香水套装莎莎', 2884, 3749, 179);
INSERT INTO `list` VALUES ('11', '../images/index1/t3.png', 'ewrasdf', '美素佳儿（Friso）【全球】', 2899, 3769, 160);
INSERT INTO `list` VALUES ('12', '../images/index1/t4.png', 'Calvin Klein Jeans', '美国MILANI超显色滋润持久', 2914, 3789, 142);
INSERT INTO `list` VALUES ('13', '../images/index1/t5.png', 'Burberry', 'Bose Soundsport九线机', 2929, 3808, 123);
INSERT INTO `list` VALUES ('14', '../images/index1/t6.png', 'Calvin Klein Jeans', '美德乐（Medela）丝韵吸', 2945, 3828, 105);
INSERT INTO `list` VALUES ('15', '../images/index1/t7.png', 'Calvin Klein', '花王（Merries）妙而舒婴', 2960, 3848, 86);
INSERT INTO `list` VALUES ('16', '../images/index1/sp1.png', 'Calvin Klein Jeans', '小泰克（little tikes）美国', 3468, 4508, 150);
INSERT INTO `list` VALUES ('17', '../images/index1/sp2.png', 'Burberry', '兰蔻（LANCOME）小黑瓶', 3512, 4565, 143);
INSERT INTO `list` VALUES ('18', '../images/index1/sp3.png', 'Calvin Klein Jeans', 'EUGENE PERMA防脱发强', 3556, 4623, 135);
INSERT INTO `list` VALUES ('19', '../images/index1/sp4.png', 'Calvin Klein', '美国进口Elta MD氨基酸洁', 3600, 4680, 128);
INSERT INTO `list` VALUES ('20', '../images/index1/sp5.png', 'ewrasdf', 'Swisse钙加维生素D片150片', 3644, 4737, 120);
INSERT INTO `list` VALUES ('21', '../images/index1/sp6.png', 'Calvin Klein Jeans', '碧然德（BRITA）滤水壶滤芯', 3688, 4795, 113);
INSERT INTO `list` VALUES ('22', '../images/index1/sp7.png', 'Burberry', 'Ferrari法拉利男士香水套装莎莎', 3732, 4852, 105);
INSERT INTO `list` VALUES ('23', '../images/index1/sp8.png', 'Calvin Klein Jeans', '美素佳儿（Friso）【全球】', 3776, 4910, 98);
INSERT INTO `list` VALUES ('24', '../images/index1/sp9.png', 'Calvin Klein', '美国MILANI超显色滋润持久', 3821, 4967, 91);
INSERT INTO `list` VALUES ('25', '../images/index1/sp10.png', 'Calvin Klein', 'Bose Soundsport九线机', 3865, 5024, 83);
INSERT INTO `list` VALUES ('26', '../images/index1/sp11.png', 'ewrasdf', '美德乐（Medela）丝韵吸', 3909, 5082, 76);
INSERT INTO `list` VALUES ('27', '../images/index1/sp12.png', 'Calvin Klein Jeans', '花王（Merries）妙而舒婴', 3953, 5139, 68);
INSERT INTO `list` VALUES ('28', '../images/index1/sp13.png', 'Burberry', '小泰克（little tikes）美国', 3997, 5196, 61);
INSERT INTO `list` VALUES ('29', '../images/index1/sp14.png', 'Calvin Klein Jeans', '兰蔻（LANCOME）小黑瓶', 4041, 5254, 53);
INSERT INTO `list` VALUES ('30', '../images/index1/sp15.png', 'Calvin Klein', 'EUGENE PERMA防脱发强', 4085, 5311, 46);
INSERT INTO `list` VALUES ('31', '../images/index1/sp16.png', 'ewrasdf', '美国进口Elta MD氨基酸洁', 4129, 5368, 38);
INSERT INTO `list` VALUES ('32', '../images/index1/sp17.png', 'Calvin Klein Jeans', 'Swisse钙加维生素D片151片', 4174, 5426, 31);
INSERT INTO `list` VALUES ('33', '../images/index1/sp18.png', 'Burberry', '碧然德（BRITA）滤水壶滤芯', 4218, 5483, 23);
INSERT INTO `list` VALUES ('34', '../images/index1/sp19.png', 'Calvin Klein Jeans', 'Ferrari法拉利男士香水套装莎莎', 4262, 5540, 16);
INSERT INTO `list` VALUES ('35', '../images/index1/sp20.png', 'Calvin Klein', '美素佳儿（Friso）【全球】', 4306, 5598, 9);
INSERT INTO `list` VALUES ('36', '../images/index1/sp21.png', 'ewrasdf', '美国MILANI超显色滋润持久', 4350, 5655, 1);
INSERT INTO `list` VALUES ('37', '../images/index1/sp22.png', 'Calvin Klein Jeans', 'Bose Soundsport九线机', 4394, 5713, 532);
INSERT INTO `list` VALUES ('38', '../images/index1/sp23.png', 'Burberry', '美德乐（Medela）丝韵吸', 4438, 5770, 586);
INSERT INTO `list` VALUES ('39', '../images/index1/sp24.png', 'Calvin Klein Jeans', '花王（Merries）妙而舒婴', 4482, 5827, 368);
INSERT INTO `list` VALUES ('40', '../images/index1/xt1.png', 'Burberry', '美国进口Elta MD氨基酸洁', 234, 268, 234);
INSERT INTO `list` VALUES ('41', '../images/index1/xt2.png', 'Calvin ', 'Swisse钙加维生素D片152片', 453, 479, 456);
INSERT INTO `list` VALUES ('42', '../images/index1/xt3.png', 'Klein', '碧然德（BRITA）滤水壶滤芯', 153, 274, 763);
INSERT INTO `list` VALUES ('43', '../images/index1/xt4.png', 'Klein', 'Ferrari法拉利男士香水套装莎莎', 634, 783, 234);
INSERT INTO `list` VALUES ('44', '../images/list/t1.png', 'Calvin Klein', '男士不知道干什么的', 302, 392, 230);
INSERT INTO `list` VALUES ('45', '../images/list/t2.png', 'ewrasdf', '男士短袖纯棉T恤', 1633, 2122, 123);
INSERT INTO `list` VALUES ('46', '../images/list/t3.png', 'Calvin Klein Jeans', '男士黑白色短袖 棉 T恤', 302, 392, 213);
INSERT INTO `list` VALUES ('47', '../images/list/t4.png', 'Burberry', '男士黑白色短袖T恤', 304, 395, 333);
INSERT INTO `list` VALUES ('48', '../images/list/t5.png', 'Calvin Klein Jeans', '男士圆领休闲短袖T恤', 234, 304, 111);
INSERT INTO `list` VALUES ('49', '../images/list/t6.png', 'Calvin Klein', '男士不知道干什么的', 234, 304, 240);
INSERT INTO `list` VALUES ('50', '../images/list/t7.png', 'ewrasdf', '男士短袖纯棉T恤', 1233, 1602, 333);
INSERT INTO `list` VALUES ('51', '../images/list/t8.png', 'Calvin Klein Jeans', '男士黑白色短袖 棉 T恤', 423, 549, 384);
INSERT INTO `list` VALUES ('52', '../images/index1/t1.png', 'Calvin Klein Jeans', '碧然德（BRITA）滤水壶滤芯', 2869, 3729, 197);
INSERT INTO `list` VALUES ('53', '../images/index1/t2.png', 'Calvin Klein', 'Ferrari法拉利男士香水套装莎莎', 2884, 3749, 179);
INSERT INTO `list` VALUES ('54', '../images/index1/t3.png', 'ewrasdf', '美素佳儿（Friso）【全球】', 2899, 3769, 160);
INSERT INTO `list` VALUES ('55', '../images/index1/t4.png', 'Calvin Klein Jeans', '美国MILANI超显色滋润持久', 2914, 3789, 142);
INSERT INTO `list` VALUES ('56', '../images/index1/t5.png', 'Burberry', 'Bose Soundsport九线机', 2929, 3808, 123);
INSERT INTO `list` VALUES ('57', '../images/index1/t6.png', 'Calvin Klein Jeans', '美德乐（Medela）丝韵吸', 2945, 3828, 105);
INSERT INTO `list` VALUES ('58', '../images/index1/t7.png', 'Calvin Klein', '花王（Merries）妙而舒婴', 2960, 3848, 86);
INSERT INTO `list` VALUES ('59', '../images/index1/sp1.png', 'Calvin Klein Jeans', '小泰克（little tikes）美国', 3468, 4508, 150);
INSERT INTO `list` VALUES ('60', '../images/index1/sp2.png', 'Burberry', '兰蔻（LANCOME）小黑瓶', 3512, 4565, 143);
INSERT INTO `list` VALUES ('61', '../images/index1/sp3.png', 'Calvin Klein Jeans', 'EUGENE PERMA防脱发强', 3556, 4623, 135);
INSERT INTO `list` VALUES ('62', '../images/index1/sp4.png', 'Calvin Klein', '美国进口Elta MD氨基酸洁', 3600, 4680, 128);
INSERT INTO `list` VALUES ('63', '../images/index1/sp5.png', 'ewrasdf', 'Swisse钙加维生素D片150片', 3644, 4737, 120);
INSERT INTO `list` VALUES ('64', '../images/index1/sp6.png', 'Calvin Klein Jeans', '碧然德（BRITA）滤水壶滤芯', 3688, 4795, 113);
INSERT INTO `list` VALUES ('65', '../images/index1/sp7.png', 'Burberry', 'Ferrari法拉利男士香水套装莎莎', 3732, 4852, 105);
INSERT INTO `list` VALUES ('66', '../images/index1/sp8.png', 'Calvin Klein Jeans', '美素佳儿（Friso）【全球】', 3776, 4910, 98);
INSERT INTO `list` VALUES ('67', '../images/index1/sp9.png', 'Calvin Klein', '美国MILANI超显色滋润持久', 3821, 4967, 91);
INSERT INTO `list` VALUES ('68', '../images/index1/sp10.png', 'Calvin Klein', 'Bose Soundsport九线机', 3865, 5024, 83);
INSERT INTO `list` VALUES ('69', '../images/index1/sp11.png', 'ewrasdf', '美德乐（Medela）丝韵吸', 3909, 5082, 76);
INSERT INTO `list` VALUES ('70', '../images/index1/sp12.png', 'Calvin Klein Jeans', '花王（Merries）妙而舒婴', 3953, 5139, 68);
INSERT INTO `list` VALUES ('71', '../images/index1/sp13.png', 'Burberry', '小泰克（little tikes）美国', 3997, 5196, 61);
INSERT INTO `list` VALUES ('72', '../images/index1/sp14.png', 'Calvin Klein Jeans', '兰蔻（LANCOME）小黑瓶', 4041, 5254, 53);
INSERT INTO `list` VALUES ('73', '../images/index1/sp15.png', 'Calvin Klein', 'EUGENE PERMA防脱发强', 4085, 5311, 46);
INSERT INTO `list` VALUES ('74', '../images/index1/sp16.png', 'ewrasdf', '美国进口Elta MD氨基酸洁', 4129, 5368, 38);
INSERT INTO `list` VALUES ('75', '../images/index1/sp17.png', 'Calvin Klein Jeans', 'Swisse钙加维生素D片151片', 4174, 5426, 31);
INSERT INTO `list` VALUES ('76', '../images/index1/sp18.png', 'Burberry', '碧然德（BRITA）滤水壶滤芯', 4218, 5483, 23);
INSERT INTO `list` VALUES ('77', '../images/index1/sp19.png', 'Calvin Klein Jeans', 'Ferrari法拉利男士香水套装莎莎', 4262, 5540, 16);
INSERT INTO `list` VALUES ('78', '../images/index1/sp20.png', 'Calvin Klein', '美素佳儿（Friso）【全球】', 4306, 5598, 9);
INSERT INTO `list` VALUES ('79', '../images/index1/sp21.png', 'ewrasdf', '美国MILANI超显色滋润持久', 4350, 5655, 1);
INSERT INTO `list` VALUES ('80', '../images/index1/sp22.png', 'Calvin Klein Jeans', 'Bose Soundsport九线机', 4394, 5713, 532);
INSERT INTO `list` VALUES ('81', '../images/index1/sp23.png', 'Burberry', '美德乐（Medela）丝韵吸', 4438, 5770, 586);
INSERT INTO `list` VALUES ('82', '../images/index1/sp24.png', 'Calvin Klein Jeans', '花王（Merries）妙而舒婴', 4482, 5827, 368);
INSERT INTO `list` VALUES ('83', '../images/index1/xt1.png', 'Calvin ', '美国进口Elta MD氨基酸洁', 234, 268, 234);
INSERT INTO `list` VALUES ('84', '../images/index1/xt2.png', 'Klein', 'Swisse钙加维生素D片152片', 453, 479, 456);
INSERT INTO `list` VALUES ('85', '../images/index1/xt3.png', 'Burberry', '碧然德（BRITA）滤水壶滤芯', 153, 274, 763);
INSERT INTO `list` VALUES ('86', '../images/index1/xt4.png', 'Klein ', 'Ferrari法拉利男士香水套装莎莎', 634, 783, 234);
INSERT INTO `list` VALUES ('87', '../images/list/t1.png', 'Calvin Klein', '男士不知道干什么的', 302, 392, 230);
INSERT INTO `list` VALUES ('88', '../images/list/t2.png', 'ewrasdf', '男士短袖纯棉T恤', 1633, 2122, 123);
INSERT INTO `list` VALUES ('89', '../images/list/t3.png', 'Calvin Klein Jeans', '男士黑白色短袖 棉 T恤', 302, 392, 213);
INSERT INTO `list` VALUES ('90', '../images/list/t4.png', 'Burberry', '男士黑白色短袖T恤', 304, 395, 333);
INSERT INTO `list` VALUES ('91', '../images/list/t5.png', 'Calvin Klein Jeans', '男士圆领休闲短袖T恤', 234, 304, 111);
INSERT INTO `list` VALUES ('92', '../images/list/t6.png', 'Calvin Klein', '男士不知道干什么的', 234, 304, 240);
INSERT INTO `list` VALUES ('93', '../images/list/t7.png', 'ewrasdf', '男士短袖纯棉T恤', 1233, 1602, 333);
INSERT INTO `list` VALUES ('94', '../images/list/t8.png', 'Calvin Klein Jeans', '男士黑白色短袖 棉 T恤', 423, 549, 384);
INSERT INTO `list` VALUES ('95', '../images/index1/t1.png', 'Calvin Klein Jeans', '碧然德（BRITA）滤水壶滤芯', 2869, 3729, 197);
INSERT INTO `list` VALUES ('96', '../images/index1/t2.png', 'Calvin Klein', 'Ferrari法拉利男士香水套装莎莎', 2884, 3749, 179);
INSERT INTO `list` VALUES ('97', '../images/index1/t3.png', 'ewrasdf', '美素佳儿（Friso）【全球】', 2899, 3769, 160);
INSERT INTO `list` VALUES ('98', '../images/index1/t4.png', 'Calvin Klein Jeans', '美国MILANI超显色滋润持久', 2914, 3789, 142);
INSERT INTO `list` VALUES ('99', '../images/index1/t5.png', 'Burberry', 'Bose Soundsport九线机', 2929, 3808, 123);
INSERT INTO `list` VALUES ('100', '../images/index1/t6.png', 'Calvin Klein Jeans', '美德乐（Medela）丝韵吸', 2945, 3828, 105);
INSERT INTO `list` VALUES ('101', '../images/index1/t7.png', 'Calvin Klein', '花王（Merries）妙而舒婴', 2960, 3848, 86);
INSERT INTO `list` VALUES ('102', '../images/index1/sp1.png', 'Calvin Klein Jeans', '小泰克（little tikes）美国', 3468, 4508, 150);
INSERT INTO `list` VALUES ('103', '../images/index1/sp2.png', 'Burberry', '兰蔻（LANCOME）小黑瓶', 3512, 4565, 143);
INSERT INTO `list` VALUES ('104', '../images/index1/sp3.png', 'Calvin Klein Jeans', 'EUGENE PERMA防脱发强', 3556, 4623, 135);
INSERT INTO `list` VALUES ('105', '../images/index1/sp4.png', 'Calvin Klein', '美国进口Elta MD氨基酸洁', 3600, 4680, 128);
INSERT INTO `list` VALUES ('106', '../images/index1/sp5.png', 'ewrasdf', 'Swisse钙加维生素D片150片', 3644, 4737, 120);
INSERT INTO `list` VALUES ('107', '../images/index1/sp6.png', 'Calvin Klein Jeans', '碧然德（BRITA）滤水壶滤芯', 3688, 4795, 113);
INSERT INTO `list` VALUES ('108', '../images/index1/sp7.png', 'Burberry', 'Ferrari法拉利男士香水套装莎莎', 3732, 4852, 105);
INSERT INTO `list` VALUES ('109', '../images/index1/sp8.png', 'Calvin Klein Jeans', '美素佳儿（Friso）【全球】', 3776, 4910, 98);
INSERT INTO `list` VALUES ('110', '../images/index1/sp9.png', 'Calvin Klein', '美国MILANI超显色滋润持久', 3821, 4967, 91);
INSERT INTO `list` VALUES ('111', '../images/index1/sp10.png', 'Calvin Klein', 'Bose Soundsport九线机', 3865, 5024, 83);
INSERT INTO `list` VALUES ('112', '../images/index1/sp11.png', 'ewrasdf', '美德乐（Medela）丝韵吸', 3909, 5082, 76);
INSERT INTO `list` VALUES ('113', '../images/index1/sp12.png', 'Calvin Klein Jeans', '花王（Merries）妙而舒婴', 3953, 5139, 68);
INSERT INTO `list` VALUES ('114', '../images/index1/sp13.png', 'Burberry', '小泰克（little tikes）美国', 3997, 5196, 61);
INSERT INTO `list` VALUES ('115', '../images/index1/sp14.png', 'Calvin Klein Jeans', '兰蔻（LANCOME）小黑瓶', 4041, 5254, 53);
INSERT INTO `list` VALUES ('116', '../images/index1/sp15.png', 'Calvin Klein', 'EUGENE PERMA防脱发强', 4085, 5311, 46);
INSERT INTO `list` VALUES ('117', '../images/index1/sp16.png', 'ewrasdf', '美国进口Elta MD氨基酸洁', 4129, 5368, 38);
INSERT INTO `list` VALUES ('118', '../images/index1/sp17.png', 'Calvin Klein Jeans', 'Swisse钙加维生素D片151片', 4174, 5426, 31);
INSERT INTO `list` VALUES ('119', '../images/index1/sp18.png', 'Burberry', '碧然德（BRITA）滤水壶滤芯', 4218, 5483, 23);
INSERT INTO `list` VALUES ('120', '../images/index1/sp19.png', 'Calvin Klein Jeans', 'Ferrari法拉利男士香水套装莎莎', 4262, 5540, 16);
INSERT INTO `list` VALUES ('121', '../images/index1/sp20.png', 'Calvin Klein', '美素佳儿（Friso）【全球】', 4306, 5598, 9);
INSERT INTO `list` VALUES ('122', '../images/index1/sp21.png', 'ewrasdf', '美国MILANI超显色滋润持久', 4350, 5655, 1);
INSERT INTO `list` VALUES ('123', '../images/index1/sp22.png', 'Calvin Klein Jeans', 'Bose Soundsport九线机', 4394, 5713, 532);
INSERT INTO `list` VALUES ('124', '../images/index1/sp23.png', 'Burberry', '美德乐（Medela）丝韵吸', 4438, 5770, 586);
INSERT INTO `list` VALUES ('125', '../images/index1/sp24.png', 'Calvin Klein Jeans', '花王（Merries）妙而舒婴', 4482, 5827, 368);
INSERT INTO `list` VALUES ('126', '../images/index1/xt1.png', 'Burberry', '美国进口Elta MD氨基酸洁', 234, 268, 234);
INSERT INTO `list` VALUES ('127', '../images/index1/xt2.png', 'Klein ', 'Swisse钙加维生素D片152片', 453, 479, 456);
INSERT INTO `list` VALUES ('128', '../images/index1/xt3.png', 'Burberry', '碧然德（BRITA）滤水壶滤芯', 153, 274, 763);
INSERT INTO `list` VALUES ('129', '../images/index1/xt4.png', 'Jeans', 'Ferrari法拉利男士香水套装莎莎', 634, 783, 234);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `uname` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pwd` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 62 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (2, '12', '12');
INSERT INTO `user` VALUES (5, '123', '1111');
INSERT INTO `user` VALUES (27, '1231', '1231');
INSERT INTO `user` VALUES (26, '12333', '111');
INSERT INTO `user` VALUES (17, '1233', '123');
INSERT INTO `user` VALUES (28, 'qwe', 'qwe');
INSERT INTO `user` VALUES (29, '1111', '111');
INSERT INTO `user` VALUES (30, '1qwe', '111');
INSERT INTO `user` VALUES (31, 'q123', '111');
INSERT INTO `user` VALUES (32, 'qwer', '231231');
INSERT INTO `user` VALUES (33, 'qweqwe', '11123');
INSERT INTO `user` VALUES (34, 'qwe12', '11');
INSERT INTO `user` VALUES (48, '11112121', '11112121');
INSERT INTO `user` VALUES (47, '121121', '1111');
INSERT INTO `user` VALUES (61, '123123123', '11');
INSERT INTO `user` VALUES (59, '1234', '12');
INSERT INTO `user` VALUES (60, '12345', '111');

SET FOREIGN_KEY_CHECKS = 1;
