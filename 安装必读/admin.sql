/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : bool

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2016-11-10 09:28:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` tinyint(4) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(16) NOT NULL COMMENT '用户名',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `email` varchar(40) NOT NULL COMMENT '邮箱',
  `phone` int(12) unsigned NOT NULL,
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` int(11) unsigned DEFAULT NULL COMMENT '创建时间',
  `role_id` varchar(250) DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='管理员表';

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '30024167@qq.com', '1705', '1111111111111111', '1478168611', '1');
INSERT INTO `admin` VALUES ('3', 'test', '098f6bcd4621d373cade4e832627b4f6', '30024167@qq.com', '1315336', 'testkkk', '1478184399', '2');

-- ----------------------------
-- Table structure for `config`
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` tinyint(4) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `title` varchar(250) DEFAULT NULL COMMENT '标题',
  `desc` mediumtext COMMENT '描述',
  `keyword` mediumtext COMMENT '关键字',
  `copy` varchar(250) DEFAULT NULL COMMENT '备案',
  `statistics` mediumtext COMMENT '统计',
  `logo` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='配置表';

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES ('1', '12', '1211111', '121111', '1211111111', '121111111', 'Uploads/20161106/581f38bbb93ad.png');

-- ----------------------------
-- Table structure for `log`
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(9) unsigned NOT NULL COMMENT '用户id',
  `name` varchar(40) NOT NULL COMMENT '名字',
  `desc` varchar(200) NOT NULL COMMENT '描述',
  `time` int(11) unsigned NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COMMENT='日志表';

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('21', '1', 'admin', '修改 [ 网站设置 ] ', '1478441130');
INSERT INTO `log` VALUES ('22', '1', 'admin', '修改 [ 网站设置 ] ', '1478441140');
INSERT INTO `log` VALUES ('23', '1', 'admin', '修改 [ 网站设置 ] ', '1478441147');
INSERT INTO `log` VALUES ('24', '1', 'admin', '修改 id 为 1 [ 轮播图片 ] ', '1478510890');
INSERT INTO `log` VALUES ('25', '1', 'admin', '修改 id 为 2 [ 轮播图片 ] ', '1478510897');
INSERT INTO `log` VALUES ('26', '1', 'admin', '修改 id 为 3 [ 轮播图片 ] ', '1478510908');
INSERT INTO `log` VALUES ('27', '1', 'admin', '修改 id 为 1 [ 轮播图片 ] ', '1478510919');
INSERT INTO `log` VALUES ('28', '1', 'admin', '删除 [ 安居客采集 ] 权限节点', '1478691992');
INSERT INTO `log` VALUES ('29', '1', 'admin', '删除 [ 链家网采集 ] 权限节点', '1478691996');
INSERT INTO `log` VALUES ('30', '1', 'admin', '删除 [ 百姓网采集 ] 权限节点', '1478692000');
INSERT INTO `log` VALUES ('31', '1', 'admin', '删除 [ 赶集网采集 ] 权限节点', '1478692005');
INSERT INTO `log` VALUES ('32', '1', 'admin', '删除 [ 58同城采集 ] 权限节点', '1478692010');
INSERT INTO `log` VALUES ('33', '1', 'admin', '删除 [ 数据采集 ] 权限节点', '1478692014');
INSERT INTO `log` VALUES ('34', '1', 'admin', '修改 id 为 1 [ 轮播图片 ] ', '1478741214');
INSERT INTO `log` VALUES ('35', '1', 'admin', '删除 id 为 3 [ 轮播图片 ] ', '1478741220');

-- ----------------------------
-- Table structure for `node`
-- ----------------------------
DROP TABLE IF EXISTS `node`;
CREATE TABLE `node` (
  `id` tinyint(4) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(40) NOT NULL COMMENT '节点名称',
  `controller` varchar(40) NOT NULL COMMENT '控制器',
  `action` varchar(40) NOT NULL COMMENT '方法',
  `pid` tinyint(4) unsigned NOT NULL COMMENT '父类id',
  `add_time` int(11) unsigned DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='节点表';

-- ----------------------------
-- Records of node
-- ----------------------------
INSERT INTO `node` VALUES ('4', '权限管理', 'Auth', '', '0', '1478178703');
INSERT INTO `node` VALUES ('5', '管理员列表', 'Admin', 'index', '4', '1478178703');
INSERT INTO `node` VALUES ('6', '管理员日志', 'Log', 'index', '4', '1478178703');
INSERT INTO `node` VALUES ('7', '角色管理', 'Role', 'index', '4', '1478178703');
INSERT INTO `node` VALUES ('8', '权限节点', 'Node', 'index', '4', '1478178703');
INSERT INTO `node` VALUES ('9', '系统管理', '', '', '0', '1478178703');
INSERT INTO `node` VALUES ('11', '系统设置', 'Config', 'index', '9', '1478178703');
INSERT INTO `node` VALUES ('12', '数据库管理', 'Database', '', '0', '1478178703');
INSERT INTO `node` VALUES ('13', '数据库备份', 'Database', '', '12', '1478178703');
INSERT INTO `node` VALUES ('14', '执行SQL', 'Database', 'sql', '12', '1478178703');
INSERT INTO `node` VALUES ('16', '轮播设置', 'Slider', 'index', '9', '1478178703');
INSERT INTO `node` VALUES ('23', '邮箱设置', 'Email', 'index', '9', '1478258011');

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` tinyint(4) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(40) NOT NULL COMMENT '角色名称',
  `node_ids` varchar(250) NOT NULL COMMENT '权限节点id',
  `remark` varchar(200) DEFAULT NULL,
  `add_time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('2', '系统管理员', '9,11,16', '系统管理员。。。', '1478176941');
INSERT INTO `role` VALUES ('3', '数据库管理员', '13,14,15', '数据库管理员', '1478176941');
INSERT INTO `role` VALUES ('4', '系统数据库管理', '10,11,16,13,14,15', '系统数据库管理', '1478178647');
INSERT INTO `role` VALUES ('6', '11', '4,5,6,7,8,9,16,12,15', '111', '1478178720');
INSERT INTO `role` VALUES ('8', 'sql', '12,13,14', 'sql', '1478179393');

-- ----------------------------
-- Table structure for `slider`
-- ----------------------------
DROP TABLE IF EXISTS `slider`;
CREATE TABLE `slider` (
  `id` tinyint(4) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `title` varchar(100) NOT NULL COMMENT '标题',
  `link` varchar(250) DEFAULT NULL COMMENT '链接地址',
  `img` varchar(200) NOT NULL COMMENT '轮播图片',
  `sort_id` tinyint(4) unsigned NOT NULL DEFAULT '10',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示 0 隐藏 1显示',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='轮播表';

-- ----------------------------
-- Records of slider
-- ----------------------------
INSERT INTO `slider` VALUES ('1', 'mui1', 'http://dev.dcloud.net.cn/mui/', 'Uploads/20161106/581f388f61be7.jpg', '10', '1');
INSERT INTO `slider` VALUES ('2', '11', 'http://dev.dcloud.net.cn/mui/', 'Uploads/20161106/581f383d96731.jpg', '10', '1');
