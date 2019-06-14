/*
Navicat MySQL Data Transfer

Source Server         : 132.232.22.210
Source Server Version : 50726
Source Host           : 132.232.22.210:3306
Source Database       : im

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2019-06-14 09:43:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for im_chat_record
-- ----------------------------
DROP TABLE IF EXISTS `im_chat_record`;
CREATE TABLE `im_chat_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `friend_id` int(11) NOT NULL DEFAULT '0' COMMENT '是群聊消息记录的话 此id为0',
  `group_id` int(11) NOT NULL DEFAULT '0' COMMENT '如果不为0说明是群聊',
  `content` varchar(1000) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COMMENT='聊天记录';

-- ----------------------------
-- Records of im_chat_record
-- ----------------------------
INSERT INTO `im_chat_record` VALUES ('3', '10006', '0', '10008', '23', '1547087461');
INSERT INTO `im_chat_record` VALUES ('34', '10008', '10005', '0', '4', '1547092511');
INSERT INTO `im_chat_record` VALUES ('48', '10005', '10008', '0', 'img[uploads/im/20190610/5cfdfad476585.png]', '1560148692');
INSERT INTO `im_chat_record` VALUES ('49', '10005', '10008', '0', 'file(uploads/file/20190610/5cfdfb136cf8f.txt)[下载文件]', '1560148755');
INSERT INTO `im_chat_record` VALUES ('50', '10005', '10008', '0', 'img[uploads/im/20190610/5cfdfb2ca3701.png]', '1560148780');
INSERT INTO `im_chat_record` VALUES ('51', '10005', '10008', '0', 'video[https://vdse.bdstatic.com//71bf3520f82615faab7130c799c50e8b?authorization=bce-auth-v1%2Ffb297a5cc0fb434c971b8fa103e8dd7b%2F2017-05-11T09%3A02%3A31Z%2F-1%2F%2F77b1adf2fe9befa82a7610dd6c84436e36e380330914f2602927010eb2a62f31]', '1560148884');
INSERT INTO `im_chat_record` VALUES ('53', '10009', '10005', '0', '牛逼，兄弟', '1560438476');
INSERT INTO `im_chat_record` VALUES ('54', '10005', '10009', '0', '大哥，你见怪了', '1560438488');

-- ----------------------------
-- Table structure for im_friend
-- ----------------------------
DROP TABLE IF EXISTS `im_friend`;
CREATE TABLE `im_friend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `friend_id` int(11) NOT NULL,
  `friend_group_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '好友删除 0：正常 1：已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COMMENT='好友表';

-- ----------------------------
-- Records of im_friend
-- ----------------------------
INSERT INTO `im_friend` VALUES ('68', '10005', '10008', '4', '0');
INSERT INTO `im_friend` VALUES ('69', '10008', '10005', '7', '0');
INSERT INTO `im_friend` VALUES ('70', '10006', '10005', '5', '0');
INSERT INTO `im_friend` VALUES ('71', '10005', '10006', '4', '0');
INSERT INTO `im_friend` VALUES ('72', '10005', '10009', '4', '0');
INSERT INTO `im_friend` VALUES ('73', '10009', '10005', '8', '0');

-- ----------------------------
-- Table structure for im_friend_group
-- ----------------------------
DROP TABLE IF EXISTS `im_friend_group`;
CREATE TABLE `im_friend_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `groupname` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of im_friend_group
-- ----------------------------
INSERT INTO `im_friend_group` VALUES ('4', '10005', '默认分组');
INSERT INTO `im_friend_group` VALUES ('5', '10006', '默认分组');
INSERT INTO `im_friend_group` VALUES ('6', '10007', '默认分组');
INSERT INTO `im_friend_group` VALUES ('7', '10008', '默认分组');
INSERT INTO `im_friend_group` VALUES ('8', '10009', '默认分组');
INSERT INTO `im_friend_group` VALUES ('9', '10010', '默认分组');
INSERT INTO `im_friend_group` VALUES ('10', '10011', '默认分组');
INSERT INTO `im_friend_group` VALUES ('11', '10012', '默认分组');
INSERT INTO `im_friend_group` VALUES ('42', '10005', '我的家人');
INSERT INTO `im_friend_group` VALUES ('44', '10005', '我的好友');
INSERT INTO `im_friend_group` VALUES ('45', '10013', '默认分组');

-- ----------------------------
-- Table structure for im_group
-- ----------------------------
DROP TABLE IF EXISTS `im_group`;
CREATE TABLE `im_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '群组所属用户id,群主',
  `groupname` varchar(255) NOT NULL COMMENT '群名',
  `avatar` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '群组状态：0正常  1已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10014 DEFAULT CHARSET=utf8mb4 COMMENT='群组';

-- ----------------------------
-- Records of im_group
-- ----------------------------
INSERT INTO `im_group` VALUES ('10008', '10001', 'workman交流', 'uploads/avatar/20190109/5c358bcaa77e3.jpeg', '0');
INSERT INTO `im_group` VALUES ('10009', '10006', '后援会', 'uploads/avatar/20190109/5c358c05aa1cc.jpg', '0');
INSERT INTO `im_group` VALUES ('10010', '10007', '屌丝救援团', 'uploads/avatar/20190109/5c358c35a8043.jpg', '0');
INSERT INTO `im_group` VALUES ('10011', '10005', '格力集团', 'uploads/avatar/20190613/5d01c5c50b44f.png', '0');
INSERT INTO `im_group` VALUES ('10012', '10005', 'Gatewaywork交流', 'uploads/avatar/20190613/5d01c6a7bc5f2.jpg', '0');
INSERT INTO `im_group` VALUES ('10013', '10005', '大东亚共荣团', 'uploads/avatar/20190613/5d01c6f6d97d5.jpg', '1');

-- ----------------------------
-- Table structure for im_group_member
-- ----------------------------
DROP TABLE IF EXISTS `im_group_member`;
CREATE TABLE `im_group_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '用户成员状态：1：普通成员，2：管理员，3：超级管理员',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of im_group_member
-- ----------------------------
INSERT INTO `im_group_member` VALUES ('18', '10009', '10006', '1');
INSERT INTO `im_group_member` VALUES ('19', '10010', '10007', '1');
INSERT INTO `im_group_member` VALUES ('20', '10009', '10007', '1');
INSERT INTO `im_group_member` VALUES ('21', '10008', '10007', '1');
INSERT INTO `im_group_member` VALUES ('22', '10008', '10005', '1');
INSERT INTO `im_group_member` VALUES ('23', '10009', '10005', '1');
INSERT INTO `im_group_member` VALUES ('24', '10010', '10005', '1');
INSERT INTO `im_group_member` VALUES ('27', '10008', '10008', '1');
INSERT INTO `im_group_member` VALUES ('28', '10009', '10008', '1');
INSERT INTO `im_group_member` VALUES ('29', '10010', '10008', '1');
INSERT INTO `im_group_member` VALUES ('30', '10008', '10006', '1');
INSERT INTO `im_group_member` VALUES ('31', '10011', '10005', '1');
INSERT INTO `im_group_member` VALUES ('32', '10012', '10005', '1');
INSERT INTO `im_group_member` VALUES ('33', '10013', '10005', '3');
INSERT INTO `im_group_member` VALUES ('34', '10001', '10013', '1');

-- ----------------------------
-- Table structure for im_offline_message
-- ----------------------------
DROP TABLE IF EXISTS `im_offline_message`;
CREATE TABLE `im_offline_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `data` varchar(1000) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0未发送 1已发送',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=491 DEFAULT CHARSET=utf8mb4 COMMENT='离线消息表';

-- ----------------------------
-- Records of im_offline_message
-- ----------------------------
INSERT INTO `im_offline_message` VALUES ('1', '10008', '{\"username\":\"woann(10001)\",\"avatar\":\"uploads\\/avatar\\/20190109\\/5c3587fb5da9e.jpeg\",\"id\":10001,\"type\":\"friend\",\"content\":\"333\",\"cid\":0,\"mine\":false,\"fromid\":10001,\"timestamp\":1547090986000}', '1');
INSERT INTO `im_offline_message` VALUES ('2', '10005', '{\"type\":\"msgBox\",\"count\":1}', '1');
INSERT INTO `im_offline_message` VALUES ('16', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('18', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('20', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('22', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('24', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('26', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('28', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('30', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('32', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('34', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('36', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('38', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('40', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('42', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('43', '10008', '{\"username\":\"\\u82e6\\u903c\\u7a0b\\u5e8f\\u5458\",\"avatar\":\"uploads\\/avatar\\/20190109\\/5c358aa30d122.jpg\",\"id\":10005,\"type\":\"friend\",\"content\":\"img[uploads\\/im\\/20190610\\/5cfdfad476585.png]\",\"cid\":0,\"mine\":false,\"fromid\":10005,\"timestamp\":1560148692000}', '0');
INSERT INTO `im_offline_message` VALUES ('44', '10008', '{\"username\":\"\\u82e6\\u903c\\u7a0b\\u5e8f\\u5458\",\"avatar\":\"uploads\\/avatar\\/20190109\\/5c358aa30d122.jpg\",\"id\":10005,\"type\":\"friend\",\"content\":\"file(uploads\\/file\\/20190610\\/5cfdfb136cf8f.txt)[\\u4e0b\\u8f7d\\u6587\\u4ef6]\",\"cid\":0,\"mine\":false,\"fromid\":10005,\"timestamp\":1560148755000}', '0');
INSERT INTO `im_offline_message` VALUES ('45', '10008', '{\"username\":\"\\u82e6\\u903c\\u7a0b\\u5e8f\\u5458\",\"avatar\":\"uploads\\/avatar\\/20190109\\/5c358aa30d122.jpg\",\"id\":10005,\"type\":\"friend\",\"content\":\"img[uploads\\/im\\/20190610\\/5cfdfb2ca3701.png]\",\"cid\":0,\"mine\":false,\"fromid\":10005,\"timestamp\":1560148780000}', '0');
INSERT INTO `im_offline_message` VALUES ('46', '10008', '{\"username\":\"\\u82e6\\u903c\\u7a0b\\u5e8f\\u5458\",\"avatar\":\"uploads\\/avatar\\/20190109\\/5c358aa30d122.jpg\",\"id\":10005,\"type\":\"friend\",\"content\":\"video[https:\\/\\/vdse.bdstatic.com\\/\\/71bf3520f82615faab7130c799c50e8b?authorization=bce-auth-v1%2Ffb297a5cc0fb434c971b8fa103e8dd7b%2F2017-05-11T09%3A02%3A31Z%2F-1%2F%2F77b1adf2fe9befa82a7610dd6c84436e36e380330914f2602927010eb2a62f31]\",\"cid\":0,\"mine\":false,\"fromid\":10005,\"timestamp\":1560148884000}', '0');
INSERT INTO `im_offline_message` VALUES ('49', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('50', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('52', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('53', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('55', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('56', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('58', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('59', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('61', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('62', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('64', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('65', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('67', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('68', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('70', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('71', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('73', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('74', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('76', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('77', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('79', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('80', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('82', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('83', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('85', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('86', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('88', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('89', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('91', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('92', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('94', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('95', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('97', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('98', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('100', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('101', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('103', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('104', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('106', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('107', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('109', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('110', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('112', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('113', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('115', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('116', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('118', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('119', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('121', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('122', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('124', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('125', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('127', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('128', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('130', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('131', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('133', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('134', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('136', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('137', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('139', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('140', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('142', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('143', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('145', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('146', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('148', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('149', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('151', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('152', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('154', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('155', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('157', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('158', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('160', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('161', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('163', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('164', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('166', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('167', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('169', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('170', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('172', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('173', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('175', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('176', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('178', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('179', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('181', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('182', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('184', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('185', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('187', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('188', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('190', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('191', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('193', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('194', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('196', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('197', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('199', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('200', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('202', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('203', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('205', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('206', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('208', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('209', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('211', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('212', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('214', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('215', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('217', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('218', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('220', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('221', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('223', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('224', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('226', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('227', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('229', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('230', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('233', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('234', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('236', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('237', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('239', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('240', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('242', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('243', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('245', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('246', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('248', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('249', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('251', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('252', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('254', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('255', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('257', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('258', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('260', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('261', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('263', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('264', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('266', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('267', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('269', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('270', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('272', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('273', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('275', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('276', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('278', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('279', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('281', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('282', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('284', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('285', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('287', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('288', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('290', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('291', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('293', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('294', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('296', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('297', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('299', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('300', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('302', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('303', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('305', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('306', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('308', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('309', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('311', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('312', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('314', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('315', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('317', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('318', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('320', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('321', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('323', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('324', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('326', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('327', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('329', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('330', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('332', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('333', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('335', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('336', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('338', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('339', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('341', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('342', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('344', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('345', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('347', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('348', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('350', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('351', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('353', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('354', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('356', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('357', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('359', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('360', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('362', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('363', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('365', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('366', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('368', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('369', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('371', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('372', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('374', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('375', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('377', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('378', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('380', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('381', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('383', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('384', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('386', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('387', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('389', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('390', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('392', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('393', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('395', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('396', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('398', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('399', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('401', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('402', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('404', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('405', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('407', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('408', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('410', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('411', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('413', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('414', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('416', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('417', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('419', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('420', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('422', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('423', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('425', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('426', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('428', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('429', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('431', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('432', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('434', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('435', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('437', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('438', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('440', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('441', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('443', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('444', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('446', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('447', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('449', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('450', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('452', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('453', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('455', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('456', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('458', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('459', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('461', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('462', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('464', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('465', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('467', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('468', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('470', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('471', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('473', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('474', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('476', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('477', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('479', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('480', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('482', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('483', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('485', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('486', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('488', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('489', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');

-- ----------------------------
-- Table structure for im_system_message
-- ----------------------------
DROP TABLE IF EXISTS `im_system_message`;
CREATE TABLE `im_system_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '接收用户id',
  `from_id` int(11) NOT NULL COMMENT '来源相关用户id',
  `group_id` int(11) NOT NULL DEFAULT '0',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '添加好友附言',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0好友请求 1请求结果通知',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0未处理 1同意 2拒绝',
  `read` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0未读 1已读，用来显示消息盒子数量',
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COMMENT='系统消息表';

-- ----------------------------
-- Records of im_system_message
-- ----------------------------
INSERT INTO `im_system_message` VALUES ('53', '10005', '10008', '7', '加我', '0', '1', '1', '1547092067');
INSERT INTO `im_system_message` VALUES ('54', '10008', '10005', '0', '', '1', '1', '1', '1547092167');
INSERT INTO `im_system_message` VALUES ('55', '10006', '10005', '4', 'asdasd', '0', '1', '1', '1560135566');
INSERT INTO `im_system_message` VALUES ('56', '10007', '10005', '4', 'ffdfdf', '0', '0', '0', '1560135571');
INSERT INTO `im_system_message` VALUES ('57', '10005', '10006', '0', '', '1', '1', '1', '1560135768');
INSERT INTO `im_system_message` VALUES ('58', '10005', '10009', '8', '我是马里奥，请添加我为好友', '0', '1', '1', '1560438407');
INSERT INTO `im_system_message` VALUES ('59', '10009', '10005', '0', '', '1', '1', '1', '1560438459');

-- ----------------------------
-- Table structure for im_user
-- ----------------------------
DROP TABLE IF EXISTS `im_user`;
CREATE TABLE `im_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) NOT NULL COMMENT '头像',
  `nickname` varchar(255) NOT NULL COMMENT '昵称',
  `username` varchar(255) NOT NULL COMMENT '用户名',
  `password` varchar(255) NOT NULL,
  `sign` varchar(255) NOT NULL COMMENT '签名',
  `status` varchar(255) NOT NULL DEFAULT 'online' COMMENT 'online在线 hide隐身 offline离线',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10014 DEFAULT CHARSET=utf8mb4 COMMENT='用户表';

-- ----------------------------
-- Records of im_user
-- ----------------------------
INSERT INTO `im_user` VALUES ('10005', 'uploads/avatar/20190109/5c358aa30d122.jpg', '漩涡鸣人', 'admin01', '$2y$10$DGjWpUFuBU/SnBFG3w6IHOHyV94OP2bgjTNJmgrvka2ieR9lOAi72', '我也是旋涡鸣人', 'online');
INSERT INTO `im_user` VALUES ('10006', 'uploads/avatar/20190109/5c358ae10c4d0.jpeg', '呆萌吐', 'admin02', '$2y$10$uQJ.ShZMJ2MHsVVVmauzluFsImWuszMS963XUEE/u7C8xRPZMfm1S', '有钱真的可以为所欲为的吐', 'offline');
INSERT INTO `im_user` VALUES ('10007', 'uploads/avatar/20190109/5c358b05874c2.jpg', '一花一世界', 'admin03', '$2y$10$RYwAgHBdfXqaE8nLo3scq.HB9vnxHhYI2P8f3aaNh0CSdykdmFuVq', '温柔如我', 'offline');
INSERT INTO `im_user` VALUES ('10008', 'uploads/avatar/20190109/5c358b4b578e1.jpg', '挠头的程序员', 'admin04', '$2y$10$5QgXxaoDVkERj5pJA8B81e4ByORwSZQ8ABZRqGue0sHOatzUFtLN6', '老子学累了', 'offline');
INSERT INTO `im_user` VALUES ('10009', 'uploads/avatar/20190610/5cfdd22691ae8.png', '超级玛丽', 'admin05', '$2y$10$U.LtdiF2F21opcgM9Km4rex5qV/zJZw6JS6ymnphFz7zgi0.Gg8M6', '马里奥，跳一跳', 'online');
INSERT INTO `im_user` VALUES ('10010', 'uploads/avatar/20190610/5cfdd2ae5f947.png', '血腥玛丽', 'admin06', '$2y$10$/bHG6GrKnq1e3ELby44riedWTCrL8WOolcqmdyTu7llAt3rA4k5zC', '阿斯达', 'online');
INSERT INTO `im_user` VALUES ('10011', 'uploads/avatar/20190610/5cfdd2e2af6f2.png', '二锅头也温柔', 'admin07', '$2y$10$u2D02R1S9npABTxye/yVF.wNfD1LNwShHP2TPbcVHA.jp8T8nYIWO', '你不懂', 'online');
INSERT INTO `im_user` VALUES ('10012', 'uploads/avatar/20190610/5cfdd31e618b0.png', '千年茅台', 'admin08', '$2y$10$vXw4kAdL1vSa0lzbSBkaku1D6/x7AeSamYNtWKU5O1sgKnw3f42DK', '酱香，才是真的香', 'online');
INSERT INTO `im_user` VALUES ('10013', 'uploads/avatar/20190613/5d0208f1ac254.jpg', '郑州', 'zhengzhou', '$2y$10$4AUtcdM246JJ19c1YOHb6eZfTSsZVoHmY0vh8C69VdzdXYxtVw6gy', '我在大郑州', 'online');
