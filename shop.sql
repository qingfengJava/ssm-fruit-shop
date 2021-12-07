/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : shop

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 07/12/2021 14:11:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `item_id` int(0) NULL DEFAULT NULL,
  `user_id` int(0) NULL DEFAULT NULL,
  `num` int(0) NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of car
-- ----------------------------

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `user_id` int(0) NULL DEFAULT NULL,
  `item_id` int(0) NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `addTime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (7, 3, 35, '真的很不错', '2018-03-20 19:23:03');
INSERT INTO `comment` VALUES (8, 3, 28, '真好吃', '2018-03-20 19:32:31');
INSERT INTO `comment` VALUES (9, 9, 36, '非常不错的水果，值得购买，下来一定再来购买！！', '2021-06-30 22:46:12');
INSERT INTO `comment` VALUES (10, 9, 31, '非常不错', '2021-06-30 23:19:49');
INSERT INTO `comment` VALUES (11, 9, 28, '不错', '2021-06-30 23:37:36');
INSERT INTO `comment` VALUES (12, 9, 36, '真不错，已经第二次购买了！！！', '2021-06-30 23:53:27');

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `scNum` int(0) NULL DEFAULT NULL COMMENT '收藏数',
  `gmNum` int(0) NULL DEFAULT NULL COMMENT '购买数',
  `url1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url4` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url5` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ms` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `pam1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数1',
  `pam2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数2',
  `pam3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数3',
  `val3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '值3',
  `val2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '值2',
  `val1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '值1',
  `type` int(0) NULL DEFAULT NULL,
  `zk` int(0) NULL DEFAULT NULL COMMENT '折扣',
  `category_id_one` int(0) NULL DEFAULT NULL COMMENT '类别id',
  `category_id_two` int(0) NULL DEFAULT NULL COMMENT '类别2级',
  `isDelete` int(0) NULL DEFAULT NULL COMMENT '0否 1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES (27, '山西运城新鲜水果苹果红富士', '54.9', 3, 8, '\\resource\\ueditor\\upload\\9f0296902c2111e865b6dc2da7582a7aTB19p5HeKuSBuNjSsziXXbq8pXa_!!0-item_pic.jpg_430x430q90.jpg', '\\resource\\ueditor\\upload\\9f030bc02c2111e865b6dc2da7582a7aTB19p5HeKuSBuNjSsziXXbq8pXa_!!0-item_pic.jpg_430x430q90.jpg', '\\resource\\ueditor\\upload\\9f05cae02c2111e865b6dc2da7582a7aTB2GaJWaYArBKNjSZFLXXc_dVXa_!!3320501499.jpg_430x430q90.jpg', '\\resource\\ueditor\\upload\\9f0667202c2111e865b6dc2da7582a7aTB2faFrcFGWBuNjy0FbXXb4sXXa_!!3320501499.jpg_430x430q90.jpg', '\\resource\\ueditor\\upload\\9f06dc502c2111e865b6dc2da7582a7aTB2GaJWaYArBKNjSZFLXXc_dVXa_!!3320501499.jpg_430x430q90.jpg', '<p><img src=\"/resource/ueditor/upload/3ca705602c1e11e865b6dc2da7582a7a1.jpg\" title=\"\" alt=\"1.jpg\"/></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 75, 76, 0);
INSERT INTO `item` VALUES (28, '黄河古道安徽砀山红富士 丑苹果 不打蜡，无农药', '66.5', 2, 8, '\\resource\\ueditor\\upload\\ba329bc02c1e11e865b6dc2da7582a7a811f5031-87ab-4a55-bfd2-3e29a5eb0ad7.jpg', '\\resource\\ueditor\\upload\\ba3310f02c1e11e865b6dc2da7582a7a6431e0f4-1f60-465b-906e-25ea52bd076b.jpg', '\\resource\\ueditor\\upload\\ba3386202c1e11e865b6dc2da7582a7ae13bedb5-c6c1-47f2-8588-5735397f0dea (1).jpg', '\\resource\\ueditor\\upload\\ba33d4402c1e11e865b6dc2da7582a7ae13bedb5-c6c1-47f2-8588-5735397f0dea.jpg', '\\resource\\ueditor\\upload\\ba3449702c1e11e865b6dc2da7582a7ae37c45cf-fcea-4cb1-8b4e-c7ead141c76d.jpg', '<p><img src=\"/resource/ueditor/upload/ad2368602c1e11e865b6dc2da7582a7a4.png\" title=\"\" alt=\"4.png\"/></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 75, 76, 0);
INSERT INTO `item` VALUES (29, '2017山东新鲜红富士苹果', '49.9', 0, 3, '\\resource\\ueditor\\upload\\2cb2e5102c1f11e865b6dc2da7582a7a5f5bfef1-1183-4c8a-80f5-23a8251422eb.jpg', '\\resource\\ueditor\\upload\\2cb333302c1f11e865b6dc2da7582a7a49e3c13e-5e8c-4c4a-8382-0721d61ae630.jpg', '\\resource\\ueditor\\upload\\2cb3a8602c1f11e865b6dc2da7582a7adbbbca07-7c2d-4ecb-a1e3-097620517400.jpg', '\\resource\\ueditor\\upload\\2cb41d902c1f11e865b6dc2da7582a7ae798f106-7f85-43f8-82d0-7a1918bd5876.jpg', '\\resource\\ueditor\\upload\\2cb46bb02c1f11e865b6dc2da7582a7adbbbca07-7c2d-4ecb-a1e3-097620517400.jpg', '<p><img src=\"/resource/ueditor/upload/2bb683b02c1f11e865b6dc2da7582a7a2.jpg\" title=\"\" alt=\"2.jpg\"/></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 75, 76, 0);
INSERT INTO `item` VALUES (30, '陕西新鲜石榴现摘时令水果贵妃大石榴农家特产薄皮酸石榴', '85', 0, 4, '\\resource\\ueditor\\upload\\d9a752b02c1f11e865b6dc2da7582a7aTB1pC88XOCYBuNkSnaVXXcMsVXa_!!0-item_pic.jpg_430x430q90.jpg', '\\resource\\ueditor\\upload\\d9a7eef02c1f11e865b6dc2da7582a7aTB2dP17arGYBuNjy0FoXXciBFXa_!!2455418594.jpg_430x430q90.jpg', '\\resource\\ueditor\\upload\\d9a864202c1f11e865b6dc2da7582a7aTB2TmdedPgy_uJjSZLeXXaPlFXa_!!2455418594.jpg_430x430q90.jpg', '\\resource\\ueditor\\upload\\d9a8b2402c1f11e865b6dc2da7582a7aTB2dP17arGYBuNjy0FoXXciBFXa_!!2455418594.jpg_430x430q90.jpg', '\\resource\\ueditor\\upload\\d9aad5202c1f11e865b6dc2da7582a7aTB2TmdedPgy_uJjSZLeXXaPlFXa_!!2455418594.jpg_430x430q90.jpg', '<p><img src=\"/resource/ueditor/upload/d89212202c1f11e865b6dc2da7582a7aTB2TmdedPgy_uJjSZLeXXaPlFXa_!!2455418594.jpg_430x430q90.jpg\" title=\"\"/></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 71, 72, 0);
INSERT INTO `item` VALUES (31, '【现货】蒙自甜石榴云南特产薄皮 新鲜水果9个装 单果4.5两左右', '36', 0, 4, '\\resource\\ueditor\\upload\\23dc83f02c2011e865b6dc2da7582a7aTB2A3FzXRLzQeBjSZFoXXc5gFXa_!!2455185564.jpg_430x430q90.jpg', '\\resource\\ueditor\\upload\\23dcf9202c2011e865b6dc2da7582a7aTB2iwNJX8PzQeBjSZPiXXb0TpXa_!!2455185564.jpg_430x430q90.jpg', '\\resource\\ueditor\\upload\\23dd95602c2011e865b6dc2da7582a7aTB2MpRlaqnyQeBjSsplXXaLWVXa_!!2455185564.jpg_430x430q90.jpg', '\\resource\\ueditor\\upload\\23de0a902c2011e865b6dc2da7582a7aTB11gurg63z9KJjy0FmXXXiwXXa_!!0-item_pic.jpg_430x430q90.jpg', '\\resource\\ueditor\\upload\\23de7fc02c2011e865b6dc2da7582a7aTB2MpRlaqnyQeBjSsplXXaLWVXa_!!2455185564.jpg_430x430q90.jpg', '<p>品牌名称：<span class=\"J_EbrandLogo\" style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51);\">绿养道</span></p><p class=\"attr-list-hd tm-clear\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 20px; line-height: 22px; color: rgb(153, 153, 153); font-family: tahoma, arial, 微软雅黑, sans-serif; font-size: 12px; font-variant-numeric: normal; font-variant-east-asian: normal; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-weight: 700; float: left;\">产品参数：</span></p><ul style=\"list-style-type: none;\" class=\" list-paddingleft-2\"><li><p>厂名：绿养道农产品产销合作社</p></li><li><p>厂址：云南蒙自攀枝村花石榴园</p></li><li><p>厂家联系方式：13521676858</p></li><li><p>保质期：60 天</p></li><li><p>净含量:&nbsp;1900g</p></li><li><p>包装方式:&nbsp;包装</p></li><li><p>品牌:&nbsp;绿养道</p></li><li><p>售卖方式:&nbsp;单品</p></li><li><p>生鲜储存温度:&nbsp;8-15℃</p></li><li><p>热卖时间:&nbsp;1月&nbsp;2月&nbsp;8月&nbsp;9月&nbsp;10月&nbsp;11月&nbsp;12月</p></li><li><p>产地:&nbsp;中国大陆</p></li><li><p>省份:&nbsp;云南省</p></li><li><p>城市:&nbsp;红河哈尼族彝族自治州</p></li><li><p>特产品类:&nbsp;蒙自石榴</p></li><li><p>净含量:&nbsp;2.5kg(含）-5kg(不含)</p></li><li><p>价格:&nbsp;51-100元</p></li></ul><p><br/></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 71, 72, 0);
INSERT INTO `item` VALUES (32, '现货突尼斯软籽石榴2个超大果软子甜酸石榴新鲜水果非蒙自石榴', '99', 0, 10, '\\resource\\ueditor\\upload\\92cc7a902c2011e865b6dc2da7582a7aTB1a7xUdUR1BeNjy0FmXXb0wVXa_!!0-item_pic.jpg_430x430q90.jpg', '\\resource\\ueditor\\upload\\92ccefc02c2011e865b6dc2da7582a7aTB2GV6ld7fb_uJjSsD4XXaqiFXa_!!3206065077.jpg_430x430q90.jpg', '\\resource\\ueditor\\upload\\92cd8c002c2011e865b6dc2da7582a7aTB2J81_nf2H8KJjy0FcXXaDlFXa_!!3206065077.jpg_430x430q90.jpg', '\\resource\\ueditor\\upload\\92ce01302c2011e865b6dc2da7582a7aTB2oM1InmYH8KJjSspdXXcRgVXa_!!3206065077.jpg_430x430q90.jpg', '\\resource\\ueditor\\upload\\92ce76602c2011e865b6dc2da7582a7aTB29bjrngLD8KJjSszeXXaGRpXa_!!3206065077.jpg_430x430q90.jpg', '<p><img src=\"/resource/ueditor/upload/8fd310b02c2011e865b6dc2da7582a7a77.jpg\" title=\"\" alt=\"77.jpg\"/></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 71, 72, 0);
INSERT INTO `item` VALUES (33, '荥阳突尼斯陈氏河阴软籽石榴软子新鲜水果非会理蒙自临潼甜新鲜', '80', 1, 0, '\\resource\\ueditor\\upload\\dcb3b2e02c2011e865b6dc2da7582a7aTB2VP8VmjuhSKJjSspaXXXFgFXa_!!3363047546.jpg_430x430q90.jpg', '\\resource\\ueditor\\upload\\dcb6e7302c2011e865b6dc2da7582a7aTB2VP8VmjuhSKJjSspaXXXFgFXa_!!3363047546.jpg_430x430q90.jpg', '\\resource\\ueditor\\upload\\dcb75c602c2011e865b6dc2da7582a7aTB2VP8VmjuhSKJjSspaXXXFgFXa_!!3363047546.jpg_430x430q90.jpg', '\\resource\\ueditor\\upload\\dcb7d1902c2011e865b6dc2da7582a7aTB2VP8VmjuhSKJjSspaXXXFgFXa_!!3363047546.jpg_430x430q90.jpg', '\\resource\\ueditor\\upload\\dcb86dd02c2011e865b6dc2da7582a7aTB2VP8VmjuhSKJjSspaXXXFgFXa_!!3363047546.jpg_430x430q90.jpg', '<p><img src=\"/resource/ueditor/upload/dbbc33802c2011e865b6dc2da7582a7aTB2VP8VmjuhSKJjSspaXXXFgFXa_!!3363047546.jpg_430x430q90.jpg\" title=\"\" alt=\"TB2VP8VmjuhSKJjSspaXXXFgFXa_!!3363047546.jpg_430x430q90.jpg\"/></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 71, 72, 0);
INSERT INTO `item` VALUES (34, '正宗陕西红心石榴水果新鲜', '85', 0, 4, '\\resource\\ueditor\\upload\\012eb0202c2111e865b6dc2da7582a7aTB23TvclwoQMeJjy1XaXXcSsFXa_!!3296167834.jpg_430x430q90.jpg', '\\resource\\ueditor\\upload\\012f25502c2111e865b6dc2da7582a7aTB2VP8VmjuhSKJjSspaXXXFgFXa_!!3363047546.jpg_430x430q90.jpg', '\\resource\\ueditor\\upload\\012fc1902c2111e865b6dc2da7582a7aTB23TvclwoQMeJjy1XaXXcSsFXa_!!3296167834.jpg_430x430q90.jpg', '\\resource\\ueditor\\upload\\013036c02c2111e865b6dc2da7582a7aTB2VP8VmjuhSKJjSspaXXXFgFXa_!!3363047546.jpg_430x430q90.jpg', '\\resource\\ueditor\\upload\\0130abf02c2111e865b6dc2da7582a7aTB23TvclwoQMeJjy1XaXXcSsFXa_!!3296167834.jpg_430x430q90.jpg', '<p><img src=\"/resource/ueditor/upload/004f73b02c2111e865b6dc2da7582a7aTB23TvclwoQMeJjy1XaXXcSsFXa_!!3296167834.jpg_430x430q90.jpg\" title=\"\" alt=\"TB23TvclwoQMeJjy1XaXXcSsFXa_!!3296167834.jpg_430x430q90.jpg\"/></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 71, 72, 0);
INSERT INTO `item` VALUES (35, '新鲜油桃5斤 新鲜孕妇水果非水蜜桃黄桃毛桃子樱桃当季时令鲜果', '25', 0, 9, '\\resource\\ueditor\\upload\\4152abc02c2111e865b6dc2da7582a7aTB1sRNzXSMmBKNjSZTEXXasKpXa_!!0-item_pic.jpg_430x430q90.jpg', '\\resource\\ueditor\\upload\\41536f102c2111e865b6dc2da7582a7aTB2d_RhaKuSBuNjy1XcXXcYjFXa_!!2102024380.jpg_430x430q90.jpg', '\\resource\\ueditor\\upload\\41540b502c2111e865b6dc2da7582a7aTB1sRNzXSMmBKNjSZTEXXasKpXa_!!0-item_pic.jpg_430x430q90.jpg', '\\resource\\ueditor\\upload\\415459702c2111e865b6dc2da7582a7aTB2d_RhaKuSBuNjy1XcXXcYjFXa_!!2102024380.jpg_430x430q90.jpg', '\\resource\\ueditor\\upload\\4154cea02c2111e865b6dc2da7582a7aTB1sRNzXSMmBKNjSZTEXXasKpXa_!!0-item_pic.jpg_430x430q90.jpg', '<p><img src=\"/resource/ueditor/upload/407173802c2111e865b6dc2da7582a7aTB2d_RhaKuSBuNjy1XcXXcYjFXa_!!2102024380.jpg_430x430q90.jpg\" title=\"\" alt=\"TB2d_RhaKuSBuNjy1XcXXcYjFXa_!!2102024380.jpg_430x430q90.jpg\"/></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 73, 74, 0);
INSERT INTO `item` VALUES (36, '现摘3斤 桃子水蜜桃 新鲜水果包邮脆桃硬桃现货新摘桃子非油桃黄', '120', 3, 4, '\\resource\\ueditor\\upload\\88b583202c2111e865b6dc2da7582a7aTB2faFrcFGWBuNjy0FbXXb4sXXa_!!3320501499.jpg_430x430q90.jpg', '\\resource\\ueditor\\upload\\88b5f8502c2111e865b6dc2da7582a7aTB2GaJWaYArBKNjSZFLXXc_dVXa_!!3320501499.jpg_430x430q90.jpg', '\\resource\\ueditor\\upload\\88b66d802c2111e865b6dc2da7582a7aTB19p5HeKuSBuNjSsziXXbq8pXa_!!0-item_pic.jpg_430x430q90.jpg', '\\resource\\ueditor\\upload\\88b6e2b02c2111e865b6dc2da7582a7aTB2GaJWaYArBKNjSZFLXXc_dVXa_!!3320501499.jpg_430x430q90.jpg', '\\resource\\ueditor\\upload\\88b77ef02c2111e865b6dc2da7582a7aTB19p5HeKuSBuNjSsziXXbq8pXa_!!0-item_pic.jpg_430x430q90.jpg', '<p><img src=\"/resource/ueditor/upload/87d387902c2111e865b6dc2da7582a7aTB2GaJWaYArBKNjSZFLXXc_dVXa_!!3320501499.jpg_430x430q90.jpg\" title=\"\" alt=\"TB2GaJWaYArBKNjSZFLXXc_dVXa_!!3320501499.jpg_430x430q90.jpg\"/></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 73, 74, 0);
INSERT INTO `item` VALUES (43, '西瓜', '5', 0, 0, '\\resource\\ueditor\\upload\\c5c4d180d4ed11eb744b2bde7d36196f0f9630a0112611e708338a24b60f48913.jpg', '\\resource\\ueditor\\upload\\c5c56dc0d4ed11eb744b2bde7d36196f', '\\resource\\ueditor\\upload\\c5c56dc1d4ed11eb744b2bde7d36196f', '\\resource\\ueditor\\upload\\c5c56dc2d4ed11eb744b2bde7d36196f', '\\resource\\ueditor\\upload\\c5c594d0d4ed11eb744b2bde7d36196f', '<p><img src=\"/test1_war_exploded/resource/ueditor/upload/c4582220d4ed11eb744b2bde7d36196f2e96c940219f11e731d35b82a5c226b2058f02414N5a2e91a2.jpg\" title=\"\" alt=\"2e96c940219f11e731d35b82a5c226b2058f02414N5a2e91a2.jpg\"/></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 84, 92, 1);

-- ----------------------------
-- Table structure for item_category
-- ----------------------------
DROP TABLE IF EXISTS `item_category`;
CREATE TABLE `item_category`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pid` int(0) NULL DEFAULT NULL,
  `isDelete` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 97 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_category
-- ----------------------------
INSERT INTO `item_category` VALUES (50, ' 桃子', 44, 0);
INSERT INTO `item_category` VALUES (69, '梨子', 0, 0);
INSERT INTO `item_category` VALUES (70, '湾里酥梨', 69, 0);
INSERT INTO `item_category` VALUES (71, '石榴', NULL, 0);
INSERT INTO `item_category` VALUES (72, '肖山御石榴', 71, 0);
INSERT INTO `item_category` VALUES (73, '桃子', NULL, 0);
INSERT INTO `item_category` VALUES (74, '史德镇御桃', 73, 0);
INSERT INTO `item_category` VALUES (75, '苹果', NULL, 0);
INSERT INTO `item_category` VALUES (76, '日本红富士', 75, 0);
INSERT INTO `item_category` VALUES (77, '秦冠', 75, 0);
INSERT INTO `item_category` VALUES (79, '黄元帅', 75, 0);
INSERT INTO `item_category` VALUES (84, '西瓜', NULL, 0);
INSERT INTO `item_category` VALUES (85, '芒果', NULL, 0);
INSERT INTO `item_category` VALUES (86, '香蕉', 15, 0);
INSERT INTO `item_category` VALUES (87, '中国香蕉', 86, 1);
INSERT INTO `item_category` VALUES (88, '外国香蕉', 86, 1);
INSERT INTO `item_category` VALUES (90, '海南香蕉', 86, 1);
INSERT INTO `item_category` VALUES (91, '冰糖西瓜', 84, 1);
INSERT INTO `item_category` VALUES (92, '宁夏西瓜', 84, 0);
INSERT INTO `item_category` VALUES (93, '冰糖西瓜', 84, 0);
INSERT INTO `item_category` VALUES (94, '香蕉', NULL, 0);
INSERT INTO `item_category` VALUES (95, '薄皮香蕉', 94, 0);
INSERT INTO `item_category` VALUES (96, '海南香蕉', 94, 0);
INSERT INTO `item_category` VALUES (97, '中国香蕉', 94, 0);

-- ----------------------------
-- Table structure for item_order
-- ----------------------------
DROP TABLE IF EXISTS `item_order`;
CREATE TABLE `item_order`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `item_id` int(0) NULL DEFAULT NULL,
  `user_id` int(0) NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `addTime` datetime(0) NULL DEFAULT NULL,
  `total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `isDelete` int(0) NULL DEFAULT NULL,
  `status` int(0) NULL DEFAULT NULL COMMENT '0.新建代发货1.已取消 2已发货3.已收货4已评价',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_order
-- ----------------------------
INSERT INTO `item_order` VALUES (27, NULL, 9, '2018032017080001', '2018-03-20 17:08:56', '54.9', 0, 3);
INSERT INTO `item_order` VALUES (28, NULL, 9, '2018032017380001', '2018-03-20 17:38:52', '653.59', 0, 2);
INSERT INTO `item_order` VALUES (29, NULL, 9, '2018032017390001', '2018-03-20 17:39:28', '976.5', 0, 3);
INSERT INTO `item_order` VALUES (30, NULL, 9, '2018032019220001', '2018-03-20 19:22:25', '364.5', 0, 3);
INSERT INTO `item_order` VALUES (31, NULL, 9, '2018032019310001', '2018-03-20 19:31:23', '359.15999999999997', 0, 1);
INSERT INTO `item_order` VALUES (32, NULL, 9, '2018032019310002', '2018-03-20 19:31:50', '59.86', 0, 3);
INSERT INTO `item_order` VALUES (33, NULL, 9, '2021063010580001', '2021-06-30 10:58:11', '99.0', 0, 2);
INSERT INTO `item_order` VALUES (34, NULL, 9, '2021063010580001', '2021-06-30 10:58:24', '49.41', 0, 3);
INSERT INTO `item_order` VALUES (35, NULL, 9, '2021063011100001', '2021-06-30 11:10:04', '150.21', 0, 3);
INSERT INTO `item_order` VALUES (36, NULL, 9, '2021063011130001', '2021-06-30 11:13:31', '218.60999999999999', 0, 1);
INSERT INTO `item_order` VALUES (37, NULL, 9, '2021063020390001', '2021-06-30 20:39:20', '60.00', 0, 3);

-- ----------------------------
-- Table structure for manage
-- ----------------------------
DROP TABLE IF EXISTS `manage`;
CREATE TABLE `manage`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `passWord` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `realName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of manage
-- ----------------------------
INSERT INTO `manage` VALUES (1, 'admin', '111111', '管理员');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES (2, '1', '1', '                    \n             1       ');
INSERT INTO `message` VALUES (4, '杀阡陌', '1234567890', '这个系统很棒！！');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `addTime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (3, '测试公告', '<p><img src=\"/ueditor/8fcd79b049e011e8f60304f21e6bcd90d613e0adcb8ef424fed66f6deea08d99.jpg\" title=\"\" alt=\"d613e0adcb8ef424fed66f6deea08d99.jpg\"/></p>', '2018-04-27 14:02:28');
INSERT INTO `news` VALUES (4, '测试公告2', '<p><img src=\"/ueditor/a83fde2049e011e8f298b03797777b7bd613e0adcb8ef424fed66f6deea08d99.jpg\" title=\"\" alt=\"d613e0adcb8ef424fed66f6deea08d99.jpg\"/></p>', '2018-04-27 14:03:09');
INSERT INTO `news` VALUES (5, '测试公告3', '<p style=\"margin: 10px auto; padding: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Verdana, Arial, sans-serif; font-size: 14px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 23.8px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\">原来是我们自使用类似于Ant来获取类的时候是不能象UserLibaray来使用的,因为我们建立的是一个web app,而web app使用的是自定义的ClassLoader,而非JVM中的存在的三种ClassLoader(如上面所说),因此它无法识别出我们写在xml文件中的第三方类库的class文件,而只有我们写在src目录下的java文件才能使用,因此,我们必须要把第三方的类库放入到lib目录下,web app 才会识别我们定义在xml中的类了 &nbsp;.</p><p style=\"margin: 10px auto; padding: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Verdana, Arial, sans-serif; font-size: 14px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 23.8px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp; 通这个错误,也让我对classloader的认识也进了一步.虽然以前看过周志明的深入JVM一书中关于类加载器分派体系的介绍,但是不太理解,这样一来,自己也多了一些体会.</p><p><br/></p>', '2018-04-27 14:03:32');
INSERT INTO `news` VALUES (6, '习近平总书记湖北之行第三天', '<p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 36px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\">修改新华网北京4月26日电 在24至25日沿长江考察调研后，26日下午，习近平总书记在武汉主持召开了深入推动长江经济带发展座谈会，为长江经济带发展进一步指引方向，作出部署。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 36px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\">　　26日上午，习近平前往武汉市的科技企业和居民社区调研，聚焦自主创新、棚户区改造和社区党组织建设。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 36px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\">　　这是习近平总书记第二次召开长江经济发展专题座谈会，特意安排在了位于长江中游的湖北。上一次座谈会是2016年1月，在位于长江上游的重庆召开的。“共抓大保护、不搞大开发”的重大战略思想，就是在那次座谈会上提出的。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 36px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\">　　在今天的座谈会上，习近平总书记明确提出了推动长江经济带发展需要正确把握的5个关系：</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 36px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\">　　◆整体推进和重点突破的关系；</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 36px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\">　　◆生态环境保护和经济发展的关系；</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 36px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\">　　◆总体谋划和久久为功的关系；</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 36px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\">　　◆破除旧动能和培育新动能的关系；</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 36px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\">　　◆自身发展和协同发展的关系。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 36px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\">　　习近平强调，加强改革创新、战略统筹、规划引导，以长江经济带发展推动经济高质量发展。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 36px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\">　　自主创新，是习近平在武汉调研的一个重点课题。</p><p><br/></p>', '2018-04-27 14:25:46');

-- ----------------------------
-- Table structure for order_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `item_id` int(0) NULL DEFAULT NULL,
  `order_id` int(0) NULL DEFAULT NULL,
  `status` int(0) NULL DEFAULT NULL COMMENT '0.未退货 1已退货',
  `num` int(0) NULL DEFAULT NULL,
  `total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 75 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_detail
-- ----------------------------
INSERT INTO `order_detail` VALUES (54, 27, 27, 0, 1, '1');
INSERT INTO `order_detail` VALUES (55, 32, 28, 0, 5, '25');
INSERT INTO `order_detail` VALUES (56, 27, 28, 0, 3, '9');
INSERT INTO `order_detail` VALUES (57, 28, 28, 0, 1, '1');
INSERT INTO `order_detail` VALUES (58, 35, 29, 0, 2, '4');
INSERT INTO `order_detail` VALUES (59, 34, 29, 0, 4, '16');
INSERT INTO `order_detail` VALUES (60, 32, 29, 0, 3, '9');
INSERT INTO `order_detail` VALUES (61, 36, 29, 0, 3, '9');
INSERT INTO `order_detail` VALUES (62, 32, 29, 0, 2, '4');
INSERT INTO `order_detail` VALUES (63, 35, 30, 0, 6, '36');
INSERT INTO `order_detail` VALUES (64, 30, 30, 0, 3, '9');
INSERT INTO `order_detail` VALUES (65, 28, 31, 0, 4, '16');
INSERT INTO `order_detail` VALUES (66, 28, 31, 0, 2, '4');
INSERT INTO `order_detail` VALUES (67, 28, 32, 0, 1, '1');
INSERT INTO `order_detail` VALUES (68, 35, 33, 0, 1, '22.5');
INSERT INTO `order_detail` VALUES (69, 30, 33, 0, 1, '76.5');
INSERT INTO `order_detail` VALUES (70, 27, 34, 0, 1, '49.41');
INSERT INTO `order_detail` VALUES (71, 31, 35, 0, 4, '100.8');
INSERT INTO `order_detail` VALUES (72, 27, 35, 0, 1, '49.41');
INSERT INTO `order_detail` VALUES (73, 29, 36, 0, 3, '119.78999999999999');
INSERT INTO `order_detail` VALUES (74, 27, 36, 0, 2, '98.82');
INSERT INTO `order_detail` VALUES (75, 36, 37, 0, 1, '60.0');

-- ----------------------------
-- Table structure for sc
-- ----------------------------
DROP TABLE IF EXISTS `sc`;
CREATE TABLE `sc`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `item_id` int(0) NULL DEFAULT NULL,
  `user_id` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc
-- ----------------------------
INSERT INTO `sc` VALUES (19, 36, 9);
INSERT INTO `sc` VALUES (22, 27, 9);
INSERT INTO `sc` VALUES (23, 28, 9);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `passWord` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `realName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '1', '2', '3', '4', '1', '3', '22');
INSERT INTO `user` VALUES (2, 'dd', 'dd', 'dd', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (3, 'zs', '111111', '12345678933', '测试33', '女', '这里是', '1133');
INSERT INTO `user` VALUES (6, 'huang1', '123456', '18888888', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (7, 'huang1', '123456', '18888888', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (8, '1111112', '11', '11', NULL, NULL, NULL, '111@qq.com');
INSERT INTO `user` VALUES (9, 'Java攻城狮', '123456aa', '123456789', '程序猿', '男', '攀枝花市东区机场路10号', 'java@qq.com');

SET FOREIGN_KEY_CHECKS = 1;
