/*
Navicat MySQL Data Transfer

Source Server         : mysql57
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : mybatis

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2018-09-23 10:56:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for allege
-- ----------------------------
DROP TABLE IF EXISTS `allege`;
CREATE TABLE `allege` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `allId` int(11) NOT NULL,
  `email` varchar(80) NOT NULL,
  `allEmail` varchar(80) NOT NULL,
  `allReason` varchar(100) NOT NULL,
  `allText` varchar(400) NOT NULL,
  `allState` varchar(20) NOT NULL,
  `allTime` varchar(40) DEFAULT NULL,
  `dealText` varchar(255) DEFAULT NULL,
  `dealTime` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of allege
-- ----------------------------
INSERT INTO `allege` VALUES ('10', '19', '815129021@qq.com', '815129029@qq.com', 'www', 'eeeeeeee', '已处理', '2018-04-22 15:35:44', '哈哈哈哈或或或或或或或或', '2018-04-23 21:46');
INSERT INTO `allege` VALUES ('15', '18', '815129021@qq.com', '815129029@qq.com', '少时诵诗书所的点点滴滴', '福福福福福福福福福', '已处理', '2018-04-22 15:49', '哈哈哈哈或或或或或或或或', '2018-04-23 21:46');
INSERT INTO `allege` VALUES ('16', '26', '815129029@qq.com', '815129020@qq.com', '柔柔弱弱若若若', '的点点滴滴多多多多多多', '已处理', '2018-04-22 16:49', '哈哈哈哈或或或或或或或或', '2018-04-23 21:46');
INSERT INTO `allege` VALUES ('17', '18', '815129029@qq.com', '815129021@qq.com', 'yyyy', 'ttttttttttttttttttttt', '未处理', '2018-04-22 16:49', 'sssssssssssssssssss', '2018-04-22 15:35:44');

-- ----------------------------
-- Table structure for apply
-- ----------------------------
DROP TABLE IF EXISTS `apply`;
CREATE TABLE `apply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stuEmail` varchar(100) NOT NULL,
  `comEmail` varchar(40) NOT NULL,
  `jobName` varchar(40) NOT NULL,
  `stuState` varchar(40) DEFAULT NULL,
  `applyState` varchar(40) NOT NULL COMMENT '未处理0 通过1 未通过2 删除3 完成4',
  `applyId` varchar(40) NOT NULL,
  `applyTime` varchar(100) NOT NULL,
  `stuGrade` varchar(40) DEFAULT NULL,
  `stuText` varchar(255) DEFAULT NULL,
  `comGrade` varchar(40) DEFAULT NULL,
  `comText` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of apply
-- ----------------------------
INSERT INTO `apply` VALUES ('17', '815129021@qq.com', '815129025@qq.com', '话务客服', '0', '0', '9', '2018-03-31 23:21', null, null, null, null);
INSERT INTO `apply` VALUES ('18', '815129021@qq.com', '815129029@qq.com', '宠物寄养', '4', '4', '14', '2018-03-21 23:21', '3.0', '', '7.0', 'rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr');
INSERT INTO `apply` VALUES ('19', '815129021@qq.com', '815129029@qq.com', '打包分拣', '4', '2', '15', '2018-03-11 23:21', '5.0', null, '7.0', '呃呃呃呃呃呃呃呃呃');
INSERT INTO `apply` VALUES ('20', '815129021@qq.com', '815129029@qq.com', '充场', '1', '1', '16', '2018-03-31 20:21', null, null, '', '');
INSERT INTO `apply` VALUES ('21', '815129021@qq.com', '815129029@qq.com', '礼仪模特', '2', '2', '20', '2018-04-01 11:52', null, null, null, null);
INSERT INTO `apply` VALUES ('22', '815129021@qq.com', '815129029@qq.com', '展会协助', '4', '4', '28', '2018-04-01 13:52', '', '', '', '');
INSERT INTO `apply` VALUES ('23', '815129021@qq.com', '815129029@qq.com', '软件开发', '0', '0', '33', '2018-04-12 16:35', null, null, null, null);
INSERT INTO `apply` VALUES ('24', '815129020@qq.com', '815129025@qq.com', '话务客服', '0', '0', '9', '2018-04-14 12:34', null, null, null, null);
INSERT INTO `apply` VALUES ('25', '815129020@qq.com', '815129029@qq.com', '展会协助', '2', '2', '28', '2018-04-14 12:34', null, null, null, null);
INSERT INTO `apply` VALUES ('26', '815129020@qq.com', '815129029@qq.com', '保洁', '4', '4', '29', '2018-04-14 12:34', '8.7', 'eeeeeeeeeeeeeeee', null, null);
INSERT INTO `apply` VALUES ('27', '815129020@qq.com', '815129029@qq.com', '会展执行', '4', '4', '30', '2018-04-14 12:34', '6.3', '少时诵诗书所所所所所所', null, null);
INSERT INTO `apply` VALUES ('28', '815129020@qq.com', '815129029@qq.com', '社会义工', '1', '1', '31', '2018-04-14 12:34', null, null, null, null);
INSERT INTO `apply` VALUES ('29', '815129021@qq.com', '815129029@qq.com', '会展执行', '0', '0', '30', '2018-06-19 09:48', null, null, null, null);

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `select_industry_hidden` varchar(100) DEFAULT NULL,
  `select_scale_hidden` varchar(100) DEFAULT NULL,
  `temptation` varchar(300) DEFAULT NULL,
  `principal` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `email` (`email`),
  CONSTRAINT `email` FOREIGN KEY (`email`) REFERENCES `user` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES ('30', '815129029@qq.com', '张三北京科技有限公司', 'www.shenzhen.com', '北京', '电子商务', '15-50人', '啥答案奥奥奥奥奥奥奥奥奥奥奥奥奥1231', '刘翔', '18940084869');
INSERT INTO `company` VALUES ('31', '815129026@qq.com', '云跃科技有限公司', 'www.yunyue.com', '内蒙古', '移动互联网,电子商务', '少于15人', '老猥琐一手创建', '老猥琐', '18940084522');
INSERT INTO `company` VALUES ('32', '815129028@qq.com', '云月科技有限公司', 'www.baidu.com', '北京', '企业服务', '少于15人', 'iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii', '张三', '18940084555');
INSERT INTO `company` VALUES ('33', '815129025@qq.com', '电子航空公司', 'www.daizi.com', '深圳', '移动互联网,社交', '15-50人', '少时诵诗书所所所所所所所所所所所所所所所所所所所所所所所所所所', '小波', '18940084444');
INSERT INTO `company` VALUES ('43', '615129029@qq.com', '张三', 'www.baidu.com', '北京', '电子商务,文化艺术', '50-150人', 'wwwwwwwwwwwwwwwwwwwwww 我', '大伯', '18940084523');
INSERT INTO `company` VALUES ('44', '815129022@qq.com', '福建闽江科技有限公司', 'www.minjiang.com', '闽江大道201号', '社交,企业服务', '15-50人', '旨在服务于大学生', '民船', '18940084523');
INSERT INTO `company` VALUES ('45', '715129029@qq.com', '福建山水公司', 'www.shanchui.com', '福建', '健康医疗,生活服务', '150-500人', '游山玩水，无比快乐', '山水', '18940084522');

-- ----------------------------
-- Table structure for resume
-- ----------------------------
DROP TABLE IF EXISTS `resume`;
CREATE TABLE `resume` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `jobType` varchar(100) NOT NULL,
  `jobName` varchar(100) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `number` varchar(100) DEFAULT NULL,
  `deRequest` varchar(1000) DEFAULT NULL,
  `salary` varchar(100) DEFAULT NULL,
  `time` varchar(300) DEFAULT NULL,
  `detail` varchar(1000) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resume
-- ----------------------------
INSERT INTO `resume` VALUES ('9', '815129025@qq.com', '热门兼职', '话务客服', '北京大胡同', '233', '身高170，男，ssssssssss', '2000-3000', '下周五下午到晚上', '轻松不累', '有效');
INSERT INTO `resume` VALUES ('12', '815129029@qq.com', '热门兼职', '促销导购', '北京大胡同', '99', '身高170，男，sssssssss', '2000-3000', '下周五下午到晚上', '严重', '下线');
INSERT INTO `resume` VALUES ('13', '815129029@qq.com', '跑腿办事', '车票代购', '北京大胡', '88', '身高170，男，sdsf', '2000-3000', '下周五下午到晚上', '投影仪损坏非常严重', '有效');
INSERT INTO `resume` VALUES ('14', '815129029@qq.com', '跑腿办事', '宠物寄养', '北京大胡同', '60', '身高170，男，mmmmmm', '2000-3000', '下周五下午到晚上', '投影仪损坏非常严重', '下线');
INSERT INTO `resume` VALUES ('15', '815129029@qq.com', '热门兼职', '打包分拣', '北京大胡同', '90', '身高170，男，sssssssss', '2000-3000', '下周五下午到晚上', '轻松不累', '下线');
INSERT INTO `resume` VALUES ('16', '815129029@qq.com', '简单易做', '充场', '北京大胡同', '67', '身高170，男，sssssssss', '2000-3000', '下周五下午到晚上', '投影仪损坏非常严重', '下线');
INSERT INTO `resume` VALUES ('17', '815129029@qq.com', '演艺达人', '演出', '北京大胡同', '54', '身高170，男，sssssssss', '2000-3000', '下周五下午到晚上', '轻松不累', '下线');
INSERT INTO `resume` VALUES ('20', '815129029@qq.com', '演艺达人', '礼仪模特', '北京大胡同', '60', '身高170，男，mmmmmm', '2000-3000', '下周五下午到晚上', '投影仪损坏非常严重', '下线');
INSERT INTO `resume` VALUES ('28', '815129029@qq.com', '室内推荐', '展会协助', '北京大胡同', '1000人', '要强壮，会使用枪', '10000/天', 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', '灌灌灌灌灌过过过过过过过', '有效');
INSERT INTO `resume` VALUES ('29', '815129029@qq.com', '简单易做', '保洁', '北京大胡同', '56', '身高170，男，ssssssssss', '2000-3000', '下周五下午到晚上', '轻松不累', '有效');
INSERT INTO `resume` VALUES ('30', '815129029@qq.com', '体力达人', '会展执行', '北京大胡同', '30人', '身高170，男，ssssssssss', '2000-3000', '下周五下午到晚上', '投影仪损坏非常严重', '有效');
INSERT INTO `resume` VALUES ('31', '815129029@qq.com', '优秀青年', '社会义工', '北京大胡同', '60', '身高170，男，ssssssssss', '2000-3000', '下周五下午到晚上', '轻松不累', '下线');
INSERT INTO `resume` VALUES ('32', '815129029@qq.com', '专业技能', '美容美发', '北京大胡同', '60', '身高170，男，ssssssssss', '2000-3000', '下周五下午到晚上', '轻松不累', '有效');
INSERT INTO `resume` VALUES ('33', '815129029@qq.com', '特色职位', '软件开发', '北京大胡同', '56', '身高170，男，ssssssssss', '2000-3000', '下周五下午到晚上', '轻松不累', '有效');

-- ----------------------------
-- Table structure for stuinfo
-- ----------------------------
DROP TABLE IF EXISTS `stuinfo`;
CREATE TABLE `stuinfo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `sex` varchar(100) DEFAULT NULL,
  `age` varchar(100) DEFAULT NULL,
  `height` varchar(100) DEFAULT NULL,
  `weight` varchar(100) DEFAULT NULL,
  `school` varchar(40) DEFAULT NULL,
  `rank` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `freeTime` varchar(100) DEFAULT NULL,
  `exJob` varchar(40) DEFAULT NULL,
  `beginYear` int(11) DEFAULT NULL,
  `endYear` int(11) DEFAULT NULL,
  `exSite` varchar(40) DEFAULT NULL,
  `introduce` varchar(1000) DEFAULT NULL,
  `upTime` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stuinfo
-- ----------------------------
INSERT INTO `stuinfo` VALUES ('6', '815129020@qq.com', '刘文祥', '男', '12', '180cm', '60kg', '沈阳航空航天大学', '博士', '17624003770', '每周五下午', '演出', '2012', '2014', '深圳', '柔柔弱弱若若若若若若若若若若若若若若若若', '2018-03-31 23:20');
INSERT INTO `stuinfo` VALUES ('7', '815129027@qq.com', '张三', '男', '19', '175cm', '60kg', '北京大学', '博士', '18644444444', '每周五下午', '话务服务', '2015', '2018', '上海', '为人老实，能干，吃的少，就是吃不起', '2018-03-31 23:20');
INSERT INTO `stuinfo` VALUES ('8', '815129021@qq.com', '刘文祥', '女', '45', '144cm', '60kg', '北京大学', '大专', '17624003770', '周三上午10点到12点', '话务服务', '2014', '2018', '长春', '很帅很帅很帅很帅很帅很帅很帅很帅很帅很帅很帅很帅很帅', '2018-06-19 09:47');
INSERT INTO `stuinfo` VALUES ('9', '515129029@qq.com', '刘文祥', '男', '16', '180cm', '60kg', '沈阳航空航天大学', '本科', '17624003770', '周三上午10点到12点', '演出', '2014', '2018', '上海', 'sadddddddddddddddddddddddd', '2018-04-16 11:18');
INSERT INTO `stuinfo` VALUES ('10', '825129029@qq.com', '刘文祥', '女', '24', '175cm', '60kg', '沈阳航空航天大学', '博士', '17624003770', '每周五下午', '话务服务', '2014', '2018', '成都', '呜呜呜呜无无无无无无无无无无无无无无无无无无无无无无无无无无无', '2018-04-16 14:45');
INSERT INTO `stuinfo` VALUES ('11', '825129021@qq.com', '刘文祥', '女', '16', '175cm', '60kg', '沈阳航空航天大学', '硕士', '17624003770', '周三上午10点到12点', '演出', '2013', '2018', '济南', null, '2018-04-18 19:29');
INSERT INTO `stuinfo` VALUES ('12', '835129029@qq.com', '刘文祥', '女', '12', '175cm', '60kg', null, null, '17624003770', '每周五下午', '演出', null, null, '大连', null, '2018-04-18 21:43');
INSERT INTO `stuinfo` VALUES ('13', '845129029@qq.com', '刘文祥', '男', '24', '175cm', '60kg', null, null, '17624003770', '每周五下午', '话务服务', null, null, '长沙', null, '2018-04-18 21:50');
INSERT INTO `stuinfo` VALUES ('14', '855129029@qq.com', null, null, null, null, null, null, null, null, '每周五下午', '话务服务', null, null, '常州', null, '2018-04-18 21:51');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('70', '815129026@qq.com', '123456', 'company', '删除');
INSERT INTO `user` VALUES ('71', '815129020@qq.com', '111111', 'student', '有效');
INSERT INTO `user` VALUES ('72', '815129029@qq.com', 'aaaaaa', 'company', '有效');
INSERT INTO `user` VALUES ('73', '815129028@qq.com', '123456', 'company', '有效');
INSERT INTO `user` VALUES ('74', '815129025@qq.com', '123456', 'company', '有效');
INSERT INTO `user` VALUES ('80', '615129029@qq.com', '123456', 'company', '有效');
INSERT INTO `user` VALUES ('81', '815129027@qq.com', '123456', 'student', '锁定');
INSERT INTO `user` VALUES ('82', '815129021@qq.com', '123456', 'student', '有效');
INSERT INTO `user` VALUES ('83', '815129022@qq.com', '123456', 'company', '锁定');
INSERT INTO `user` VALUES ('84', '715129029@qq.com', '123456', 'company', '锁定');
INSERT INTO `user` VALUES ('87', '515129029@qq.com', '123456', 'student', '锁定');
INSERT INTO `user` VALUES ('88', '825129029@qq.com', '123456', 'student', '审核');
INSERT INTO `user` VALUES ('89', '825129021@qq.com', '123456', 'student', '审核');
INSERT INTO `user` VALUES ('90', '835129029@qq.com', '123456', 'student', '审核');
INSERT INTO `user` VALUES ('91', '845129029@qq.com', '123456', 'student', '审核');
INSERT INTO `user` VALUES ('92', '855129029@qq.com', '123456', 'student', '审核');
INSERT INTO `user` VALUES ('93', '888888@qq.com', '888888@qq.com', 'admin', '有效');
INSERT INTO `user` VALUES ('94', '815129026@qq.com', '123456', 'student', '审核');
INSERT INTO `user` VALUES ('95', '771231@lagou.com', '123456', 'company', '审核');
