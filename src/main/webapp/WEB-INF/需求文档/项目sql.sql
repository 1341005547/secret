/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : oasubject

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2018-01-28 17:18:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `account_dispatch`
-- ----------------------------
DROP TABLE IF EXISTS `account_dispatch`;
CREATE TABLE `account_dispatch` (
  `a_d_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) DEFAULT NULL,
  `c_d_id` int(11) DEFAULT NULL,
  `a_d_price` double DEFAULT NULL,
  `a_d_explain` varchar(255) DEFAULT NULL,
  `a_d_time` datetime DEFAULT NULL,
  `a_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`a_d_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account_dispatch
-- ----------------------------
INSERT INTO `account_dispatch` VALUES ('2', '5', '1', '123', '大风车', '2018-01-25 17:11:49', '23');
INSERT INTO `account_dispatch` VALUES ('3', '5', '2', '456', '发的萨菲', '2018-01-07 14:20:58', '17');
INSERT INTO `account_dispatch` VALUES ('4', '5', '4', '153', '割发代首', '2018-01-26 14:21:53', '18');
INSERT INTO `account_dispatch` VALUES ('5', '5', '3', '7663', '与他人', '2018-01-18 14:21:56', '19');

-- ----------------------------
-- Table structure for `announcement`
-- ----------------------------
DROP TABLE IF EXISTS `announcement`;
CREATE TABLE `announcement` (
  `Announcement_id` int(11) NOT NULL AUTO_INCREMENT,
  `Announcement_title` varchar(255) DEFAULT NULL,
  `Announcement_content` varchar(255) DEFAULT NULL,
  `u_id` int(11) DEFAULT NULL,
  `Announcement_create_time` datetime DEFAULT NULL,
  `Announcement_type` int(11) unsigned zerofill DEFAULT NULL,
  PRIMARY KEY (`Announcement_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of announcement
-- ----------------------------
INSERT INTO `announcement` VALUES ('1', '项目开发规范说明书', '1.请各位组员共同遵守。2.遵守命名规范。3.遵守方法名规范。', '1', '2015-01-05 00:00:00', '00000000000');
INSERT INTO `announcement` VALUES ('2', '组员协议书', '1.请各位组员共同遵守。2.遵守命名规范。3.遵守方法名规范。', '1', '2018-01-04 12:49:17', '00000000000');
INSERT INTO `announcement` VALUES ('3', '共同开发协议书', '1.请各位组员共同遵守。2.遵守命名规范。3.遵守方法名规范。', '2', '2018-01-10 12:49:55', '00000000000');
INSERT INTO `announcement` VALUES ('14', '快乐寒假快乐寒假', '萨达是电饭锅 第三方第三方双方各发送到广东省分工是电饭锅', '1', '2018-01-23 02:20:44', '00000000000');
INSERT INTO `announcement` VALUES ('15', '阿斯达稍等', 'asdasd', '2', '2018-01-22 15:56:05', '00000000000');
INSERT INTO `announcement` VALUES ('16', '法国人和规范V刹保存', 'asdasd', '1', '2018-01-23 05:56:26', '00000000000');
INSERT INTO `announcement` VALUES ('17', '阿斯达稍等', 'asdasd', '2', '2018-01-22 15:56:30', '00000000001');
INSERT INTO `announcement` VALUES ('18', 'asdasdad', 'asdasdsad', '1', '2018-01-22 15:57:43', '00000000001');
INSERT INTO `announcement` VALUES ('19', '阿斯达稍等', 'asdadsdasda', '2', '2018-01-22 16:00:59', '00000000000');
INSERT INTO `announcement` VALUES ('20', '阿斯达稍等', 'asdasdadsa', '1', '2018-01-22 16:06:35', '00000000000');
INSERT INTO `announcement` VALUES ('24', '回归结果', '撒打算打算范德萨发生发的', '2', '2018-01-31 10:20:21', '00000000001');
INSERT INTO `announcement` VALUES ('25', '阿斯达打算', '撒打算打算', '1', '2018-01-22 16:22:30', '00000000000');
INSERT INTO `announcement` VALUES ('26', '阿斯达稍等', '撒大大凤凰居民健康', '2', '2018-01-22 16:29:38', '00000000000');
INSERT INTO `announcement` VALUES ('27', '阿斯达稍等暗暗', '司机将哈哈高峰过后就回家结婚', '1', '2018-01-23 20:44:21', '00000000001');
INSERT INTO `announcement` VALUES ('32', '规划局规划局', '环境法规和结婚过法国红酒分公司答复嘎斯是东风公司的法规', '1', '2018-01-22 19:13:02', '00000000000');
INSERT INTO `announcement` VALUES ('37', '啊实打实大', '地方撒旦挂号费', '1', '2018-01-22 19:36:45', '00000000000');
INSERT INTO `announcement` VALUES ('39', '阿斯达稍等', 'sdfsadfsgdsfgdfg', '1', '2018-01-25 15:21:19', '00000000000');
INSERT INTO `announcement` VALUES ('40', '啊啊啊啊啊啊啊啊啊啊啊啊啊', '反反复复凤飞飞凤飞飞凤飞飞凤飞飞凤飞飞凤飞飞', '1', '2018-01-25 15:27:43', '00000000000');
INSERT INTO `announcement` VALUES ('41', '哈哈哈哈哈哈哈哈哈哈哈哈哈和哈哈', '哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈和哈哈', '1', '2018-01-25 15:38:43', '00000000000');
INSERT INTO `announcement` VALUES ('42', '嘎嘎嘎嘎嘎嘎嘎嘎嘎嘎嘎嘎嘎嘎嘎嘎嘎', '嘎嘎嘎嘎嘎嘎嘎嘎嘎嘎嘎嘎嘎', '1', '2018-01-25 15:41:17', '00000000000');
INSERT INTO `announcement` VALUES ('43', '一样呀呀呀呀呀呀呀呀呀', '同探讨探讨探讨探讨探讨', '1', '2018-01-25 15:57:30', '00000000000');
INSERT INTO `announcement` VALUES ('44', '啦啦啦啦啦啦啦啦啦啦', '了啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦', '1', '2018-01-25 16:01:24', '00000000000');
INSERT INTO `announcement` VALUES ('45', '卡卡卡卡卡卡卡卡卡卡卡卡', '卡卡卡卡卡卡卡卡卡卡卡卡卡卡卡卡卡卡卡卡', '1', '2018-01-25 16:03:51', '00000000000');
INSERT INTO `announcement` VALUES ('46', '啪啪啪啪啪啪', '哦哦哦哦哦哦哦哦哦', '1', '2018-01-25 16:11:37', '00000000000');
INSERT INTO `announcement` VALUES ('47', 'ghhhhhfgh', 'fgddggggggggggggggggggg', '1', '2018-01-26 11:24:10', '00000000000');

-- ----------------------------
-- Table structure for `apply`
-- ----------------------------
DROP TABLE IF EXISTS `apply`;
CREATE TABLE `apply` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `t_id` int(11) NOT NULL,
  `a_even` varchar(255) DEFAULT NULL,
  `a_leave_time` varchar(255) DEFAULT NULL,
  `a_create_time` datetime DEFAULT NULL,
  `a_state` varchar(255) DEFAULT NULL,
  `a_submit` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of apply
-- ----------------------------
INSERT INTO `apply` VALUES ('1', '1', '升职', '', '2018-01-18 09:18:24', '已提交', '1', '3');
INSERT INTO `apply` VALUES ('2', '3', '出差消费', null, '2018-01-22 10:45:23', '新创建', '0', '2');
INSERT INTO `apply` VALUES ('3', '4', '合同到期，申请离职', null, '2018-01-08 11:26:30', '已终止', '1', '1');
INSERT INTO `apply` VALUES ('4', '2', '婚假', '两天', '2018-01-21 14:20:42', '已提交', '1', '5');
INSERT INTO `apply` VALUES ('5', '2', '婚假', '七天', '2018-01-24 16:27:46', '已提交', '0', '9');
INSERT INTO `apply` VALUES ('6', '3', '外出培训', '', '2018-01-23 16:57:52', '已提交', '1', '7');
INSERT INTO `apply` VALUES ('7', '3', '外出培训', '', '2018-01-17 16:59:24', '已提交', '1', '6');
INSERT INTO `apply` VALUES ('8', '5', '缺少办公用品', null, '2018-01-15 17:00:38', '待审批', '1', '4');
INSERT INTO `apply` VALUES ('9', '1', '不能胜任当前工作', null, '2018-01-23 17:03:07', '已审批', '1', '8');
INSERT INTO `apply` VALUES ('10', '2', '大姨妈来了', '三天', '2018-01-02 17:08:21', '已终止', '1', '9');
INSERT INTO `apply` VALUES ('17', '3', '发挥技术的考核分', null, '2018-01-25 16:25:31', '已提交', '1', '5');
INSERT INTO `apply` VALUES ('18', '3', '付款即可', null, '2018-01-25 16:27:03', '已提交', '1', '5');
INSERT INTO `apply` VALUES ('19', '3', '法师打发啊', null, '2018-01-25 16:34:39', '待审批', '1', '5');
INSERT INTO `apply` VALUES ('20', '3', '几个号放假', null, '2018-01-25 16:35:38', '已提交', '1', '5');
INSERT INTO `apply` VALUES ('21', '3', '拉开了；看', null, '2018-01-25 16:37:18', '已提交', '1', '5');
INSERT INTO `apply` VALUES ('22', '3', 'qqqqq', null, '2018-01-25 16:58:48', '已提交', '1', '5');
INSERT INTO `apply` VALUES ('23', '3', '哈哈看见好看', null, '2018-01-25 17:11:49', '已提交', '1', '5');
INSERT INTO `apply` VALUES ('24', '2', '为公司做贡献', null, '2018-01-26 14:07:04', '已提交', '1', '9');
INSERT INTO `apply` VALUES ('25', '2', '房价快速点击付款啦', null, '2018-01-21 14:11:57', '待审批', '1', '9');
INSERT INTO `apply` VALUES ('26', '2', '科技管理卡技术的管理', null, '2018-01-26 14:12:46', '已提交', '1', '8');
INSERT INTO `apply` VALUES ('27', '2', '觉得是国家爱死了', null, '2018-01-26 14:13:08', '待审批', '1', '8');
INSERT INTO `apply` VALUES ('28', '5', '几点撒房间爱', null, '2018-01-21 14:13:38', '已提交', '1', '7');
INSERT INTO `apply` VALUES ('29', '5', '空调格', null, '2018-01-01 14:15:54', '待审批', '1', '7');
INSERT INTO `apply` VALUES ('30', '5', '偶一跳', null, '2018-01-26 14:16:37', '已提交', '1', '6');
INSERT INTO `apply` VALUES ('31', '5', '加咖啡蛋糕', null, '2018-01-26 14:17:03', '已提交', '1', '6');
INSERT INTO `apply` VALUES ('32', '5', '忙不开了； ', null, '2018-01-26 14:17:55', '已提交', '1', '4');
INSERT INTO `apply` VALUES ('33', '5', '可见到了撒娇', null, '2018-01-26 14:18:24', '已提交', '1', '4');
INSERT INTO `apply` VALUES ('34', '5', '进口红酒', null, '2018-01-26 14:19:04', '已提交', '1', '3');
INSERT INTO `apply` VALUES ('35', '5', '你看的复合弓', null, '2018-01-26 14:19:24', '已提交', '1', '3');
INSERT INTO `apply` VALUES ('36', '1', '想换个部门', null, '2018-01-27 09:32:58', '已提交', '1', '4');
INSERT INTO `apply` VALUES ('37', '1', '换个环境', null, '2018-01-27 09:34:27', '已提交', '1', '2');
INSERT INTO `apply` VALUES ('38', '1', '跳跳跳跳', null, '2018-01-08 09:35:29', '待审批', '1', '10');

-- ----------------------------
-- Table structure for `base_statistics`
-- ----------------------------
DROP TABLE IF EXISTS `base_statistics`;
CREATE TABLE `base_statistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) DEFAULT NULL,
  `time` date DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `manual_result` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_statistics
-- ----------------------------
INSERT INTO `base_statistics` VALUES ('1', '1', '2018-05-20', '1', '正常');
INSERT INTO `base_statistics` VALUES ('2', '1', '2018-03-20', '1', '正常');
INSERT INTO `base_statistics` VALUES ('3', '1', '2018-06-20', '1', '正常');
INSERT INTO `base_statistics` VALUES ('4', '1', '2018-07-20', '1', '正常');
INSERT INTO `base_statistics` VALUES ('5', '1', '2018-08-20', '1', '正常');
INSERT INTO `base_statistics` VALUES ('6', '1', '2018-09-20', '1', '正常');
INSERT INTO `base_statistics` VALUES ('7', '1', '2018-10-20', '1', '正常');
INSERT INTO `base_statistics` VALUES ('8', '1', '2018-11-20', '1', '正常');
INSERT INTO `base_statistics` VALUES ('9', '1', '2018-12-20', '1', '正常');
INSERT INTO `base_statistics` VALUES ('10', '1', '2018-02-20', '1', '请假');
INSERT INTO `base_statistics` VALUES ('11', '1', '2018-04-20', '1', '请假');
INSERT INTO `base_statistics` VALUES ('12', '1', '2018-09-20', '1', '请假');
INSERT INTO `base_statistics` VALUES ('13', '1', '2018-10-20', '1', '请假');
INSERT INTO `base_statistics` VALUES ('14', '1', '2018-01-20', '1', '请假');
INSERT INTO `base_statistics` VALUES ('15', '1', '2018-10-20', '1', '请假');
INSERT INTO `base_statistics` VALUES ('16', '1', '2018-01-20', '1', '请假');
INSERT INTO `base_statistics` VALUES ('17', '1', '2018-10-20', '1', '请假');
INSERT INTO `base_statistics` VALUES ('18', '1', '2018-09-20', '1', '早退');
INSERT INTO `base_statistics` VALUES ('19', '1', '2018-01-20', '1', '早退');
INSERT INTO `base_statistics` VALUES ('20', '1', '2018-12-20', '1', '早退');
INSERT INTO `base_statistics` VALUES ('21', '1', '2018-09-20', '1', '早退');
INSERT INTO `base_statistics` VALUES ('22', '1', '2018-01-20', '1', '早退');
INSERT INTO `base_statistics` VALUES ('23', '1', '2018-03-20', '1', '早退');
INSERT INTO `base_statistics` VALUES ('24', '1', '2018-09-20', '1', '早退');
INSERT INTO `base_statistics` VALUES ('25', '1', '2018-11-20', '1', '早退');
INSERT INTO `base_statistics` VALUES ('26', '1', '2018-01-20', '1', '早退');
INSERT INTO `base_statistics` VALUES ('27', '1', '2018-03-20', '1', '早退');
INSERT INTO `base_statistics` VALUES ('28', '1', '2018-12-20', '1', '早退');
INSERT INTO `base_statistics` VALUES ('29', '1', '2018-09-20', '1', '早退');
INSERT INTO `base_statistics` VALUES ('30', '1', '2018-12-20', '1', '早退');
INSERT INTO `base_statistics` VALUES ('31', '1', '2018-03-20', '1', '早退');
INSERT INTO `base_statistics` VALUES ('32', '1', '2018-09-20', '1', '早退');
INSERT INTO `base_statistics` VALUES ('33', '1', '2018-10-20', '1', '早退');
INSERT INTO `base_statistics` VALUES ('34', '1', '2018-09-20', '1', '早退');
INSERT INTO `base_statistics` VALUES ('35', '1', '2018-10-20', '1', '早退');
INSERT INTO `base_statistics` VALUES ('36', '1', '2018-03-20', '1', '早退');
INSERT INTO `base_statistics` VALUES ('37', '1', '2018-09-20', '1', '早退');
INSERT INTO `base_statistics` VALUES ('38', '1', '2018-12-20', '1', '早退');
INSERT INTO `base_statistics` VALUES ('39', '1', '2018-10-20', '1', '早退');
INSERT INTO `base_statistics` VALUES ('40', '1', '2018-09-20', '1', '早退');
INSERT INTO `base_statistics` VALUES ('41', '1', '2018-03-20', '1', '早退');
INSERT INTO `base_statistics` VALUES ('42', '1', '2018-10-20', '1', '早退');
INSERT INTO `base_statistics` VALUES ('43', '1', '2018-08-20', '1', '早退');
INSERT INTO `base_statistics` VALUES ('44', '1', '2018-03-20', '1', '早退');
INSERT INTO `base_statistics` VALUES ('45', '1', '2018-10-20', '1', '早退');
INSERT INTO `base_statistics` VALUES ('46', '1', '2018-03-20', '1', '早退');
INSERT INTO `base_statistics` VALUES ('47', '1', '2018-03-20', '1', '早退');
INSERT INTO `base_statistics` VALUES ('48', '1', '2018-01-23', '1', '迟到');
INSERT INTO `base_statistics` VALUES ('49', '1', '2018-01-27', '1', '旷工');
INSERT INTO `base_statistics` VALUES ('50', '1', '2018-01-28', '1', '旷工');

-- ----------------------------
-- Table structure for `category_dispatch`
-- ----------------------------
DROP TABLE IF EXISTS `category_dispatch`;
CREATE TABLE `category_dispatch` (
  `c_d_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_d_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`c_d_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category_dispatch
-- ----------------------------

-- ----------------------------
-- Table structure for `counduct`
-- ----------------------------
DROP TABLE IF EXISTS `counduct`;
CREATE TABLE `counduct` (
  `counduct_id` int(11) NOT NULL AUTO_INCREMENT,
  `counduct_type` varchar(255) DEFAULT NULL,
  `counduct_title` varchar(255) DEFAULT NULL,
  `counduct_content` varchar(255) DEFAULT NULL,
  `counduct_create_time` datetime DEFAULT NULL,
  `u_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`counduct_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of counduct
-- ----------------------------
INSERT INTO `counduct` VALUES ('1', '请假', '请假的相关规定', '以后请假找组长啦啦啦啦，，，，，', '2018-01-09 18:58:26', '1');
INSERT INTO `counduct` VALUES ('2', '请假', '请假的注意事项', '请假需要先填写请假条条条条，，，，，', '2018-01-19 02:30:28', '1');
INSERT INTO `counduct` VALUES ('3', '出差', '回家的相关规定乐乐乐', '以后出差必须由领导审批批批批批，，，，，', '2018-01-09 02:18:37', '2');
INSERT INTO `counduct` VALUES ('6', '日常', '工作规定', '工作上大家一定要胆大心细，好好工作，认真踏实，脚踏实地，好好干！！！。。', '2018-01-25 03:18:06', '1');
INSERT INTO `counduct` VALUES ('7', '日常', 'saaaaaaa啊啊啊啊啊', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '2018-01-26 03:24:31', '1');
INSERT INTO `counduct` VALUES ('8', '请假', '爱丽舍', '阿里上本科阶段是冰箱内送达ufhiudsfjhdvxbcvnzxbjdfgjsgdagsuijhxdvnhxcvsjdfgj 久旱逢甘霖健康但是看了就发货时间', '2018-01-27 15:18:22', '1');

-- ----------------------------
-- Table structure for `dept`
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept` (
  `d_id` int(11) NOT NULL AUTO_INCREMENT,
  `d_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES ('1', '销售部');
INSERT INTO `dept` VALUES ('2', '研发部');
INSERT INTO `dept` VALUES ('3', '人事部');

-- ----------------------------
-- Table structure for `dispatch`
-- ----------------------------
DROP TABLE IF EXISTS `dispatch`;
CREATE TABLE `dispatch` (
  `dispatch_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) DEFAULT NULL,
  `dispatch_u_id` int(11) DEFAULT NULL,
  `dispatch_create_time` datetime DEFAULT NULL,
  `p_id` int(11) DEFAULT NULL,
  `dispatch_p_id` int(11) DEFAULT NULL,
  `d_id` int(11) DEFAULT NULL,
  `dispatch_d_id` int(11) DEFAULT NULL,
  `a_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`dispatch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dispatch
-- ----------------------------
INSERT INTO `dispatch` VALUES ('1', '8', null, '2018-01-27 09:43:37', '1', '1', '2', '1', '9');
INSERT INTO `dispatch` VALUES ('2', '4', null, '2018-01-27 09:43:35', '1', '1', '3', '2', '36');
INSERT INTO `dispatch` VALUES ('3', '2', null, '2018-01-27 09:43:33', '1', '1', '2', '3', '37');
INSERT INTO `dispatch` VALUES ('4', '10', null, '2018-01-27 09:43:30', '1', '1', '1', '2', '38');

-- ----------------------------
-- Table structure for `dispatch_apply`
-- ----------------------------
DROP TABLE IF EXISTS `dispatch_apply`;
CREATE TABLE `dispatch_apply` (
  `dispatch_apply_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) DEFAULT NULL,
  `dispatch_apply_p_id` int(11) DEFAULT NULL,
  `dispatch_apply_even` int(11) DEFAULT NULL,
  `dispatch_apply_time` datetime DEFAULT NULL,
  `t_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`dispatch_apply_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dispatch_apply
-- ----------------------------
INSERT INTO `dispatch_apply` VALUES ('1', null, null, null, null, '1');

-- ----------------------------
-- Table structure for `leave`
-- ----------------------------
DROP TABLE IF EXISTS `leave`;
CREATE TABLE `leave` (
  `leave_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) DEFAULT NULL,
  `leave_start_time` datetime DEFAULT NULL,
  `leave_end_time` datetime DEFAULT NULL,
  `leave_content` varchar(255) DEFAULT NULL,
  `t_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`leave_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of leave
-- ----------------------------

-- ----------------------------
-- Table structure for `login`
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `login_id` int(11) NOT NULL AUTO_INCREMENT,
  `login_usercode` varchar(255) DEFAULT NULL,
  `login_password` varchar(255) DEFAULT NULL,
  `u_id` int(255) DEFAULT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of login
-- ----------------------------
INSERT INTO `login` VALUES ('1', 'y00001', 'd9f2bd78801691ee891906b38a6905d0', '1');
INSERT INTO `login` VALUES ('2', 'o00001', '032e906d533b5ce52eab5deb4e90b9b0\r\n032e906d533b5ce52eab5deb4e90b9b0\r\n032e906d533b5ce52eab5deb4e90b9b0\r\n032e906d533b5ce52eab5deb4e90b9b0\r\n032e906d533b5ce52eab5deb4e90b9b0', '2');
INSERT INTO `login` VALUES ('3', 'y00005', 'f55aa30f74357229ec1427215c5664ae', '5');

-- ----------------------------
-- Table structure for `msg_info`
-- ----------------------------
DROP TABLE IF EXISTS `msg_info`;
CREATE TABLE `msg_info` (
  `msg_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) DEFAULT NULL,
  `msg_title` varchar(255) DEFAULT NULL,
  `msg_content` varchar(255) DEFAULT NULL,
  `msg_state` varchar(255) DEFAULT NULL,
  `msg_file` varchar(255) DEFAULT NULL,
  `msg_sendto_u_id` int(11) DEFAULT NULL,
  `msg_create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`msg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of msg_info
-- ----------------------------
INSERT INTO `msg_info` VALUES ('1', '1', '有事', '有事先走半天', '未读', null, '2', '2018-01-11 14:28:00');
INSERT INTO `msg_info` VALUES ('2', '2', '有事', '有事先走半天', '已读', null, '1', '2018-01-25 13:08:43');
INSERT INTO `msg_info` VALUES ('3', '2', '有事', '有事先走', '已读', null, '1', '2018-01-22 00:00:00');
INSERT INTO `msg_info` VALUES ('4', '2', '有事', '有事先走', '已读', null, '1', '2018-01-22 00:00:00');
INSERT INTO `msg_info` VALUES ('5', '2', '有事', '有事先走', '已读', null, '1', '2018-01-22 00:00:00');
INSERT INTO `msg_info` VALUES ('6', '2', '有事', '有事先走', '已读', null, '1', '2018-01-22 00:00:00');
INSERT INTO `msg_info` VALUES ('7', '2', '有事', '有事先走', '已读', null, '1', '2018-01-22 00:00:00');
INSERT INTO `msg_info` VALUES ('8', '2', '有事', '有事先走', '已读', null, '1', '2018-01-22 00:00:00');
INSERT INTO `msg_info` VALUES ('9', '2', '有事', '有事先走', '已读', null, '1', '2018-01-22 00:00:00');
INSERT INTO `msg_info` VALUES ('10', '2', '有事', '有事先走', '已读', null, '1', '2018-01-22 00:00:00');
INSERT INTO `msg_info` VALUES ('11', '2', '有事', '有事先走', '未读', null, '1', '2018-01-22 00:00:00');
INSERT INTO `msg_info` VALUES ('12', '2', '有事', '有事先走', '未读', null, '1', '2018-01-22 00:00:00');
INSERT INTO `msg_info` VALUES ('13', '2', '有事', '有事先走', '未读', null, '1', '2018-01-22 00:00:00');
INSERT INTO `msg_info` VALUES ('14', '2', '有事', '有事先走', '未读', null, '1', '2018-01-22 00:00:00');
INSERT INTO `msg_info` VALUES ('15', '2', '有事', '有事先走', '未读', null, '1', '2018-01-22 00:00:00');
INSERT INTO `msg_info` VALUES ('16', '2', '有事', '有事先走', '未读', null, '1', '2018-01-22 00:00:00');
INSERT INTO `msg_info` VALUES ('17', '2', '有事', '有事先走', '未读', null, '1', '2018-01-22 00:00:00');
INSERT INTO `msg_info` VALUES ('18', '2', '有事', '有事先走', '未读', null, '1', '2018-01-22 00:00:00');
INSERT INTO `msg_info` VALUES ('19', '2', '有事', '有事先走', '未读', null, '1', '2018-01-22 00:00:00');
INSERT INTO `msg_info` VALUES ('20', '2', '有事', '有事先走', '已读', null, '1', '2017-08-22 00:00:00');
INSERT INTO `msg_info` VALUES ('21', '2', '有事', '有事先走', '已读', null, '1', '2017-08-22 00:00:00');
INSERT INTO `msg_info` VALUES ('22', '2', '有事', '有事先走', '已读', null, '1', '2017-08-22 00:00:00');
INSERT INTO `msg_info` VALUES ('23', '2', '有事', '有事先走', '已读', null, '1', '2017-08-22 00:00:00');
INSERT INTO `msg_info` VALUES ('24', '2', '有事', '有事先走', '已读', null, '1', '2017-08-22 00:00:00');
INSERT INTO `msg_info` VALUES ('25', '2', '有事', '有事先走', '已读', null, '1', '2017-08-22 00:00:00');
INSERT INTO `msg_info` VALUES ('26', '2', '有事', '有事先走', '已读', null, '1', '2017-08-22 00:00:00');
INSERT INTO `msg_info` VALUES ('27', '2', '有事', '有事先走', '已读', null, '1', '2017-08-22 00:00:00');
INSERT INTO `msg_info` VALUES ('28', '2', '有事', '有事先走', '已读', null, '1', '2017-08-22 00:00:00');
INSERT INTO `msg_info` VALUES ('29', '2', '有事', '有事先走', '已读', null, '1', '2017-08-22 00:00:00');
INSERT INTO `msg_info` VALUES ('30', '2', '有事', '有事先走', '已读', null, '1', '2017-08-22 00:00:00');
INSERT INTO `msg_info` VALUES ('31', '2', '有事', '有事先走', '已读', null, '1', '2017-08-22 00:00:00');
INSERT INTO `msg_info` VALUES ('32', '2', '有事', '有事先走', '已读', null, '1', '2017-08-22 00:00:00');
INSERT INTO `msg_info` VALUES ('33', '2', '有事', '有事先走', '已读', null, '1', '2017-08-22 00:00:00');
INSERT INTO `msg_info` VALUES ('34', '2', '有事', '有事先走', '已读', null, '1', '2017-08-22 00:00:00');
INSERT INTO `msg_info` VALUES ('35', '2', '有事', '有事先走', '已读', null, '1', '2017-08-22 00:00:00');
INSERT INTO `msg_info` VALUES ('36', '1', 'ceshi', 'ceshi', '未读', null, '2', '2018-01-25 15:01:01');
INSERT INTO `msg_info` VALUES ('37', '1', 'ceshi', 'ceshi', '未读', null, '2', '2018-01-25 15:43:48');

-- ----------------------------
-- Table structure for `note`
-- ----------------------------
DROP TABLE IF EXISTS `note`;
CREATE TABLE `note` (
  `n_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) DEFAULT NULL,
  `n_title` varchar(255) DEFAULT NULL,
  `n_content` varchar(255) DEFAULT NULL,
  `n_deal_time` datetime DEFAULT NULL,
  `n_update_time` datetime DEFAULT NULL,
  `n_create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`n_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of note
-- ----------------------------

-- ----------------------------
-- Table structure for `oa_manual_sign`
-- ----------------------------
DROP TABLE IF EXISTS `oa_manual_sign`;
CREATE TABLE `oa_manual_sign` (
  `oms_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) DEFAULT NULL,
  `oms_start_time` datetime DEFAULT NULL,
  `oms_end_time` datetime DEFAULT NULL,
  `oms_state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`oms_id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_manual_sign
-- ----------------------------
INSERT INTO `oa_manual_sign` VALUES ('1', '1', '2018-01-10 08:18:12', '2018-01-10 17:19:08', '1');
INSERT INTO `oa_manual_sign` VALUES ('2', '2', '2018-01-11 08:20:54', '2018-01-11 17:21:03', '2');
INSERT INTO `oa_manual_sign` VALUES ('3', '2', '2018-01-10 18:56:41', '2018-01-12 18:56:46', '3');
INSERT INTO `oa_manual_sign` VALUES ('4', '2', '2018-01-08 18:56:57', '2018-01-09 18:57:00', '4');
INSERT INTO `oa_manual_sign` VALUES ('5', '2', '2018-01-01 18:57:19', '2018-01-01 18:57:24', '5');
INSERT INTO `oa_manual_sign` VALUES ('6', '2', '2018-01-01 18:57:44', '2018-01-06 18:57:47', '6');
INSERT INTO `oa_manual_sign` VALUES ('7', '2', '2018-02-01 13:11:07', '2018-02-01 13:11:12', '7');
INSERT INTO `oa_manual_sign` VALUES ('8', '2', '2018-03-01 13:11:28', '2018-03-01 13:11:33', '1');
INSERT INTO `oa_manual_sign` VALUES ('9', '2', '2018-04-01 13:11:45', '2018-04-01 13:11:50', '8');
INSERT INTO `oa_manual_sign` VALUES ('10', '2', '2018-05-01 13:12:02', '2018-05-01 13:12:10', '9');
INSERT INTO `oa_manual_sign` VALUES ('11', '2', '2018-06-01 13:12:20', '2018-06-01 13:12:27', '10');
INSERT INTO `oa_manual_sign` VALUES ('12', '2', '2018-07-01 13:12:41', '2018-07-01 13:12:53', '11');
INSERT INTO `oa_manual_sign` VALUES ('13', '2', '2018-08-01 13:13:04', '2018-08-22 13:13:19', '12');
INSERT INTO `oa_manual_sign` VALUES ('14', '2', '2018-09-22 13:13:34', '2018-09-22 13:13:40', '1');
INSERT INTO `oa_manual_sign` VALUES ('15', '2', '2018-10-22 13:14:00', '2018-10-22 13:14:05', '2');
INSERT INTO `oa_manual_sign` VALUES ('16', '2', '2018-11-22 13:14:24', '2018-11-22 13:14:30', '3');
INSERT INTO `oa_manual_sign` VALUES ('17', '2', '2018-12-22 13:14:50', '2018-12-22 13:14:57', '4');
INSERT INTO `oa_manual_sign` VALUES ('18', '2', '2018-07-22 15:52:29', '2018-07-22 15:52:37', '5');
INSERT INTO `oa_manual_sign` VALUES ('74', '1', '2018-01-25 15:24:49', '2018-01-25 15:24:54', '1');
INSERT INTO `oa_manual_sign` VALUES ('90', '1', '2018-01-26 12:02:35', '2018-01-26 14:16:09', '2');
INSERT INTO `oa_manual_sign` VALUES ('91', '2', '2018-01-26 14:17:15', '2018-01-26 14:17:19', '2');
INSERT INTO `oa_manual_sign` VALUES ('93', '1', '2018-01-27 13:12:36', '2018-01-27 13:12:38', '2');
INSERT INTO `oa_manual_sign` VALUES ('94', '1', '2018-01-28 16:56:23', '2018-01-28 16:56:26', '2');

-- ----------------------------
-- Table structure for `operation`
-- ----------------------------
DROP TABLE IF EXISTS `operation`;
CREATE TABLE `operation` (
  `operation_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) DEFAULT NULL,
  `operation_even` varchar(255) DEFAULT NULL,
  `operation_time` datetime DEFAULT NULL,
  PRIMARY KEY (`operation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2282 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation
-- ----------------------------
INSERT INTO `operation` VALUES ('2253', '1', '添加员工', '2018-01-25 15:45:55');
INSERT INTO `operation` VALUES ('2254', '1', '添加员工', '2018-01-25 15:47:10');
INSERT INTO `operation` VALUES ('2255', '1', '添加员工', '2018-01-25 15:47:28');
INSERT INTO `operation` VALUES ('2256', '1', '添加员工', '2018-01-25 16:01:24');
INSERT INTO `operation` VALUES ('2258', '1', '添加公告', '2018-01-25 16:11:37');
INSERT INTO `operation` VALUES ('2259', '1', '添加守则', '2018-01-25 16:12:01');
INSERT INTO `operation` VALUES ('2260', '1', '删除公告', '2018-01-25 16:29:20');
INSERT INTO `operation` VALUES ('2261', '1', '删除登陆日志', '2018-01-25 16:29:36');
INSERT INTO `operation` VALUES ('2262', '1', '删除操作日志', '2018-01-25 16:29:59');
INSERT INTO `operation` VALUES ('2263', '1', '删除守则', '2018-01-25 16:30:14');
INSERT INTO `operation` VALUES ('2264', '1', '修改公告', '2018-01-25 16:40:04');
INSERT INTO `operation` VALUES ('2265', '1', '修改守则', '2018-01-25 16:40:53');
INSERT INTO `operation` VALUES ('2266', '1', '修改守则', '2018-01-26 10:56:55');
INSERT INTO `operation` VALUES ('2267', '1', '添加公告', '2018-01-26 11:24:10');
INSERT INTO `operation` VALUES ('2268', '1', '添加守则', '2018-01-26 11:24:32');
INSERT INTO `operation` VALUES ('2269', '1', null, '2018-01-27 14:09:38');
INSERT INTO `operation` VALUES ('2270', '1', null, '2018-01-27 14:11:08');
INSERT INTO `operation` VALUES ('2271', '1', '删除登陆日志', '2018-01-27 14:12:34');
INSERT INTO `operation` VALUES ('2272', '1', '删除登陆日志', '2018-01-27 14:12:38');
INSERT INTO `operation` VALUES ('2273', '1', '删除登陆日志', '2018-01-27 14:12:40');
INSERT INTO `operation` VALUES ('2274', '1', '修改守则', '2018-01-27 14:13:05');
INSERT INTO `operation` VALUES ('2275', '1', '修改守则', '2018-01-27 14:13:16');
INSERT INTO `operation` VALUES ('2276', '1', '修改守则', '2018-01-27 14:13:24');
INSERT INTO `operation` VALUES ('2277', '1', '添加守则', '2018-01-27 15:18:22');
INSERT INTO `operation` VALUES ('2278', '1', '修改公告', '2018-01-27 16:46:51');
INSERT INTO `operation` VALUES ('2279', '1', null, '2018-01-27 17:59:55');
INSERT INTO `operation` VALUES ('2280', '1', null, '2018-01-28 16:56:23');
INSERT INTO `operation` VALUES ('2281', '1', null, '2018-01-28 16:56:26');

-- ----------------------------
-- Table structure for `permission`
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `permission_id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`permission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('1', 'admin');
INSERT INTO `permission` VALUES ('2', 'admin');
INSERT INTO `permission` VALUES ('3', 'admin');
INSERT INTO `permission` VALUES ('4', 'admin');

-- ----------------------------
-- Table structure for `process`
-- ----------------------------
DROP TABLE IF EXISTS `process`;
CREATE TABLE `process` (
  `process_id` int(11) NOT NULL AUTO_INCREMENT,
  `a_id` int(11) DEFAULT NULL,
  `process_deal_u_id` int(11) DEFAULT NULL,
  `process_next_u_id` int(11) DEFAULT NULL,
  `process_state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`process_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of process
-- ----------------------------
INSERT INTO `process` VALUES ('1', '25', '6', '5', '未完成');
INSERT INTO `process` VALUES ('2', '27', '7', '5', '未完成');
INSERT INTO `process` VALUES ('3', '8', '3', '5', '未完成');
INSERT INTO `process` VALUES ('5', '19', '6', '5', '已审核');
INSERT INTO `process` VALUES ('6', '38', '7', '5', '未完成');
INSERT INTO `process` VALUES ('7', '9', '6', '5', '已审批');

-- ----------------------------
-- Table structure for `professional`
-- ----------------------------
DROP TABLE IF EXISTS `professional`;
CREATE TABLE `professional` (
  `Professional_id` int(11) NOT NULL AUTO_INCREMENT,
  `Professional_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Professional_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of professional
-- ----------------------------
INSERT INTO `professional` VALUES ('1', '员工');
INSERT INTO `professional` VALUES ('2', '营销部经理');
INSERT INTO `professional` VALUES ('3', '项目开发部经理');
INSERT INTO `professional` VALUES ('4', '人事部经理');
INSERT INTO `professional` VALUES ('5', '总经理');

-- ----------------------------
-- Table structure for `result_apply`
-- ----------------------------
DROP TABLE IF EXISTS `result_apply`;
CREATE TABLE `result_apply` (
  `r_a_id` int(11) NOT NULL AUTO_INCREMENT,
  `a_id` int(11) DEFAULT NULL,
  `r__a_deal_user` int(11) DEFAULT NULL,
  `r_a_result` varchar(255) DEFAULT NULL,
  `r_a_opinion` varchar(255) DEFAULT NULL,
  `r_a_deal_time` datetime DEFAULT NULL,
  PRIMARY KEY (`r_a_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of result_apply
-- ----------------------------
INSERT INTO `result_apply` VALUES ('1', '1', '1', '通过', '此人平时比较努力，给予批准', '2018-01-09 09:39:38');
INSERT INTO `result_apply` VALUES ('2', '1', '2', '不通过', '我没看到', '2018-01-10 09:41:06');
INSERT INTO `result_apply` VALUES ('4', '10', '6', '拒绝', '这点屁事还请假', '2018-01-23 20:34:54');
INSERT INTO `result_apply` VALUES ('5', '23', '7', '打回', 'gfsdgsdgdsf', '2018-01-26 12:22:04');
INSERT INTO `result_apply` VALUES ('6', '29', '1', '通过', '审核28', '2018-01-26 15:20:07');
INSERT INTO `result_apply` VALUES ('7', '19', '7', '通过', '通过结果测试', '2018-01-26 17:38:33');
INSERT INTO `result_apply` VALUES ('8', '38', '7', '通过', '调度测试', '2018-01-27 17:44:16');
INSERT INTO `result_apply` VALUES ('9', '9', '6', '通过', '撒旦飞洒地方', '2018-01-28 12:04:07');
INSERT INTO `result_apply` VALUES ('10', '9', '1', '通过', '结果看了撒娇的了国家爱丽丝；的结果', '2018-01-28 12:09:48');
INSERT INTO `result_apply` VALUES ('11', '9', '1', '通过', '法撒旦法师', '2018-01-28 12:14:52');

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `r_id` int(11) NOT NULL AUTO_INCREMENT,
  `r_name` varchar(255) DEFAULT NULL,
  `r_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '普通角色', '2');
INSERT INTO `role` VALUES ('2', 'admin', '2');
INSERT INTO `role` VALUES ('3', '管理员角色', '2');
INSERT INTO `role` VALUES ('4', '用户表删除', '2');

-- ----------------------------
-- Table structure for `role_permission`
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission` (
  `r_p_id` int(11) NOT NULL AUTO_INCREMENT,
  `r_id` int(11) DEFAULT NULL,
  `permission_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`r_p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES ('1', '1', '1');
INSERT INTO `role_permission` VALUES ('2', '1', '2');
INSERT INTO `role_permission` VALUES ('3', '1', '3');

-- ----------------------------
-- Table structure for `scheduledept`
-- ----------------------------
DROP TABLE IF EXISTS `scheduledept`;
CREATE TABLE `scheduledept` (
  `scheduledept_id` int(11) NOT NULL AUTO_INCREMENT,
  `scheduledept_content` varchar(255) DEFAULT NULL,
  `scheduledept_start_time` datetime DEFAULT NULL,
  `scheduledept_end_time` datetime DEFAULT NULL,
  `scheduledept_update_time` datetime DEFAULT NULL,
  `scheduledept_create_time` datetime DEFAULT NULL,
  `d_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`scheduledept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of scheduledept
-- ----------------------------
INSERT INTO `scheduledept` VALUES ('1', '公司聚餐', '2018-01-24 14:31:18', '2018-01-27 14:31:26', null, '2018-01-25 14:31:39', '1');
INSERT INTO `scheduledept` VALUES ('2', '年会活动', '2018-01-27 14:32:28', '2018-01-28 20:30:30', '2018-01-26 10:53:42', '2018-01-25 14:32:44', '1');
INSERT INTO `scheduledept` VALUES ('4', '不准早退', '2018-01-25 00:00:00', '2018-01-25 11:00:00', null, '2018-01-25 16:09:57', '1');
INSERT INTO `scheduledept` VALUES ('5', '部门日程', '2018-01-26 20:04:23', '2018-02-01 10:17:04', '2018-01-27 16:29:26', '2018-01-25 16:10:48', '1');
INSERT INTO `scheduledept` VALUES ('6', '公司聚餐不准迟到', '2018-01-26 01:10:00', '2018-01-28 10:10:10', '2018-01-25 17:18:32', '2018-01-25 16:11:42', '1');
INSERT INTO `scheduledept` VALUES ('7', '阿达达', '2018-01-25 00:00:00', '2018-01-27 00:00:00', null, '2018-01-25 16:13:44', '1');
INSERT INTO `scheduledept` VALUES ('8', '极地', '2018-01-26 00:00:00', '2018-01-27 00:00:00', null, '2018-01-25 16:24:05', '1');
INSERT INTO `scheduledept` VALUES ('9', 'test1', '2018-01-17 17:25:36', '2018-01-26 17:25:41', null, '2018-01-25 17:25:45', '2');
INSERT INTO `scheduledept` VALUES ('10', 'test2', '2018-01-23 17:26:03', '2018-01-25 17:26:07', null, '2018-01-25 17:26:19', '2');
INSERT INTO `scheduledept` VALUES ('11', '上班不早退', '2018-01-28 00:00:00', '2018-02-01 00:00:00', '2018-01-27 16:30:50', '2018-01-27 16:30:24', '1');
INSERT INTO `scheduledept` VALUES ('12', '新建', '2018-01-31 00:00:00', '2018-01-31 00:00:00', null, '2018-01-27 18:00:53', '1');

-- ----------------------------
-- Table structure for `scheduleemployees`
-- ----------------------------
DROP TABLE IF EXISTS `scheduleemployees`;
CREATE TABLE `scheduleemployees` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_content` varchar(255) DEFAULT NULL,
  `s_start_time` datetime DEFAULT NULL,
  `s_end_time` datetime DEFAULT NULL,
  `s_update_time` datetime DEFAULT NULL,
  `s_create_time` datetime DEFAULT NULL,
  `u_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of scheduleemployees
-- ----------------------------
INSERT INTO `scheduleemployees` VALUES ('1', null, null, null, null, null, null);
INSERT INTO `scheduleemployees` VALUES ('2', null, null, null, null, null, null);
INSERT INTO `scheduleemployees` VALUES ('3', null, null, null, null, null, null);
INSERT INTO `scheduleemployees` VALUES ('4', null, null, null, null, null, null);
INSERT INTO `scheduleemployees` VALUES ('5', null, null, null, null, null, null);
INSERT INTO `scheduleemployees` VALUES ('6', null, null, null, null, null, null);
INSERT INTO `scheduleemployees` VALUES ('7', null, null, null, null, null, null);
INSERT INTO `scheduleemployees` VALUES ('8', '你好', null, null, null, null, null);
INSERT INTO `scheduleemployees` VALUES ('9', 'test', null, null, null, null, null);
INSERT INTO `scheduleemployees` VALUES ('10', 'test', null, null, null, null, null);
INSERT INTO `scheduleemployees` VALUES ('11', 'test', null, null, null, null, null);
INSERT INTO `scheduleemployees` VALUES ('12', 'test', null, null, null, null, null);
INSERT INTO `scheduleemployees` VALUES ('13', 'teds', null, null, null, null, null);
INSERT INTO `scheduleemployees` VALUES ('14', 'teds', null, null, null, null, null);
INSERT INTO `scheduleemployees` VALUES ('15', 'test', null, '2018-02-27 00:00:00', null, '2018-01-22 00:00:00', null);
INSERT INTO `scheduleemployees` VALUES ('16', '你好', null, '2018-02-03 00:00:00', null, '2018-01-25 00:00:00', null);
INSERT INTO `scheduleemployees` VALUES ('17', null, null, null, null, null, null);
INSERT INTO `scheduleemployees` VALUES ('18', null, null, null, null, null, null);
INSERT INTO `scheduleemployees` VALUES ('19', 'test', '2018-01-24 00:00:00', '2018-01-27 00:00:00', null, null, null);
INSERT INTO `scheduleemployees` VALUES ('20', 'test', '2018-01-25 00:00:00', '2018-01-26 00:00:00', null, null, null);
INSERT INTO `scheduleemployees` VALUES ('21', '', '2018-01-20 00:00:00', '2018-01-27 00:00:00', null, null, null);
INSERT INTO `scheduleemployees` VALUES ('22', '你好', '2018-02-14 00:00:00', '2018-03-07 00:00:00', null, null, null);
INSERT INTO `scheduleemployees` VALUES ('23', '节假日不休息', '2018-01-25 00:00:00', '2018-01-31 00:00:00', null, null, null);
INSERT INTO `scheduleemployees` VALUES ('24', '年后毕业', '2018-01-23 00:00:00', '2018-01-24 00:00:00', null, '2018-01-21 00:00:00', null);
INSERT INTO `scheduleemployees` VALUES ('25', '节假日不休息', '2018-01-24 00:00:00', '2018-01-26 00:00:00', null, '2018-01-21 00:00:00', null);
INSERT INTO `scheduleemployees` VALUES ('26', '你好', '2018-01-22 00:00:00', '2018-01-24 00:00:00', null, '2018-01-21 00:00:00', null);
INSERT INTO `scheduleemployees` VALUES ('27', '你好', '2018-01-22 22:04:09', '2018-01-24 04:04:04', null, '2018-01-21 15:24:34', null);
INSERT INTO `scheduleemployees` VALUES ('28', 'test', '2018-01-23 02:04:04', '2018-01-27 04:05:08', null, '2018-01-21 15:24:53', null);
INSERT INTO `scheduleemployees` VALUES ('29', 'test', '2018-01-23 02:04:04', '2018-01-27 04:05:08', null, '2018-01-21 15:30:58', null);
INSERT INTO `scheduleemployees` VALUES ('30', '你好', '2018-01-24 04:07:25', '2018-01-25 21:27:04', null, '2018-01-21 15:31:20', null);
INSERT INTO `scheduleemployees` VALUES ('31', null, null, null, null, '2018-01-21 15:38:12', null);
INSERT INTO `scheduleemployees` VALUES ('32', '周末不休息', '2018-01-24 09:19:30', '2018-01-26 16:20:23', null, '2018-01-21 15:38:35', null);
INSERT INTO `scheduleemployees` VALUES ('33', null, null, null, null, '2018-01-21 15:45:36', null);
INSERT INTO `scheduleemployees` VALUES ('34', null, null, null, null, '2018-01-21 15:45:37', null);
INSERT INTO `scheduleemployees` VALUES ('35', 'teds', '2018-01-25 22:17:04', '2018-01-26 16:13:04', null, '2018-01-21 15:45:55', null);
INSERT INTO `scheduleemployees` VALUES ('36', '年后毕业', '2018-01-23 20:20:17', '2018-01-24 14:04:04', null, '2018-01-21 15:50:45', null);
INSERT INTO `scheduleemployees` VALUES ('37', 'test', '2018-01-25 00:00:00', '2018-01-31 00:00:00', null, '2018-01-21 15:51:34', null);
INSERT INTO `scheduleemployees` VALUES ('38', 'test', '2018-01-26 00:00:00', '2018-01-27 00:00:00', null, '2018-01-21 15:56:26', null);
INSERT INTO `scheduleemployees` VALUES ('39', '周末不休息', '2018-01-24 20:02:02', '2018-01-25 21:00:00', null, '2018-01-21 17:26:33', null);
INSERT INTO `scheduleemployees` VALUES ('40', '你好吗', '2018-01-24 21:27:00', '2018-01-25 20:03:00', null, '2018-01-22 09:12:46', null);
INSERT INTO `scheduleemployees` VALUES ('52', '肖申克的救赎', '2018-01-16 17:19:36', '2018-01-23 17:19:42', '2018-01-24 16:33:44', '2018-01-23 17:20:55', '1');
INSERT INTO `scheduleemployees` VALUES ('53', '西部世界', '2018-01-22 00:00:00', '2018-01-24 00:00:00', null, '2018-01-22 17:25:04', '1');
INSERT INTO `scheduleemployees` VALUES ('54', '汉尼拔', '2018-01-27 20:20:09', '2018-01-31 20:14:29', '2018-01-27 17:59:55', '2018-01-24 17:41:47', '1');
INSERT INTO `scheduleemployees` VALUES ('55', '少年汉尼拔', '2018-01-27 17:19:46', '2018-01-28 17:19:50', '2018-01-27 15:23:27', '2018-01-23 17:41:50', '1');
INSERT INTO `scheduleemployees` VALUES ('57', '我的前半生', '2018-01-22 02:02:00', '2018-01-22 04:00:00', null, '2018-01-22 18:19:26', '1');
INSERT INTO `scheduleemployees` VALUES ('58', '你还好吗', '2018-01-23 01:00:00', '2018-01-23 02:00:00', null, '2018-01-23 10:15:44', '1');
INSERT INTO `scheduleemployees` VALUES ('59', '行尸走肉第一季', '2018-01-23 02:00:00', '2018-01-23 02:10:00', null, '2018-01-23 10:16:08', '1');
INSERT INTO `scheduleemployees` VALUES ('60', '哔哩哔哩', '2018-01-23 03:00:00', '2018-01-23 04:00:00', null, '2018-01-23 10:16:45', '1');
INSERT INTO `scheduleemployees` VALUES ('61', '腾讯视频', '2018-01-23 00:00:00', '2018-01-24 00:00:00', null, '2018-01-23 10:16:57', '1');
INSERT INTO `scheduleemployees` VALUES ('62', '行尸走肉第二季', '2018-01-31 17:19:57', '2018-01-26 17:20:15', '2018-01-24 16:59:16', '2018-01-16 17:21:05', '1');
INSERT INTO `scheduleemployees` VALUES ('63', '行尸走肉第三季', '2018-01-24 00:00:00', '2018-01-27 17:20:21', '2018-01-25 11:52:11', '2018-01-18 17:21:09', '1');
INSERT INTO `scheduleemployees` VALUES ('64', '行尸走肉第四季', '2018-01-23 00:00:00', '2018-01-24 00:00:00', null, '2018-01-23 10:18:24', '1');
INSERT INTO `scheduleemployees` VALUES ('66', '权力的游戏第一季', '2018-01-30 17:20:40', '2018-02-09 17:20:45', '2018-01-25 11:52:30', '2018-01-20 17:21:21', '1');
INSERT INTO `scheduleemployees` VALUES ('67', '权利的游戏第二季', '2018-01-23 00:00:00', '2018-01-23 00:00:00', null, '2018-01-23 10:19:11', '1');
INSERT INTO `scheduleemployees` VALUES ('68', '权力的游戏第三季', '2018-01-25 00:00:00', '2018-01-26 00:00:00', '2018-01-25 11:52:44', '2018-01-16 17:21:26', '1');
INSERT INTO `scheduleemployees` VALUES ('69', '权力的游戏第四季', '2018-01-27 00:00:00', '2018-02-06 15:15:57', '2018-01-27 15:16:12', '2018-01-23 10:19:40', '1');
INSERT INTO `scheduleemployees` VALUES ('70', '权力的游戏第五季', '2018-02-12 00:00:00', '2018-02-13 00:00:00', null, '2018-01-23 10:19:56', '1');
INSERT INTO `scheduleemployees` VALUES ('71', '权力的游戏第六季', '2018-02-21 00:00:00', '2018-02-22 00:00:00', null, '2018-01-23 10:20:13', '1');
INSERT INTO `scheduleemployees` VALUES ('72', '权力的游戏第七季', '2018-02-23 00:00:00', '2018-02-28 00:00:00', null, '2018-01-23 10:20:31', '1');
INSERT INTO `scheduleemployees` VALUES ('73', '越狱第一季', '2018-01-23 00:00:00', '2018-01-25 00:00:00', null, '2018-01-23 16:29:28', '1');
INSERT INTO `scheduleemployees` VALUES ('74', '北京欢迎你', '2018-01-27 20:30:00', '2018-01-27 21:00:00', null, '2018-01-23 17:08:17', '1');
INSERT INTO `scheduleemployees` VALUES ('75', '越狱', '2018-01-26 00:00:00', '2018-02-04 00:00:00', null, '2018-01-25 09:46:22', '1');
INSERT INTO `scheduleemployees` VALUES ('78', '越狱第二季', '2018-01-26 00:00:00', '2018-01-31 00:00:00', null, '2018-01-25 09:56:56', '1');
INSERT INTO `scheduleemployees` VALUES ('79', '越狱第三季', '2018-01-27 00:00:00', '2018-01-29 00:00:00', null, '2018-01-25 10:00:53', '1');
INSERT INTO `scheduleemployees` VALUES ('80', '越狱第四季', '2018-01-27 00:00:00', '2018-01-31 00:00:00', null, '2018-01-25 10:02:26', '1');
INSERT INTO `scheduleemployees` VALUES ('81', '越狱第五季', '2018-02-05 00:00:00', '2018-02-07 00:00:00', null, '2018-01-25 10:13:09', '1');
INSERT INTO `scheduleemployees` VALUES ('82', '汉尼拔第一季', '2018-01-25 00:00:00', '2018-01-27 00:00:00', null, '2018-01-25 10:16:38', '1');
INSERT INTO `scheduleemployees` VALUES ('83', '汉尼拔第二季', '2018-02-05 00:00:00', '2018-02-07 00:00:00', null, '2018-01-25 10:24:11', '1');
INSERT INTO `scheduleemployees` VALUES ('84', '汉尼拔第三季', '2018-02-08 00:00:00', '2018-02-10 00:00:00', null, '2018-01-25 10:27:51', '1');
INSERT INTO `scheduleemployees` VALUES ('85', '汉尼拔第四季', '2018-01-26 00:00:00', '2018-02-19 00:00:00', null, '2018-01-25 10:55:17', '1');
INSERT INTO `scheduleemployees` VALUES ('86', '复仇者联盟', '2018-02-06 00:00:00', '2018-02-08 00:00:00', null, '2018-01-25 11:25:26', '1');
INSERT INTO `scheduleemployees` VALUES ('87', '钢铁侠', '2018-01-30 00:00:00', '2018-01-31 00:00:00', null, '2018-01-25 11:27:58', '1');
INSERT INTO `scheduleemployees` VALUES ('88', '雷神', '2018-01-26 00:00:00', '2018-01-27 00:00:00', null, '2018-01-25 11:38:05', '1');
INSERT INTO `scheduleemployees` VALUES ('89', '蜘蛛侠', '2018-02-05 00:00:00', '2018-02-07 00:00:00', null, '2018-01-25 11:39:48', '1');
INSERT INTO `scheduleemployees` VALUES ('90', '蜘蛛侠1', '2018-02-05 00:00:00', '2018-02-07 00:00:00', null, '2018-01-25 11:40:58', '1');
INSERT INTO `scheduleemployees` VALUES ('91', '蜘蛛侠2', '2018-02-05 00:00:00', '2018-02-08 00:00:00', null, '2018-01-25 11:44:14', '1');
INSERT INTO `scheduleemployees` VALUES ('92', '雷神1', '2018-02-05 00:00:00', '2018-02-07 00:00:00', null, '2018-01-25 11:51:19', '1');
INSERT INTO `scheduleemployees` VALUES ('94', '上班不迟到', '2018-01-25 00:00:00', '2018-01-27 00:00:00', null, '2018-01-25 15:55:03', '1');
INSERT INTO `scheduleemployees` VALUES ('95', '汉尼拔123', '2018-01-26 00:00:00', '2018-01-27 00:00:00', null, '2018-01-25 15:57:48', '1');
INSERT INTO `scheduleemployees` VALUES ('96', '汉尼拔', '2018-01-25 00:00:00', '2018-01-27 00:00:00', null, '2018-01-25 16:01:27', '1');

-- ----------------------------
-- Table structure for `thelog`
-- ----------------------------
DROP TABLE IF EXISTS `thelog`;
CREATE TABLE `thelog` (
  `thelog_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) DEFAULT NULL,
  `thelog_login_time` datetime DEFAULT NULL,
  `thelog_out_time` datetime DEFAULT NULL,
  `thelog_ip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`thelog_id`)
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thelog
-- ----------------------------
INSERT INTO `thelog` VALUES ('1', '2', '2017-12-26 12:50:53', '2018-01-26 12:50:57', '192.168.25.1');
INSERT INTO `thelog` VALUES ('2', '1', '2018-01-03 12:51:22', '2018-01-25 12:51:25', '192.168.25.1');
INSERT INTO `thelog` VALUES ('3', '1', '2018-01-03 15:08:37', '2017-12-13 15:08:40', '192.168.31.1');
INSERT INTO `thelog` VALUES ('4', '1', '2018-01-25 14:40:34', '2017-12-13 15:08:04', '192.168.43.99');
INSERT INTO `thelog` VALUES ('58', '1', '2018-01-25 18:22:13', null, '172.16.23.129');
INSERT INTO `thelog` VALUES ('59', '1', '2018-01-25 18:23:16', null, '172.16.23.129');
INSERT INTO `thelog` VALUES ('60', '1', '2018-01-25 18:23:16', null, '172.16.23.129');
INSERT INTO `thelog` VALUES ('62', '1', '2018-01-25 18:59:47', null, '172.16.23.129');
INSERT INTO `thelog` VALUES ('63', '1', '2018-01-25 18:59:47', null, '172.16.23.129');
INSERT INTO `thelog` VALUES ('64', '1', '2018-01-25 19:07:17', null, '172.16.23.129');
INSERT INTO `thelog` VALUES ('65', '1', '2018-01-25 19:12:18', null, '172.16.23.129');
INSERT INTO `thelog` VALUES ('66', '1', '2018-01-25 19:12:18', null, '172.16.23.129');
INSERT INTO `thelog` VALUES ('67', '1', '2018-01-25 19:15:25', null, '172.16.23.129');
INSERT INTO `thelog` VALUES ('68', '1', '2018-01-25 19:15:25', null, '172.16.23.129');
INSERT INTO `thelog` VALUES ('69', '1', '2018-01-25 19:15:40', null, '172.16.23.129');
INSERT INTO `thelog` VALUES ('70', '1', '2018-01-25 19:24:08', null, '172.16.23.129');
INSERT INTO `thelog` VALUES ('71', '1', '2018-01-25 19:24:08', null, '172.16.23.129');
INSERT INTO `thelog` VALUES ('72', '1', '2018-01-25 19:24:14', '2017-12-13 15:08:04', '172.16.23.129');
INSERT INTO `thelog` VALUES ('73', '1', '2018-01-25 19:29:22', null, '172.16.23.129');
INSERT INTO `thelog` VALUES ('74', '1', '2018-01-25 19:29:22', null, '172.16.23.129');
INSERT INTO `thelog` VALUES ('75', '1', '2018-01-25 19:29:32', null, '172.16.23.129');
INSERT INTO `thelog` VALUES ('76', '1', '2018-01-25 19:34:45', null, '172.16.23.129');
INSERT INTO `thelog` VALUES ('77', '1', '2018-01-25 19:34:45', null, '172.16.23.129');
INSERT INTO `thelog` VALUES ('78', '1', '2018-01-25 19:34:55', null, '172.16.23.129');
INSERT INTO `thelog` VALUES ('79', '1', '2018-01-25 19:39:24', null, '172.16.23.129');
INSERT INTO `thelog` VALUES ('80', '1', '2018-01-25 19:39:24', null, '172.16.23.129');
INSERT INTO `thelog` VALUES ('81', '1', '2018-01-25 19:41:40', null, '172.16.23.129');
INSERT INTO `thelog` VALUES ('82', '1', '2018-01-25 19:54:41', null, '172.16.23.129');
INSERT INTO `thelog` VALUES ('83', '1', '2018-01-25 19:54:41', null, '172.16.23.129');
INSERT INTO `thelog` VALUES ('84', '1', '2018-01-25 19:58:04', null, '172.16.23.129');
INSERT INTO `thelog` VALUES ('85', '1', '2018-01-25 19:58:04', null, '172.16.23.129');
INSERT INTO `thelog` VALUES ('86', '1', '2018-01-25 20:01:41', null, '172.16.23.129');
INSERT INTO `thelog` VALUES ('87', '1', '2018-01-25 20:02:19', null, '172.16.23.129');
INSERT INTO `thelog` VALUES ('88', '1', '2018-01-25 20:09:43', null, '172.16.23.129');
INSERT INTO `thelog` VALUES ('89', '1', '2018-01-25 20:11:34', '2018-01-25 20:11:55', '172.16.23.129');
INSERT INTO `thelog` VALUES ('144', '1', '2018-01-26 16:04:48', null, '192.168.43.99');
INSERT INTO `thelog` VALUES ('145', '1', '2018-01-26 16:09:33', null, '192.168.43.99');
INSERT INTO `thelog` VALUES ('146', '1', '2018-01-26 16:13:47', null, '192.168.43.99');
INSERT INTO `thelog` VALUES ('147', '1', '2018-01-26 16:19:01', null, '192.168.43.99');
INSERT INTO `thelog` VALUES ('148', '1', '2018-01-26 16:33:48', null, '192.168.43.99');
INSERT INTO `thelog` VALUES ('149', '1', '2018-01-27 12:58:01', null, '172.16.23.129');
INSERT INTO `thelog` VALUES ('150', '1', '2018-01-27 13:04:32', null, '172.16.23.129');
INSERT INTO `thelog` VALUES ('151', '1', '2018-01-27 13:06:38', null, '172.16.23.129');
INSERT INTO `thelog` VALUES ('152', '1', '2018-01-27 13:09:31', null, '172.16.23.129');
INSERT INTO `thelog` VALUES ('153', '1', '2018-01-27 13:11:39', null, '172.16.23.129');
INSERT INTO `thelog` VALUES ('154', '1', '2018-01-27 13:18:16', null, '172.16.23.129');
INSERT INTO `thelog` VALUES ('155', '1', '2018-01-27 13:22:35', null, '172.16.23.129');
INSERT INTO `thelog` VALUES ('156', '1', '2018-01-27 14:09:19', '2018-01-27 14:09:37', '172.16.23.129');
INSERT INTO `thelog` VALUES ('157', '1', '2018-01-27 14:10:53', '2018-01-27 14:11:08', '172.16.23.129');
INSERT INTO `thelog` VALUES ('159', '1', '2018-01-27 16:39:18', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('160', '1', '2018-01-27 16:39:18', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('161', '1', '2018-01-27 16:46:22', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('162', '1', '2018-01-27 16:46:22', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('163', '1', '2018-01-27 16:56:31', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('164', '1', '2018-01-27 16:56:31', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('165', '1', '2018-01-27 16:57:32', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('166', '2', '2018-01-27 16:57:51', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('167', '1', '2018-01-27 16:59:58', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('168', '1', '2018-01-27 16:59:58', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('169', '1', '2018-01-27 17:00:05', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('170', '2', '2018-01-27 17:00:10', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('171', '1', '2018-01-27 17:23:51', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('172', '1', '2018-01-27 17:23:51', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('173', '1', '2018-01-27 17:28:23', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('174', '1', '2018-01-27 17:28:23', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('175', '1', '2018-01-27 17:30:09', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('176', '1', '2018-01-27 17:30:09', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('177', '1', '2018-01-27 17:32:05', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('178', '1', '2018-01-27 17:32:05', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('179', '1', '2018-01-27 17:39:24', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('180', '1', '2018-01-27 17:39:24', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('181', '1', '2018-01-27 17:39:24', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('182', '1', '2018-01-27 17:44:35', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('183', '1', '2018-01-27 17:44:35', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('184', '1', '2018-01-27 17:44:35', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('185', '1', '2018-01-27 17:46:06', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('186', '1', '2018-01-27 17:46:06', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('187', '1', '2018-01-27 17:46:06', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('188', '1', '2018-01-27 17:59:33', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('189', '1', '2018-01-27 17:59:33', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('190', '1', '2018-01-28 16:56:19', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('191', '1', '2018-01-28 16:56:19', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('192', '1', '2018-01-28 16:58:13', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('193', '1', '2018-01-28 16:58:14', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('194', '1', '2018-01-28 16:59:19', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('195', '1', '2018-01-28 16:59:19', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('196', '1', '2018-01-28 17:03:04', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('197', '1', '2018-01-28 17:03:04', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('198', '1', '2018-01-28 17:04:57', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('199', '1', '2018-01-28 17:04:57', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('200', '5', '2018-01-28 17:08:58', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('201', '5', '2018-01-28 17:08:58', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('202', '5', '2018-01-28 17:11:08', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('203', '5', '2018-01-28 17:11:08', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('204', '5', '2018-01-28 17:13:07', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('205', '5', '2018-01-28 17:13:07', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('206', '1', '2018-01-28 17:14:38', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('207', '1', '2018-01-28 17:14:38', null, '172.16.23.130');

-- ----------------------------
-- Table structure for `type_apply`
-- ----------------------------
DROP TABLE IF EXISTS `type_apply`;
CREATE TABLE `type_apply` (
  `t_id` int(11) NOT NULL AUTO_INCREMENT,
  `t_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of type_apply
-- ----------------------------
INSERT INTO `type_apply` VALUES ('1', '请假');
INSERT INTO `type_apply` VALUES ('2', '报销');
INSERT INTO `type_apply` VALUES ('3', '离职');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `u_id` int(10) NOT NULL AUTO_INCREMENT,
  `u_name` varchar(255) DEFAULT NULL,
  `u_start_time` datetime DEFAULT NULL,
  `u_end_time` datetime DEFAULT NULL,
  `u_phone` varchar(255) DEFAULT NULL,
  `u_sex` varchar(255) DEFAULT NULL,
  `u_img` varchar(255) DEFAULT NULL,
  `u_state` varchar(255) DEFAULT NULL,
  `u_email` varchar(255) DEFAULT NULL,
  `d_id` int(11) DEFAULT NULL,
  `Professional_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '张小花', '2017-11-07 14:01:56', null, '13111111111', '女', 'img/1.jpg', '在职', '', '1', '5');
INSERT INTO `user` VALUES ('2', '管理员', '2009-01-11 14:07:31', null, '13100000000', '男', 'img/a.jpg', '在职', '120596045@qq.com', '2', '1');
INSERT INTO `user` VALUES ('5', '大牛', '2018-01-16 17:06:29', null, '13111111111', '男', 'img/1.jpg', '在职', '333@qq.com', '2', '1');

-- ----------------------------
-- Table structure for `user_role`
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `u_r_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) DEFAULT NULL,
  `r_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`u_r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('1', '2', '2');
INSERT INTO `user_role` VALUES ('2', '2', '3');
INSERT INTO `user_role` VALUES ('3', '2', '1');
INSERT INTO `user_role` VALUES ('4', '1', '2');
