/*
Navicat MySQL Data Transfer

Source Server         : 192.168.10.10_3306
Source Server Version : 50716
Source Host           : 192.168.10.10:3306
Source Database       : im

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2019-06-13 16:39:40
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COMMENT='聊天记录';

-- ----------------------------
-- Records of im_chat_record
-- ----------------------------
INSERT INTO `im_chat_record` VALUES ('1', '10001', '0', '10008', 'asd', '1547087350');
INSERT INTO `im_chat_record` VALUES ('2', '10001', '0', '10008', 'face[ok] ', '1547087352');
INSERT INTO `im_chat_record` VALUES ('3', '10006', '0', '10008', '23', '1547087461');
INSERT INTO `im_chat_record` VALUES ('4', '10001', '10006', '0', '2', '1547087939');
INSERT INTO `im_chat_record` VALUES ('5', '10001', '10006', '0', '2', '1547089271');
INSERT INTO `im_chat_record` VALUES ('6', '10001', '10006', '0', '3', '1547089271');
INSERT INTO `im_chat_record` VALUES ('7', '10001', '10006', '0', '4', '1547089271');
INSERT INTO `im_chat_record` VALUES ('8', '10001', '10006', '0', '5', '1547089272');
INSERT INTO `im_chat_record` VALUES ('9', '10001', '10006', '0', '6', '1547089272');
INSERT INTO `im_chat_record` VALUES ('10', '10001', '10006', '0', '7', '1547089272');
INSERT INTO `im_chat_record` VALUES ('11', '10001', '10006', '0', '8', '1547089272');
INSERT INTO `im_chat_record` VALUES ('12', '10001', '10006', '0', '8', '1547089273');
INSERT INTO `im_chat_record` VALUES ('13', '10001', '10006', '0', '6', '1547089273');
INSERT INTO `im_chat_record` VALUES ('14', '10001', '10006', '0', 'e5', '1547089273');
INSERT INTO `im_chat_record` VALUES ('15', '10001', '10006', '0', '54', '1547089274');
INSERT INTO `im_chat_record` VALUES ('16', '10001', '10006', '0', '54df', '1547089274');
INSERT INTO `im_chat_record` VALUES ('17', '10001', '10006', '0', 'g', '1547089274');
INSERT INTO `im_chat_record` VALUES ('18', '10001', '10006', '0', 'df', '1547089274');
INSERT INTO `im_chat_record` VALUES ('19', '10001', '10006', '0', 'gdf', '1547089275');
INSERT INTO `im_chat_record` VALUES ('20', '10001', '10006', '0', 'dfg', '1547089275');
INSERT INTO `im_chat_record` VALUES ('21', '10001', '10006', '0', 'f', '1547089275');
INSERT INTO `im_chat_record` VALUES ('22', '10001', '10006', '0', 'g', '1547089276');
INSERT INTO `im_chat_record` VALUES ('23', '10006', '10001', '0', 'hahah ', '1547089530');
INSERT INTO `im_chat_record` VALUES ('24', '10006', '10001', '0', '在啊', '1547089599');
INSERT INTO `im_chat_record` VALUES ('25', '10006', '10001', '0', '你好啊', '1547089600');
INSERT INTO `im_chat_record` VALUES ('26', '10006', '10001', '0', '你是大佬吗', '1547089604');
INSERT INTO `im_chat_record` VALUES ('27', '10001', '10006', '0', '在啊', '1547089610');
INSERT INTO `im_chat_record` VALUES ('28', '10001', '10006', '0', '我不是大佬', '1547089613');
INSERT INTO `im_chat_record` VALUES ('29', '10001', '10006', '0', '我是菜鸡', '1547089616');
INSERT INTO `im_chat_record` VALUES ('30', '10001', '10006', '0', 'face[怒] ', '1547089620');
INSERT INTO `im_chat_record` VALUES ('31', '10006', '10001', '0', 'img[uploads/im/20190110/5c36b6da18bea.jpeg]', '1547089626');
INSERT INTO `im_chat_record` VALUES ('32', '10001', '10008', '0', '333', '1547090986');
INSERT INTO `im_chat_record` VALUES ('33', '10001', '10008', '0', '1', '1547091312');
INSERT INTO `im_chat_record` VALUES ('34', '10008', '10005', '0', '4', '1547092511');
INSERT INTO `im_chat_record` VALUES ('35', '10008', '10001', '0', 'img[uploads/im/20190110/5c36c27bca2cb.jpeg]', '1547092603');
INSERT INTO `im_chat_record` VALUES ('36', '10005', '10001', '0', '气死了，气死了', '1560134917');
INSERT INTO `im_chat_record` VALUES ('37', '10005', '10001', '0', '大哥，不好意思', '1560134925');
INSERT INTO `im_chat_record` VALUES ('38', '10005', '10001', '0', '真的难受', '1560134928');
INSERT INTO `im_chat_record` VALUES ('39', '10005', '10001', '0', '你能不能救救我', '1560134933');
INSERT INTO `im_chat_record` VALUES ('40', '10005', '10001', '0', '我现在', '1560134936');
INSERT INTO `im_chat_record` VALUES ('41', '10005', '10001', '0', '想下班', '1560134941');
INSERT INTO `im_chat_record` VALUES ('42', '10005', '10001', '0', '你觉得上班跟下班最大的区别在于什么', '1560134958');
INSERT INTO `im_chat_record` VALUES ('43', '10005', '10001', '0', '是在于你有没有舒服的座椅吗？', '1560134972');
INSERT INTO `im_chat_record` VALUES ('44', '10005', '10001', '0', '在家里没有地方做对吗？', '1560134983');
INSERT INTO `im_chat_record` VALUES ('45', '10005', '10001', '0', '哈哈', '1560134985');
INSERT INTO `im_chat_record` VALUES ('46', '10005', '10001', '0', '不存在的兄弟', '1560134989');
INSERT INTO `im_chat_record` VALUES ('47', '10005', '10001', '0', '都是菜鸡啊', '1560135010');
INSERT INTO `im_chat_record` VALUES ('48', '10005', '10008', '0', 'img[uploads/im/20190610/5cfdfad476585.png]', '1560148692');
INSERT INTO `im_chat_record` VALUES ('49', '10005', '10008', '0', 'file(uploads/file/20190610/5cfdfb136cf8f.txt)[下载文件]', '1560148755');
INSERT INTO `im_chat_record` VALUES ('50', '10005', '10008', '0', 'img[uploads/im/20190610/5cfdfb2ca3701.png]', '1560148780');
INSERT INTO `im_chat_record` VALUES ('51', '10005', '10008', '0', 'video[https://vdse.bdstatic.com//71bf3520f82615faab7130c799c50e8b?authorization=bce-auth-v1%2Ffb297a5cc0fb434c971b8fa103e8dd7b%2F2017-05-11T09%3A02%3A31Z%2F-1%2F%2F77b1adf2fe9befa82a7610dd6c84436e36e380330914f2602927010eb2a62f31]', '1560148884');
INSERT INTO `im_chat_record` VALUES ('52', '10005', '10001', '0', '1', '1560220073');

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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COMMENT='好友表';

-- ----------------------------
-- Records of im_friend
-- ----------------------------
INSERT INTO `im_friend` VALUES ('46', '10001', '10008', '3', '0');
INSERT INTO `im_friend` VALUES ('47', '10008', '10001', '7', '0');
INSERT INTO `im_friend` VALUES ('52', '10001', '10005', '3', '0');
INSERT INTO `im_friend` VALUES ('53', '10005', '10001', '4', '0');
INSERT INTO `im_friend` VALUES ('54', '10001', '10006', '3', '0');
INSERT INTO `im_friend` VALUES ('55', '10006', '10001', '5', '0');
INSERT INTO `im_friend` VALUES ('66', '10001', '10007', '3', '0');
INSERT INTO `im_friend` VALUES ('67', '10007', '10001', '6', '0');
INSERT INTO `im_friend` VALUES ('68', '10005', '10008', '4', '0');
INSERT INTO `im_friend` VALUES ('69', '10008', '10005', '7', '0');
INSERT INTO `im_friend` VALUES ('70', '10006', '10005', '5', '0');
INSERT INTO `im_friend` VALUES ('71', '10005', '10006', '4', '0');

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
INSERT INTO `im_friend_group` VALUES ('3', '10001', '默认分组');
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
INSERT INTO `im_group_member` VALUES ('17', '10008', '10001', '1');
INSERT INTO `im_group_member` VALUES ('18', '10009', '10006', '1');
INSERT INTO `im_group_member` VALUES ('19', '10010', '10007', '1');
INSERT INTO `im_group_member` VALUES ('20', '10009', '10007', '1');
INSERT INTO `im_group_member` VALUES ('21', '10008', '10007', '1');
INSERT INTO `im_group_member` VALUES ('22', '10008', '10005', '1');
INSERT INTO `im_group_member` VALUES ('23', '10009', '10005', '1');
INSERT INTO `im_group_member` VALUES ('24', '10010', '10005', '1');
INSERT INTO `im_group_member` VALUES ('25', '10009', '10001', '1');
INSERT INTO `im_group_member` VALUES ('26', '10010', '10001', '1');
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
) ENGINE=InnoDB AUTO_INCREMENT=487 DEFAULT CHARSET=utf8mb4 COMMENT='离线消息表';

-- ----------------------------
-- Records of im_offline_message
-- ----------------------------
INSERT INTO `im_offline_message` VALUES ('1', '10008', '{\"username\":\"woann(10001)\",\"avatar\":\"uploads\\/avatar\\/20190109\\/5c3587fb5da9e.jpeg\",\"id\":10001,\"type\":\"friend\",\"content\":\"333\",\"cid\":0,\"mine\":false,\"fromid\":10001,\"timestamp\":1547090986000}', '1');
INSERT INTO `im_offline_message` VALUES ('2', '10005', '{\"type\":\"msgBox\",\"count\":1}', '1');
INSERT INTO `im_offline_message` VALUES ('3', '10001', '{\"username\":\"\\u82e6\\u903c\\u7a0b\\u5e8f\\u5458\",\"avatar\":\"uploads\\/avatar\\/20190109\\/5c358aa30d122.jpg\",\"id\":10005,\"type\":\"friend\",\"content\":\"\\u6c14\\u6b7b\\u4e86\\uff0c\\u6c14\\u6b7b\\u4e86\",\"cid\":0,\"mine\":false,\"fromid\":10005,\"timestamp\":1560134917000}', '0');
INSERT INTO `im_offline_message` VALUES ('4', '10001', '{\"username\":\"\\u82e6\\u903c\\u7a0b\\u5e8f\\u5458\",\"avatar\":\"uploads\\/avatar\\/20190109\\/5c358aa30d122.jpg\",\"id\":10005,\"type\":\"friend\",\"content\":\"\\u5927\\u54e5\\uff0c\\u4e0d\\u597d\\u610f\\u601d\",\"cid\":0,\"mine\":false,\"fromid\":10005,\"timestamp\":1560134925000}', '0');
INSERT INTO `im_offline_message` VALUES ('5', '10001', '{\"username\":\"\\u82e6\\u903c\\u7a0b\\u5e8f\\u5458\",\"avatar\":\"uploads\\/avatar\\/20190109\\/5c358aa30d122.jpg\",\"id\":10005,\"type\":\"friend\",\"content\":\"\\u771f\\u7684\\u96be\\u53d7\",\"cid\":0,\"mine\":false,\"fromid\":10005,\"timestamp\":1560134928000}', '0');
INSERT INTO `im_offline_message` VALUES ('6', '10001', '{\"username\":\"\\u82e6\\u903c\\u7a0b\\u5e8f\\u5458\",\"avatar\":\"uploads\\/avatar\\/20190109\\/5c358aa30d122.jpg\",\"id\":10005,\"type\":\"friend\",\"content\":\"\\u4f60\\u80fd\\u4e0d\\u80fd\\u6551\\u6551\\u6211\",\"cid\":0,\"mine\":false,\"fromid\":10005,\"timestamp\":1560134933000}', '0');
INSERT INTO `im_offline_message` VALUES ('7', '10001', '{\"username\":\"\\u82e6\\u903c\\u7a0b\\u5e8f\\u5458\",\"avatar\":\"uploads\\/avatar\\/20190109\\/5c358aa30d122.jpg\",\"id\":10005,\"type\":\"friend\",\"content\":\"\\u6211\\u73b0\\u5728\",\"cid\":0,\"mine\":false,\"fromid\":10005,\"timestamp\":1560134936000}', '0');
INSERT INTO `im_offline_message` VALUES ('8', '10001', '{\"username\":\"\\u82e6\\u903c\\u7a0b\\u5e8f\\u5458\",\"avatar\":\"uploads\\/avatar\\/20190109\\/5c358aa30d122.jpg\",\"id\":10005,\"type\":\"friend\",\"content\":\"\\u60f3\\u4e0b\\u73ed\",\"cid\":0,\"mine\":false,\"fromid\":10005,\"timestamp\":1560134941000}', '0');
INSERT INTO `im_offline_message` VALUES ('9', '10001', '{\"username\":\"\\u82e6\\u903c\\u7a0b\\u5e8f\\u5458\",\"avatar\":\"uploads\\/avatar\\/20190109\\/5c358aa30d122.jpg\",\"id\":10005,\"type\":\"friend\",\"content\":\"\\u4f60\\u89c9\\u5f97\\u4e0a\\u73ed\\u8ddf\\u4e0b\\u73ed\\u6700\\u5927\\u7684\\u533a\\u522b\\u5728\\u4e8e\\u4ec0\\u4e48\",\"cid\":0,\"mine\":false,\"fromid\":10005,\"timestamp\":1560134958000}', '0');
INSERT INTO `im_offline_message` VALUES ('10', '10001', '{\"username\":\"\\u82e6\\u903c\\u7a0b\\u5e8f\\u5458\",\"avatar\":\"uploads\\/avatar\\/20190109\\/5c358aa30d122.jpg\",\"id\":10005,\"type\":\"friend\",\"content\":\"\\u662f\\u5728\\u4e8e\\u4f60\\u6709\\u6ca1\\u6709\\u8212\\u670d\\u7684\\u5ea7\\u6905\\u5417\\uff1f\",\"cid\":0,\"mine\":false,\"fromid\":10005,\"timestamp\":1560134972000}', '0');
INSERT INTO `im_offline_message` VALUES ('11', '10001', '{\"username\":\"\\u82e6\\u903c\\u7a0b\\u5e8f\\u5458\",\"avatar\":\"uploads\\/avatar\\/20190109\\/5c358aa30d122.jpg\",\"id\":10005,\"type\":\"friend\",\"content\":\"\\u5728\\u5bb6\\u91cc\\u6ca1\\u6709\\u5730\\u65b9\\u505a\\u5bf9\\u5417\\uff1f\",\"cid\":0,\"mine\":false,\"fromid\":10005,\"timestamp\":1560134983000}', '0');
INSERT INTO `im_offline_message` VALUES ('12', '10001', '{\"username\":\"\\u82e6\\u903c\\u7a0b\\u5e8f\\u5458\",\"avatar\":\"uploads\\/avatar\\/20190109\\/5c358aa30d122.jpg\",\"id\":10005,\"type\":\"friend\",\"content\":\"\\u54c8\\u54c8\",\"cid\":0,\"mine\":false,\"fromid\":10005,\"timestamp\":1560134985000}', '0');
INSERT INTO `im_offline_message` VALUES ('13', '10001', '{\"username\":\"\\u82e6\\u903c\\u7a0b\\u5e8f\\u5458\",\"avatar\":\"uploads\\/avatar\\/20190109\\/5c358aa30d122.jpg\",\"id\":10005,\"type\":\"friend\",\"content\":\"\\u4e0d\\u5b58\\u5728\\u7684\\u5144\\u5f1f\",\"cid\":0,\"mine\":false,\"fromid\":10005,\"timestamp\":1560134989000}', '0');
INSERT INTO `im_offline_message` VALUES ('14', '10001', '{\"username\":\"\\u82e6\\u903c\\u7a0b\\u5e8f\\u5458\",\"avatar\":\"uploads\\/avatar\\/20190109\\/5c358aa30d122.jpg\",\"id\":10005,\"type\":\"friend\",\"content\":\"\\u90fd\\u662f\\u83dc\\u9e21\\u554a\",\"cid\":0,\"mine\":false,\"fromid\":10005,\"timestamp\":1560135010000}', '0');
INSERT INTO `im_offline_message` VALUES ('15', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('16', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('17', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('18', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('19', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('20', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('21', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('22', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('23', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('24', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('25', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('26', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('27', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('28', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('29', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('30', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('31', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('32', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('33', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('34', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('35', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('36', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('37', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('38', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('39', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('40', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('41', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('42', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('43', '10008', '{\"username\":\"\\u82e6\\u903c\\u7a0b\\u5e8f\\u5458\",\"avatar\":\"uploads\\/avatar\\/20190109\\/5c358aa30d122.jpg\",\"id\":10005,\"type\":\"friend\",\"content\":\"img[uploads\\/im\\/20190610\\/5cfdfad476585.png]\",\"cid\":0,\"mine\":false,\"fromid\":10005,\"timestamp\":1560148692000}', '0');
INSERT INTO `im_offline_message` VALUES ('44', '10008', '{\"username\":\"\\u82e6\\u903c\\u7a0b\\u5e8f\\u5458\",\"avatar\":\"uploads\\/avatar\\/20190109\\/5c358aa30d122.jpg\",\"id\":10005,\"type\":\"friend\",\"content\":\"file(uploads\\/file\\/20190610\\/5cfdfb136cf8f.txt)[\\u4e0b\\u8f7d\\u6587\\u4ef6]\",\"cid\":0,\"mine\":false,\"fromid\":10005,\"timestamp\":1560148755000}', '0');
INSERT INTO `im_offline_message` VALUES ('45', '10008', '{\"username\":\"\\u82e6\\u903c\\u7a0b\\u5e8f\\u5458\",\"avatar\":\"uploads\\/avatar\\/20190109\\/5c358aa30d122.jpg\",\"id\":10005,\"type\":\"friend\",\"content\":\"img[uploads\\/im\\/20190610\\/5cfdfb2ca3701.png]\",\"cid\":0,\"mine\":false,\"fromid\":10005,\"timestamp\":1560148780000}', '0');
INSERT INTO `im_offline_message` VALUES ('46', '10008', '{\"username\":\"\\u82e6\\u903c\\u7a0b\\u5e8f\\u5458\",\"avatar\":\"uploads\\/avatar\\/20190109\\/5c358aa30d122.jpg\",\"id\":10005,\"type\":\"friend\",\"content\":\"video[https:\\/\\/vdse.bdstatic.com\\/\\/71bf3520f82615faab7130c799c50e8b?authorization=bce-auth-v1%2Ffb297a5cc0fb434c971b8fa103e8dd7b%2F2017-05-11T09%3A02%3A31Z%2F-1%2F%2F77b1adf2fe9befa82a7610dd6c84436e36e380330914f2602927010eb2a62f31]\",\"cid\":0,\"mine\":false,\"fromid\":10005,\"timestamp\":1560148884000}', '0');
INSERT INTO `im_offline_message` VALUES ('47', '10001', '{\"type\":\"friendStatus\",\"uid\":10006,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('48', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('49', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('50', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('51', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('52', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('53', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('54', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('55', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('56', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('57', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('58', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('59', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('60', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('61', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('62', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('63', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('64', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('65', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('66', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('67', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('68', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('69', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('70', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('71', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('72', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('73', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('74', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('75', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('76', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('77', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('78', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('79', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('80', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('81', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('82', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('83', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('84', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('85', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('86', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('87', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('88', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('89', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('90', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('91', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('92', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('93', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('94', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('95', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('96', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('97', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('98', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('99', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('100', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('101', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('102', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('103', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('104', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('105', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('106', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('107', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('108', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('109', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('110', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('111', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('112', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('113', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('114', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('115', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('116', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('117', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('118', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('119', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('120', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('121', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('122', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('123', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('124', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('125', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('126', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('127', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('128', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('129', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('130', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('131', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('132', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('133', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('134', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('135', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('136', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('137', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('138', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('139', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('140', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('141', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('142', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('143', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('144', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('145', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('146', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('147', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('148', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('149', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('150', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('151', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('152', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('153', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('154', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('155', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('156', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('157', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('158', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('159', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('160', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('161', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('162', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('163', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('164', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('165', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('166', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('167', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('168', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('169', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('170', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('171', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('172', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('173', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('174', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('175', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('176', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('177', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('178', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('179', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('180', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('181', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('182', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('183', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('184', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('185', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('186', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('187', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('188', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('189', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('190', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('191', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('192', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('193', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('194', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('195', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('196', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('197', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('198', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('199', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('200', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('201', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('202', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('203', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('204', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('205', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('206', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('207', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('208', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('209', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('210', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('211', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('212', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('213', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('214', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('215', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('216', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('217', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('218', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('219', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('220', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('221', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('222', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('223', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('224', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('225', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('226', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('227', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('228', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('229', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('230', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('231', '10001', '{\"username\":\"\\u82e6\\u903c\\u7a0b\\u5e8f\\u5458\",\"avatar\":\"uploads\\/avatar\\/20190109\\/5c358aa30d122.jpg\",\"id\":10005,\"type\":\"friend\",\"content\":\"1\",\"cid\":0,\"mine\":false,\"fromid\":10005,\"timestamp\":1560220072000}', '0');
INSERT INTO `im_offline_message` VALUES ('232', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('233', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('234', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('235', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('236', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('237', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('238', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('239', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('240', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('241', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('242', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('243', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('244', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('245', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('246', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('247', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('248', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('249', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('250', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('251', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('252', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('253', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('254', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('255', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('256', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('257', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('258', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('259', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('260', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('261', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('262', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('263', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('264', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('265', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('266', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('267', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('268', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('269', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('270', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('271', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('272', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('273', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('274', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('275', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('276', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('277', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('278', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('279', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('280', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('281', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('282', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('283', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('284', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('285', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('286', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('287', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('288', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('289', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('290', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('291', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('292', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('293', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('294', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('295', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('296', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('297', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('298', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('299', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('300', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('301', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('302', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('303', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('304', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('305', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('306', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('307', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('308', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('309', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('310', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('311', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('312', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('313', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('314', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('315', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('316', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('317', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('318', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('319', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('320', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('321', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('322', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('323', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('324', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('325', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('326', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('327', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('328', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('329', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('330', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('331', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('332', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('333', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('334', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('335', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('336', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('337', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('338', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('339', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('340', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('341', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('342', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('343', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('344', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('345', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('346', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('347', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('348', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('349', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('350', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('351', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('352', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('353', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('354', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('355', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('356', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('357', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('358', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('359', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('360', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('361', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('362', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('363', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('364', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('365', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('366', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('367', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('368', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('369', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('370', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('371', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('372', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('373', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('374', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('375', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('376', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('377', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('378', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('379', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('380', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('381', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('382', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('383', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('384', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('385', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('386', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('387', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('388', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('389', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('390', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('391', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('392', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('393', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('394', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('395', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('396', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('397', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('398', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('399', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('400', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('401', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('402', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('403', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('404', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('405', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('406', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('407', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('408', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('409', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('410', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('411', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('412', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('413', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('414', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('415', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('416', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('417', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('418', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('419', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('420', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('421', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('422', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('423', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('424', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('425', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('426', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('427', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('428', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('429', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('430', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('431', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('432', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('433', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('434', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('435', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('436', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('437', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('438', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('439', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('440', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('441', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('442', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('443', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('444', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('445', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('446', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('447', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('448', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('449', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('450', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('451', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('452', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('453', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('454', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('455', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('456', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('457', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('458', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('459', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('460', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('461', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('462', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('463', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('464', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('465', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('466', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('467', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('468', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('469', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('470', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('471', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('472', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('473', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('474', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('475', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('476', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('477', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('478', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('479', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('480', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('481', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('482', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('483', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('484', '10001', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('485', '10008', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');
INSERT INTO `im_offline_message` VALUES ('486', '10006', '{\"type\":\"friendStatus\",\"uid\":10005,\"status\":\"offline\"}', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COMMENT='系统消息表';

-- ----------------------------
-- Records of im_system_message
-- ----------------------------
INSERT INTO `im_system_message` VALUES ('33', '10001', '10008', '7', '', '0', '1', '1', '1547013257');
INSERT INTO `im_system_message` VALUES ('34', '10008', '10001', '0', '', '1', '1', '1', '1547013357');
INSERT INTO `im_system_message` VALUES ('37', '10001', '10005', '4', '', '0', '1', '1', '1547013795');
INSERT INTO `im_system_message` VALUES ('38', '10005', '10001', '0', '', '1', '1', '1', '1547013800');
INSERT INTO `im_system_message` VALUES ('39', '10001', '10006', '5', '', '0', '1', '1', '1547013821');
INSERT INTO `im_system_message` VALUES ('40', '10006', '10001', '0', '', '1', '1', '1', '1547013826');
INSERT INTO `im_system_message` VALUES ('51', '10001', '10007', '6', '', '0', '1', '1', '1547016259');
INSERT INTO `im_system_message` VALUES ('52', '10007', '10001', '0', '', '1', '1', '1', '1547016263');
INSERT INTO `im_system_message` VALUES ('53', '10005', '10008', '7', '加我', '0', '1', '1', '1547092067');
INSERT INTO `im_system_message` VALUES ('54', '10008', '10005', '0', '', '1', '1', '1', '1547092167');
INSERT INTO `im_system_message` VALUES ('55', '10006', '10005', '4', 'asdasd', '0', '1', '1', '1560135566');
INSERT INTO `im_system_message` VALUES ('56', '10007', '10005', '4', 'ffdfdf', '0', '0', '0', '1560135571');
INSERT INTO `im_system_message` VALUES ('57', '10005', '10006', '0', '', '1', '1', '1', '1560135768');

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
INSERT INTO `im_user` VALUES ('10001', 'uploads/avatar/20190109/5c3587fb5da9e.jpeg', 'woann', 'woann', '$2y$10$9Jo4A0nxzH8sLckJzIW9v.6wf4/ZizPs2rshK3.VUIOday1BEEj/y', 'php是世界上最好的语言', 'offline');
INSERT INTO `im_user` VALUES ('10005', 'uploads/avatar/20190109/5c358aa30d122.jpg', '苦逼程序员', 'test01', '$2y$10$DGjWpUFuBU/SnBFG3w6IHOHyV94OP2bgjTNJmgrvka2ieR9lOAi72', '我也是旋涡鸣人', 'online');
INSERT INTO `im_user` VALUES ('10006', 'uploads/avatar/20190109/5c358ae10c4d0.jpeg', '狗der产品', 'test02', '$2y$10$uQJ.ShZMJ2MHsVVVmauzluFsImWuszMS963XUEE/u7C8xRPZMfm1S', '有钱真的可以为所欲为', 'offline');
INSERT INTO `im_user` VALUES ('10007', 'uploads/avatar/20190109/5c358b05874c2.jpg', '服务架构师', 'test03', '$2y$10$RYwAgHBdfXqaE8nLo3scq.HB9vnxHhYI2P8f3aaNh0CSdykdmFuVq', '技术流就是我', 'offline');
INSERT INTO `im_user` VALUES ('10008', 'uploads/avatar/20190109/5c358b4b578e1.jpg', '前端攻城狮', 'test04', '$2y$10$5QgXxaoDVkERj5pJA8B81e4ByORwSZQ8ABZRqGue0sHOatzUFtLN6', '前端好苦逼', 'offline');
INSERT INTO `im_user` VALUES ('10009', 'uploads/avatar/20190610/5cfdd22691ae8.png', '超级玛丽', 'admin', '$2y$10$U.LtdiF2F21opcgM9Km4rex5qV/zJZw6JS6ymnphFz7zgi0.Gg8M6', '马里奥，跳一跳', 'online');
INSERT INTO `im_user` VALUES ('10010', 'uploads/avatar/20190610/5cfdd2ae5f947.png', '血腥玛丽', 'test05', '$2y$10$/bHG6GrKnq1e3ELby44riedWTCrL8WOolcqmdyTu7llAt3rA4k5zC', '阿斯达', 'online');
INSERT INTO `im_user` VALUES ('10011', 'uploads/avatar/20190610/5cfdd2e2af6f2.png', '二锅头也温柔', 'test06', '$2y$10$u2D02R1S9npABTxye/yVF.wNfD1LNwShHP2TPbcVHA.jp8T8nYIWO', '你不懂', 'online');
INSERT INTO `im_user` VALUES ('10012', 'uploads/avatar/20190610/5cfdd31e618b0.png', '千年茅台', 'test07', '$2y$10$vXw4kAdL1vSa0lzbSBkaku1D6/x7AeSamYNtWKU5O1sgKnw3f42DK', '酱香，才是真的香', 'online');
INSERT INTO `im_user` VALUES ('10013', 'uploads/avatar/20190613/5d0208f1ac254.jpg', '郑州', 'zhengzhou', '$2y$10$4AUtcdM246JJ19c1YOHb6eZfTSsZVoHmY0vh8C69VdzdXYxtVw6gy', '我在大郑州', 'online');
