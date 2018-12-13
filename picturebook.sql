/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50045
Source Host           : localhost:3306
Source Database       : picturebook

Target Server Type    : MYSQL
Target Server Version : 50045
File Encoding         : 65001

Date: 2018-11-17 11:40:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `book`
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `id` varchar(255) NOT NULL default '',
  `name` varchar(255) default NULL,
  `content` varchar(255) default NULL,
  `athor` varchar(255) default NULL,
  `type` varchar(255) default NULL,
  `page` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('1', '山猫的礼物', '', '山福朱实 著 编', 'book', '0');
INSERT INTO `book` VALUES ('10', '如果我有一只恐龙', null, '加比.道内', 'book', '0');
INSERT INTO `book` VALUES ('11', '爸爸的头发不见了', null, null, 'picture', '10');
INSERT INTO `book` VALUES ('12', '北国的小城', null, null, 'picture', '12');
INSERT INTO `book` VALUES ('13', '慌张先生', null, null, 'picture', '8');
INSERT INTO `book` VALUES ('14', '十个小脚趾', null, null, 'picture', '10');
INSERT INTO `book` VALUES ('15', '我不知道的人体奥秘', null, null, 'picture', '6');
INSERT INTO `book` VALUES ('16', '威利和一朵云', null, null, 'picture', '6');
INSERT INTO `book` VALUES ('17', '小象的陷阱', null, null, 'picture', '6');
INSERT INTO `book` VALUES ('18', '一家人', null, null, 'picture', '10');
INSERT INTO `book` VALUES ('19', '有一个宝贝', null, null, 'picture', '8');
INSERT INTO `book` VALUES ('2', '地球博士的世界遗产迷宫之旅', '', '神山真澄', 'book', '0');
INSERT INTO `book` VALUES ('20', '愿世间的一切美好都属于你', null, null, 'picture', '10');
INSERT INTO `book` VALUES ('3', '火鸟', '', '米斯蒂.柯普兰', 'book', '0');
INSERT INTO `book` VALUES ('4', '我的妈妈', '', '葛冰', 'book', '0');
INSERT INTO `book` VALUES ('5', '兔子小白的礼物树', '', '佐佐木田鹤', 'book', '0');
INSERT INTO `book` VALUES ('6', '奥莉薇游威尼斯', '', '伊恩.福尔克纳', 'book', '0');
INSERT INTO `book` VALUES ('7', '走进奇妙的蓝色国度', null, '尤瓦.左默', 'book', '0');
INSERT INTO `book` VALUES ('8', '涂鸦大厨', null, '埃尔维.杜莱', 'book', '0');
INSERT INTO `book` VALUES ('9', '唤醒童心的美味秘方', null, '京.麦克莱', 'book', '0');

-- ----------------------------
-- Table structure for `chat`
-- ----------------------------
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat` (
  `id` varchar(255) NOT NULL default '',
  `title` varchar(255) default NULL,
  `context` varchar(255) default NULL,
  `time` datetime default NULL,
  `type` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chat
-- ----------------------------
INSERT INTO `chat` VALUES ('1', '遨游太空', '《遨游太空》是英国趣味数学大迷宫系列之一，全套书共有四册，除了介绍太空主题，还有海底城堡、雨林探险、和地下世界，迷宫游戏最显著的特点就是，在游戏中引入了数数字，认识几何形状等有趣的数学知识点。', '2018-11-16 17:36:44', '小张');
INSERT INTO `chat` VALUES ('10', '《用物体来画画》', '让孩子收获创意美术的惊喜。开发智力，激发创新灵感，提高孩子的观察力、思考力、专注力、思考力。充分带动孩子的各种想象力和动手能力。可以通过对小动物的拆解，让小朋友更清楚小动物的构造。', '2018-11-17 11:21:13', '小张');
INSERT INTO `chat` VALUES ('2', '《奥斯瓦尔多奇幻之旅》体会友情和爱情', '故事以先生和小鸟的离开为主线，故事曲折离奇，又饱含爱的情感，告诉我们要敞开心扉试着体谅他人，站在对方的角度看问题，同时也要放开眼届，不能局限在自己的小世界里。', '2018-11-16 17:37:18', '小张');
INSERT INTO `chat` VALUES ('3', '《巴夭人的孩子》', '本书记录的是漂泊在马来西亚仙本那一带的巴夭人的日常生活。本书以一个巴夭人孩子的视角与口吻，讲述巴夭人的真实故事。作者想告诉孩子：在这个世界上有这样一个地方，生活着这样一群人，过着这样一种生活。', '2018-11-16 17:37:39', '小张');
INSERT INTO `chat` VALUES ('4', '《不要紧》', '本书记录的是漂泊在马来西亚仙本那一带的巴夭人的日常生活。本书以一个巴夭人孩子的视角与口吻，讲述巴夭人的真实故事。作者想告诉孩子：在这个世界上有这样一个地方，生活着这样一群人，过着这样一种生活。', '2018-11-16 17:48:28', '小张');
INSERT INTO `chat` VALUES ('5', '《汉字娃娃》', '这本书，不仅仅包括了50首优美的童诗和50幅精美的插画，更难得的是深刻理解了41个汉字和5个标点符号的内涵和深意。如此美妙的童诗集可以说是孩子最完美的童诗文学启蒙了。', '2018-11-16 17:48:35', '小张');
INSERT INTO `chat` VALUES ('6', '《拉里和罗拉》', '《拉里和罗拉》系列是一专为两岁以上宝贝倾情打造语言启蒙认知书，丰富孩子的常识认知，满足宝贝们的好奇心。书中认知点均有中英文对照，有利于孩子对简单基础的英语词汇的掌握。', '2018-11-16 17:48:42', '小张');
INSERT INTO `chat` VALUES ('7', '《屁的故事》', ' 认真地描绘了大人、小孩、小动物、童话故事主人公等放屁的场景，画面充满喜感，就像与小朋友在交流、分享者放屁的小秘密。不仅画风温馨，细节丰富，而且语言生动，适合亲子共读，可培养孩子语感，增进亲子感情。', '2018-11-16 17:49:20', '小张');
INSERT INTO `chat` VALUES ('8', '《山猫的礼物》', '《山猫的礼物》由日本木版画家山福朱实著绘，著名作家、翻译家彭懿倾情翻译。山猫躺在暖和的被子里正在睡大觉，被子上隐约可以看到一些小动物的形象，整个画面虽然有些粗糙，但山猫面部的细节却把控的十分到位。', '2018-11-16 17:49:25', '小张');
INSERT INTO `chat` VALUES ('9', '《听，小蜗牛艾玛》', '《听，小蜗牛艾玛》这是一本奇妙的音乐启蒙绘本。全书以丰富多彩而且轻松有趣的音乐教育为背景，创作的儿童故事，音乐把各种人物感情的悲喜交集淋漓尽致地表现出来。', '2018-11-16 17:49:36', '小张');

-- ----------------------------
-- Table structure for `orderhome`
-- ----------------------------
DROP TABLE IF EXISTS `orderhome`;
CREATE TABLE `orderhome` (
  `userid` varchar(255) default NULL,
  `bookid` varchar(255) default NULL,
  `type` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderhome
-- ----------------------------
INSERT INTO `orderhome` VALUES ('201811152219291118', '4', '0');

-- ----------------------------
-- Table structure for `review`
-- ----------------------------
DROP TABLE IF EXISTS `review`;
CREATE TABLE `review` (
  `chatid` varchar(255) default NULL,
  `userid` varchar(255) default NULL,
  `type` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of review
-- ----------------------------
INSERT INTO `review` VALUES ('3', '20151612204', '111');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `name` varchar(255) default NULL,
  `id` varchar(255) NOT NULL default '',
  `password` varchar(255) default NULL,
  `type` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '1', '1', '1');
INSERT INTO `user` VALUES ('20151612204', '201811152219291118', '123456', null);
