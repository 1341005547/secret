/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : oasubject

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2018-02-07 11:40:10
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account_dispatch
-- ----------------------------
INSERT INTO `account_dispatch` VALUES ('2', '5', '1', '123', '大风车', '2018-01-25 17:11:49', '23');
INSERT INTO `account_dispatch` VALUES ('3', '5', '2', '456', '发的萨菲', '2018-01-07 14:20:58', '17');
INSERT INTO `account_dispatch` VALUES ('4', '5', '4', '153', '割发代首', '2018-01-26 14:21:53', '18');
INSERT INTO `account_dispatch` VALUES ('5', '5', '3', '7663', '与他人', '2018-01-18 14:21:56', '19');
INSERT INTO `account_dispatch` VALUES ('6', '5', '1', '10110', '整合测试', '2018-01-29 15:07:32', '39');
INSERT INTO `account_dispatch` VALUES ('7', '6', '1', '8888', '外出公干报销路费', '2018-01-31 10:56:12', '44');
INSERT INTO `account_dispatch` VALUES ('8', '6', '1', '10110', '外出公干报销礼品费 ', '2018-01-31 12:09:48', '45');
INSERT INTO `account_dispatch` VALUES ('9', '1', '1', '23', '测试', '2018-02-06 10:32:31', '47');

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
INSERT INTO `announcement` VALUES ('1', '项目开发规范说明书', '1.请各位组员共同遵守。2.遵守命名规范。3.遵守方法名规范。', '1', '2015-01-05 00:00:00', '00000000001');
INSERT INTO `announcement` VALUES ('2', '组员协议书', '1.请各位组员共同遵守。2.遵守命名规范。3.遵守方法名规范。', '1', '2018-01-04 12:49:17', '00000000001');
INSERT INTO `announcement` VALUES ('3', '共同开发协议书', '1.请各位组员共同遵守。2.遵守命名规范。3.遵守方法名规范。', '2', '2018-01-10 12:49:55', '00000000000');
INSERT INTO `announcement` VALUES ('14', '快乐寒假快乐寒假2', '萨达是电饭锅 第三方第三方双方各发送到广东省分工是电饭锅222', '1', '2018-01-23 16:20:44', '00000000001');
INSERT INTO `announcement` VALUES ('15', '阿斯达稍等', 'asdasd', '2', '2018-01-22 15:56:05', '00000000000');
INSERT INTO `announcement` VALUES ('16', '法国人和规范V刹保存', 'asdasd', '1', '2018-01-23 05:56:26', '00000000000');
INSERT INTO `announcement` VALUES ('17', '阿斯达稍等', 'asdasd', '2', '2018-01-22 15:56:30', '00000000000');
INSERT INTO `announcement` VALUES ('18', 'asdasdad', 'asdasdsad', '1', '2018-01-22 15:57:43', '00000000000');
INSERT INTO `announcement` VALUES ('19', '阿斯达稍等', 'asdadsdasda', '2', '2018-01-22 16:00:59', '00000000000');
INSERT INTO `announcement` VALUES ('20', '纽交所', '阿里巴巴上市了！！！！！！！！！！', '1', '2018-01-23 06:06:35', '00000000001');
INSERT INTO `announcement` VALUES ('24', '回归结果', '撒打算打算范德萨发生发的', '2', '2018-01-31 10:20:21', '00000000001');
INSERT INTO `announcement` VALUES ('25', '阿斯达打算', '撒打算打算', '1', '2018-01-22 16:22:30', '00000000001');
INSERT INTO `announcement` VALUES ('26', '阿斯达稍等', '撒大大凤凰居民健康', '2', '2018-01-22 16:29:38', '00000000000');
INSERT INTO `announcement` VALUES ('27', '阿斯达稍等暗暗', '司机将哈哈高峰过后就回家结婚', '1', '2018-01-23 20:44:21', '00000000001');
INSERT INTO `announcement` VALUES ('32', '规划局规划局', '环境法规和结婚过法国红酒分公司答复嘎斯是东风公司的法规', '1', '2018-01-22 19:13:02', '00000000001');
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of apply
-- ----------------------------
INSERT INTO `apply` VALUES ('2', '3', '出差消费', null, '2018-01-22 10:45:23', '新创建', '0', '2');
INSERT INTO `apply` VALUES ('3', '4', '合同到期，申请离职', null, '2018-01-08 11:26:30', '已终止', '1', '1');
INSERT INTO `apply` VALUES ('4', '2', '婚假', '两天', '2018-01-21 14:20:42', '已提交', '1', '5');
INSERT INTO `apply` VALUES ('5', '2', '婚假', '七天', '2018-01-24 16:27:46', '已提交', '0', '9');
INSERT INTO `apply` VALUES ('6', '3', '外出培', '', '2018-02-06 15:33:52', '未提交', '0', '1');
INSERT INTO `apply` VALUES ('7', '2', '外出培训', '', '2018-01-17 16:59:24', '已提交', '1', '6');
INSERT INTO `apply` VALUES ('8', '5', '缺少办公用品', null, '2018-01-15 17:00:38', '待审批', '1', '4');
INSERT INTO `apply` VALUES ('9', '1', '不能胜任当前工作', null, '2018-01-23 17:03:07', '已审批', '1', '8');
INSERT INTO `apply` VALUES ('10', '2', '大姨妈来了', '三天', '2018-01-02 17:08:21', '已终止', '1', '9');
INSERT INTO `apply` VALUES ('17', '2', '发挥技术的考核分', null, '2018-01-25 16:25:31', '未审核', '0', '1');
INSERT INTO `apply` VALUES ('18', '2', '付款即可', null, '2018-01-25 16:27:03', '已提交', '1', '5');
INSERT INTO `apply` VALUES ('19', '2', '法师打发啊', null, '2018-01-25 16:34:39', '待审批', '1', '5');
INSERT INTO `apply` VALUES ('20', '2', '几个号放假', null, '2018-01-25 16:35:38', '已提交', '1', '5');
INSERT INTO `apply` VALUES ('21', '2', '拉开了；看', null, '2018-01-25 16:37:18', '已提交', '1', '5');
INSERT INTO `apply` VALUES ('22', '2', 'qqqqq', null, '2018-01-25 16:58:48', '未审核', '0', '1');
INSERT INTO `apply` VALUES ('23', '2', '哈哈看见好看', null, '2018-01-25 17:11:49', '已提交', '1', '5');
INSERT INTO `apply` VALUES ('24', '2', '为公司做贡献', null, '2018-01-26 14:07:04', '已提交', '1', '9');
INSERT INTO `apply` VALUES ('25', '2', '房价快速点击付款啦', null, '2018-01-21 14:11:57', '待审批', '1', '9');
INSERT INTO `apply` VALUES ('26', '2', '科技管理卡技术的管理', null, '2018-01-26 14:12:46', '未审核', '0', '1');
INSERT INTO `apply` VALUES ('27', '2', '觉得是国家爱死了', null, '2018-01-26 14:13:08', '待审批', '1', '8');
INSERT INTO `apply` VALUES ('28', '5', '几点撒房间爱', null, '2018-01-21 14:13:38', '已提交', '1', '7');
INSERT INTO `apply` VALUES ('29', '5', '空调格', null, '2018-01-01 14:15:54', '已审批', '0', '1');
INSERT INTO `apply` VALUES ('30', '5', '偶一跳', null, '2018-01-26 14:16:37', '已提交', '1', '6');
INSERT INTO `apply` VALUES ('31', '5', '加咖啡蛋糕', null, '2018-01-26 14:17:03', '已提交', '1', '6');
INSERT INTO `apply` VALUES ('33', '5', '可见到了撒娇', null, '2018-01-26 14:18:24', '已提交', '1', '4');
INSERT INTO `apply` VALUES ('34', '5', '进口红酒', null, '2018-01-26 14:19:04', '已提交', '1', '3');
INSERT INTO `apply` VALUES ('35', '5', '你看的复合弓', null, '2018-01-26 14:19:24', '已提交', '1', '3');
INSERT INTO `apply` VALUES ('36', '1', '想换个部门', null, '2018-01-27 09:32:58', '已提交', '1', '4');
INSERT INTO `apply` VALUES ('37', '1', '换个环境', null, '2018-01-27 09:34:27', '待审批', '1', '2');
INSERT INTO `apply` VALUES ('38', '1', '跳跳跳跳', null, '2018-01-08 09:35:29', '待审批', '1', '10');
INSERT INTO `apply` VALUES ('39', '3', '整合测试整合测试', null, '2018-01-29 15:06:57', '已提交', '1', '5');
INSERT INTO `apply` VALUES ('40', '3', '申请调任', null, '2018-01-29 15:20:49', '未审核', '1', '5');
INSERT INTO `apply` VALUES ('41', '3', '申请调任', null, '2018-01-29 15:22:21', '未审核', '1', '5');
INSERT INTO `apply` VALUES ('42', '3', '报销', null, '2018-01-29 16:46:54', '未审核', '1', '1');
INSERT INTO `apply` VALUES ('43', '5', '请假', null, '2018-01-29 16:47:12', '未审核', '1', '1');
INSERT INTO `apply` VALUES ('44', '2', '弹框报销单添加测试', null, '2018-01-31 10:56:11', '已提交', '1', '6');
INSERT INTO `apply` VALUES ('45', '2', '弹框报销单添加测试2', null, '2018-01-31 12:09:45', '已提交', '1', '6');
INSERT INTO `apply` VALUES ('46', '3', '总经理测试', null, '2018-02-05 20:26:15', '已提交', '1', '1');
INSERT INTO `apply` VALUES ('47', '3', '测试', null, '2018-02-06 10:32:31', '已提交', '1', '1');
INSERT INTO `apply` VALUES ('48', '4', 'dfsf', null, '2018-02-06 15:32:48', '未审核', '1', '1');
INSERT INTO `apply` VALUES ('49', '1', '申请调任', null, '2018-02-06 15:34:38', '未审核', '1', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;

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
INSERT INTO `base_statistics` VALUES ('24', '1', '2018-02-03', '1', '早退');
INSERT INTO `base_statistics` VALUES ('25', '1', '2018-02-04', '1', '早退');
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
INSERT INTO `base_statistics` VALUES ('51', '1', '2018-01-29', '1', '迟到');
INSERT INTO `base_statistics` VALUES ('52', '1', '2018-02-01', '1', '旷工');
INSERT INTO `base_statistics` VALUES ('53', '1', '2018-02-02', '1', '旷工');
INSERT INTO `base_statistics` VALUES ('54', '1', '2018-02-05', '1', '迟到');
INSERT INTO `base_statistics` VALUES ('102', '1', '2018-02-06', '1', '旷工');

-- ----------------------------
-- Table structure for `category_dispatch`
-- ----------------------------
DROP TABLE IF EXISTS `category_dispatch`;
CREATE TABLE `category_dispatch` (
  `c_d_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_d_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`c_d_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category_dispatch
-- ----------------------------
INSERT INTO `category_dispatch` VALUES ('1', '城际交通费');
INSERT INTO `category_dispatch` VALUES ('2', '市内交通费');
INSERT INTO `category_dispatch` VALUES ('3', '通讯费');
INSERT INTO `category_dispatch` VALUES ('4', '礼品费');
INSERT INTO `category_dispatch` VALUES ('5', '办公费');
INSERT INTO `category_dispatch` VALUES ('6', '交际餐费');
INSERT INTO `category_dispatch` VALUES ('7', '餐补');
INSERT INTO `category_dispatch` VALUES ('8', '住宿费');

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of counduct
-- ----------------------------
INSERT INTO `counduct` VALUES ('1', '请假', '请假的相关规定', '以后请假找组长啦啦啦啦，，，，，', '2018-01-09 18:58:26', '1');
INSERT INTO `counduct` VALUES ('2', '请假', '请假的注意事项', '请假需要先填写请假条条条条，，，，，', '2018-01-19 02:30:28', '1');
INSERT INTO `counduct` VALUES ('6', '日常', '工作规定', '工作上大家一定要胆大心细，好好工作，认真踏实，脚踏实地，好好干！！！。。', '2018-01-25 03:18:06', '1');
INSERT INTO `counduct` VALUES ('7', '日常', 'saaaaaaa啊啊啊啊啊', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '2018-01-26 03:24:31', '1');
INSERT INTO `counduct` VALUES ('8', '请假', '爱丽舍', '阿里上本科阶段是冰箱内送达ufhiudsfjhdvxbcvnzxbjdfgjsgdagsuijhxdvnhxcvsjdfgj 久旱逢甘霖健康但是看了就发货时间', '2018-01-27 15:18:22', '1');
INSERT INTO `counduct` VALUES ('9', '日常', '测试', '测试', '2018-02-06 10:26:10', '1');

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
INSERT INTO `dept` VALUES ('3', '管理部');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dispatch
-- ----------------------------
INSERT INTO `dispatch` VALUES ('1', '1', '1', '2018-01-27 09:43:37', '1', '1', '2', '1', '9');
INSERT INTO `dispatch` VALUES ('4', '10', '5', '2018-01-27 09:43:30', '1', '4', '1', '2', '38');
INSERT INTO `dispatch` VALUES ('5', '5', '6', '2018-01-29 15:20:49', '1', '5', '1', '2', '40');
INSERT INTO `dispatch` VALUES ('6', '1', null, '2018-02-06 15:34:38', '5', '5', '1', '1', '49');

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
  `login_usercode` varchar(100) DEFAULT NULL,
  `login_password` varchar(100) DEFAULT NULL,
  `u_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of login
-- ----------------------------
INSERT INTO `login` VALUES ('1', 'y00001', 'd9f2bd78801691ee891906b38a6905d0', '1');
INSERT INTO `login` VALUES ('5', 'o00001', 'd612e35399d20b963984c81b0f8e8dad', '5');
INSERT INTO `login` VALUES ('6', 'y00005', 'f55aa30f74357229ec1427215c5664ae', '6');
INSERT INTO `login` VALUES ('10', '100010', 'be45e53abfda41defd52573bb2ddbf6e', '10');
INSERT INTO `login` VALUES ('11', '100011', 'be45e53abfda41defd52573bb2ddbf6e', '11');
INSERT INTO `login` VALUES ('15', '100015', 'be45e53abfda41defd52573bb2ddbf6e', '15');
INSERT INTO `login` VALUES ('16', '100016', 'be45e53abfda41defd52573bb2ddbf6e', '16');
INSERT INTO `login` VALUES ('20', '100020', 'be45e53abfda41defd52573bb2ddbf6e', '20');
INSERT INTO `login` VALUES ('21', '100021', 'be45e53abfda41defd52573bb2ddbf6e', '21');
INSERT INTO `login` VALUES ('24', '100024', 'be45e53abfda41defd52573bb2ddbf6e', '24');
INSERT INTO `login` VALUES ('25', '100025', 'be45e53abfda41defd52573bb2ddbf6e', '25');
INSERT INTO `login` VALUES ('27', '100027', 'be45e53abfda41defd52573bb2ddbf6e', '27');
INSERT INTO `login` VALUES ('28', '100028', 'be45e53abfda41defd52573bb2ddbf6e', '28');
INSERT INTO `login` VALUES ('29', '100029', 'be45e53abfda41defd52573bb2ddbf6e', '29');
INSERT INTO `login` VALUES ('30', '100030', 'be45e53abfda41defd52573bb2ddbf6e', '30');
INSERT INTO `login` VALUES ('31', '100031', 'be45e53abfda41defd52573bb2ddbf6e', '31');
INSERT INTO `login` VALUES ('32', '100032', 'be45e53abfda41defd52573bb2ddbf6e', '32');
INSERT INTO `login` VALUES ('33', '100033', 'be45e53abfda41defd52573bb2ddbf6e', '33');
INSERT INTO `login` VALUES ('34', '100034', 'be45e53abfda41defd52573bb2ddbf6e', '34');
INSERT INTO `login` VALUES ('35', '100035', 'be45e53abfda41defd52573bb2ddbf6e', '35');
INSERT INTO `login` VALUES ('36', '100036', 'be45e53abfda41defd52573bb2ddbf6e', '36');
INSERT INTO `login` VALUES ('37', '100037', 'be45e53abfda41defd52573bb2ddbf6e', '37');
INSERT INTO `login` VALUES ('38', '100038', 'be45e53abfda41defd52573bb2ddbf6e', '38');
INSERT INTO `login` VALUES ('39', '100039', 'be45e53abfda41defd52573bb2ddbf6e', '39');
INSERT INTO `login` VALUES ('40', '100040', 'be45e53abfda41defd52573bb2ddbf6e', '40');
INSERT INTO `login` VALUES ('41', '100041', 'be45e53abfda41defd52573bb2ddbf6e', '41');
INSERT INTO `login` VALUES ('42', '100042', 'be45e53abfda41defd52573bb2ddbf6e', '42');
INSERT INTO `login` VALUES ('43', '100043', 'be45e53abfda41defd52573bb2ddbf6e', '43');
INSERT INTO `login` VALUES ('44', '100044', 'be45e53abfda41defd52573bb2ddbf6e', '44');
INSERT INTO `login` VALUES ('45', '100045', 'be45e53abfda41defd52573bb2ddbf6e', '45');
INSERT INTO `login` VALUES ('46', '100046', 'be45e53abfda41defd52573bb2ddbf6e', '46');
INSERT INTO `login` VALUES ('47', '100047', 'be45e53abfda41defd52573bb2ddbf6e', '47');
INSERT INTO `login` VALUES ('48', '100048', 'be45e53abfda41defd52573bb2ddbf6e', '48');
INSERT INTO `login` VALUES ('49', '100049', 'be45e53abfda41defd52573bb2ddbf6e', '49');
INSERT INTO `login` VALUES ('50', '100050', 'be45e53abfda41defd52573bb2ddbf6e', '50');
INSERT INTO `login` VALUES ('51', '100051', 'be45e53abfda41defd52573bb2ddbf6e', '51');
INSERT INTO `login` VALUES ('52', '100052', 'be45e53abfda41defd52573bb2ddbf6e', '52');
INSERT INTO `login` VALUES ('53', '100053', 'be45e53abfda41defd52573bb2ddbf6e', '53');
INSERT INTO `login` VALUES ('54', '100054', 'be45e53abfda41defd52573bb2ddbf6e', '54');
INSERT INTO `login` VALUES ('55', '100055', 'be45e53abfda41defd52573bb2ddbf6e', '55');
INSERT INTO `login` VALUES ('56', '100056', 'be45e53abfda41defd52573bb2ddbf6e', '56');
INSERT INTO `login` VALUES ('57', '100057', 'be45e53abfda41defd52573bb2ddbf6e', '57');
INSERT INTO `login` VALUES ('58', '100058', 'be45e53abfda41defd52573bb2ddbf6e', '58');
INSERT INTO `login` VALUES ('59', '100059', 'be45e53abfda41defd52573bb2ddbf6e', '59');
INSERT INTO `login` VALUES ('60', '100060', 'be45e53abfda41defd52573bb2ddbf6e', '60');
INSERT INTO `login` VALUES ('61', '100061', 'be45e53abfda41defd52573bb2ddbf6e', '61');
INSERT INTO `login` VALUES ('62', '100062', 'be45e53abfda41defd52573bb2ddbf6e', '62');
INSERT INTO `login` VALUES ('63', '100063', 'be45e53abfda41defd52573bb2ddbf6e', '63');
INSERT INTO `login` VALUES ('64', '100064', 'be45e53abfda41defd52573bb2ddbf6e', '64');
INSERT INTO `login` VALUES ('65', '100065', 'be45e53abfda41defd52573bb2ddbf6e', '65');
INSERT INTO `login` VALUES ('66', '100066', 'be45e53abfda41defd52573bb2ddbf6e', '66');
INSERT INTO `login` VALUES ('67', '100067', 'be45e53abfda41defd52573bb2ddbf6e', '67');
INSERT INTO `login` VALUES ('70', '100070', 'be45e53abfda41defd52573bb2ddbf6e', '70');
INSERT INTO `login` VALUES ('71', '100071', 'be45e53abfda41defd52573bb2ddbf6e', '71');
INSERT INTO `login` VALUES ('72', '100072', 'be45e53abfda41defd52573bb2ddbf6e', '72');
INSERT INTO `login` VALUES ('73', '100073', 'be45e53abfda41defd52573bb2ddbf6e', '73');
INSERT INTO `login` VALUES ('74', '100074', 'be45e53abfda41defd52573bb2ddbf6e', '74');
INSERT INTO `login` VALUES ('75', '100075', 'be45e53abfda41defd52573bb2ddbf6e', '75');
INSERT INTO `login` VALUES ('76', '100076', 'be45e53abfda41defd52573bb2ddbf6e', '76');
INSERT INTO `login` VALUES ('77', '100077', 'be45e53abfda41defd52573bb2ddbf6e', '77');
INSERT INTO `login` VALUES ('78', '100078', 'be45e53abfda41defd52573bb2ddbf6e', '78');
INSERT INTO `login` VALUES ('79', '100079', 'be45e53abfda41defd52573bb2ddbf6e', '79');
INSERT INTO `login` VALUES ('80', '100080', 'be45e53abfda41defd52573bb2ddbf6e', '80');
INSERT INTO `login` VALUES ('81', '100081', 'be45e53abfda41defd52573bb2ddbf6e', '81');
INSERT INTO `login` VALUES ('82', '100082', 'be45e53abfda41defd52573bb2ddbf6e', '82');
INSERT INTO `login` VALUES ('83', '100083', 'be45e53abfda41defd52573bb2ddbf6e', '83');
INSERT INTO `login` VALUES ('84', '100084', 'be45e53abfda41defd52573bb2ddbf6e', '84');
INSERT INTO `login` VALUES ('85', '100085', 'be45e53abfda41defd52573bb2ddbf6e', '85');
INSERT INTO `login` VALUES ('86', '100086', 'be45e53abfda41defd52573bb2ddbf6e', '86');
INSERT INTO `login` VALUES ('87', '100087', 'be45e53abfda41defd52573bb2ddbf6e', '87');
INSERT INTO `login` VALUES ('88', '100088', 'be45e53abfda41defd52573bb2ddbf6e', '88');
INSERT INTO `login` VALUES ('89', '100089', 'be45e53abfda41defd52573bb2ddbf6e', '89');
INSERT INTO `login` VALUES ('90', '100090', 'be45e53abfda41defd52573bb2ddbf6e', '90');
INSERT INTO `login` VALUES ('91', '100091', 'be45e53abfda41defd52573bb2ddbf6e', '91');
INSERT INTO `login` VALUES ('92', '100092', 'be45e53abfda41defd52573bb2ddbf6e', '92');
INSERT INTO `login` VALUES ('93', '100093', 'be45e53abfda41defd52573bb2ddbf6e', '93');
INSERT INTO `login` VALUES ('94', '100094', 'be45e53abfda41defd52573bb2ddbf6e', '94');
INSERT INTO `login` VALUES ('95', '100095', 'be45e53abfda41defd52573bb2ddbf6e', '95');
INSERT INTO `login` VALUES ('98', '', 'c0cb5f0fcf239ab3d9c1fcd31fff1efc', '98');
INSERT INTO `login` VALUES ('99', '', 'c0cb5f0fcf239ab3d9c1fcd31fff1efc', '12');
INSERT INTO `login` VALUES ('100', 'c00001', '1abed7115bacb07b834d61a54bb31295', '13');
INSERT INTO `login` VALUES ('105', 'g00001', 'fcf9e945d8bd9e188f4a82988e5d614a', '25');

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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

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
INSERT INTO `msg_info` VALUES ('38', '1', 'ceshi', 'ceshi', '未读', null, '2', '2018-01-29 10:04:40');
INSERT INTO `msg_info` VALUES ('39', '1', 'ceshi', 'ceshi', '未读', null, '2', '2018-01-31 09:26:59');
INSERT INTO `msg_info` VALUES ('40', '1', 'ceshi', 'ceshi', '未读', null, '1', '2018-01-31 09:29:30');
INSERT INTO `msg_info` VALUES ('41', '1', 'ceshi', 'ceshi', '未读', null, '1', '2018-01-31 09:31:12');
INSERT INTO `msg_info` VALUES ('42', '1', 'ceshi', 'ceshi', '未读', null, '1', '2018-01-31 09:33:06');
INSERT INTO `msg_info` VALUES ('43', '1', 'ceshi', 'ceshi', '未读', null, '1', '2018-01-31 10:12:21');
INSERT INTO `msg_info` VALUES ('44', '1', 'ceshi', 'ceshi', '未读', null, '1', '2018-01-31 10:30:19');
INSERT INTO `msg_info` VALUES ('45', '1', '测试', 'ceshi', '未读', null, '1', '2018-01-31 10:39:32');
INSERT INTO `msg_info` VALUES ('46', '1', '120', 'dsasadas', '未读', null, null, '2018-02-06 15:56:46');

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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

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
INSERT INTO `oa_manual_sign` VALUES ('17', '5', '2018-12-22 13:14:50', '2018-12-22 13:14:57', '4');
INSERT INTO `oa_manual_sign` VALUES ('18', '2', '2018-07-22 15:52:29', '2018-07-22 15:52:37', '5');
INSERT INTO `oa_manual_sign` VALUES ('74', '1', '2018-01-25 15:24:49', '2018-01-25 15:24:54', '1');
INSERT INTO `oa_manual_sign` VALUES ('90', '1', '2018-01-26 12:02:35', '2018-01-26 14:16:09', '2');
INSERT INTO `oa_manual_sign` VALUES ('91', '2', '2018-01-26 14:17:15', '2018-01-26 14:17:19', '2');
INSERT INTO `oa_manual_sign` VALUES ('93', '1', '2018-01-27 13:12:36', '2018-01-27 13:12:38', '2');
INSERT INTO `oa_manual_sign` VALUES ('94', '1', '2018-01-28 16:56:23', '2018-01-28 16:56:26', '2');
INSERT INTO `oa_manual_sign` VALUES ('95', '1', '2018-01-29 08:56:31', '2018-01-29 08:56:33', '2');
INSERT INTO `oa_manual_sign` VALUES ('96', '1', '2018-02-01 14:31:49', '2018-02-01 14:31:50', '2');
INSERT INTO `oa_manual_sign` VALUES ('97', '1', '2018-02-02 20:41:56', '2018-02-02 20:41:57', '2');
INSERT INTO `oa_manual_sign` VALUES ('98', '1', '2018-02-05 09:11:33', '2018-02-05 09:11:35', '2');
INSERT INTO `oa_manual_sign` VALUES ('99', '5', '2018-02-05 09:12:05', null, '1');
INSERT INTO `oa_manual_sign` VALUES ('100', '1', '2018-02-06 15:41:35', '2018-02-06 15:41:44', '2');

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
) ENGINE=InnoDB AUTO_INCREMENT=2357 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation
-- ----------------------------
INSERT INTO `operation` VALUES ('2253', '1', '添加员工', '2018-01-25 15:45:55');
INSERT INTO `operation` VALUES ('2254', '1', '添加员工', '2018-01-25 15:47:10');
INSERT INTO `operation` VALUES ('2255', '1', '添加员工', '2018-01-25 15:47:28');
INSERT INTO `operation` VALUES ('2256', '1', '添加员工', '2018-01-25 16:01:24');
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
INSERT INTO `operation` VALUES ('2282', '1', null, '2018-01-28 18:13:17');
INSERT INTO `operation` VALUES ('2283', '1', null, '2018-01-28 18:13:35');
INSERT INTO `operation` VALUES ('2284', '1', null, '2018-01-29 08:56:31');
INSERT INTO `operation` VALUES ('2285', '1', null, '2018-01-29 08:56:33');
INSERT INTO `operation` VALUES ('2286', '1', null, '2018-01-29 10:04:40');
INSERT INTO `operation` VALUES ('2287', '1', null, '2018-01-29 10:06:48');
INSERT INTO `operation` VALUES ('2288', '1', null, '2018-01-31 09:26:59');
INSERT INTO `operation` VALUES ('2289', '1', null, '2018-01-31 09:29:30');
INSERT INTO `operation` VALUES ('2290', '1', null, '2018-01-31 09:31:12');
INSERT INTO `operation` VALUES ('2291', '1', null, '2018-01-31 09:33:06');
INSERT INTO `operation` VALUES ('2292', '1', null, '2018-01-31 10:12:21');
INSERT INTO `operation` VALUES ('2293', '1', null, '2018-01-31 10:30:20');
INSERT INTO `operation` VALUES ('2294', '1', null, '2018-01-31 10:39:32');
INSERT INTO `operation` VALUES ('2295', '1', null, '2018-02-01 14:31:49');
INSERT INTO `operation` VALUES ('2296', '1', null, '2018-02-01 14:31:50');
INSERT INTO `operation` VALUES ('2297', '1', null, '2018-02-02 20:41:56');
INSERT INTO `operation` VALUES ('2298', '1', null, '2018-02-02 20:41:57');
INSERT INTO `operation` VALUES ('2299', '1', null, '2018-02-03 15:22:29');
INSERT INTO `operation` VALUES ('2300', '1', null, '2018-02-05 09:11:33');
INSERT INTO `operation` VALUES ('2301', '1', null, '2018-02-05 09:11:35');
INSERT INTO `operation` VALUES ('2302', '5', null, '2018-02-05 09:12:05');
INSERT INTO `operation` VALUES ('2303', '1', null, '2018-02-05 19:22:59');
INSERT INTO `operation` VALUES ('2304', '1', null, '2018-02-05 19:23:06');
INSERT INTO `operation` VALUES ('2305', '1', null, '2018-02-05 20:09:21');
INSERT INTO `operation` VALUES ('2306', '1', null, '2018-02-05 20:10:57');
INSERT INTO `operation` VALUES ('2307', '1', null, '2018-02-05 20:19:07');
INSERT INTO `operation` VALUES ('2308', '6', null, '2018-02-05 20:22:05');
INSERT INTO `operation` VALUES ('2309', '6', null, '2018-02-05 21:00:14');
INSERT INTO `operation` VALUES ('2310', '6', null, '2018-02-05 21:00:43');
INSERT INTO `operation` VALUES ('2311', '6', null, '2018-02-06 08:48:03');
INSERT INTO `operation` VALUES ('2312', '1', null, '2018-02-06 08:58:44');
INSERT INTO `operation` VALUES ('2313', '1', null, '2018-02-06 09:07:04');
INSERT INTO `operation` VALUES ('2314', '1', null, '2018-02-06 09:07:04');
INSERT INTO `operation` VALUES ('2315', '1', '修改公告', '2018-02-06 09:17:33');
INSERT INTO `operation` VALUES ('2316', '1', '修改公告', '2018-02-06 09:17:43');
INSERT INTO `operation` VALUES ('2317', '1', '删除公告', '2018-02-06 09:17:49');
INSERT INTO `operation` VALUES ('2318', '1', '删除登录日志', '2018-02-06 09:17:58');
INSERT INTO `operation` VALUES ('2319', '1', '修改公告', '2018-02-06 09:18:43');
INSERT INTO `operation` VALUES ('2320', '1', '修改公告', '2018-02-06 09:23:12');
INSERT INTO `operation` VALUES ('2321', '1', '删除操作日志', '2018-02-06 09:23:28');
INSERT INTO `operation` VALUES ('2322', '1', '删除守则', '2018-02-06 09:23:40');
INSERT INTO `operation` VALUES ('2323', '1', null, '2018-02-06 10:15:57');
INSERT INTO `operation` VALUES ('2324', '1', null, '2018-02-06 10:16:42');
INSERT INTO `operation` VALUES ('2325', '1', null, '2018-02-06 10:16:42');
INSERT INTO `operation` VALUES ('2326', '1', '添加守则', '2018-02-06 10:26:10');
INSERT INTO `operation` VALUES ('2327', '1', null, '2018-02-06 10:32:31');
INSERT INTO `operation` VALUES ('2328', '1', null, '2018-02-06 10:32:31');
INSERT INTO `operation` VALUES ('2329', '1', null, '2018-02-06 10:47:47');
INSERT INTO `operation` VALUES ('2330', '1', null, '2018-02-06 11:01:40');
INSERT INTO `operation` VALUES ('2331', '1', null, '2018-02-06 11:01:50');
INSERT INTO `operation` VALUES ('2332', '1', null, '2018-02-06 11:03:35');
INSERT INTO `operation` VALUES ('2333', '1', null, '2018-02-06 11:08:43');
INSERT INTO `operation` VALUES ('2334', '1', null, '2018-02-06 11:09:37');
INSERT INTO `operation` VALUES ('2335', '1', null, '2018-02-06 11:09:45');
INSERT INTO `operation` VALUES ('2336', '1', null, '2018-02-06 11:10:23');
INSERT INTO `operation` VALUES ('2337', '23', null, '2018-02-06 11:31:52');
INSERT INTO `operation` VALUES ('2338', '23', null, '2018-02-06 11:31:55');
INSERT INTO `operation` VALUES ('2339', '23', null, '2018-02-06 11:32:00');
INSERT INTO `operation` VALUES ('2340', '1', null, '2018-02-06 11:44:35');
INSERT INTO `operation` VALUES ('2341', '1', null, '2018-02-06 11:44:39');
INSERT INTO `operation` VALUES ('2342', '1', null, '2018-02-06 14:13:26');
INSERT INTO `operation` VALUES ('2343', '1', null, '2018-02-06 14:49:20');
INSERT INTO `operation` VALUES ('2344', '1', null, '2018-02-06 14:49:42');
INSERT INTO `operation` VALUES ('2345', '1', null, '2018-02-06 15:32:48');
INSERT INTO `operation` VALUES ('2346', '1', null, '2018-02-06 15:33:52');
INSERT INTO `operation` VALUES ('2347', '1', null, '2018-02-06 15:34:38');
INSERT INTO `operation` VALUES ('2348', '1', null, '2018-02-06 15:34:38');
INSERT INTO `operation` VALUES ('2349', '1', null, '2018-02-06 15:41:35');
INSERT INTO `operation` VALUES ('2350', '1', null, '2018-02-06 15:41:44');
INSERT INTO `operation` VALUES ('2351', '1', null, '2018-02-06 15:56:46');
INSERT INTO `operation` VALUES ('2352', '1', null, '2018-02-06 16:03:03');
INSERT INTO `operation` VALUES ('2353', '1', null, '2018-02-06 16:03:47');
INSERT INTO `operation` VALUES ('2354', '1', null, '2018-02-06 16:03:59');
INSERT INTO `operation` VALUES ('2355', '1', null, '2018-02-06 16:05:32');
INSERT INTO `operation` VALUES ('2356', '1', null, '2018-02-06 16:07:42');

-- ----------------------------
-- Table structure for `permission`
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `permission_id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`permission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('1', '用户添加');
INSERT INTO `permission` VALUES ('2', '用户删除');
INSERT INTO `permission` VALUES ('3', '用户更改');
INSERT INTO `permission` VALUES ('4', '用户查看');
INSERT INTO `permission` VALUES ('5', '公告添加');
INSERT INTO `permission` VALUES ('6', '公告删除');
INSERT INTO `permission` VALUES ('7', '公告更改');
INSERT INTO `permission` VALUES ('8', '公告查看');
INSERT INTO `permission` VALUES ('9', '出勤记录查看');
INSERT INTO `permission` VALUES ('10', '出勤统计');
INSERT INTO `permission` VALUES ('11', '员工调动');
INSERT INTO `permission` VALUES ('12', '通讯录管理');
INSERT INTO `permission` VALUES ('13', '申请查看');
INSERT INTO `permission` VALUES ('100', '角色设定和分配');
INSERT INTO `permission` VALUES ('101', '权限表格删除操作');
INSERT INTO `permission` VALUES ('102', '部门经理查看统计情况');
INSERT INTO `permission` VALUES ('103', '总经理查看统计情况');
INSERT INTO `permission` VALUES ('104', '人事管理权限');
INSERT INTO `permission` VALUES ('105', '部门管理权限');
INSERT INTO `permission` VALUES ('106', '部门管理添加权限');
INSERT INTO `permission` VALUES ('107', '部门管理修改权限');
INSERT INTO `permission` VALUES ('108', '部门管理删除权限');
INSERT INTO `permission` VALUES ('109', '员工管理权限');
INSERT INTO `permission` VALUES ('110', '员工管理添加权限');
INSERT INTO `permission` VALUES ('111', '员工管理修改权限');
INSERT INTO `permission` VALUES ('112', '员工管理删除权限');
INSERT INTO `permission` VALUES ('113', '员工详情权限');
INSERT INTO `permission` VALUES ('114', '调动管理权限');
INSERT INTO `permission` VALUES ('115', '调动详情权限');
INSERT INTO `permission` VALUES ('116', '通讯录管理权限');
INSERT INTO `permission` VALUES ('117', '通讯录修改权限');
INSERT INTO `permission` VALUES ('118', '申请管理页面权限');
INSERT INTO `permission` VALUES ('119', '部门经理日程权限');
INSERT INTO `permission` VALUES ('120', '系统管理');

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of process
-- ----------------------------
INSERT INTO `process` VALUES ('1', '25', '6', '5', '未完成');
INSERT INTO `process` VALUES ('2', '27', '7', '5', '未完成');
INSERT INTO `process` VALUES ('3', '8', '3', '5', '未完成');
INSERT INTO `process` VALUES ('5', '19', '6', '5', '已审核');
INSERT INTO `process` VALUES ('6', '38', '7', '5', '未完成');
INSERT INTO `process` VALUES ('7', '9', '6', '5', '已审批');
INSERT INTO `process` VALUES ('8', '37', null, '5', '待审批');

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

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
INSERT INTO `result_apply` VALUES ('12', '37', null, '通过', '项目开发部经理调度测试通过', '2018-01-29 15:39:19');
INSERT INTO `result_apply` VALUES ('13', '29', null, '拒绝', '几个路口附近嘎多死了；过分了客户；鲁大师', '2018-01-29 16:26:14');

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `r_id` int(11) NOT NULL AUTO_INCREMENT,
  `r_name` varchar(255) DEFAULT NULL,
  `r_user` int(11) DEFAULT NULL,
  `r_content` varchar(255) DEFAULT NULL,
  `r_create_time` date DEFAULT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '普通用户', '1', '权限极少的普通员工', '2018-01-09');
INSERT INTO `role` VALUES ('2', 'admin', '1', '超级管理员的角色', '2018-01-11');
INSERT INTO `role` VALUES ('3', '小蜜', '1', '用户协助领导处理业务的美女', '2018-01-17');
INSERT INTO `role` VALUES ('4', '高级用户', '1', '用户一定权限的普通员工', '2018-01-13');
INSERT INTO `role` VALUES ('5', '监察', '1', '监控相关领导的行为', '2018-01-18');
INSERT INTO `role` VALUES ('6', '心腹', '1', '领导的得力助手', '2018-01-05');
INSERT INTO `role` VALUES ('7', '无贡献员工', '1', '在管理者心中即将被淘汰的员工', '2018-01-03');
INSERT INTO `role` VALUES ('8', '待考察者', '1', '公司新来的员工', '2018-01-01');
INSERT INTO `role` VALUES ('9', '邰书嶂', '1', '老总小蜜', '2018-01-31');
INSERT INTO `role` VALUES ('11', '值日生', '1', '负责每天的工作环境卫生', '2018-02-03');
INSERT INTO `role` VALUES ('12', '仅可以进入权限', '1', '没有表格删除权限', '2018-02-15');
INSERT INTO `role` VALUES ('13', '小猫咪', '5', '专门抓老鼠', '2018-02-03');
INSERT INTO `role` VALUES ('14', '哈士奇', '5', '看门神器，家家必备的防盗动物', '2018-02-03');
INSERT INTO `role` VALUES ('15', '米老鼠', '5', '偷鸡摸狗，人见人打的一道灰影', '2018-02-03');
INSERT INTO `role` VALUES ('16', '小米', '5', '好吃，好玩，好用', '2018-02-03');
INSERT INTO `role` VALUES ('100', '部长级角色', '1', '拥有部长级别的权限，需要部长级的工作能力', '2018-02-02');
INSERT INTO `role` VALUES ('101', '小组长角色', '1', '部长下级，处理部长下达的命令及具体执行', '2018-02-02');
INSERT INTO `role` VALUES ('102', '高级员工角色', '1', '表现突出的员工，得到上级赏识', '2018-02-02');
INSERT INTO `role` VALUES ('103', '经理级角色', '1', '具有统筹全局，指点江山的能力，是公司的灵魂人物', '2018-02-02');
INSERT INTO `role` VALUES ('104', '新同事', '2', '新来的菜鸟', '2018-02-05');
INSERT INTO `role` VALUES ('105', '老同事', '2', '业务流程熟悉，深得领导认可', '2018-02-06');
INSERT INTO `role` VALUES ('106', '菜鸟', '2', '垃圾技术者', '2018-02-06');
INSERT INTO `role` VALUES ('107', '测试', '1', '测试', '2018-02-06');
INSERT INTO `role` VALUES ('109', '角色2', '1', '干活', '2018-02-06');

-- ----------------------------
-- Table structure for `role_permission`
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission` (
  `r_p_id` int(11) NOT NULL AUTO_INCREMENT,
  `r_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`r_p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES ('1', '1', '1');
INSERT INTO `role_permission` VALUES ('2', '1', '2');
INSERT INTO `role_permission` VALUES ('3', '1', '3');
INSERT INTO `role_permission` VALUES ('4', '2', '2');
INSERT INTO `role_permission` VALUES ('5', '2', '7');
INSERT INTO `role_permission` VALUES ('6', '2', '9');
INSERT INTO `role_permission` VALUES ('7', '3', '4');
INSERT INTO `role_permission` VALUES ('8', '3', '5');
INSERT INTO `role_permission` VALUES ('9', '4', '6');
INSERT INTO `role_permission` VALUES ('10', '4', '10');
INSERT INTO `role_permission` VALUES ('11', '5', '8');
INSERT INTO `role_permission` VALUES ('12', '5', '11');
INSERT INTO `role_permission` VALUES ('13', '6', '12');
INSERT INTO `role_permission` VALUES ('14', '6', '13');
INSERT INTO `role_permission` VALUES ('15', '7', '3');
INSERT INTO `role_permission` VALUES ('16', '7', '4');
INSERT INTO `role_permission` VALUES ('17', '8', '5');
INSERT INTO `role_permission` VALUES ('18', '8', '6');
INSERT INTO `role_permission` VALUES ('27', '9', '1');
INSERT INTO `role_permission` VALUES ('28', '9', '2');
INSERT INTO `role_permission` VALUES ('29', '9', '3');
INSERT INTO `role_permission` VALUES ('30', '9', '7');
INSERT INTO `role_permission` VALUES ('31', '2', '100');
INSERT INTO `role_permission` VALUES ('32', '2', '101');
INSERT INTO `role_permission` VALUES ('35', '11', '10');
INSERT INTO `role_permission` VALUES ('36', '11', '9');
INSERT INTO `role_permission` VALUES ('37', '11', '8');
INSERT INTO `role_permission` VALUES ('38', '11', '13');
INSERT INTO `role_permission` VALUES ('39', '11', '4');
INSERT INTO `role_permission` VALUES ('40', '12', '100');
INSERT INTO `role_permission` VALUES ('41', '13', '2');
INSERT INTO `role_permission` VALUES ('42', '13', '3');
INSERT INTO `role_permission` VALUES ('43', '13', '12');
INSERT INTO `role_permission` VALUES ('44', '14', '12');
INSERT INTO `role_permission` VALUES ('45', '14', '13');
INSERT INTO `role_permission` VALUES ('46', '14', '3');
INSERT INTO `role_permission` VALUES ('47', '15', '2');
INSERT INTO `role_permission` VALUES ('48', '15', '3');
INSERT INTO `role_permission` VALUES ('49', '16', '2');
INSERT INTO `role_permission` VALUES ('50', '16', '3');
INSERT INTO `role_permission` VALUES ('51', '100', '100');
INSERT INTO `role_permission` VALUES ('52', '100', '101');
INSERT INTO `role_permission` VALUES ('53', '100', '102');
INSERT INTO `role_permission` VALUES ('54', '100', '104');
INSERT INTO `role_permission` VALUES ('55', '101', '100');
INSERT INTO `role_permission` VALUES ('56', '100', '118');
INSERT INTO `role_permission` VALUES ('57', '101', '104');
INSERT INTO `role_permission` VALUES ('58', '102', '100');
INSERT INTO `role_permission` VALUES ('59', '103', '100');
INSERT INTO `role_permission` VALUES ('60', '103', '101');
INSERT INTO `role_permission` VALUES ('61', '103', '102');
INSERT INTO `role_permission` VALUES ('62', '103', '103');
INSERT INTO `role_permission` VALUES ('63', '103', '104');
INSERT INTO `role_permission` VALUES ('64', '103', '118');
INSERT INTO `role_permission` VALUES ('65', '104', '13');
INSERT INTO `role_permission` VALUES ('66', '104', '2');
INSERT INTO `role_permission` VALUES ('67', '100', '119');
INSERT INTO `role_permission` VALUES ('68', '103', '119');
INSERT INTO `role_permission` VALUES ('69', '100', '120');
INSERT INTO `role_permission` VALUES ('70', '105', '3');
INSERT INTO `role_permission` VALUES ('71', '105', '12');
INSERT INTO `role_permission` VALUES ('72', '106', '2');
INSERT INTO `role_permission` VALUES ('73', '106', '3');
INSERT INTO `role_permission` VALUES ('74', '107', '7');
INSERT INTO `role_permission` VALUES ('75', '107', '9');
INSERT INTO `role_permission` VALUES ('76', '109', '7');
INSERT INTO `role_permission` VALUES ('77', '109', '9');

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of scheduledept
-- ----------------------------
INSERT INTO `scheduledept` VALUES ('1', '公司聚餐', '2018-02-05 14:30:00', '2018-02-05 17:30:00', '2018-02-05 09:13:42', '2018-01-25 14:31:39', '1');
INSERT INTO `scheduledept` VALUES ('2', '年会活动', '2018-02-06 10:30:00', '2018-02-07 20:30:30', '2018-01-26 10:53:42', '2018-01-25 14:32:44', '1');
INSERT INTO `scheduledept` VALUES ('4', '不准早退', '2018-02-07 11:00:00', '2018-02-07 12:00:00', null, '2018-01-25 16:09:57', '1');
INSERT INTO `scheduledept` VALUES ('5', '公司大扫除', '2018-02-08 10:30:00', '2018-02-08 12:20:00', '2018-01-27 16:29:26', '2018-01-25 16:10:48', '2');
INSERT INTO `scheduledept` VALUES ('6', '公司聚餐不准迟到', '2018-02-04 09:10:00', '2018-02-04 20:10:00', '2018-01-25 17:18:32', '2018-01-25 16:11:42', '1');
INSERT INTO `scheduledept` VALUES ('8', '极地', '2018-02-06 13:00:00', '2018-02-06 15:00:00', null, '2018-01-25 16:24:05', '1');
INSERT INTO `scheduledept` VALUES ('9', 'test1', '2018-02-09 17:25:36', '2018-02-10 19:25:41', null, '2018-01-25 17:25:45', '2');
INSERT INTO `scheduledept` VALUES ('10', 'test2', '2018-02-10 17:26:03', '2018-02-11 17:30:07', null, '2018-01-25 17:26:19', '2');
INSERT INTO `scheduledept` VALUES ('11', '上班不早退', '2018-02-08 08:30:00', '2018-02-08 18:00:00', '2018-01-27 16:30:50', '2018-01-27 16:30:24', '1');
INSERT INTO `scheduledept` VALUES ('12', '年会', '2018-02-01 15:00:00', '2018-02-02 16:00:00', null, '2018-01-27 18:00:53', '1');
INSERT INTO `scheduledept` VALUES ('13', '测试', '2018-02-06 00:00:00', '2018-02-07 00:00:00', null, '2018-02-06 10:34:41', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of scheduleemployees
-- ----------------------------
INSERT INTO `scheduleemployees` VALUES ('52', '肖申克的救赎', '2018-01-16 17:19:36', '2018-01-23 17:19:42', '2018-01-24 16:33:44', '2018-01-23 17:20:55', '1');
INSERT INTO `scheduleemployees` VALUES ('53', '西部世界', '2018-01-22 00:00:00', '2018-01-24 00:00:00', null, '2018-01-22 17:25:04', '1');
INSERT INTO `scheduleemployees` VALUES ('54', '汉尼拔', '2018-01-27 20:20:09', '2018-01-31 20:14:29', '2018-01-27 17:59:55', '2018-01-24 17:41:47', '1');
INSERT INTO `scheduleemployees` VALUES ('55', '少年汉尼拔', '2018-01-27 17:19:46', '2018-01-28 17:19:50', '2018-01-27 15:23:27', '2018-01-23 17:41:50', '1');
INSERT INTO `scheduleemployees` VALUES ('57', '我的前半生', '2018-01-22 02:02:00', '2018-01-22 04:00:00', null, '2018-01-22 18:19:26', '1');
INSERT INTO `scheduleemployees` VALUES ('59', '行尸走肉第一季', '2018-01-23 02:00:00', '2018-01-23 02:10:00', null, '2018-01-23 10:16:08', '1');
INSERT INTO `scheduleemployees` VALUES ('60', '哔哩哔哩', '2018-01-23 03:00:00', '2018-01-23 04:00:00', null, '2018-01-23 10:16:45', '1');
INSERT INTO `scheduleemployees` VALUES ('61', '腾讯视频', '2018-01-23 00:00:00', '2018-01-24 00:00:00', null, '2018-01-23 10:16:57', '1');
INSERT INTO `scheduleemployees` VALUES ('62', '行尸走肉第二季', '2018-01-31 17:19:57', '2018-01-26 17:20:15', '2018-01-24 16:59:16', '2018-01-16 17:21:05', '1');
INSERT INTO `scheduleemployees` VALUES ('63', '行尸走肉第三季', '2018-01-24 00:00:00', '2018-01-27 17:20:21', '2018-01-25 11:52:11', '2018-01-18 17:21:09', '1');
INSERT INTO `scheduleemployees` VALUES ('64', '行尸走肉第四季', '2018-01-23 00:00:00', '2018-01-24 00:00:00', null, '2018-01-23 10:18:24', '1');
INSERT INTO `scheduleemployees` VALUES ('66', '权力的游戏第一季', '2018-01-30 17:20:40', '2018-02-09 17:20:45', '2018-01-25 11:52:30', '2018-01-20 17:21:21', '6');
INSERT INTO `scheduleemployees` VALUES ('67', '权利的游戏第二季', '2018-01-23 00:00:00', '2018-01-23 00:00:00', null, '2018-01-23 10:19:11', '6');
INSERT INTO `scheduleemployees` VALUES ('68', '权力的游戏第三季', '2018-01-25 00:00:00', '2018-01-26 00:00:00', '2018-01-25 11:52:44', '2018-01-16 17:21:26', '6');
INSERT INTO `scheduleemployees` VALUES ('69', '权力的游戏第四季', '2018-01-27 00:00:00', '2018-02-06 15:15:57', '2018-01-27 15:16:12', '2018-01-23 10:19:40', '6');
INSERT INTO `scheduleemployees` VALUES ('70', '权力的游戏第五季', '2018-02-12 00:00:00', '2018-02-13 00:00:00', null, '2018-01-23 10:19:56', '6');
INSERT INTO `scheduleemployees` VALUES ('71', '权力的游戏第六季', '2018-02-21 00:00:00', '2018-02-22 00:00:00', null, '2018-01-23 10:20:13', '5');
INSERT INTO `scheduleemployees` VALUES ('72', '权力的游戏第七季', '2018-02-23 00:00:00', '2018-02-28 00:00:00', null, '2018-01-23 10:20:31', '5');
INSERT INTO `scheduleemployees` VALUES ('73', '越狱第一季', '2018-01-23 00:00:00', '2018-01-25 00:00:00', null, '2018-01-23 16:29:28', '5');
INSERT INTO `scheduleemployees` VALUES ('74', '北京欢迎你', '2018-01-27 20:30:00', '2018-01-27 21:00:00', null, '2018-01-23 17:08:17', '1');
INSERT INTO `scheduleemployees` VALUES ('75', '越狱', '2018-01-26 00:00:00', '2018-02-04 00:00:00', null, '2018-01-25 09:46:22', '5');
INSERT INTO `scheduleemployees` VALUES ('78', '越狱第二季', '2018-01-26 00:00:00', '2018-01-31 00:00:00', null, '2018-01-25 09:56:56', '1');
INSERT INTO `scheduleemployees` VALUES ('79', '越狱第三季', '2018-01-27 00:00:00', '2018-01-29 00:00:00', null, '2018-01-25 10:00:53', '5');
INSERT INTO `scheduleemployees` VALUES ('80', '越狱第四季', '2018-01-27 00:00:00', '2018-01-31 00:00:00', null, '2018-01-25 10:02:26', '1');
INSERT INTO `scheduleemployees` VALUES ('81', '越狱第五季', '2018-02-05 00:00:00', '2018-02-07 00:00:00', null, '2018-01-25 10:13:09', '5');
INSERT INTO `scheduleemployees` VALUES ('82', '汉尼拔第一季', '2018-01-25 00:00:00', '2018-01-27 00:00:00', null, '2018-01-25 10:16:38', '5');
INSERT INTO `scheduleemployees` VALUES ('83', '汉尼拔第二季', '2018-02-03 09:31:00', '2018-02-07 00:00:00', null, '2018-01-25 10:24:11', '5');
INSERT INTO `scheduleemployees` VALUES ('84', '汉尼拔第三季', '2018-02-08 00:00:00', '2018-02-10 00:00:00', null, '2018-01-25 10:27:51', '5');
INSERT INTO `scheduleemployees` VALUES ('85', '汉尼拔第四季', '2018-01-26 00:00:00', '2018-02-19 00:00:00', null, '2018-01-25 10:55:17', '1');
INSERT INTO `scheduleemployees` VALUES ('86', '复仇者联盟', '2018-02-06 00:00:00', '2018-02-08 00:00:00', null, '2018-01-25 11:25:26', '1');
INSERT INTO `scheduleemployees` VALUES ('87', '钢铁侠', '2018-01-30 00:00:00', '2018-01-31 00:00:00', null, '2018-01-25 11:27:58', '6');
INSERT INTO `scheduleemployees` VALUES ('88', '雷神', '2018-01-26 00:00:00', '2018-01-27 00:00:00', null, '2018-01-25 11:38:05', '6');
INSERT INTO `scheduleemployees` VALUES ('89', '蜘蛛侠', '2018-02-05 00:00:00', '2018-02-07 00:00:00', null, '2018-01-25 11:39:48', '6');
INSERT INTO `scheduleemployees` VALUES ('90', '蜘蛛侠1', '2018-02-05 00:00:00', '2018-02-07 00:00:00', null, '2018-01-25 11:40:58', '6');
INSERT INTO `scheduleemployees` VALUES ('91', '蜘蛛侠2', '2018-02-05 00:00:00', '2018-02-08 00:00:00', null, '2018-01-25 11:44:14', '1');
INSERT INTO `scheduleemployees` VALUES ('92', '雷神1', '2018-02-06 14:49:13', '2018-02-07 00:00:00', '2018-02-06 14:49:19', '2018-01-25 11:51:19', '1');
INSERT INTO `scheduleemployees` VALUES ('94', '上班不迟到', '2018-01-25 00:00:00', '2018-01-27 00:00:00', null, '2018-01-25 15:55:03', '1');
INSERT INTO `scheduleemployees` VALUES ('95', '汉尼拔123', '2018-01-26 00:00:00', '2018-01-27 00:00:00', null, '2018-01-25 15:57:48', '6');
INSERT INTO `scheduleemployees` VALUES ('96', '汉尼拔', '2018-01-25 00:00:00', '2018-01-27 00:00:00', null, '2018-01-25 16:01:27', '6');
INSERT INTO `scheduleemployees` VALUES ('97', '项目演示', '2018-01-30 00:00:00', '2018-02-28 00:00:00', null, '2018-01-29 09:53:05', '6');
INSERT INTO `scheduleemployees` VALUES ('98', '测试', '2018-02-07 00:00:00', '2018-02-08 00:00:00', null, '2018-02-06 10:33:44', '1');
INSERT INTO `scheduleemployees` VALUES ('99', '测试1', '2018-02-06 14:47:00', '2018-02-06 19:00:00', null, '2018-02-06 14:46:40', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=657 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thelog
-- ----------------------------
INSERT INTO `thelog` VALUES ('2', '1', '2018-01-03 12:51:22', '2018-01-25 12:51:25', '192.168.25.1');
INSERT INTO `thelog` VALUES ('3', '1', '2018-01-03 15:08:37', '2017-12-13 15:08:40', '192.168.31.1');
INSERT INTO `thelog` VALUES ('4', '1', '2018-01-25 14:40:34', '2017-12-13 15:08:04', '192.168.43.99');
INSERT INTO `thelog` VALUES ('72', '1', '2018-01-25 19:24:14', '2017-12-13 15:08:04', '172.16.23.129');
INSERT INTO `thelog` VALUES ('89', '1', '2018-01-25 20:11:34', '2018-01-25 20:11:55', '172.16.23.129');
INSERT INTO `thelog` VALUES ('156', '1', '2018-01-27 14:09:19', '2018-01-27 14:09:37', '172.16.23.129');
INSERT INTO `thelog` VALUES ('157', '1', '2018-01-27 14:10:53', '2018-01-27 14:11:08', '172.16.23.129');
INSERT INTO `thelog` VALUES ('315', '5', '2018-02-01 12:09:05', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('316', '5', '2018-02-01 13:54:55', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('317', '5', '2018-02-01 13:54:55', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('318', '2', '2018-02-01 13:56:29', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('319', '2', '2018-02-01 13:57:07', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('320', '2', '2018-02-01 13:59:38', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('321', '2', '2018-02-01 14:02:49', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('322', '1', '2018-02-01 14:28:03', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('323', '1', '2018-02-01 14:31:04', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('324', '1', '2018-02-01 14:31:21', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('325', '1', '2018-02-01 14:33:52', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('326', '1', '2018-02-01 14:33:52', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('327', '1', '2018-02-01 14:42:43', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('328', '1', '2018-02-01 14:44:45', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('329', '1', '2018-02-01 14:54:21', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('330', '5', '2018-02-01 14:56:50', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('331', '5', '2018-02-01 14:57:02', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('332', '5', '2018-02-01 14:57:02', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('333', '1', '2018-02-01 15:09:16', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('334', '1', '2018-02-01 15:09:16', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('335', '1', '2018-02-01 15:09:57', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('336', '1', '2018-02-01 15:13:42', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('337', '1', '2018-02-01 15:13:42', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('338', '1', '2018-02-01 15:14:03', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('339', '5', '2018-02-01 15:17:22', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('340', '5', '2018-02-01 15:17:22', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('341', '5', '2018-02-01 15:17:50', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('342', '5', '2018-02-01 15:38:18', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('343', '1', '2018-02-02 10:01:28', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('344', '1', '2018-02-02 10:01:46', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('345', '1', '2018-02-02 10:01:46', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('346', '1', '2018-02-02 10:11:30', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('347', '1', '2018-02-02 10:11:30', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('348', '1', '2018-02-02 10:27:08', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('349', '1', '2018-02-02 10:27:08', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('350', '1', '2018-02-02 20:30:16', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('351', '1', '2018-02-02 20:30:16', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('352', '1', '2018-02-02 20:30:16', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('353', '2', '2018-02-03 09:55:31', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('354', '2', '2018-02-03 09:56:39', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('355', '2', '2018-02-03 09:59:19', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('356', '2', '2018-02-03 10:04:26', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('357', '2', '2018-02-03 10:07:01', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('358', '2', '2018-02-03 10:10:03', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('359', '2', '2018-02-03 10:10:03', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('360', '2', '2018-02-03 10:18:05', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('361', '2', '2018-02-03 10:20:45', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('362', '2', '2018-02-03 10:22:50', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('363', '1', '2018-02-03 10:29:57', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('364', '1', '2018-02-03 10:29:57', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('365', '1', '2018-02-03 10:32:59', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('366', '1', '2018-02-03 10:32:59', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('367', '1', '2018-02-03 10:34:18', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('368', '1', '2018-02-03 10:34:18', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('369', '2', '2018-02-03 10:41:37', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('370', '2', '2018-02-03 10:44:00', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('371', '1', '2018-02-03 10:44:56', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('372', '2', '2018-02-03 11:00:14', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('373', '1', '2018-02-03 11:04:40', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('374', '2', '2018-02-03 11:04:48', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('375', '2', '2018-02-03 11:04:48', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('376', '1', '2018-02-03 11:12:12', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('377', '1', '2018-02-03 11:12:12', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('378', '2', '2018-02-03 11:12:22', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('379', '2', '2018-02-03 11:12:23', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('380', '5', '2018-02-03 11:13:06', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('381', '5', '2018-02-03 11:13:06', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('382', '1', '2018-02-03 11:46:24', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('383', '1', '2018-02-03 11:46:24', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('384', '1', '2018-02-03 11:58:10', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('385', '1', '2018-02-03 14:37:34', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('386', '1', '2018-02-03 14:37:34', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('387', '1', '2018-02-03 15:18:48', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('388', '1', '2018-02-03 15:18:48', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('389', '1', '2018-02-03 15:21:31', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('390', '1', '2018-02-03 15:21:32', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('391', '1', '2018-02-05 09:11:12', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('392', '1', '2018-02-05 09:11:13', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('393', '5', '2018-02-05 09:12:00', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('394', '5', '2018-02-05 09:12:00', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('395', '5', '2018-02-05 09:29:45', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('396', '1', '2018-02-05 09:30:15', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('397', '1', '2018-02-05 09:30:15', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('398', '1', '2018-02-05 09:32:21', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('399', '1', '2018-02-05 09:32:22', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('400', '1', '2018-02-05 09:33:45', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('401', '1', '2018-02-05 09:33:46', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('402', '1', '2018-02-05 09:35:17', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('403', '1', '2018-02-05 09:35:17', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('404', '1', '2018-02-05 09:36:33', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('405', '1', '2018-02-05 09:36:34', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('406', '1', '2018-02-05 09:38:03', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('407', '1', '2018-02-05 09:38:04', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('408', '1', '2018-02-05 09:41:05', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('409', '1', '2018-02-05 09:41:06', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('410', '1', '2018-02-05 09:42:37', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('411', '1', '2018-02-05 09:42:37', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('412', '1', '2018-02-05 09:43:46', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('413', '1', '2018-02-05 09:43:46', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('414', '1', '2018-02-05 09:45:53', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('415', '1', '2018-02-05 09:46:03', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('416', '1', '2018-02-05 09:46:03', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('417', '1', '2018-02-05 09:47:15', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('418', '1', '2018-02-05 09:47:15', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('419', '1', '2018-02-05 09:49:30', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('420', '1', '2018-02-05 09:49:30', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('421', '1', '2018-02-05 09:51:51', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('422', '1', '2018-02-05 09:51:52', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('423', '1', '2018-02-05 09:53:05', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('424', '1', '2018-02-05 09:53:05', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('425', '1', '2018-02-05 09:57:00', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('426', '1', '2018-02-05 09:57:47', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('427', '1', '2018-02-05 09:57:48', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('428', '1', '2018-02-05 09:59:16', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('429', '1', '2018-02-05 09:59:17', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('430', '1', '2018-02-05 09:59:56', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('431', '1', '2018-02-05 10:04:37', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('432', '1', '2018-02-05 10:04:37', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('433', '1', '2018-02-05 10:07:21', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('434', '1', '2018-02-05 10:07:21', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('435', '1', '2018-02-05 14:31:39', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('436', '1', '2018-02-05 14:31:40', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('437', '1', '2018-02-05 14:35:16', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('438', '1', '2018-02-05 14:35:16', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('439', '1', '2018-02-05 14:46:23', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('440', '1', '2018-02-05 14:46:23', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('441', '1', '2018-02-05 14:46:35', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('442', '1', '2018-02-05 14:49:18', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('443', '1', '2018-02-05 18:49:57', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('444', '1', '2018-02-05 18:49:57', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('445', '1', '2018-02-05 18:54:08', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('446', '1', '2018-02-05 19:20:48', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('447', '1', '2018-02-05 19:20:57', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('448', '1', '2018-02-05 19:20:57', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('449', '1', '2018-02-05 19:22:59', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('450', '1', '2018-02-05 19:25:02', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('451', '1', '2018-02-05 19:27:02', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('452', '1', '2018-02-05 19:29:23', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('453', '1', '2018-02-05 19:29:23', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('454', '1', '2018-02-05 19:31:35', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('455', '1', '2018-02-05 19:33:38', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('456', '1', '2018-02-05 19:52:04', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('457', '1', '2018-02-05 19:52:22', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('458', '1', '2018-02-05 19:52:22', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('459', '1', '2018-02-05 19:54:40', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('460', '1', '2018-02-05 19:59:08', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('461', '1', '2018-02-05 19:59:08', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('462', '1', '2018-02-05 20:02:32', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('463', '1', '2018-02-05 20:02:33', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('464', '1', '2018-02-05 20:04:03', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('465', '1', '2018-02-05 20:04:04', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('466', '1', '2018-02-05 20:06:57', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('467', '1', '2018-02-05 20:06:57', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('468', '1', '2018-02-05 20:08:56', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('469', '1', '2018-02-05 20:08:56', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('470', '1', '2018-02-05 20:18:57', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('471', '1', '2018-02-05 20:18:58', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('472', '6', '2018-02-05 20:21:48', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('473', '6', '2018-02-05 20:21:49', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('474', '1', '2018-02-05 20:25:15', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('475', '1', '2018-02-05 20:25:15', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('476', '1', '2018-02-06 09:07:32', null, '172.16.23.129');
INSERT INTO `thelog` VALUES ('477', '1', '2018-02-06 09:07:33', null, '172.16.23.129');
INSERT INTO `thelog` VALUES ('478', '1', '2018-02-06 09:10:13', null, '172.16.23.129');
INSERT INTO `thelog` VALUES ('479', '1', '2018-02-06 09:12:31', null, '172.16.23.129');
INSERT INTO `thelog` VALUES ('480', '1', '2018-02-06 09:16:48', null, '172.16.23.129');
INSERT INTO `thelog` VALUES ('481', '1', '2018-02-06 09:16:48', null, '172.16.23.129');
INSERT INTO `thelog` VALUES ('482', '1', '2018-02-06 09:18:51', null, '172.16.23.129');
INSERT INTO `thelog` VALUES ('483', '1', '2018-02-06 09:21:26', null, '172.16.23.129');
INSERT INTO `thelog` VALUES ('484', '1', '2018-02-06 09:21:26', null, '172.16.23.129');
INSERT INTO `thelog` VALUES ('485', '1', '2018-02-06 09:23:51', null, '172.16.23.129');
INSERT INTO `thelog` VALUES ('486', '1', '2018-02-06 09:27:25', null, '172.16.23.129');
INSERT INTO `thelog` VALUES ('487', '1', '2018-02-06 09:27:26', null, '172.16.23.129');
INSERT INTO `thelog` VALUES ('488', '1', '2018-02-06 09:30:02', null, '172.16.23.129');
INSERT INTO `thelog` VALUES ('489', '1', '2018-02-06 09:30:11', null, '172.16.23.129');
INSERT INTO `thelog` VALUES ('490', '1', '2018-02-06 09:30:20', null, '172.16.23.129');
INSERT INTO `thelog` VALUES ('491', '1', '2018-02-06 09:30:20', null, '172.16.23.129');
INSERT INTO `thelog` VALUES ('492', '1', '2018-02-06 09:32:54', null, '172.16.23.129');
INSERT INTO `thelog` VALUES ('493', '1', '2018-02-06 09:36:53', null, '172.16.23.129');
INSERT INTO `thelog` VALUES ('494', '1', '2018-02-06 09:36:53', null, '172.16.23.129');
INSERT INTO `thelog` VALUES ('495', '1', '2018-02-06 09:40:47', null, '172.16.23.129');
INSERT INTO `thelog` VALUES ('496', '1', '2018-02-06 09:46:08', null, '172.16.23.129');
INSERT INTO `thelog` VALUES ('497', '1', '2018-02-06 09:46:08', null, '172.16.23.129');
INSERT INTO `thelog` VALUES ('498', '1', '2018-02-06 10:02:30', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('499', '1', '2018-02-06 10:02:30', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('500', '1', '2018-02-06 10:04:37', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('501', '1', '2018-02-06 10:15:23', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('502', '6', '2018-02-06 10:17:43', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('503', '6', '2018-02-06 10:17:43', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('504', '1', '2018-02-06 10:18:45', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('505', '1', '2018-02-06 10:18:55', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('506', '1', '2018-02-06 10:19:05', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('507', '1', '2018-02-06 10:23:00', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('508', '1', '2018-02-06 10:23:01', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('509', '1', '2018-02-06 10:25:03', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('510', '1', '2018-02-06 10:25:04', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('511', '1', '2018-02-06 10:28:37', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('512', '1', '2018-02-06 10:30:53', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('513', '1', '2018-02-06 10:31:44', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('514', '1', '2018-02-06 10:31:45', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('515', '1', '2018-02-06 10:33:52', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('516', '6', '2018-02-06 10:36:55', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('517', '6', '2018-02-06 10:36:56', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('518', '6', '2018-02-06 10:39:56', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('519', '5', '2018-02-06 10:40:13', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('520', '5', '2018-02-06 10:40:53', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('521', '5', '2018-02-06 10:40:53', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('522', '1', '2018-02-06 10:41:26', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('523', '1', '2018-02-06 10:41:27', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('524', '1', '2018-02-06 10:47:26', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('525', '6', '2018-02-06 10:48:20', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('526', '6', '2018-02-06 10:48:20', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('527', '1', '2018-02-06 10:54:29', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('528', '1', '2018-02-06 10:54:29', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('529', '1', '2018-02-06 10:58:11', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('530', '1', '2018-02-06 10:58:11', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('531', '1', '2018-02-06 10:59:18', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('532', '1', '2018-02-06 10:59:18', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('533', '1', '2018-02-06 11:01:40', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('534', '1', '2018-02-06 11:03:57', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('535', '1', '2018-02-06 11:06:32', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('536', '1', '2018-02-06 11:08:44', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('537', '1', '2018-02-06 11:10:48', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('538', '13', '2018-02-06 11:11:26', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('539', '1', '2018-02-06 11:14:08', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('540', '1', '2018-02-06 11:14:08', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('541', '1', '2018-02-06 11:16:24', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('542', '1', '2018-02-06 11:16:25', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('543', '1', '2018-02-06 11:19:59', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('544', '1', '2018-02-06 11:20:00', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('545', '1', '2018-02-06 11:21:17', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('546', '1', '2018-02-06 11:21:17', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('547', '1', '2018-02-06 11:23:46', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('548', '1', '2018-02-06 11:23:46', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('549', '1', '2018-02-06 11:24:52', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('550', '1', '2018-02-06 11:24:52', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('551', '22', '2018-02-06 11:26:41', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('552', '22', '2018-02-06 11:26:41', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('553', '23', '2018-02-06 11:28:37', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('554', '23', '2018-02-06 11:28:37', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('555', '23', '2018-02-06 11:31:53', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('556', '1', '2018-02-06 11:34:30', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('557', '1', '2018-02-06 11:34:30', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('558', '1', '2018-02-06 11:38:10', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('559', '1', '2018-02-06 11:43:51', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('560', '1', '2018-02-06 11:43:51', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('561', '1', '2018-02-06 11:46:08', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('562', '1', '2018-02-06 11:46:08', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('563', '1', '2018-02-06 11:48:49', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('564', '1', '2018-02-06 11:49:57', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('565', '1', '2018-02-06 11:49:58', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('566', '1', '2018-02-06 11:50:56', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('567', '1', '2018-02-06 11:50:57', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('568', '1', '2018-02-06 11:57:27', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('569', '1', '2018-02-06 13:26:13', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('570', '1', '2018-02-06 13:26:13', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('571', '1', '2018-02-06 13:29:05', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('572', '1', '2018-02-06 13:29:05', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('573', '1', '2018-02-06 13:34:27', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('574', '1', '2018-02-06 13:37:43', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('575', '1', '2018-02-06 13:37:44', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('576', '1', '2018-02-06 13:40:15', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('577', '1', '2018-02-06 13:43:22', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('578', '1', '2018-02-06 13:43:23', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('579', '1', '2018-02-06 13:47:09', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('580', '1', '2018-02-06 13:47:09', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('581', '1', '2018-02-06 13:48:37', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('582', '1', '2018-02-06 13:48:38', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('583', '1', '2018-02-06 13:50:55', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('584', '1', '2018-02-06 13:54:32', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('585', '1', '2018-02-06 14:07:24', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('586', '1', '2018-02-06 14:07:40', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('587', '1', '2018-02-06 14:07:41', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('588', '1', '2018-02-06 14:09:42', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('589', '1', '2018-02-06 14:11:52', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('590', '1', '2018-02-06 14:15:16', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('591', '1', '2018-02-06 14:31:04', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('592', '1', '2018-02-06 14:31:50', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('593', '1', '2018-02-06 14:31:50', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('594', '1', '2018-02-06 14:34:35', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('595', '1', '2018-02-06 14:34:35', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('596', '1', '2018-02-06 14:39:03', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('597', '1', '2018-02-06 14:39:04', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('598', '1', '2018-02-06 14:40:35', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('599', '1', '2018-02-06 14:40:35', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('600', '1', '2018-02-06 14:44:07', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('601', '1', '2018-02-06 14:44:07', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('602', '1', '2018-02-06 14:46:40', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('603', '1', '2018-02-06 14:49:20', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('604', '6', '2018-02-06 14:51:23', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('605', '6', '2018-02-06 14:51:23', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('606', '6', '2018-02-06 15:01:29', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('607', '1', '2018-02-06 15:01:53', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('608', '1', '2018-02-06 15:01:53', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('609', '1', '2018-02-06 15:30:58', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('610', '1', '2018-02-06 15:30:59', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('611', '1', '2018-02-06 15:33:46', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('612', '1', '2018-02-06 15:35:48', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('613', '6', '2018-02-06 15:37:21', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('614', '6', '2018-02-06 15:37:21', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('615', '6', '2018-02-06 15:41:00', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('616', '1', '2018-02-06 15:41:15', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('617', '1', '2018-02-06 15:41:15', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('618', '1', '2018-02-06 15:43:16', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('619', '1', '2018-02-06 15:47:15', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('620', '1', '2018-02-06 15:51:04', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('621', '1', '2018-02-06 15:51:04', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('622', '1', '2018-02-06 15:56:46', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('623', '1', '2018-02-06 15:59:34', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('624', '6', '2018-02-06 15:59:52', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('625', '6', '2018-02-06 15:59:52', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('626', '1', '2018-02-06 16:00:25', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('627', '1', '2018-02-06 16:00:25', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('628', '1', '2018-02-06 16:02:11', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('629', '1', '2018-02-06 16:02:12', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('630', '1', '2018-02-06 16:05:33', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('631', '1', '2018-02-06 16:07:42', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('632', '1', '2018-02-06 16:10:51', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('633', '1', '2018-02-06 16:13:20', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('634', '1', '2018-02-06 18:37:04', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('635', '1', '2018-02-06 18:37:04', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('636', '1', '2018-02-06 18:40:31', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('637', '1', '2018-02-06 19:53:29', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('638', '1', '2018-02-06 19:53:30', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('639', '1', '2018-02-06 20:22:02', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('640', '1', '2018-02-06 20:22:02', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('641', '1', '2018-02-06 20:23:35', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('642', '1', '2018-02-06 20:23:35', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('643', '1', '2018-02-06 20:27:39', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('644', '1', '2018-02-06 20:31:44', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('645', '1', '2018-02-06 20:31:45', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('646', '1', '2018-02-06 20:33:11', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('647', '1', '2018-02-06 20:33:11', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('648', '1', '2018-02-06 20:36:48', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('649', '1', '2018-02-06 20:36:48', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('650', '1', '2018-02-06 20:39:08', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('651', '1', '2018-02-06 20:43:34', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('652', '1', '2018-02-06 20:43:35', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('653', '1', '2018-02-06 20:45:17', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('654', '1', '2018-02-06 20:45:17', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('655', '1', '2018-02-06 20:50:58', null, '172.16.23.130');
INSERT INTO `thelog` VALUES ('656', '1', '2018-02-06 20:50:58', null, '172.16.23.130');

-- ----------------------------
-- Table structure for `type_apply`
-- ----------------------------
DROP TABLE IF EXISTS `type_apply`;
CREATE TABLE `type_apply` (
  `t_id` int(11) NOT NULL AUTO_INCREMENT,
  `t_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of type_apply
-- ----------------------------
INSERT INTO `type_apply` VALUES ('1', '调度');
INSERT INTO `type_apply` VALUES ('2', '报销');
INSERT INTO `type_apply` VALUES ('3', '离职');
INSERT INTO `type_apply` VALUES ('4', '请假');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '管理员', '2017-11-07 14:01:56', null, '13111111111', '女', 'img/1.jpg', '在职', '', '1', '5');
INSERT INTO `user` VALUES ('2', '张小花', '2009-01-11 14:07:31', null, '13100000000', '男', 'img/a.jpg', '在职', '120596045@qq.com', '1', '1');
INSERT INTO `user` VALUES ('3', '张三', '2018-01-19 09:52:09', null, '15645648452', '男', null, '在职', null, '1', '2');
INSERT INTO `user` VALUES ('4', '李四', '2018-01-04 09:53:19', null, '13120983980', '男', null, '离职', null, '1', '5');
INSERT INTO `user` VALUES ('5', '大牛', '2018-01-16 17:06:29', null, '13111111111', '男', 'img/1.jpg', '在职', '333@qq.com', '1', '1');
INSERT INTO `user` VALUES ('6', '王五', '2018-01-13 09:54:04', null, '15246415879', '女', null, '在职', null, '1', '3');
INSERT INTO `user` VALUES ('7', '赵六', '2018-01-11 09:54:46', null, '15623984475', '女', null, '在职', null, '1', '4');

-- ----------------------------
-- Table structure for `user_role`
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `give_power_time` date NOT NULL,
  `u_r_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) NOT NULL,
  `r_id` int(11) NOT NULL,
  PRIMARY KEY (`u_r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('2018-01-12', '3', '1', '1');
INSERT INTO `user_role` VALUES ('2018-01-27', '4', '1', '2');
INSERT INTO `user_role` VALUES ('2018-01-03', '5', '1', '4');
INSERT INTO `user_role` VALUES ('2018-01-11', '6', '1', '5');
INSERT INTO `user_role` VALUES ('2018-01-12', '7', '1', '6');
INSERT INTO `user_role` VALUES ('2018-01-04', '8', '1', '7');
INSERT INTO `user_role` VALUES ('2018-01-05', '9', '1', '8');
INSERT INTO `user_role` VALUES ('2018-01-10', '10', '1', '3');
INSERT INTO `user_role` VALUES ('2018-01-11', '17', '6', '5');
INSERT INTO `user_role` VALUES ('2018-01-11', '18', '6', '6');
INSERT INTO `user_role` VALUES ('2018-01-11', '19', '7', '3');
INSERT INTO `user_role` VALUES ('2018-01-12', '20', '7', '4');
INSERT INTO `user_role` VALUES ('2018-01-31', '45', '5', '1');
INSERT INTO `user_role` VALUES ('2018-01-31', '46', '5', '6');
INSERT INTO `user_role` VALUES ('2018-01-31', '47', '5', '7');
INSERT INTO `user_role` VALUES ('2018-02-23', '53', '2', '1');
INSERT INTO `user_role` VALUES ('2018-02-09', '54', '2', '6');
INSERT INTO `user_role` VALUES ('2018-02-01', '55', '1', '100');
INSERT INTO `user_role` VALUES ('2018-02-01', '56', '1', '101');
INSERT INTO `user_role` VALUES ('2018-02-01', '57', '1', '102');
INSERT INTO `user_role` VALUES ('2018-02-01', '58', '1', '103');
INSERT INTO `user_role` VALUES ('2018-02-01', '60', '2', '101');
INSERT INTO `user_role` VALUES ('2018-02-01', '61', '2', '102');
INSERT INTO `user_role` VALUES ('2018-02-06', '77', '3', '7');
INSERT INTO `user_role` VALUES ('2018-02-06', '78', '3', '100');
INSERT INTO `user_role` VALUES ('2018-02-06', '79', '3', '102');
INSERT INTO `user_role` VALUES ('2018-02-06', '80', '3', '8');
INSERT INTO `user_role` VALUES ('2018-02-06', '81', '3', '4');
INSERT INTO `user_role` VALUES ('2018-02-06', '82', '4', '7');
INSERT INTO `user_role` VALUES ('2018-02-06', '83', '4', '8');
