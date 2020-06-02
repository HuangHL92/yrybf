/*
Navicat MariaDB Data Transfer

Source Server         : nas.tongrok.com_3307
Source Server Version : 100321
Source Host           : nas.tongrok.com:3307
Source Database       : febs_zj

Target Server Type    : MariaDB
Target Server Version : 100321
File Encoding         : 65001

Date: 2020-06-01 09:33:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_dept
-- ----------------------------
DROP TABLE IF EXISTS `t_dept`;
CREATE TABLE `t_dept` (
  `DEPT_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门ID',
  `PARENT_ID` bigint(20) NOT NULL COMMENT '上级部门ID',
  `DEPT_NAME` varchar(100) NOT NULL COMMENT '部门名称',
  `ORDER_NUM` bigint(20) DEFAULT NULL COMMENT '排序',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`DEPT_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='部门表';

-- ----------------------------
-- Records of t_dept
-- ----------------------------
INSERT INTO `t_dept` VALUES ('1', '0', '开发部', '1', '2019-06-14 20:56:41', null);
INSERT INTO `t_dept` VALUES ('4', '0', '采购部', '2', '2019-06-14 20:59:56', null);
INSERT INTO `t_dept` VALUES ('5', '0', '财务部', '3', '2019-06-14 21:00:08', null);
INSERT INTO `t_dept` VALUES ('6', '0', '销售部', '4', '2019-06-14 21:00:15', null);
INSERT INTO `t_dept` VALUES ('7', '0', '工程部', '5', '2019-06-14 21:00:42', null);
INSERT INTO `t_dept` VALUES ('8', '0', '行政部', '6', '2019-06-14 21:00:49', null);
INSERT INTO `t_dept` VALUES ('9', '0', '人力资源部', '8', '2019-06-14 21:01:14', '2019-06-14 21:01:34');
INSERT INTO `t_dept` VALUES ('10', '0', '系统部', '7', '2019-06-14 21:01:31', null);

-- ----------------------------
-- Table structure for t_dict
-- ----------------------------
DROP TABLE IF EXISTS `t_dict`;
CREATE TABLE `t_dict` (
  `DICT_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典ID',
  `DICT_NAME` varchar(255) NOT NULL COMMENT '字典名称',
  `KEYY` bigint(20) NOT NULL COMMENT '键',
  `VALUEE` varchar(100) NOT NULL COMMENT '值',
  `FIELD_NAME` varchar(100) NOT NULL COMMENT '字段名称',
  `TABLE_NAME` varchar(100) NOT NULL COMMENT '表名',
  PRIMARY KEY (`DICT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 COMMENT='字典表';

-- ----------------------------
-- Records of t_dict
-- ----------------------------
INSERT INTO `t_dict` VALUES ('38', '述求类型', '1', '日常通勤', 'etype', 't_explain');
INSERT INTO `t_dict` VALUES ('39', '述求类型', '2', '生活照料', 'etype', 't_explain');
INSERT INTO `t_dict` VALUES ('40', '述求类型', '3', '医疗服务', 'etype', 't_explain');
INSERT INTO `t_dict` VALUES ('41', '述求类型', '4', '子女教育', 'etype', 't_explain');
INSERT INTO `t_dict` VALUES ('42', '述求类型', '5', '心理疏导', 'etype', 't_explain');
INSERT INTO `t_dict` VALUES ('43', '述求类型', '6', '其它', 'etype', 't_explain');
INSERT INTO `t_dict` VALUES ('44', '述求状态', '0', '未分配', 'estatus', 't_explain');
INSERT INTO `t_dict` VALUES ('45', '述求状态', '1', '处理中', 'estatus', 't_explain');
INSERT INTO `t_dict` VALUES ('46', '述求状态', '2', '已解决', 'estatus', 't_explain');
INSERT INTO `t_dict` VALUES ('47', '述求状态', '3', '已撤销', 'estatus', 't_explain');
INSERT INTO `t_dict` VALUES ('48', '述求状态', '4', '已反馈', 'estatus', 't_explain');
INSERT INTO `t_dict` VALUES ('49', '是否省外', '0', '省内', 'sfsw', 't_explain');
INSERT INTO `t_dict` VALUES ('50', '是否省外', '1', '省外', 'sfsw', 't_explain');
INSERT INTO `t_dict` VALUES ('51', '满意度', '1', '非常满意', 'myd', 't_explain');
INSERT INTO `t_dict` VALUES ('52', '满意度', '2', '满意', 'myd', 't_explain');
INSERT INTO `t_dict` VALUES ('53', '满意度', '3', '一般', 'myd', 't_explain');
INSERT INTO `t_dict` VALUES ('54', '满意度', '4', '不满意', 'myd', 't_explain');
INSERT INTO `t_dict` VALUES ('55', '述求流程状态', '0', '组长分配', 'astatus', 't_explain_assist');
INSERT INTO `t_dict` VALUES ('56', '述求流程状态', '1', '开始处理述求', 'astatus', 't_explain_assist');
INSERT INTO `t_dict` VALUES ('57', '述求流程状态', '2', '向上转交述求', 'astatus', 't_explain_assist');
INSERT INTO `t_dict` VALUES ('58', '述求状态', '3', '已处理', 'astatus', 't_explain_assist');
INSERT INTO `t_dict` VALUES ('59', '述求状态', '4', '撤回', 'astatus', 't_explain_assist');
INSERT INTO `t_dict` VALUES ('60', '诉求类型', '7', '职务职称', 'etype', 't_explain');
INSERT INTO `t_dict` VALUES ('61', '诉求状态', '5', '其它', 'estatus', 't_explain');
INSERT INTO `t_dict` VALUES ('62', '诉求流程状态', '5', '其它', 'astatus', 't_explain_assist');
INSERT INTO `t_dict` VALUES ('63', '工作单位', '1', '省人民医院', 'unit', 't_person_medicine');
INSERT INTO `t_dict` VALUES ('64', '工作单位', '2', '浙江医院', 'unit', 't_person_medicine');
INSERT INTO `t_dict` VALUES ('65', '工作单位', '3', '省立同德医院', 'unit', 't_person_medicine');
INSERT INTO `t_dict` VALUES ('66', '工作单位', '4', '省肿瘤医院', 'unit', 't_person_medicine');
INSERT INTO `t_dict` VALUES ('67', '工作单位', '5', '浙一', 'unit', 't_person_medicine');
INSERT INTO `t_dict` VALUES ('68', '工作单位', '6', '浙二', 'unit', 't_person_medicine');
INSERT INTO `t_dict` VALUES ('69', '工作单位', '7', '邵逸夫医院', 'unit', 't_person_medicine');
INSERT INTO `t_dict` VALUES ('70', '工作单位', '8', '省儿童医院', ' unit', 't_person_medicine');
INSERT INTO `t_dict` VALUES ('71', '工作单位', '9', '省中医院', 'unit', 't_person_medicine');
INSERT INTO `t_dict` VALUES ('72', '工作单位', '10', '省新华医院', 'unit', 't_person_medicine');
INSERT INTO `t_dict` VALUES ('73', '工作单位', '11', '省中山医院', 'unit', 't_person_medicine');
INSERT INTO `t_dict` VALUES ('74', '工作单位', '12', '省疾控中心', 'unit', 't_person_medicine');
INSERT INTO `t_dict` VALUES ('75', '工作单位', '13', '省血液中心', 'unit', 't_person_medicine');
INSERT INTO `t_dict` VALUES ('76', '诉求类型', '8', '防护用品', 'etype', 't_explain');
INSERT INTO `t_dict` VALUES ('77', '事项类型', '1', '请假', 'MATTER_TYPE', 't_matter_manage');
INSERT INTO `t_dict` VALUES ('78', '事项类型', '2', '外出', 'MATTER_TYPE', 't_matter_manage');
INSERT INTO `t_dict` VALUES ('79', '事项类型', '3', '报备', 'MATTER_TYPE', 't_matter_manage');

-- ----------------------------
-- Table structure for t_eximport
-- ----------------------------
DROP TABLE IF EXISTS `t_eximport`;
CREATE TABLE `t_eximport` (
  `FIELD1` varchar(20) NOT NULL COMMENT '字段1',
  `FIELD2` int(11) NOT NULL COMMENT '字段2',
  `FIELD3` varchar(100) NOT NULL COMMENT '字段3',
  `CREATE_TIME` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Excel导入导出测试';

-- ----------------------------
-- Records of t_eximport
-- ----------------------------
INSERT INTO `t_eximport` VALUES ('字段1', '1', 'mrbird0@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', '2', 'mrbird1@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', '3', 'mrbird2@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', '4', 'mrbird3@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', '5', 'mrbird4@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', '6', 'mrbird5@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', '7', 'mrbird6@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', '8', 'mrbird7@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', '9', 'mrbird8@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', '10', 'mrbird9@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', '11', 'mrbird10@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', '12', 'mrbird11@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', '13', 'mrbird12@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', '14', 'mrbird13@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', '15', 'mrbird14@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', '16', 'mrbird15@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', '17', 'mrbird16@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', '18', 'mrbird17@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', '19', 'mrbird18@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', '20', 'mrbird19@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', '1', 'mrbird0@gmail.com', '2020-02-19 16:28:16');
INSERT INTO `t_eximport` VALUES ('字段1', '2', 'mrbird1@gmail.com', '2020-02-19 16:28:16');
INSERT INTO `t_eximport` VALUES ('字段1', '3', 'mrbird2@gmail.com', '2020-02-19 16:28:16');
INSERT INTO `t_eximport` VALUES ('字段1', '4', 'mrbird3@gmail.com', '2020-02-19 16:28:16');
INSERT INTO `t_eximport` VALUES ('字段1', '5', 'mrbird4@gmail.com', '2020-02-19 16:28:16');
INSERT INTO `t_eximport` VALUES ('字段1', '6', 'mrbird5@gmail.com', '2020-02-19 16:28:16');
INSERT INTO `t_eximport` VALUES ('字段1', '7', 'mrbird6@gmail.com', '2020-02-19 16:28:16');
INSERT INTO `t_eximport` VALUES ('字段1', '8', 'mrbird7@gmail.com', '2020-02-19 16:28:16');
INSERT INTO `t_eximport` VALUES ('字段1', '9', 'mrbird8@gmail.com', '2020-02-19 16:28:16');
INSERT INTO `t_eximport` VALUES ('字段1', '10', 'mrbird9@gmail.com', '2020-02-19 16:28:16');
INSERT INTO `t_eximport` VALUES ('字段1', '11', 'mrbird10@gmail.com', '2020-02-19 16:28:16');
INSERT INTO `t_eximport` VALUES ('字段1', '12', 'mrbird11@gmail.com', '2020-02-19 16:28:16');
INSERT INTO `t_eximport` VALUES ('字段1', '13', 'mrbird12@gmail.com', '2020-02-19 16:28:16');
INSERT INTO `t_eximport` VALUES ('字段1', '14', 'mrbird13@gmail.com', '2020-02-19 16:28:16');
INSERT INTO `t_eximport` VALUES ('字段1', '15', 'mrbird14@gmail.com', '2020-02-19 16:28:16');
INSERT INTO `t_eximport` VALUES ('字段1', '16', 'mrbird15@gmail.com', '2020-02-19 16:28:16');
INSERT INTO `t_eximport` VALUES ('字段1', '17', 'mrbird16@gmail.com', '2020-02-19 16:28:16');
INSERT INTO `t_eximport` VALUES ('字段1', '18', 'mrbird17@gmail.com', '2020-02-19 16:28:16');
INSERT INTO `t_eximport` VALUES ('字段1', '19', 'mrbird18@gmail.com', '2020-02-19 16:28:16');
INSERT INTO `t_eximport` VALUES ('字段1', '20', 'mrbird19@gmail.com', '2020-02-19 16:28:16');
INSERT INTO `t_eximport` VALUES ('字段1', '1', 'mrbird0@gmail.com', '2020-02-19 16:28:47');
INSERT INTO `t_eximport` VALUES ('字段1', '2', 'mrbird1@gmail.com', '2020-02-19 16:28:47');
INSERT INTO `t_eximport` VALUES ('字段1', '3', 'mrbird2@gmail.com', '2020-02-19 16:28:47');
INSERT INTO `t_eximport` VALUES ('字段1', '4', 'mrbird3@gmail.com', '2020-02-19 16:28:47');
INSERT INTO `t_eximport` VALUES ('字段1', '5', 'mrbird4@gmail.com', '2020-02-19 16:28:47');
INSERT INTO `t_eximport` VALUES ('字段1', '6', 'mrbird5@gmail.com', '2020-02-19 16:28:47');
INSERT INTO `t_eximport` VALUES ('字段1', '7', 'mrbird6@gmail.com', '2020-02-19 16:28:47');
INSERT INTO `t_eximport` VALUES ('字段1', '8', 'mrbird7@gmail.com', '2020-02-19 16:28:47');
INSERT INTO `t_eximport` VALUES ('字段1', '9', 'mrbird8@gmail.com', '2020-02-19 16:28:47');
INSERT INTO `t_eximport` VALUES ('字段1', '10', 'mrbird9@gmail.com', '2020-02-19 16:28:47');
INSERT INTO `t_eximport` VALUES ('字段1', '11', 'mrbird10@gmail.com', '2020-02-19 16:28:47');
INSERT INTO `t_eximport` VALUES ('字段1', '12', 'mrbird11@gmail.com', '2020-02-19 16:28:47');
INSERT INTO `t_eximport` VALUES ('字段1', '13', 'mrbird12@gmail.com', '2020-02-19 16:28:47');
INSERT INTO `t_eximport` VALUES ('字段1', '14', 'mrbird13@gmail.com', '2020-02-19 16:28:47');
INSERT INTO `t_eximport` VALUES ('字段1', '15', 'mrbird14@gmail.com', '2020-02-19 16:28:47');
INSERT INTO `t_eximport` VALUES ('字段1', '16', 'mrbird15@gmail.com', '2020-02-19 16:28:47');
INSERT INTO `t_eximport` VALUES ('字段1', '17', 'mrbird16@gmail.com', '2020-02-19 16:28:47');
INSERT INTO `t_eximport` VALUES ('字段1', '18', 'mrbird17@gmail.com', '2020-02-19 16:28:47');
INSERT INTO `t_eximport` VALUES ('字段1', '19', 'mrbird18@gmail.com', '2020-02-19 16:28:47');
INSERT INTO `t_eximport` VALUES ('字段1', '20', 'mrbird19@gmail.com', '2020-02-19 16:28:47');

-- ----------------------------
-- Table structure for t_explain
-- ----------------------------
DROP TABLE IF EXISTS `t_explain`;
CREATE TABLE `t_explain` (
  `eid` varchar(32) NOT NULL COMMENT '述求ID',
  `etype` char(1) DEFAULT NULL COMMENT '述求类型',
  `einfo` varchar(3072) DEFAULT NULL COMMENT '述求信息',
  `sqrname` varchar(32) DEFAULT NULL COMMENT '联系人姓名',
  `sqrphone` varchar(32) DEFAULT NULL COMMENT '联系人电话',
  `tel` varchar(32) DEFAULT NULL COMMENT '医护人员联系电话',
  `sqradress` varchar(255) DEFAULT '' COMMENT '详细地址',
  `province` varchar(255) DEFAULT '' COMMENT '所在省',
  `city` varchar(255) DEFAULT '' COMMENT '所在市',
  `district` varchar(255) DEFAULT '' COMMENT '所在区',
  `town` varchar(255) DEFAULT NULL,
  `openid` varchar(128) DEFAULT NULL COMMENT '人员唯一码',
  `sfsw` char(1) DEFAULT NULL COMMENT '是否省外 0：省内；1：省外；  后台判定province 为‘浙江省’则为0，其余都为1；',
  `estatus` char(1) DEFAULT NULL COMMENT '述求状态 0:未分配；1：处理中；2：已处理；3：已撤销；4：已反馈',
  `cxly` varchar(2000) DEFAULT '' COMMENT '撤销理由',
  `myd` char(1) DEFAULT NULL COMMENT '满意度 1：非常满意；2：满意；3：一般；4：不满意',
  `fkmx` varchar(1024) DEFAULT NULL COMMENT '满意描述',
  `createdate` varchar(32) DEFAULT '' COMMENT '创建时间',
  `leadappraise` varchar(2000) DEFAULT NULL,
  `interview` varchar(2000) DEFAULT NULL COMMENT '走访情况',
  `transversion` varchar(2000) DEFAULT NULL COMMENT '诉求解决过程',
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='述求信息 ';

-- ----------------------------
-- Records of t_explain
-- ----------------------------
INSERT INTO `t_explain` VALUES ('0abe34bafaca0e8ed7af4fd069d98c92', '1', '323232', '111', '12345678910', '13701010104', '', '', '', '', null, null, null, '0', '', null, null, '2020-02-26 14:51:22', null, null, null);
INSERT INTO `t_explain` VALUES ('0bf9cd1f0ccc4ef0156a456e14c5c089', '1', '测试-负责人新增诉求', '医疗1', '15000000001', '15000000001', '', '', '', '', null, '', null, '0', '', null, null, '2020-02-24 19:08:05', null, null, null);
INSERT INTO `t_explain` VALUES ('15a7adea7759a62cce902ac99c4a90e0', '8', '132323', '测试', '13701010101', '15000000001', '', '', '', '', null, '', null, '0', '', null, null, '2020-03-12 18:39:50', null, null, null);
INSERT INTO `t_explain` VALUES ('25145a66aa4ecccd1e3d1668d02e11cb', '1', '111', '111', '111', '13701010103', '', '', '', '', null, null, null, '0', '', null, null, '2020-02-26 14:46:44', null, null, '2333333');
INSERT INTO `t_explain` VALUES ('26d89e537924f08b854ddaf8952afd2d', '1', '测试8', '医疗1', '15000000001', '15000000001', '', '', '', '', null, '', null, '3', '', null, null, '2020-02-24 21:58:17', null, null, null);
INSERT INTO `t_explain` VALUES ('3f8106554d9e06f3bd0a717b5565f07d', '8', '12121', '测试', '13701010101', '15000000001', '', '', '', '', null, '', null, '0', '', null, null, '2020-03-12 18:38:32', null, null, null);
INSERT INTO `t_explain` VALUES ('419d056460399f57b6d5e2b3d1f47d6c', '1', '家属提的诉求', '童思宁', '15001010102', '15000000001', '', '', '', '', null, '', null, '5', '', null, null, '2020-02-25 13:21:47', null, null, '');
INSERT INTO `t_explain` VALUES ('41d79e1fafc856d538f7273eb1861deb', '2', '测试7-自己填写诶', '童8', '15000000109', '15000000001', '', '', '', '', null, '', null, '5', '', null, null, '2020-02-24 19:09:52', null, null, '2584848');
INSERT INTO `t_explain` VALUES ('50b3c2264afb2532a6ec83fdcea75f88', '1', '111111111', '测试', '13701010101', '15000000001', '', '', '', '', null, '', null, '2', '', null, null, '2020-02-25 13:40:50', null, null, '1212121213235555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555');
INSERT INTO `t_explain` VALUES ('593f89b13094b0cbadf063ab90a13035', '1', '医护人员替家属替诉求-测试', '测试', '13701010101', '15000000001', '', '', '', '', null, '', null, '1', '', null, null, '2020-02-25 13:34:42', null, null, '466');
INSERT INTO `t_explain` VALUES ('7da3f73e571ec24e3c62fc5833e259d9', '1', '家属自己给自己提诉求', '童思宁', '15001010102', '15000000001', '', '', '', '', null, '', null, '5', '', null, null, '2020-02-25 13:35:31', null, null, '');
INSERT INTO `t_explain` VALUES ('86551f2660bc1887e7c6458ba8e008fc', '1', '121321321312', '111', '11111111111', '13701010104', '', '', '', '', null, null, null, '0', '', null, null, '2020-02-26 14:46:45', null, null, null);
INSERT INTO `t_explain` VALUES ('a391ec321c42c0b89c784a68f4b8e537', '5', '测试5', '童5', '15000000105', '15000000001', '', '', '', '', null, '', null, '1', '', null, null, '2020-02-24 18:23:04', null, null, '2232323232');
INSERT INTO `t_explain` VALUES ('bc3ee1c5a1d18f88cb6b89186acf8b79', '1', '测试3', '童三', '15000000104', '15000000001', '', '', '', '', null, '', null, '2', '', '1', '我很满意', '2020-02-24 16:20:58', '负责人处理完了', null, '');
INSERT INTO `t_explain` VALUES ('bf316a0dd6f6985e1ca867c79f4bbe2f', '8', '569989', '测试', '13701010101', '15000000001', '', '', '', '', null, '', null, '0', '', null, null, '2020-03-12 18:38:07', null, null, null);
INSERT INTO `t_explain` VALUES ('c162aa41e399c6b5fbd3f5e561e16852', '1', '2222', '222', '12233335555', '13701010103', '', '', '', '', null, null, null, '0', '', null, null, '2020-02-26 14:35:10', null, null, null);
INSERT INTO `t_explain` VALUES ('c1875d49032a613ee03c5cf0f6ad96cc', '1', '测试1', '童1', '15000000101', '15000000001', '', '', '', '', null, '', null, '2', '', null, null, '2020-02-24 16:20:05', '这个诉求我想评论', null, '');
INSERT INTO `t_explain` VALUES ('cabc979468ed5e51a9c407a0f005ff5b', '7', '131313131313', '测试', '13701010101', '15000000001', '', '', '', '', null, '', null, '0', '', null, null, '2020-03-12 18:36:15', null, null, null);
INSERT INTO `t_explain` VALUES ('d65916a846063feb15b9b3b79c7c2a85', '4', '测试4', '童4', '15000000103', '15000000001', '', '', '', '', null, '', null, '2', '', null, null, '2020-02-24 16:21:29', null, null, '1211331');
INSERT INTO `t_explain` VALUES ('e2383134c80561578fc32d0e01991ab8', '2', '测试2', '童2', '15000000102', '15000000001', '', '', '', '', null, '', null, '3', '我就是要撤销', null, null, '2020-02-24 16:20:24', null, null, null);
INSERT INTO `t_explain` VALUES ('ed965d739c77fcd1d358f4a3116a004d', '7', '78787', '158', '15801010101', '13701010103', '', '', '', '', null, null, null, '0', '', null, null, '2020-02-27 09:03:41', null, null, null);

-- ----------------------------
-- Table structure for t_explain_assist
-- ----------------------------
DROP TABLE IF EXISTS `t_explain_assist`;
CREATE TABLE `t_explain_assist` (
  `taid` varchar(120) NOT NULL COMMENT '诉求处理id',
  `aid` varchar(64) NOT NULL COMMENT '帮扶人员id',
  `tid` varchar(64) NOT NULL COMMENT '原始诉求id',
  `receivedate` date DEFAULT NULL COMMENT '分配诉求时间',
  `startdate` date DEFAULT NULL COMMENT '诉求处理时间',
  `enddate` date DEFAULT NULL COMMENT '处理结束时间',
  `paid` varchar(64) NOT NULL COMMENT '分配人id',
  `astatus` varchar(5) NOT NULL COMMENT '状态 0：组长分配；1：开始处理诉求；2：向上转交诉求；3：已处理;4:撤回；',
  `reason` varchar(2000) DEFAULT '' COMMENT '退回理由',
  `chreason` varchar(2000) DEFAULT '' COMMENT '撤回诉求原因',
  `xh` int(11) NOT NULL DEFAULT 0 COMMENT '处理编号',
  `tcurrent` varchar(2) NOT NULL DEFAULT '0' COMMENT '是否当前最新处理',
  PRIMARY KEY (`taid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='述求流程表';

-- ----------------------------
-- Records of t_explain_assist
-- ----------------------------
INSERT INTO `t_explain_assist` VALUES ('01bffbac-2abf-4809-8c2e-18fb6b476ef8', '67', '7da3f73e571ec24e3c62fc5833e259d9', '2020-02-27', '2020-02-27', null, '67', '5', null, null, '0', '0');
INSERT INTO `t_explain_assist` VALUES ('06e617aa-467f-42ff-ba08-af47cd6f0b8a', '67', 'bc3ee1c5a1d18f88cb6b89186acf8b79', '2020-02-24', '2020-02-24', null, '67', '1', null, null, '0', '1');
INSERT INTO `t_explain_assist` VALUES ('0a9c7dbb-d1b5-436a-a810-8becae9e1568', '67', 'c1875d49032a613ee03c5cf0f6ad96cc', '2020-02-24', null, null, '67', '2', '我给组长', null, '1', '1');
INSERT INTO `t_explain_assist` VALUES ('12f2a8b5-7844-412d-956b-a3dc1649bb0a', '70', 'd65916a846063feb15b9b3b79c7c2a85', '2020-02-24', '2020-02-24', '2020-02-24', '67', '3', null, null, '2', '1');
INSERT INTO `t_explain_assist` VALUES ('5be14399-eb49-4a0b-aa9f-d4e435380af8', '67', '41d79e1fafc856d538f7273eb1861deb', '2020-02-27', '2020-02-27', '2020-02-27', '67', '5', null, null, '0', '0');
INSERT INTO `t_explain_assist` VALUES ('6af45667-eeda-4f56-9b2c-aad272429bb1', '67', '419d056460399f57b6d5e2b3d1f47d6c', '2020-02-27', '2020-02-27', null, '67', '5', null, null, '0', '0');
INSERT INTO `t_explain_assist` VALUES ('a3d31801-0d02-4e01-bdf6-9e6faecfc77b', '67', 'a391ec321c42c0b89c784a68f4b8e537', '2020-02-27', '2020-02-27', null, '67', '1', null, null, '0', '0');
INSERT INTO `t_explain_assist` VALUES ('a7609f41-847e-4423-9074-a2a331ca9cd6', '69', 'c1875d49032a613ee03c5cf0f6ad96cc', '2020-02-24', null, null, '67', '0', null, null, '0', '1');
INSERT INTO `t_explain_assist` VALUES ('ac639fc4-755e-4159-9ba3-1d9b6020496c', '70', 'd65916a846063feb15b9b3b79c7c2a85', '2020-02-24', '2020-02-24', null, '67', '1', null, null, '1', '1');
INSERT INTO `t_explain_assist` VALUES ('aeaec332-6708-4dd7-ab0d-479e9232f389', '67', '593f89b13094b0cbadf063ab90a13035', '2020-02-26', '2020-02-26', null, '67', '1', null, null, '0', '0');
INSERT INTO `t_explain_assist` VALUES ('e168cc79-7a36-425e-aaed-1cd491866edd', '67', '50b3c2264afb2532a6ec83fdcea75f88', '2020-02-27', '2020-02-27', '2020-02-27', '67', '3', null, null, '0', '1');
INSERT INTO `t_explain_assist` VALUES ('e2847d8a-000d-41d3-a888-c815517302d4', '67', 'bc3ee1c5a1d18f88cb6b89186acf8b79', '2020-02-24', '2020-02-24', '2020-02-24', '67', '3', null, null, '1', '1');
INSERT INTO `t_explain_assist` VALUES ('f59c2717-9781-4328-8a7c-af012619b332', '70', 'd65916a846063feb15b9b3b79c7c2a85', '2020-02-24', null, null, '67', '0', null, null, '0', '1');

-- ----------------------------
-- Table structure for t_feedback
-- ----------------------------
DROP TABLE IF EXISTS `t_feedback`;
CREATE TABLE `t_feedback` (
  `uuid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `queinfo` varchar(255) DEFAULT NULL COMMENT '反馈描述',
  `userid` varchar(40) DEFAULT NULL COMMENT '反馈人员手机号',
  `name` varchar(40) DEFAULT NULL COMMENT '反馈人员姓名',
  `createtime` datetime DEFAULT NULL ON UPDATE current_timestamp() COMMENT '创建时间',
  `status` varchar(10) DEFAULT NULL COMMENT '事件状态''0''为处理''1''为已处理',
  `updatetime` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_feedback
-- ----------------------------

-- ----------------------------
-- Table structure for t_gat_map
-- ----------------------------
DROP TABLE IF EXISTS `t_gat_map`;
CREATE TABLE `t_gat_map` (
  `groupa_id` bigint(20) DEFAULT NULL COMMENT '帮扶小组id',
  `team_id` bigint(20) DEFAULT NULL COMMENT '团id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='帮扶团小组关系表';

-- ----------------------------
-- Records of t_gat_map
-- ----------------------------
INSERT INTO `t_gat_map` VALUES ('19', '15');

-- ----------------------------
-- Table structure for t_generator_config
-- ----------------------------
DROP TABLE IF EXISTS `t_generator_config`;
CREATE TABLE `t_generator_config` (
  `id` int(11) NOT NULL COMMENT '主键',
  `author` varchar(20) NOT NULL COMMENT '作者',
  `base_package` varchar(50) NOT NULL COMMENT '基础包名',
  `entity_package` varchar(20) NOT NULL COMMENT 'entity文件存放路径',
  `mapper_package` varchar(20) NOT NULL COMMENT 'mapper文件存放路径',
  `mapper_xml_package` varchar(20) NOT NULL COMMENT 'mapper xml文件存放路径',
  `service_package` varchar(20) NOT NULL COMMENT 'servcie文件存放路径',
  `service_impl_package` varchar(20) NOT NULL COMMENT 'serviceImpl文件存放路径',
  `controller_package` varchar(20) NOT NULL COMMENT 'controller文件存放路径',
  `is_trim` char(1) NOT NULL COMMENT '是否去除前缀 1是 0否',
  `trim_value` varchar(10) DEFAULT NULL COMMENT '前缀内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='代码生成配置表';

-- ----------------------------
-- Records of t_generator_config
-- ----------------------------
INSERT INTO `t_generator_config` VALUES ('1', 'tongrok', 'cc.mrbird.febs.matter', 'entity', 'mapper', 'mapper', 'service', 'service.impl', 'controller', '1', 't_');

-- ----------------------------
-- Table structure for t_gma_map
-- ----------------------------
DROP TABLE IF EXISTS `t_gma_map`;
CREATE TABLE `t_gma_map` (
  `groupm_id` bigint(20) DEFAULT NULL COMMENT '医疗小组id',
  `groupa_id` bigint(20) DEFAULT NULL COMMENT '帮扶小组id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='医务帮扶小组关系表 ';

-- ----------------------------
-- Records of t_gma_map
-- ----------------------------
INSERT INTO `t_gma_map` VALUES ('36', '19');
INSERT INTO `t_gma_map` VALUES ('38', '20');

-- ----------------------------
-- Table structure for t_gpa_map
-- ----------------------------
DROP TABLE IF EXISTS `t_gpa_map`;
CREATE TABLE `t_gpa_map` (
  `persona_id` bigint(20) DEFAULT NULL,
  `groupa_id` bigint(20) DEFAULT NULL COMMENT '帮扶小组id',
  `groupa_type` char(1) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='帮扶小组关系表 ';

-- ----------------------------
-- Records of t_gpa_map
-- ----------------------------
INSERT INTO `t_gpa_map` VALUES ('7', '19', '0');
INSERT INTO `t_gpa_map` VALUES ('87', '19', '0');
INSERT INTO `t_gpa_map` VALUES ('71', '19', '0');
INSERT INTO `t_gpa_map` VALUES ('70', '19', '0');
INSERT INTO `t_gpa_map` VALUES ('69', '19', '0');
INSERT INTO `t_gpa_map` VALUES ('72', '19', '0');
INSERT INTO `t_gpa_map` VALUES ('73', '19', '0');
INSERT INTO `t_gpa_map` VALUES ('67', '19', '1');
INSERT INTO `t_gpa_map` VALUES ('78', '21', '0');
INSERT INTO `t_gpa_map` VALUES ('77', '21', '0');
INSERT INTO `t_gpa_map` VALUES ('79', '21', '0');
INSERT INTO `t_gpa_map` VALUES ('71', '21', '0');
INSERT INTO `t_gpa_map` VALUES ('72', '21', '0');
INSERT INTO `t_gpa_map` VALUES ('70', '21', '0');
INSERT INTO `t_gpa_map` VALUES ('6', '21', '1');
INSERT INTO `t_gpa_map` VALUES ('7', '20', '0');
INSERT INTO `t_gpa_map` VALUES ('4', '20', '0');
INSERT INTO `t_gpa_map` VALUES ('5', '20', '0');
INSERT INTO `t_gpa_map` VALUES ('6', '20', '0');
INSERT INTO `t_gpa_map` VALUES ('3', '20', '1');

-- ----------------------------
-- Table structure for t_group
-- ----------------------------
DROP TABLE IF EXISTS `t_group`;
CREATE TABLE `t_group` (
  `group_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '分组ID',
  `group_name` varchar(1024) DEFAULT NULL COMMENT '分组名称',
  `group_remark` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COMMENT='项目组信息 ';

-- ----------------------------
-- Records of t_group
-- ----------------------------
INSERT INTO `t_group` VALUES ('1', '浙大网新项目组', '');
INSERT INTO `t_group` VALUES ('2', '北大软件项目组', '北大软件项目组');
INSERT INTO `t_group` VALUES ('3', '其他项目组', '');

-- ----------------------------
-- Table structure for t_group_assist
-- ----------------------------
DROP TABLE IF EXISTS `t_group_assist`;
CREATE TABLE `t_group_assist` (
  `group_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '分组ID',
  `group_name` varchar(1024) DEFAULT NULL COMMENT '分组名称',
  `group_remark` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COMMENT='分组信息 ';

-- ----------------------------
-- Records of t_group_assist
-- ----------------------------
INSERT INTO `t_group_assist` VALUES ('19', '1组', '');
INSERT INTO `t_group_assist` VALUES ('20', '2组', '');
INSERT INTO `t_group_assist` VALUES ('21', '3组', '');

-- ----------------------------
-- Table structure for t_group_medicine
-- ----------------------------
DROP TABLE IF EXISTS `t_group_medicine`;
CREATE TABLE `t_group_medicine` (
  `group_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '分组ID',
  `group_name` varchar(1024) DEFAULT NULL COMMENT '分组名称',
  `group_remark` varchar(1024) DEFAULT NULL,
  `group_members` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COMMENT='医疗小组信息 ';

-- ----------------------------
-- Records of t_group_medicine
-- ----------------------------
INSERT INTO `t_group_medicine` VALUES ('36', '1组', '', '125,126,127,128,129,130,134');
INSERT INTO `t_group_medicine` VALUES ('38', '2组', '', '20,118,124,119,135');

-- ----------------------------
-- Table structure for t_group_team
-- ----------------------------
DROP TABLE IF EXISTS `t_group_team`;
CREATE TABLE `t_group_team` (
  `team_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '所在团主键',
  `team_name` varchar(1024) DEFAULT NULL COMMENT '所在团名字',
  `team_leader` varchar(32) DEFAULT '' COMMENT '团长ID',
  PRIMARY KEY (`team_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COMMENT='帮扶团信息表';

-- ----------------------------
-- Records of t_group_team
-- ----------------------------
INSERT INTO `t_group_team` VALUES ('15', '一团', '68');

-- ----------------------------
-- Table structure for t_job
-- ----------------------------
DROP TABLE IF EXISTS `t_job`;
CREATE TABLE `t_job` (
  `JOB_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务id',
  `BEAN_NAME` varchar(50) NOT NULL COMMENT 'spring bean名称',
  `METHOD_NAME` varchar(50) NOT NULL COMMENT '方法名',
  `PARAMS` varchar(50) DEFAULT NULL COMMENT '参数',
  `CRON_EXPRESSION` varchar(20) NOT NULL COMMENT 'cron表达式',
  `STATUS` char(2) NOT NULL COMMENT '任务状态  0：正常  1：暂停',
  `REMARK` varchar(50) DEFAULT NULL COMMENT '备注',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`JOB_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='定时任务表';

-- ----------------------------
-- Records of t_job
-- ----------------------------

-- ----------------------------
-- Table structure for t_job_log
-- ----------------------------
DROP TABLE IF EXISTS `t_job_log`;
CREATE TABLE `t_job_log` (
  `LOG_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志id',
  `JOB_ID` bigint(20) NOT NULL COMMENT '任务id',
  `BEAN_NAME` varchar(100) NOT NULL COMMENT 'spring bean名称',
  `METHOD_NAME` varchar(100) NOT NULL COMMENT '方法名',
  `PARAMS` varchar(200) DEFAULT NULL COMMENT '参数',
  `STATUS` char(2) NOT NULL COMMENT '任务状态    0：成功    1：失败',
  `ERROR` text DEFAULT NULL COMMENT '失败信息',
  `TIMES` decimal(11,0) DEFAULT NULL COMMENT '耗时(单位：毫秒)',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`LOG_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2562 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='调度日志表';

-- ----------------------------
-- Records of t_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for t_log
-- ----------------------------
DROP TABLE IF EXISTS `t_log`;
CREATE TABLE `t_log` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志ID',
  `USERNAME` varchar(50) DEFAULT NULL COMMENT '操作用户',
  `OPERATION` text DEFAULT NULL COMMENT '操作内容',
  `TIME` decimal(11,0) DEFAULT NULL COMMENT '耗时',
  `METHOD` text DEFAULT NULL COMMENT '操作方法',
  `PARAMS` text DEFAULT NULL COMMENT '方法参数',
  `IP` varchar(64) DEFAULT NULL COMMENT '操作者IP',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `location` varchar(50) DEFAULT NULL COMMENT '操作地点',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2380 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='操作日志表';

-- ----------------------------
-- Records of t_log
-- ----------------------------
INSERT INTO `t_log` VALUES ('1013', 'system', '删除部门', '262', 'cc.mrbird.febs.system.controller.DeptController.deleteDepts()', ' deptIds: \"2,3\"', '192.168.140.1', '2020-02-08 16:33:51', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1014', 'system', '新增菜单/按钮', '161', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=178, parentId=0, menuName=信息统计, url=, perms=, icon=layui-icon-barchart, type=0, orderNum=0, createTime=Sat Feb 08 16:39:26 CST 2020, modifyTime=null)\"', '192.168.140.1', '2020-02-08 16:39:26', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1015', 'system', '修改菜单/按钮', '146', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=1, parentId=0, menuName=系统管理, url=, perms=, icon=layui-icon-setting, type=0, orderNum=10, createTime=null, modifyTime=Sat Feb 08 16:39:52 CST 2020)\"', '192.168.140.1', '2020-02-08 16:39:52', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1016', 'system', '修改菜单/按钮', '106', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=2, parentId=0, menuName=系统监控, url=, perms=, icon=layui-icon-alert, type=0, orderNum=11, createTime=null, modifyTime=Sat Feb 08 16:40:01 CST 2020)\"', '192.168.140.1', '2020-02-08 16:40:01', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1017', 'system', '修改菜单/按钮', '370', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=101, parentId=0, menuName=任务调度, url=, perms=, icon=layui-icon-time-circle, type=0, orderNum=12, createTime=null, modifyTime=Sat Feb 08 16:40:06 CST 2020)\"', '192.168.140.1', '2020-02-08 16:40:07', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1018', 'system', '修改菜单/按钮', '161', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=137, parentId=0, menuName=代码生成, url=, perms=, icon=layui-icon-verticalright, type=0, orderNum=13, createTime=null, modifyTime=Sat Feb 08 16:40:10 CST 2020)\"', '192.168.140.1', '2020-02-08 16:40:10', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1019', 'system', '修改菜单/按钮', '78', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=115, parentId=0, menuName=其他模块, url=, perms=, icon=layui-icon-gift, type=0, orderNum=14, createTime=null, modifyTime=Sat Feb 08 16:40:16 CST 2020)\"', '192.168.140.1', '2020-02-08 16:40:17', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1020', 'system', '修改菜单/按钮', '106', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=1, parentId=0, menuName=系统管理, url=, perms=, icon=layui-icon-setting, type=0, orderNum=90, createTime=null, modifyTime=Sat Feb 08 16:40:26 CST 2020)\"', '192.168.140.1', '2020-02-08 16:40:26', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1021', 'system', '修改菜单/按钮', '185', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=1, parentId=0, menuName=系统管理, url=, perms=, icon=layui-icon-setting, type=0, orderNum=91, createTime=null, modifyTime=Sat Feb 08 16:40:34 CST 2020)\"', '192.168.140.1', '2020-02-08 16:40:34', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1022', 'system', '修改菜单/按钮', '131', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=2, parentId=0, menuName=系统监控, url=, perms=, icon=layui-icon-alert, type=0, orderNum=92, createTime=null, modifyTime=Sat Feb 08 16:40:38 CST 2020)\"', '192.168.140.1', '2020-02-08 16:40:38', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1023', 'system', '修改菜单/按钮', '74', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=101, parentId=0, menuName=任务调度, url=, perms=, icon=layui-icon-time-circle, type=0, orderNum=93, createTime=null, modifyTime=Sat Feb 08 16:40:42 CST 2020)\"', '192.168.140.1', '2020-02-08 16:40:42', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1024', 'system', '修改菜单/按钮', '122', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=137, parentId=0, menuName=代码生成, url=, perms=, icon=layui-icon-verticalright, type=0, orderNum=94, createTime=null, modifyTime=Sat Feb 08 16:40:48 CST 2020)\"', '192.168.140.1', '2020-02-08 16:40:48', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1025', 'system', '修改菜单/按钮', '170', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=115, parentId=0, menuName=其他模块, url=, perms=, icon=layui-icon-gift, type=0, orderNum=95, createTime=null, modifyTime=Sat Feb 08 16:40:52 CST 2020)\"', '192.168.140.1', '2020-02-08 16:40:52', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1026', 'system', '新增菜单/按钮', '154', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=179, parentId=0, menuName=项目信息, url=, perms=, icon=, type=0, orderNum=null, createTime=Sat Feb 08 16:42:13 CST 2020, modifyTime=null)\"', '192.168.140.1', '2020-02-08 16:42:13', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1027', 'system', '删除菜单/按钮', '152', 'cc.mrbird.febs.system.controller.MenuController.deleteMenus()', ' menuIds: \"179\"', '192.168.140.1', '2020-02-08 16:42:34', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1028', 'system', '新增菜单/按钮', '70', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=180, parentId=178, menuName=项目信息, url=, perms=, icon=, type=0, orderNum=null, createTime=Sat Feb 08 16:42:54 CST 2020, modifyTime=null)\"', '192.168.140.1', '2020-02-08 16:42:54', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1029', 'system', '新增菜单/按钮', '85', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=181, parentId=178, menuName=机构信息, url=, perms=, icon=, type=0, orderNum=null, createTime=Sat Feb 08 16:43:06 CST 2020, modifyTime=null)\"', '192.168.140.1', '2020-02-08 16:43:06', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1030', 'system', '修改菜单/按钮', '114', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=178, parentId=0, menuName=信息统计, url=, perms=, icon=layui-icon-barchart, type=0, orderNum=1, createTime=null, modifyTime=Sat Feb 08 16:43:14 CST 2020)\"', '192.168.140.1', '2020-02-08 16:43:14', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1031', 'system', '修改菜单/按钮', '158', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=180, parentId=178, menuName=项目信息, url=, perms=, icon=, type=0, orderNum=1, createTime=null, modifyTime=Sat Feb 08 16:43:18 CST 2020)\"', '192.168.140.1', '2020-02-08 16:43:19', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1032', 'system', '修改菜单/按钮', '85', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=181, parentId=178, menuName=机构信息, url=, perms=, icon=, type=0, orderNum=2, createTime=null, modifyTime=Sat Feb 08 16:43:23 CST 2020)\"', '192.168.140.1', '2020-02-08 16:43:23', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1033', 'system', '新增菜单/按钮', '115', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=182, parentId=0, menuName=项目管理, url=, perms=, icon=layui-icon-container, type=0, orderNum=2, createTime=Sat Feb 08 16:45:11 CST 2020, modifyTime=null)\"', '192.168.140.1', '2020-02-08 16:45:11', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1034', 'system', '新增菜单/按钮', '100', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=183, parentId=182, menuName=项目分布图, url=, perms=, icon=, type=0, orderNum=1, createTime=Sat Feb 08 16:45:42 CST 2020, modifyTime=null)\"', '192.168.140.1', '2020-02-08 16:45:42', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1035', 'system', '新增菜单/按钮', '155', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=184, parentId=182, menuName=项目列表, url=, perms=, icon=, type=0, orderNum=2, createTime=Sat Feb 08 16:45:56 CST 2020, modifyTime=null)\"', '192.168.140.1', '2020-02-08 16:45:56', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1036', 'system', '修改菜单/按钮', '265', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=2, parentId=0, menuName=系统监控, url=, perms=, icon=layui-icon-issuesclose, type=0, orderNum=92, createTime=null, modifyTime=Sat Feb 08 16:46:50 CST 2020)\"', '192.168.140.1', '2020-02-08 16:46:51', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1037', 'system', '新增菜单/按钮', '174', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=185, parentId=0, menuName=报告管理, url=, perms=, icon=layui-icon-detail, type=0, orderNum=3, createTime=Sat Feb 08 16:47:45 CST 2020, modifyTime=null)\"', '192.168.140.1', '2020-02-08 16:47:45', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1038', 'system', '修改菜单/按钮', '171', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=182, parentId=0, menuName=项目管理, url=, perms=, icon=layui-icon-project, type=0, orderNum=2, createTime=null, modifyTime=Sat Feb 08 16:47:55 CST 2020)\"', '192.168.140.1', '2020-02-08 16:47:55', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1039', 'system', '新增菜单/按钮', '105', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=186, parentId=185, menuName=报告审批, url=, perms=, icon=, type=0, orderNum=1, createTime=Sat Feb 08 16:48:24 CST 2020, modifyTime=null)\"', '192.168.140.1', '2020-02-08 16:48:24', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1040', 'system', '新增菜单/按钮', '112', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=187, parentId=185, menuName=报告存档, url=, perms=, icon=, type=0, orderNum=2, createTime=Sat Feb 08 16:48:35 CST 2020, modifyTime=null)\"', '192.168.140.1', '2020-02-08 16:48:35', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1041', 'system', '新增菜单/按钮', '99', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=188, parentId=0, menuName=警报信息, url=, perms=, icon=layui-icon-alert, type=0, orderNum=4, createTime=Sat Feb 08 16:49:27 CST 2020, modifyTime=null)\"', '192.168.140.1', '2020-02-08 16:49:27', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1042', 'system', '新增菜单/按钮', '154', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=189, parentId=0, menuName=监测机构信息, url=, perms=, icon=layui-icon-audit, type=0, orderNum=5, createTime=Sat Feb 08 16:51:19 CST 2020, modifyTime=null)\"', '192.168.140.1', '2020-02-08 16:51:19', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1043', 'system', '新增菜单/按钮', '159', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=190, parentId=189, menuName=基本信息, url=, perms=, icon=, type=0, orderNum=1, createTime=Sat Feb 08 16:51:46 CST 2020, modifyTime=null)\"', '192.168.140.1', '2020-02-08 16:51:46', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1044', 'system', '新增菜单/按钮', '120', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=191, parentId=189, menuName=人员信息, url=, perms=, icon=, type=0, orderNum=2, createTime=Sat Feb 08 16:52:00 CST 2020, modifyTime=null)\"', '192.168.140.1', '2020-02-08 16:52:00', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1045', 'system', '新增菜单/按钮', '168', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=192, parentId=189, menuName=设备信息, url=, perms=, icon=, type=0, orderNum=3, createTime=Sat Feb 08 16:52:10 CST 2020, modifyTime=null)\"', '192.168.140.1', '2020-02-08 16:52:10', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1046', 'system', '新增菜单/按钮', '131', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=193, parentId=189, menuName=采集仪信息, url=, perms=, icon=, type=0, orderNum=4, createTime=Sat Feb 08 16:52:51 CST 2020, modifyTime=null)\"', '192.168.140.1', '2020-02-08 16:52:51', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1047', 'system', '新增菜单/按钮', '100', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=194, parentId=189, menuName=传感器信息, url=, perms=, icon=, type=0, orderNum=5, createTime=Sat Feb 08 16:53:14 CST 2020, modifyTime=null)\"', '192.168.140.1', '2020-02-08 16:53:14', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1048', 'system', '新增菜单/按钮', '83', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=195, parentId=188, menuName=预警信息, url=, perms=, icon=, type=0, orderNum=1, createTime=Sat Feb 08 16:53:35 CST 2020, modifyTime=null)\"', '192.168.140.1', '2020-02-08 16:53:35', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1049', 'system', '新增菜单/按钮', '152', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=196, parentId=188, menuName=报警/控制信息, url=, perms=, icon=, type=0, orderNum=2, createTime=Sat Feb 08 16:53:56 CST 2020, modifyTime=null)\"', '192.168.140.1', '2020-02-08 16:53:56', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1050', 'system', '新增菜单/按钮', '101', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=197, parentId=188, menuName=传感器异常信息, url=, perms=, icon=, type=0, orderNum=3, createTime=Sat Feb 08 16:54:10 CST 2020, modifyTime=null)\"', '192.168.140.1', '2020-02-08 16:54:10', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1051', 'system', '新增菜单/按钮', '169', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=198, parentId=188, menuName=报警值修改日志, url=, perms=, icon=, type=0, orderNum=4, createTime=Sat Feb 08 16:54:25 CST 2020, modifyTime=null)\"', '192.168.140.1', '2020-02-08 16:54:25', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1052', 'system', '修改角色', '2164', 'cc.mrbird.febs.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=1, roleName=系统管理员, remark=系统管理员，拥有所有操作权限 ^_^, createTime=null, modifyTime=Sat Feb 08 16:57:39 CST 2020, menuIds=178,180,181,182,183,184,185,186,187,188,195,196,197,198,189,190,191,192,193,194,1,3,11,12,13,160,161,4,14,15,16,162,5,17,18,19,163,6,20,21,22,164,2,8,23,10,24,170,136,171,172,127,128,129,131,175,101,102,103,104,105,106,107,108,173,109,110,174,137,138,165,139,166,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125,167,168,169)\"', '192.168.140.1', '2020-02-08 16:57:41', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1053', 'system', '修改角色', '3482', 'cc.mrbird.febs.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=1, roleName=系统管理员, remark=系统管理员，拥有所有操作权限 ^_^, createTime=null, modifyTime=Sat Feb 08 16:57:55 CST 2020, menuIds=178,182,183,184,185,186,187,188,195,196,197,198,189,190,191,192,193,194,1,3,11,12,13,160,161,4,14,15,16,162,5,17,18,19,163,6,20,21,22,164,2,8,23,10,24,170,136,171,172,127,128,129,131,175,101,102,103,104,105,106,107,108,173,109,110,174,137,138,165,139,166,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125,167,168,169)\"', '192.168.140.1', '2020-02-08 16:57:58', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1054', 'system', '修改角色', '2175', 'cc.mrbird.febs.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=1, roleName=系统管理员, remark=系统管理员，拥有所有操作权限 ^_^, createTime=null, modifyTime=Sat Feb 08 16:58:04 CST 2020, menuIds=178,180,181,182,183,184,185,186,187,188,195,196,197,198,189,190,191,192,193,194,1,3,11,12,13,160,161,4,14,15,16,162,5,17,18,19,163,6,20,21,22,164,2,8,23,10,24,170,136,171,172,127,128,129,131,175,101,102,103,104,105,106,107,108,173,109,110,174,137,138,165,139,166,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125,167,168,169)\"', '192.168.140.1', '2020-02-08 16:58:06', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1055', 'system', '新增角色', '500', 'cc.mrbird.febs.system.controller.RoleController.addRole()', ' role: \"Role(roleId=81, roleName=操作人员, remark=拥有业务功能模块的权限, createTime=Sat Feb 08 16:59:09 CST 2020, modifyTime=null, menuIds=178,180,181,182,183,184,185,186,187,188,195,196,197,198,189,190,191,192,193,194)\"', '192.168.140.1', '2020-02-08 16:59:10', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1056', 'system', '删除菜单/按钮', '169', 'cc.mrbird.febs.system.controller.MenuController.deleteMenus()', ' menuIds: \"178,182,185,188,189\"', '192.168.140.1', '2020-02-14 18:31:39', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1057', 'system', '新增菜单/按钮', '111', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=199, parentId=0, menuName=人员信息, url=, perms=, icon=layui-icon-user, type=0, orderNum=1, createTime=Fri Feb 14 18:33:22 CST 2020, modifyTime=null)\"', '192.168.140.1', '2020-02-14 18:33:22', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1058', 'system', '新增菜单/按钮', '60', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=200, parentId=199, menuName=机构, url=, perms=, icon=, type=0, orderNum=1, createTime=Fri Feb 14 18:33:38 CST 2020, modifyTime=null)\"', '192.168.140.1', '2020-02-14 18:33:38', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1059', 'system', '新增菜单/按钮', '92', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=201, parentId=199, menuName=分组, url=, perms=, icon=, type=0, orderNum=2, createTime=Fri Feb 14 18:33:54 CST 2020, modifyTime=null)\"', '192.168.140.1', '2020-02-14 18:33:54', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1060', 'system', '删除角色', '87', 'cc.mrbird.febs.system.controller.RoleController.deleteRoles()', ' roleIds: \"77\"', '192.168.140.1', '2020-02-14 18:34:27', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1061', 'system', '修改角色', '370', 'cc.mrbird.febs.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=1, roleName=系统管理员, remark=系统管理员，拥有所有操作权限 ^_^, createTime=null, modifyTime=Fri Feb 14 18:35:01 CST 2020, menuIds=199,200,201,1,3,11,12,13,160,161,4,14,15,16,162,5,17,18,19,163,6,20,21,22,164,2,8,23,10,24,170,136,171,172,127,128,129,131,175,101,102,103,104,105,106,107,108,173,109,110,174,137,138,165,139,166,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125,167,168,169)\"', '192.168.140.1', '2020-02-14 18:35:02', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1062', 'system', '新增菜单/按钮', '111', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=202, parentId=0, menuName=帮扶团队, url=, perms=, icon=, type=0, orderNum=2, createTime=Fri Feb 14 18:36:07 CST 2020, modifyTime=null)\"', '192.168.140.1', '2020-02-14 18:36:07', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1063', 'system', '新增菜单/按钮', '113', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=203, parentId=0, menuName=分组信息, url=, perms=, icon=, type=0, orderNum=3, createTime=Fri Feb 14 18:36:35 CST 2020, modifyTime=null)\"', '192.168.140.1', '2020-02-14 18:36:35', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1064', 'system', '新增菜单/按钮', '81', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=204, parentId=0, menuName=述求信息, url=, perms=, icon=, type=0, orderNum=4, createTime=Fri Feb 14 18:37:35 CST 2020, modifyTime=null)\"', '192.168.140.1', '2020-02-14 18:37:35', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1065', 'system', '新增菜单/按钮', '101', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=205, parentId=0, menuName=述求分析, url=, perms=, icon=, type=0, orderNum=5, createTime=Fri Feb 14 18:37:51 CST 2020, modifyTime=null)\"', '192.168.140.1', '2020-02-14 18:37:51', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1066', 'system', '修改角色', '84', 'cc.mrbird.febs.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=81, roleName=操作人员, remark=拥有业务功能模块的权限, createTime=null, modifyTime=Fri Feb 14 18:39:54 CST 2020, menuIds=199,202,203,204,205)\"', '192.168.140.1', '2020-02-14 18:39:54', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1067', 'system', '修改角色', '377', 'cc.mrbird.febs.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=1, roleName=系统管理员, remark=系统管理员，拥有所有操作权限 ^_^, createTime=null, modifyTime=Fri Feb 14 18:40:08 CST 2020, menuIds=199,200,201,202,203,204,205,1,3,11,12,13,160,161,4,14,15,16,162,5,17,18,19,163,6,20,21,22,164,2,8,23,10,24,170,136,171,172,127,128,129,131,175,101,102,103,104,105,106,107,108,173,109,110,174,137,138,165,139,166,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125,167,168,169)\"', '192.168.140.1', '2020-02-14 18:40:08', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1068', 'system', '修改菜单/按钮', '95', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=202, parentId=0, menuName=帮扶团队, url=, perms=, icon=layui-icon-team, type=0, orderNum=2, createTime=null, modifyTime=Fri Feb 14 18:40:30 CST 2020)\"', '192.168.140.1', '2020-02-14 18:40:30', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1069', 'system', '修改菜单/按钮', '78', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=203, parentId=0, menuName=分组信息, url=, perms=, icon=layui-icon-database, type=0, orderNum=3, createTime=null, modifyTime=Fri Feb 14 18:44:41 CST 2020)\"', '192.168.140.1', '2020-02-14 18:44:41', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1070', 'system', '修改菜单/按钮', '85', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=204, parentId=0, menuName=述求信息, url=, perms=, icon=layui-icon-edit-square, type=0, orderNum=4, createTime=null, modifyTime=Fri Feb 14 18:44:54 CST 2020)\"', '192.168.140.1', '2020-02-14 18:44:54', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1071', 'system', '修改菜单/按钮', '125', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=205, parentId=0, menuName=述求分析, url=, perms=, icon=layui-icon-barchart, type=0, orderNum=5, createTime=null, modifyTime=Fri Feb 14 18:46:05 CST 2020)\"', '192.168.140.1', '2020-02-14 18:46:05', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1072', 'system', '新增用户', '310', 'cc.mrbird.febs.system.controller.UserController.addUser()', ' user: \"User(userId=9, username=test, password=50531c15181030c9a07bb7fb8551ac26, deptId=null, email=, mobile=, status=1, createTime=Fri Feb 14 18:48:33 CST 2020, modifyTime=null, lastLoginTime=null, sex=2, avatar=default.jpg, theme=black, isTab=1, description=, deptName=null, createTimeFrom=null, createTimeTo=null, roleId=81, roleName=null)\"', '192.168.140.1', '2020-02-14 18:48:33', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1073', 'system', '修改角色', '483', 'cc.mrbird.febs.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=81, roleName=操作人员, remark=拥有业务功能模块的权限, createTime=null, modifyTime=Fri Feb 14 18:52:49 CST 2020, menuIds=199,200,201,202,203,204,205)\"', '192.168.140.1', '2020-02-14 18:52:50', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1074', 'system', '新增菜单/按钮', '91', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=206, parentId=203, menuName=医疗小组管理, url=, perms=, icon=, type=0, orderNum=1, createTime=Fri Feb 14 21:13:52 CST 2020, modifyTime=null)\"', '192.168.140.1', '2020-02-14 21:13:52', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1075', 'system', '新增菜单/按钮', '68', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=207, parentId=203, menuName=帮扶小组管理, url=, perms=, icon=, type=0, orderNum=2, createTime=Fri Feb 14 21:14:07 CST 2020, modifyTime=null)\"', '192.168.140.1', '2020-02-14 21:14:07', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1076', 'system', '新增菜单/按钮', '86', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=208, parentId=203, menuName=分组对应管理, url=, perms=, icon=, type=0, orderNum=3, createTime=Fri Feb 14 21:15:35 CST 2020, modifyTime=null)\"', '192.168.140.1', '2020-02-14 21:15:35', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1077', 'system', '修改角色', '107', 'cc.mrbird.febs.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=81, roleName=操作人员, remark=拥有业务功能模块的权限, createTime=null, modifyTime=Fri Feb 14 21:15:50 CST 2020, menuIds=199,200,201,202,203,206,207,208,204,205)\"', '192.168.140.1', '2020-02-14 21:15:50', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1078', 'system', '修改角色', '236', 'cc.mrbird.febs.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=1, roleName=系统管理员, remark=系统管理员，拥有所有操作权限 ^_^, createTime=null, modifyTime=Fri Feb 14 21:16:07 CST 2020, menuIds=199,200,201,202,203,206,207,208,204,205,1,3,11,12,13,160,161,4,14,15,16,162,5,17,18,19,163,6,20,21,22,164,2,8,23,10,24,170,136,171,172,127,128,129,131,175,101,102,103,104,105,106,107,108,173,109,110,174,137,138,165,139,166,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125,167,168,169)\"', '192.168.140.1', '2020-02-14 21:16:07', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1079', 'system', '修改GeneratorConfig', '99', 'cc.mrbird.febs.generator.controller.GeneratorConfigController.updateGeneratorConfig()', ' generatorConfig: GeneratorConfig(id=1, author=tongrok, basePackage=cc.mrbird.febs.person, entityPackage=entity, mapperPackage=person, mapperXmlPackage=mapper, servicePackage=service, serviceImplPackage=service.impl, controllerPackage=controller, isTrim=1, trimValue=t_, javaPath=/src/main/java/, resourcesPath=src/main/resources, date=2020-02-15 01:47:14, tableName=null, tableComment=null, className=null)', '192.168.140.1', '2020-02-15 01:47:14', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1080', 'system', '修改GeneratorConfig', '88', 'cc.mrbird.febs.generator.controller.GeneratorConfigController.updateGeneratorConfig()', ' generatorConfig: GeneratorConfig(id=1, author=tongrok, basePackage=cc.mrbird.febs.person, entityPackage=entity, mapperPackage=mapper, mapperXmlPackage=mapper, servicePackage=service, serviceImplPackage=service.impl, controllerPackage=controller, isTrim=1, trimValue=t_, javaPath=/src/main/java/, resourcesPath=src/main/resources, date=2020-02-15 01:49:18, tableName=null, tableComment=null, className=null)', '127.0.0.1', '2020-02-15 01:49:18', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1081', 'system', '修改菜单/按钮', '107', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=200, parentId=199, menuName=机构, url=/person/unitPerson, perms=, icon=, type=0, orderNum=1, createTime=null, modifyTime=Sat Feb 15 02:32:23 CST 2020)\"', '192.168.140.1', '2020-02-15 02:32:23', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1082', 'system', '删除角色', '101', 'cc.mrbird.febs.system.controller.RoleController.deleteRoles()', ' roleIds: \"2\"', '192.168.140.1', '2020-02-15 08:12:42', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1083', 'system', '删除角色', '128', 'cc.mrbird.febs.system.controller.RoleController.deleteRoles()', ' roleIds: \"79\"', '192.168.140.1', '2020-02-15 08:12:50', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1084', 'system', '删除角色', '146', 'cc.mrbird.febs.system.controller.RoleController.deleteRoles()', ' roleIds: \"80\"', '192.168.140.1', '2020-02-15 08:12:55', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1085', 'system', '删除角色', '120', 'cc.mrbird.febs.system.controller.RoleController.deleteRoles()', ' roleIds: \"78\"', '192.168.140.1', '2020-02-15 08:13:15', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1086', 'system', '新增角色', '111', 'cc.mrbird.febs.system.controller.RoleController.addRole()', ' role: \"Role(roleId=82, roleName=医疗人员, remark=医疗人员, createTime=Sat Feb 15 09:22:51 CST 2020, modifyTime=null, menuIds=)\"', '192.168.140.1', '2020-02-15 09:22:51', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1087', 'system', '新增角色', '95', 'cc.mrbird.febs.system.controller.RoleController.addRole()', ' role: \"Role(roleId=83, roleName=帮扶人员, remark=帮扶人员, createTime=Sat Feb 15 09:23:01 CST 2020, modifyTime=null, menuIds=)\"', '192.168.140.1', '2020-02-15 09:23:01', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1088', 'system', '修改菜单/按钮', '103', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=201, parentId=199, menuName=分组, url=/person/groupPerson, perms=, icon=, type=0, orderNum=2, createTime=null, modifyTime=Sat Feb 15 09:24:40 CST 2020)\"', '192.168.140.1', '2020-02-15 09:24:40', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1089', 'system', '修改菜单/按钮', '102', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=199, parentId=0, menuName=医疗人员, url=, perms=, icon=layui-icon-user, type=0, orderNum=1, createTime=null, modifyTime=Sat Feb 15 09:25:20 CST 2020)\"', '192.168.140.1', '2020-02-15 09:25:20', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1090', 'system', '修改GeneratorConfig', '130', 'cc.mrbird.febs.generator.controller.GeneratorConfigController.updateGeneratorConfig()', ' generatorConfig: GeneratorConfig(id=1, author=tongrok, basePackage=cc.mrbird.febs.system, entityPackage=entity, mapperPackage=mapper, mapperXmlPackage=mapper, servicePackage=service, serviceImplPackage=service.impl, controllerPackage=controller, isTrim=1, trimValue=t_, javaPath=/src/main/java/, resourcesPath=src/main/resources, date=2020-02-15 10:34:12, tableName=null, tableComment=null, className=null)', '192.168.140.1', '2020-02-15 10:34:12', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1091', 'system', '新增菜单/按钮', '402', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=209, parentId=1, menuName=字典管理, url=/system/dict, perms=dict:view, icon=layui-icon-book, type=0, orderNum=5, createTime=Sat Feb 15 10:41:38 CST 2020, modifyTime=null)\"', '192.168.140.1', '2020-02-15 10:41:38', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1092', 'system', '新增菜单/按钮', '241', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=210, parentId=209, menuName=新增字典, url=null, perms=dict:Add, icon=null, type=1, orderNum=null, createTime=Sat Feb 15 10:42:53 CST 2020, modifyTime=null)\"', '192.168.140.1', '2020-02-15 10:42:53', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1093', 'system', '修改菜单/按钮', '87', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=210, parentId=209, menuName=新增字典, url=null, perms=dict:add, icon=null, type=1, orderNum=null, createTime=null, modifyTime=Sat Feb 15 10:43:08 CST 2020)\"', '192.168.140.1', '2020-02-15 10:43:08', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1094', 'system', '新增菜单/按钮', '81', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=211, parentId=209, menuName=字典修改, url=null, perms=dict:edit, icon=null, type=1, orderNum=null, createTime=Sat Feb 15 10:43:29 CST 2020, modifyTime=null)\"', '192.168.140.1', '2020-02-15 10:43:29', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1095', 'system', '新增菜单/按钮', '94', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=212, parentId=209, menuName=字典删除, url=null, perms=dict:delete, icon=null, type=1, orderNum=null, createTime=Sat Feb 15 10:43:46 CST 2020, modifyTime=null)\"', '192.168.140.1', '2020-02-15 10:43:46', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1096', 'system', '修改角色', '645', 'cc.mrbird.febs.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=1, roleName=系统管理员, remark=系统管理员，拥有所有操作权限 ^_^, createTime=null, modifyTime=Sat Feb 15 10:45:18 CST 2020, menuIds=199,200,201,202,203,206,207,208,204,205,1,3,11,12,13,160,161,4,14,15,16,162,5,17,18,19,163,6,20,21,22,164,209,210,211,212,2,8,23,10,24,170,136,171,172,127,128,129,131,175,101,102,103,104,105,106,107,108,173,109,110,174,137,138,165,139,166,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125,167,168,169)\"', '192.168.140.1', '2020-02-15 10:45:18', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1097', 'system', '修改菜单/按钮', '89', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=209, parentId=1, menuName=字典管理, url=/system/dict, perms=dict:view, icon=, type=0, orderNum=5, createTime=null, modifyTime=Sat Feb 15 10:45:44 CST 2020)\"', '192.168.140.1', '2020-02-15 10:45:44', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1098', 'system', '修改GeneratorConfig', '103', 'cc.mrbird.febs.generator.controller.GeneratorConfigController.updateGeneratorConfig()', ' generatorConfig: GeneratorConfig(id=1, author=tongrok, basePackage=cc.mrbird.febs.person, entityPackage=entity, mapperPackage=mapper, mapperXmlPackage=mapper, servicePackage=service, serviceImplPackage=service.impl, controllerPackage=controller, isTrim=1, trimValue=t_, javaPath=/src/main/java/, resourcesPath=src/main/resources, date=2020-02-15 12:30:54, tableName=null, tableComment=null, className=null)', '192.168.140.1', '2020-02-15 12:30:54', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1099', 'system', '修改GeneratorConfig', '30', 'cc.mrbird.febs.generator.controller.GeneratorConfigController.updateGeneratorConfig()', ' generatorConfig: GeneratorConfig(id=1, author=tongrok, basePackage=cc.mrbird.febs.person, entityPackage=entity, mapperPackage=mapper, mapperXmlPackage=mapper, servicePackage=service, serviceImplPackage=service.impl, controllerPackage=controller, isTrim=1, trimValue=t_, javaPath=/src/main/java/, resourcesPath=src/main/resources, date=2020-02-15 12:30:58, tableName=null, tableComment=null, className=null)', '192.168.140.1', '2020-02-15 12:30:58', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1100', null, '新增PersonInfoByApi', '41009', 'cc.mrbird.febs.person.controller.PersonInfoController.addPersonInfoByApi()', ' personInfo: PersonInfo(userId=1, userType=null, name=通天塔, idCard=null, nativePlace=null, ssex=1, duty=test, unit=test, groupId=null, createDate=null, updateDate=null, nickName=null, avatarUrl=null, openid=1qaz2wsx3edx4edc5rf, country=null, province=null, city=null, ulanguage=null)', '192.168.140.1', '2020-02-15 12:46:02', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1101', null, '新增PersonInfoByApi', '314', 'cc.mrbird.febs.person.controller.PersonInfoController.addPersonInfoByApi()', ' personInfo: PersonInfo(userId=2, userType=null, name=通天塔, idCard=null, nativePlace=null, ssex=1, duty=test, unit=test, groupId=null, createDate=null, updateDate=null, nickName=null, avatarUrl=null, openid=1qaz2wsx3edx4edc5rf, country=null, province=null, city=null, ulanguage=null)', '192.168.140.1', '2020-02-15 12:47:16', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1102', null, '新增PersonInfoByApi', '134', 'cc.mrbird.febs.person.controller.PersonInfoController.addPersonInfoByApi()', ' personInfo: PersonInfo(userId=1, userType=null, name=通天塔, idCard=null, nativePlace=null, sex=null, duty=test, unit=test, groupId=null, createDate=null, updateDate=null, nickName=null, avatarUrl=null, openid=1qaz2wsx3edx4edc5rf, country=null, province=null, city=null, language=null)', '192.168.140.1', '2020-02-15 13:18:20', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1103', null, '新增PersonInfoByApi', '147', 'cc.mrbird.febs.person.controller.PersonInfoController.addPersonInfoByApi()', ' personInfo: PersonInfo(userId=2, userType=null, name=通天塔, idCard=null, nativePlace=null, sex=null, duty=test, unit=test, groupId=null, createDate=null, updateDate=null, nickName=null, avatarUrl=null, openid=1qaz2wsx3edx4edc5rf, country=null, province=null, city=null, language=null)', '192.168.140.1', '2020-02-15 13:18:23', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1104', 'system', '修改GeneratorConfig', '142', 'cc.mrbird.febs.generator.controller.GeneratorConfigController.updateGeneratorConfig()', ' generatorConfig: GeneratorConfig(id=1, author=tongrok, basePackage=cc.mrbird.febs.explain, entityPackage=entity, mapperPackage=mapper, mapperXmlPackage=mapper, servicePackage=service, serviceImplPackage=service.impl, controllerPackage=controller, isTrim=1, trimValue=t_, javaPath=/src/main/java/, resourcesPath=src/main/resources, date=2020-02-15 13:24:54, tableName=null, tableComment=null, className=null)', '192.168.140.1', '2020-02-15 13:24:54', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1105', 'system', '修改GeneratorConfig', '26', 'cc.mrbird.febs.generator.controller.GeneratorConfigController.updateGeneratorConfig()', ' generatorConfig: GeneratorConfig(id=1, author=tongrok, basePackage=cc.mrbird.febs.explain, entityPackage=entity, mapperPackage=mapper, mapperXmlPackage=mapper, servicePackage=service, serviceImplPackage=service.impl, controllerPackage=controller, isTrim=1, trimValue=t_, javaPath=/src/main/java/, resourcesPath=src/main/resources, date=2020-02-15 13:24:55, tableName=null, tableComment=null, className=null)', '192.168.140.1', '2020-02-15 13:24:55', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1106', 'system', '新增Person', '111', 'cc.mrbird.febs.person.controller.PersonController.addPerson()', ' person: Person(userId=1, userType=null, name=null, idCard=null, nativePlace=null, sex=null, duty=null, unit=null, groupId=null, createDate=null, updateDate=null, nickName=null, avatarUrl=null, openid=null, country=null, province=null, city=null, language=null)', '125.121.234.165', '2020-02-15 15:56:21', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1107', null, '新增PersonByApi', '153', 'cc.mrbird.febs.person.controller.PersonController.addPersonByApi()', ' person: \"Person(userId=2, userType=1, name=通天塔, idCard=33333333333333333333333, nativePlace=浙江杭州, sex=1, duty=test, unit=test, groupId=null, createDate=null, updateDate=null, nickName=测试, avatarUrl=null, openid=1qaz2wsx3edx4edc5rf, country=null, province=null, city=null, language=null)\"', '192.168.140.1', '2020-02-15 16:20:59', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1108', 'system', '新增菜单/按钮', '107', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=213, parentId=209, menuName=字典导出, url=null, perms=sss, icon=null, type=1, orderNum=null, createTime=Sat Feb 15 16:54:27 CST 2020, modifyTime=null)\"', '192.168.199.1', '2020-02-15 16:54:27', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1109', 'system', '修改菜单/按钮', '62', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=213, parentId=209, menuName=字典导出, url=null, perms=diect:excel, icon=null, type=1, orderNum=null, createTime=null, modifyTime=Sat Feb 15 16:54:53 CST 2020)\"', '192.168.199.1', '2020-02-15 16:54:53', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1110', 'system', '修改菜单/按钮', '72', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=213, parentId=209, menuName=字典导出, url=null, perms=diect:export, icon=null, type=1, orderNum=null, createTime=null, modifyTime=Sat Feb 15 16:55:13 CST 2020)\"', '192.168.199.1', '2020-02-15 16:55:14', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1111', 'system', '修改角色', '677', 'cc.mrbird.febs.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=1, roleName=系统管理员, remark=系统管理员，拥有所有操作权限 ^_^, createTime=null, modifyTime=Sat Feb 15 16:55:40 CST 2020, menuIds=199,200,201,202,203,206,207,208,204,205,1,3,11,12,13,160,161,4,14,15,16,162,5,17,18,19,163,6,20,21,22,164,209,210,211,212,213,2,8,23,10,24,170,136,171,172,127,128,129,131,175,101,102,103,104,105,106,107,108,173,109,110,174,137,138,165,139,166,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125,167,168,169)\"', '192.168.199.1', '2020-02-15 16:55:41', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1112', 'system', '修改菜单/按钮', '86', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=213, parentId=209, menuName=字典导出, url=null, perms=dict:export, icon=null, type=1, orderNum=null, createTime=null, modifyTime=Sat Feb 15 16:56:23 CST 2020)\"', '192.168.199.1', '2020-02-15 16:56:23', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1113', 'system', '修改角色', '737', 'cc.mrbird.febs.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=1, roleName=系统管理员, remark=系统管理员，拥有所有操作权限 ^_^, createTime=null, modifyTime=Sat Feb 15 16:56:35 CST 2020, menuIds=199,200,201,202,203,206,207,208,204,205,1,3,11,12,13,160,161,4,14,15,16,162,5,17,18,19,163,6,20,21,22,164,209,210,211,212,213,2,8,23,10,24,170,136,171,172,127,128,129,131,175,101,102,103,104,105,106,107,108,173,109,110,174,137,138,165,139,166,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125,167,168,169)\"', '192.168.199.1', '2020-02-15 16:56:36', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1114', 'system', '修改菜单/按钮', '110', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=211, parentId=209, menuName=字典修改, url=null, perms=dict:update, icon=null, type=1, orderNum=null, createTime=null, modifyTime=Sat Feb 15 18:41:33 CST 2020)\"', '127.0.0.1', '2020-02-15 18:41:33', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1115', 'system', '新增Dict', '359', 'cc.mrbird.febs.system.controller.DictController.addDict()', ' dict: Dict(dictId=37, dictName=述求类型, keyy=0, valuee=一般述求, tableName=t_explain, fieldName=e_type)', '192.168.140.1', '2020-02-15 20:41:50', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1116', null, '新增PersonByApi', '1717', 'cc.mrbird.febs.person.controller.PersonController.addPersonByApi()', ' person: \"Person(userId=null, userType=1, name=测试人员, idCard=33010600000000000, nativePlace=浙江杭州, sex=1, duty=测试职务, unit=测试单位, groupId=null, createDate=null, updateDate=null, nickName=测试昵称, avatarUrl=null, openid=1qaz2wsx3edx4edc5rf133, country=null, province=null, city=null, language=null)\"', '192.168.140.1', '2020-02-15 21:17:08', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1117', null, '新增PersonByApi', '2204', 'cc.mrbird.febs.person.controller.PersonController.addPersonByApi()', ' person: \"Person(userId=null, userType=1, name=某某人员, idCard=33010800000000000, nativePlace=浙江某某, sex=1, duty=某某职务, unit=某某单位, groupId=null, createDate=null, updateDate=null, nickName=某某昵称, avatarUrl=null, openid=1qaz2wsx3edx4edc15455, country=null, province=null, city=null, language=null)\"', '192.168.140.1', '2020-02-15 21:18:19', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1118', 'system', '新增菜单/按钮', '111', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=214, parentId=200, menuName=查看人员, url=null, perms=unitPerson:view, icon=null, type=1, orderNum=null, createTime=Sat Feb 15 22:53:10 CST 2020, modifyTime=null)\"', '192.168.140.1', '2020-02-15 22:53:11', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1119', 'system', '修改角色', '955', 'cc.mrbird.febs.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=1, roleName=系统管理员, remark=系统管理员，拥有所有操作权限 ^_^, createTime=null, modifyTime=Sat Feb 15 22:54:30 CST 2020, menuIds=199,200,214,201,202,203,206,207,208,204,205,1,3,11,12,13,160,161,4,14,15,16,162,5,17,18,19,163,6,20,21,22,164,209,210,211,212,213,2,8,23,10,24,170,136,171,172,127,128,129,131,175,101,102,103,104,105,106,107,108,173,109,110,174,137,138,165,139,166,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125,167,168,169)\"', '192.168.140.1', '2020-02-15 22:54:31', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1120', 'system', '修改GeneratorConfig', '114', 'cc.mrbird.febs.generator.controller.GeneratorConfigController.updateGeneratorConfig()', ' generatorConfig: GeneratorConfig(id=1, author=tongrok, basePackage=cc.mrbird.febs.person, entityPackage=entity, mapperPackage=mapper, mapperXmlPackage=mapper, servicePackage=service, serviceImplPackage=service.impl, controllerPackage=controller, isTrim=1, trimValue=t_, javaPath=/src/main/java/, resourcesPath=src/main/resources, date=2020-02-15 23:24:23, tableName=null, tableComment=null, className=null)', '192.168.140.1', '2020-02-15 23:24:23', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1121', 'system', '新增Dict', '124', 'cc.mrbird.febs.system.controller.DictController.addDict()', ' dict: Dict(dictId=38, dictName=述求类型, keyy=1, valuee=社区述求, tableName=t_explain, fieldName=e_type)', '192.168.140.1', '2020-02-16 00:16:07', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1122', 'system', '新增Dict', '124', 'cc.mrbird.febs.system.controller.DictController.addDict()', ' dict: Dict(dictId=39, dictName=述求类型, keyy=2, valuee=医院述求, tableName=t_explain, fieldName=e_type)', '192.168.140.1', '2020-02-16 00:16:30', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1123', 'system', '新增Dict', '95', 'cc.mrbird.febs.system.controller.DictController.addDict()', ' dict: Dict(dictId=40, dictName=人员类型, keyy=0, valuee=医疗人员, tableName=t_person, fieldName=user_type)', '192.168.140.1', '2020-02-16 00:31:37', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1124', 'system', '新增Dict', '92', 'cc.mrbird.febs.system.controller.DictController.addDict()', ' dict: Dict(dictId=41, dictName=人员类型, keyy=1, valuee=帮扶人员, tableName=t_person, fieldName=user_type)', '192.168.140.1', '2020-02-16 00:31:50', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1125', 'system', '新增Dict', '147', 'cc.mrbird.febs.system.controller.DictController.addDict()', ' dict: Dict(dictId=42, dictName=分组类型, keyy=0, valuee=医务小组, tableName=t_group, fieldName=group_type)', '192.168.140.1', '2020-02-16 00:32:38', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1126', 'system', '新增Dict', '100', 'cc.mrbird.febs.system.controller.DictController.addDict()', ' dict: Dict(dictId=43, dictName=分组类型, keyy=1, valuee=帮扶小组, tableName=t_group, fieldName=group_type)', '192.168.140.1', '2020-02-16 00:32:56', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1127', null, '获取PersonByApi', '138', 'cc.mrbird.febs.person.controller.PersonController.getPersonByApi()', ' openId: null', '192.168.140.1', '2020-02-16 01:13:12', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1128', null, '获取PersonByApi', '14', 'cc.mrbird.febs.person.controller.PersonController.getPersonByApi()', ' openId: null', '192.168.140.1', '2020-02-16 01:13:22', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1129', null, '获取PersonByApi', '160', 'cc.mrbird.febs.person.controller.PersonController.getPersonByApi()', ' openId: null', '192.168.140.1', '2020-02-16 01:17:26', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1130', null, '获取PersonByApi', '181', 'cc.mrbird.febs.person.controller.PersonController.getPersonByApi()', ' openid: \"1qaz2wsx3edx4edc1545514\"', '192.168.140.1', '2020-02-16 01:19:20', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1131', null, '获取PersonByApi', '78', 'cc.mrbird.febs.person.controller.PersonController.getPersonByApi()', ' openid: \"1qaz2wsx3edx4edc1545514\"', '192.168.140.1', '2020-02-16 02:41:29', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1132', null, '获取PersonByApi', '10', 'cc.mrbird.febs.person.controller.PersonController.getPersonByApi()', ' openid: \"1qaz2wsx3edx4edc5rf1332\"', '192.168.140.1', '2020-02-16 02:42:04', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1133', null, '获取PersonByApi', '9', 'cc.mrbird.febs.person.controller.PersonController.getPersonByApi()', ' openid: \"1qaz2wsx3edx4edc5rf1332\"', '192.168.140.1', '2020-02-16 02:42:08', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1134', null, '获取PersonByApi', '9', 'cc.mrbird.febs.person.controller.PersonController.getPersonByApi()', ' openid: \"1qaz2wsx3edx4edc5rf1332,1qaz2wsx3edx4edc5rf1332\"', '192.168.140.1', '2020-02-16 02:42:27', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1135', null, '获取PersonByApi', '20', 'cc.mrbird.febs.person.controller.PersonController.getPersonByApi()', ' openid: \"1qaz2wsx3edx4edc5rf1332\"', '192.168.140.1', '2020-02-16 02:42:46', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1136', 'system', '新增Dict', '109', 'cc.mrbird.febs.system.controller.DictController.addDict()', ' dict: Dict(dictId=44, dictName=述求状态, keyy=0, valuee=未处理, tableName=t_explain, fieldName=e_status)', '192.168.140.1', '2020-02-16 09:22:35', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1137', 'system', '新增Dict', '94', 'cc.mrbird.febs.system.controller.DictController.addDict()', ' dict: Dict(dictId=45, dictName=述求状态, keyy=1, valuee=处理中, tableName=t_explain, fieldName=e_status)', '192.168.140.1', '2020-02-16 09:22:50', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1138', 'system', '新增Dict', '102', 'cc.mrbird.febs.system.controller.DictController.addDict()', ' dict: Dict(dictId=46, dictName=述求状态, keyy=2, valuee=已解决, tableName=t_explain, fieldName=e_status)', '192.168.140.1', '2020-02-16 09:23:21', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1139', 'system', '修改Dict', '100', 'cc.mrbird.febs.system.controller.DictController.updateDict()', ' dict: Dict(dictId=44, dictName=述求状态, keyy=0, valuee=待处理, tableName=t_explain, fieldName=e_status)', '192.168.140.1', '2020-02-16 09:23:38', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1140', null, '获取PersonByApi', '51', 'cc.mrbird.febs.person.controller.PersonController.getPersonByApi()', ' openid: \"1qaz2wsx3edx4edc5rf1332\"', '192.168.140.1', '2020-02-16 10:01:58', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1141', null, '获取PersonByApi', '16', 'cc.mrbird.febs.person.controller.PersonController.getPersonByApi()', ' openid: \"1qaz2wsx3edx4edc5rf1335\"', '192.168.140.1', '2020-02-16 10:02:40', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1142', 'system', '删除菜单/按钮', '130', 'cc.mrbird.febs.system.controller.MenuController.deleteMenus()', ' menuIds: \"200,214,201\"', '127.0.0.1', '2020-02-16 11:35:53', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1143', 'system', '新增菜单/按钮', '82', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=215, parentId=199, menuName=查询医疗人员, url=null, perms=pm:view, icon=null, type=1, orderNum=null, createTime=Sun Feb 16 11:36:48 CST 2020, modifyTime=null)\"', '127.0.0.1', '2020-02-16 11:36:48', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1144', 'system', '修改菜单/按钮', '85', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=199, parentId=0, menuName=医疗人员, url=/person/personMedicine, perms=pm:view, icon=layui-icon-user, type=0, orderNum=1, createTime=null, modifyTime=Sun Feb 16 11:37:43 CST 2020)\"', '127.0.0.1', '2020-02-16 11:37:43', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1145', 'system', '修改菜单/按钮', '110', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=215, parentId=199, menuName=新增医疗人员, url=null, perms=pm:add, icon=null, type=1, orderNum=null, createTime=null, modifyTime=Sun Feb 16 11:38:33 CST 2020)\"', '127.0.0.1', '2020-02-16 11:38:33', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1146', 'system', '新增菜单/按钮', '127', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=216, parentId=199, menuName=修改医疗人员, url=null, perms=pm:update, icon=null, type=1, orderNum=null, createTime=Sun Feb 16 11:39:03 CST 2020, modifyTime=null)\"', '127.0.0.1', '2020-02-16 11:39:03', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1147', 'system', '新增菜单/按钮', '62', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=217, parentId=199, menuName=删除医疗人员, url=null, perms=pm:delete, icon=null, type=1, orderNum=null, createTime=Sun Feb 16 11:39:30 CST 2020, modifyTime=null)\"', '127.0.0.1', '2020-02-16 11:39:30', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1148', 'system', '新增菜单/按钮', '288', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=218, parentId=199, menuName=医疗人员导入, url=null, perms=pm:import, icon=null, type=1, orderNum=null, createTime=Sun Feb 16 11:40:08 CST 2020, modifyTime=null)\"', '127.0.0.1', '2020-02-16 11:40:08', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1149', 'system', '新增菜单/按钮', '1834', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=219, parentId=199, menuName=医疗人员导出, url=null, perms=pm:export, icon=null, type=1, orderNum=null, createTime=Sun Feb 16 11:41:03 CST 2020, modifyTime=null)\"', '127.0.0.1', '2020-02-16 11:41:03', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1150', 'system', '新增菜单/按钮', '122', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=220, parentId=202, menuName=新增帮扶人员, url=null, perms=pa:add, icon=null, type=1, orderNum=null, createTime=Sun Feb 16 11:43:07 CST 2020, modifyTime=null)\"', '127.0.0.1', '2020-02-16 11:43:07', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1151', 'system', '新增菜单/按钮', '83', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=221, parentId=202, menuName=修改帮扶人员, url=null, perms=pa:update, icon=null, type=1, orderNum=null, createTime=Sun Feb 16 11:43:46 CST 2020, modifyTime=null)\"', '127.0.0.1', '2020-02-16 11:43:46', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1152', 'system', '新增菜单/按钮', '80', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=222, parentId=202, menuName=删除帮扶人员, url=null, perms=pa:delete, icon=null, type=1, orderNum=null, createTime=Sun Feb 16 11:44:19 CST 2020, modifyTime=null)\"', '127.0.0.1', '2020-02-16 11:44:19', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1153', 'system', '新增菜单/按钮', '119', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=223, parentId=202, menuName=导入帮扶人员, url=null, perms=pa:import, icon=null, type=1, orderNum=null, createTime=Sun Feb 16 11:44:39 CST 2020, modifyTime=null)\"', '127.0.0.1', '2020-02-16 11:44:39', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1154', 'system', '新增菜单/按钮', '289', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=224, parentId=202, menuName=导出帮扶人员, url=null, perms=pa:export, icon=null, type=1, orderNum=null, createTime=Sun Feb 16 11:45:25 CST 2020, modifyTime=null)\"', '127.0.0.1', '2020-02-16 11:45:25', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1155', 'system', '修改角色', '675', 'cc.mrbird.febs.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=1, roleName=系统管理员, remark=系统管理员，拥有所有操作权限 ^_^, createTime=null, modifyTime=Sun Feb 16 11:45:55 CST 2020, menuIds=199,215,216,217,218,219,202,220,221,222,223,224,203,206,207,208,204,205,1,3,11,12,13,160,161,4,14,15,16,162,5,17,18,19,163,6,20,21,22,164,209,210,211,212,213,2,8,23,10,24,170,136,171,172,127,128,129,131,175,101,102,103,104,105,106,107,108,173,109,110,174,137,138,165,139,166,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125,167,168,169)\"', '127.0.0.1', '2020-02-16 11:45:56', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1156', 'system', '修改角色', '218', 'cc.mrbird.febs.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=81, roleName=操作人员, remark=拥有业务功能模块的权限, createTime=null, modifyTime=Sun Feb 16 11:46:08 CST 2020, menuIds=199,215,216,217,218,219,202,220,221,222,223,224,203,206,207,208,204,205)\"', '127.0.0.1', '2020-02-16 11:46:08', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1157', 'system', '修改菜单/按钮', '106', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=206, parentId=203, menuName=医疗小组管理, url=/group/groupMedicine, perms=gm:view, icon=, type=0, orderNum=1, createTime=null, modifyTime=Sun Feb 16 13:24:57 CST 2020)\"', '192.168.140.1', '2020-02-16 13:24:58', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1158', 'system', '新增菜单/按钮', '82', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=225, parentId=206, menuName=新增医疗小组, url=null, perms=gm:add, icon=null, type=1, orderNum=null, createTime=Sun Feb 16 13:25:37 CST 2020, modifyTime=null)\"', '192.168.140.1', '2020-02-16 13:25:37', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1159', 'system', '新增菜单/按钮', '83', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=226, parentId=206, menuName=修改医疗小组, url=null, perms=gm:update, icon=null, type=1, orderNum=null, createTime=Sun Feb 16 13:26:07 CST 2020, modifyTime=null)\"', '192.168.140.1', '2020-02-16 13:26:07', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1160', 'system', '新增菜单/按钮', '93', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=227, parentId=206, menuName=删除医疗小组, url=null, perms=gm:delete, icon=null, type=1, orderNum=null, createTime=Sun Feb 16 13:26:30 CST 2020, modifyTime=null)\"', '192.168.140.1', '2020-02-16 13:26:31', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1161', 'system', '新增用户', '97', 'cc.mrbird.febs.system.controller.UserController.addUser()', ' user: \"User(userId=10, username=admin, password=856aea89ad509f163284abb75579dcfc, deptId=10, email=, mobile=, status=1, createTime=Sun Feb 16 14:04:40 CST 2020, modifyTime=null, lastLoginTime=null, sex=2, avatar=default.jpg, theme=black, isTab=1, description=, deptName=null, createTimeFrom=null, createTimeTo=null, roleId=1, roleName=null)\"', '192.168.140.1', '2020-02-16 14:04:40', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1162', 'system', '修改角色', '308', 'cc.mrbird.febs.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=1, roleName=系统管理员, remark=系统管理员，拥有所有操作权限 ^_^, createTime=null, modifyTime=Sun Feb 16 15:25:26 CST 2020, menuIds=199,215,216,217,218,219,202,220,221,222,223,224,203,206,225,226,227,207,208,204,205,1,3,11,12,13,160,161,4,14,15,16,162,5,17,18,19,163,6,20,21,22,164,209,210,211,212,213,2,8,23,10,24,170,136,171,172,127,128,129,131,175,101,102,103,104,105,106,107,108,173,109,110,174,137,138,165,139,166,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125,167,168,169)\"', '127.0.0.1', '2020-02-16 15:25:26', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1163', 'system', '新增Group', '96', 'cc.mrbird.febs.group.controller.GroupMedicineController.addGroup()', ' groupMedicine: \"GroupMedicine(groupId=10, groupName=测试小组, groupRemark=测试, groupMemberCount=null, groupMemberId=null, groupMemberName=null)\"', '127.0.0.1', '2020-02-16 20:20:59', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1164', 'system', '新增Group', '138', 'cc.mrbird.febs.group.controller.GroupMedicineController.addGroup()', ' groupMedicine: \"GroupMedicine(groupId=11, groupName=测试二组, groupRemark=测试二组, groupMemberCount=null, groupMemberId=11,13, groupMemberName=null)\"', '127.0.0.1', '2020-02-16 20:55:02', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1165', 'system', '新增Group', '133', 'cc.mrbird.febs.group.controller.GroupMedicineController.addGroup()', ' groupMedicine: \"GroupMedicine(groupId=15, groupName=测试顶顶顶顶, groupRemark=, groupMemberCount=null, groupMemberId=null, groupMemberName=null)\"', '127.0.0.1', '2020-02-16 22:32:02', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1166', 'system', '新增Group', '217', 'cc.mrbird.febs.group.controller.GroupMedicineController.addGroup()', ' groupMedicine: \"GroupMedicine(groupId=21, groupName=test, groupRemark=11, groupMemberCount=null, groupMemberId=11,13, groupMemberName=null, groupMemberIds=[11, 13])\"', '127.0.0.1', '2020-02-16 22:56:29', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1167', 'system', '新增Group', '134', 'cc.mrbird.febs.group.controller.GroupMedicineController.addGroup()', ' groupMedicine: \"GroupMedicine(groupId=22, groupName=test333, groupRemark=, groupMemberCount=null, groupMemberId=14,15, groupMemberName=null, groupMemberIds=[14, 15])\"', '127.0.0.1', '2020-02-16 22:56:56', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1168', 'system', '删除Group', '14846', 'cc.mrbird.febs.group.controller.GroupMedicineController.deleteGroup()', ' groupIds: \"22\"', '127.0.0.1', '2020-02-16 23:07:56', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1169', 'system', '删除Group', '243', 'cc.mrbird.febs.group.controller.GroupMedicineController.deleteGroup()', ' groupIds: \"5,6,7,8\"', '127.0.0.1', '2020-02-16 23:11:12', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1170', 'system', '删除Group', '80', 'cc.mrbird.febs.group.controller.GroupMedicineController.deleteGroup()', ' groupIds: \"15\"', '127.0.0.1', '2020-02-16 23:11:18', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1171', 'system', '修改用户', '347', 'cc.mrbird.febs.system.controller.UserController.updateUser()', ' user: \"User(userId=9, username=null, password=null, deptId=null, email=, mobile=, status=1, createTime=null, modifyTime=Mon Feb 17 00:18:42 CST 2020, lastLoginTime=null, sex=2, avatar=null, theme=null, isTab=null, description=, deptName=null, createTimeFrom=null, createTimeTo=null, roleId=81,1,82,83, roleName=null)\"', '127.0.0.1', '2020-02-17 00:18:43', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1172', 'system', '删除Group', '168', 'cc.mrbird.febs.group.controller.GroupMedicineController.deleteGroup()', ' groupIds: \"10,11\"', '127.0.0.1', '2020-02-17 01:33:37', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1173', 'system', '新增Group', '118', 'cc.mrbird.febs.group.controller.GroupMedicineController.addGroup()', ' groupMedicine: \"GroupMedicine(groupId=23, groupName=医疗二组, groupRemark=, groupMemberCount=null, groupMemberId=14,15, groupMemberName=null, groupMemberIds=[14, 15])\"', '127.0.0.1', '2020-02-17 01:45:22', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1174', 'system', '新增Group', '92', 'cc.mrbird.febs.group.controller.GroupMedicineController.addGroup()', ' groupMedicine: \"GroupMedicine(groupId=24, groupName=医疗二组, groupRemark=, groupMemberCount=null, groupMemberId=15,29, groupMemberName=null, groupMemberIds=[15, 29])\"', '127.0.0.1', '2020-02-17 01:45:39', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1175', 'system', '新增Group', '93', 'cc.mrbird.febs.group.controller.GroupMedicineController.addGroup()', ' groupMedicine: \"GroupMedicine(groupId=25, groupName=医疗二组, groupRemark=, groupMemberCount=null, groupMemberId=33, groupMemberName=null, groupMemberIds=[33])\"', '127.0.0.1', '2020-02-17 01:46:05', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1176', 'system', '删除Group', '218', 'cc.mrbird.febs.group.controller.GroupMedicineController.deleteGroup()', ' groupIds: \"24\"', '127.0.0.1', '2020-02-17 01:46:21', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1177', 'system', '删除Group', '96', 'cc.mrbird.febs.group.controller.GroupMedicineController.deleteGroup()', ' groupIds: \"23\"', '127.0.0.1', '2020-02-17 01:46:29', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1178', 'system', '删除Group', '148', 'cc.mrbird.febs.group.controller.GroupMedicineController.deleteGroup()', ' groupIds: \"25\"', '127.0.0.1', '2020-02-17 01:46:31', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1179', 'system', '新增Group', '176', 'cc.mrbird.febs.group.controller.GroupMedicineController.addGroup()', ' groupMedicine: \"GroupMedicine(groupId=26, groupName=医疗四组, groupRemark=, groupMemberCount=null, groupMemberId=14, groupMemberName=null, groupMemberIds=[14])\"', '127.0.0.1', '2020-02-17 01:48:33', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1180', 'system', '删除Group', '173', 'cc.mrbird.febs.group.controller.GroupMedicineController.deleteGroup()', ' groupIds: \"4\"', '127.0.0.1', '2020-02-17 01:48:40', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1181', 'system', '修改Group', '191', 'cc.mrbird.febs.group.controller.GroupMedicineController.updateGroup()', ' groupMedicine: \"GroupMedicine(groupId=2, groupName=医疗二组, groupRemark=, groupMemberCount=null, groupMemberId=29, groupMemberName=null, groupMemberIds=[29])\"', '127.0.0.1', '2020-02-17 01:50:11', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1182', 'system', '修改Group', '100', 'cc.mrbird.febs.group.controller.GroupMedicineController.updateGroup()', ' groupMedicine: \"GroupMedicine(groupId=3, groupName=医疗三组, groupRemark=, groupMemberCount=null, groupMemberId=41,33, groupMemberName=null, groupMemberIds=[41, 33])\"', '127.0.0.1', '2020-02-17 01:50:17', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1183', 'system', '修改Group', '121', 'cc.mrbird.febs.group.controller.GroupMedicineController.updateGroup()', ' groupMedicine: \"GroupMedicine(groupId=1, groupName=医疗一组, groupRemark=, groupMemberCount=null, groupMemberId=28,27,25,24,23,30,31,32,34,35,38,22,4,5,6,8,9,10,3,12,17,16,20, groupMemberName=null, groupMemberIds=[28, 27, 25, 24, 23, 30, 31, 32, 34, 35, 38, 22, 4, 5, 6, 8, 9, 10, 3, 12, 17, 16, 20])\"', '127.0.0.1', '2020-02-17 01:55:18', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1184', 'system', '修改Group', '146', 'cc.mrbird.febs.group.controller.GroupMedicineController.updateGroup()', ' groupMedicine: \"GroupMedicine(groupId=21, groupName=test, groupRemark=11, groupMemberCount=null, groupMemberId=11,13,15,18,19,21,26,40,36,37,39,42, groupMemberName=null, groupMemberIds=[11, 13, 15, 18, 19, 21, 26, 40, 36, 37, 39, 42])\"', '127.0.0.1', '2020-02-17 01:57:53', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1185', 'system', '修改Group', '365', 'cc.mrbird.febs.group.controller.GroupMedicineController.updateGroup()', ' groupMedicine: \"GroupMedicine(groupId=21, groupName=test, groupRemark=11, groupMemberCount=null, groupMemberId=13,15,21,19,42, groupMemberName=null, groupMemberIds=[13, 15, 21, 19, 42])\"', '127.0.0.1', '2020-02-17 01:58:11', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1186', 'system', '修改Group', '172', 'cc.mrbird.febs.group.controller.GroupMedicineController.updateGroup()', ' groupMedicine: \"GroupMedicine(groupId=1, groupName=医疗一组, groupRemark=, groupMemberCount=null, groupMemberId=31,32,34,35,38,23,22,12,9,8,6,5,10,16,17,4,20,7,11,18,24,25,26,27,28,30,36,37,39,40, groupMemberName=null, groupMemberIds=[31, 32, 34, 35, 38, 23, 22, 12, 9, 8, 6, 5, 10, 16, 17, 4, 20, 7, 11, 18, 24, 25, 26, 27, 28, 30, 36, 37, 39, 40])\"', '127.0.0.1', '2020-02-17 02:00:21', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1187', 'system', '修改Group', '161', 'cc.mrbird.febs.group.controller.GroupMedicineController.updateGroup()', ' groupMedicine: \"GroupMedicine(groupId=3, groupName=医疗三组, groupRemark=, groupMemberCount=null, groupMemberId=33, groupMemberName=null, groupMemberIds=[33])\"', '127.0.0.1', '2020-02-17 02:04:18', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1188', 'system', '修改Group', '96', 'cc.mrbird.febs.group.controller.GroupMedicineController.updateGroup()', ' groupMedicine: \"GroupMedicine(groupId=26, groupName=医疗四组, groupRemark=, groupMemberCount=null, groupMemberId=14,41, groupMemberName=null, groupMemberIds=[14, 41])\"', '127.0.0.1', '2020-02-17 02:04:33', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1189', 'system', '修改Group', '105', 'cc.mrbird.febs.group.controller.GroupMedicineController.updateGroup()', ' groupMedicine: \"GroupMedicine(groupId=26, groupName=医疗四组, groupRemark=, groupMemberCount=null, groupMemberId=14,41, groupMemberName=null, groupMemberIds=[14, 41])\"', '127.0.0.1', '2020-02-17 02:05:28', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1190', 'system', '修改菜单/按钮', '200', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=207, parentId=203, menuName=帮扶小组管理, url=/group/groupAssist, perms=, icon=, type=0, orderNum=2, createTime=null, modifyTime=Mon Feb 17 10:40:37 CST 2020)\"', '127.0.0.1', '2020-02-17 10:40:37', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1191', 'system', '新增菜单/按钮', '215', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=228, parentId=207, menuName=新增帮扶小组, url=null, perms=ga:add, icon=null, type=1, orderNum=null, createTime=Mon Feb 17 11:18:42 CST 2020, modifyTime=null)\"', '127.0.0.1', '2020-02-17 11:18:42', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1192', 'system', '新增菜单/按钮', '266', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=229, parentId=207, menuName=修改帮扶小组, url=null, perms=ga:update, icon=null, type=1, orderNum=null, createTime=Mon Feb 17 11:19:21 CST 2020, modifyTime=null)\"', '127.0.0.1', '2020-02-17 11:19:21', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1193', 'system', '新增菜单/按钮', '203', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=230, parentId=207, menuName=删除帮扶小组, url=null, perms=ga:delete, icon=null, type=1, orderNum=null, createTime=Mon Feb 17 11:19:49 CST 2020, modifyTime=null)\"', '127.0.0.1', '2020-02-17 11:19:49', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1194', 'system', '修改菜单/按钮', '192', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=207, parentId=203, menuName=帮扶小组管理, url=/group/groupAssist, perms=ga:view, icon=, type=0, orderNum=2, createTime=null, modifyTime=Mon Feb 17 11:20:01 CST 2020)\"', '127.0.0.1', '2020-02-17 11:20:02', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1195', 'system', '修改角色', '3121', 'cc.mrbird.febs.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=1, roleName=系统管理员, remark=系统管理员，拥有所有操作权限 ^_^, createTime=null, modifyTime=Mon Feb 17 11:21:00 CST 2020, menuIds=199,215,216,217,218,219,202,220,221,222,223,224,203,206,225,226,227,207,228,229,230,208,204,205,1,3,11,12,13,160,161,4,14,15,16,162,5,17,18,19,163,6,20,21,22,164,209,210,211,212,213,2,8,23,10,24,170,136,171,172,127,128,129,131,175,101,102,103,104,105,106,107,108,173,109,110,174,137,138,165,139,166,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125,167,168,169)\"', '127.0.0.1', '2020-02-17 11:21:04', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1196', 'system', '删除Group', '333', 'cc.mrbird.febs.group.controller.GroupMedicineController.deleteGroup()', ' groupIds: \"21\"', '127.0.0.1', '2020-02-17 11:31:47', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1197', 'system', '新增Group', '293', 'cc.mrbird.febs.group.controller.GroupMedicineController.addGroup()', ' groupMedicine: \"GroupMedicine(groupId=27, groupName=测试医疗小组, groupRemark=测试医疗小组, groupMemberCount=null, groupMemberId=3,13, groupMemberName=null, groupMemberIds=[3, 13])\"', '127.0.0.1', '2020-02-17 11:32:09', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1198', 'system', '修改Group', '261', 'cc.mrbird.febs.group.controller.GroupMedicineController.updateGroup()', ' groupMedicine: \"GroupMedicine(groupId=1, groupName=医疗一组, groupRemark=, groupMemberCount=null, groupMemberId=28,27,26,25,24,30,31,40,39,38,37,36,35,34,32,23,22,8,9,10,6,11,12,5,4,16,17,18,20,7, groupMemberName=null, groupMemberIds=[28, 27, 26, 25, 24, 30, 31, 40, 39, 38, 37, 36, 35, 34, 32, 23, 22, 8, 9, 10, 6, 11, 12, 5, 4, 16, 17, 18, 20, 7])\"', '127.0.0.1', '2020-02-17 17:08:34', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1199', 'system', '修改Group', '276', 'cc.mrbird.febs.group.controller.GroupMedicineController.updateGroup()', ' groupMedicine: \"GroupMedicine(groupId=26, groupName=医疗二组, groupRemark=, groupMemberCount=null, groupMemberId=14,41, groupMemberName=null, groupMemberIds=[14, 41])\"', '127.0.0.1', '2020-02-17 17:08:42', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1200', 'system', '修改Group', '279', 'cc.mrbird.febs.group.controller.GroupMedicineController.updateGroup()', ' groupMedicine: \"GroupMedicine(groupId=27, groupName=医疗三组, groupRemark=帮扶小组, groupMemberCount=null, groupMemberId=13,3, groupMemberName=null, groupMemberIds=[13, 3])\"', '127.0.0.1', '2020-02-17 17:08:48', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1201', 'system', '删除Group', '229', 'cc.mrbird.febs.group.controller.GroupMedicineController.deleteGroup()', ' groupIds: \"2\"', '127.0.0.1', '2020-02-17 17:08:51', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1202', 'system', '删除Group', '182', 'cc.mrbird.febs.group.controller.GroupMedicineController.deleteGroup()', ' groupIds: \"3\"', '127.0.0.1', '2020-02-17 17:08:52', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1203', 'system', '修改GeneratorConfig', '222', 'cc.mrbird.febs.generator.controller.GeneratorConfigController.updateGeneratorConfig()', ' generatorConfig: GeneratorConfig(id=1, author=tongrok, basePackage=cc.mrbird.febs.person, entityPackage=entity, mapperPackage=mapper, mapperXmlPackage=mapper, servicePackage=service, serviceImplPackage=service.impl, controllerPackage=controller, isTrim=1, trimValue=t_, javaPath=/src/main/java/, resourcesPath=src/main/resources, date=2020-02-17 22:34:51, tableName=null, tableComment=null, className=null)', '127.0.0.1', '2020-02-17 22:34:51', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1204', null, '新增Wxuser', '249', 'cc.mrbird.febs.person.controller.WxuserController.addWUser()', ' wxuser: \"Wxuser(openid=oSO7I5YsLiYBC0WRyqEenUGCfMTg, telnum1=13333333330, telnum2=13333333330, hospital=中山医院, region=浙江省,杭州市,西湖区, address=首府路1号, passwd=123456, rylx=0, family=1)\"', '127.0.0.1', '2020-02-18 00:11:20', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1205', null, '新增Wxuser', '176', 'cc.mrbird.febs.person.controller.WxuserController.addWUser()', ' wxuser: \"Wxuser(openid=oSO7I5YsLiYBC0WRyqEenUGCfMTg, telnum1=13333333330, telnum2=13333333330, hospital=中山医院, region=浙江省,杭州市,西湖区, address=首府路1号, passwd=123456, rylx=0, family=1)\"', '127.0.0.1', '2020-02-18 00:32:11', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1206', null, '新增Wxuser', '860', 'cc.mrbird.febs.person.controller.WxuserController.addWUser()', ' wxuser: \"Wxuser(openid=ecfcdd4df24354f6f47705c1cc418f29, telnum1=13333333331, telnum2=13333333330, hospital=中山医院, region=浙江省,杭州市,西湖区, address=首府路1号, passwd=123456, rylx=0, family=1)\"', '127.0.0.1', '2020-02-18 00:33:49', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1207', 'system', '修改Group', '294', 'cc.mrbird.febs.group.controller.GroupAssistController.updateGroup()', ' groupAssist: \"GroupAssist(groupId=1, groupName=帮扶一组, groupRemark=, groupMemberCount=null, groupMemberId=4,5,6,7,8,10,12,13,14,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42, groupMemberName=null, groupMemberIds=[4, 5, 6, 7, 8, 10, 12, 13, 14, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42])\"', '127.0.0.1', '2020-02-18 01:53:46', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1208', 'system', '修改Group', '225', 'cc.mrbird.febs.group.controller.GroupMedicineController.updateGroup()', ' groupMedicine: \"GroupMedicine(groupId=27, groupName=医疗三组, groupRemark=帮扶小组, groupMemberCount=null, groupMemberId=12,13,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,42, groupMemberName=null, groupMemberIds=[12, 13, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 42])\"', '127.0.0.1', '2020-02-18 01:54:17', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1209', 'system', '修改Group', '221', 'cc.mrbird.febs.group.controller.GroupMedicineController.updateGroup()', ' groupMedicine: \"GroupMedicine(groupId=1, groupName=医疗一组, groupRemark=, groupMemberCount=null, groupMemberId=3,4, groupMemberName=null, groupMemberIds=[3, 4])\"', '127.0.0.1', '2020-02-18 01:55:34', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1210', 'system', '修改Group', '227', 'cc.mrbird.febs.group.controller.GroupMedicineController.updateGroup()', ' groupMedicine: \"GroupMedicine(groupId=27, groupName=医疗三组, groupRemark=帮扶小组, groupMemberCount=null, groupMemberId=6,7,8, groupMemberName=null, groupMemberIds=[6, 7, 8])\"', '127.0.0.1', '2020-02-18 01:56:25', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1211', 'system', '修改Group', '250', 'cc.mrbird.febs.group.controller.GroupMedicineController.updateGroup()', ' groupMedicine: \"GroupMedicine(groupId=1, groupName=医疗一组, groupRemark=, groupMemberCount=null, groupMemberId=4,5,9,10,11,12,13,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,42, groupMemberName=null, groupMemberIds=[4, 5, 9, 10, 11, 12, 13, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 42])\"', '127.0.0.1', '2020-02-18 01:59:13', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1212', 'system', '修改Group', '269', 'cc.mrbird.febs.group.controller.GroupAssistController.updateGroup()', ' groupAssist: \"GroupAssist(groupId=1, groupName=帮扶一组, groupRemark=, groupMemberCount=null, groupMemberId=10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42, groupMemberName=null, groupMemberIds=[10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42])\"', '127.0.0.1', '2020-02-18 02:01:12', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1213', 'system', '删除Group', '409', 'cc.mrbird.febs.group.controller.GroupAssistController.deleteGroup()', ' groupIds: \"1\"', '127.0.0.1', '2020-02-18 02:07:49', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1214', 'system', '新增Group', '172', 'cc.mrbird.febs.group.controller.GroupMedicineController.addGroup()', ' groupMedicine: \"GroupMedicine(groupId=28, groupName=医疗测试小组, groupRemark=医疗测试小组, groupMemberCount=null, groupMemberId=3,4, groupMemberName=null, groupMemberIds=[3, 4])\"', '127.0.0.1', '2020-02-18 09:01:08', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1215', 'system', '验证WxUser', '133', 'cc.mrbird.febs.person.controller.WxuserController.checkWUser()', ' wxuser: \"Wxuser(openid=null, telnum1=133333333, telnum2=null, hospital=null, region=null, address=null, passwd=123456, rylx=null, family=null)\"', '127.0.0.1', '2020-02-18 10:46:54', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1216', 'system', '验证WxUser', '14944', 'cc.mrbird.febs.person.controller.WxuserController.checkWUser()', ' wxuser: \"Wxuser(openid=null, telnum1=133333333, telnum2=null, hospital=null, region=null, address=null, passwd=123456, rylx=null, family=null)\"', '127.0.0.1', '2020-02-18 10:52:44', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1217', 'system', '验证WxUser', '136', 'cc.mrbird.febs.person.controller.WxuserController.checkWUser()', ' wxuser: \"Wxuser(openid=null, telnum1=133333333, telnum2=null, hospital=null, region=null, address=null, passwd=123456, rylx=null, family=null)\"', '127.0.0.1', '2020-02-18 10:53:43', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1218', 'system', '验证WxUser', '19428', 'cc.mrbird.febs.person.controller.WxuserController.checkWUser()', ' wxuser: \"Wxuser(openid=null, telnum1=133333333, telnum2=null, hospital=null, region=null, address=null, passwd=123456, rylx=null, family=null)\"', '127.0.0.1', '2020-02-18 10:55:23', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1219', 'system', '验证WxUser', '153', 'cc.mrbird.febs.person.controller.WxuserController.checkWUser()', ' wxuser: \"Wxuser(openid=null, telnum1=133333333, telnum2=null, hospital=null, region=null, address=null, passwd=123456, rylx=null, family=null)\"', '127.0.0.1', '2020-02-18 11:14:05', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1220', 'system', '验证WxUser', '128', 'cc.mrbird.febs.person.controller.WxuserController.checkWUser()', ' wxuser: \"Wxuser(openid=null, telnum1=133333333, telnum2=null, hospital=null, region=null, address=null, passwd=123456, rylx=null, family=null)\"', '127.0.0.1', '2020-02-18 11:16:05', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1221', 'system', '新增Wxuser', '150', 'cc.mrbird.febs.person.controller.WxuserController.addWUser()', ' wxuser: \"Wxuser(openid=123123123, telnum1=13333333333, telnum2=13333333333, hospital=11111, region=123, address=11111, passwd=123456, rylx=0, family=1)\"', '127.0.0.1', '2020-02-18 11:22:02', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1222', 'system', '验证WxUser', '110', 'cc.mrbird.febs.person.controller.WxuserController.checkWUser()', ' wxuser: \"Wxuser(openid=null, telnum1=13333333333, telnum2=null, hospital=null, region=null, address=null, passwd=123456, rylx=null, family=null)\"', '127.0.0.1', '2020-02-18 11:22:35', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1223', 'system', '新增ExplainByApi', '812', 'cc.mrbird.febs.explain.controller.ExplainController.addExplainByApi()', ' explain: \"Explain(eid=7976f5b2b98a4967693484e6e32a574f, etype=2, einfo=1111213123, sqrname=cstttt, sqrphone=13588225531, tel=13588225531, sqradress=sssssss, province=浙江省, city=null, district=null, openid=null, sfsw=0, estatus=0, cxly=null, myd=null, fkmx=null, createdate=2020-02-18 14:29:15, wcl=null, clz=null, ycl=null)\"', '127.0.0.1', '2020-02-18 14:29:16', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1224', 'system', '验证WxUserr', '94', 'cc.mrbird.febs.person.controller.WxuserController.getWUser()', ' wxuser: \"Wxuser(openid=null, telnum1=13333333333, telnum2=null, hospital=null, region=null, address=null, passwd=null, rylx=null, family=null)\"', '127.0.0.1', '2020-02-18 16:18:35', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1225', 'system', '修改Group', '208', 'cc.mrbird.febs.group.controller.GroupMedicineController.updateGroup()', ' groupMedicine: \"GroupMedicine(groupId=27, groupName=医疗三组, groupRemark=帮扶小组, groupMemberCount=null, groupMemberId=6,8,7,5, groupMemberName=null, groupMemberIds=[6, 8, 7, 5])\"', '127.0.0.1', '2020-02-18 17:46:57', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1226', 'system', '修改Group', '183', 'cc.mrbird.febs.group.controller.GroupMedicineController.updateGroup()', ' groupMedicine: \"GroupMedicine(groupId=27, groupName=医疗三组, groupRemark=帮扶小组, groupMemberCount=null, groupMemberId=5,6,7,8,9,10, groupMemberName=null, groupMemberIds=[5, 6, 7, 8, 9, 10])\"', '127.0.0.1', '2020-02-18 17:47:05', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1227', 'system', '修改Group', '261', 'cc.mrbird.febs.group.controller.GroupAssistController.updateGroup()', ' groupAssist: \"GroupAssist(groupId=2, groupName=帮扶二组, groupRemark=, groupMemberCount=null, groupMemberId=3,4, groupMemberName=null, groupMemberIds=[3, 4])\"', '127.0.0.1', '2020-02-18 17:48:02', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1228', 'system', '修改Group', '1119', 'cc.mrbird.febs.group.controller.GroupAssistController.updateGroup()', ' groupAssist: \"GroupAssist(groupId=3, groupName=帮扶三组, groupRemark=, groupMemberCount=null, groupMemberId=5,6, groupMemberName=null, groupMemberIds=[5, 6])\"', '127.0.0.1', '2020-02-18 17:57:45', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1229', 'system', '修改Group', '206', 'cc.mrbird.febs.group.controller.GroupAssistController.updateGroup()', ' groupAssist: \"GroupAssist(groupId=4, groupName=帮扶四组, groupRemark=, groupMemberCount=null, groupMemberId=7,8,9, groupMemberName=null, groupMemberIds=[7, 8, 9])\"', '127.0.0.1', '2020-02-18 17:57:54', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1230', 'system', '修改Group', '177', 'cc.mrbird.febs.group.controller.GroupMedicineController.updateGroup()', ' groupMedicine: \"GroupMedicine(groupId=1, groupName=医疗一组, groupRemark=, groupMemberCount=null, groupMemberId=11,12,13, groupMemberName=null, groupMemberIds=[11, 12, 13])\"', '127.0.0.1', '2020-02-18 18:03:56', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1231', 'system', '新增Group', '346', 'cc.mrbird.febs.group.controller.GroupMedicineController.addGroup()', ' groupMedicine: \"GroupMedicine(groupId=29, groupName=医疗小队, groupRemark=, groupMemberCount=null, groupMemberId=16,17,18, groupMemberName=null, groupMemberIds=[16, 17, 18])\"', '127.0.0.1', '2020-02-18 18:04:30', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1232', 'system', '新增Group', '202', 'cc.mrbird.febs.group.controller.GroupMedicineController.addGroup()', ' groupMedicine: \"GroupMedicine(groupId=30, groupName=test, groupRemark=, groupMemberCount=null, groupMemberId=15,19,20,21,22,23,24, groupMemberName=null, groupMemberIds=[15, 19, 20, 21, 22, 23, 24])\"', '127.0.0.1', '2020-02-19 09:18:16', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1233', 'system', '删除Group', '245', 'cc.mrbird.febs.group.controller.GroupMedicineController.deleteGroup()', ' groupIds: \"30\"', '127.0.0.1', '2020-02-19 09:18:21', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1234', null, '验证WxUser', '120', 'cc.mrbird.febs.person.controller.WxuserController.checkWUser()', ' wxuser: \"Wxuser(userid=null, openid=null, telnum1=13700000101, telnum2=null, hospital=null, region=null, address=null, passwd=, rylx=null, family=null)\"', '127.0.0.1', '2020-02-19 09:30:12', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1235', null, '验证WxUser', '46', 'cc.mrbird.febs.person.controller.WxuserController.checkWUser()', ' wxuser: \"Wxuser(userid=null, openid=null, telnum1=13735300000, telnum2=null, hospital=null, region=null, address=null, passwd=, rylx=null, family=null)\"', '127.0.0.1', '2020-02-19 09:34:29', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1236', 'system', '新增菜单/按钮', '170', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=231, parentId=203, menuName=帮扶团队管理, url=/group/groupTeam, perms=gt:view, icon=, type=0, orderNum=3, createTime=Wed Feb 19 10:37:01 CST 2020, modifyTime=null)\"', '127.0.0.1', '2020-02-19 10:37:01', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1237', 'system', '修改菜单/按钮', '186', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=225, parentId=206, menuName=新增, url=null, perms=gm:add, icon=null, type=1, orderNum=null, createTime=null, modifyTime=Wed Feb 19 10:37:09 CST 2020)\"', '127.0.0.1', '2020-02-19 10:37:09', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1238', 'system', '修改菜单/按钮', '134', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=215, parentId=199, menuName=新增, url=null, perms=pm:add, icon=null, type=1, orderNum=null, createTime=null, modifyTime=Wed Feb 19 10:37:14 CST 2020)\"', '127.0.0.1', '2020-02-19 10:37:14', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1239', 'system', '修改菜单/按钮', '167', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=216, parentId=199, menuName=修改, url=null, perms=pm:update, icon=null, type=1, orderNum=null, createTime=null, modifyTime=Wed Feb 19 10:37:18 CST 2020)\"', '127.0.0.1', '2020-02-19 10:37:18', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1240', 'system', '修改菜单/按钮', '129', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=217, parentId=199, menuName=删除, url=null, perms=pm:delete, icon=null, type=1, orderNum=null, createTime=null, modifyTime=Wed Feb 19 10:37:22 CST 2020)\"', '127.0.0.1', '2020-02-19 10:37:23', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1241', 'system', '修改菜单/按钮', '183', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=218, parentId=199, menuName=导入, url=null, perms=pm:import, icon=null, type=1, orderNum=null, createTime=null, modifyTime=Wed Feb 19 10:37:27 CST 2020)\"', '127.0.0.1', '2020-02-19 10:37:27', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1242', 'system', '修改菜单/按钮', '200', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=219, parentId=199, menuName=导出, url=null, perms=pm:export, icon=null, type=1, orderNum=null, createTime=null, modifyTime=Wed Feb 19 10:37:31 CST 2020)\"', '127.0.0.1', '2020-02-19 10:37:31', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1243', 'system', '修改菜单/按钮', '151', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=220, parentId=202, menuName=新增, url=null, perms=pa:add, icon=null, type=1, orderNum=null, createTime=null, modifyTime=Wed Feb 19 10:37:37 CST 2020)\"', '127.0.0.1', '2020-02-19 10:37:38', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1244', 'system', '修改菜单/按钮', '142', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=221, parentId=202, menuName=修改, url=null, perms=pa:update, icon=null, type=1, orderNum=null, createTime=null, modifyTime=Wed Feb 19 10:37:41 CST 2020)\"', '127.0.0.1', '2020-02-19 10:37:42', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1245', 'system', '修改菜单/按钮', '101', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=222, parentId=202, menuName=删除, url=null, perms=pa:delete, icon=null, type=1, orderNum=null, createTime=null, modifyTime=Wed Feb 19 10:37:46 CST 2020)\"', '127.0.0.1', '2020-02-19 10:37:46', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1246', 'system', '修改菜单/按钮', '127', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=223, parentId=202, menuName=导入, url=null, perms=pa:import, icon=null, type=1, orderNum=null, createTime=null, modifyTime=Wed Feb 19 10:37:49 CST 2020)\"', '127.0.0.1', '2020-02-19 10:37:49', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1247', 'system', '修改菜单/按钮', '126', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=224, parentId=202, menuName=导出, url=null, perms=pa:export, icon=null, type=1, orderNum=null, createTime=null, modifyTime=Wed Feb 19 10:37:53 CST 2020)\"', '127.0.0.1', '2020-02-19 10:37:53', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1248', 'system', '修改菜单/按钮', '165', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=226, parentId=206, menuName=修改, url=null, perms=gm:update, icon=null, type=1, orderNum=null, createTime=null, modifyTime=Wed Feb 19 10:38:00 CST 2020)\"', '127.0.0.1', '2020-02-19 10:38:01', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1249', 'system', '修改菜单/按钮', '134', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=227, parentId=206, menuName=删除, url=null, perms=gm:delete, icon=null, type=1, orderNum=null, createTime=null, modifyTime=Wed Feb 19 10:38:08 CST 2020)\"', '127.0.0.1', '2020-02-19 10:38:08', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1250', 'system', '修改菜单/按钮', '247', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=228, parentId=207, menuName=新增, url=null, perms=ga:add, icon=null, type=1, orderNum=null, createTime=null, modifyTime=Wed Feb 19 10:38:15 CST 2020)\"', '127.0.0.1', '2020-02-19 10:38:15', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1251', 'system', '修改菜单/按钮', '142', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=229, parentId=207, menuName=修改, url=null, perms=ga:update, icon=null, type=1, orderNum=null, createTime=null, modifyTime=Wed Feb 19 10:38:20 CST 2020)\"', '127.0.0.1', '2020-02-19 10:38:21', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1252', 'system', '修改菜单/按钮', '154', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=230, parentId=207, menuName=删除, url=null, perms=ga:delete, icon=null, type=1, orderNum=null, createTime=null, modifyTime=Wed Feb 19 10:38:26 CST 2020)\"', '127.0.0.1', '2020-02-19 10:38:26', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1253', 'system', '修改GeneratorConfig', '189', 'cc.mrbird.febs.generator.controller.GeneratorConfigController.updateGeneratorConfig()', ' generatorConfig: GeneratorConfig(id=1, author=tongrok, basePackage=cc.mrbird.febs.group, entityPackage=entity, mapperPackage=mapper, mapperXmlPackage=mapper, servicePackage=service, serviceImplPackage=service.impl, controllerPackage=controller, isTrim=1, trimValue=t_, javaPath=/src/main/java/, resourcesPath=src/main/resources, date=2020-02-19 10:41:10, tableName=null, tableComment=null, className=null)', '127.0.0.1', '2020-02-19 10:41:10', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1254', 'system', '修改Group', '321', 'cc.mrbird.febs.group.controller.GroupMedicineController.updateGroup()', ' groupMedicine: \"GroupMedicine(groupId=27, groupName=医疗三组, groupMembers=15,19, groupRemark=帮扶小组, groupMemberCount=null, groupMemberId=null, groupMemberName=null, groupMemberIds=[15, 19])\"', '127.0.0.1', '2020-02-19 11:41:11', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1255', 'system', '修改Group', '303', 'cc.mrbird.febs.group.controller.GroupMedicineController.updateGroup()', ' groupMedicine: \"GroupMedicine(groupId=1, groupName=医疗一组, groupMembers=5,6, groupRemark=, groupMemberCount=null, groupMemberName=null, groupMemberIds=[5, 6])\"', '127.0.0.1', '2020-02-19 11:51:05', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1256', 'system', '修改Group', '215', 'cc.mrbird.febs.group.controller.GroupMedicineController.updateGroup()', ' groupMedicine: \"GroupMedicine(groupId=29, groupName=医疗小队, groupMembers=7,8,9,10, groupRemark=, groupMemberCount=null, groupMemberName=null, groupMemberIds=[7, 8, 9, 10])\"', '127.0.0.1', '2020-02-19 11:51:11', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1257', 'system', '修改Group', '205', 'cc.mrbird.febs.group.controller.GroupMedicineController.updateGroup()', ' groupMedicine: \"GroupMedicine(groupId=28, groupName=医疗测试小组, groupMembers=15,19,12, groupRemark=医疗测试小组, groupMemberCount=null, groupMemberName=null, groupMemberIds=[15, 19, 12])\"', '127.0.0.1', '2020-02-19 11:51:30', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1258', 'system', '修改Group', '199', 'cc.mrbird.febs.group.controller.GroupMedicineController.updateGroup()', ' groupMedicine: \"GroupMedicine(groupId=26, groupName=医疗二组, groupMembers=3,4, groupRemark=, groupMemberCount=null, groupMemberName=null, groupMemberIds=[3, 4])\"', '127.0.0.1', '2020-02-19 11:51:35', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1259', 'system', '修改Group', '201', 'cc.mrbird.febs.group.controller.GroupMedicineController.updateGroup()', ' groupMedicine: \"GroupMedicine(groupId=27, groupName=医疗三组, groupMembers=13,14,16, groupRemark=帮扶小组, groupMemberCount=null, groupMemberName=null, groupMemberIds=[13, 14, 16])\"', '127.0.0.1', '2020-02-19 11:51:45', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1260', 'system', '修改Group', '374', 'cc.mrbird.febs.group.controller.GroupAssistController.updateGroup()', ' groupAssist: \"GroupAssist(groupId=4, groupName=帮扶四组, groupRemark=, groupMembers=10,11,12, groupMemberCount=null, groupMemberName=null, groupMemberIds=[10, 11, 12])\"', '127.0.0.1', '2020-02-19 11:51:54', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1261', 'system', '修改Group', '204', 'cc.mrbird.febs.group.controller.GroupAssistController.updateGroup()', ' groupAssist: \"GroupAssist(groupId=4, groupName=帮扶四组, groupRemark=, groupMembers=13, groupMemberCount=null, groupMemberName=null, groupMemberIds=[13])\"', '127.0.0.1', '2020-02-19 11:51:58', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1262', 'system', '修改Group', '211', 'cc.mrbird.febs.group.controller.GroupAssistController.updateGroup()', ' groupAssist: \"GroupAssist(groupId=4, groupName=帮扶四组, groupRemark=, groupMembers=14,15,17,18,16, groupMemberCount=null, groupMemberName=null, groupMemberIds=[14, 15, 17, 18, 16])\"', '127.0.0.1', '2020-02-19 11:52:04', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1263', 'system', '修改Group', '196', 'cc.mrbird.febs.group.controller.GroupAssistController.updateGroup()', ' groupAssist: \"GroupAssist(groupId=2, groupName=帮扶二组, groupRemark=, groupMembers=19,20, groupMemberCount=null, groupMemberName=null, groupMemberIds=[19, 20])\"', '127.0.0.1', '2020-02-19 11:52:09', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1264', 'system', '修改Group', '204', 'cc.mrbird.febs.group.controller.GroupAssistController.updateGroup()', ' groupAssist: \"GroupAssist(groupId=2, groupName=帮扶二组, groupRemark=, groupMembers=22,21, groupMemberCount=null, groupMemberName=null, groupMemberIds=[22, 21])\"', '127.0.0.1', '2020-02-19 11:55:22', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1265', 'system', '修改Group', '211', 'cc.mrbird.febs.group.controller.GroupAssistController.updateGroup()', ' groupAssist: \"GroupAssist(groupId=2, groupName=帮扶二组, groupRemark=, groupMembers=23,24, groupMemberCount=null, groupMemberName=null, groupMemberIds=[23, 24])\"', '127.0.0.1', '2020-02-19 11:55:31', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1266', 'system', '修改Group', '228', 'cc.mrbird.febs.group.controller.GroupAssistController.updateGroup()', ' groupAssist: \"GroupAssist(groupId=2, groupName=帮扶二组, groupRemark=, groupMembers=23,24, groupMemberCount=null, groupMemberName=null, groupMemberIds=[23, 24])\"', '127.0.0.1', '2020-02-19 11:57:46', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1267', 'system', '修改Group', '212', 'cc.mrbird.febs.group.controller.GroupAssistController.updateGroup()', ' groupAssist: \"GroupAssist(groupId=2, groupName=帮扶二组, groupRemark=, groupMembers=23,24,3,4, groupMemberCount=null, groupMemberName=null, groupMemberIds=[23, 24, 3, 4])\"', '127.0.0.1', '2020-02-19 11:58:03', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1268', 'system', '修改Group', '576', 'cc.mrbird.febs.group.controller.GroupAssistController.updateGroup()', ' groupAssist: \"GroupAssist(groupId=2, groupName=帮扶二组, groupRemark=, groupMembers=23,24,3,4,19,20, groupMemberCount=null, groupMemberName=null, groupMemberIds=[23, 24, 3, 4, 19, 20])\"', '127.0.0.1', '2020-02-19 12:10:05', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1269', 'system', '删除Group', '325', 'cc.mrbird.febs.group.controller.GroupAssistController.deleteGroup()', ' groupIds: \"3\"', '127.0.0.1', '2020-02-19 12:10:15', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1270', 'system', '修改Group', '227', 'cc.mrbird.febs.group.controller.GroupAssistController.updateGroup()', ' groupAssist: \"GroupAssist(groupId=4, groupName=帮扶四组, groupRemark=, groupMembers=14,15,17,18,16,5,6, groupMemberCount=null, groupMemberName=null, groupMemberIds=[14, 15, 17, 18, 16, 5, 6])\"', '127.0.0.1', '2020-02-19 12:10:21', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1271', 'system', '修改Group', '199', 'cc.mrbird.febs.group.controller.GroupAssistController.updateGroup()', ' groupAssist: \"GroupAssist(groupId=4, groupName=帮扶四组, groupRemark=, groupMembers=14,15,17,18,16,5,6,7,8,9,10,11,12,13,21,22,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42, groupMemberCount=null, groupMemberName=null, groupMemberIds=[14, 15, 17, 18, 16, 5, 6, 7, 8, 9, 10, 11, 12, 13, 21, 22, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42])\"', '127.0.0.1', '2020-02-19 12:10:42', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1272', 'system', '修改Group', '227', 'cc.mrbird.febs.group.controller.GroupAssistController.updateGroup()', ' groupAssist: \"GroupAssist(groupId=4, groupName=帮扶四组, groupRemark=, groupMembers=5,6, groupMemberCount=null, groupMemberName=null, groupMemberIds=[5, 6])\"', '127.0.0.1', '2020-02-19 12:10:51', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1273', 'system', '新增Group', '200', 'cc.mrbird.febs.group.controller.GroupAssistController.addGroup()', ' groupAssist: \"GroupAssist(groupId=10, groupName=帮扶一组, groupRemark=, groupMembers=7,8, groupMemberCount=null, groupMemberName=null, groupMemberIds=[7, 8])\"', '127.0.0.1', '2020-02-19 12:14:07', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1274', 'system', '验证WxUser', '106', 'cc.mrbird.febs.person.controller.WxuserController.checkWUser()', ' telnum1: \"1333333\" passwd: \"1111\"', '127.0.0.1', '2020-02-19 14:39:18', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1275', 'system', '验证WxUser', '44', 'cc.mrbird.febs.person.controller.WxuserController.checkWUser()', ' telnum1: \"13333333\" passwd: \"1111\"', '127.0.0.1', '2020-02-19 14:39:40', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1276', 'system', '修改Group', '284', 'cc.mrbird.febs.group.controller.GroupMedicineController.updateGroup()', ' groupMedicine: \"GroupMedicine(groupId=29, groupName=医疗小队, groupMembers=7,8,9,10,11, groupRemark=, groupMemberCount=null, groupMemberName=null, groupMemberIds=[7, 8, 9, 10, 11])\"', '0:0:0:0:0:0:0:1', '2020-02-19 14:41:23', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1277', 'system', '修改Group', '200', 'cc.mrbird.febs.group.controller.GroupAssistController.updateGroup()', ' groupAssist: \"GroupAssist(groupId=2, groupName=帮扶二组, groupRemark=, groupMembers=3,4,9,10, groupMemberCount=null, groupMemberName=null, groupMemberIds=[3, 4, 9, 10])\"', '0:0:0:0:0:0:0:1', '2020-02-19 14:41:34', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1278', 'system', '修改Group', '187', 'cc.mrbird.febs.group.controller.GroupAssistController.updateGroup()', ' groupAssist: \"GroupAssist(groupId=4, groupName=帮扶四组, groupRemark=, groupMembers=5,6,11,12, groupMemberCount=null, groupMemberName=null, groupMemberIds=[5, 6, 11, 12])\"', '0:0:0:0:0:0:0:1', '2020-02-19 14:41:39', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1279', 'system', '修改Group', '248', 'cc.mrbird.febs.group.controller.GroupAssistController.updateGroup()', ' groupAssist: \"GroupAssist(groupId=2, groupName=帮扶二组, groupRemark=, groupMembers=, groupMemberCount=null, groupMemberName=null, groupMemberIds=null)\"', '0:0:0:0:0:0:0:1', '2020-02-19 15:30:33', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1280', 'system', '修改Group', '347', 'cc.mrbird.febs.group.controller.GroupAssistController.updateGroup()', ' groupAssist: \"GroupAssist(groupId=2, groupName=帮扶二组, groupRemark=帮扶二组, guserid=null, groupMembers=3,4,9,10, groupMemberCount=null, groupMemberName=null, groupMemberIds=[3, 4, 9, 10])\"', '0:0:0:0:0:0:0:1', '2020-02-19 16:59:06', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1281', 'system', '修改Group', '13972', 'cc.mrbird.febs.group.controller.GroupAssistController.updateGroup()', ' groupAssist: \"GroupAssist(groupId=10, groupName=帮扶一组, groupRemark=, guserid=null, groupMembers=7,8,13, groupMemberCount=null, groupMemberName=null, groupMemberIds=[7, 8, 13])\"', '0:0:0:0:0:0:0:1', '2020-02-19 17:03:28', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1282', 'system', '修改WUser', '213', 'cc.mrbird.febs.person.controller.WxuserController.UpdateWUser()', ' wxuser: \"Wxuser(userid=null, openid=null, telnum1=13858020036, telnum2=null, hospital=null, region=null, address=null, passwd=123456, rylx=null, family=null)\"', '0:0:0:0:0:0:0:1', '2020-02-19 17:22:44', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1283', 'system', '修改Group', '308', 'cc.mrbird.febs.group.controller.GroupAssistController.updateGroup()', ' groupAssist: \"GroupAssist(groupId=10, groupName=帮扶一组, groupRemark=, groupLeader=7, groupMembers=7,8,13, groupMemberCount=null, groupMemberName=null, groupMemberIds=[7, 8, 13])\"', '0:0:0:0:0:0:0:1', '2020-02-19 17:45:17', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1284', 'system', '导出PM', '2736', 'cc.mrbird.febs.person.controller.PersonMedicineController.export()', ' queryRequest: \"QueryRequest(pageSize=30, pageNum=1, field=null, order=null)\" person: \"PersonMedicine(personId=null, personName=null, idCard=null, nativePlace=null, duty=null, unit=null, sex=null, accredited=null, age=null, party=null, szyld=null, groupId=null, groupName=null, createTime=null, updateTime=null, explainType=null, explainTypeName=null, explainInfo=null, explainStatus=null, explainStatusName=null, explainCreateTime=null, explainDealTime=null)\" response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@30ae8b16', '192.168.1.4', '2020-02-19 19:20:07', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1285', 'system', '导出PM', '1710', 'cc.mrbird.febs.person.controller.PersonMedicineController.export()', ' queryRequest: \"QueryRequest(pageSize=30, pageNum=1, field=null, order=null)\" person: \"PersonMedicine(personId=null, personName=null, age=null, sex=null, party=null, unit=null, duty=null, szyld=null, accredited=null, idCard=null, nativePlace=null, phone=null, groupId=null, groupName=null, createTime=null, updateTime=null, explainType=null, explainTypeName=null, explainInfo=null, explainStatus=null, explainStatusName=null, explainCreateTime=null, explainDealTime=null)\" response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@1401f21d', '192.168.1.4', '2020-02-19 19:40:46', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1286', 'system', '修改Group', '255', 'cc.mrbird.febs.group.controller.GroupAssistController.updateGroup()', ' groupAssist: \"GroupAssist(groupId=2, groupName=帮扶二组, groupRemark=帮扶二组, groupLeader=4, groupMembers=3,4,9,10, groupLeaderName=null, groupMemberCount=null, groupMemberName=null, groupMemberIds=[3, 4, 9, 10])\"', '127.0.0.1', '2020-02-19 19:42:33', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1287', 'system', '修改Group', '173', 'cc.mrbird.febs.group.controller.GroupAssistController.updateGroup()', ' groupAssist: \"GroupAssist(groupId=4, groupName=帮扶四组, groupRemark=, groupLeader=5, groupMembers=5,6,11,12, groupLeaderName=null, groupMemberCount=null, groupMemberName=null, groupMemberIds=[5, 6, 11, 12])\"', '127.0.0.1', '2020-02-19 19:42:39', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1288', 'system', '新增菜单/按钮', '349', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=232, parentId=231, menuName=新增团队, url=null, perms=gt:add, icon=null, type=1, orderNum=null, createTime=Wed Feb 19 20:42:15 CST 2020, modifyTime=null)\"', '127.0.0.1', '2020-02-19 20:42:15', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1289', 'system', '新增菜单/按钮', '549', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=233, parentId=231, menuName=修改, url=null, perms=gt:update, icon=null, type=1, orderNum=null, createTime=Wed Feb 19 20:42:33 CST 2020, modifyTime=null)\"', '127.0.0.1', '2020-02-19 20:42:33', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1290', 'system', '修改角色', '2488', 'cc.mrbird.febs.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=1, roleName=系统管理员, remark=系统管理员，拥有所有操作权限 ^_^, createTime=null, modifyTime=Wed Feb 19 21:09:27 CST 2020, menuIds=199,215,216,217,218,219,202,220,221,222,223,224,203,206,225,226,227,207,228,229,230,208,231,232,233,204,205,1,3,11,12,13,160,161,4,14,15,16,162,5,17,18,19,163,6,20,21,22,164,209,210,211,212,213,2,8,23,10,24,170,136,171,172,127,128,129,131,175,101,102,103,104,105,106,107,108,173,109,110,174,137,138,165,139,166,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125,167,168,169)\"', '127.0.0.1', '2020-02-19 21:09:30', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1291', 'system', '修改角色', '2140', 'cc.mrbird.febs.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=1, roleName=系统管理员, remark=系统管理员，拥有所有操作权限 ^_^, createTime=null, modifyTime=Wed Feb 19 21:09:30 CST 2020, menuIds=199,215,216,217,218,219,202,220,221,222,223,224,203,206,225,226,227,207,228,229,230,208,231,232,233,204,205,1,3,11,12,13,160,161,4,14,15,16,162,5,17,18,19,163,6,20,21,22,164,209,210,211,212,213,2,8,23,10,24,170,136,171,172,127,128,129,131,175,101,102,103,104,105,106,107,108,173,109,110,174,137,138,165,139,166,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125,167,168,169)\"', '127.0.0.1', '2020-02-19 21:09:32', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1292', 'system', '修改菜单/按钮', '140', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=232, parentId=231, menuName=新增, url=null, perms=gt:add, icon=null, type=1, orderNum=null, createTime=null, modifyTime=Wed Feb 19 21:09:44 CST 2020)\"', '127.0.0.1', '2020-02-19 21:09:44', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1293', 'system', '新增菜单/按钮', '144', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=234, parentId=231, menuName=双层, url=null, perms=gt:delete, icon=null, type=1, orderNum=null, createTime=Wed Feb 19 21:10:23 CST 2020, modifyTime=null)\"', '127.0.0.1', '2020-02-19 21:10:23', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1294', 'system', '修改角色', '2050', 'cc.mrbird.febs.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=1, roleName=系统管理员, remark=系统管理员，拥有所有操作权限 ^_^, createTime=null, modifyTime=Wed Feb 19 21:10:34 CST 2020, menuIds=199,215,216,217,218,219,202,220,221,222,223,224,203,206,225,226,227,207,228,229,230,208,231,232,233,234,204,205,1,3,11,12,13,160,161,4,14,15,16,162,5,17,18,19,163,6,20,21,22,164,209,210,211,212,213,2,8,23,10,24,170,136,171,172,127,128,129,131,175,101,102,103,104,105,106,107,108,173,109,110,174,137,138,165,139,166,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125,167,168,169)\"', '127.0.0.1', '2020-02-19 21:10:36', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1295', 'system', '修改角色', '2073', 'cc.mrbird.febs.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=1, roleName=系统管理员, remark=系统管理员，拥有所有操作权限 ^_^, createTime=null, modifyTime=Wed Feb 19 21:10:36 CST 2020, menuIds=199,215,216,217,218,219,202,220,221,222,223,224,203,206,225,226,227,207,228,229,230,208,231,232,233,234,204,205,1,3,11,12,13,160,161,4,14,15,16,162,5,17,18,19,163,6,20,21,22,164,209,210,211,212,213,2,8,23,10,24,170,136,171,172,127,128,129,131,175,101,102,103,104,105,106,107,108,173,109,110,174,137,138,165,139,166,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125,167,168,169)\"', '127.0.0.1', '2020-02-19 21:10:38', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1296', 'system', '修改菜单/按钮', '164', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=234, parentId=231, menuName=删除, url=null, perms=gt:delete, icon=null, type=1, orderNum=null, createTime=null, modifyTime=Wed Feb 19 21:10:52 CST 2020)\"', '127.0.0.1', '2020-02-19 21:10:52', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1297', 'system', '修改Group', '283', 'cc.mrbird.febs.group.controller.GroupAssistController.updateGroup()', ' groupAssist: \"GroupAssist(groupId=10, groupName=帮扶一组, groupRemark=帮扶一组, groupLeader=7, groupMembers=7,8,13, groupLeaderName=null, groupMemberCount=null, groupMemberName=null, groupMemberIds=[7, 8, 13])\"', '127.0.0.1', '2020-02-19 21:52:23', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1298', 'system', '修改Group', '205', 'cc.mrbird.febs.group.controller.GroupAssistController.updateGroup()', ' groupAssist: \"GroupAssist(groupId=2, groupName=帮扶二组, groupRemark=帮扶二组, groupLeader=4, groupMembers=9,10, groupLeaderName=null, groupMemberCount=null, groupMemberName=null, groupMemberIds=[9, 10])\"', '0:0:0:0:0:0:0:1', '2020-02-19 22:34:27', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1299', 'system', '修改Group', '288', 'cc.mrbird.febs.group.controller.GroupMedicineController.updateGroup()', ' groupMedicine: \"GroupMedicine(groupId=29, groupName=医疗小队, groupMembers=7,8,9,10,11, groupRemark=, groupMemberCount=null, groupMemberName=null, groupMemberIds=[7, 8, 9, 10, 11])\"', '192.168.140.1', '2020-02-20 10:14:23', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1300', 'system', '修改Group', '264', 'cc.mrbird.febs.group.controller.GroupAssistController.updateGroup()', ' groupAssist: \"GroupAssist(groupId=2, groupName=帮扶二组, groupRemark=帮扶二组, groupLeader=3, groupMembers=4,5, groupLeaderName=null, groupMemberCount=null, groupMemberName=null, groupMemberIds=[4, 5])\"', '192.168.140.1', '2020-02-20 10:17:26', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1301', 'system', '修改Group', '285', 'cc.mrbird.febs.group.controller.GroupAssistController.updateGroup()', ' groupAssist: \"GroupAssist(groupId=2, groupName=帮扶二组, groupRemark=帮扶二组, groupLeader=3, groupMembers=4,5, groupLeaderName=null, groupMemberCount=null, groupMemberName=null, groupMemberIds=[4, 5])\"', '192.168.140.1', '2020-02-20 10:29:04', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1302', 'system', '修改Group', '231', 'cc.mrbird.febs.group.controller.GroupAssistController.updateGroup()', ' groupAssist: \"GroupAssist(groupId=4, groupName=帮扶四组, groupRemark=, groupLeader=6, groupMembers=7,8, groupLeaderName=null, groupMemberCount=null, groupMemberName=null, groupMemberIds=[7, 8])\"', '192.168.140.1', '2020-02-20 10:29:20', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1303', 'system', '修改Group', '244', 'cc.mrbird.febs.group.controller.GroupAssistController.updateGroup()', ' groupAssist: \"GroupAssist(groupId=10, groupName=帮扶一组, groupRemark=帮扶一组, groupLeader=9, groupMembers=10,11, groupLeaderName=null, groupMemberCount=null, groupMemberName=null, groupMemberIds=[10, 11])\"', '192.168.140.1', '2020-02-20 10:29:28', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1304', 'system', '修改Group', '321', 'cc.mrbird.febs.group.controller.GroupAssistController.updateGroup()', ' groupAssist: \"GroupAssist(groupId=2, groupName=帮扶二组, groupRemark=帮扶二组, groupLeader=3, groupMembers=4,5, groupLeaderName=null, groupMemberCount=null, groupMemberName=null, groupMemberIds=[4, 5])\"', '192.168.140.1', '2020-02-20 10:37:25', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1305', 'system', '修改Group', '288', 'cc.mrbird.febs.group.controller.GroupAssistController.updateGroup()', ' groupAssist: \"GroupAssist(groupId=2, groupName=帮扶二组, groupRemark=帮扶二组, groupLeader=3, groupMembers=4,5, groupLeaderName=null, groupMemberCount=null, groupMemberName=null, groupMemberIds=[4, 5])\"', '192.168.140.1', '2020-02-20 10:39:57', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1306', 'system', '验证WxUser', '143', 'cc.mrbird.febs.person.controller.WxuserController.checkWUser()', ' telnum1: \"13333333333\" passwd: \"123456\"', '192.168.140.1', '2020-02-20 11:02:15', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1307', 'system', '修改Group', '295', 'cc.mrbird.febs.group.controller.GroupMedicineController.updateGroup()', ' groupMedicine: \"GroupMedicine(groupId=29, groupName=医疗小队, groupMembers=7,8,9,10,11,17,18,20,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190, groupRemark=, groupMemberCount=null, groupMemberName=null, groupMemberIds=[7, 8, 9, 10, 11, 17, 18, 20, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190])\"', '192.168.140.1', '2020-02-20 11:36:06', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1308', 'system', '修改Group', '178', 'cc.mrbird.febs.group.controller.GroupMedicineController.updateGroup()', ' groupMedicine: \"GroupMedicine(groupId=27, groupName=医疗三组, groupMembers=, groupRemark=帮扶小组, groupMemberCount=null, groupMemberName=null, groupMemberIds=null)\"', '192.168.140.1', '2020-02-20 11:36:23', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1309', 'system', '修改Group', '201', 'cc.mrbird.febs.group.controller.GroupMedicineController.updateGroup()', ' groupMedicine: \"GroupMedicine(groupId=26, groupName=医疗二组, groupMembers=, groupRemark=, groupMemberCount=null, groupMemberName=null, groupMemberIds=null)\"', '192.168.140.1', '2020-02-20 11:36:29', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1310', 'system', '修改Group', '206', 'cc.mrbird.febs.group.controller.GroupMedicineController.updateGroup()', ' groupMedicine: \"GroupMedicine(groupId=29, groupName=医疗小队, groupMembers=3,4, groupRemark=, groupMemberCount=null, groupMemberName=null, groupMemberIds=[3, 4])\"', '192.168.140.1', '2020-02-20 11:36:39', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1311', 'system', '修改Group', '104', 'cc.mrbird.febs.group.controller.GroupMedicineController.updateGroup()', ' groupMedicine: \"GroupMedicine(groupId=28, groupName=医疗测试小组, groupMembers=15,19,12,192,193,137,191, groupRemark=医疗测试小组, groupMemberCount=null, groupMemberName=null, groupMemberIds=[15, 19, 12, 192, 193, 137, 191])\"', '192.168.140.1', '2020-02-20 12:18:25', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1312', 'system', '修改Group', '110', 'cc.mrbird.febs.group.controller.GroupMedicineController.updateGroup()', ' groupMedicine: \"GroupMedicine(groupId=28, groupName=医疗测试小组, groupMembers=15,19,12, groupRemark=医疗测试小组, groupMemberCount=null, groupMemberName=null, groupMemberIds=[15, 19, 12])\"', '192.168.199.1', '2020-02-20 13:31:59', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1313', 'system', '修改GeneratorConfig', '100', 'cc.mrbird.febs.generator.controller.GeneratorConfigController.updateGeneratorConfig()', ' generatorConfig: GeneratorConfig(id=1, author=tongrok, basePackage=cc.mrbird.febs.feedback, entityPackage=entity, mapperPackage=mapper, mapperXmlPackage=mapper, servicePackage=service, serviceImplPackage=service.impl, controllerPackage=controller, isTrim=1, trimValue=t_, javaPath=/src/main/java/, resourcesPath=src/main/resources, date=2020-02-20 15:49:26, tableName=null, tableComment=null, className=null)', '0:0:0:0:0:0:0:1', '2020-02-20 15:49:26', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1314', 'system', '修改菜单/按钮', '854', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=202, parentId=0, menuName=帮扶团队, url=/person/personAssist, perms=pa:view, icon=layui-icon-team, type=0, orderNum=2, createTime=null, modifyTime=Thu Feb 20 16:13:15 CST 2020)\"', '192.168.1.4', '2020-02-20 16:13:16', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1315', 'system', '修改Group', '235', 'cc.mrbird.febs.group.controller.GroupAssistController.updateGroup()', ' groupAssist: \"GroupAssist(groupId=2, groupName=帮扶二组, groupRemark=帮扶二组, groupLeader=3, groupMembers=4,5,12,13, groupLeaderName=null, groupMemberCount=null, groupMemberName=null, groupMemberIds=[4, 5, 12, 13])\"', '0:0:0:0:0:0:0:1', '2020-02-20 16:15:45', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1316', 'system', '修改Group', '198', 'cc.mrbird.febs.group.controller.GroupAssistController.updateGroup()', ' groupAssist: \"GroupAssist(groupId=2, groupName=帮扶二组, groupRemark=帮扶二组, groupLeader=3, groupMembers=4,5,12, groupLeaderName=null, groupMemberCount=null, groupMemberName=null, groupMemberIds=[4, 5, 12])\"', '0:0:0:0:0:0:0:1', '2020-02-20 16:15:51', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1317', 'system', '修改Group', '104', 'cc.mrbird.febs.group.controller.GroupAssistController.updateGroup()', ' groupAssist: \"GroupAssist(groupId=4, groupName=帮扶四组, groupRemark=, groupLeader=13, groupMembers=7,8, groupLeaderName=null, groupMemberCount=null, groupMemberName=null, groupMemberIds=[7, 8])\"', '0:0:0:0:0:0:0:1', '2020-02-20 16:16:00', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1318', 'system', '修改GeneratorConfig', '114', 'cc.mrbird.febs.generator.controller.GeneratorConfigController.updateGeneratorConfig()', ' generatorConfig: GeneratorConfig(id=1, author=tongrok, basePackage=cc.mrbird.febs.explain, entityPackage=entity, mapperPackage=mapper, mapperXmlPackage=mapper, servicePackage=service, serviceImplPackage=service.impl, controllerPackage=controller, isTrim=1, trimValue=t_, javaPath=/src/main/java/, resourcesPath=src/main/resources, date=2020-02-20 16:38:55, tableName=null, tableComment=null, className=null)', '0:0:0:0:0:0:0:1', '2020-02-20 16:38:56', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1319', 'system', '删除定时任务', '398', 'cc.mrbird.febs.job.controller.JobController.deleteJob()', ' jobIds: \"11\"', '0:0:0:0:0:0:0:1', '2020-02-20 17:17:33', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1320', 'system', '删除定时任务', '210', 'cc.mrbird.febs.job.controller.JobController.deleteJob()', ' jobIds: \"3\"', '0:0:0:0:0:0:0:1', '2020-02-20 17:17:35', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1321', 'system', '删除定时任务', '158', 'cc.mrbird.febs.job.controller.JobController.deleteJob()', ' jobIds: \"2\"', '0:0:0:0:0:0:0:1', '2020-02-20 17:17:36', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1322', 'system', '删除定时任务', '122', 'cc.mrbird.febs.job.controller.JobController.deleteJob()', ' jobIds: \"1\"', '0:0:0:0:0:0:0:1', '2020-02-20 17:17:38', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1323', 'system', '删除Group', '220', 'cc.mrbird.febs.group.controller.GroupAssistController.deleteGroup()', ' groupIds: \"10\"', '0:0:0:0:0:0:0:1', '2020-02-20 17:20:48', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1324', 'system', '删除Group', '79', 'cc.mrbird.febs.group.controller.GroupAssistController.deleteGroup()', ' groupIds: \"4\"', '0:0:0:0:0:0:0:1', '2020-02-20 17:20:50', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1325', 'system', '删除Group', '85', 'cc.mrbird.febs.group.controller.GroupTeamController.deleteGroup()', ' groupIds: \"2\"', '0:0:0:0:0:0:0:1', '2020-02-20 17:21:02', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1326', 'system', '修改GeneratorConfig', '101', 'cc.mrbird.febs.generator.controller.GeneratorConfigController.updateGeneratorConfig()', ' generatorConfig: GeneratorConfig(id=1, author=tongrok, basePackage=cc.mrbird.febs.group, entityPackage=entity, mapperPackage=mapper, mapperXmlPackage=mapper, servicePackage=service, serviceImplPackage=service.impl, controllerPackage=controller, isTrim=1, trimValue=t_, javaPath=/src/main/java/, resourcesPath=src/main/resources, date=2020-02-20 17:32:14, tableName=null, tableComment=null, className=null)', '0:0:0:0:0:0:0:1', '2020-02-20 17:32:14', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1327', 'system', '删除Group', '95', 'cc.mrbird.febs.group.controller.GroupMedicineController.deleteGroup()', ' groupIds: \"27\"', '0:0:0:0:0:0:0:1', '2020-02-20 18:18:17', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1328', 'system', '删除Group', '114', 'cc.mrbird.febs.group.controller.GroupMedicineController.deleteGroup()', ' groupIds: \"26\"', '0:0:0:0:0:0:0:1', '2020-02-20 18:18:19', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1329', 'system', '删除Group', '71', 'cc.mrbird.febs.group.controller.GroupMedicineController.deleteGroup()', ' groupIds: \"29\"', '0:0:0:0:0:0:0:1', '2020-02-20 18:18:20', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1330', 'system', '修改Group', '97', 'cc.mrbird.febs.group.controller.GroupMedicineController.updateGroup()', ' groupMedicine: \"GroupMedicine(groupId=28, groupName=医疗测试小组, groupMembers=15,19,12,192,193, groupRemark=医疗测试小组, groupMemberCount=null, groupMemberName=null, groupMemberIds=[15, 19, 12, 192, 193])\"', '0:0:0:0:0:0:0:1', '2020-02-20 18:18:29', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1331', 'system', '修改Group', '96', 'cc.mrbird.febs.group.controller.GroupMedicineController.updateGroup()', ' groupMedicine: \"GroupMedicine(groupId=28, groupName=医疗测试小组, groupMembers=15,19,12,192,193,137, groupRemark=医疗测试小组, groupMemberCount=null, groupMemberName=null, groupMemberIds=[15, 19, 12, 192, 193, 137])\"', '0:0:0:0:0:0:0:1', '2020-02-20 18:18:35', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1332', 'system', '删除Group', '96', 'cc.mrbird.febs.group.controller.GroupTeamController.deleteGroup()', ' groupIds: \"1\"', '0:0:0:0:0:0:0:1', '2020-02-20 20:31:41', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1333', 'system', '新增Group', '170', 'cc.mrbird.febs.group.controller.GroupTeamController.addGroup()', ' groupTeam: \"GroupTeam(teamId=4, teamName=测试团长, teamLeader=, teamMembers=, teamLeaderName=null, teamMemberCount=null, teamMemberIds=null)\"', '0:0:0:0:0:0:0:1', '2020-02-20 21:47:08', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1334', 'system', '修改Group', '61124', 'cc.mrbird.febs.group.controller.GroupAssistController.updateGroup()', ' groupAssist: \"GroupAssist(groupId=2, groupName=帮扶二组, groupRemark=帮扶二组, groupLeader=6, groupMembers=4,5,12,8,9, groupLeaderName=null, groupMemberCount=null, groupMemberName=null, groupMemberIds=null)\"', '0:0:0:0:0:0:0:1', '2020-02-21 00:56:10', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1335', 'system', '修改Group', '363', 'cc.mrbird.febs.group.controller.GroupAssistController.updateGroup()', ' groupAssist: \"GroupAssist(groupId=2, groupName=帮扶二组, groupRemark=帮扶二组, groupLeader=6, groupMembers=4,5,12,8,7, groupLeaderName=null, groupMemberCount=null, groupMemberName=null, groupMemberIds=null)\"', '0:0:0:0:0:0:0:1', '2020-02-21 01:01:23', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1336', 'system', '删除Group', '169', 'cc.mrbird.febs.group.controller.GroupAssistController.deleteGroup()', ' groupIds: \"2\"', '0:0:0:0:0:0:0:1', '2020-02-21 01:02:08', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1337', 'system', '新增Group', '489', 'cc.mrbird.febs.group.controller.GroupAssistController.addGroup()', ' groupAssist: \"GroupAssist(groupId=11, groupName=test, groupRemark=, groupLeader=3, groupMembers=4,5,6,7, groupLeaderName=null, groupMemberCount=null, groupMemberName=null, groupMemberIds=null)\"', '0:0:0:0:0:0:0:1', '2020-02-21 01:07:12', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1338', 'system', '修改Group', '189', 'cc.mrbird.febs.group.controller.GroupAssistController.updateGroup()', ' groupAssist: \"GroupAssist(groupId=11, groupName=test, groupRemark=, groupLeader=8, groupMembers=4,5,6,7, groupLeaderName=null, groupMemberCount=null, groupMemberName=null, groupMemberIds=null)\"', '0:0:0:0:0:0:0:1', '2020-02-21 01:07:28', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1339', 'system', '删除Group', '286', 'cc.mrbird.febs.group.controller.GroupMedicineController.deleteGroup()', ' groupIds: \"1\"', '0:0:0:0:0:0:0:1', '2020-02-21 08:47:28', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1340', 'system', '修改Group', '276', 'cc.mrbird.febs.group.controller.GroupMedicineController.updateGroup()', ' groupMedicine: \"GroupMedicine(groupId=28, groupName=医疗测试小组, groupMembers=192,193,137,20,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,191,194,195, groupRemark=医疗测试小组, groupMemberCount=null, groupMemberName=null, groupMemberIds=[192, 193, 137, 20, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 191, 194, 195])\"', '0:0:0:0:0:0:0:1', '2020-02-21 08:47:33', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1341', 'system', '修改菜单/按钮', '100', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=204, parentId=0, menuName=述求信息, url=/explain/view, perms=, icon=layui-icon-edit-square, type=0, orderNum=4, createTime=null, modifyTime=Fri Feb 21 09:31:59 CST 2020)\"', '0:0:0:0:0:0:0:1', '2020-02-21 09:31:59', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1342', 'system', '修改Group', '642', 'cc.mrbird.febs.group.controller.GroupAssistController.updateGroup()', ' groupAssist: \"GroupAssist(groupId=11, groupName=帮扶小组1, groupRemark=帮扶小组1, groupLeader=8, groupMembers=4,5,6,7, groupLeaderName=null, groupMemberCount=null, groupMemberName=null, groupMemberIds=null)\"', '0:0:0:0:0:0:0:1', '2020-02-21 10:24:33', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1343', 'system', '新增Group', '363', 'cc.mrbird.febs.group.controller.GroupAssistController.addGroup()', ' groupAssist: \"GroupAssist(groupId=12, groupName=帮扶小组2, groupRemark=帮扶小组2, groupLeader=3, groupMembers=4,5,6,7,9, groupLeaderName=null, groupMemberCount=null, groupMemberName=null, groupMemberIds=null)\"', '0:0:0:0:0:0:0:1', '2020-02-21 10:24:51', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1344', 'system', '新增Group', '140', 'cc.mrbird.febs.group.controller.GroupAssistController.addGroup()', ' groupAssist: \"GroupAssist(groupId=13, groupName=帮扶小组3, groupRemark=帮扶小组1, groupLeader=67, groupMembers=5,4,6,7,9, groupLeaderName=null, groupMemberCount=null, groupMemberName=null, groupMemberIds=null)\"', '0:0:0:0:0:0:0:1', '2020-02-21 10:25:09', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1345', 'system', '新增Group', '588', 'cc.mrbird.febs.group.controller.GroupAssistController.addGroup()', ' groupAssist: \"GroupAssist(groupId=14, groupName=帮扶小组4, groupRemark=, groupLeader=68, groupMembers=4,5,6,7, groupLeaderName=null, groupMemberCount=null, groupMemberName=null, groupMemberIds=null)\"', '0:0:0:0:0:0:0:1', '2020-02-21 10:25:25', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1346', 'system', '新增Group', '148', 'cc.mrbird.febs.group.controller.GroupAssistController.addGroup()', ' groupAssist: \"GroupAssist(groupId=15, groupName=帮扶小组5, groupRemark=, groupLeader=69, groupMembers=4,5,6,7,9, groupLeaderName=null, groupMemberCount=null, groupMemberName=null, groupMemberIds=null)\"', '0:0:0:0:0:0:0:1', '2020-02-21 10:25:39', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1347', 'system', '新增Group', '356', 'cc.mrbird.febs.group.controller.GroupAssistController.addGroup()', ' groupAssist: \"GroupAssist(groupId=16, groupName=帮扶小组5, groupRemark=, groupLeader=72, groupMembers=81,83,82,84,85, groupLeaderName=null, groupMemberCount=null, groupMemberName=null, groupMemberIds=null)\"', '0:0:0:0:0:0:0:1', '2020-02-21 10:26:24', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1348', 'system', '新增Group', '80', 'cc.mrbird.febs.group.controller.GroupTeamController.addGroup()', ' groupTeam: \"GroupTeam(teamId=5, teamName=测试团长, teamLeader=3, teamMembers=11,12,13,14,15, teamLeaderName=null, teamMemberCount=null, teamMemberIds=null)\"', '0:0:0:0:0:0:0:1', '2020-02-21 10:26:49', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1349', 'system', '新增Group', '203', 'cc.mrbird.febs.group.controller.GroupTeamController.addGroup()', ' groupTeam: \"GroupTeam(teamId=6, teamName=测试团长, teamLeader=3, teamMembers=11,12,13, teamLeaderName=null, teamMemberCount=null, teamMemberIds=null)\"', '0:0:0:0:0:0:0:1', '2020-02-21 10:51:53', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1350', 'system', '删除Group', '228', 'cc.mrbird.febs.group.controller.GroupTeamController.deleteGroup()', ' groupIds: \"4\"', '0:0:0:0:0:0:0:1', '2020-02-21 10:52:24', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1351', 'system', '删除Group', '198', 'cc.mrbird.febs.group.controller.GroupTeamController.deleteGroup()', ' groupIds: \"6\"', '0:0:0:0:0:0:0:1', '2020-02-21 10:52:36', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1352', 'system', '删除Group', '120', 'cc.mrbird.febs.group.controller.GroupTeamController.deleteGroup()', ' groupIds: \"5\"', '0:0:0:0:0:0:0:1', '2020-02-21 10:52:37', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1353', 'system', '新增Group', '250', 'cc.mrbird.febs.group.controller.GroupTeamController.addGroup()', ' groupTeam: \"GroupTeam(teamId=7, teamName=测试一团, teamLeader=3, teamMembers=11,12,13,14,15, teamLeaderName=null, teamMemberCount=null, teamMemberIds=null)\"', '0:0:0:0:0:0:0:1', '2020-02-21 10:53:02', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1354', 'system', '删除Group', '223', 'cc.mrbird.febs.group.controller.GroupAssistController.deleteGroup()', ' groupIds: \"14\"', '0:0:0:0:0:0:0:1', '2020-02-21 10:53:35', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1355', 'system', '删除Group', '189', 'cc.mrbird.febs.group.controller.GroupAssistController.deleteGroup()', ' groupIds: \"11\"', '0:0:0:0:0:0:0:1', '2020-02-21 10:53:37', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1356', 'system', '删除Group', '141', 'cc.mrbird.febs.group.controller.GroupAssistController.deleteGroup()', ' groupIds: \"16\"', '0:0:0:0:0:0:0:1', '2020-02-21 10:53:43', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1357', 'system', '删除Group', '127', 'cc.mrbird.febs.group.controller.GroupAssistController.deleteGroup()', ' groupIds: \"15\"', '0:0:0:0:0:0:0:1', '2020-02-21 10:53:45', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1358', 'system', '删除Group', '139', 'cc.mrbird.febs.group.controller.GroupAssistController.deleteGroup()', ' groupIds: \"13\"', '0:0:0:0:0:0:0:1', '2020-02-21 10:53:47', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1359', 'system', '修改Group', '548', 'cc.mrbird.febs.group.controller.GroupAssistController.updateGroup()', ' groupAssist: \"GroupAssist(groupId=12, groupName=帮扶小组, groupRemark=帮扶小组, groupLeader=67, groupMembers=4,5,6,7,8, groupLeaderName=null, groupMemberCount=null, groupMemberName=null, groupMemberIds=null)\"', '0:0:0:0:0:0:0:1', '2020-02-21 11:07:02', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1360', 'system', '新增Group', '94', 'cc.mrbird.febs.group.controller.GroupTeamController.addGroup()', ' groupTeam: \"GroupTeam(teamId=8, teamName=测试一团, teamLeader=68, teamMembers=12, teamLeaderName=null, teamMemberCount=null, teamMemberIds=null)\"', '0:0:0:0:0:0:0:1', '2020-02-21 11:07:32', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1361', 'system', '删除Group', '215', 'cc.mrbird.febs.group.controller.GroupTeamController.deleteGroup()', ' groupIds: \"7\"', '0:0:0:0:0:0:0:1', '2020-02-21 11:07:36', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1362', 'system', '新增Group', '125', 'cc.mrbird.febs.group.controller.GroupTeamController.addGroup()', ' groupTeam: \"GroupTeam(teamId=9, teamName=测试一团, teamLeader=68, teamMembers=12, teamLeaderName=null, teamMemberCount=null, teamMemberIds=null)\"', '0:0:0:0:0:0:0:1', '2020-02-21 11:07:39', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1363', 'system', '删除Group', '143', 'cc.mrbird.febs.group.controller.GroupTeamController.deleteGroup()', ' groupIds: \"8\"', '0:0:0:0:0:0:0:1', '2020-02-21 11:07:45', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1364', 'system', '删除Group', '183', 'cc.mrbird.febs.group.controller.GroupTeamController.deleteGroup()', ' groupIds: \"9\"', '0:0:0:0:0:0:0:1', '2020-02-21 11:07:47', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1365', 'system', '新增Group', '82', 'cc.mrbird.febs.group.controller.GroupTeamController.addGroup()', ' groupTeam: \"GroupTeam(teamId=10, teamName=一团, teamLeader=68, teamMembers=12, teamLeaderName=null, teamMemberCount=null, teamMemberIds=null)\"', '0:0:0:0:0:0:0:1', '2020-02-21 11:08:30', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1366', 'system', '修改Group', '336', 'cc.mrbird.febs.group.controller.GroupAssistController.updateGroup()', ' groupAssist: \"GroupAssist(groupId=12, groupName=帮扶小组, groupRemark=帮扶小组, groupLeader=67, groupMembers=69,70,71,72,73, groupLeaderName=null, groupMemberCount=null, groupMemberName=null, groupMemberIds=null)\"', '0:0:0:0:0:0:0:1', '2020-02-21 11:56:02', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1367', 'system', '修改Group', '269', 'cc.mrbird.febs.group.controller.GroupAssistController.updateGroup()', ' groupAssist: \"GroupAssist(groupId=12, groupName=帮扶小组, groupRemark=帮扶小组, groupLeader=67, groupMembers=69,70,71,72,73, groupLeaderName=null, groupMemberCount=null, groupMemberName=null, groupMemberIds=null)\"', '0:0:0:0:0:0:0:1', '2020-02-21 11:57:13', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1368', 'system', '新增Group', '550', 'cc.mrbird.febs.group.controller.GroupAssistController.addGroup()', ' groupAssist: \"GroupAssist(groupId=17, groupName=测试1, groupRemark=, groupLeader=3, groupMembers=5,4,6,7,8, groupLeaderName=null, groupMemberCount=null, groupMemberName=null, groupMemberIds=null)\"', '0:0:0:0:0:0:0:1', '2020-02-21 12:24:40', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1369', 'system', '新增Group', '379', 'cc.mrbird.febs.group.controller.GroupAssistController.addGroup()', ' groupAssist: \"GroupAssist(groupId=18, groupName=测试2, groupRemark=, groupLeader=9, groupMembers=13,12,11,10,8, groupLeaderName=null, groupMemberCount=null, groupMemberName=null, groupMemberIds=null)\"', '0:0:0:0:0:0:0:1', '2020-02-21 12:25:00', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1370', 'system', '修改Group', '351', 'cc.mrbird.febs.group.controller.GroupAssistController.updateGroup()', ' groupAssist: \"GroupAssist(groupId=12, groupName=帮扶小组, groupRemark=帮扶小组, groupLeader=67, groupMembers=69,70,71,72,73, groupLeaderName=null, groupMemberCount=null, groupMemberName=null, groupMemberIds=null)\"', '0:0:0:0:0:0:0:1', '2020-02-21 12:25:36', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1371', 'system', '新增Group', '128', 'cc.mrbird.febs.group.controller.GroupTeamController.addGroup()', ' groupTeam: \"GroupTeam(teamId=11, teamName=一团, teamLeader=68, teamMembers=12, teamLeaderName=null, teamMemberCount=null, teamMemberIds=null)\"', '0:0:0:0:0:0:0:1', '2020-02-21 12:26:00', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1372', 'system', '新增Group', '204', 'cc.mrbird.febs.group.controller.GroupTeamController.addGroup()', ' groupTeam: \"GroupTeam(teamId=12, teamName=一团, teamLeader=68, teamMembers=12, teamLeaderName=null, teamMemberCount=null, teamMemberIds=null)\"', '0:0:0:0:0:0:0:1', '2020-02-21 12:32:08', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1373', null, '验证WxUser', '163', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 12:43:42', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1374', null, '验证WxUser', '50', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 12:45:29', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1375', null, '验证WxUser', '213', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 12:46:21', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1376', null, '验证WxUser', '101', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 12:50:19', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1377', null, '验证WxUser', '112', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 12:51:56', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1378', null, '验证WxUser', '98', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 12:52:52', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1379', null, '验证WxUser', '76', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 12:54:43', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1380', null, '验证WxUser', '78', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000006\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 12:57:15', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1381', null, '验证WxUser', '74', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000006\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 12:58:23', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1382', null, '验证WxUser', '75', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000006\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 13:03:02', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1383', null, '验证WxUser', '81', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000006\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 13:04:52', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1384', null, '验证WxUser', '73', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000006\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 13:08:14', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1385', null, '验证WxUser', '75', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 13:10:28', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1386', null, '新增ExplainByApi', '747', 'cc.mrbird.febs.wechat.controller.ApiController.addExplainByApi()', ' explain: \"Explain(eid=4de3e6cfa31e7ebae0eaf088c6ae50a1, etype=1, einfo=测试哦1212, sqrname=杨姐, sqrphone=13588225531, tel=15000000001, sqradress=156号, province=浙江省, city=杭州市, district=拱墅区, town=武林一号, openid=, sfsw=0, estatus=0, astatus=null, cxly=null, myd=null, fkmx=null, createdate=2020-02-21 13:11:32, wcl=null, clz=null, ycl=null)\"', '192.168.222.1', '2020-02-21 13:11:33', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1387', null, '验证WxUser', '206', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 13:19:57', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1388', null, '验证WxUser', '243', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 13:33:26', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1389', null, '验证WxUser', '2654', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 13:40:36', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1390', null, '验证WxUser', '211', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 13:46:31', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1391', null, '验证WxUser', '220', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 13:52:24', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1392', null, '验证WxUser', '199', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 13:54:50', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1393', null, '验证WxUser', '64', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 13:58:05', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1394', null, '验证WxUser', '66', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 14:04:13', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1395', null, '验证WxUser', '230', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 14:38:51', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1396', null, '验证WxUser', '249', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 14:42:30', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1397', null, '验证WxUser', '230', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 14:44:02', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1398', null, '验证WxUser', '88', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 14:47:25', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1399', null, '验证WxUser', '213', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 14:57:19', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1400', null, '验证WxUser', '86', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 15:01:35', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1401', null, '验证WxUser', '187', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 15:07:11', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1402', null, '验证WxUser', '199', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 15:17:31', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1403', null, '验证WxUser', '211', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 15:25:38', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1404', 'system', '新增Group', '305', 'cc.mrbird.febs.group.controller.GroupTeamController.addGroup()', ' groupTeam: \"GroupTeam(teamId=13, teamName=一团, teamLeader=68, teamMembers=12, teamLeaderName=null, teamMemberCount=null, teamMemberIds=null)\"', '0:0:0:0:0:0:0:1', '2020-02-21 15:30:34', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1405', 'system', '删除Group', '235', 'cc.mrbird.febs.group.controller.GroupTeamController.deleteGroup()', ' groupIds: \"10\"', '0:0:0:0:0:0:0:1', '2020-02-21 15:30:58', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1406', 'system', '删除Group', '94', 'cc.mrbird.febs.group.controller.GroupTeamController.deleteGroup()', ' groupIds: \"13\"', '0:0:0:0:0:0:0:1', '2020-02-21 15:31:00', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1407', null, '验证WxUser', '232', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 15:31:00', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1408', 'system', '新增Group', '110', 'cc.mrbird.febs.group.controller.GroupTeamController.addGroup()', ' groupTeam: \"GroupTeam(teamId=14, teamName=一团, teamLeader=68, teamMembers=17,18, teamLeaderName=null, teamMemberCount=null, teamMemberIds=null)\"', '0:0:0:0:0:0:0:1', '2020-02-21 15:31:16', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1409', null, '验证WxUser', '181', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 15:35:17', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1410', null, '验证WxUser', '201', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 15:46:28', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1411', null, '验证WxUser', '81', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 15:47:14', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1412', null, '验证WxUser', '155', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 15:53:54', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1413', 'system', '验证WxUser', '48371', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '0:0:0:0:0:0:0:1', '2020-02-21 16:02:32', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1414', 'system', '获取WxUserr', '121', 'cc.mrbird.febs.wechat.controller.ApiController.getWUser()', ' telnum1: \"15000000005\"', '0:0:0:0:0:0:0:1', '2020-02-21 16:13:51', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1415', null, '验证WxUser', '157', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 16:14:33', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1416', null, '验证WxUser', '160', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 16:15:43', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1417', 'system', '验证WxUser', '161', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '0:0:0:0:0:0:0:1', '2020-02-21 16:43:21', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1418', 'system', '修改Group', '151', 'cc.mrbird.febs.group.controller.GroupMedicineController.updateGroup()', ' groupMedicine: \"GroupMedicine(groupId=28, groupName=医疗测试小组, groupMembers=192,193,137,20,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,191,194, groupRemark=医疗测试小组, groupMemberCount=null, groupMemberName=null, groupMemberIds=[192, 193, 137, 20, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 191, 194])\"', '0:0:0:0:0:0:0:1', '2020-02-21 17:11:39', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1419', null, '验证WxUser', '215', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 17:21:53', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1420', null, '验证WxUser', '241', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 17:38:17', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1421', 'system', '验证WxUser', '45', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000011\" passwd: \"123456\"', '0:0:0:0:0:0:0:1', '2020-02-21 17:41:38', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1422', 'system', '验证WxUser', '10', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000001\" passwd: \"123456\"', '0:0:0:0:0:0:0:1', '2020-02-21 17:41:43', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1423', 'system', '验证WxUser', '13', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000002\" passwd: \"123456\"', '0:0:0:0:0:0:0:1', '2020-02-21 17:41:47', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1424', 'system', '验证WxUser', '8', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000003\" passwd: \"123456\"', '0:0:0:0:0:0:0:1', '2020-02-21 17:41:50', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1425', 'system', '验证WxUser', '10', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000004\" passwd: \"123456\"', '0:0:0:0:0:0:0:1', '2020-02-21 17:41:52', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1426', 'system', '验证WxUser', '16', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '0:0:0:0:0:0:0:1', '2020-02-21 17:41:55', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1427', 'system', '验证WxUser', '13', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000006\" passwd: \"123456\"', '0:0:0:0:0:0:0:1', '2020-02-21 17:41:58', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1428', null, '验证WxUser', '90', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 17:43:43', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1429', null, '验证WxUser', '105', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 17:43:43', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1430', null, '验证WxUser', '115', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 17:43:43', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1431', null, '验证WxUser', '127', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 17:43:43', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1432', null, '验证WxUser', '119', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 17:43:43', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1433', null, '验证WxUser', '202', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 17:46:22', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1434', null, '验证WxUser', '215', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 17:50:44', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1435', null, '验证WxUser', '179', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 17:52:25', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1436', null, '验证WxUser', '69', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 17:53:22', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1437', null, '验证WxUser', '232', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 17:57:14', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1438', null, '验证WxUser', '239', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 18:13:50', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1439', null, '验证WxUser', '69', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 18:17:46', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1440', null, '验证WxUser', '80', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 18:19:24', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1441', null, '验证WxUser', '82', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 18:24:50', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1442', null, '验证WxUser', '76', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 18:47:20', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1443', null, '验证WxUser', '72', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 18:50:49', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1444', null, '验证WxUser', '80', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 18:51:47', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1445', null, '验证WxUser', '76', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 18:53:18', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1446', 'system', '删除菜单/按钮', '108', 'cc.mrbird.febs.system.controller.MenuController.deleteMenus()', ' menuIds: \"208\"', '0:0:0:0:0:0:0:1', '2020-02-21 19:16:25', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1447', null, '验证WxUser', '199', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 19:26:08', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1448', null, '验证WxUser', '194', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 19:31:01', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1449', null, '验证WxUser', '74', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 19:34:23', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1450', null, '验证WxUser', '197', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 19:37:16', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1451', 'system', '修改Group', '155', 'cc.mrbird.febs.group.controller.GroupMedicineController.updateGroup()', ' groupMedicine: \"GroupMedicine(groupId=28, groupName=医疗测试小组, groupMembers=20,118,119,120,121, groupRemark=医疗测试小组, groupMemberCount=null, groupMemberName=null, groupMemberIds=[20, 118, 119, 120, 121])\"', '0:0:0:0:0:0:0:1', '2020-02-21 19:44:25', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1452', 'system', '新增Group', '141', 'cc.mrbird.febs.group.controller.GroupMedicineController.addGroup()', ' groupMedicine: \"GroupMedicine(groupId=31, groupName=医疗测试小组2, groupMembers=122,123,124,125,126, groupRemark=, groupMemberCount=null, groupMemberName=null, groupMemberIds=[122, 123, 124, 125, 126])\"', '0:0:0:0:0:0:0:1', '2020-02-21 19:44:41', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1453', 'system', '新增Group', '100', 'cc.mrbird.febs.group.controller.GroupMedicineController.addGroup()', ' groupMedicine: \"GroupMedicine(groupId=32, groupName=医疗测试小组3, groupMembers=127,128,129,130,131, groupRemark=, groupMemberCount=null, groupMemberName=null, groupMemberIds=[127, 128, 129, 130, 131])\"', '0:0:0:0:0:0:0:1', '2020-02-21 19:44:52', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1454', 'system', '新增Group', '129', 'cc.mrbird.febs.group.controller.GroupMedicineController.addGroup()', ' groupMedicine: \"GroupMedicine(groupId=33, groupName=医疗测试小组4, groupMembers=132,133,134,135,137, groupRemark=, groupMemberCount=null, groupMemberName=null, groupMemberIds=[132, 133, 134, 135, 137])\"', '0:0:0:0:0:0:0:1', '2020-02-21 19:45:07', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1455', 'system', '新增Group', '95', 'cc.mrbird.febs.group.controller.GroupMedicineController.addGroup()', ' groupMedicine: \"GroupMedicine(groupId=34, groupName=医疗测试小组5, groupMembers=191,192,193,194,195, groupRemark=, groupMemberCount=null, groupMemberName=null, groupMemberIds=[191, 192, 193, 194, 195])\"', '0:0:0:0:0:0:0:1', '2020-02-21 19:45:15', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1456', 'system', '修改Group', '288', 'cc.mrbird.febs.group.controller.GroupAssistController.updateGroup()', ' groupAssist: \"GroupAssist(groupId=12, groupName=帮扶小组, groupRemark=帮扶小组, groupLeader=67, groupLeaderName=null, groupMedicine=28, groupMedicineName=null, groupMembers=73,72,71,70,69, groupMemberCount=null, groupMemberName=null, groupMemberIds=null)\"', '0:0:0:0:0:0:0:1', '2020-02-21 19:45:26', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1457', 'system', '修改Group', '172', 'cc.mrbird.febs.group.controller.GroupAssistController.updateGroup()', ' groupAssist: \"GroupAssist(groupId=17, groupName=测试1, groupRemark=, groupLeader=3, groupLeaderName=null, groupMedicine=31, groupMedicineName=null, groupMembers=5,8,7,6,4, groupMemberCount=null, groupMemberName=null, groupMemberIds=null)\"', '0:0:0:0:0:0:0:1', '2020-02-21 19:45:33', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1458', 'system', '修改Group', '263', 'cc.mrbird.febs.group.controller.GroupAssistController.updateGroup()', ' groupAssist: \"GroupAssist(groupId=17, groupName=测试1, groupRemark=, groupLeader=3, groupLeaderName=null, groupMedicine=31, groupMedicineName=null, groupMembers=6,7,8,5,4, groupMemberCount=null, groupMemberName=null, groupMemberIds=null)\"', '0:0:0:0:0:0:0:1', '2020-02-21 19:45:37', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1459', null, '验证WxUser', '77', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 19:57:27', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1460', 'system', '验证WxUser', '52', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"13701010101\" passwd: \"123456\"', '0:0:0:0:0:0:0:1', '2020-02-21 20:11:05', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1461', null, '验证WxUser', '252', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 20:15:32', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1462', null, '验证WxUser', '223', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 20:20:29', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1463', null, '验证WxUser', '204', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 20:28:24', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1464', null, '验证WxUser', '9759', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 20:36:46', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1465', null, '验证WxUser', '4020', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 20:36:46', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1466', null, '验证WxUser', '946', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 20:36:47', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1467', null, '验证WxUser', '242', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 20:37:09', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1468', null, '验证WxUser', '268', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 20:39:52', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1469', null, '验证WxUser', '251', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 20:44:30', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1470', null, '验证WxUser', '227', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 20:47:07', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1471', null, '验证WxUser', '114', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 20:53:36', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1472', null, '验证WxUser', '50', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 20:56:49', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1473', null, '新增ExplainByApi', '790', 'cc.mrbird.febs.wechat.controller.ApiController.addExplainByApi()', ' explain: \"Explain(eid=6f1e4026fa36a009c87c2d74d4eb82db, etype=5, einfo=我要测试2, sqrname=杨杰, sqrphone=13588225531, tel=15000000001, sqradress=呼呼, province=北京市, city=北京市, district=东城区, town=圆乎乎, openid=, sfsw=1, estatus=0, astatus=null, cxly=null, myd=null, fkmx=null, createdate=2020-02-21 20:57:26, wcl=null, clz=null, ycl=null)\"', '192.168.222.1', '2020-02-21 20:57:26', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1474', null, '新增ExplainByApi', '253', 'cc.mrbird.febs.wechat.controller.ApiController.addExplainByApi()', ' explain: \"Explain(eid=cc7594e4a36e8ac489c79dfd5d80688d, etype=3, einfo=测试23额的 , sqrname=童思宁, sqrphone=13701010101, tel=15000000001, sqradress=地市的撒, province=天津市, city=天津市, district=和平区, town=天数, openid=, sfsw=1, estatus=0, astatus=null, cxly=null, myd=null, fkmx=null, createdate=2020-02-21 20:57:54, wcl=null, clz=null, ycl=null)\"', '192.168.222.1', '2020-02-21 20:57:54', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1475', null, '新增ExplainByApi', '165', 'cc.mrbird.febs.wechat.controller.ApiController.addExplainByApi()', ' explain: \"Explain(eid=c8e02dfc523818441b768890cdf9ee1a, etype=4, einfo=测试344232, sqrname=童建龙, sqrphone=13701010201, tel=15000000001, sqradress=大大, province=重庆市, city=重庆市, district=渝中区, town=虎虎生到, openid=, sfsw=1, estatus=0, astatus=null, cxly=null, myd=null, fkmx=null, createdate=2020-02-21 20:58:32, wcl=null, clz=null, ycl=null)\"', '192.168.222.1', '2020-02-21 20:58:32', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1476', null, '验证WxUser', '76', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 21:01:21', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1477', null, '验证WxUser', '212', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 21:26:01', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1478', null, '验证WxUser', '67', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 21:41:16', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1479', 'system', '删除Group', '196', 'cc.mrbird.febs.group.controller.GroupMedicineController.deleteGroup()', ' groupIds: \"34\"', '0:0:0:0:0:0:0:1', '2020-02-21 22:03:55', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1480', null, '验证WxUser', '51', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 22:04:37', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1481', null, '获取WxUserr', '65', 'cc.mrbird.febs.wechat.controller.ApiController.getWUser()', ' telnum1: \"15000000001\"', '192.168.222.1', '2020-02-21 22:04:45', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1482', null, '验证WxUser', '250', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 22:17:49', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1483', null, '验证WxUser', '43', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 22:19:44', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1484', null, '获取WxUserr', '62', 'cc.mrbird.febs.wechat.controller.ApiController.getWUser()', ' telnum1: \"15000000001\"', '192.168.222.1', '2020-02-21 22:19:54', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1485', null, '获取WxUserr', '48', 'cc.mrbird.febs.wechat.controller.ApiController.getWUser()', ' telnum1: \"15000000001\"', '192.168.222.1', '2020-02-21 22:20:10', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1486', null, '验证WxUser', '68', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 22:21:32', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1487', null, '验证WxUser', '71', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 22:23:42', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1488', null, '验证WxUser', '50', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 22:26:17', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1489', null, '获取WxUserr', '48', 'cc.mrbird.febs.wechat.controller.ApiController.getWUser()', ' telnum1: \"15000000001\"', '192.168.222.1', '2020-02-21 22:26:24', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1490', null, '获取WxUserr', '54', 'cc.mrbird.febs.wechat.controller.ApiController.getWUser()', ' telnum1: \"15000000001\"', '192.168.222.1', '2020-02-21 22:27:28', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1491', 'system', '删除Group', '316', 'cc.mrbird.febs.group.controller.GroupAssistController.deleteGroup()', ' groupIds: \"12\"', '0:0:0:0:0:0:0:1', '2020-02-21 22:27:56', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1492', 'system', '新增Group', '509', 'cc.mrbird.febs.group.controller.GroupAssistController.addGroup()', ' groupAssist: \"GroupAssist(groupId=19, groupName=帮扶一组, groupRemark=, groupLeader=67, groupLeaderName=null, groupMedicine=28, groupMedicineName=null, groupMembers=69,70,71,72,73,74,75,76, groupMemberCount=null, groupMemberName=null, groupMemberIds=null)\"', '0:0:0:0:0:0:0:1', '2020-02-21 22:28:25', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1493', null, '验证WxUser', '215', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 22:34:30', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1494', null, '验证WxUser', '79', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 22:44:10', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1495', null, '验证WxUser', '69', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 22:51:17', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1496', null, '验证WxUser', '99', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 22:53:20', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1497', null, '验证WxUser', '67', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 22:53:59', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1498', null, '验证WxUser', '78', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000007\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 22:56:52', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1499', 'system', '新增Group', '156', 'cc.mrbird.febs.group.controller.GroupMedicineController.addGroup()', ' groupMedicine: \"GroupMedicine(groupId=35, groupName=测试2, groupMembers=13,8,10,11,12, groupRemark=, groupMemberCount=null, groupMemberName=null, groupMemberIds=[13, 8, 10, 11, 12])\"', '0:0:0:0:0:0:0:1', '2020-02-21 23:00:52', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1500', 'system', '新增Group', '87', 'cc.mrbird.febs.group.controller.GroupMedicineController.addGroup()', ' groupMedicine: \"GroupMedicine(groupId=36, groupName=帮扶一组, groupMembers=75,74,73,72,71,70,69,76, groupRemark=, groupMemberCount=null, groupMemberName=null, groupMemberIds=[75, 74, 73, 72, 71, 70, 69, 76])\"', '0:0:0:0:0:0:0:1', '2020-02-21 23:01:15', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1501', null, '验证WxUser', '78', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000007\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 23:03:38', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1502', null, '验证WxUser', '76', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000007\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 23:04:15', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1503', null, '验证WxUser', '70', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000007\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 23:04:34', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1504', null, '验证WxUser', '89', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000007\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 23:05:38', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1505', null, '验证WxUser', '246', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000009\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 23:09:09', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1506', null, '验证WxUser', '214', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000009\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 23:11:09', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1507', 'system', '修改Group', '465', 'cc.mrbird.febs.group.controller.GroupAssistController.updateGroup()', ' groupAssist: \"GroupAssist(groupId=17, groupName=测试1, groupRemark=, groupLeader=3, groupLeaderName=null, groupMedicine=31, groupMedicineName=null, groupMembers=4,5,8,7,6, groupMemberCount=null, groupMemberName=null, groupMemberIds=null)\"', '0:0:0:0:0:0:0:1', '2020-02-21 23:15:44', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1508', null, '验证WxUser', '198', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000009\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 23:27:04', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1509', null, '验证WxUser', '201', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000009\" passwd: \"123456\"', '192.168.222.1', '2020-02-21 23:53:44', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1510', null, '验证WxUser', '208', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000009\" passwd: \"123456\"', '192.168.222.1', '2020-02-22 00:25:04', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1511', null, '验证WxUser', '72', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000009\" passwd: \"123456\"', '192.168.222.1', '2020-02-22 00:28:55', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1512', null, '验证WxUser', '213', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000009\" passwd: \"123456\"', '192.168.222.1', '2020-02-22 00:32:00', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1513', null, '验证WxUser', '218', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000009\" passwd: \"123456\"', '192.168.222.1', '2020-02-22 00:34:08', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1514', 'system', '修改Group', '245', 'cc.mrbird.febs.group.controller.GroupMedicineController.updateGroup()', ' groupMedicine: \"GroupMedicine(groupId=36, groupName=帮扶一组, groupMembers=20,118,119,120,121,122,123,124,125,126,128,127,129,130,131,132,133,134,135,137, groupRemark=, groupMemberCount=null, groupMemberName=null, groupMemberIds=[20, 118, 119, 120, 121, 122, 123, 124, 125, 126, 128, 127, 129, 130, 131, 132, 133, 134, 135, 137])\"', '0:0:0:0:0:0:0:1', '2020-02-22 00:40:12', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1515', 'system', '修改Group', '90', 'cc.mrbird.febs.group.controller.GroupMedicineController.updateGroup()', ' groupMedicine: \"GroupMedicine(groupId=35, groupName=测试2, groupMembers=191,192, groupRemark=, groupMemberCount=null, groupMemberName=null, groupMemberIds=[191, 192])\"', '0:0:0:0:0:0:0:1', '2020-02-22 00:40:23', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1516', 'system', '修改Group', '97', 'cc.mrbird.febs.group.controller.GroupMedicineController.updateGroup()', ' groupMedicine: \"GroupMedicine(groupId=33, groupName=医疗测试小组4, groupMembers=193,194, groupRemark=, groupMemberCount=null, groupMemberName=null, groupMemberIds=[193, 194])\"', '0:0:0:0:0:0:0:1', '2020-02-22 00:40:31', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1517', 'system', '修改Group', '347', 'cc.mrbird.febs.group.controller.GroupAssistController.updateGroup()', ' groupAssist: \"GroupAssist(groupId=19, groupName=帮扶一组, groupRemark=, groupLeader=3, groupLeaderName=null, groupMedicine=28, groupMedicineName=null, groupMembers=4,5,6, groupMemberCount=null, groupMemberName=null, groupMemberIds=null)\"', '0:0:0:0:0:0:0:1', '2020-02-22 00:48:30', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1518', 'system', '修改Group', '152449', 'cc.mrbird.febs.group.controller.GroupAssistController.updateGroup()', ' groupAssist: \"GroupAssist(groupId=19, groupName=帮扶一组, groupRemark=, groupLeader=3, groupLeaderName=null, groupMedicine=28, groupMedicineName=null, groupMembers=, groupMemberCount=null, groupMemberName=null, groupMemberIds=null)\"', '0:0:0:0:0:0:0:1', '2020-02-22 00:53:58', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1519', 'system', '修改Group', '403', 'cc.mrbird.febs.group.controller.GroupAssistController.updateGroup()', ' groupAssist: \"GroupAssist(groupId=19, groupName=帮扶一组, groupRemark=, groupLeader=3, groupLeaderName=null, groupMedicine=28, groupMedicineName=null, groupMembers=4,5,6,7, groupMemberCount=null, groupMemberName=null, groupMemberIds=null)\"', '0:0:0:0:0:0:0:1', '2020-02-22 00:54:40', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1520', 'system', '修改Group', '396', 'cc.mrbird.febs.group.controller.GroupAssistController.updateGroup()', ' groupAssist: \"GroupAssist(groupId=18, groupName=测试2, groupRemark=, groupLeader=8, groupLeaderName=null, groupMedicine=31, groupMedicineName=null, groupMembers=4,9,10,11, groupMemberCount=null, groupMemberName=null, groupMemberIds=null)\"', '0:0:0:0:0:0:0:1', '2020-02-22 00:57:31', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1521', 'system', '修改Group', '304', 'cc.mrbird.febs.group.controller.GroupAssistController.updateGroup()', ' groupAssist: \"GroupAssist(groupId=17, groupName=测试1, groupRemark=, groupLeader=12, groupLeaderName=null, groupMedicine=32, groupMedicineName=null, groupMembers=13,12,11,10,9,6,7,5,4, groupMemberCount=null, groupMemberName=null, groupMemberIds=null)\"', '0:0:0:0:0:0:0:1', '2020-02-22 00:57:59', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1522', 'system', '新增Group', '286', 'cc.mrbird.febs.group.controller.GroupTeamController.addGroup()', ' groupTeam: \"GroupTeam(teamId=15, teamName=一团, teamLeader=68, teamMembers=17,18, teamLeaderName=null, teamMemberCount=null, teamMemberIds=null)\"', '0:0:0:0:0:0:0:1', '2020-02-22 01:00:28', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1523', 'system', '删除Group', '211', 'cc.mrbird.febs.group.controller.GroupTeamController.deleteGroup()', ' groupIds: \"12\"', '0:0:0:0:0:0:0:1', '2020-02-22 01:01:42', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1524', 'system', '新增Group', '312', 'cc.mrbird.febs.group.controller.GroupTeamController.addGroup()', ' groupTeam: \"GroupTeam(teamId=16, teamName=二团, teamLeader=67, teamMembers=18,17, teamLeaderName=null, teamMemberCount=null, teamMemberIds=null)\"', '0:0:0:0:0:0:0:1', '2020-02-22 01:07:32', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1525', 'system', '新增Group', '263', 'cc.mrbird.febs.group.controller.GroupTeamController.addGroup()', ' groupTeam: \"GroupTeam(teamId=17, teamName=二团, teamLeader=67, teamMembers=18,17, teamLeaderName=null, teamMemberCount=null, teamMemberIds=null)\"', '0:0:0:0:0:0:0:1', '2020-02-22 01:20:45', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1526', 'system', '删除Group', '233', 'cc.mrbird.febs.group.controller.GroupTeamController.deleteGroup()', ' groupIds: \"16\"', '0:0:0:0:0:0:0:1', '2020-02-22 01:22:46', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1527', 'system', '修改Group', '108', 'cc.mrbird.febs.group.controller.GroupTeamController.updateGroup()', ' groupTeam: \"GroupTeam(teamId=17, teamName=二团, teamLeader=67, teamMembers=18,17, teamLeaderName=null, teamMemberCount=null, teamMemberIds=null)\"', '0:0:0:0:0:0:0:1', '2020-02-22 01:22:50', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1528', 'system', '删除Group', '165', 'cc.mrbird.febs.group.controller.GroupTeamController.deleteGroup()', ' groupIds: \"17\"', '0:0:0:0:0:0:0:1', '2020-02-22 01:23:17', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1529', 'system', '修改Group', '317', 'cc.mrbird.febs.group.controller.GroupTeamController.updateGroup()', ' groupTeam: \"GroupTeam(teamId=15, teamName=一团, teamLeader=68, teamMembers=17,18,19, teamLeaderName=null, teamMemberCount=null, teamMemberIds=null)\"', '0:0:0:0:0:0:0:1', '2020-02-22 01:30:08', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1530', 'system', '删除Group', '115', 'cc.mrbird.febs.group.controller.GroupMedicineController.deleteGroup()', ' groupIds: \"28\"', '0:0:0:0:0:0:0:1', '2020-02-22 01:30:21', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1531', 'system', '删除Group', '124', 'cc.mrbird.febs.group.controller.GroupMedicineController.deleteGroup()', ' groupIds: \"31\"', '0:0:0:0:0:0:0:1', '2020-02-22 01:30:23', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1532', 'system', '删除Group', '74', 'cc.mrbird.febs.group.controller.GroupMedicineController.deleteGroup()', ' groupIds: \"32\"', '0:0:0:0:0:0:0:1', '2020-02-22 01:30:25', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1533', null, '验证WxUser', '75', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-22 10:14:48', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1534', 'system', '修改Group', '199', 'cc.mrbird.febs.group.controller.GroupMedicineController.updateGroup()', ' groupMedicine: \"GroupMedicine(groupId=36, groupName=帮扶一组, groupMembers=122,123,124,125,126,128,127,129,130,131,132,133,134,135,137, groupRemark=, groupMemberCount=null, groupMemberName=null, groupMemberIds=[122, 123, 124, 125, 126, 128, 127, 129, 130, 131, 132, 133, 134, 135, 137])\"', '0:0:0:0:0:0:0:1', '2020-02-22 10:19:52', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1535', 'system', '删除Group', '169', 'cc.mrbird.febs.group.controller.GroupMedicineController.deleteGroup()', ' groupIds: \"35\"', '127.0.0.1', '2020-02-22 11:51:57', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1536', 'system', '删除Group', '133', 'cc.mrbird.febs.group.controller.GroupMedicineController.deleteGroup()', ' groupIds: \"33\"', '127.0.0.1', '2020-02-22 11:51:59', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1537', 'system', '修改Group', '147', 'cc.mrbird.febs.group.controller.GroupMedicineController.updateGroup()', ' groupMedicine: \"GroupMedicine(groupId=36, groupName=帮扶一组, groupMembers=122,123,124,125,126,128,127,129,130,131,132,133,134,135,137,20,118,119,120,121,191,192,193,194,195, groupRemark=, groupMemberCount=null, groupMemberName=null, groupMemberIds=[122, 123, 124, 125, 126, 128, 127, 129, 130, 131, 132, 133, 134, 135, 137, 20, 118, 119, 120, 121, 191, 192, 193, 194, 195])\"', '127.0.0.1', '2020-02-22 11:52:05', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1538', 'system', '修改Group', '388', 'cc.mrbird.febs.group.controller.GroupAssistController.updateGroup()', ' groupAssist: \"GroupAssist(groupId=19, groupName=帮扶一组, groupRemark=, groupLeader=3, groupLeaderName=null, groupMedicine=36, groupMedicineName=null, groupMembers=7,6,5,4, groupMemberCount=null, groupMemberName=null, groupMemberIds=null)\"', '127.0.0.1', '2020-02-22 11:52:14', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1539', 'system', '删除Group', '153', 'cc.mrbird.febs.group.controller.GroupAssistController.deleteGroup()', ' groupIds: \"18\"', '127.0.0.1', '2020-02-22 11:52:17', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1540', 'system', '删除Group', '243', 'cc.mrbird.febs.group.controller.GroupAssistController.deleteGroup()', ' groupIds: \"17\"', '127.0.0.1', '2020-02-22 11:52:20', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1541', 'system', '修改Group', '472', 'cc.mrbird.febs.group.controller.GroupAssistController.updateGroup()', ' groupAssist: \"GroupAssist(groupId=19, groupName=帮扶一组, groupRemark=, groupLeader=67, groupLeaderName=null, groupMedicine=36, groupMedicineName=null, groupMembers=7,6,5,4,8,9,10,11,12,13,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87, groupMemberCount=null, groupMemberName=null, groupMemberIds=null)\"', '127.0.0.1', '2020-02-22 11:53:24', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1542', 'system', '修改Group', '150', 'cc.mrbird.febs.group.controller.GroupTeamController.updateGroup()', ' groupTeam: \"GroupTeam(teamId=15, teamName=一团, teamLeader=68, teamMembers=19, teamLeaderName=null, teamMemberCount=null, teamMemberIds=null)\"', '127.0.0.1', '2020-02-22 11:53:32', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1543', 'system', '修改菜单/按钮', '254', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=204, parentId=0, menuName=述求信息, url=/explain/explain, perms=, icon=layui-icon-edit-square, type=0, orderNum=4, createTime=null, modifyTime=Sat Feb 22 13:41:20 CST 2020)\"', '192.168.1.4', '2020-02-22 13:41:20', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1544', null, '验证WxUser', '217', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000009\" passwd: \"123456\"', '192.168.222.1', '2020-02-22 14:03:25', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1545', null, '验证WxUser', '69', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-22 14:10:21', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1546', null, '验证WxUser', '65', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-22 14:11:37', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1547', null, '验证WxUser', '60', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-22 14:18:01', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1548', null, '验证WxUser', '59', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-22 14:20:03', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1549', null, '验证WxUser', '60', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-22 14:20:34', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1550', null, '验证WxUser', '66', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-22 14:21:47', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1551', null, '验证WxUser', '64', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-22 14:24:04', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1552', 'system', '新增Group', '189', 'cc.mrbird.febs.group.controller.GroupMedicineController.addGroup()', ' groupMedicine: \"GroupMedicine(groupId=37, groupName=测试小组, groupMembers=137, groupRemark=, groupMemberCount=null, groupMemberName=null, groupMemberIds=[137])\"', '0:0:0:0:0:0:0:1', '2020-02-22 14:25:00', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1553', null, '验证WxUser', '60', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-22 14:31:46', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1554', null, '验证WxUser', '236', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-22 14:39:50', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1555', null, '验证WxUser', '203', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-22 14:42:45', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1556', null, '验证WxUser', '72', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-22 14:43:16', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1557', null, '验证WxUser', '201', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-22 14:54:45', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1558', null, '验证WxUser', '35', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-22 14:56:30', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1559', null, '验证WxUser', '39', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-22 14:58:01', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1560', null, '验证WxUser', '43', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-22 15:07:24', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1561', null, '验证WxUser', '38', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-22 15:08:42', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1562', null, '验证WxUser', '38', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-22 15:12:20', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1563', null, '验证WxUser', '40', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-22 15:16:22', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1564', null, '验证WxUser', '40', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-22 15:22:38', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1565', null, '验证WxUser', '171', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-22 15:31:30', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1566', null, '验证WxUser', '47', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-22 15:34:56', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1567', 'system', '修改菜单/按钮', '522', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=204, parentId=0, menuName=述求信息, url=/explain/explain, perms=explain:view, icon=layui-icon-edit-square, type=0, orderNum=4, createTime=null, modifyTime=Sat Feb 22 15:35:11 CST 2020)\"', '192.168.1.4', '2020-02-22 15:35:11', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1568', null, '验证WxUser', '62', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-22 15:43:50', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1569', null, '验证WxUser', '51', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-22 15:45:37', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1570', null, '验证WxUser', '48', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-22 15:51:15', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1571', null, '验证WxUser', '45', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-22 15:53:42', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1572', null, '验证WxUser', '41', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-22 15:54:45', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1573', null, '验证WxUser', '55', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-22 15:58:06', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1574', null, '验证WxUser', '52', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-22 15:59:37', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1575', null, '验证WxUser', '66', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-22 16:02:03', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1576', null, '验证WxUser', '32', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-22 16:02:46', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1577', null, '验证WxUser', '178', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-22 16:19:37', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1578', null, '验证WxUser', '164', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-22 16:21:24', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1579', null, '验证WxUser', '160', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-22 16:25:02', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1580', null, '新增ExplainByApi', '760', 'cc.mrbird.febs.wechat.controller.ApiController.addExplainByApi()', ' explain: \"Explain(eid=940d70c3f7820e09774136a28c103b6b, etype=2, einfo=测试诉求到组长，组长分配组员，组员转给组长，组长转给团长的诉求过程, sqrname=杨杰, sqrphone=15000000001, tel=15000000001, sqradress=测试地址, province=浙江省, city=杭州市, district=拱墅区, town=测试街道, openid=, sfsw=0, estatus=0, astatus=null, cxly=null, myd=null, fkmx=null, createdate=2020-02-22 16:28:47, wcl=null, clz=null, ycl=null, leadappraise=null, reason=null, aid=null, paid=null, ypj=null)\"', '192.168.222.1', '2020-02-22 16:28:47', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1581', null, '验证WxUser', '77', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-22 16:29:15', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1582', null, '验证WxUser', '73', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-22 16:43:59', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1583', null, '验证WxUser', '221', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-22 16:59:06', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1584', 'system', '修改Group', '209', 'cc.mrbird.febs.group.controller.GroupMedicineController.updateGroup()', ' groupMedicine: \"GroupMedicine(groupId=36, groupName=一组, groupMembers=122,123,124,125,126,128,127,129,130,131,132,133,134,135,20,118,119,120,121,191,192,193,194,195, groupRemark=, groupMemberCount=null, groupMemberName=null, groupMemberIds=[122, 123, 124, 125, 126, 128, 127, 129, 130, 131, 132, 133, 134, 135, 20, 118, 119, 120, 121, 191, 192, 193, 194, 195])\"', '0:0:0:0:0:0:0:1', '2020-02-22 17:08:39', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1585', null, '验证WxUser', '27', 'cc.mrbird.febs.wechat.controller.ApiController.oldcheckWUser()', ' telnum1: \"15000000001\" passwd: \"123456\"', '218.0.216.254', '2020-02-22 17:58:20', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1586', 'system', '获取PMByApi', '30', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistByMedicinePhone()', ' phone: \"15000000001\" rylx: \"0\"', '192.168.199.1', '2020-02-22 17:58:36', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1587', 'system', '获取PMByApi', '1722', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistByMedicinePhone()', ' phone: \"15000000006\" rylx: \"3\"', '192.168.199.1', '2020-02-22 18:01:23', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1588', 'system', '获取PMByApi', '21715', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistByMedicinePhone()', ' phone: \"15000000006\" rylx: \"3\"', '192.168.199.1', '2020-02-22 18:01:43', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1589', 'system', '获取PMByApi', '37867', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistByMedicinePhone()', ' phone: \"15000000006\" rylx: \"3\"', '192.168.199.1', '2020-02-22 18:20:22', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1590', null, '获取PMByApi', '12107', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistByMedicinePhone()', ' phone: null rylx: \"0\"', '218.74.20.250', '2020-02-22 18:39:47', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1591', 'system', '获取PMByApi', '25085', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistByMedicinePhone()', ' phone: \"15000000005\" rylx: \"2\"', '192.168.199.1', '2020-02-22 18:40:34', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1592', null, '获取PMByApi', '3783', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistByMedicinePhone()', ' phone: null rylx: \"0\"', '218.74.20.250', '2020-02-22 18:40:47', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1593', null, '获取PMByApi', '11', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistByMedicinePhone()', ' phone: null rylx: \"0\"', '218.74.20.250', '2020-02-22 18:41:08', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1594', null, '获取PMByApi', '14', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistByMedicinePhone()', ' phone: null rylx: \"0\"', '218.74.20.250', '2020-02-22 18:41:37', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1595', null, '获取PMByApi', '59', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistByMedicinePhone()', ' phone: \"15000000005\" rylx: \"2\"', '218.74.20.250', '2020-02-22 18:41:56', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1596', 'system', '获取PMByApi', '10', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistByMedicinePhone()', ' phone: null rylx: \"0\"', '218.74.20.250', '2020-02-22 18:42:11', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1597', null, '获取PMByApi', '13', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistByMedicinePhone()', ' phone: null rylx: \"0\"', '218.74.20.250', '2020-02-22 18:42:48', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1598', null, '获取PMByApi', '12', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistByMedicinePhone()', ' phone: \"15000000005\" rylx: \"0\"', '218.74.20.250', '2020-02-22 18:43:46', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1599', null, '获取PMByApi', '58', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistByMedicinePhone()', ' phone: \"15000000005\" rylx: \"2\"', '218.74.20.250', '2020-02-22 18:44:29', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1600', null, '验证WxUser', '74', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-22 18:48:04', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1601', null, '获取PMByApi', '55', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistByMedicinePhone()', ' phone: \"15000000005\" rylx: \"2\"', '218.74.20.250', '2020-02-22 18:49:03', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1602', 'system', '获取PMByApi', '55', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistByMedicinePhone()', ' phone: \"15000000005\" rylx: \"2\"', '218.74.20.250', '2020-02-22 18:50:22', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1603', null, '验证WxUser', '72', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-22 18:51:59', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1604', null, '获取PMByApi', '58', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistByMedicinePhone()', ' phone: \"15000000005\" rylx: \"2\"', '218.74.20.250', '2020-02-22 18:52:39', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1605', null, '验证WxUser', '87', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-22 18:52:40', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1606', null, '获取PMByApi', '57', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistByMedicinePhone()', ' phone: \"15000000005\" rylx: \"2\"', '218.74.20.250', '2020-02-22 18:52:54', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1607', null, '获取PMByApi', '54', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistByMedicinePhone()', ' phone: \"15000000005\" rylx: \"2\"', '218.74.20.250', '2020-02-22 18:55:16', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1608', null, '获取PMByApi', '49', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistByMedicinePhone()', ' phone: \"15000000005\" rylx: \"2\"', '218.74.20.250', '2020-02-22 18:56:51', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1609', 'system', '获取PMByApi', '49', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistByMedicinePhone()', ' phone: \"15000000005\" rylx: \"2\"', '218.74.20.250', '2020-02-22 18:58:09', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1610', null, '获取PMByApi', '49', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistByMedicinePhone()', ' phone: \"15000000005\" rylx: \"2\"', '218.74.20.250', '2020-02-22 19:00:06', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1611', null, '获取PMByApi', '49', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistByMedicinePhone()', ' phone: \"15000000005\" rylx: \"2\"', '218.74.20.250', '2020-02-22 19:00:59', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1612', null, '获取PMByApi', '49', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistByMedicinePhone()', ' phone: \"15000000005\" rylx: \"2\"', '218.74.20.250', '2020-02-22 19:03:28', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1613', null, '获取PMByApi', '49', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistByMedicinePhone()', ' phone: \"15000000005\" rylx: \"2\"', '218.74.20.250', '2020-02-22 19:05:08', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1614', 'system', '获取PMByApi', '49', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistByMedicinePhone()', ' phone: \"15000000005\" rylx: \"2\"', '218.74.20.250', '2020-02-22 19:05:15', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1615', null, '获取PMByApi', '64', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistByMedicinePhone()', ' phone: \"15000000005\" rylx: \"2\"', '218.74.20.250', '2020-02-22 19:07:39', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1616', null, '获取PMByApi', '49', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistByMedicinePhone()', ' phone: \"15000000005\" rylx: \"2\"', '218.74.20.250', '2020-02-22 19:08:49', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1617', null, '验证WxUser', '72', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-22 19:09:41', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1618', null, '获取PMByApi', '44', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistByMedicinePhone()', ' phone: \"15000000005\" rylx: \"2\"', '218.74.20.250', '2020-02-22 19:09:59', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1619', null, '获取PMByApi', '58', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistByMedicinePhone()', ' phone: \"15000000005\" rylx: \"2\"', '218.74.20.250', '2020-02-22 19:11:55', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1620', 'system', '获取PMByApi', '18', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistByMedicinePhone()', ' phone: \"15000000001\" rylx: \"0\"', '218.74.20.250', '2020-02-22 19:12:35', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1621', null, '验证WxUser', '68', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-22 19:13:04', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1622', null, '验证WxUser', '69', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-22 19:13:36', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1623', null, '验证WxUser', '92', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-22 19:14:30', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1624', null, '获取PMByApi', '73', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistByMedicinePhone()', ' phone: \"15000000005\" rylx: \"2\"', '111.1.108.43', '2020-02-22 19:16:06', '中国|华东|浙江省|温州市|移动');
INSERT INTO `t_log` VALUES ('1625', null, '获取PMByApi', '12', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistByMedicinePhone()', ' phone: \"15000000001\" rylx: \"0\"', '218.74.20.250', '2020-02-22 19:17:02', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1626', null, '获取PMByApi', '29', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistByMedicinePhone()', ' phone: \"15000000005\" rylx: \"1\"', '192.168.199.1', '2020-02-22 19:18:22', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1627', null, '获取PMByApi', '14', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistByMedicinePhone()', ' phone: \"15000000001\" rylx: \"0\"', '218.74.20.250', '2020-02-22 19:18:35', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1628', 'system', '获取PMByApi', '37', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistByMedicinePhone()', ' phone: \"15000000005\" rylx: \"1\"', '192.168.199.1', '2020-02-22 19:18:37', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1629', null, '获取PMByApi', '20', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistByMedicinePhone()', ' phone: \"15000000002\" rylx: \"1\"', '218.74.20.250', '2020-02-22 19:18:56', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1630', null, '获取PMByApi', '31', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistByMedicinePhone()', ' phone: \"15000000007\" rylx: \"1\"', '218.74.20.250', '2020-02-22 19:19:34', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1631', null, '获取PMByApi', '10', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistByMedicinePhone()', ' phone: \"15000000002\" rylx: \"0\"', '218.74.20.250', '2020-02-22 19:19:53', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1632', null, '获取PMByApi', '9', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistByMedicinePhone()', ' phone: \"null\" rylx: \"0\"', '218.74.20.250', '2020-02-22 19:23:28', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1633', 'system', '获取PMByApi', '15', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistByMedicinePhone()', ' phone: \"15000000001\" rylx: \"0\"', '218.74.20.250', '2020-02-22 19:25:02', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1634', null, '验证WxUser', '71', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-22 19:25:46', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1635', null, '获取PMByApi', '13', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistByMedicinePhone()', ' phone: \"null\" rylx: \"0\"', '218.74.20.250', '2020-02-22 19:26:25', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1636', null, '验证WxUser', '76', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-22 19:30:26', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1637', null, '获取PMByApi', '12', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistByMedicinePhone()', ' phone: \"null\" rylx: \"0\"', '218.74.20.250', '2020-02-22 19:31:18', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1638', null, '验证WxUser', '64', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000006\" passwd: \"123456\"', '192.168.222.1', '2020-02-22 19:31:47', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1639', null, '验证WxUser', '109', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000001\" passwd: \"123456\"', '218.74.20.250', '2020-02-22 19:34:29', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1640', null, '获取getPersonByPhone', '33', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000001\" rylx: \"0\"', '218.74.20.250', '2020-02-22 19:34:37', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1641', null, '验证WxUser', '8', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000002\" passwd: \"123456\"', '218.74.20.250', '2020-02-22 19:35:41', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1642', null, '获取getPersonByPhone', '15', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000001\" rylx: \"0\"', '218.74.20.250', '2020-02-22 19:35:47', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1643', null, '验证WxUser', '14', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000007\" passwd: \"123456\"', '218.74.20.250', '2020-02-22 19:36:18', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1644', null, '获取getPersonByPhone', '32', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000007\" rylx: \"1\"', '218.74.20.250', '2020-02-22 19:36:24', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1645', null, '验证WxUser', '15', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '218.74.20.250', '2020-02-22 19:36:59', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1646', null, '获取getPersonByPhone', '83', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000005\" rylx: \"2\"', '218.74.20.250', '2020-02-22 19:37:15', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1647', null, '验证WxUser', '261', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000006\" passwd: \"123456\"', '192.168.222.1', '2020-02-22 19:37:50', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1648', null, '验证WxUser', '12', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '218.74.20.250', '2020-02-22 19:39:16', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1649', null, '验证WxUser', '79', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000006\" passwd: \"123456\"', '192.168.222.1', '2020-02-22 19:41:18', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1650', null, '验证WxUser', '71', 'cc.mrbird.febs.wechat.controller.ApiController.checkWUser()', ' telnum1: \"15000000006\" passwd: \"123456\"', '192.168.222.1', '2020-02-22 19:42:28', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1651', null, '验证WxUser', '14', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '218.74.20.250', '2020-02-22 19:42:56', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1652', null, '验证WxUser', '7', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000001\" passwd: \"123456\"', '218.0.216.254', '2020-02-22 19:46:08', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1653', null, '获取getPersonByPhone', '10', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000001\" rylx: \"0\"', '218.0.216.254', '2020-02-22 19:46:14', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1654', null, '验证WxUser', '12', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000002\" passwd: \"123456\"', '218.0.216.254', '2020-02-22 19:46:50', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1655', null, '获取getPersonByPhone', '9', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000001\" rylx: \"0\"', '218.0.216.254', '2020-02-22 19:46:56', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1656', null, '验证WxUser', '11', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000007\" passwd: \"123456\"', '218.0.216.254', '2020-02-22 19:47:17', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1657', null, '验证WxUser', '11', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000007\" passwd: \"123456\"', '218.0.216.254', '2020-02-22 19:48:24', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1658', null, '获取getPersonByPhone', '17', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000007\" rylx: \"1\"', '218.0.216.254', '2020-02-22 19:48:28', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1659', null, '验证WxUser', '10', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '218.0.216.254', '2020-02-22 19:48:59', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1660', null, '获取getPersonByPhone', '37', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000005\" rylx: \"2\"', '218.0.216.254', '2020-02-22 19:49:03', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1661', null, '验证WxUser', '11', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000006\" passwd: \"123456\"', '218.0.216.254', '2020-02-22 19:49:27', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1662', null, '获取getPersonByPhone', '31', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000006\" rylx: \"3\"', '218.0.216.254', '2020-02-22 19:49:31', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1663', null, '获取getPersonByPhone', '45', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000005\" rylx: \"2\"', '218.74.20.250', '2020-02-22 19:53:27', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1664', null, '验证WxUser', '87', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000002\" passwd: \"123456\"', '218.74.20.250', '2020-02-22 19:59:43', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1665', null, '获取getPersonByPhone', '36', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000001\" rylx: \"0\"', '218.74.20.250', '2020-02-22 20:08:11', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1666', null, '获取getPersonByPhone', '8', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000001\" rylx: \"0\"', '218.74.20.250', '2020-02-22 20:09:27', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1667', null, '获取getPersonByPhone', '15', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000007\" rylx: \"1\"', '218.74.20.250', '2020-02-22 20:10:25', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1668', null, '获取getPersonByPhone', '6', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"null\" rylx: \"0\"', '218.74.20.250', '2020-02-22 20:11:07', '中国|华东|浙江省|杭州市|电信');
INSERT INTO `t_log` VALUES ('1669', 'system', '修改GeneratorConfig', '124', 'cc.mrbird.febs.generator.controller.GeneratorConfigController.updateGeneratorConfig()', ' generatorConfig: GeneratorConfig(id=1, author=tongrok, basePackage=cc.mrbird.febs.person, entityPackage=entity, mapperPackage=mapper, mapperXmlPackage=mapper, servicePackage=service, serviceImplPackage=service.impl, controllerPackage=controller, isTrim=1, trimValue=t_, javaPath=/src/main/java/, resourcesPath=src/main/resources, date=2020-02-22 21:49:32, tableName=null, tableComment=null, className=null)', '192.168.199.1', '2020-02-22 21:49:32', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1670', null, '验证WxUser', '217', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-22 22:18:15', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1671', null, '验证WxUser', '206', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-22 22:28:43', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1672', null, '验证WxUser', '66', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-22 22:36:26', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1673', 'system', '获取WxUserr', '142', 'cc.mrbird.febs.wechat.controller.ApiController.getWUser()', ' telnum1: \"15000000001\"', '192.168.199.1', '2020-02-22 22:54:33', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1674', null, '验证WxUser', '145', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 09:26:57', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1675', null, '验证WxUser', '107', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 09:30:22', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1676', null, '验证WxUser', '60', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000010\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 09:31:14', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1677', null, '验证WxUser', '63', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000010\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 09:32:42', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1678', null, '验证WxUser', '62', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000006\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 09:34:01', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1679', null, '验证WxUser', '53', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000006\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 09:42:36', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1680', null, '验证WxUser', '59', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000006\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 09:46:42', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1681', null, '验证WxUser', '55', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000006\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 09:48:57', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1682', null, '验证WxUser', '60', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000006\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 09:50:27', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1683', null, '验证WxUser', '46', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 09:57:29', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1684', null, '新增ExplainByApi', '781', 'cc.mrbird.febs.wechat.controller.ApiController.addExplainByApi()', ' explain: \"Explain(eid=510a5e4182f8a228b7814ed6cf32ce97, etype=1, einfo=12121212121, sqrname=qqqq, sqrphone=13522886699, tel=15000000001, sqradress=222, province=安徽省, city=合肥市, district=庐阳区, town=1111, openid=, sfsw=1, estatus=0, astatus=null, cxly=null, myd=null, fkmx=null, createdate=2020-02-23 09:57:54, wcl=null, clz=null, ycl=null, createTimeFrom=null, createTimeTo=null, mgroup=null, agroup=null, ateam=null, leadappraise=null, reason=null, aid=null, paid=null, ypj=null, aidname=null, aidphone=null)\"', '192.168.222.1', '2020-02-23 09:57:55', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1685', null, '验证WxUser', '72', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 09:58:23', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1686', null, '验证WxUser', '63', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000006\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 10:02:41', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1687', null, '验证WxUser', '71', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 10:03:34', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1688', null, '验证WxUser', '75', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 10:27:34', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1689', 'system', '新增PMByApi', '131', 'cc.mrbird.febs.wechat.controller.ApiController.addPersonMedicineFamily()', ' personMedicineFamily: \"PersonMedicineFamily(userid=null, nname=测试人, age=22, relation=父子, address=测试地址, unit=测试单位, phone=13700000001, ylrphone=13858020036)\"', '0:0:0:0:0:0:0:1', '2020-02-23 10:37:30', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1690', 'system', '获取PMByApi', '134', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"13858020036\"', '0:0:0:0:0:0:0:1', '2020-02-23 10:48:27', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1691', 'system', '获取getPersonByPhone', '165', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"13777777771\" rylx: \"0\"', '0:0:0:0:0:0:0:1', '2020-02-23 11:26:22', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1692', null, '验证WxUser', '79', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 11:44:12', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1693', null, '验证WxUser', '78', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 11:47:32', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1694', null, '新增ExplainByApi', '159', 'cc.mrbird.febs.wechat.controller.ApiController.addExplainByApi()', ' explain: \"Explain(eid=dd89dbab0b259702651f5e8352b1cf28, etype=1, einfo=1212121212121, sqrname=1111, sqrphone=15000000001, tel=15000000001, sqradress=121212121, province=浙江省, city=杭州市, district=拱墅区, town=1532323, openid=, sfsw=0, estatus=0, astatus=null, cxly=null, myd=null, fkmx=null, createdate=2020-02-23 11:49:10, wcl=null, clz=null, ycl=null, createTimeFrom=null, createTimeTo=null, mgroup=null, agroup=null, ateam=null, leadappraise=null, reason=null, aid=null, paid=null, ypj=null, aidname=null, aidphone=null)\"', '192.168.222.1', '2020-02-23 11:49:11', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1695', null, '验证WxUser', '196', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000006\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 12:12:32', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1696', null, '验证WxUser', '209', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000006\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 12:13:42', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1697', null, '验证WxUser', '76', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000006\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 12:14:12', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1698', 'system', '获取getPersonByPhone', '85', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000001\" rylx: null', '0:0:0:0:0:0:0:1', '2020-02-23 12:20:04', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1699', 'system', '获取getPersonByPhone', '98', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000005\" rylx: null', '0:0:0:0:0:0:0:1', '2020-02-23 12:20:48', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1700', 'system', '获取getPersonByPhone', '23', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"13858020036\" rylx: null', '0:0:0:0:0:0:0:1', '2020-02-23 12:24:47', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1701', null, '验证WxUser', '198', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000006\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 12:25:11', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1702', 'system', '获取getPersonByPhone', '50', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000006\" rylx: null', '0:0:0:0:0:0:0:1', '2020-02-23 12:25:37', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1703', 'system', '获取getPersonByPhone', '33', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000008\" rylx: null', '0:0:0:0:0:0:0:1', '2020-02-23 12:26:13', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1704', null, '验证WxUser', '68', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 12:26:52', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1705', null, '验证WxUser', '203', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000006\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 12:30:29', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1706', null, '验证WxUser', '81', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 12:31:46', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1707', null, '验证WxUser', '70', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000006\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 12:33:58', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1708', 'system', '获取getPersonByPhone', '270', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000007\" rylx: null', '0:0:0:0:0:0:0:1', '2020-02-23 12:34:54', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1709', null, '验证WxUser', '43', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 12:41:12', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1710', null, '新增ExplainByApi', '779', 'cc.mrbird.febs.wechat.controller.ApiController.addExplainByApi()', ' explain: \"Explain(eid=8e0d0e558d8978f53da936b5085e7fd6, etype=1, einfo=为处理建, sqrname=建龙, sqrphone=15988775544, tel=15000000001, sqradress=2222, province=山西省, city=太原市, district=杏花岭区, town=111, openid=, sfsw=1, estatus=0, astatus=null, cxly=null, myd=null, fkmx=null, createdate=2020-02-23 12:41:42, wcl=null, clz=null, ycl=null, createTimeFrom=null, createTimeTo=null, mgroup=null, agroup=null, ateam=null, leadappraise=null, reason=null, aid=null, paid=null, ypj=null, aidname=null, aidphone=null)\"', '192.168.222.1', '2020-02-23 12:41:43', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1711', null, '新增ExplainByApi', '204', 'cc.mrbird.febs.wechat.controller.ApiController.addExplainByApi()', ' explain: \"Explain(eid=55eea1e4d945a4f98cb022988c3a8592, etype=1, einfo=为处理建, sqrname=建龙, sqrphone=15988775544, tel=15000000001, sqradress=2222, province=山西省, city=太原市, district=杏花岭区, town=111, openid=, sfsw=1, estatus=0, astatus=null, cxly=null, myd=null, fkmx=null, createdate=2020-02-23 12:41:44, wcl=null, clz=null, ycl=null, createTimeFrom=null, createTimeTo=null, mgroup=null, agroup=null, ateam=null, leadappraise=null, reason=null, aid=null, paid=null, ypj=null, aidname=null, aidphone=null)\"', '192.168.222.1', '2020-02-23 12:41:44', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1712', null, '新增PMByApi', '286', 'cc.mrbird.febs.wechat.controller.ApiController.addPersonMedicineFamily()', ' personMedicineFamily: \"PersonMedicineFamily(userid=null, nname=测试, age=45, relation=父子, address=西湖区三墩街道, unit=浙江浙一, phone=13701010101, ylrphone=null)\"', '112.10.231.239', '2020-02-23 12:44:27', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1713', null, '验证WxUser', '260', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000006\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 12:44:56', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1714', null, '新增PMByApi', '88', 'cc.mrbird.febs.wechat.controller.ApiController.addPersonMedicineFamily()', ' personMedicineFamily: \"PersonMedicineFamily(userid=null, nname=测试2, age=35, relation=妻子, address=西湖区留下街道, unit=浙大医学院, phone=13509090909, ylrphone=null)\"', '112.10.231.239', '2020-02-23 12:46:12', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1715', null, '获取PMByApi', '9', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 12:53:39', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1716', 'system', '新增PMByApi', '97', 'cc.mrbird.febs.wechat.controller.ApiController.addPersonMedicineFamily()', ' personMedicineFamily: \"PersonMedicineFamily(userid=null, nname=童思宁, age=45, relation=儿子, address=测试地址, unit=测是单位, phone=15900000001, ylrphone=15000000001)\"', '0:0:0:0:0:0:0:1', '2020-02-23 12:53:56', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1717', null, '获取PMByApi', '8', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 12:54:03', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1718', null, '新增PMByApi', '115', 'cc.mrbird.febs.wechat.controller.ApiController.addPersonMedicineFamily()', ' personMedicineFamily: \"PersonMedicineFamily(userid=null, nname=测试, age=35, relation=妻子, address=测试单位, unit=测试单位, phone=13501010101, ylrphone=15000000001)\"', '112.10.231.239', '2020-02-23 12:54:31', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1719', null, '获取PMByApi', '5', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 12:54:31', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1720', null, '获取PMByApi', '10', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '0:0:0:0:0:0:0:1', '2020-02-23 12:54:51', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1721', 'system', '获取PMByApi', '9', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 12:55:50', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1722', null, '获取getPersonFamilyInfo', '193', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 12:56:32', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1723', null, '获取getPersonFamilyInfo', '23', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 12:56:34', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1724', 'system', '获取getPersonFamilyInfo', '23', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '0:0:0:0:0:0:0:1', '2020-02-23 12:56:39', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1725', null, '获取getPersonFamilyInfo', '20', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 12:58:13', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1726', null, '获取getPersonFamilyInfo', '17', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 12:59:01', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1727', null, '验证WxUser', '212', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 12:59:27', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1728', null, '获取getPersonByPhone', '472', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000005\" rylx: \"2\"', '192.168.222.1', '2020-02-23 13:03:14', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1729', null, '获取getPersonFamilyInfo', '95', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 13:42:34', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1730', null, '获取getPersonFamilyInfo', '14', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 13:43:23', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1731', null, '获取getPersonFamilyInfo', '15', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 13:43:41', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1732', null, '获取getPersonFamilyInfo', '15', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 13:43:59', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1733', null, '获取getPersonFamilyInfo', '12', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 13:44:19', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1734', null, '获取getPersonFamilyInfo', '15', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 13:44:23', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1735', null, '获取getPersonFamilyInfo', '16', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 13:45:56', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1736', null, '获取getPersonFamilyInfo', '13', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 13:46:03', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1737', null, '获取getPersonFamilyInfo', '13', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 13:54:03', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1738', null, '获取getPersonFamilyInfo', '130', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 14:00:23', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1739', null, '获取getPersonFamilyInfo', '14', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 14:01:00', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1740', null, '获取getPersonFamilyInfo', '16', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 14:03:45', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1741', null, '获取getPersonFamilyInfo', '16', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 14:10:35', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1742', null, '获取getPersonFamilyInfo', '13', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 14:11:07', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1743', null, '获取getPersonFamilyInfo', '12', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 14:11:10', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1744', null, '获取getPersonFamilyInfo', '16', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 14:11:24', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1745', null, '获取getPersonFamilyInfo', '21', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 14:12:01', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1746', null, '获取getPersonFamilyInfo', '12', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 14:12:18', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1747', null, '获取getPersonFamilyInfo', '13', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 14:13:07', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1748', null, '新增deletePersonMedicineFamily', '29', 'cc.mrbird.febs.wechat.controller.ApiController.deletePersonMedicineFamily()', ' phone: \"15900000001\" ylrphone: \"null\"', '112.10.231.239', '2020-02-23 14:13:09', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1749', null, '获取getPersonFamilyInfo', '15', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 14:13:33', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1750', null, '获取getPersonFamilyInfo', '13', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 14:14:14', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1751', null, '获取getPersonFamilyInfo', '16', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 14:14:34', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1752', null, '新增deletePersonMedicineFamily', '18', 'cc.mrbird.febs.wechat.controller.ApiController.deletePersonMedicineFamily()', ' phone: \"15900000001\" ylrphone: \"null\"', '112.10.231.239', '2020-02-23 14:14:36', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1753', null, '获取getPersonFamilyInfo', '13', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 14:14:53', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1754', null, '新增deletePersonMedicineFamily', '100', 'cc.mrbird.febs.wechat.controller.ApiController.deletePersonMedicineFamily()', ' phone: \"15900000001\" ylrphone: \"15000000001\"', '112.10.231.239', '2020-02-23 14:14:58', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1755', null, '获取getPersonFamilyInfo', '14', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 14:15:11', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1756', null, '获取getPersonFamilyInfo', '193', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 14:20:02', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1757', null, '新增deletePersonMedicineFamily', '212', 'cc.mrbird.febs.wechat.controller.ApiController.deletePersonMedicineFamily()', ' phone: \"13501010101\" ylrphone: \"15000000001\"', '112.10.231.239', '2020-02-23 14:20:57', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1758', null, '获取getPersonFamilyInfo', '26', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 14:21:21', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1759', null, '获取getPersonFamilyInfo', '41', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 14:22:08', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1760', null, '获取getPersonFamilyInfo', '15', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 14:22:50', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1761', null, '获取getPersonFamilyInfo', '16', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 14:23:36', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1762', null, '新增PMByApi', '103', 'cc.mrbird.febs.wechat.controller.ApiController.addPersonMedicineFamily()', ' personMedicineFamily: \"PersonMedicineFamily(userid=null, nname=测试, age=45, relation=父子, address=测试单位, unit=测试单位, phone=13501010101, ylrphone=15000000001)\"', '112.10.231.239', '2020-02-23 14:24:24', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1763', null, '新增PMByApi', '150', 'cc.mrbird.febs.wechat.controller.ApiController.addPersonMedicineFamily()', ' personMedicineFamily: \"PersonMedicineFamily(userid=null, nname=测试, age=45, relation=父子, address=测试单位, unit=测试单位, phone=13501010101, ylrphone=15000000001)\"', '112.10.231.239', '2020-02-23 14:25:44', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1764', null, '获取getPersonFamilyInfo', '30', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 14:26:19', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1765', null, '新增PMByApi', '9', 'cc.mrbird.febs.wechat.controller.ApiController.addPersonMedicineFamily()', ' personMedicineFamily: \"PersonMedicineFamily(userid=null, nname=测试, age=35, relation=夫妻, address=测试单位, unit=测试单位, phone=13509090909, ylrphone=15000000001)\"', '112.10.231.239', '2020-02-23 14:26:51', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1766', null, '新增PMByApi', '197', 'cc.mrbird.febs.wechat.controller.ApiController.addPersonMedicineFamily()', ' personMedicineFamily: \"PersonMedicineFamily(userid=null, nname=测试, age=35, relation=夫妻, address=测试单位, unit=测试单位, phone=13509090909, ylrphone=15000000001)\"', '112.10.231.239', '2020-02-23 14:27:34', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1767', null, '获取getPersonFamilyInfo', '40', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 14:27:34', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1768', null, '获取getPersonFamilyInfo', '16', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 14:28:17', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1769', null, '获取getPersonFamilyInfo', '26', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 14:28:36', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1770', null, '获取getPersonFamilyInfo', '15', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 14:29:01', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1771', null, '新增PMByApi', '309', 'cc.mrbird.febs.wechat.controller.ApiController.addPersonMedicineFamily()', ' personMedicineFamily: \"PersonMedicineFamily(userid=null, nname=测试, age=45, relation=父子, address=测试地址, unit=测试单位, phone=13501010101, ylrphone=15000000001)\"', '112.10.231.239', '2020-02-23 14:29:51', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1772', null, '获取getPersonFamilyInfo', '12', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 14:29:52', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1773', null, '新增PMByApi', '127', 'cc.mrbird.febs.wechat.controller.ApiController.addPersonMedicineFamily()', ' personMedicineFamily: \"PersonMedicineFamily(userid=null, nname=测试2, age=34, relation=妻子, address=测试住址, unit=测试单位, phone=15409090909, ylrphone=15000000001)\"', '112.10.231.239', '2020-02-23 14:30:29', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1774', null, '获取getPersonFamilyInfo', '12', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 14:30:29', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1775', null, '新增deletePersonMedicineFamily', '92', 'cc.mrbird.febs.wechat.controller.ApiController.deletePersonMedicineFamily()', ' phone: \"15409090909\" ylrphone: \"15000000001\"', '112.10.231.239', '2020-02-23 14:30:33', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1776', null, '获取getPersonFamilyInfo', '13', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 14:30:33', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1777', null, '获取getPersonFamilyInfo', '12', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 14:32:09', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1778', null, '获取getPersonFamilyInfo', '11', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 14:32:19', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1779', null, '获取getPersonFamilyInfo', '15', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 14:32:43', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1780', null, '获取getPersonAssistInfo', '8', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistInfo()', ' phone: \"15000000009\"', '112.10.231.239', '2020-02-23 14:42:37', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1781', null, '获取getPersonAssistInfo', '7', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistInfo()', ' phone: \"15000000009\"', '112.10.231.239', '2020-02-23 14:42:58', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1782', null, '获取getPersonAssistInfo', '8', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistInfo()', ' phone: \"15000000009\"', '112.10.231.239', '2020-02-23 14:44:42', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1783', null, '获取getPersonAssistInfo', '9', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistInfo()', ' phone: \"15000000009\"', '112.10.231.239', '2020-02-23 14:44:54', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1784', null, '获取getPersonAssistInfo', '8', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistInfo()', ' phone: \"15000000009\"', '112.10.231.239', '2020-02-23 14:45:45', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1785', null, '获取getPersonAssistInfo', '158', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistInfo()', ' phone: \"15000000009\"', '112.10.231.239', '2020-02-23 14:58:41', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1786', null, '获取getPersonAssistInfo', '13', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistInfo()', ' phone: \"15000000009\"', '112.10.231.239', '2020-02-23 14:59:34', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1787', null, '获取getPersonAssistInfo', '11', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistInfo()', ' phone: \"15000000009\"', '112.10.231.239', '2020-02-23 14:59:50', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1788', null, '获取getPersonAssistInfo', '8', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistInfo()', ' phone: \"15000000009\"', '112.10.231.239', '2020-02-23 15:06:30', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1789', null, '获取getPersonAssistInfo', '7', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistInfo()', ' phone: \"15000000009\"', '112.10.231.239', '2020-02-23 15:07:05', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1790', null, '获取getPersonAssistInfo', '15', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistInfo()', ' phone: \"15000000009\"', '112.10.231.239', '2020-02-23 15:07:25', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1791', null, '获取getPersonAssistInfo', '9', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistInfo()', ' phone: \"15000000009\"', '112.10.231.239', '2020-02-23 15:07:51', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1792', null, '获取getPersonAssistInfo', '7', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistInfo()', ' phone: \"15000000009\"', '112.10.231.239', '2020-02-23 15:08:29', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1793', null, '验证WxUser', '87', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 15:10:36', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1794', null, '获取getPersonByPhone', '59', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000001\" rylx: \"0\"', '192.168.222.1', '2020-02-23 15:10:43', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1795', null, '验证WxUser', '183', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 15:16:19', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1796', null, '获取getPersonByPhone', '695', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000001\" rylx: \"0\"', '192.168.222.1', '2020-02-23 15:16:28', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1797', null, '验证WxUser', '82', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 15:17:52', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1798', null, '获取getPersonByPhone', '318', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000005\" rylx: \"2\"', '192.168.222.1', '2020-02-23 15:18:00', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1799', null, '获取getPersonAssistInfo', '128', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistInfo()', ' phone: \"15000000009\"', '112.10.231.239', '2020-02-23 15:23:58', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1800', null, '获取getPersonAssistInfo', '17', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistInfo()', ' phone: \"15000000009\"', '112.10.231.239', '2020-02-23 15:25:11', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1801', null, '获取getPersonAssistInfo', '13', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistInfo()', ' phone: \"15000000009\"', '112.10.231.239', '2020-02-23 15:26:03', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1802', null, '获取getPersonAssistInfo', '356', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistInfo()', ' phone: \"15000000009\"', '112.10.231.239', '2020-02-23 15:29:15', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1803', null, '获取getPersonAssistInfo', '173', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistInfo()', ' phone: \"15000000009\"', '112.10.231.239', '2020-02-23 15:33:09', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1804', null, '验证WxUser', '244', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 15:34:39', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1805', null, '获取getPersonByPhone', '373', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000005\" rylx: \"2\"', '192.168.222.1', '2020-02-23 15:34:48', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1806', null, '验证WxUser', '65', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 15:39:33', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1807', null, '获取getPersonByPhone', '255', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000005\" rylx: \"2\"', '192.168.222.1', '2020-02-23 15:39:42', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1808', null, '验证WxUser', '61', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 15:40:37', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1809', null, '获取getPersonByPhone', '207', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000005\" rylx: \"2\"', '192.168.222.1', '2020-02-23 15:40:45', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1810', null, '获取getPersonAssistInfo', '15', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistInfo()', ' phone: \"15000000009\"', '112.10.231.239', '2020-02-23 15:40:49', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1811', null, '获取getPersonAssistInfo', '12', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistInfo()', ' phone: \"15000000009\"', '112.10.231.239', '2020-02-23 15:41:54', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1812', null, '验证WxUser', '55', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 15:42:05', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1813', null, '获取getPersonByPhone', '251', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000005\" rylx: \"2\"', '192.168.222.1', '2020-02-23 15:42:15', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1814', null, '获取getPersonAssistInfo', '13', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistInfo()', ' phone: \"15000000009\"', '112.10.231.239', '2020-02-23 15:42:29', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1815', null, '验证WxUser', '68', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 15:43:25', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1816', null, '获取getPersonByPhone', '219', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000005\" rylx: \"2\"', '192.168.222.1', '2020-02-23 15:43:33', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1817', null, '获取getPersonAssistInfo', '25', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistInfo()', ' phone: \"15000000009\"', '112.10.231.239', '2020-02-23 15:44:08', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1818', null, '获取getPersonAssistInfo', '10', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistInfo()', ' phone: \"15000000009\"', '112.10.231.239', '2020-02-23 15:44:57', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1819', null, '验证WxUser', '63', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 15:45:00', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1820', null, '获取getPersonByPhone', '215', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000005\" rylx: \"2\"', '192.168.222.1', '2020-02-23 15:45:09', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1821', null, '验证WxUser', '53', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 15:46:33', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1822', null, '获取getPersonAssistInfo', '12', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistInfo()', ' phone: \"15000000009\"', '112.10.231.239', '2020-02-23 15:46:34', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1823', null, '获取getPersonByPhone', '209', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000005\" rylx: \"2\"', '192.168.222.1', '2020-02-23 15:46:41', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1824', null, '获取getPersonAssistInfo', '12', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistInfo()', ' phone: \"15000000009\"', '112.10.231.239', '2020-02-23 15:46:52', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1825', null, '获取updatePersonAssistInfo', '360', 'cc.mrbird.febs.wechat.controller.ApiController.updatePersonAssistInfo()', ' phone: \"15000000009\" nname: \"帮五\" ssex: \"1\" political: \"群众\" passwd: \"123456\" workunid: \"工作单位5\" duty: \"职务5\"', '112.10.231.239', '2020-02-23 15:48:22', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1826', null, '获取getPersonAssistInfo', '28', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistInfo()', ' phone: \"15000000009\"', '112.10.231.239', '2020-02-23 15:49:17', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1827', null, '获取updatePersonAssistInfo', '130', 'cc.mrbird.febs.wechat.controller.ApiController.updatePersonAssistInfo()', ' phone: \"15000000009\" nname: \"帮五\" ssex: \"0\" political: \"群众\" passwd: \"123456\" workunid: \"工作单位5\" duty: \"职务5\"', '112.10.231.239', '2020-02-23 15:49:35', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1828', null, '验证WxUser', '59', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 15:49:37', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1829', null, '获取getPersonByPhone', '225', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000005\" rylx: \"2\"', '192.168.222.1', '2020-02-23 15:49:44', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1830', null, '获取getPersonAssistInfo', '16', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistInfo()', ' phone: \"15000000009\"', '112.10.231.239', '2020-02-23 15:50:48', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1831', null, '获取getPersonAssistInfo', '14', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistInfo()', ' phone: \"15000000009\"', '112.10.231.239', '2020-02-23 15:55:32', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1832', null, '获取getPersonAssistInfo', '14', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistInfo()', ' phone: \"15000000009\"', '112.10.231.239', '2020-02-23 15:56:30', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1833', null, '获取updatePersonAssistInfo', '91', 'cc.mrbird.febs.wechat.controller.ApiController.updatePersonAssistInfo()', ' phone: \"15000000009\" nname: \"帮五\" ssex: \"0\" political: \"中共党员\" passwd: \"123456\" workunid: \"工作单位5\" duty: \"职务5\"', '112.10.231.239', '2020-02-23 15:56:41', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1834', null, '验证WxUser', '68', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 15:56:48', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1835', null, '获取getPersonByPhone', '200', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000005\" rylx: \"2\"', '192.168.222.1', '2020-02-23 15:56:57', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1836', null, '获取getPersonAssistInfo', '16', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistInfo()', ' phone: \"15000000009\"', '112.10.231.239', '2020-02-23 15:57:26', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1837', null, '获取getPersonAssistInfo', '13', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistInfo()', ' phone: \"15000000009\"', '112.10.231.239', '2020-02-23 15:58:08', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1838', null, '获取getPersonAssistInfo', '15', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistInfo()', ' phone: \"15000000009\"', '112.10.231.239', '2020-02-23 15:58:15', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1839', null, '获取updatePersonAssistInfo', '92', 'cc.mrbird.febs.wechat.controller.ApiController.updatePersonAssistInfo()', ' phone: \"15000000009\" nname: \"帮五\" ssex: \"0\" political: \"群众\" passwd: \"123456\" workunid: \"工作单位5\" duty: \"职务5\"', '112.10.231.239', '2020-02-23 15:58:23', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1840', null, '获取updatePersonAssistInfo', '46', 'cc.mrbird.febs.wechat.controller.ApiController.updatePersonAssistInfo()', ' phone: \"15000000009\" nname: \"帮五\" ssex: \"0\" political: \"群众\" passwd: \"123456\" workunid: \"工作单位5\" duty: \"职务5\"', '112.10.231.239', '2020-02-23 15:59:22', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1841', null, '获取getPersonAssistInfo', '13', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistInfo()', ' phone: \"15000000009\"', '112.10.231.239', '2020-02-23 15:59:43', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1842', null, '获取updatePersonAssistInfo', '97', 'cc.mrbird.febs.wechat.controller.ApiController.updatePersonAssistInfo()', ' phone: \"15000000009\" nname: \"帮五\" ssex: \"0\" political: \"中共党员\" passwd: \"123456\" workunid: \"工作单位5\" duty: \"职务5\"', '112.10.231.239', '2020-02-23 15:59:53', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1843', null, '获取updatePersonAssistInfo', '43', 'cc.mrbird.febs.wechat.controller.ApiController.updatePersonAssistInfo()', ' phone: \"15000000009\" nname: \"帮五\" ssex: \"0\" political: \"中共党员\" passwd: \"123456\" workunid: \"工作单位5\" duty: \"职务5\"', '112.10.231.239', '2020-02-23 15:59:59', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1844', null, '获取getPersonAssistInfo', '12', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistInfo()', ' phone: \"15000000009\"', '112.10.231.239', '2020-02-23 16:00:18', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1845', null, '获取updatePersonAssistInfo', '35', 'cc.mrbird.febs.wechat.controller.ApiController.updatePersonAssistInfo()', ' phone: \"15000000009\" nname: \"帮五\" ssex: \"0\" political: \"中共党员\" passwd: \"123456\" workunid: \"工作单位5\" duty: \"职务5\"', '112.10.231.239', '2020-02-23 16:00:19', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1846', null, '获取getPersonAssistInfo', '11', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistInfo()', ' phone: \"15000000009\"', '112.10.231.239', '2020-02-23 16:00:43', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1847', null, '验证WxUser', '69', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 16:01:58', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1848', null, '获取getPersonByPhone', '217', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000005\" rylx: \"2\"', '192.168.222.1', '2020-02-23 16:02:08', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1849', null, '获取getPersonAssistInfo', '13', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistInfo()', ' phone: \"15000000009\"', '112.10.231.239', '2020-02-23 16:02:45', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1850', null, '获取updatePersonAssistInfo', '38', 'cc.mrbird.febs.wechat.controller.ApiController.updatePersonAssistInfo()', ' phone: \"15000000009\" nname: \"帮五\" ssex: \"0\" political: \"中共党员\" passwd: \"123456\" workunid: \"工作单位5\" duty: \"职务5\"', '112.10.231.239', '2020-02-23 16:02:48', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1851', null, '获取getPersonAssistInfo', '11', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistInfo()', ' phone: \"15000000009\"', '112.10.231.239', '2020-02-23 16:03:04', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1852', null, '获取updatePersonAssistInfo', '34', 'cc.mrbird.febs.wechat.controller.ApiController.updatePersonAssistInfo()', ' phone: \"15000000009\" nname: \"帮五\" ssex: \"0\" political: \"中共党员\" passwd: \"123456\" workunid: \"工作单位5\" duty: \"职务5\"', '112.10.231.239', '2020-02-23 16:03:05', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1853', null, '获取getPersonAssistInfo', '13', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistInfo()', ' phone: \"15000000009\"', '112.10.231.239', '2020-02-23 16:04:18', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1854', null, '验证WxUser', '43', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 16:07:46', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1855', null, '获取getPersonByPhone', '72', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000001\" rylx: \"0\"', '192.168.222.1', '2020-02-23 16:07:54', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1856', null, '验证WxUser', '56', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 16:08:29', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1857', null, '获取getPersonByPhone', '224', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000005\" rylx: \"2\"', '192.168.222.1', '2020-02-23 16:08:38', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1858', null, '获取getPersonAssistInfo', '13', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistInfo()', ' phone: \"15000000009\"', '112.10.231.239', '2020-02-23 16:09:58', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1859', null, '获取getPersonAssistInfo', '10', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistInfo()', ' phone: \"15000000009\"', '112.10.231.239', '2020-02-23 16:10:35', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1860', null, '获取getPersonAssistInfo', '11', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistInfo()', ' phone: \"15000000009\"', '112.10.231.239', '2020-02-23 16:10:39', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1861', null, '获取getPersonAssistInfo', '10', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistInfo()', ' phone: \"15000000009\"', '112.10.231.239', '2020-02-23 16:10:42', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1862', null, '获取getPersonAssistInfo', '11', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistInfo()', ' phone: \"15000000009\"', '112.10.231.239', '2020-02-23 16:10:47', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1863', null, '获取getPersonAssistInfo', '11', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistInfo()', ' phone: \"15000000009\"', '112.10.231.239', '2020-02-23 16:10:52', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1864', null, '获取WxUserr', '9', 'cc.mrbird.febs.wechat.controller.ApiController.getWUser()', ' telnum1: \"15000000009\"', '112.10.231.239', '2020-02-23 16:11:47', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1865', null, '获取WxUserr', '7', 'cc.mrbird.febs.wechat.controller.ApiController.getWUser()', ' telnum1: \"15000000009\"', '112.10.231.239', '2020-02-23 16:12:21', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1866', null, '获取WxUserr', '7', 'cc.mrbird.febs.wechat.controller.ApiController.getWUser()', ' telnum1: \"15000000009\"', '112.10.231.239', '2020-02-23 16:15:23', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1867', null, '获取WxUserr', '8', 'cc.mrbird.febs.wechat.controller.ApiController.getWUser()', ' telnum1: \"15000000009\"', '112.10.231.239', '2020-02-23 16:17:36', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1868', null, '获取WxUserr', '11', 'cc.mrbird.febs.wechat.controller.ApiController.getWUser()', ' telnum1: \"15000000009\"', '112.10.231.239', '2020-02-23 16:18:43', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1869', null, '获取WxUserr', '7', 'cc.mrbird.febs.wechat.controller.ApiController.getWUser()', ' telnum1: \"15000000009\"', '112.10.231.239', '2020-02-23 16:36:21', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1870', 'system', '获取getPersonByPhone', '135', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000018\" rylx: null', '0:0:0:0:0:0:0:1', '2020-02-23 16:43:10', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1871', 'system', '获取getPersonByPhone', '53', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000018\" rylx: null', '0:0:0:0:0:0:0:1', '2020-02-23 16:45:08', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1872', null, '验证WxUser', '171', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 16:48:00', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1873', null, '验证WxUser', '175', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 16:52:09', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1874', null, '获取getPersonByPhone', '223', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000001\" rylx: \"0\"', '192.168.222.1', '2020-02-23 16:52:17', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1875', null, '验证WxUser', '63', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 16:52:44', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1876', null, '获取getPersonByPhone', '183', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000005\" rylx: \"2\"', '192.168.222.1', '2020-02-23 16:52:59', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1877', null, '验证WxUser', '74', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 16:57:44', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1878', null, '获取getPersonByPhone', '146', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000005\" rylx: \"2\"', '192.168.222.1', '2020-02-23 16:57:57', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1879', null, '获取updatePersonAssistInfo', '223', 'cc.mrbird.febs.wechat.controller.ApiController.updatePersonMedicineRemark()', ' phone: \"15000000001\" remark: \"12151515151515\"', '192.168.222.1', '2020-02-23 16:58:16', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1880', null, '验证WxUser', '78', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 16:59:15', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1881', null, '获取getPersonByPhone', '161', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000005\" rylx: \"2\"', '192.168.222.1', '2020-02-23 16:59:23', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1882', null, '获取WxUserr', '10', 'cc.mrbird.febs.wechat.controller.ApiController.getWUser()', ' telnum1: \"15000000009\"', '112.10.231.239', '2020-02-23 17:08:09', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1883', 'system', '导出PM', '771', 'cc.mrbird.febs.person.controller.PersonMedicineController.export()', ' queryRequest: \"QueryRequest(pageSize=30, pageNum=1, field=null, order=null)\" person: \"PersonMedicine(personId=null, personName=null, age=null, sex=null, party=null, unit=null, duty=null, szyld=null, accredited=null, phone=null, professional=null, category=null, county=null, town=null, village=null, address=null, groupId=null, remark=null, groupName=null)\" response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@44900c10', '192.168.140.1', '2020-02-23 17:25:43', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1884', null, '验证WxUser', '201', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 17:30:03', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1885', null, '获取getPersonByPhone', '304', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000005\" rylx: \"2\"', '192.168.222.1', '2020-02-23 17:30:08', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1886', null, '获取updatePersonAssistInfo', '231', 'cc.mrbird.febs.wechat.controller.ApiController.updatePersonMedicineRemark()', ' phone: \"13701010119\" remark: \"null\"', '192.168.222.1', '2020-02-23 17:30:56', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1887', null, '验证WxUser', '70', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 17:32:09', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1888', null, '获取getPersonByPhone', '152', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000005\" rylx: \"2\"', '192.168.222.1', '2020-02-23 17:32:12', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1889', null, '获取updatePersonAssistInfo', '385', 'cc.mrbird.febs.wechat.controller.ApiController.updatePersonMedicineRemark()', ' phone: \"15000000001\" remark: \"12151515151515685\"', '192.168.222.1', '2020-02-23 17:32:26', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1890', null, '验证WxUser', '65', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 17:32:47', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1891', null, '获取getPersonByPhone', '165', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000005\" rylx: \"2\"', '192.168.222.1', '2020-02-23 17:33:05', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1892', null, '获取updatePersonAssistInfo', '162', 'cc.mrbird.febs.wechat.controller.ApiController.updatePersonMedicineRemark()', ' phone: \"15000000001\" remark: \"12151515151515685\"', '192.168.222.1', '2020-02-23 17:33:12', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1893', null, '验证WxUser', '91', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 17:33:47', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1894', null, '获取getPersonByPhone', '163', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000005\" rylx: \"2\"', '192.168.222.1', '2020-02-23 17:33:50', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1895', null, '获取updatePersonAssistInfo', '278', 'cc.mrbird.febs.wechat.controller.ApiController.updatePersonMedicineRemark()', ' phone: \"15000000001\" remark: \"12151515151515685\"', '192.168.222.1', '2020-02-23 17:34:03', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1896', null, '验证WxUser', '81', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 17:34:36', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1897', null, '获取getPersonByPhone', '168', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000005\" rylx: \"2\"', '192.168.222.1', '2020-02-23 17:34:39', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1898', null, '获取updatePersonAssistInfo', '148', 'cc.mrbird.febs.wechat.controller.ApiController.updatePersonMedicineRemark()', ' phone: \"15000000001\" remark: \"12151515151515685\"', '192.168.222.1', '2020-02-23 17:35:03', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1899', null, '获取WxUserr', '180', 'cc.mrbird.febs.wechat.controller.ApiController.getWUser()', ' telnum1: \"15000000009\"', '112.10.231.239', '2020-02-23 17:36:07', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1900', null, '获取WxUserr', '88', 'cc.mrbird.febs.wechat.controller.ApiController.getWUser()', ' telnum1: \"15000000009\"', '112.10.231.239', '2020-02-23 17:38:48', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1901', null, '获取WxUserr', '231', 'cc.mrbird.febs.wechat.controller.ApiController.getWUser()', ' telnum1: \"15000000009\"', '112.10.231.239', '2020-02-23 17:40:19', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1902', null, '获取WxUserr', '11', 'cc.mrbird.febs.wechat.controller.ApiController.getWUser()', ' telnum1: \"15000000009\"', '112.10.231.239', '2020-02-23 17:40:59', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1903', null, '验证WxUser', '74', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 17:41:38', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1904', null, '获取getPersonByPhone', '174', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000005\" rylx: \"2\"', '192.168.222.1', '2020-02-23 17:41:43', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1905', null, '获取WxUserr', '10', 'cc.mrbird.febs.wechat.controller.ApiController.getWUser()', ' telnum1: \"15000000009\"', '112.10.231.239', '2020-02-23 17:41:44', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1906', null, '获取updatePersonAssistInfo', '151', 'cc.mrbird.febs.wechat.controller.ApiController.updatePersonMedicineRemark()', ' phone: \"15000000001\" remark: \"12151515151515685\"', '192.168.222.1', '2020-02-23 17:42:00', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1907', null, '验证WxUser', '71', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 17:44:15', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1908', null, '获取getPersonByPhone', '161', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000005\" rylx: \"2\"', '192.168.222.1', '2020-02-23 17:44:18', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1909', null, '获取updatePersonAssistInfo', '145', 'cc.mrbird.febs.wechat.controller.ApiController.updatePersonMedicineRemark()', ' phone: \"15000000001\" remark: \"12151515151515685\"', '192.168.222.1', '2020-02-23 17:44:26', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1910', null, '获取getPersonByPhone', '132', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000005\" rylx: \"2\"', '192.168.222.1', '2020-02-23 17:44:26', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1911', null, '验证WxUser', '71', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 17:45:41', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1912', null, '获取getPersonByPhone', '187', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000005\" rylx: \"2\"', '192.168.222.1', '2020-02-23 17:45:44', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1913', null, '获取updatePersonAssistInfo', '144', 'cc.mrbird.febs.wechat.controller.ApiController.updatePersonMedicineRemark()', ' phone: \"15000000001\" remark: \"12151515151515685\"', '192.168.222.1', '2020-02-23 17:45:50', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1914', null, '获取getPersonByPhone', '125', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000005\" rylx: \"2\"', '192.168.222.1', '2020-02-23 17:45:50', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1915', null, '获取getPersonFamily4Info', '142', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamily4Info()', ' phone: \"15000000009\"', '112.10.231.239', '2020-02-23 17:47:17', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1916', null, '验证WxUser', '67', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 17:47:19', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1917', null, '获取getPersonByPhone', '135', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000005\" rylx: \"2\"', '192.168.222.1', '2020-02-23 17:47:23', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1918', null, '获取updatePersonAssistInfo', '137', 'cc.mrbird.febs.wechat.controller.ApiController.updatePersonMedicineRemark()', ' phone: \"15000000001\" remark: \"12151515151515685\"', '192.168.222.1', '2020-02-23 17:47:31', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1919', null, '获取getPersonByPhone', '131', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000005\" rylx: \"2\"', '192.168.222.1', '2020-02-23 17:47:31', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1920', null, '获取updatePersonAssistInfo', '201', 'cc.mrbird.febs.wechat.controller.ApiController.updatePersonMedicineRemark()', ' phone: \"13701010103\" remark: \"null\"', '192.168.222.1', '2020-02-23 17:47:48', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1921', null, '获取getPersonByPhone', '131', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000005\" rylx: \"2\"', '192.168.222.1', '2020-02-23 17:47:48', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1922', null, '获取getPersonFamily4Info', '19', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamily4Info()', ' phone: \"13701010101\"', '112.10.231.239', '2020-02-23 17:49:14', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1923', null, '验证WxUser', '61', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 17:49:26', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1924', null, '获取getPersonByPhone', '159', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000005\" rylx: \"2\"', '192.168.222.1', '2020-02-23 17:49:29', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1925', null, '获取updatePersonAssistInfo', '138', 'cc.mrbird.febs.wechat.controller.ApiController.updatePersonMedicineRemark()', ' phone: \"13701010103\" remark: \"null\"', '192.168.222.1', '2020-02-23 17:49:45', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1926', null, '获取getPersonByPhone', '127', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000005\" rylx: \"2\"', '192.168.222.1', '2020-02-23 17:49:45', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1927', null, '验证WxUser', '59', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 17:51:16', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1928', null, '获取getPersonFamily4Info', '17', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamily4Info()', ' phone: \"13701010101\"', '112.10.231.239', '2020-02-23 17:51:17', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1929', null, '获取getPersonByPhone', '146', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000005\" rylx: \"2\"', '192.168.222.1', '2020-02-23 17:51:20', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1930', null, '获取getPersonByPhone', '151', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000005\" rylx: \"2\"', '192.168.222.1', '2020-02-23 17:51:36', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1931', null, '验证WxUser', '61', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 17:52:21', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1932', null, '获取getPersonByPhone', '147', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000005\" rylx: \"2\"', '192.168.222.1', '2020-02-23 17:52:25', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1933', null, '获取updatePersonAssistInfo', '145', 'cc.mrbird.febs.wechat.controller.ApiController.updatePersonMedicineRemark()', ' phone: \"13701010103\" remark: \"null\"', '192.168.222.1', '2020-02-23 17:52:38', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1934', null, '获取getPersonByPhone', '120', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000005\" rylx: \"2\"', '192.168.222.1', '2020-02-23 17:52:38', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1935', null, '验证WxUser', '71', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 17:53:22', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1936', null, '获取getPersonByPhone', '179', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000005\" rylx: \"2\"', '192.168.222.1', '2020-02-23 17:53:26', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1937', null, '获取updatePersonAssistInfo', '132', 'cc.mrbird.febs.wechat.controller.ApiController.updatePersonMedicineRemark()', ' phone: \"13701010103\" remark: \"null\"', '192.168.222.1', '2020-02-23 17:53:32', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1938', null, '获取getPersonByPhone', '148', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000005\" rylx: \"2\"', '192.168.222.1', '2020-02-23 17:53:32', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1939', null, '验证WxUser', '86', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 17:56:47', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1940', null, '获取getPersonByPhone', '154', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000005\" rylx: \"2\"', '192.168.222.1', '2020-02-23 17:56:58', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1941', null, '获取updatePersonAssistInfo', '185', 'cc.mrbird.febs.wechat.controller.ApiController.updatePersonMedicineRemark()', ' phone: \"15000000001\" remark: \"baozhuhuhu\"', '192.168.222.1', '2020-02-23 17:57:38', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1942', null, '获取getPersonByPhone', '105', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000005\" rylx: \"2\"', '192.168.222.1', '2020-02-23 17:57:38', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1943', null, '获取updatePersonAssistInfo', '208', 'cc.mrbird.febs.wechat.controller.ApiController.updatePersonMedicineRemark()', ' phone: \"13701010103\" remark: \"hhuhuhuhu\"', '192.168.222.1', '2020-02-23 17:57:56', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1944', null, '获取getPersonByPhone', '116', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000005\" rylx: \"2\"', '192.168.222.1', '2020-02-23 17:57:56', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1945', null, '获取getPersonFamily4Info', '12', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamily4Info()', ' phone: \"13701010101\"', '112.10.231.239', '2020-02-23 17:58:03', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1946', null, '获取getPersonFamily4Info', '11', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamily4Info()', ' phone: \"13701010101\"', '112.10.231.239', '2020-02-23 17:59:37', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1947', null, '验证WxUser', '86', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000009\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 18:00:36', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1948', null, '验证WxUser', '62', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000009\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 18:01:13', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1949', null, '获取getPersonByPhone', '157', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000009\" rylx: \"1\"', '192.168.222.1', '2020-02-23 18:01:16', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1950', null, '获取getPersonFamily4Info', '12', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamily4Info()', ' phone: \"13701010101\"', '112.10.231.239', '2020-02-23 18:01:16', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1951', null, '验证WxUser', '61', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 18:01:40', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1952', null, '获取getPersonFamily4Info', '11', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamily4Info()', ' phone: \"13701010101\"', '112.10.231.239', '2020-02-23 18:02:13', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1953', null, '获取getPersonFamily4Info', '22', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamily4Info()', ' phone: \"13701010101\"', '112.10.231.239', '2020-02-23 18:07:33', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1954', null, '获取getPersonFamily4Info', '11', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamily4Info()', ' phone: \"13701010101\"', '112.10.231.239', '2020-02-23 18:11:49', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1955', null, '获取getPersonFamily4Info', '10', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamily4Info()', ' phone: \"13701010101\"', '112.10.231.239', '2020-02-23 18:13:45', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1956', null, 'updatePersonUpdate', '8', 'cc.mrbird.febs.wechat.controller.ApiController.updatePersonUpdate()', ' phone: null passwd: null', '112.10.231.239', '2020-02-23 18:13:49', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1957', null, '修改GeneratorConfig', '94', 'cc.mrbird.febs.generator.controller.GeneratorConfigController.updateGeneratorConfig()', ' generatorConfig: GeneratorConfig(id=1, author=tongrok, basePackage=cc.mrbird.febs.explain, entityPackage=entity, mapperPackage=mapper, mapperXmlPackage=mapper, servicePackage=service, serviceImplPackage=service.impl, controllerPackage=controller, isTrim=1, trimValue=t_, javaPath=/src/main/java/, resourcesPath=src/main/resources, date=2020-02-23 18:17:16, tableName=null, tableComment=null, className=null)', '127.0.0.1', '2020-02-23 18:17:17', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1958', null, '获取getPersonFamily4Info', '10', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamily4Info()', ' phone: \"13701010101\"', '112.10.231.239', '2020-02-23 18:17:42', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1959', null, 'updatePersonUpdate', '249', 'cc.mrbird.febs.wechat.controller.ApiController.updatePersonUpdate()', ' phone: \"13701010101\" passwd: \"12345678\"', '112.10.231.239', '2020-02-23 18:20:53', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1960', null, '获取getPersonFamily4Info', '19', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamily4Info()', ' phone: \"13701010101\"', '112.10.231.239', '2020-02-23 18:20:58', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1961', null, '验证WxUser', '25', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000008\" passwd: \"123456\"', '112.10.231.239', '2020-02-23 18:21:55', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1962', null, '验证WxUser', '16', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000008\" passwd: \"123456\"', '112.10.231.239', '2020-02-23 18:22:22', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1963', null, '获取getPersonAssistInfo', '89', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistInfo()', ' phone: \"15000000008\"', '112.10.231.239', '2020-02-23 18:22:39', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1964', null, '获取updatePersonAssistInfo', '205', 'cc.mrbird.febs.wechat.controller.ApiController.updatePersonAssistInfo()', ' phone: \"15000000008\" nname: \"帮四\" ssex: \"0\" political: \"党员\" passwd: \"12345678\" workunid: \"工作单位4\" duty: \"职务4\"', '112.10.231.239', '2020-02-23 18:22:51', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1965', null, '验证WxUser', '11', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000008\" passwd: \"12345678\"', '112.10.231.239', '2020-02-23 18:23:12', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1966', null, '获取getPersonAssistInfo', '13', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistInfo()', ' phone: \"15000000008\"', '112.10.231.239', '2020-02-23 18:23:19', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1967', null, '获取updatePersonAssistInfo', '99', 'cc.mrbird.febs.wechat.controller.ApiController.updatePersonAssistInfo()', ' phone: \"15000000008\" nname: \"帮四\" ssex: \"0\" political: \"党员\" passwd: \"123456\" workunid: \"工作单位4\" duty: \"职务4\"', '112.10.231.239', '2020-02-23 18:23:23', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1968', null, '新增Dict', '111', 'cc.mrbird.febs.system.controller.DictController.addDict()', ' dict: Dict(dictId=55, dictName=述求流程状态, keyy=0, valuee=组长分配, tableName=t_explain_assist, fieldName=astatus)', '127.0.0.1', '2020-02-23 18:28:19', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1969', null, '新增Dict', '81', 'cc.mrbird.febs.system.controller.DictController.addDict()', ' dict: Dict(dictId=56, dictName=述求流程状态, keyy=1, valuee=开始处理述求, tableName=t_explain_assist, fieldName=astatus)', '127.0.0.1', '2020-02-23 18:28:50', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1970', null, '新增Dict', '70', 'cc.mrbird.febs.system.controller.DictController.addDict()', ' dict: Dict(dictId=57, dictName=述求流程状态, keyy=2, valuee=向上转交述求, tableName=t_explain_assist, fieldName=astatus)', '127.0.0.1', '2020-02-23 18:29:08', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1971', null, '新增Dict', '110', 'cc.mrbird.febs.system.controller.DictController.addDict()', ' dict: Dict(dictId=58, dictName=述求状态, keyy=3, valuee=已处理, tableName=t_explain_assist, fieldName=astatus)', '127.0.0.1', '2020-02-23 18:29:38', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1972', null, '验证WxUser', '14', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000008\" passwd: \"123456\"', '112.10.231.239', '2020-02-23 18:29:40', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1973', null, '获取WxUserr', '10', 'cc.mrbird.febs.wechat.controller.ApiController.getWUser()', ' telnum1: \"15000000008\"', '112.10.231.239', '2020-02-23 18:29:43', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1974', null, '新增Dict', '86', 'cc.mrbird.febs.system.controller.DictController.addDict()', ' dict: Dict(dictId=59, dictName=述求状态, keyy=4, valuee=撤回, tableName=t_explain_assist, fieldName=astatus)', '127.0.0.1', '2020-02-23 18:29:53', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1975', null, '验证WxUser', '10', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000008\" passwd: \"123456\"', '112.10.231.239', '2020-02-23 18:30:41', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1976', null, '验证WxUser', '13', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000008\" passwd: \"123456\"', '112.10.231.239', '2020-02-23 18:31:38', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1977', null, '验证WxUser', '19', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000008\" passwd: \"123456\"', '112.10.231.239', '2020-02-23 18:33:36', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1978', null, '获取getPersonAssistInfo', '11', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistInfo()', ' phone: \"15000000008\"', '112.10.231.239', '2020-02-23 18:33:43', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1979', null, '获取getPersonAssistInfo', '12', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistInfo()', ' phone: \"15000000008\"', '112.10.231.239', '2020-02-23 18:33:51', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1980', null, '验证WxUser', '8', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000001\" passwd: \"123456\"', '112.10.231.239', '2020-02-23 18:34:30', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1981', null, '获取WxUserr', '6', 'cc.mrbird.febs.wechat.controller.ApiController.getWUser()', ' telnum1: \"15000000001\"', '112.10.231.239', '2020-02-23 18:34:34', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1982', null, '获取WxUserr', '7', 'cc.mrbird.febs.wechat.controller.ApiController.getWUser()', ' telnum1: \"15000000001\"', '112.10.231.239', '2020-02-23 18:34:57', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1983', null, '获取getPersonFamilyInfo', '16', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 18:35:01', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1984', null, '新增addPersonMedicineFamily', '97', 'cc.mrbird.febs.wechat.controller.ApiController.addPersonMedicineFamily()', ' personMedicineFamily: \"PersonMedicineFamily(userid=null, nname=测试4, age=12, relation=, address=古荡街道, unit=第一中学, phone=13909090909, ylrphone=15000000001)\"', '112.10.231.239', '2020-02-23 18:36:00', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1985', null, '获取getPersonFamilyInfo', '9', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 18:36:01', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1986', null, '验证WxUser', '6', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000001\" passwd: \"123456\"', '112.10.231.239', '2020-02-23 18:37:40', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1987', null, '获取getPersonFamilyInfo', '11', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 18:37:46', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1988', null, '验证WxUser', '10', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000001\" passwd: \"123456\"', '112.10.231.239', '2020-02-23 19:02:29', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1989', null, '获取PMByApi', '8', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonByApi()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 19:02:36', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1990', null, '验证WxUser', '182', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000001\" passwd: \"123456\"', '112.10.231.239', '2020-02-23 19:33:16', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1991', null, '获取PMByApi', '38', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonByApi()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 19:33:52', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1992', null, '验证WxUser', '67', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000001\" passwd: \"123456\"', '112.10.231.239', '2020-02-23 19:40:04', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1993', null, '获取PMByApi', '44', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonByApi()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 19:40:08', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1994', null, '验证WxUser', '7', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000001\" passwd: \"123456\"', '112.10.231.239', '2020-02-23 19:41:09', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1995', null, '获取PMByApi', '8', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonByApi()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 19:41:15', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1996', 'system', '删除Group', '238', 'cc.mrbird.febs.group.controller.GroupMedicineController.deleteGroup()', ' groupIds: \"37\"', '192.168.140.1', '2020-02-23 20:25:12', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1997', null, '验证WxUser', '101', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000001\" passwd: \"123456\"', '112.10.231.239', '2020-02-23 20:33:33', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1998', null, '获取PMByApi', '71', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonByApi()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 20:33:40', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('1999', null, '获取PMByApi', '367', 'cc.mrbird.febs.wechat.controller.ApiController.updatePersonMedicine4Api()', ' pm: \"PersonMedicine(personId=null, personName=null, age=32, sex=男, party=群众, unit=人民医院1, duty=组织医师1, szyld=null, accredited=null, phone=15000000001, professional=外科, category=null, county=null, town=null, village=null, address=, groupId=null, remark=null, groupName=null)\" passwd: \"123456\"', '112.10.231.239', '2020-02-23 20:35:25', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('2000', null, '获取PMByApi', '166', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonByApi()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 20:35:32', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('2001', null, '验证WxUser', '83', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000001\" passwd: \"123456\"', '112.10.231.239', '2020-02-23 20:45:02', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('2002', null, '验证WxUser', '174', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 20:51:56', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2003', null, '获取getPersonByApi', '172', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonByApi()', ' phone: \"15000000001\"', '192.168.222.1', '2020-02-23 20:52:00', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2004', null, '获取getPersonByApi', '75', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonByApi()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 20:57:42', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('2005', null, '验证WxUser', '10', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000001\" passwd: \"123456\"', '112.10.231.239', '2020-02-23 20:59:10', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('2006', null, '获取getPersonByApi', '19', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonByApi()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 20:59:14', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('2007', null, '验证WxUser', '33', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000001\" passwd: \"123456\"', '112.10.231.239', '2020-02-23 21:02:35', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('2008', null, '获取getPersonByApi', '47', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonByApi()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 21:02:38', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('2009', null, '验证WxUser', '13', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000001\" passwd: \"123456\"', '112.10.231.239', '2020-02-23 21:03:06', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('2010', null, '获取getPersonByApi', '15', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonByApi()', ' phone: \"15000000001\"', '112.10.231.239', '2020-02-23 21:03:10', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('2011', null, '验证WxUser', '48', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 21:06:38', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2012', null, '获取getPersonByApi', '82', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonByApi()', ' phone: \"15000000001\"', '192.168.222.1', '2020-02-23 21:06:41', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2013', null, '获取updatePersonMedicine4Api', '764', 'cc.mrbird.febs.wechat.controller.ApiController.updatePersonMedicine4Api()', ' pm: \"PersonMedicine(personId=null, personName=null, age=32, sex=男, party=群众, unit=人民医院1, duty=组织医师1, szyld=null, accredited=null, phone=15000000001, professional=外科, category=null, county=null, town=null, village=null, address=111111, groupId=null, remark=null, groupName=null)\" passwd: \"123456789\"', '192.168.222.1', '2020-02-23 21:07:48', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2014', null, '验证WxUser', '43', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 21:08:09', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2015', null, '验证WxUser', '42', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000001\" passwd: \"123456789\"', '192.168.222.1', '2020-02-23 21:08:17', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2016', null, '获取getPersonByApi', '76', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonByApi()', ' phone: \"15000000001\"', '192.168.222.1', '2020-02-23 21:08:24', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2017', null, '获取updatePersonMedicine4Api', '317', 'cc.mrbird.febs.wechat.controller.ApiController.updatePersonMedicine4Api()', ' pm: \"PersonMedicine(personId=null, personName=null, age=32, sex=男, party=群众, unit=人民医院1, duty=组织医师1, szyld=null, accredited=null, phone=15000000001, professional=外科, category=null, county=null, town=null, village=null, address=111111, groupId=null, remark=null, groupName=null)\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 21:08:35', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2018', null, '验证WxUser', '44', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 21:12:10', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2019', null, '获取getPersonFamilyInfo', '87', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '192.168.222.1', '2020-02-23 21:12:18', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2020', null, '新增deletePersonMedicineFamily', '221', 'cc.mrbird.febs.wechat.controller.ApiController.deletePersonMedicineFamily()', ' phone: \"13909090909\" ylrphone: \"15000000001\"', '192.168.222.1', '2020-02-23 21:14:47', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2021', null, '获取getPersonFamilyInfo', '62', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '192.168.222.1', '2020-02-23 21:14:47', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2022', null, '新增addPersonMedicineFamily', '227', 'cc.mrbird.febs.wechat.controller.ApiController.addPersonMedicineFamily()', ' personMedicineFamily: \"PersonMedicineFamily(userid=null, nname=测试4, age=25, relation=, address=111, unit=测试1, phone=15001010101, ylrphone=15000000001)\"', '192.168.222.1', '2020-02-23 21:16:01', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2023', null, '获取getPersonFamilyInfo', '52', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '192.168.222.1', '2020-02-23 21:16:02', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2024', null, '验证WxUser', '48', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15001010101\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 21:18:52', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2025', null, '获取getPersonFamily4Info', '72', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamily4Info()', ' phone: \"15001010101\"', '192.168.222.1', '2020-02-23 21:18:55', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2026', null, '获取getPersonFamily4Info', '69', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamily4Info()', ' phone: \"15001010101\"', '192.168.222.1', '2020-02-23 21:19:07', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2027', null, '验证WxUser', '31', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15001010101\" passwd: \"123456\"', '112.10.231.239', '2020-02-23 21:19:55', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('2028', null, '获取getPersonFamily4Info', '43', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamily4Info()', ' phone: \"15001010101\"', '112.10.231.239', '2020-02-23 21:19:59', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('2029', null, '验证WxUser', '48', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 21:22:01', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2030', null, '获取getPersonFamilyInfo', '72', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '192.168.222.1', '2020-02-23 21:22:10', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2031', null, '新增deletePersonMedicineFamily', '487', 'cc.mrbird.febs.wechat.controller.ApiController.deletePersonMedicineFamily()', ' phone: \"15001010101\" ylrphone: \"15000000001\"', '192.168.222.1', '2020-02-23 21:22:19', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2032', null, '获取getPersonFamilyInfo', '63', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '192.168.222.1', '2020-02-23 21:22:19', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2033', null, '验证WxUser', '43', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 21:25:14', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2034', null, '获取getPersonFamilyInfo', '75', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '192.168.222.1', '2020-02-23 21:25:28', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2035', null, '新增addPersonMedicineFamily', '330', 'cc.mrbird.febs.wechat.controller.ApiController.addPersonMedicineFamily()', ' personMedicineFamily: \"PersonMedicineFamily(userid=null, nname=童思宁, age=29, relation=父子, address=中泰, unit=浙大网新, phone=15001010102, ylrphone=15000000001)\"', '192.168.222.1', '2020-02-23 21:26:25', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2036', null, '获取getPersonFamilyInfo', '73', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '192.168.222.1', '2020-02-23 21:26:26', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2037', null, '验证WxUser', '42', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15001010102\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 21:27:09', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2038', null, '获取getPersonFamily4Info', '80', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamily4Info()', ' phone: \"15001010102\"', '192.168.222.1', '2020-02-23 21:27:14', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2039', null, 'updatePersonUpdate', '187', 'cc.mrbird.febs.wechat.controller.ApiController.updatePersonUpdate()', ' phone: \"15001010102\" passwd: \"123456789\"', '192.168.222.1', '2020-02-23 21:28:09', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2040', null, '验证WxUser', '41', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15001010102\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 21:28:26', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2041', null, '验证WxUser', '53', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15001010102\" passwd: \"123456789\"', '192.168.222.1', '2020-02-23 21:28:30', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2042', null, '获取getPersonFamily4Info', '69', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamily4Info()', ' phone: \"15001010102\"', '192.168.222.1', '2020-02-23 21:28:35', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2043', null, '验证WxUser', '72', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 21:29:10', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2044', null, '获取getPersonAssistInfo', '96', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistInfo()', ' phone: \"15000000005\"', '192.168.222.1', '2020-02-23 21:29:16', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2045', null, '验证WxUser', '68', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 21:31:33', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2046', null, '获取getPersonAssistInfo', '72', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistInfo()', ' phone: \"15000000005\"', '192.168.222.1', '2020-02-23 21:31:37', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2047', null, '获取updatePersonAssistInfo', '402', 'cc.mrbird.febs.wechat.controller.ApiController.updatePersonAssistInfo()', ' phone: \"15000000005\" nname: \"帮一一\" ssex: \"1\" political: \"预备党员\" passwd: \"123456789\" workunid: \"职务2\" duty: \"职务1\"', '192.168.222.1', '2020-02-23 21:32:10', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2048', null, '获取getPersonAssistInfo', '72', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistInfo()', ' phone: \"15000000005\"', '192.168.222.1', '2020-02-23 21:32:15', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2049', null, '验证WxUser', '48', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 21:34:32', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2050', null, '验证WxUser', '68', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456789\"', '192.168.222.1', '2020-02-23 21:34:35', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2051', null, '获取getPersonAssistInfo', '71', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistInfo()', ' phone: \"15000000005\"', '192.168.222.1', '2020-02-23 21:34:40', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2052', null, '获取updatePersonAssistInfo', '357', 'cc.mrbird.febs.wechat.controller.ApiController.updatePersonAssistInfo()', ' phone: \"15000000005\" nname: \"帮一一\" ssex: \"0\" political: \"预备党员\" passwd: \"123456789\" workunid: \"工作单位3\" duty: \"职务3\"', '192.168.222.1', '2020-02-23 21:34:53', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2053', null, '获取getPersonAssistInfo', '66', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistInfo()', ' phone: \"15000000005\"', '192.168.222.1', '2020-02-23 21:34:54', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2054', null, '获取updatePersonAssistInfo', '359', 'cc.mrbird.febs.wechat.controller.ApiController.updatePersonAssistInfo()', ' phone: \"15000000005\" nname: \"帮一一\" ssex: \"0\" political: \"预备党员\" passwd: \"123456\" workunid: \"工作单位3\" duty: \"职务3\"', '192.168.222.1', '2020-02-23 21:35:08', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2055', null, '获取getPersonAssistInfo', '73', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistInfo()', ' phone: \"15000000005\"', '192.168.222.1', '2020-02-23 21:35:09', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2056', null, '验证WxUser', '83', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000009\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 21:35:35', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2057', null, '获取getPersonAssistInfo', '66', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistInfo()', ' phone: \"15000000009\"', '192.168.222.1', '2020-02-23 21:35:41', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2058', null, '获取updatePersonAssistInfo', '367', 'cc.mrbird.febs.wechat.controller.ApiController.updatePersonAssistInfo()', ' phone: \"15000000009\" nname: \"帮五五\" ssex: \"1\" political: \"党员\" passwd: \"123456789\" workunid: \"工作单位6\" duty: \"职务6\"', '192.168.222.1', '2020-02-23 21:36:05', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2059', null, '获取getPersonAssistInfo', '70', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistInfo()', ' phone: \"15000000009\"', '192.168.222.1', '2020-02-23 21:36:07', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2060', null, '获取updatePersonAssistInfo', '356', 'cc.mrbird.febs.wechat.controller.ApiController.updatePersonAssistInfo()', ' phone: \"15000000009\" nname: \"帮五五\" ssex: \"0\" political: \"党员\" passwd: \"123456\" workunid: \"工作单位6\" duty: \"职务6\"', '192.168.222.1', '2020-02-23 21:36:20', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2061', null, '获取getPersonByPhone', '167', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000009\" rylx: \"1\"', '192.168.222.1', '2020-02-23 21:36:23', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2062', null, '获取updatePersonAssistInfo', '219', 'cc.mrbird.febs.wechat.controller.ApiController.updatePersonMedicineRemark()', ' phone: \"13701010105\" remark: \"5656565\"', '192.168.222.1', '2020-02-23 21:36:33', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2063', null, '获取getPersonByPhone', '124', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000009\" rylx: \"1\"', '192.168.222.1', '2020-02-23 21:36:34', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2064', null, '获取updatePersonAssistInfo', '330', 'cc.mrbird.febs.wechat.controller.ApiController.updatePersonMedicineRemark()', ' phone: \"13701010104\" remark: \"565699898\"', '192.168.222.1', '2020-02-23 21:36:54', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2065', null, '获取getPersonByPhone', '133', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000009\" rylx: \"1\"', '192.168.222.1', '2020-02-23 21:36:55', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2066', null, '获取getPersonByPhone', '113', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000009\" rylx: \"1\"', '192.168.222.1', '2020-02-23 21:37:33', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2067', null, '获取getPersonByPhone', '145', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000009\" rylx: \"1\"', '192.168.222.1', '2020-02-23 21:37:35', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2068', null, '获取getPersonByPhone', '140', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000009\" rylx: \"1\"', '192.168.222.1', '2020-02-23 21:37:37', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2069', null, '验证WxUser', '41', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15001010102\" passwd: \"123456\"', '192.168.222.1', '2020-02-23 21:38:14', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2070', null, '验证WxUser', '51', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15001010102\" passwd: \"123456789\"', '192.168.222.1', '2020-02-23 21:38:18', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2071', null, '获取getPersonByPhone', '88', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000001\" rylx: \"0\"', '192.168.222.1', '2020-02-23 21:39:09', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2072', null, '验证WxUser', '57', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000001\" passwd: \"123456\"', '112.10.231.239', '2020-02-23 23:40:47', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('2073', null, '获取updatePersonAssistInfo', '276', 'cc.mrbird.febs.wechat.controller.ApiController.updatePersonMedicineRemark()', ' phone: \"15000000001\" remark: \"我填报了\"', '112.10.231.239', '2020-02-23 23:41:06', '中国|华东|浙江省|杭州市|移动');
INSERT INTO `t_log` VALUES ('2074', 'system', '修改Group', '120', 'cc.mrbird.febs.group.controller.GroupMedicineController.updateGroup()', ' groupMedicine: \"GroupMedicine(groupId=36, groupName=一组, groupMembers=, groupRemark=, groupMemberCount=null, groupMemberName=null, groupMemberIds=null)\"', '127.0.0.1', '2020-02-24 03:14:25', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2075', 'system', '修改Group', '157', 'cc.mrbird.febs.group.controller.GroupMedicineController.updateGroup()', ' groupMedicine: \"GroupMedicine(groupId=36, groupName=一组, groupMembers=20,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,137,191,192,193,194,195, groupRemark=, groupMemberCount=null, groupMemberName=null, groupMemberIds=[20, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 137, 191, 192, 193, 194, 195])\"', '127.0.0.1', '2020-02-24 03:14:39', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2076', null, '验证WxUser', '231', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000006\" passwd: \"123456\"', '192.168.222.1', '2020-02-24 09:03:10', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2077', null, '获取getPersonByPhone', '332', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000006\" rylx: \"3\"', '192.168.222.1', '2020-02-24 09:03:14', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2078', null, '验证WxUser', '188', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000006\" passwd: \"123456\"', '192.168.222.1', '2020-02-24 09:05:04', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2079', null, '获取getPersonByPhone', '291', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000006\" rylx: \"3\"', '192.168.222.1', '2020-02-24 09:05:09', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2080', null, '验证WxUser', '250', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000006\" passwd: \"123456\"', '192.168.222.1', '2020-02-24 09:09:43', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2081', null, '验证WxUser', '191', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000006\" passwd: \"123456\"', '192.168.222.1', '2020-02-24 09:14:38', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2082', null, '验证WxUser', '194', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000006\" passwd: \"123456\"', '192.168.222.1', '2020-02-24 09:16:23', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2083', null, '获取getPersonByPhone', '391', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000006\" rylx: \"3\"', '192.168.222.1', '2020-02-24 09:16:29', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2084', null, '获取updatePersonAssistInfo', '237', 'cc.mrbird.febs.wechat.controller.ApiController.updatePersonMedicineRemark()', ' phone: \"13701010106\" remark: \"55555555555555\"', '192.168.222.1', '2020-02-24 09:17:48', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2085', null, '获取getPersonByPhone', '202', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000006\" rylx: \"3\"', '192.168.222.1', '2020-02-24 09:17:48', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2086', null, '验证WxUser', '101', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-24 14:07:37', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2087', null, '验证WxUser', '42', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-24 14:09:25', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2088', null, '验证WxUser', '58', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-24 14:10:42', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2089', null, '验证WxUser', '41', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-24 14:12:01', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2090', null, '验证WxUser', '44', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-24 14:12:51', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2091', null, '验证WxUser', '47', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-24 14:13:20', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2092', null, '验证WxUser', '155', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-24 14:20:03', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2093', null, '新增ExplainByApi', '654', 'cc.mrbird.febs.wechat.controller.ApiController.addExplainByApi()', ' explain: \"Explain(eid=c3455bfcb102e21caa0fa01a560a2895, etype=1, einfo=测试0224, sqrname=杨杰, sqrphone=15000000101, tel=15000000001, sqradress=null, province=null, city=null, district=null, town=null, openid=, sfsw=null, estatus=0, astatus=null, cxly=null, myd=null, fkmx=null, createdate=2020-02-24 14:20:27, wcl=null, clz=null, ycl=null, createTimeFrom=null, createTimeTo=null, mgroup=null, agroup=null, ateam=null, leadappraise=null, reason=null, aid=null, paid=null, ypj=null, aidname=null, aidphone=null)\"', '192.168.222.1', '2020-02-24 14:20:27', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2094', 'system', '修改菜单/按钮', '251', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=204, parentId=0, menuName=诉求信息, url=/explain/explain, perms=explain:view, icon=layui-icon-edit-square, type=0, orderNum=4, createTime=null, modifyTime=Mon Feb 24 14:23:02 CST 2020)\"', '192.168.1.4', '2020-02-24 14:23:02', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2095', 'system', '修改菜单/按钮', '144', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=205, parentId=0, menuName=诉求分析, url=, perms=, icon=layui-icon-barchart, type=0, orderNum=5, createTime=null, modifyTime=Mon Feb 24 14:23:10 CST 2020)\"', '192.168.1.4', '2020-02-24 14:23:10', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2096', null, '验证WxUser', '181', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-24 14:53:40', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2097', null, '验证WxUser', '200', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-24 15:00:05', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2098', null, '验证WxUser', '50', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-24 15:00:53', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2099', null, '验证WxUser', '49', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-24 15:30:18', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2100', null, '获取getPersonByPhone', '219', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000001\" rylx: \"0\"', '192.168.222.1', '2020-02-24 15:31:11', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2101', null, '验证WxUser', '78', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-24 15:31:39', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2102', null, '验证WxUser', '85', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-24 15:35:01', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2103', null, '获取getPersonByPhone', '193', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000005\" rylx: \"2\"', '192.168.222.1', '2020-02-24 15:35:57', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2104', null, '验证WxUser', '65', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-24 16:04:21', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2105', null, '获取getPersonByPhone', '162', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000005\" rylx: \"2\"', '192.168.222.1', '2020-02-24 16:04:26', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2106', null, '验证WxUser', '224', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-24 16:11:40', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2107', null, '获取getPersonByPhone', '324', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000005\" rylx: \"2\"', '192.168.222.1', '2020-02-24 16:12:09', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2108', null, '验证WxUser', '210', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-24 16:19:01', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2109', null, '新增ExplainByApi', '743', 'cc.mrbird.febs.wechat.controller.ApiController.addExplainByApi()', ' explain: \"Explain(eid=c1875d49032a613ee03c5cf0f6ad96cc, etype=1, einfo=测试1, sqrname=童1, sqrphone=15000000101, tel=15000000001, sqradress=null, province=null, city=null, district=null, town=null, openid=, sfsw=null, estatus=0, astatus=null, cxly=null, myd=null, fkmx=null, createdate=2020-02-24 16:20:05, wcl=null, clz=null, ycl=null, createTimeFrom=null, createTimeTo=null, mgroup=null, agroup=null, ateam=null, leadappraise=null, reason=null, aid=null, paid=null, ypj=null, aidname=null, aidphone=null, groupName=null)\"', '192.168.222.1', '2020-02-24 16:20:05', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2110', null, '新增ExplainByApi', '169', 'cc.mrbird.febs.wechat.controller.ApiController.addExplainByApi()', ' explain: \"Explain(eid=e2383134c80561578fc32d0e01991ab8, etype=2, einfo=测试2, sqrname=童2, sqrphone=15000000102, tel=15000000001, sqradress=null, province=null, city=null, district=null, town=null, openid=, sfsw=null, estatus=0, astatus=null, cxly=null, myd=null, fkmx=null, createdate=2020-02-24 16:20:24, wcl=null, clz=null, ycl=null, createTimeFrom=null, createTimeTo=null, mgroup=null, agroup=null, ateam=null, leadappraise=null, reason=null, aid=null, paid=null, ypj=null, aidname=null, aidphone=null, groupName=null)\"', '192.168.222.1', '2020-02-24 16:20:24', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2111', null, '新增ExplainByApi', '165', 'cc.mrbird.febs.wechat.controller.ApiController.addExplainByApi()', ' explain: \"Explain(eid=bc3ee1c5a1d18f88cb6b89186acf8b79, etype=1, einfo=测试3, sqrname=童三, sqrphone=15000000104, tel=15000000001, sqradress=null, province=null, city=null, district=null, town=null, openid=, sfsw=null, estatus=0, astatus=null, cxly=null, myd=null, fkmx=null, createdate=2020-02-24 16:20:58, wcl=null, clz=null, ycl=null, createTimeFrom=null, createTimeTo=null, mgroup=null, agroup=null, ateam=null, leadappraise=null, reason=null, aid=null, paid=null, ypj=null, aidname=null, aidphone=null, groupName=null)\"', '192.168.222.1', '2020-02-24 16:20:58', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2112', null, '新增ExplainByApi', '166', 'cc.mrbird.febs.wechat.controller.ApiController.addExplainByApi()', ' explain: \"Explain(eid=d65916a846063feb15b9b3b79c7c2a85, etype=4, einfo=测试4, sqrname=童4, sqrphone=15000000103, tel=15000000001, sqradress=null, province=null, city=null, district=null, town=null, openid=, sfsw=null, estatus=0, astatus=null, cxly=null, myd=null, fkmx=null, createdate=2020-02-24 16:21:29, wcl=null, clz=null, ycl=null, createTimeFrom=null, createTimeTo=null, mgroup=null, agroup=null, ateam=null, leadappraise=null, reason=null, aid=null, paid=null, ypj=null, aidname=null, aidphone=null, groupName=null)\"', '192.168.222.1', '2020-02-24 16:21:29', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2113', null, '验证WxUser', '86', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000008\" passwd: \"123456\"', '192.168.222.1', '2020-02-24 16:21:54', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2114', null, '获取getPersonByPhone', '266', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000008\" rylx: \"1\"', '192.168.222.1', '2020-02-24 16:22:07', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2115', null, '验证WxUser', '65', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-24 16:23:54', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2116', null, '验证WxUser', '229', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-24 16:28:02', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2117', null, '验证WxUser', '218', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-24 16:33:21', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2118', 'system', '修改角色', '438', 'cc.mrbird.febs.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=1, roleName=系统管理员, remark=系统管理员，拥有所有操作权限 ^_^, createTime=null, modifyTime=Mon Feb 24 16:35:08 CST 2020, menuIds=199,215,216,217,218,219,202,220,221,222,223,224,203,206,225,226,227,207,228,229,230,232,233,234,204,205,1,3,11,12,13,160,161,4,14,15,16,162,5,17,18,19,163,6,20,21,22,164,209,210,211,212,213,2,8,23,10,24,170,136,171,172,127,128,129,131,175,101,102,103,104,105,106,107,108,173,109,110,174,137,138,165,139,166,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125,167,168,169)\"', '0:0:0:0:0:0:0:1', '2020-02-24 16:35:09', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2119', null, '验证WxUser', '228', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-24 16:41:09', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2120', null, '验证WxUser', '70', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000007\" passwd: \"123456\"', '192.168.222.1', '2020-02-24 16:44:23', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2121', null, '验证WxUser', '41', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-24 16:45:06', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2122', null, '验证WxUser', '73', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-24 16:46:12', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2123', null, '验证WxUser', '64', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000008\" passwd: \"123456\"', '192.168.222.1', '2020-02-24 16:47:06', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2124', 'system', '修改菜单/按钮', '179', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=205, parentId=0, menuName=诉求分析, url=explain/statistical, perms=, icon=layui-icon-barchart, type=0, orderNum=5, createTime=null, modifyTime=Mon Feb 24 17:06:29 CST 2020)\"', '192.168.1.4', '2020-02-24 17:06:29', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2125', 'system', '修改菜单/按钮', '153', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=205, parentId=0, menuName=诉求分析, url=explain/statistical, perms=explain:view, icon=layui-icon-barchart, type=0, orderNum=5, createTime=null, modifyTime=Mon Feb 24 17:07:13 CST 2020)\"', '192.168.1.4', '2020-02-24 17:07:13', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2126', 'system', '修改菜单/按钮', '193', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=205, parentId=0, menuName=诉求分析, url=/explain/statistical, perms=explain:view, icon=layui-icon-barchart, type=0, orderNum=5, createTime=null, modifyTime=Mon Feb 24 17:10:39 CST 2020)\"', '192.168.1.4', '2020-02-24 17:10:39', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2127', null, '验证WxUser', '149', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-24 18:21:27', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2128', null, '验证WxUser', '43', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-24 18:22:42', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2129', null, '新增ExplainByApi', '663', 'cc.mrbird.febs.wechat.controller.ApiController.addExplainByApi()', ' explain: \"Explain(eid=a391ec321c42c0b89c784a68f4b8e537, sqrname=童5, sqrphone=15000000105, tel=15000000001, etype=5, einfo=测试5, estatus=0, province=null, city=null, district=null, town=null, sqradress=null, myd=null, mgroup=null, agroup=null, ateam=null, openid=, sfsw=null, astatus=null, cxly=null, fkmx=null, createdate=2020-02-24 18:23:04, wcl=null, clz=null, ycl=null, createTimeFrom=null, createTimeTo=null, leadappraise=null, reason=null, aid=null, paid=null, ypj=null, aidname=null, aidphone=null, groupName=null)\"', '192.168.222.1', '2020-02-24 18:23:05', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2130', null, '验证WxUser', '75', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-24 18:23:27', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2131', null, '验证WxUser', '64', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-24 18:25:49', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2132', null, '验证WxUser', '72', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-24 18:29:20', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2133', null, '验证WxUser', '76', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-24 18:32:53', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2134', null, '验证WxUser', '306', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-24 18:41:10', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2135', null, '验证WxUser', '70', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-24 18:50:08', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2136', null, '验证WxUser', '75', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-24 18:53:00', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2137', null, '验证WxUser', '77', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-24 18:54:53', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2138', null, '验证WxUser', '64', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-24 18:56:14', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2139', null, '验证WxUser', '75', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-24 18:58:29', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2140', null, '验证WxUser', '76', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-24 19:06:49', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2141', null, '验证WxUser', '86', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-24 19:07:38', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2142', null, '新增ExplainByApi', '667', 'cc.mrbird.febs.wechat.controller.ApiController.addExplainByApi()', ' explain: \"Explain(eid=0bf9cd1f0ccc4ef0156a456e14c5c089, sqrname=医疗1, sqrphone=15000000001, tel=15000000001, etype=1, einfo=测试-负责人新增诉求, estatus=0, province=null, city=null, district=null, town=null, sqradress=null, myd=null, mgroup=null, agroup=null, ateam=null, openid=, sfsw=null, astatus=null, cxly=null, fkmx=null, createdate=2020-02-24 19:08:05, wcl=null, clz=null, ycl=null, createTimeFrom=null, createTimeTo=null, leadappraise=null, reason=null, aid=null, paid=null, ypj=null, aidname=null, aidphone=null, groupName=null)\"', '192.168.222.1', '2020-02-24 19:08:06', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2143', null, '验证WxUser', '42', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-24 19:09:19', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2144', null, '新增ExplainByApi', '175', 'cc.mrbird.febs.wechat.controller.ApiController.addExplainByApi()', ' explain: \"Explain(eid=41d79e1fafc856d538f7273eb1861deb, sqrname=童8, sqrphone=15000000109, tel=15000000001, etype=2, einfo=测试7-自己填写诶, estatus=0, province=null, city=null, district=null, town=null, sqradress=null, myd=null, mgroup=null, agroup=null, ateam=null, openid=, sfsw=null, astatus=null, cxly=null, fkmx=null, createdate=2020-02-24 19:09:52, wcl=null, clz=null, ycl=null, createTimeFrom=null, createTimeTo=null, leadappraise=null, reason=null, aid=null, paid=null, ypj=null, aidname=null, aidphone=null, groupName=null)\"', '192.168.222.1', '2020-02-24 19:09:52', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2145', null, '获取getPersonByPhone', '285', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000001\" rylx: \"0\"', '192.168.222.1', '2020-02-24 19:10:19', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2146', null, '验证WxUser', '87', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-24 19:25:00', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2147', null, '获取getPersonByPhone', '163', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000005\" rylx: \"2\"', '192.168.222.1', '2020-02-24 19:25:07', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2148', null, '获取getPersonAssistInfo', '75', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonAssistInfo()', ' phone: \"15000000005\"', '192.168.222.1', '2020-02-24 19:25:33', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2149', 'system', '修改Group', '158', 'cc.mrbird.febs.group.controller.GroupMedicineController.updateGroup()', ' groupMedicine: \"GroupMedicine(groupId=36, groupName=一组, groupMembers=20,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,134,135,137,191,192,193,194, groupRemark=, groupMemberCount=null, groupMemberName=null, groupMemberIds=[20, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 134, 135, 137, 191, 192, 193, 194])\"', '127.0.0.1', '2020-02-24 21:05:11', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2150', null, '验证WxUser', '609', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-24 21:26:51', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2151', null, '验证WxUser', '80', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-24 21:46:32', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2152', null, '验证WxUser', '71', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-24 21:50:18', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2153', null, '验证WxUser', '83', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-24 21:58:05', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2154', null, '新增ExplainByApi', '149', 'cc.mrbird.febs.wechat.controller.ApiController.addExplainByApi()', ' explain: \"Explain(eid=26d89e537924f08b854ddaf8952afd2d, sqrname=医疗1, sqrphone=15000000001, tel=15000000001, etype=1, einfo=测试8, estatus=0, province=null, city=null, district=null, town=null, sqradress=null, myd=null, mgroup=null, agroup=null, ateam=null, openid=, sfsw=null, astatus=null, cxly=null, fkmx=null, createdate=2020-02-24 21:58:17, wcl=null, clz=null, ycl=null, createTimeFrom=null, createTimeTo=null, leadappraise=null, reason=null, aid=null, paid=null, ypj=null, aidname=null, aidphone=null, groupName=null)\"', '192.168.222.1', '2020-02-24 21:58:17', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2155', null, '验证WxUser', '82', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-24 22:00:51', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2156', null, '验证WxUser', '351', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-25 10:15:50', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2157', 'system', '获取getPersonByPhone', '73', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"13575462453\" rylx: null', '0:0:0:0:0:0:0:1', '2020-02-25 10:30:07', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2158', 'system', '获取getPersonByPhone', '19260', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"13575462453\" rylx: null', '0:0:0:0:0:0:0:1', '2020-02-25 10:32:43', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2159', null, '验证WxUser', '92', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-25 11:30:37', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2160', null, '获取getPersonFamilyInfo', '266', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '192.168.222.1', '2020-02-25 11:30:43', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2161', null, '获取getPersonFamilyInfo', '85', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '192.168.222.1', '2020-02-25 11:31:00', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2162', null, '验证WxUser', '44', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-25 11:49:02', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2163', null, '获取getPersonFamilyInfo', '83', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '192.168.222.1', '2020-02-25 11:49:06', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2164', null, '验证WxUser', '44', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-25 11:50:13', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2165', null, '获取getPersonFamilyInfo', '66', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '192.168.222.1', '2020-02-25 11:50:16', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2166', null, '验证WxUser', '84', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-25 13:12:22', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2167', null, '获取getPersonFamilyInfo', '73', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '192.168.222.1', '2020-02-25 13:12:28', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2168', null, '验证WxUser', '63', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-25 13:14:29', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2169', null, '获取getPersonFamilyInfo', '91', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '192.168.222.1', '2020-02-25 13:14:35', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2170', null, '验证WxUser', '82', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-25 13:15:49', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2171', null, '获取getPersonFamilyInfo', '93', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '192.168.222.1', '2020-02-25 13:15:53', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2172', null, '验证WxUser', '54', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15001010102\" passwd: \"123456\"', '192.168.222.1', '2020-02-25 13:16:19', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2173', null, '验证WxUser', '69', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15001010102\" passwd: \"123456789\"', '192.168.222.1', '2020-02-25 13:16:25', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2174', null, '获取getPersonFamily4Info', '243', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamily4Info()', ' phone: \"15000000001\"', '192.168.222.1', '2020-02-25 13:16:29', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2175', null, '获取getPersonFamily4Info', '89', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamily4Info()', ' phone: \"15001010102\"', '192.168.222.1', '2020-02-25 13:19:19', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2176', null, '验证WxUser', '46', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15001010102\" passwd: \"123456\"', '192.168.222.1', '2020-02-25 13:21:12', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2177', null, '验证WxUser', '59', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15001010102\" passwd: \"123456789\"', '192.168.222.1', '2020-02-25 13:21:17', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2178', null, '获取getPersonFamily4Info', '83', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamily4Info()', ' phone: \"15001010102\"', '192.168.222.1', '2020-02-25 13:21:23', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2179', null, '新增ExplainByApi', '731', 'cc.mrbird.febs.wechat.controller.ApiController.addExplainByApi()', ' explain: \"Explain(eid=419d056460399f57b6d5e2b3d1f47d6c, sqrname=童思宁, sqrphone=15001010102, tel=15000000001, etype=1, einfo=家属提的诉求, estatus=0, province=null, city=null, district=null, town=null, sqradress=null, myd=null, mgroup=null, agroup=null, ateam=null, openid=, sfsw=null, astatus=null, cxly=null, fkmx=null, createdate=2020-02-25 13:21:47, wcl=null, clz=null, ycl=null, createTimeFrom=null, createTimeTo=null, leadappraise=null, reason=null, aid=null, paid=null, ypj=null, aidname=null, aidphone=null, groupName=null)\"', '192.168.222.1', '2020-02-25 13:21:48', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2180', null, '获取getPersonFamily4Info', '80', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamily4Info()', ' phone: \"15001010102\"', '192.168.222.1', '2020-02-25 13:23:07', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2181', null, '验证WxUser', '80', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-25 13:28:57', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2182', null, '获取getPersonFamilyInfo', '86', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '192.168.222.1', '2020-02-25 13:29:10', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2183', null, '获取getPersonFamilyInfo', '75', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"13701010104\"', '192.168.222.1', '2020-02-25 13:29:30', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2184', null, '获取getPersonFamilyInfo', '90', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '192.168.222.1', '2020-02-25 13:29:43', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2185', null, '验证WxUser', '46', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-02-25 13:34:08', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2186', null, '获取getPersonFamilyInfo', '130', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '192.168.222.1', '2020-02-25 13:34:13', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2187', null, '新增ExplainByApi', '208', 'cc.mrbird.febs.wechat.controller.ApiController.addExplainByApi()', ' explain: \"Explain(eid=593f89b13094b0cbadf063ab90a13035, sqrname=测试, sqrphone=13701010101, tel=15000000001, etype=1, einfo=医护人员替家属替诉求-测试, estatus=0, province=null, city=null, district=null, town=null, sqradress=null, myd=null, mgroup=null, agroup=null, ateam=null, openid=, sfsw=null, astatus=null, cxly=null, fkmx=null, createdate=2020-02-25 13:34:42, wcl=null, clz=null, ycl=null, createTimeFrom=null, createTimeTo=null, leadappraise=null, reason=null, aid=null, paid=null, ypj=null, aidname=null, aidphone=null, groupName=null)\"', '192.168.222.1', '2020-02-25 13:34:42', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2188', null, '验证WxUser', '309', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15001010102\" passwd: \"123456789\"', '192.168.222.1', '2020-02-25 13:35:05', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2189', null, '获取getPersonFamily4Info', '72', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamily4Info()', ' phone: \"15001010102\"', '192.168.222.1', '2020-02-25 13:35:15', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2190', null, '新增ExplainByApi', '270', 'cc.mrbird.febs.wechat.controller.ApiController.addExplainByApi()', ' explain: \"Explain(eid=7da3f73e571ec24e3c62fc5833e259d9, sqrname=童思宁, sqrphone=15001010102, tel=15000000001, etype=1, einfo=家属自己给自己提诉求, estatus=0, province=null, city=null, district=null, town=null, sqradress=null, myd=null, mgroup=null, agroup=null, ateam=null, openid=, sfsw=null, astatus=null, cxly=null, fkmx=null, createdate=2020-02-25 13:35:31, wcl=null, clz=null, ycl=null, createTimeFrom=null, createTimeTo=null, leadappraise=null, reason=null, aid=null, paid=null, ypj=null, aidname=null, aidphone=null, groupName=null)\"', '192.168.222.1', '2020-02-25 13:35:31', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2191', null, '验证WxUser', '77', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-25 13:35:55', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2192', null, '获取getPersonFamilyInfo', '78', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"13701010103\"', '192.168.222.1', '2020-02-25 13:36:06', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2193', null, '验证WxUser', '98', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-25 13:37:27', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2194', null, '获取getPersonFamilyInfo', '116', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"13701010103\"', '192.168.222.1', '2020-02-25 13:37:34', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2195', null, '验证WxUser', '71', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-25 13:40:05', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2196', null, '获取getPersonFamilyInfo', '91', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '192.168.222.1', '2020-02-25 13:40:28', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2197', null, '获取getPersonFamilyInfo', '84', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"13701010103\"', '192.168.222.1', '2020-02-25 13:40:31', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2198', null, '获取getPersonFamilyInfo', '69', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"13701010104\"', '192.168.222.1', '2020-02-25 13:40:34', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2199', null, '获取getPersonFamilyInfo', '80', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '192.168.222.1', '2020-02-25 13:40:42', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2200', null, '新增ExplainByApi', '224', 'cc.mrbird.febs.wechat.controller.ApiController.addExplainByApi()', ' explain: \"Explain(eid=50b3c2264afb2532a6ec83fdcea75f88, sqrname=测试, sqrphone=13701010101, tel=15000000001, etype=1, einfo=111111111, estatus=0, province=null, city=null, district=null, town=null, sqradress=null, myd=null, mgroup=null, agroup=null, ateam=null, openid=, sfsw=null, astatus=null, cxly=null, fkmx=null, createdate=2020-02-25 13:40:50, wcl=null, clz=null, ycl=null, createTimeFrom=null, createTimeTo=null, leadappraise=null, reason=null, aid=null, paid=null, ypj=null, aidname=null, aidphone=null, groupName=null)\"', '192.168.222.1', '2020-02-25 13:40:50', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2201', 'system', '修改菜单/按钮', '201', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=204, parentId=0, menuName=诉求管理, url=/explain/explain, perms=explain:view, icon=layui-icon-edit-square, type=0, orderNum=4, createTime=null, modifyTime=Tue Feb 25 14:52:51 CST 2020)\"', '192.168.222.1', '2020-02-25 14:52:52', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2202', 'system', '修改Group', '647', 'cc.mrbird.febs.group.controller.GroupAssistController.updateGroup()', ' groupAssist: \"GroupAssist(groupId=19, groupName=帮扶一组, groupRemark=, groupLeader=67, groupLeaderName=null, groupMedicine=36, groupMedicineName=null, groupMembers=7,73,72,69,70,71,87, groupMemberCount=null, groupMemberName=null, groupMemberIds=null)\"', '0:0:0:0:0:0:0:1', '2020-02-25 17:15:38', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2203', 'system', '新增Group', '133', 'cc.mrbird.febs.group.controller.GroupAssistController.addGroup()', ' groupAssist: \"GroupAssist(groupId=20, groupName=测试2, groupRemark=, groupLeader=3, groupLeaderName=null, groupMedicine=, groupMedicineName=null, groupMembers=4,5,6,7, groupMemberCount=null, groupMemberName=null, groupMemberIds=null)\"', '0:0:0:0:0:0:0:1', '2020-02-25 17:15:53', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2204', 'system', '新增Group', '381', 'cc.mrbird.febs.group.controller.GroupAssistController.addGroup()', ' groupAssist: \"GroupAssist(groupId=21, groupName=测试4, groupRemark=, groupLeader=6, groupLeaderName=null, groupMedicine=, groupMedicineName=null, groupMembers=70,72,71,79,77,78, groupMemberCount=null, groupMemberName=null, groupMemberIds=null)\"', '0:0:0:0:0:0:0:1', '2020-02-25 17:16:11', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2205', 'system', '修改菜单/按钮', '100', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=199, parentId=0, menuName=服务对象, url=/person/personMedicine, perms=pm:view, icon=layui-icon-user, type=0, orderNum=1, createTime=null, modifyTime=Tue Feb 25 17:32:38 CST 2020)\"', '0:0:0:0:0:0:0:1', '2020-02-25 17:32:38', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2206', 'system', '修改菜单/按钮', '112', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=206, parentId=203, menuName=服务对象管理, url=/group/groupMedicine, perms=gm:view, icon=, type=0, orderNum=1, createTime=null, modifyTime=Tue Feb 25 17:32:46 CST 2020)\"', '0:0:0:0:0:0:0:1', '2020-02-25 17:32:46', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2207', 'system', '修改Group', '159', 'cc.mrbird.febs.group.controller.GroupMedicineController.updateGroup()', ' groupMedicine: \"GroupMedicine(groupId=36, groupName=一组, groupMembers=124,125,126,127,128,129,130,131,132,134,135,137,191,192,193,194, groupRemark=, groupMemberCount=null, groupMemberName=null, groupMemberIds=[124, 125, 126, 127, 128, 129, 130, 131, 132, 134, 135, 137, 191, 192, 193, 194])\"', '0:0:0:0:0:0:0:1', '2020-02-25 17:41:46', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2208', 'system', '新增Group', '240', 'cc.mrbird.febs.group.controller.GroupMedicineController.addGroup()', ' groupMedicine: \"GroupMedicine(groupId=38, groupName=2组, groupMembers=20,118,119, groupRemark=, groupMemberCount=null, groupMemberName=null, groupMemberIds=[20, 118, 119])\"', '0:0:0:0:0:0:0:1', '2020-02-25 17:42:00', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2209', 'system', '修改Group', '105', 'cc.mrbird.febs.group.controller.GroupMedicineController.updateGroup()', ' groupMedicine: \"GroupMedicine(groupId=36, groupName=1组, groupMembers=124,125,126,127,128,129,130,131,132,134,135,137,191,192,193,194, groupRemark=, groupMemberCount=null, groupMemberName=null, groupMemberIds=[124, 125, 126, 127, 128, 129, 130, 131, 132, 134, 135, 137, 191, 192, 193, 194])\"', '0:0:0:0:0:0:0:1', '2020-02-25 17:42:05', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2210', 'system', '修改Group', '380', 'cc.mrbird.febs.group.controller.GroupAssistController.updateGroup()', ' groupAssist: \"GroupAssist(groupId=20, groupName=2组, groupRemark=, groupLeader=3, groupLeaderName=null, groupMedicine=, groupMedicineName=null, groupMembers=7,6,5,4, groupMemberCount=null, groupMemberName=null, groupMemberIds=null)\"', '0:0:0:0:0:0:0:1', '2020-02-25 17:42:15', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2211', 'system', '修改Group', '253', 'cc.mrbird.febs.group.controller.GroupAssistController.updateGroup()', ' groupAssist: \"GroupAssist(groupId=19, groupName=1组, groupRemark=, groupLeader=67, groupLeaderName=null, groupMedicine=36, groupMedicineName=null, groupMembers=7,87,71,70,69,72,73, groupMemberCount=null, groupMemberName=null, groupMemberIds=null)\"', '0:0:0:0:0:0:0:1', '2020-02-25 17:42:23', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2212', 'system', '修改Group', '242', 'cc.mrbird.febs.group.controller.GroupAssistController.updateGroup()', ' groupAssist: \"GroupAssist(groupId=21, groupName=3组, groupRemark=, groupLeader=6, groupLeaderName=null, groupMedicine=, groupMedicineName=null, groupMembers=78,77,79,71,72,70, groupMemberCount=null, groupMemberName=null, groupMemberIds=null)\"', '0:0:0:0:0:0:0:1', '2020-02-25 17:42:29', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2213', 'system', '删除用户', '274', 'cc.mrbird.febs.person.controller.PersonMedicineController.deleteUsers()', ' personIds: \"193\"', '192.168.140.1', '2020-02-26 11:19:00', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2214', 'system', '删除用户', '179', 'cc.mrbird.febs.person.controller.PersonMedicineController.deleteUsers()', ' personIds: \"225\"', '192.168.140.1', '2020-02-26 11:33:23', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2215', 'system', '删除用户', '157234', 'cc.mrbird.febs.person.controller.PersonMedicineController.deleteUsers()', ' personIds: \"192\"', '192.168.140.1', '2020-02-26 11:49:42', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2216', 'system', '删除用户', '49510', 'cc.mrbird.febs.person.controller.PersonMedicineController.deleteUsers()', ' personIds: \"137\"', '192.168.140.1', '2020-02-26 11:58:25', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2217', 'system', '删除用户', '10155', 'cc.mrbird.febs.person.controller.PersonMedicineController.deleteUsers()', ' personIds: \"223\"', '192.168.140.1', '2020-02-26 12:00:16', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2218', 'system', '删除用户', '205', 'cc.mrbird.febs.person.controller.PersonMedicineController.deleteUsers()', ' personIds: \"217,229,216\"', '192.168.140.1', '2020-02-26 12:00:36', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2219', 'system', '删除用户', '4708', 'cc.mrbird.febs.person.controller.PersonMedicineController.deleteUsers()', ' personIds: \"20\"', '192.168.140.1', '2020-02-26 12:00:47', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2220', 'system', '删除用户', '125', 'cc.mrbird.febs.person.controller.PersonMedicineController.deleteUsers()', ' personIds: \"132,131\"', '192.168.140.1', '2020-02-26 12:00:57', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2221', 'system', '删除用户', '233', 'cc.mrbird.febs.person.controller.PersonMedicineController.deleteUsers()', ' personIds: \"121\"', '192.168.140.1', '2020-02-26 13:08:37', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2222', 'system', '删除用户', '87', 'cc.mrbird.febs.person.controller.PersonMedicineController.deleteUsers()', ' personIds: \"195\"', '192.168.140.1', '2020-02-26 13:08:42', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2223', 'system', '删除用户', '72', 'cc.mrbird.febs.person.controller.PersonMedicineController.deleteUsers()', ' personIds: \"194\"', '192.168.140.1', '2020-02-26 13:08:46', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2224', 'system', '删除用户', '198', 'cc.mrbird.febs.person.controller.PersonMedicineController.deleteUsers()', ' personIds: \"133,123,122,120\"', '192.168.140.1', '2020-02-26 13:09:03', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2225', 'system', '删除pa', '191', 'cc.mrbird.febs.person.controller.PersonAssistController.deletePersonAssist()', ' userids: \"75\"', '0:0:0:0:0:0:0:1', '2020-02-26 13:21:24', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2226', 'system', '删除pa', '96', 'cc.mrbird.febs.person.controller.PersonAssistController.deletePersonAssist()', ' userids: \"86\"', '0:0:0:0:0:0:0:1', '2020-02-26 13:21:33', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2227', 'system', '修改Group', '891', 'cc.mrbird.febs.group.controller.GroupAssistController.updateGroup()', ' groupAssist: \"GroupAssist(groupId=20, groupName=2组, groupRemark=, groupLeader=3, groupLeaderName=null, groupMedicine=38, groupMedicineName=null, groupMembers=7,4,5,6, groupMemberCount=null, groupMemberName=null, groupMemberIds=null)\"', '192.168.222.1', '2020-02-26 14:16:19', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2228', null, '验证WxUser', '156', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-26 16:35:13', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2229', null, '验证WxUser', '224', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-26 17:15:45', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2230', 'system', '导出PM', '923', 'cc.mrbird.febs.person.controller.PersonMedicineController.export()', ' queryRequest: \"QueryRequest(pageSize=30, pageNum=1, field=null, order=null)\" person: \"PersonMedicine(personId=null, groupName=null, personName=null, sex=null, unit=null, duty=null, professional=null, age=null, party=null, category=null, szyld=null, county=null, town=null, village=null, address=null, phone=null, groupId=null, remark=null, accredited=null)\" response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@e66325b', '192.168.140.1', '2020-02-27 09:51:19', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2231', 'system', '导出PM', '1042', 'cc.mrbird.febs.person.controller.PersonMedicineController.export()', ' queryRequest: \"QueryRequest(pageSize=30, pageNum=1, field=null, order=null)\" person: \"PersonMedicine(personId=null, groupName=null, personName=null, sex=null, unit=null, duty=null, professional=null, age=null, party=null, category=null, szyld=null, county=null, town=null, village=null, address=null, phone=null, groupId=null, remark=null, accredited=null)\" response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@5d174d14', '192.168.140.1', '2020-02-27 11:43:09', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2232', null, '验证WxUser', '232', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-27 13:25:27', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2233', null, '验证WxUser', '126', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-27 14:01:18', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2234', null, '验证WxUser', '253', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-02-27 14:03:32', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2235', 'system', '获取updatePersonMedicine4Api', '95', 'cc.mrbird.febs.wechat.controller.ApiController.updatePersonMedicine4Api()', ' pm: \"PersonMedicine(personId=null, groupName=null, personName=null, sex=0, unit=null, duty=null, professional=null, age=null, party=null, category=null, szyld=null, county=null, town=null, village=null, address=null, phone=13701010103, groupId=null, remark=null, accredited=null)\" passwd: \"123456\"', '0:0:0:0:0:0:0:1', '2020-02-27 16:55:53', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2236', 'system', '修改pa', '96', 'cc.mrbird.febs.person.controller.PersonAssistController.updatePersonAssist()', ' personAssist: \"PersonAssist(userid=99999, nname=后台管理人员, ttype=志愿者, ssex=男, birth=1970.01, workunid=协调小组, duty=协调小组, political=群众, phone=99999999999, city=杭州, county=西湖区, town=西溪街道, village=111, address=11111, rrole=, groupId=null, groupName=null)\"', '0:0:0:0:0:0:0:1', '2020-02-27 19:49:31', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2237', 'system', '修改pa', '91', 'cc.mrbird.febs.person.controller.PersonAssistController.updatePersonAssist()', ' personAssist: \"PersonAssist(userid=87, nname=帮二十一, ttype=医疗机构中层, ssex=男, birth=50, workunid=工作单位21, duty=职务21, political=群众, phone=15000000025, city=, county=, town=, village=, address=111, rrole=1, groupId=null, groupName=null)\"', '0:0:0:0:0:0:0:1', '2020-02-27 19:49:55', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2238', 'system', '修改pa', '79', 'cc.mrbird.febs.person.controller.PersonAssistController.updatePersonAssist()', ' personAssist: \"PersonAssist(userid=5, nname=测试人员2, ttype=医疗机构中层, ssex=null, birth=, workunid=测试单位2, duty=测试职务2, political=, phone=13701020203, city=, county=, town=, village=, address=1, rrole=1, groupId=null, groupName=null)\"', '0:0:0:0:0:0:0:1', '2020-02-27 19:51:40', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2239', 'system', '修改pa', '67', 'cc.mrbird.febs.person.controller.PersonAssistController.updatePersonAssist()', ' personAssist: \"PersonAssist(userid=67, nname=帮一一, ttype=社区工作者, ssex=null, birth=41, workunid=工作单位3, duty=职务3, political=预备党员, phone=15000000005, city=, county=, town=, village=, address=1, rrole=2, groupId=null, groupName=null)\"', '0:0:0:0:0:0:0:1', '2020-02-27 19:51:53', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2240', 'system', '修改pa', '70', 'cc.mrbird.febs.person.controller.PersonAssistController.updatePersonAssist()', ' personAssist: \"PersonAssist(userid=67, nname=帮一一, ttype=社区工作者, ssex=男, birth=41, workunid=工作单位3, duty=职务3, political=预备党员, phone=15000000005, city=, county=, town=, village=, address=1, rrole=2, groupId=null, groupName=null)\"', '0:0:0:0:0:0:0:1', '2020-02-27 19:52:03', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2241', 'system', '删除pa', '262', 'cc.mrbird.febs.system.controller.DictController.deletePersonAssist()', ' dictids: \"1,2,3\"', '0:0:0:0:0:0:0:1', '2020-02-27 20:23:11', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2242', 'system', '修改pa', '87', 'cc.mrbird.febs.person.controller.PersonAssistController.updatePersonAssist()', ' personAssist: \"PersonAssist(userid=99999, nname=, ttype=志愿者, ssex=男, birth=1970.01, workunid=协调小组, duty=协调小组, political=群众, phone=99999999999, city=杭州, county=西湖区, town=西溪街道, village=111, address=11111, rrole=, groupId=null, groupName=null)\"', '0:0:0:0:0:0:0:1', '2020-02-27 20:31:55', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2243', 'system', '修改pa', '79', 'cc.mrbird.febs.person.controller.PersonAssistController.updatePersonAssist()', ' personAssist: \"PersonAssist(userid=99999, nname=后台管理人员, ttype=志愿者, ssex=男, birth=1970.01, workunid=协调小组, duty=协调小组, political=群众, phone=99999999999, city=杭州, county=西湖区, town=西溪街道, village=111, address=11111, rrole=, groupId=null, groupName=null)\"', '0:0:0:0:0:0:0:1', '2020-02-27 20:32:08', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2244', 'system', '修改pa', '87', 'cc.mrbird.febs.person.controller.PersonAssistController.updatePersonAssist()', ' personAssist: \"PersonAssist(userid=99999, nname=, ttype=志愿者, ssex=男, birth=1970.01, workunid=协调小组, duty=协调小组, political=群众, phone=99999999999, city=杭州, county=西湖区, town=西溪街道, village=111, address=11111, rrole=, groupId=null, groupName=null)\"', '0:0:0:0:0:0:0:1', '2020-02-27 21:57:50', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2245', 'system', '修改pa', '66', 'cc.mrbird.febs.person.controller.PersonAssistController.updatePersonAssist()', ' personAssist: \"PersonAssist(userid=99999, nname=后台管理人员, ttype=志愿者, ssex=男, birth=1970.01, workunid=协调小组, duty=协调小组, political=群众, phone=99999999999, city=杭州, county=西湖区, town=西溪街道, village=111, address=11111, rrole=, groupId=null, groupName=null)\"', '0:0:0:0:0:0:0:1', '2020-02-27 21:57:55', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2246', 'system', '导出pa', '99', 'cc.mrbird.febs.person.controller.PersonAssistController.export()', ' queryRequest: \"QueryRequest(pageSize=30, pageNum=1, field=null, order=null)\" personAssist: \"PersonAssist(userid=null, nname=null, ttype=null, ssex=null, birth=null, workunid=null, duty=null, political=null, phone=null, city=null, county=null, town=null, village=null, address=null, rrole=null, groupId=null, groupName=null)\" response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@28289782', '0:0:0:0:0:0:0:1', '2020-02-28 09:15:13', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2247', 'system', '修改PM', '356', 'cc.mrbird.febs.person.controller.PersonMedicineController.updatePerson()', ' person: \"PersonMedicine(personId=218, groupName=null, personName=丁青青, sex=女, unit=, duty=主管护师, professional=护理, age=32, party=中共党员, category=护士, szyld=省内, county=下城区, town=潮鸣街道, village=刀矛巷社区, address=杭州市下城区米兰公寓8幢3单元302, phone=15268182725, groupId=null, remark=null, accredited=null)\"', '127.0.0.1', '2020-02-28 17:15:20', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2248', 'system', '修改PM', '154', 'cc.mrbird.febs.person.controller.PersonMedicineController.updatePerson()', ' person: \"PersonMedicine(personId=215, groupName=null, personName=倪梦琪, sex=女, unit=, duty=无，主管护师, professional=护理, age=31, party=中共党员, category=护士, szyld=省内, county=下城区, town=潮鸣街道, village=艮山门社区, address=杭州市下城区羊千弄42-3-601, phone=13968171954, groupId=36, remark=null, accredited=null)\"', '127.0.0.1', '2020-02-28 17:48:52', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2249', 'system', '修改PM', '146', 'cc.mrbird.febs.person.controller.PersonMedicineController.updatePerson()', ' person: \"PersonMedicine(personId=218, groupName=null, personName=丁青青, sex=女, unit=, duty=主管护师, professional=护理, age=32, party=中共党员, category=护士, szyld=省内, county=下城区, town=潮鸣街道, village=刀矛巷社区, address=杭州市下城区米兰公寓8幢3单元302, phone=15268182725, groupId=36, remark=null, accredited=null)\"', '127.0.0.1', '2020-02-28 17:51:07', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2250', 'system', '修改PM', '256', 'cc.mrbird.febs.person.controller.PersonMedicineController.updatePerson()', ' person: \"PersonMedicine(personId=222, groupName=null, personName=高立超, sex=男, unit=浙江儿童医院, duty=主治医师, professional=感染病科医生, age=33, party=中共党员, category=, szyld=援鄂, county=滨江区, town=长河街道, village=中兴社区, address=杭州市滨江区中兴花园47-1-601, phone=15088619182, groupId=36, remark=null, accredited=null)\"', '127.0.0.1', '2020-02-28 17:51:13', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2251', 'system', '修改PM', '155', 'cc.mrbird.febs.person.controller.PersonMedicineController.updatePerson()', ' person: \"PersonMedicine(personId=218, groupName=null, personName=丁青青, sex=女, unit=, duty=主管护师, professional=护理, age=32, party=中共党员, category=护士, szyld=省内, county=下城区, town=潮鸣街道, village=刀矛巷社区, address=杭州市下城区米兰公寓8幢3单元302, phone=15268182725, groupId=38, remark=null, accredited=null)\"', '127.0.0.1', '2020-02-28 18:23:01', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2252', 'system', '修改PM', '418', 'cc.mrbird.febs.person.controller.PersonMedicineController.updatePerson()', ' person: \"PersonMedicine(personId=119, groupName=null, personName=医疗3, sex=男, unit=省人民医院, duty=组织医师3, professional=, age=32, party=群众, category=, szyld=省内, county=, town=, village=, address=, phone=13701010104, groupId=36, remark=null, accredited=null)\"', '127.0.0.1', '2020-02-28 18:23:14', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2253', 'system', '修改PM', '195', 'cc.mrbird.febs.person.controller.PersonMedicineController.updatePerson()', ' person: \"PersonMedicine(personId=218, groupName=null, personName=丁青青, sex=女, unit=, duty=主管护师, professional=护理, age=32, party=中共党员, category=护士, szyld=省内, county=下城区, town=潮鸣街道, village=刀矛巷社区, address=杭州市下城区米兰公寓8幢3单元302, phone=15268182725, groupId=null, remark=null, accredited=null)\"', '127.0.0.1', '2020-02-28 18:28:31', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2254', 'system', '修改PM', '37', 'cc.mrbird.febs.person.controller.PersonMedicineController.updatePerson()', ' person: \"PersonMedicine(personId=218, groupName=null, personName=丁青青, sex=女, unit=, duty=主管护师, professional=护理, age=32, party=中共党员, category=护士, szyld=省内, county=下城区, town=潮鸣街道, village=刀矛巷社区, address=杭州市下城区米兰公寓8幢3单元302, phone=15268182725, groupId=null, remark=null, accredited=null)\"', '127.0.0.1', '2020-02-28 18:29:14', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2255', 'system', '修改PM', '86', 'cc.mrbird.febs.person.controller.PersonMedicineController.updatePerson()', ' person: \"PersonMedicine(personId=218, groupName=null, personName=丁青青, sex=女, unit=, duty=主管护师, professional=护理, age=32, party=中共党员, category=护士, szyld=省内, county=下城区, town=潮鸣街道, village=刀矛巷社区, address=杭州市下城区米兰公寓8幢3单元302, phone=15268182725, groupId=null, remark=null, accredited=null)\"', '127.0.0.1', '2020-02-28 18:30:54', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2256', 'system', '修改PM', '159', 'cc.mrbird.febs.person.controller.PersonMedicineController.updatePerson()', ' person: \"PersonMedicine(personId=218, groupName=null, personName=丁青青, sex=女, unit=, duty=主管护师, professional=护理, age=32, party=中共党员, category=护士, szyld=省内, county=下城区, town=潮鸣街道, village=刀矛巷社区, address=杭州市下城区米兰公寓8幢3单元302, phone=15268182725, groupId=0, remark=null, accredited=null)\"', '127.0.0.1', '2020-02-28 18:34:44', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2257', 'system', '修改PM', '156', 'cc.mrbird.febs.person.controller.PersonMedicineController.updatePerson()', ' person: \"PersonMedicine(personId=222, groupName=null, personName=高立超, sex=男, unit=浙江儿童医院, duty=主治医师, professional=感染病科医生, age=33, party=中共党员, category=, szyld=援鄂, county=滨江区, town=长河街道, village=中兴社区, address=杭州市滨江区中兴花园47-1-601, phone=15088619182, groupId=0, remark=null, accredited=null)\"', '127.0.0.1', '2020-02-28 18:40:54', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2258', 'system', '修改PM', '183', 'cc.mrbird.febs.person.controller.PersonMedicineController.updatePerson()', ' person: \"PersonMedicine(personId=218, groupName=null, personName=丁青青, sex=女, unit=, duty=主管护师, professional=护理, age=32, party=中共党员, category=护士, szyld=省内, county=下城区, town=潮鸣街道, village=刀矛巷社区, address=杭州市下城区米兰公寓8幢3单元302, phone=15268182725, groupId=36, remark=null, accredited=null)\"', '127.0.0.1', '2020-02-28 18:45:12', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2259', 'system', '修改PM', '131', 'cc.mrbird.febs.person.controller.PersonMedicineController.updatePerson()', ' person: \"PersonMedicine(personId=218, groupName=null, personName=丁青青, sex=女, unit=, duty=主管护师, professional=护理, age=32, party=中共党员, category=护士, szyld=省内, county=下城区, town=潮鸣街道, village=刀矛巷社区, address=杭州市下城区米兰公寓8幢3单元302, phone=15268182725, groupId=0, remark=null, accredited=null)\"', '127.0.0.1', '2020-02-28 18:45:19', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2260', 'system', '修改PM', '106', 'cc.mrbird.febs.person.controller.PersonMedicineController.updatePerson()', ' person: \"PersonMedicine(personId=222, groupName=null, personName=高立超, sex=男, unit=浙江儿童医院, duty=主治医师, professional=感染病科医生, age=33, party=中共党员, category=, szyld=援鄂, county=滨江区, town=长河街道, village=中兴社区, address=杭州市滨江区中兴花园47-1-601, phone=15088619182, groupId=38, remark=null, accredited=null)\"', '127.0.0.1', '2020-02-28 18:45:26', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2261', 'system', '修改Group', '145', 'cc.mrbird.febs.group.controller.GroupMedicineController.updateGroup()', ' groupMedicine: \"GroupMedicine(groupId=36, groupName=1组, groupMembers=124,125,126,127,128,129,130,134,135, groupRemark=, groupMemberCount=null, groupMemberName=null, groupMemberIds=[124, 125, 126, 127, 128, 129, 130, 134, 135])\"', '127.0.0.1', '2020-02-28 18:45:38', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2262', 'system', '修改Group', '169', 'cc.mrbird.febs.group.controller.GroupMedicineController.updateGroup()', ' groupMedicine: \"GroupMedicine(groupId=36, groupName=1组, groupMembers=124,125,126,127,128,129,130,134, groupRemark=, groupMemberCount=null, groupMemberName=null, groupMemberIds=[124, 125, 126, 127, 128, 129, 130, 134])\"', '127.0.0.1', '2020-02-28 18:45:43', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2263', 'system', '修改PM', '75', 'cc.mrbird.febs.person.controller.PersonMedicineController.updatePerson()', ' person: \"PersonMedicine(personId=124, groupName=null, personName=医疗8, sex=男, unit=省人民医院, duty=组织医师8, professional=, age=32, party=群众, category=, szyld=省内, county=, town=, village=, address=, phone=15000000001, groupId=38, remark=null, accredited=null)\"', '127.0.0.1', '2020-02-28 18:45:51', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2264', 'system', '删除用户', '288', 'cc.mrbird.febs.person.controller.PersonMedicineController.deleteUsers()', ' personIds: \"224\"', '127.0.0.1', '2020-02-28 18:53:04', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2265', 'system', '删除用户', '99', 'cc.mrbird.febs.person.controller.PersonMedicineController.deleteUsers()', ' personIds: \"227\"', '127.0.0.1', '2020-02-28 18:53:06', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2266', 'system', '删除用户', '112', 'cc.mrbird.febs.person.controller.PersonMedicineController.deleteUsers()', ' personIds: \"226\"', '127.0.0.1', '2020-02-28 18:53:09', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2267', 'system', '删除用户', '63', 'cc.mrbird.febs.person.controller.PersonMedicineController.deleteUsers()', ' personIds: \"218\"', '127.0.0.1', '2020-02-28 18:53:13', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2268', 'system', '删除用户', '92', 'cc.mrbird.febs.person.controller.PersonMedicineController.deleteUsers()', ' personIds: \"222\"', '127.0.0.1', '2020-02-28 18:53:16', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2269', 'system', '删除用户', '113', 'cc.mrbird.febs.person.controller.PersonMedicineController.deleteUsers()', ' personIds: \"215\"', '127.0.0.1', '2020-02-28 18:53:20', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2270', 'system', '删除用户', '111', 'cc.mrbird.febs.person.controller.PersonMedicineController.deleteUsers()', ' personIds: \"228,219,221\"', '127.0.0.1', '2020-02-28 18:53:28', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2271', 'system', '删除用户', '101', 'cc.mrbird.febs.person.controller.PersonMedicineController.deleteUsers()', ' personIds: \"220\"', '127.0.0.1', '2020-02-28 18:53:34', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2272', 'system', '修改PM', '133', 'cc.mrbird.febs.person.controller.PersonMedicineController.updatePerson()', ' person: \"PersonMedicine(personId=119, groupName=null, personName=医疗3, sex=男, unit=省人民医院, duty=组织医师3, professional=, age=32, party=群众, category=, szyld=省内, county=, town=, village=, address=, phone=13701010104, groupId=38, remark=null, accredited=null)\"', '127.0.0.1', '2020-02-28 18:54:27', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2273', 'system', '修改PM', '126', 'cc.mrbird.febs.person.controller.PersonMedicineController.updatePerson()', ' person: \"PersonMedicine(personId=135, groupName=null, personName=医疗19, sex=男, unit=省人民医院, duty=组织医师19, professional=, age=32, party=群众, category=, szyld=省内, county=, town=, village=, address=, phone=13701010120, groupId=38, remark=null, accredited=null)\"', '127.0.0.1', '2020-02-28 18:54:33', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2274', 'system', '删除用户', '117', 'cc.mrbird.febs.person.controller.PersonMedicineController.addPersonFms()', ' phone: \"15000000001\"', '127.0.0.1', '2020-02-28 20:28:56', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2275', 'system', '删除用户', '350', 'cc.mrbird.febs.person.controller.PersonMedicineController.addPersonFms()', null, '127.0.0.1', '2020-02-28 20:30:20', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2276', 'system', '删除家属信息', '77', 'cc.mrbird.febs.person.controller.PersonMedicineController.deletePersonFms()', ' userIds: \"208\"', '127.0.0.1', '2020-02-28 20:40:02', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2277', 'system', '删除家属信息', '145', 'cc.mrbird.febs.person.controller.PersonMedicineController.deletePersonFms()', ' userIds: \"208\"', '127.0.0.1', '2020-02-28 20:44:42', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2278', 'system', '删除家属信息', '155', 'cc.mrbird.febs.person.controller.PersonMedicineController.deletePersonFms()', ' userIds: \"209\"', '127.0.0.1', '2020-02-28 20:44:52', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2279', 'system', '修改用户', '324', 'cc.mrbird.febs.system.controller.UserController.updateUser()', ' user: \"User(userId=9, username=null, password=null, deptId=null, email=, mobile=, status=1, createTime=null, modifyTime=Mon Mar 02 10:30:18 CST 2020, lastLoginTime=null, sex=2, avatar=null, theme=null, isTab=null, description=, deptName=null, createTimeFrom=null, createTimeTo=null, roleId=81, roleName=null)\"', '192.168.10.205', '2020-03-02 10:30:18', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2280', 'system', '新增用户', '528', 'cc.mrbird.febs.system.controller.UserController.addUser()', ' user: \"User(userId=11, username=test2, password=3134be371e3e0cec5c4adc5a6cd8531e, deptId=null, email=, mobile=, status=1, createTime=Mon Mar 02 10:30:52 CST 2020, modifyTime=null, lastLoginTime=null, sex=2, avatar=default.jpg, theme=black, isTab=0, description=, deptName=null, createTimeFrom=null, createTimeTo=null, roleId=81, roleName=null)\"', '192.168.10.205', '2020-03-02 10:30:52', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2281', 'system', '修改菜单/按钮', '156', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=204, parentId=0, menuName=诉求管理, url=/explain/explain, perms=, icon=layui-icon-edit-square, type=0, orderNum=4, createTime=null, modifyTime=Thu Mar 05 20:45:23 CST 2020)\"', '192.168.140.1', '2020-03-05 20:45:23', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2282', 'system', '新增菜单/按钮', '107', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=235, parentId=204, menuName=查看, url=null, perms=explain:view, icon=null, type=1, orderNum=null, createTime=Thu Mar 05 20:45:32 CST 2020, modifyTime=null)\"', '192.168.140.1', '2020-03-05 20:45:32', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2283', 'system', '新增菜单/按钮', '115', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=236, parentId=204, menuName=新增, url=null, perms=explain:add, icon=null, type=1, orderNum=null, createTime=Thu Mar 05 20:45:43 CST 2020, modifyTime=null)\"', '192.168.140.1', '2020-03-05 20:45:43', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2284', 'system', '新增菜单/按钮', '121', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=237, parentId=204, menuName=修改, url=null, perms=explain:update, icon=null, type=1, orderNum=null, createTime=Thu Mar 05 20:45:59 CST 2020, modifyTime=null)\"', '192.168.140.1', '2020-03-05 20:45:59', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2285', 'system', '新增菜单/按钮', '112', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=238, parentId=204, menuName=导出, url=null, perms=explain:export, icon=null, type=1, orderNum=null, createTime=Thu Mar 05 20:46:10 CST 2020, modifyTime=null)\"', '192.168.140.1', '2020-03-05 20:46:10', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2286', 'system', '修改菜单/按钮', '129', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=206, parentId=203, menuName=服务对象管理, url=/group/groupMedicine, perms=, icon=, type=0, orderNum=1, createTime=null, modifyTime=Thu Mar 05 20:46:43 CST 2020)\"', '192.168.140.1', '2020-03-05 20:46:43', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2287', 'system', '新增菜单/按钮', '110', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=239, parentId=206, menuName=查看, url=null, perms=gm:view, icon=null, type=1, orderNum=null, createTime=Thu Mar 05 20:46:54 CST 2020, modifyTime=null)\"', '192.168.140.1', '2020-03-05 20:46:55', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2288', 'system', '修改菜单/按钮', '118', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=207, parentId=203, menuName=帮扶小组管理, url=/group/groupAssist, perms=, icon=, type=0, orderNum=2, createTime=null, modifyTime=Thu Mar 05 20:47:01 CST 2020)\"', '192.168.140.1', '2020-03-05 20:47:01', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2289', 'system', '新增菜单/按钮', '91', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=240, parentId=207, menuName=查看, url=null, perms=ga:view, icon=null, type=1, orderNum=null, createTime=Thu Mar 05 20:47:09 CST 2020, modifyTime=null)\"', '192.168.140.1', '2020-03-05 20:47:09', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2290', 'system', '修改角色', '1183', 'cc.mrbird.febs.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=1, roleName=系统管理员, remark=系统管理员，拥有所有操作权限 ^_^, createTime=null, modifyTime=Thu Mar 05 20:47:26 CST 2020, menuIds=199,215,216,217,218,219,202,220,221,222,223,224,203,206,225,226,227,207,228,229,230,240,232,233,234,204,205,1,3,11,12,13,160,161,4,14,15,16,162,5,17,18,19,163,6,20,21,22,164,209,210,211,212,213,2,8,23,10,24,170,136,171,172,127,128,129,131,175,101,102,103,104,105,106,107,108,173,109,110,174,137,138,165,139,166,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125,167,168,169)\"', '192.168.140.1', '2020-03-05 20:47:28', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2291', 'system', '修改角色', '1123', 'cc.mrbird.febs.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=1, roleName=系统管理员, remark=系统管理员，拥有所有操作权限 ^_^, createTime=null, modifyTime=Thu Mar 05 20:47:43 CST 2020, menuIds=199,215,216,217,218,219,202,220,221,222,223,224,203,206,225,226,227,239,207,228,229,230,240,232,233,234,204,235,236,237,238,205,1,3,11,12,13,160,161,4,14,15,16,162,5,17,18,19,163,6,20,21,22,164,209,210,211,212,213,2,8,23,10,24,170,136,171,172,127,128,129,131,175,101,102,103,104,105,106,107,108,173,109,110,174,137,138,165,139,166,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125,167,168,169)\"', '192.168.140.1', '2020-03-05 20:47:44', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2292', null, '验证WxUser', '70', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"13701010101\" passwd: \"123456\"', '192.168.222.1', '2020-03-12 18:34:51', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2293', null, '验证WxUser', '37', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"13701010101\" passwd: \"123456789\"', '192.168.222.1', '2020-03-12 18:34:55', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2294', null, '验证WxUser', '102', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"13701010101\" passwd: \"123456789\"', '192.168.222.1', '2020-03-12 18:35:02', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2295', null, '验证WxUser', '40', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"13701010101\" passwd: \"123456789\"', '192.168.222.1', '2020-03-12 18:35:34', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2296', null, '验证WxUser', '271', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"13701010101\" passwd: \"123456789\"', '192.168.222.1', '2020-03-12 18:35:42', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2297', null, '验证WxUser', '31', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-03-12 18:35:55', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2298', null, '获取getPersonFamilyInfo', '77', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '192.168.222.1', '2020-03-12 18:36:00', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2299', null, '新增ExplainByApi', '734', 'cc.mrbird.febs.wechat.controller.ApiController.addExplainByApi()', ' explain: \"Explain(mgroup=null, xh=null, agroup=null, yhname=null, tel=15000000001, sqrname=测试, sqrrelation=null, sqrphone=13701010101, unit=null, szyld=null, duty=null, remark=null, etypevalue=null, einfo=131313131313, createdate=2020-03-12 18:36:15, transversion=null, estatusvalue=null, fzr=null, interview=null, eid=cabc979468ed5e51a9c407a0f005ff5b, etype=7, estatus=0, province=null, city=null, district=null, town=null, sqradress=null, myd=null, gmedicine=null, ateam=null, openid=, sfsw=null, astatus=null, cxly=null, groupName=null, fkmx=null, wcl=null, clz=null, ycl=null, createTimeFrom=null, createTimeTo=null, enddate=null, leadappraise=null, reason=null, aid=null, paid=null, ypj=null, aidname=null, aidphone=null)\"', '192.168.222.1', '2020-03-12 18:36:16', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2300', null, '获取getPersonFamilyInfo', '65', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '192.168.222.1', '2020-03-12 18:36:36', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2301', null, '新增ExplainByApi', '311', 'cc.mrbird.febs.wechat.controller.ApiController.addExplainByApi()', ' explain: \"Explain(mgroup=null, xh=null, agroup=null, yhname=null, tel=15000000001, sqrname=测试, sqrrelation=null, sqrphone=13701010101, unit=null, szyld=null, duty=null, remark=null, etypevalue=null, einfo=569989, createdate=2020-03-12 18:38:07, transversion=null, estatusvalue=null, fzr=null, interview=null, eid=bf316a0dd6f6985e1ca867c79f4bbe2f, etype=8, estatus=0, province=null, city=null, district=null, town=null, sqradress=null, myd=null, gmedicine=null, ateam=null, openid=, sfsw=null, astatus=null, cxly=null, groupName=null, fkmx=null, wcl=null, clz=null, ycl=null, createTimeFrom=null, createTimeTo=null, enddate=null, leadappraise=null, reason=null, aid=null, paid=null, ypj=null, aidname=null, aidphone=null)\"', '192.168.222.1', '2020-03-12 18:38:08', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2302', null, '获取getPersonFamilyInfo', '162', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '192.168.222.1', '2020-03-12 18:38:13', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2303', null, '新增ExplainByApi', '342', 'cc.mrbird.febs.wechat.controller.ApiController.addExplainByApi()', ' explain: \"Explain(mgroup=null, xh=null, agroup=null, yhname=null, tel=15000000001, sqrname=测试, sqrrelation=null, sqrphone=13701010101, unit=null, szyld=null, duty=null, remark=null, etypevalue=null, einfo=12121, createdate=2020-03-12 18:38:32, transversion=null, estatusvalue=null, fzr=null, interview=null, eid=3f8106554d9e06f3bd0a717b5565f07d, etype=8, estatus=0, province=null, city=null, district=null, town=null, sqradress=null, myd=null, gmedicine=null, ateam=null, openid=, sfsw=null, astatus=null, cxly=null, groupName=null, fkmx=null, wcl=null, clz=null, ycl=null, createTimeFrom=null, createTimeTo=null, enddate=null, leadappraise=null, reason=null, aid=null, paid=null, ypj=null, aidname=null, aidphone=null)\"', '192.168.222.1', '2020-03-12 18:38:32', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2304', null, '验证WxUser', '43', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000001\" passwd: \"123456\"', '192.168.222.1', '2020-03-12 18:39:41', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2305', null, '获取getPersonFamilyInfo', '49', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonFamilyInfo()', ' phone: \"15000000001\"', '192.168.222.1', '2020-03-12 18:39:44', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2306', null, '新增ExplainByApi', '352', 'cc.mrbird.febs.wechat.controller.ApiController.addExplainByApi()', ' explain: \"Explain(mgroup=null, xh=null, agroup=null, yhname=null, tel=15000000001, sqrname=测试, sqrrelation=null, sqrphone=13701010101, unit=null, szyld=null, duty=null, remark=null, etypevalue=null, einfo=132323, createdate=2020-03-12 18:39:50, transversion=null, estatusvalue=null, fzr=null, interview=null, eid=15a7adea7759a62cce902ac99c4a90e0, etype=8, estatus=0, province=null, city=null, district=null, town=null, sqradress=null, myd=null, gmedicine=null, ateam=null, openid=, sfsw=null, astatus=null, cxly=null, groupName=null, fkmx=null, wcl=null, clz=null, ycl=null, createTimeFrom=null, createTimeTo=null, enddate=null, leadappraise=null, reason=null, aid=null, paid=null, ypj=null, aidname=null, aidphone=null)\"', '192.168.222.1', '2020-03-12 18:39:50', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2307', null, '获取getPersonByPhone', '73', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000001\" rylx: \"0\"', '192.168.222.1', '2020-03-12 18:42:52', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2308', null, '验证WxUser', '92', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"13703020201\" passwd: \"123456\"', '192.168.222.1', '2020-03-12 18:43:24', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2309', null, '验证WxUser', '27', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"13701010101\" passwd: \"123456\"', '192.168.222.1', '2020-03-12 18:43:39', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2310', null, '验证WxUser', '28', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"13701010101\" passwd: \"123456789\"', '192.168.222.1', '2020-03-12 18:43:43', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2311', null, '验证WxUser', '44', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-03-12 18:45:21', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2312', null, '验证WxUser', '59', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-03-12 18:53:30', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2313', null, '验证WxUser', '38', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-03-12 18:54:31', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2314', null, '验证WxUser', '41', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-03-12 19:22:07', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2315', null, '验证WxUser', '881', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-03-12 19:38:47', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2316', null, '验证WxUser', '85', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-03-12 19:53:20', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2317', null, '获取getPersonByPhone', '156', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000005\" rylx: \"2\"', '192.168.222.1', '2020-03-12 19:53:25', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2318', null, '获取updatePersonAssistInfo', '359', 'cc.mrbird.febs.wechat.controller.ApiController.updatePersonMedicineRemark()', ' phone: \"13701010110\" remark: \"122222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222\"', '192.168.222.1', '2020-03-12 19:54:09', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2319', null, '获取getPersonByPhone', '273', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000005\" rylx: \"2\"', '192.168.222.1', '2020-03-12 19:54:09', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2320', null, '验证WxUser', '56', 'cc.mrbird.febs.wechat.controller.ApiController.newcheckWUser()', ' phone: \"15000000005\" passwd: \"123456\"', '192.168.222.1', '2020-03-12 19:55:19', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2321', null, '获取getPersonByPhone', '229', 'cc.mrbird.febs.wechat.controller.ApiController.getPersonListByPhone()', ' phone: \"15000000005\" rylx: \"2\"', '192.168.222.1', '2020-03-12 19:55:29', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2322', 'system', '删除用户', '135', 'cc.mrbird.febs.system.controller.UserController.deleteUsers()', ' userIds: \"11\"', '192.168.199.127', '2020-05-30 16:50:54', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2323', 'system', '删除用户', '149', 'cc.mrbird.febs.system.controller.UserController.deleteUsers()', ' userIds: \"9\"', '192.168.199.127', '2020-05-30 16:50:57', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2324', 'system', '修改角色', '686', 'cc.mrbird.febs.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=1, roleName=系统管理员, remark=系统管理员, createTime=null, modifyTime=Sat May 30 17:07:55 CST 2020, menuIds=199,215,216,217,218,219,202,220,221,222,223,224,203,206,225,226,227,239,207,228,229,230,240,232,233,234,204,235,236,237,238,205,1,3,11,12,13,160,161,4,14,15,16,162,5,17,18,19,163,6,20,21,22,164,209,210,211,212,213,2,8,23,10,24,170,136,171,172,127,128,129,131,175,101,102,103,104,105,106,107,108,173,109,110,174,137,138,165,139,166,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125,167,168,169)\"', '192.168.199.127', '2020-05-30 17:07:56', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2325', 'system', '新增角色', '161', 'cc.mrbird.febs.system.controller.RoleController.addRole()', ' role: \"Role(roleId=84, roleName=管理员, remark=管理员, createTime=Sat May 30 17:12:27 CST 2020, modifyTime=null, menuIds=)\"', '192.168.199.127', '2020-05-30 17:12:28', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2326', 'system', '新增角色', '115', 'cc.mrbird.febs.system.controller.RoleController.addRole()', ' role: \"Role(roleId=85, roleName=项目组负责人, remark=项目组负责人, createTime=Sat May 30 17:12:35 CST 2020, modifyTime=null, menuIds=)\"', '192.168.199.127', '2020-05-30 17:12:35', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2327', 'system', '新增角色', '178', 'cc.mrbird.febs.system.controller.RoleController.addRole()', ' role: \"Role(roleId=86, roleName=项目组成员, remark=项目组成员, createTime=Sat May 30 17:12:44 CST 2020, modifyTime=null, menuIds=)\"', '192.168.199.127', '2020-05-30 17:12:44', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2328', 'system', '新增用户', '124', 'cc.mrbird.febs.system.controller.UserController.addUser()', ' user: \"User(userId=12, username=yangj, password=20bec532d2ce29fb15ac0c80d42b70d8, deptId=null, email=, mobile=13700000000, status=1, createTime=Sat May 30 17:13:28 CST 2020, modifyTime=null, lastLoginTime=null, sex=2, avatar=default.jpg, theme=black, isTab=0, description=, deptName=null, createTimeFrom=null, createTimeTo=null, roleId=85, roleName=null)\"', '192.168.199.127', '2020-05-30 17:13:28', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2329', 'system', '新增用户', '311', 'cc.mrbird.febs.system.controller.UserController.addUser()', ' user: \"User(userId=13, username=tongsn, password=d569849d94761c0000b919e4df453a97, deptId=null, email=, mobile=13700000001, status=1, createTime=Sat May 30 17:14:16 CST 2020, modifyTime=null, lastLoginTime=null, sex=2, avatar=default.jpg, theme=black, isTab=0, description=, deptName=null, createTimeFrom=null, createTimeTo=null, roleId=86, roleName=null)\"', '192.168.199.127', '2020-05-30 17:14:16', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2330', 'system', '新增菜单/按钮', '3436', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=241, parentId=0, menuName=项目组管理, url=/xmz/index, perms=, icon=layui-icon-cluster, type=0, orderNum=null, createTime=Sat May 30 17:26:42 CST 2020, modifyTime=null)\"', '192.168.199.127', '2020-05-30 17:26:44', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2331', 'system', '修改菜单/按钮', '146', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=241, parentId=0, menuName=项目组管理, url=/xmz/index, perms=, icon=layui-icon-cluster, type=0, orderNum=0, createTime=null, modifyTime=Sat May 30 17:26:56 CST 2020)\"', '192.168.199.127', '2020-05-30 17:26:56', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2332', 'system', '修改菜单/按钮', '171', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=241, parentId=0, menuName=项目组管理, url=/xmz/index, perms=xmz:view, icon=layui-icon-cluster, type=0, orderNum=0, createTime=null, modifyTime=Sat May 30 17:27:17 CST 2020)\"', '192.168.199.127', '2020-05-30 17:27:17', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2333', 'system', '修改角色', '682', 'cc.mrbird.febs.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=1, roleName=系统管理员, remark=系统管理员, createTime=null, modifyTime=Sat May 30 18:23:33 CST 2020, menuIds=241,199,215,216,217,218,219,202,220,221,222,223,224,203,206,225,226,227,239,207,228,229,230,240,232,233,234,204,235,236,237,238,205,1,3,11,12,13,160,161,4,14,15,16,162,5,17,18,19,163,6,20,21,22,164,209,210,211,212,213,2,8,23,10,24,170,136,171,172,127,128,129,131,175,101,102,103,104,105,106,107,108,173,109,110,174,137,138,165,139,166,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125,167,168,169)\"', '192.168.199.127', '2020-05-30 18:23:34', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2334', 'system', '修改GeneratorConfig', '118', 'cc.mrbird.febs.generator.controller.GeneratorConfigController.updateGeneratorConfig()', ' generatorConfig: GeneratorConfig(id=1, author=tongrok, basePackage=cc.mrbird.febs.xmz, entityPackage=entity, mapperPackage=mapper, mapperXmlPackage=mapper, servicePackage=service, serviceImplPackage=service.impl, controllerPackage=controller, isTrim=1, trimValue=t_, javaPath=/src/main/java/, resourcesPath=src/main/resources, date=2020-05-30 18:34:16, tableName=null, tableComment=null, className=null)', '192.168.199.127', '2020-05-30 18:34:16', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2335', 'system', '导出pa', '1414', 'cc.mrbird.febs.person.controller.PersonAssistController.export()', ' queryRequest: \"QueryRequest(pageSize=30, pageNum=1, field=null, order=null)\" personAssist: \"PersonAssist(userid=null, nname=null, ttype=null, ssex=null, birth=null, workunid=null, duty=null, political=null, phone=null, city=null, county=null, town=null, village=null, address=null, rrole=null, groupId=null, groupName=null)\" response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@12448c7', '192.168.199.127', '2020-05-30 19:29:46', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2336', 'system', '新增菜单/按钮', '143', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=242, parentId=241, menuName=项目组查看, url=null, perms=group:view, icon=null, type=1, orderNum=null, createTime=Sun May 31 01:59:22 CST 2020, modifyTime=null)\"', '192.168.199.127', '2020-05-31 01:59:22', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2337', 'system', '修改菜单/按钮', '216', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=242, parentId=241, menuName=查看, url=null, perms=group:view, icon=null, type=1, orderNum=null, createTime=null, modifyTime=Sun May 31 01:59:31 CST 2020)\"', '192.168.199.127', '2020-05-31 01:59:31', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2338', 'system', '修改菜单/按钮', '125', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=241, parentId=0, menuName=项目组管理, url=/xmz/index, perms=, icon=layui-icon-cluster, type=0, orderNum=0, createTime=null, modifyTime=Sun May 31 01:59:37 CST 2020)\"', '192.168.199.127', '2020-05-31 01:59:37', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2339', 'system', '修改角色', '638', 'cc.mrbird.febs.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=1, roleName=系统管理员, remark=系统管理员, createTime=null, modifyTime=Sun May 31 01:59:49 CST 2020, menuIds=241,242,199,215,216,217,218,219,202,220,221,222,223,224,203,206,225,226,227,239,207,228,229,230,240,232,233,234,204,235,236,237,238,205,1,3,11,12,13,160,161,4,14,15,16,162,5,17,18,19,163,6,20,21,22,164,209,210,211,212,213,2,8,23,10,24,170,136,171,172,127,128,129,131,175,101,102,103,104,105,106,107,108,173,109,110,174,137,138,165,139,166,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125,167,168,169)\"', '192.168.199.127', '2020-05-31 01:59:49', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2340', 'system', '修改菜单/按钮', '110', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=241, parentId=0, menuName=项目组管理, url=/xmz/index, perms=xmz:view, icon=layui-icon-cluster, type=0, orderNum=0, createTime=null, modifyTime=Sun May 31 02:00:33 CST 2020)\"', '192.168.199.127', '2020-05-31 02:00:33', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2341', 'system', '修改菜单/按钮', '147', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=242, parentId=241, menuName=查看, url=null, perms=xmz:view, icon=null, type=1, orderNum=null, createTime=null, modifyTime=Sun May 31 09:12:54 CST 2020)\"', '127.0.0.1', '2020-05-31 09:12:54', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2342', 'system', '删除菜单/按钮', '147', 'cc.mrbird.febs.system.controller.MenuController.deleteMenus()', ' menuIds: \"242\"', '127.0.0.1', '2020-05-31 09:21:20', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2343', 'system', '新增菜单/按钮', '116', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=243, parentId=241, menuName=项目组情况, url=/xmz/index, perms=xmz:view, icon=, type=0, orderNum=0, createTime=Sun May 31 09:21:58 CST 2020, modifyTime=null)\"', '127.0.0.1', '2020-05-31 09:21:58', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2344', 'system', '修改菜单/按钮', '245', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=241, parentId=0, menuName=项目组管理, url=, perms=, icon=layui-icon-cluster, type=0, orderNum=0, createTime=null, modifyTime=Sun May 31 09:22:07 CST 2020)\"', '127.0.0.1', '2020-05-31 09:22:07', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2345', 'system', '新增菜单/按钮', '113', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=244, parentId=241, menuName=项目组维护, url=/xmz/manage, perms=xmz:manage, icon=, type=0, orderNum=1, createTime=Sun May 31 09:22:50 CST 2020, modifyTime=null)\"', '127.0.0.1', '2020-05-31 09:22:50', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2346', 'system', '修改角色', '900', 'cc.mrbird.febs.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=1, roleName=系统管理员, remark=系统管理员, createTime=null, modifyTime=Sun May 31 09:23:15 CST 2020, menuIds=241,243,244,199,215,216,217,218,219,202,220,221,222,223,224,203,206,225,226,227,239,207,228,229,230,240,232,233,234,204,235,236,237,238,205,1,3,11,12,13,160,161,4,14,15,16,162,5,17,18,19,163,6,20,21,22,164,209,210,211,212,213,2,8,23,10,24,170,136,171,172,127,128,129,131,175,101,102,103,104,105,106,107,108,173,109,110,174,137,138,165,139,166,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125,167,168,169)\"', '127.0.0.1', '2020-05-31 09:23:16', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2347', 'system', '新增菜单/按钮', '165', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=245, parentId=244, menuName=新增, url=null, perms=xmz:add, icon=null, type=1, orderNum=null, createTime=Sun May 31 09:30:33 CST 2020, modifyTime=null)\"', '192.168.199.127', '2020-05-31 09:30:33', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2348', 'system', '新增菜单/按钮', '115', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=246, parentId=244, menuName=修改, url=null, perms=xmz:update, icon=null, type=1, orderNum=null, createTime=Sun May 31 09:30:50 CST 2020, modifyTime=null)\"', '192.168.199.127', '2020-05-31 09:30:50', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2349', 'system', '新增菜单/按钮', '83', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=247, parentId=244, menuName=删除, url=null, perms=xmz:delete, icon=null, type=1, orderNum=null, createTime=Sun May 31 09:31:09 CST 2020, modifyTime=null)\"', '192.168.199.127', '2020-05-31 09:31:09', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2350', 'system', '修改角色', '723', 'cc.mrbird.febs.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=1, roleName=系统管理员, remark=系统管理员, createTime=null, modifyTime=Sun May 31 09:31:33 CST 2020, menuIds=241,243,244,245,246,247,199,215,216,217,218,219,202,220,221,222,223,224,203,206,225,226,227,239,207,228,229,230,240,232,233,234,204,235,236,237,238,205,1,3,11,12,13,160,161,4,14,15,16,162,5,17,18,19,163,6,20,21,22,164,209,210,211,212,213,2,8,23,10,24,170,136,171,172,127,128,129,131,175,101,102,103,104,105,106,107,108,173,109,110,174,137,138,165,139,166,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125,167,168,169)\"', '192.168.199.127', '2020-05-31 09:31:34', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2351', 'system', '修改xmz', '30', 'cc.mrbird.febs.system.controller.XmzController.updateGroup()', ' group: \"Group(groupId=1, groupName=浙大网线项目组, groupRemark=, groupLeader=12, groupLeaderName=null, groupMembers=13, groupMemberCount=null, groupMemberName=null, groupMemberIds=null)\"', '192.168.199.127', '2020-05-31 09:31:51', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2352', 'system', '修改xmz', '23', 'cc.mrbird.febs.system.controller.XmzController.updateGroup()', ' group: \"Group(groupId=1, groupName=浙大网线项目组, groupRemark=, groupLeader=12, groupLeaderName=null, groupMembers=13, groupMemberCount=null, groupMemberName=null, groupMemberIds=null)\"', '192.168.199.127', '2020-05-31 09:32:07', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2353', 'system', '修改xmz', '304', 'cc.mrbird.febs.system.controller.XmzController.updateGroup()', ' group: \"Group(groupId=1, groupName=浙大网线项目组, groupRemark=, groupLeader=12, groupLeaderName=null, groupMembers=13, groupMemberCount=null, groupMemberName=null, groupMemberIds=null)\"', '192.168.199.127', '2020-05-31 10:01:10', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2354', 'system', '修改xmz', '379', 'cc.mrbird.febs.system.controller.XmzController.updateGroup()', ' group: \"Group(groupId=1, groupName=浙大网线项目组, groupRemark=, groupLeader=12, groupLeaderName=null, groupMembers=13, groupMemberCount=null, groupMemberName=null, groupMemberIds=null)\"', '192.168.199.127', '2020-05-31 15:50:09', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2355', 'system', '修改xmz', '83817', 'cc.mrbird.febs.system.controller.XmzController.updateGroup()', ' group: \"Group(groupId=1, groupName=浙大网线项目组, groupRemark=, groupLeader=12, groupLeaderName=null, groupMembers=13, groupMemberCount=null, groupMemberName=null, groupMemberIds=null)\"', '192.168.199.127', '2020-05-31 15:52:36', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2356', 'system', '修改xmz', '10194', 'cc.mrbird.febs.system.controller.XmzController.updateGroup()', ' group: \"Group(groupId=2, groupName=北大软件项目组, groupRemark=北大软件项目组, groupLeader=, groupLeaderName=null, groupMembers=, groupMemberCount=null, groupMemberName=null, groupMemberIds=null)\"', '192.168.199.127', '2020-05-31 16:08:05', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2357', 'system', '新增Dict', '177', 'cc.mrbird.febs.system.controller.DictController.addDict()', ' dict: Dict(dictId=77, dictName=事项类型, keyy=1, valuee=报备, tableName=t_matter_manage, fieldName=MATTER_TYPE)', '192.168.199.127', '2020-05-31 16:13:10', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2358', 'system', '新增Dict', '108', 'cc.mrbird.febs.system.controller.DictController.addDict()', ' dict: Dict(dictId=78, dictName=事项类型, keyy=2, valuee=请假, tableName=t_matter_manage, fieldName=MATTER_TYPE)', '192.168.199.127', '2020-05-31 16:13:39', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2359', 'system', '新增Dict', '106', 'cc.mrbird.febs.system.controller.DictController.addDict()', ' dict: Dict(dictId=79, dictName=事项类型, keyy=3, valuee=外出, tableName=t_matter_manage, fieldName=MATTER_TYPE)', '192.168.199.127', '2020-05-31 16:13:55', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2360', 'system', '修改角色', '134', 'cc.mrbird.febs.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=84, roleName=项目管理员, remark=项目管理员, createTime=null, modifyTime=Sun May 31 17:37:48 CST 2020, menuIds=)\"', '192.168.199.127', '2020-05-31 17:37:48', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2361', 'system', '修改角色', '238', 'cc.mrbird.febs.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=84, roleName=项目管理员, remark=项目管理员, createTime=null, modifyTime=Sun May 31 17:43:55 CST 2020, menuIds=241,243,244,245,246,247,3,11,12,13,160,161)\"', '192.168.199.127', '2020-05-31 17:43:56', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2362', 'system', '新增用户', '179', 'cc.mrbird.febs.system.controller.UserController.addUser()', ' user: \"User(userId=14, username=zhouj, password=9671a1c553560a27c27dd92d14eeae53, deptId=null, email=, mobile=13700001111, status=1, createTime=Sun May 31 17:44:34 CST 2020, modifyTime=null, lastLoginTime=null, sex=2, avatar=default.jpg, theme=black, isTab=0, description=, deptName=null, createTimeFrom=null, createTimeTo=null, roleId=84, roleName=null)\"', '192.168.199.127', '2020-05-31 17:44:34', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2363', 'system', '修改角色', '220', 'cc.mrbird.febs.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=84, roleName=项目管理员, remark=项目管理员, createTime=null, modifyTime=Sun May 31 17:47:12 CST 2020, menuIds=241,243,244,245,246,247,1,3,11,12,13,160,161)\"', '192.168.199.127', '2020-05-31 17:47:12', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2364', 'system', '修改菜单/按钮', '221', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=241, parentId=0, menuName=项目组, url=, perms=, icon=layui-icon-cluster, type=0, orderNum=0, createTime=null, modifyTime=Sun May 31 22:21:36 CST 2020)\"', '192.168.199.127', '2020-05-31 22:21:36', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2365', 'system', '修改xmz', '231', 'cc.mrbird.febs.system.controller.XmzController.updateGroup()', ' group: \"Group(groupId=1, groupName=浙大网新项目组, groupRemark=, groupLeader=12, groupLeaderName=null, groupMembers=13, groupMemberCount=null, groupMemberName=null, groupMemberIds=null)\"', '192.168.199.127', '2020-05-31 22:22:09', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2366', 'system', '修改GeneratorConfig', '133', 'cc.mrbird.febs.generator.controller.GeneratorConfigController.updateGeneratorConfig()', ' generatorConfig: GeneratorConfig(id=1, author=tongrok, basePackage=cc.mrbird.febs.matter, entityPackage=entity, mapperPackage=mapper, mapperXmlPackage=mapper, servicePackage=service, serviceImplPackage=service.impl, controllerPackage=controller, isTrim=1, trimValue=t_, javaPath=/src/main/java/, resourcesPath=src/main/resources, date=2020-05-31 22:55:21, tableName=null, tableComment=null, className=null)', '0:0:0:0:0:0:0:1', '2020-05-31 22:55:21', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2367', 'system', '新增菜单/按钮', '208', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=248, parentId=0, menuName=事项管理, url=/matter/matter, perms=matter:view, icon=layui-icon-edit-square, type=0, orderNum=1, createTime=Mon Jun 01 00:36:44 CST 2020, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2020-06-01 00:36:44', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2368', 'system', '修改菜单/按钮', '60', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=248, parentId=0, menuName=事项管理, url=/matter/matter, perms=matter:view, icon=layui-icon-edit-square, type=0, orderNum=0, createTime=null, modifyTime=Mon Jun 01 00:36:59 CST 2020)\"', '0:0:0:0:0:0:0:1', '2020-06-01 00:36:59', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2369', 'system', '新增菜单/按钮', '98', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=249, parentId=0, menuName=新增事项, url=null, perms=matter:add, icon=null, type=1, orderNum=null, createTime=Mon Jun 01 00:37:26 CST 2020, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2020-06-01 00:37:26', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2370', 'system', '删除菜单/按钮', '137', 'cc.mrbird.febs.system.controller.MenuController.deleteMenus()', ' menuIds: \"249\"', '0:0:0:0:0:0:0:1', '2020-06-01 00:37:35', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2371', 'system', '新增菜单/按钮', '124', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=250, parentId=248, menuName=新增事项, url=null, perms=matter:add, icon=null, type=1, orderNum=null, createTime=Mon Jun 01 00:37:55 CST 2020, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2020-06-01 00:37:55', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2372', 'system', '新增菜单/按钮', '98', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=251, parentId=248, menuName=修改事项, url=null, perms=matter:update, icon=null, type=1, orderNum=null, createTime=Mon Jun 01 00:38:14 CST 2020, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2020-06-01 00:38:14', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2373', 'system', '新增菜单/按钮', '388', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=252, parentId=248, menuName=审批, url=null, perms=matter:audit, icon=null, type=1, orderNum=null, createTime=Mon Jun 01 00:38:28 CST 2020, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2020-06-01 00:38:28', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2374', 'system', '新增菜单/按钮', '198', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=253, parentId=248, menuName=删除, url=null, perms=matter:delete, icon=null, type=1, orderNum=null, createTime=Mon Jun 01 00:39:27 CST 2020, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2020-06-01 00:39:27', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2375', 'system', '新增菜单/按钮', '77', 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=254, parentId=248, menuName=导出, url=null, perms=matter:export, icon=null, type=1, orderNum=null, createTime=Mon Jun 01 00:39:42 CST 2020, modifyTime=null)\"', '0:0:0:0:0:0:0:1', '2020-06-01 00:39:42', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2376', 'system', '修改菜单/按钮', '215', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=251, parentId=248, menuName=修改, url=null, perms=matter:update, icon=null, type=1, orderNum=null, createTime=null, modifyTime=Mon Jun 01 00:39:50 CST 2020)\"', '0:0:0:0:0:0:0:1', '2020-06-01 00:39:50', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2377', 'system', '修改菜单/按钮', '114', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=250, parentId=248, menuName=新增, url=null, perms=matter:add, icon=null, type=1, orderNum=null, createTime=null, modifyTime=Mon Jun 01 00:39:58 CST 2020)\"', '0:0:0:0:0:0:0:1', '2020-06-01 00:39:58', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2378', 'system', '修改角色', '594', 'cc.mrbird.febs.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=84, roleName=项目管理员, remark=项目管理员, createTime=null, modifyTime=Mon Jun 01 00:43:56 CST 2020, menuIds=241,243,244,245,246,247,248,250,251,252,253,254,1,3,11,12,13,160,161)\"', '0:0:0:0:0:0:0:1', '2020-06-01 00:43:57', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('2379', 'system', '修改角色', '524', 'cc.mrbird.febs.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=1, roleName=系统管理员, remark=系统管理员, createTime=null, modifyTime=Mon Jun 01 00:44:07 CST 2020, menuIds=241,243,244,245,246,247,248,250,251,252,253,254,199,215,216,217,218,219,202,220,221,222,223,224,203,206,225,226,227,239,207,228,229,230,240,232,233,234,204,235,236,237,238,205,1,3,11,12,13,160,161,4,14,15,16,162,5,17,18,19,163,6,20,21,22,164,209,210,211,212,213,2,8,23,10,24,170,136,171,172,127,128,129,131,175,101,102,103,104,105,106,107,108,173,109,110,174,137,138,165,139,166,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125,167,168,169)\"', '0:0:0:0:0:0:0:1', '2020-06-01 00:44:08', '内网IP|0|0|内网IP|内网IP');

-- ----------------------------
-- Table structure for t_login_log
-- ----------------------------
DROP TABLE IF EXISTS `t_login_log`;
CREATE TABLE `t_login_log` (
  `ID` bigint(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `USERNAME` varchar(50) NOT NULL COMMENT '用户名',
  `LOGIN_TIME` datetime NOT NULL COMMENT '登录时间',
  `LOCATION` varchar(50) DEFAULT NULL COMMENT '登录地点',
  `IP` varchar(50) DEFAULT NULL COMMENT 'IP地址',
  `SYSTEM` varchar(50) DEFAULT NULL COMMENT '操作系统',
  `BROWSER` varchar(50) DEFAULT NULL COMMENT '浏览器',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=560 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='登录日志表';

-- ----------------------------
-- Records of t_login_log
-- ----------------------------
INSERT INTO `t_login_log` VALUES ('93', 'system', '2020-02-14 21:09:26', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('94', 'system', '2020-02-14 22:47:40', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('95', 'system', '2020-02-15 01:22:02', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('96', 'system', '2020-02-15 01:30:03', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Firefox 72');
INSERT INTO `t_login_log` VALUES ('97', 'system', '2020-02-15 01:40:29', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('98', 'system', '2020-02-15 02:31:35', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('99', 'system', '2020-02-15 02:47:21', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('100', 'system', '2020-02-15 02:55:38', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('101', 'system', '2020-02-15 03:01:45', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('102', 'system', '2020-02-15 03:07:26', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('103', 'system', '2020-02-15 08:11:59', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('104', 'system', '2020-02-15 09:36:17', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('105', 'system', '2020-02-15 12:30:39', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('106', 'system', '2020-02-15 13:19:28', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Firefox 72');
INSERT INTO `t_login_log` VALUES ('107', 'system', '2020-02-15 13:22:25', '内网IP|0|0|内网IP|内网IP', '192.168.199.1', 'Windows 10', 'Firefox 72');
INSERT INTO `t_login_log` VALUES ('108', 'system', '2020-02-15 13:37:54', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('109', 'system', '2020-02-15 13:50:12', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('110', 'system', '2020-02-15 13:52:29', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('111', 'system', '2020-02-15 14:48:41', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('112', 'system', '2020-02-15 14:50:10', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('113', 'system', '2020-02-15 15:10:18', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('114', 'system', '2020-02-15 15:53:26', '内网IP|0|0|内网IP|内网IP', '192.168.199.1', 'Windows 10', 'Firefox 72');
INSERT INTO `t_login_log` VALUES ('115', 'system', '2020-02-15 15:54:02', '中国|华中|湖南省|0|移动', '120.227.130.216', 'Windows 10', 'Chrome 53');
INSERT INTO `t_login_log` VALUES ('116', 'system', '2020-02-15 15:54:36', '中国|华东|浙江省|杭州市|电信', '125.121.60.212', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('117', 'system', '2020-02-15 15:55:15', '中国|华东|浙江省|杭州市|电信', '125.121.234.165', 'Windows 10', 'Chrome 53');
INSERT INTO `t_login_log` VALUES ('118', 'system', '2020-02-15 16:17:24', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('119', 'system', '2020-02-15 17:49:50', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('120', 'system', '2020-02-15 18:20:19', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Firefox 72');
INSERT INTO `t_login_log` VALUES ('121', 'system', '2020-02-15 20:38:01', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Firefox 72');
INSERT INTO `t_login_log` VALUES ('122', 'system', '2020-02-15 20:40:48', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('123', 'system', '2020-02-15 20:48:07', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('124', 'system', '2020-02-15 20:49:46', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('125', 'system', '2020-02-15 20:50:24', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('126', 'system', '2020-02-15 20:53:46', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('127', 'system', '2020-02-15 21:00:46', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('128', 'system', '2020-02-15 21:19:39', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('129', 'system', '2020-02-15 22:07:07', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('130', 'system', '2020-02-15 22:20:22', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('131', 'system', '2020-02-15 22:22:55', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('132', 'system', '2020-02-15 22:38:36', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('133', 'system', '2020-02-15 22:52:00', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('134', 'system', '2020-02-15 22:53:51', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('135', 'system', '2020-02-15 23:06:12', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('136', 'system', '2020-02-15 23:09:13', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('137', 'system', '2020-02-16 01:19:40', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('138', 'system', '2020-02-16 02:15:45', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('139', 'system', '2020-02-16 02:21:44', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('140', 'system', '2020-02-16 08:10:34', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('141', 'system', '2020-02-16 08:20:05', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('142', 'system', '2020-02-16 08:22:25', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('143', 'system', '2020-02-16 08:26:20', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('144', 'system', '2020-02-16 08:28:49', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('145', 'system', '2020-02-16 09:37:33', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('146', 'system', '2020-02-16 09:44:13', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('147', 'system', '2020-02-16 09:51:27', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('148', 'system', '2020-02-16 09:56:17', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('149', 'system', '2020-02-16 10:00:07', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('150', 'system', '2020-02-16 10:13:56', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Firefox 72');
INSERT INTO `t_login_log` VALUES ('151', 'system', '2020-02-16 12:53:42', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('152', 'system', '2020-02-16 12:56:17', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('153', 'system', '2020-02-16 13:04:28', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('154', 'system', '2020-02-16 13:18:19', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('155', 'system', '2020-02-16 13:24:13', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('156', 'system', '2020-02-16 14:01:45', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Firefox 72');
INSERT INTO `t_login_log` VALUES ('157', 'system', '2020-02-16 14:04:08', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('158', 'admin', '2020-02-16 14:04:52', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('159', 'system', '2020-02-17 09:22:11', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('160', 'system', '2020-02-17 16:17:46', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('161', 'system', '2020-02-17 16:45:17', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('162', 'system', '2020-02-17 18:37:53', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('163', 'system', '2020-02-17 21:01:00', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Firefox 72');
INSERT INTO `t_login_log` VALUES ('164', 'system', '2020-02-17 22:33:53', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Firefox 72');
INSERT INTO `t_login_log` VALUES ('165', 'system', '2020-02-18 00:03:45', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Firefox 72');
INSERT INTO `t_login_log` VALUES ('166', 'system', '2020-02-18 01:33:09', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Firefox 72');
INSERT INTO `t_login_log` VALUES ('167', 'system', '2020-02-18 08:39:39', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Firefox 72');
INSERT INTO `t_login_log` VALUES ('168', 'system', '2020-02-18 10:50:50', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('169', 'system', '2020-02-18 13:17:32', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('170', 'system', '2020-02-18 13:44:13', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Firefox 72');
INSERT INTO `t_login_log` VALUES ('171', 'system', '2020-02-18 14:27:33', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Firefox 72');
INSERT INTO `t_login_log` VALUES ('172', 'system', '2020-02-18 14:53:57', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('173', 'system', '2020-02-18 15:02:21', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('174', 'system', '2020-02-18 15:41:54', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('175', 'system', '2020-02-18 15:51:46', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('176', 'system', '2020-02-18 15:54:20', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('177', 'system', '2020-02-18 16:41:58', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('178', 'system', '2020-02-18 17:01:56', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('179', 'system', '2020-02-18 17:46:38', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Firefox 72');
INSERT INTO `t_login_log` VALUES ('180', 'system', '2020-02-18 18:03:01', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('181', 'system', '2020-02-18 23:23:05', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Firefox 72');
INSERT INTO `t_login_log` VALUES ('182', 'system', '2020-02-19 08:44:05', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Firefox 72');
INSERT INTO `t_login_log` VALUES ('183', 'system', '2020-02-19 10:15:49', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Firefox 72');
INSERT INTO `t_login_log` VALUES ('184', 'system', '2020-02-19 13:32:57', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('185', 'system', '2020-02-19 14:22:57', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('186', 'system', '2020-02-19 14:38:35', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('187', 'system', '2020-02-19 14:42:58', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('188', 'system', '2020-02-19 14:45:54', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('189', 'system', '2020-02-19 14:53:00', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('190', 'system', '2020-02-19 14:59:42', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('191', 'system', '2020-02-19 15:04:14', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('192', 'system', '2020-02-19 15:06:15', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('193', 'system', '2020-02-19 15:15:50', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('194', 'system', '2020-02-19 15:21:38', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('195', 'system', '2020-02-19 15:37:25', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('196', 'system', '2020-02-19 15:40:40', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('197', 'system', '2020-02-19 15:51:45', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('198', 'system', '2020-02-19 16:22:01', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('199', 'system', '2020-02-19 16:40:47', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('200', 'system', '2020-02-19 16:47:31', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('201', 'system', '2020-02-19 17:09:18', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('202', 'system', '2020-02-19 17:24:07', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('203', 'system', '2020-02-19 17:38:22', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('204', 'system', '2020-02-19 17:39:06', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('205', 'system', '2020-02-19 18:27:41', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('206', 'system', '2020-02-19 18:42:29', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('207', 'system', '2020-02-19 18:44:54', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('208', 'system', '2020-02-19 18:54:06', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('209', 'system', '2020-02-19 18:56:25', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('210', 'system', '2020-02-19 19:07:42', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('211', 'system', '2020-02-19 19:19:55', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('212', 'system', '2020-02-19 19:31:18', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('213', 'system', '2020-02-19 19:40:38', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('214', 'system', '2020-02-19 19:54:44', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('215', 'system', '2020-02-20 00:15:59', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Firefox 72');
INSERT INTO `t_login_log` VALUES ('216', 'system', '2020-02-20 08:25:38', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Firefox 72');
INSERT INTO `t_login_log` VALUES ('217', 'system', '2020-02-20 10:06:37', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Firefox 72');
INSERT INTO `t_login_log` VALUES ('218', 'system', '2020-02-20 11:11:55', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('219', 'system', '2020-02-20 11:16:21', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('220', 'system', '2020-02-20 11:34:55', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('221', 'system', '2020-02-20 11:45:05', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('222', 'system', '2020-02-20 11:47:52', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('223', 'system', '2020-02-20 12:12:42', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('224', 'system', '2020-02-20 13:15:03', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('225', 'system', '2020-02-20 13:24:44', '内网IP|0|0|内网IP|内网IP', '192.168.199.1', 'Windows 10', 'Firefox 72');
INSERT INTO `t_login_log` VALUES ('226', 'system', '2020-02-20 13:26:19', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('227', 'system', '2020-02-20 13:45:33', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Firefox 72');
INSERT INTO `t_login_log` VALUES ('228', 'system', '2020-02-20 13:47:34', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('229', 'system', '2020-02-20 15:46:45', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('230', 'system', '2020-02-20 16:03:14', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('231', 'system', '2020-02-20 16:14:08', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('232', 'system', '2020-02-20 16:29:14', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('233', 'system', '2020-02-20 16:37:21', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('234', 'system', '2020-02-20 16:48:49', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('235', 'system', '2020-02-20 16:52:01', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('236', 'system', '2020-02-20 16:55:16', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('237', 'system', '2020-02-20 17:00:10', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('238', 'system', '2020-02-20 17:12:42', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('239', 'system', '2020-02-20 17:16:18', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('240', 'system', '2020-02-20 17:20:08', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('241', 'system', '2020-02-20 17:21:22', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('242', 'system', '2020-02-20 17:28:30', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('243', 'system', '2020-02-20 17:29:51', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('244', 'system', '2020-02-20 17:33:55', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('245', 'system', '2020-02-20 17:37:48', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('246', 'system', '2020-02-20 17:40:09', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('247', 'system', '2020-02-20 18:16:41', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('248', 'system', '2020-02-20 19:02:31', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('249', 'system', '2020-02-20 19:10:31', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('250', 'system', '2020-02-20 19:19:25', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('251', 'system', '2020-02-20 19:29:10', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('252', 'system', '2020-02-20 19:34:48', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('253', 'system', '2020-02-20 19:39:46', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('254', 'system', '2020-02-20 20:08:45', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('255', 'system', '2020-02-20 20:27:09', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('256', 'system', '2020-02-21 07:41:37', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('257', 'system', '2020-02-21 13:38:36', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('258', 'system', '2020-02-21 13:44:32', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('259', 'system', '2020-02-21 13:50:07', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('260', 'system', '2020-02-21 13:51:37', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('261', 'system', '2020-02-21 13:53:30', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('262', 'system', '2020-02-21 14:01:01', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('263', 'system', '2020-02-21 14:20:57', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('264', 'system', '2020-02-21 14:40:28', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('265', 'system', '2020-02-21 14:47:54', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('266', 'system', '2020-02-21 14:50:34', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('267', 'system', '2020-02-21 14:56:25', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('268', 'system', '2020-02-21 14:58:13', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('269', 'system', '2020-02-21 17:12:51', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('270', 'system', '2020-02-21 17:17:01', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('271', 'system', '2020-02-21 19:16:08', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('272', 'system', '2020-02-22 09:15:53', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('273', 'system', '2020-02-22 09:34:47', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'IE 11');
INSERT INTO `t_login_log` VALUES ('274', 'system', '2020-02-22 10:18:10', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Firefox 73');
INSERT INTO `t_login_log` VALUES ('275', 'system', '2020-02-22 11:51:48', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Firefox 73');
INSERT INTO `t_login_log` VALUES ('276', 'system', '2020-02-22 13:25:45', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('277', 'system', '2020-02-22 13:40:49', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('278', 'system', '2020-02-22 13:41:36', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('279', 'system', '2020-02-22 13:42:24', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Firefox 73');
INSERT INTO `t_login_log` VALUES ('280', 'system', '2020-02-22 13:44:08', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('281', 'system', '2020-02-22 13:49:21', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('282', 'system', '2020-02-22 14:16:38', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('283', 'system', '2020-02-22 14:17:21', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('284', 'system', '2020-02-22 14:43:06', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('285', 'system', '2020-02-22 15:05:44', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('286', 'system', '2020-02-22 15:26:25', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('287', 'system', '2020-02-22 15:33:37', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('288', 'system', '2020-02-22 15:35:00', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('289', 'system', '2020-02-22 15:37:17', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('290', 'system', '2020-02-22 15:39:48', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('291', 'system', '2020-02-22 16:14:00', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('292', 'system', '2020-02-22 16:16:09', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('293', 'system', '2020-02-22 16:23:35', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('294', 'system', '2020-02-22 16:33:55', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('295', 'system', '2020-02-22 17:28:28', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('296', 'system', '2020-02-22 17:52:34', '内网IP|0|0|内网IP|内网IP', '192.168.199.1', 'Windows 10', 'Firefox 73');
INSERT INTO `t_login_log` VALUES ('297', 'system', '2020-02-22 21:32:15', '内网IP|0|0|内网IP|内网IP', '192.168.199.1', 'Windows 10', 'Firefox 73');
INSERT INTO `t_login_log` VALUES ('298', 'system', '2020-02-23 10:32:50', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('299', 'system', '2020-02-23 14:18:04', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Firefox 73');
INSERT INTO `t_login_log` VALUES ('300', 'system', '2020-02-23 15:48:13', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('301', 'system', '2020-02-23 16:18:11', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('302', 'system', '2020-02-23 16:23:26', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('303', 'system', '2020-02-23 16:24:11', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('304', 'system', '2020-02-23 16:25:10', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('305', 'system', '2020-02-23 16:27:40', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('306', 'system', '2020-02-23 16:38:53', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('307', 'system', '2020-02-23 16:41:58', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('308', 'system', '2020-02-23 16:42:36', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Firefox 73');
INSERT INTO `t_login_log` VALUES ('309', 'system', '2020-02-23 16:43:36', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('310', 'system', '2020-02-23 16:48:01', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('311', 'system', '2020-02-23 16:48:42', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('312', 'system', '2020-02-23 16:56:20', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('313', 'system', '2020-02-23 17:13:46', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('314', 'system', '2020-02-23 17:15:26', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('315', 'system', '2020-02-23 17:17:48', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('316', 'system', '2020-02-23 17:21:35', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('317', 'system', '2020-02-23 17:25:38', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'IE 11');
INSERT INTO `t_login_log` VALUES ('318', 'system', '2020-02-23 17:26:04', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('319', 'system', '2020-02-23 18:19:37', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('320', 'system', '2020-02-23 18:33:29', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('321', 'system', '2020-02-23 18:43:45', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('322', 'system', '2020-02-23 19:36:12', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('323', 'system', '2020-02-23 19:40:35', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('324', 'system', '2020-02-23 21:24:24', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('325', 'system', '2020-02-23 21:35:09', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('326', 'system', '2020-02-23 21:35:40', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('327', 'system', '2020-02-24 09:01:50', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('328', 'system', '2020-02-24 14:19:58', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('329', 'system', '2020-02-24 14:23:18', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('330', 'system', '2020-02-24 15:52:03', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('331', 'system', '2020-02-24 16:15:03', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('332', 'system', '2020-02-24 16:20:25', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('333', 'system', '2020-02-24 16:38:19', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('334', 'system', '2020-02-24 16:42:38', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('335', 'system', '2020-02-24 16:45:50', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('336', 'system', '2020-02-24 16:54:17', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('337', 'system', '2020-02-24 17:04:41', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('338', 'system', '2020-02-24 17:07:26', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('339', 'system', '2020-02-24 17:10:24', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('340', 'system', '2020-02-24 17:10:48', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('341', 'system', '2020-02-24 17:35:00', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('342', 'system', '2020-02-24 17:42:04', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('343', 'system', '2020-02-24 17:49:49', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('344', 'system', '2020-02-24 18:43:54', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('345', 'system', '2020-02-24 18:54:15', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('346', 'system', '2020-02-24 19:08:18', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('347', 'system', '2020-02-24 19:08:24', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('348', 'system', '2020-02-24 19:15:05', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('349', 'system', '2020-02-24 19:15:16', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('350', 'system', '2020-02-24 19:30:04', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('351', 'system', '2020-02-24 19:50:10', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('352', 'system', '2020-02-24 19:57:53', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('353', 'system', '2020-02-24 20:03:28', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('354', 'system', '2020-02-24 20:12:37', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('355', 'system', '2020-02-24 20:36:35', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('356', 'system', '2020-02-24 20:44:39', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('357', 'system', '2020-02-25 09:40:32', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('358', 'system', '2020-02-25 13:48:29', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('359', 'system', '2020-02-25 13:59:51', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('360', 'system', '2020-02-25 14:19:44', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('361', 'system', '2020-02-25 14:59:59', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('362', 'system', '2020-02-25 15:19:12', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('363', 'system', '2020-02-25 15:26:35', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('364', 'system', '2020-02-25 15:44:15', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('365', 'system', '2020-02-25 15:57:47', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('366', 'system', '2020-02-25 15:59:24', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('367', 'system', '2020-02-25 16:01:04', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('368', 'system', '2020-02-25 16:11:52', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('369', 'system', '2020-02-25 16:13:23', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('370', 'system', '2020-02-25 16:22:17', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('371', 'system', '2020-02-25 16:24:16', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('372', 'system', '2020-02-25 16:42:03', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('373', 'system', '2020-02-25 16:52:42', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('374', 'system', '2020-02-25 16:57:17', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('375', 'system', '2020-02-25 17:02:26', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('376', 'system', '2020-02-25 17:11:17', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('377', 'system', '2020-02-25 17:14:20', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('378', 'system', '2020-02-25 17:19:21', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('379', 'system', '2020-02-25 17:24:20', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('380', 'system', '2020-02-25 18:12:59', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('381', 'system', '2020-02-25 18:49:00', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('382', 'system', '2020-02-25 18:50:51', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('383', 'system', '2020-02-25 18:56:09', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('384', 'system', '2020-02-25 19:23:29', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('385', 'system', '2020-02-25 19:27:02', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('386', 'system', '2020-02-25 19:29:29', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('387', 'system', '2020-02-25 19:31:35', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('388', 'system', '2020-02-25 19:32:39', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('389', 'system', '2020-02-25 19:34:16', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('390', 'system', '2020-02-25 19:46:36', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('391', 'system', '2020-02-25 19:54:53', '内网IP|0|0|内网IP|内网IP', '192.168.1.4', 'Windows ', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('392', 'system', '2020-02-25 19:58:04', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('393', 'system', '2020-02-25 20:02:51', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('394', 'system', '2020-02-25 20:05:08', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('395', 'system', '2020-02-25 20:17:34', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('396', 'system', '2020-02-25 20:23:54', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('397', 'system', '2020-02-25 20:27:07', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('398', 'system', '2020-02-25 20:29:48', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('399', 'system', '2020-02-25 20:31:33', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('400', 'system', '2020-02-25 20:33:11', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('401', 'system', '2020-02-25 20:34:28', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('402', 'system', '2020-02-25 20:39:54', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('403', 'system', '2020-02-25 20:41:22', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('404', 'system', '2020-02-25 20:46:49', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('405', 'system', '2020-02-25 20:49:57', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('406', 'system', '2020-02-25 21:49:32', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('407', 'system', '2020-02-25 21:53:23', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('408', 'system', '2020-02-25 21:57:23', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('409', 'system', '2020-02-25 22:44:46', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('410', 'system', '2020-02-25 23:06:18', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('411', 'system', '2020-02-25 23:11:23', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('412', 'system', '2020-02-25 23:15:38', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('413', 'system', '2020-02-25 23:18:27', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('414', 'system', '2020-02-25 23:25:24', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('415', 'system', '2020-02-25 23:27:02', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('416', 'system', '2020-02-25 23:29:39', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('417', 'system', '2020-02-25 23:34:57', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('418', 'system', '2020-02-25 23:40:07', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Firefox 73');
INSERT INTO `t_login_log` VALUES ('419', 'system', '2020-02-25 23:57:51', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('420', 'system', '2020-02-26 00:25:11', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('421', 'system', '2020-02-26 00:34:24', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('422', 'system', '2020-02-26 08:23:43', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('423', 'system', '2020-02-26 08:28:02', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('424', 'system', '2020-02-26 08:41:29', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('425', 'system', '2020-02-26 08:49:01', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('426', 'system', '2020-02-26 08:55:27', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('427', 'system', '2020-02-26 09:22:02', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('428', 'system', '2020-02-26 09:23:36', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('429', 'system', '2020-02-26 09:28:02', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('430', 'system', '2020-02-26 09:30:52', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('431', 'system', '2020-02-26 09:34:43', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('432', 'system', '2020-02-26 09:42:33', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('433', 'system', '2020-02-26 10:36:31', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('434', 'system', '2020-02-26 10:38:54', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('435', 'system', '2020-02-26 10:49:40', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('436', 'system', '2020-02-26 11:04:52', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('437', 'system', '2020-02-26 11:24:09', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('438', 'system', '2020-02-26 11:31:14', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('439', 'system', '2020-02-26 11:37:39', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('440', 'system', '2020-02-26 11:41:59', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('441', 'system', '2020-02-26 11:57:52', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('442', 'system', '2020-02-26 11:59:24', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('443', 'system', '2020-02-26 12:01:07', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('444', 'system', '2020-02-26 12:04:19', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('445', 'system', '2020-02-26 12:28:27', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('446', 'system', '2020-02-26 12:30:00', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('447', 'system', '2020-02-26 12:33:09', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('448', 'system', '2020-02-26 12:36:53', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('449', 'system', '2020-02-26 12:38:53', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('450', 'system', '2020-02-26 12:42:14', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('451', 'system', '2020-02-26 13:18:51', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('452', 'system', '2020-02-26 13:36:46', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('453', 'system', '2020-02-26 13:39:30', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('454', 'system', '2020-02-26 13:51:18', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('455', 'system', '2020-02-26 13:54:02', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('456', 'system', '2020-02-26 14:11:14', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('457', 'system', '2020-02-26 14:15:41', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('458', 'system', '2020-02-26 14:32:36', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('459', 'system', '2020-02-26 14:42:20', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('460', 'system', '2020-02-26 14:45:39', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('461', 'system', '2020-02-26 14:51:05', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('462', 'system', '2020-02-26 16:10:36', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('463', 'system', '2020-02-26 16:15:59', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('464', 'system', '2020-02-26 16:25:13', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('465', 'system', '2020-02-26 19:09:18', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('466', 'system', '2020-02-26 19:27:11', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('467', 'system', '2020-02-26 20:25:51', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('468', 'system', '2020-02-27 08:55:43', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Firefox 73');
INSERT INTO `t_login_log` VALUES ('469', 'system', '2020-02-27 08:58:43', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('470', 'system', '2020-02-27 09:00:36', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('471', 'system', '2020-02-27 09:21:22', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('472', 'system', '2020-02-27 09:26:01', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('473', 'system', '2020-02-27 09:36:02', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('474', 'system', '2020-02-27 11:22:20', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Firefox 73');
INSERT INTO `t_login_log` VALUES ('475', 'system', '2020-02-27 11:41:24', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('476', 'system', '2020-02-27 11:52:33', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('477', 'system', '2020-02-27 12:21:26', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('478', 'system', '2020-02-27 12:25:07', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('479', 'system', '2020-02-27 13:33:09', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Firefox 73');
INSERT INTO `t_login_log` VALUES ('480', 'system', '2020-02-27 13:43:34', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('481', 'system', '2020-02-27 14:00:33', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('482', 'system', '2020-02-27 15:10:45', '内网IP|0|0|内网IP|内网IP', '192.168.1.103', 'Windows 10', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('483', 'system', '2020-02-27 15:48:16', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('484', 'system', '2020-02-27 15:55:14', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('485', 'system', '2020-02-27 15:57:50', '内网IP|0|0|内网IP|内网IP', '192.168.1.103', 'Windows 10', 'Chrome 79');
INSERT INTO `t_login_log` VALUES ('486', 'system', '2020-02-27 16:41:30', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('487', 'system', '2020-02-27 19:29:48', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('488', 'system', '2020-02-27 20:07:27', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('489', 'system', '2020-02-27 21:57:38', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('490', 'system', '2020-02-28 09:14:44', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('491', 'system', '2020-02-28 13:15:15', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('492', 'system', '2020-02-28 13:17:24', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('493', 'system', '2020-02-28 16:56:55', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Firefox 73');
INSERT INTO `t_login_log` VALUES ('494', 'system', '2020-02-28 17:22:56', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('495', 'system', '2020-02-28 17:27:03', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('496', 'system', '2020-02-28 17:28:49', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('497', 'system', '2020-02-28 17:33:05', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('498', 'system', '2020-03-02 10:11:12', '内网IP|0|0|内网IP|内网IP', '192.168.10.205', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('499', 'admin', '2020-03-02 10:25:55', '内网IP|0|0|内网IP|内网IP', '192.168.10.205', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('500', 'system', '2020-03-02 10:29:39', '内网IP|0|0|内网IP|内网IP', '192.168.10.205', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('501', 'test2', '2020-03-02 10:31:09', '内网IP|0|0|内网IP|内网IP', '192.168.10.205', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('502', 'system', '2020-03-02 10:42:53', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('503', 'system', '2020-03-02 14:10:56', '内网IP|0|0|内网IP|内网IP', '192.168.1.101', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('504', 'system', '2020-03-02 14:42:09', '内网IP|0|0|内网IP|内网IP', '192.168.1.101', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('505', 'system', '2020-03-02 14:45:21', '内网IP|0|0|内网IP|内网IP', '192.168.1.101', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('506', 'system', '2020-03-02 14:49:53', '内网IP|0|0|内网IP|内网IP', '192.168.1.101', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('507', 'system', '2020-03-02 15:40:33', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Firefox 73');
INSERT INTO `t_login_log` VALUES ('508', 'system', '2020-03-02 15:46:38', '内网IP|0|0|内网IP|内网IP', '192.168.1.101', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('509', 'system', '2020-03-02 16:14:57', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Firefox 73');
INSERT INTO `t_login_log` VALUES ('510', 'system', '2020-03-02 16:19:09', '内网IP|0|0|内网IP|内网IP', '192.168.1.101', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('511', 'system', '2020-03-02 16:29:44', '内网IP|0|0|内网IP|内网IP', '192.168.1.101', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('512', 'system', '2020-03-02 16:34:56', '内网IP|0|0|内网IP|内网IP', '192.168.1.101', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('513', 'system', '2020-03-02 16:56:09', '内网IP|0|0|内网IP|内网IP', '192.168.1.101', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('514', 'system', '2020-03-02 17:07:01', '内网IP|0|0|内网IP|内网IP', '192.168.1.101', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('515', 'system', '2020-03-02 17:08:14', '内网IP|0|0|内网IP|内网IP', '192.168.1.101', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('516', 'system', '2020-03-02 17:21:57', '内网IP|0|0|内网IP|内网IP', '192.168.1.101', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('517', 'system', '2020-03-02 17:28:50', '内网IP|0|0|内网IP|内网IP', '192.168.1.101', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('518', 'system', '2020-03-02 17:36:52', '内网IP|0|0|内网IP|内网IP', '192.168.1.101', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('519', 'system', '2020-03-02 17:43:54', '内网IP|0|0|内网IP|内网IP', '192.168.1.101', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('520', 'system', '2020-03-03 09:50:14', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('521', 'system', '2020-03-03 11:59:23', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('522', 'system', '2020-03-03 14:14:41', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('523', 'system', '2020-03-03 14:22:59', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('524', 'system', '2020-03-03 14:29:47', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('525', 'system', '2020-03-03 14:36:00', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('526', 'system', '2020-03-03 14:47:22', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('527', 'system', '2020-03-03 14:51:59', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('528', 'system', '2020-03-03 15:08:51', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('529', 'system', '2020-03-03 15:18:27', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('530', 'system', '2020-03-03 16:29:13', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('531', 'system', '2020-03-03 17:16:13', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('532', 'system', '2020-03-03 17:19:02', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('533', 'system', '2020-03-04 09:29:47', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Firefox 73');
INSERT INTO `t_login_log` VALUES ('534', 'system', '2020-03-04 09:36:03', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('535', 'system', '2020-03-04 09:56:21', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('536', 'system', '2020-03-05 18:34:51', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('537', 'system', '2020-03-05 19:34:36', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Firefox 73');
INSERT INTO `t_login_log` VALUES ('538', 'system', '2020-03-05 20:04:14', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Firefox 73');
INSERT INTO `t_login_log` VALUES ('539', 'system', '2020-03-05 20:36:00', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Firefox 73');
INSERT INTO `t_login_log` VALUES ('540', 'system', '2020-03-06 08:51:31', '内网IP|0|0|内网IP|内网IP', '192.168.140.1', 'Windows 10', 'Firefox 73');
INSERT INTO `t_login_log` VALUES ('541', 'system', '2020-03-06 13:39:03', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Firefox 73');
INSERT INTO `t_login_log` VALUES ('542', 'system', '2020-03-12 15:22:04', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('543', 'system', '2020-03-12 16:05:46', '内网IP|0|0|内网IP|内网IP', '192.168.222.1', 'Windows 10', 'Chrome 77');
INSERT INTO `t_login_log` VALUES ('544', 'system', '2020-05-30 16:38:28', '内网IP|0|0|内网IP|内网IP', '192.168.199.127', 'Windows 10', 'Firefox 76');
INSERT INTO `t_login_log` VALUES ('545', 'system', '2020-05-30 22:41:24', '内网IP|0|0|内网IP|内网IP', '192.168.199.127', 'Windows 10', 'Firefox 76');
INSERT INTO `t_login_log` VALUES ('546', 'system', '2020-05-30 22:44:59', '内网IP|0|0|内网IP|内网IP', '192.168.199.127', 'Windows 10', 'Firefox 76');
INSERT INTO `t_login_log` VALUES ('547', 'system', '2020-05-31 01:53:34', '内网IP|0|0|内网IP|内网IP', '192.168.199.127', 'Windows 10', 'Firefox 76');
INSERT INTO `t_login_log` VALUES ('548', 'system', '2020-05-31 09:12:33', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Firefox 76');
INSERT INTO `t_login_log` VALUES ('549', 'system', '2020-05-31 09:26:43', '内网IP|0|0|内网IP|内网IP', '192.168.199.127', 'Windows 10', 'Firefox 76');
INSERT INTO `t_login_log` VALUES ('550', 'system', '2020-05-31 15:30:26', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Firefox 76');
INSERT INTO `t_login_log` VALUES ('551', 'system', '2020-05-31 15:49:50', '内网IP|0|0|内网IP|内网IP', '192.168.199.127', 'Windows 10', 'Firefox 76');
INSERT INTO `t_login_log` VALUES ('552', 'zhouj', '2020-05-31 17:46:33', '内网IP|0|0|内网IP|内网IP', '192.168.199.127', 'Windows 10', 'Firefox 76');
INSERT INTO `t_login_log` VALUES ('553', 'system', '2020-05-31 17:46:57', '内网IP|0|0|内网IP|内网IP', '192.168.199.127', 'Windows 10', 'Firefox 76');
INSERT INTO `t_login_log` VALUES ('554', 'zhouj', '2020-05-31 17:47:23', '内网IP|0|0|内网IP|内网IP', '192.168.199.127', 'Windows 10', 'Firefox 76');
INSERT INTO `t_login_log` VALUES ('555', 'system', '2020-05-31 19:29:39', '内网IP|0|0|内网IP|内网IP', '192.168.199.127', 'Windows 10', 'Firefox 76');
INSERT INTO `t_login_log` VALUES ('556', 'system', '2020-05-31 20:46:02', '内网IP|0|0|内网IP|内网IP', '192.168.199.127', 'Windows 10', 'Firefox 76');
INSERT INTO `t_login_log` VALUES ('557', 'system', '2020-05-31 22:54:34', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Firefox 76');
INSERT INTO `t_login_log` VALUES ('558', 'system', '2020-06-01 00:34:48', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Firefox 76');
INSERT INTO `t_login_log` VALUES ('559', 'system', '2020-06-01 08:28:59', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Firefox 76');

-- ----------------------------
-- Table structure for t_matter_approve
-- ----------------------------
DROP TABLE IF EXISTS `t_matter_approve`;
CREATE TABLE `t_matter_approve` (
  `OID` varchar(64) DEFAULT NULL COMMENT '主键 主键',
  `M_OID` varchar(64) DEFAULT NULL COMMENT '事项主键 事项主键',
  `CREATED_BY` varchar(64) DEFAULT NULL COMMENT '创建人 创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间 创建时间',
  `UPDATED_BY` varchar(64) DEFAULT NULL COMMENT '更新人 更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间 更新时间',
  `APPROVE_STATUS` varchar(32) DEFAULT NULL COMMENT '审批状态 0，待审批；1，通过；2，退回；',
  `APPROVE_CONTENT` varchar(1024) DEFAULT NULL COMMENT '审批说明 审批说明'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='事项审批 ';

-- ----------------------------
-- Records of t_matter_approve
-- ----------------------------

-- ----------------------------
-- Table structure for t_matter_manage
-- ----------------------------
DROP TABLE IF EXISTS `t_matter_manage`;
CREATE TABLE `t_matter_manage` (
  `OID` varchar(64) DEFAULT NULL COMMENT '主键 主键',
  `CREATED_BY` varchar(64) DEFAULT NULL COMMENT '创建人 创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间 创建时间',
  `UPDATED_BY` varchar(64) DEFAULT NULL COMMENT '更新人 更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间 更新时间',
  `MATTER_TYPE` varchar(32) DEFAULT NULL COMMENT '事项类型 事项类型',
  `STATUS` varchar(32) DEFAULT NULL COMMENT '状态 0，正常；1，删除',
  `MATTER_CONTENT` varchar(1024) DEFAULT NULL COMMENT '事项内容 事项内容'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='事项管理 ';

-- ----------------------------
-- Records of t_matter_manage
-- ----------------------------

-- ----------------------------
-- Table structure for t_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu` (
  `MENU_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单/按钮ID',
  `PARENT_ID` bigint(20) NOT NULL COMMENT '上级菜单ID',
  `MENU_NAME` varchar(50) NOT NULL COMMENT '菜单/按钮名称',
  `URL` varchar(50) DEFAULT NULL COMMENT '菜单URL',
  `PERMS` text DEFAULT NULL COMMENT '权限标识',
  `ICON` varchar(50) DEFAULT NULL COMMENT '图标',
  `TYPE` char(2) NOT NULL COMMENT '类型 0菜单 1按钮',
  `ORDER_NUM` bigint(20) DEFAULT NULL COMMENT '排序',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`MENU_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=255 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='菜单表';

-- ----------------------------
-- Records of t_menu
-- ----------------------------
INSERT INTO `t_menu` VALUES ('1', '0', '系统管理', '', '', 'layui-icon-setting', '0', '91', '2017-12-27 16:39:07', '2020-02-08 16:40:34');
INSERT INTO `t_menu` VALUES ('2', '0', '系统监控', '', '', 'layui-icon-issuesclose', '0', '92', '2017-12-27 16:45:51', '2020-02-08 16:46:50');
INSERT INTO `t_menu` VALUES ('3', '1', '用户管理', '/system/user', 'user:view', '', '0', '1', '2017-12-27 16:47:13', '2019-12-04 16:46:50');
INSERT INTO `t_menu` VALUES ('4', '1', '角色管理', '/system/role', 'role:view', '', '0', '2', '2017-12-27 16:48:09', '2019-06-13 08:57:19');
INSERT INTO `t_menu` VALUES ('5', '1', '菜单管理', '/system/menu', 'menu:view', '', '0', '3', '2017-12-27 16:48:57', '2019-06-13 08:57:34');
INSERT INTO `t_menu` VALUES ('6', '1', '部门管理', '/system/dept', 'dept:view', '', '0', '4', '2017-12-27 16:57:33', '2019-06-14 19:56:00');
INSERT INTO `t_menu` VALUES ('8', '2', '在线用户', '/monitor/online', 'online:view', '', '0', '1', '2017-12-27 16:59:33', '2019-06-13 14:30:31');
INSERT INTO `t_menu` VALUES ('10', '2', '系统日志', '/monitor/log', 'log:view', '', '0', '2', '2017-12-27 17:00:50', '2019-06-13 14:30:37');
INSERT INTO `t_menu` VALUES ('11', '3', '新增用户', null, 'user:add', null, '1', null, '2017-12-27 17:02:58', null);
INSERT INTO `t_menu` VALUES ('12', '3', '修改用户', null, 'user:update', null, '1', null, '2017-12-27 17:04:07', null);
INSERT INTO `t_menu` VALUES ('13', '3', '删除用户', null, 'user:delete', null, '1', null, '2017-12-27 17:04:58', null);
INSERT INTO `t_menu` VALUES ('14', '4', '新增角色', null, 'role:add', null, '1', null, '2017-12-27 17:06:38', null);
INSERT INTO `t_menu` VALUES ('15', '4', '修改角色', null, 'role:update', null, '1', null, '2017-12-27 17:06:38', null);
INSERT INTO `t_menu` VALUES ('16', '4', '删除角色', null, 'role:delete', null, '1', null, '2017-12-27 17:06:38', null);
INSERT INTO `t_menu` VALUES ('17', '5', '新增菜单', null, 'menu:add', null, '1', null, '2017-12-27 17:08:02', null);
INSERT INTO `t_menu` VALUES ('18', '5', '修改菜单', null, 'menu:update', null, '1', null, '2017-12-27 17:08:02', null);
INSERT INTO `t_menu` VALUES ('19', '5', '删除菜单', null, 'menu:delete', null, '1', null, '2017-12-27 17:08:02', null);
INSERT INTO `t_menu` VALUES ('20', '6', '新增部门', null, 'dept:add', null, '1', null, '2017-12-27 17:09:24', null);
INSERT INTO `t_menu` VALUES ('21', '6', '修改部门', null, 'dept:update', null, '1', null, '2017-12-27 17:09:24', null);
INSERT INTO `t_menu` VALUES ('22', '6', '删除部门', null, 'dept:delete', null, '1', null, '2017-12-27 17:09:24', null);
INSERT INTO `t_menu` VALUES ('23', '8', '踢出用户', null, 'user:kickout', null, '1', null, '2017-12-27 17:11:13', null);
INSERT INTO `t_menu` VALUES ('24', '10', '删除日志', null, 'log:delete', null, '1', null, '2017-12-27 17:11:45', '2019-06-06 05:56:40');
INSERT INTO `t_menu` VALUES ('101', '0', '任务调度', '', '', 'layui-icon-time-circle', '0', '93', '2018-02-24 15:52:57', '2020-02-08 16:40:42');
INSERT INTO `t_menu` VALUES ('102', '101', '定时任务', '/job/job', 'job:view', '', '0', '1', '2018-02-24 15:53:53', '2018-04-25 09:05:12');
INSERT INTO `t_menu` VALUES ('103', '102', '新增任务', null, 'job:add', null, '1', null, '2018-02-24 15:55:10', null);
INSERT INTO `t_menu` VALUES ('104', '102', '修改任务', null, 'job:update', null, '1', null, '2018-02-24 15:55:53', null);
INSERT INTO `t_menu` VALUES ('105', '102', '删除任务', null, 'job:delete', null, '1', null, '2018-02-24 15:56:18', null);
INSERT INTO `t_menu` VALUES ('106', '102', '暂停任务', null, 'job:pause', null, '1', null, '2018-02-24 15:57:08', null);
INSERT INTO `t_menu` VALUES ('107', '102', '恢复任务', null, 'job:resume', null, '1', null, '2018-02-24 15:58:21', null);
INSERT INTO `t_menu` VALUES ('108', '102', '立即执行任务', null, 'job:run', null, '1', null, '2018-02-24 15:59:45', null);
INSERT INTO `t_menu` VALUES ('109', '101', '调度日志', '/job/log', 'job:log:view', '', '0', '2', '2018-02-24 16:00:45', '2019-06-09 02:48:19');
INSERT INTO `t_menu` VALUES ('110', '109', '删除日志', null, 'job:log:delete', null, '1', null, '2018-02-24 16:01:21', null);
INSERT INTO `t_menu` VALUES ('115', '0', '其他模块', '', '', 'layui-icon-gift', '0', '95', '2019-05-27 10:18:07', '2020-02-08 16:40:52');
INSERT INTO `t_menu` VALUES ('116', '115', 'Apex图表', '', '', null, '0', '2', '2019-05-27 10:21:35', null);
INSERT INTO `t_menu` VALUES ('117', '116', '线性图表', '/others/apex/line', 'apex:line:view', null, '0', '1', '2019-05-27 10:24:49', null);
INSERT INTO `t_menu` VALUES ('118', '115', '高德地图', '/others/map', 'map:view', '', '0', '3', '2019-05-27 17:13:12', '2019-06-12 15:33:00');
INSERT INTO `t_menu` VALUES ('119', '116', '面积图表', '/others/apex/area', 'apex:area:view', null, '0', '2', '2019-05-27 18:49:22', null);
INSERT INTO `t_menu` VALUES ('120', '116', '柱形图表', '/others/apex/column', 'apex:column:view', null, '0', '3', '2019-05-27 18:51:33', null);
INSERT INTO `t_menu` VALUES ('121', '116', '雷达图表', '/others/apex/radar', 'apex:radar:view', null, '0', '4', '2019-05-27 18:56:05', null);
INSERT INTO `t_menu` VALUES ('122', '116', '条形图表', '/others/apex/bar', 'apex:bar:view', null, '0', '5', '2019-05-27 18:57:02', null);
INSERT INTO `t_menu` VALUES ('123', '116', '混合图表', '/others/apex/mix', 'apex:mix:view', '', '0', '6', '2019-05-27 18:58:04', '2019-06-06 02:55:23');
INSERT INTO `t_menu` VALUES ('125', '115', '导入导出', '/others/eximport', 'others:eximport:view', '', '0', '4', '2019-05-27 19:01:57', '2019-06-13 01:20:14');
INSERT INTO `t_menu` VALUES ('126', '132', '系统图标', '/others/febs/icon', 'febs:icons:view', '', '0', '4', '2019-05-27 19:03:18', '2019-06-06 03:05:26');
INSERT INTO `t_menu` VALUES ('127', '2', '请求追踪', '/monitor/httptrace', 'httptrace:view', '', '0', '6', '2019-05-27 19:06:38', '2019-06-13 14:36:43');
INSERT INTO `t_menu` VALUES ('128', '2', '系统信息', null, null, null, '0', '7', '2019-05-27 19:08:23', null);
INSERT INTO `t_menu` VALUES ('129', '128', 'JVM信息', '/monitor/jvm', 'jvm:view', '', '0', '1', '2019-05-27 19:08:50', '2019-06-13 14:36:51');
INSERT INTO `t_menu` VALUES ('131', '128', '服务器信息', '/monitor/server', 'server:view', '', '0', '3', '2019-05-27 19:10:07', '2019-06-13 14:37:04');
INSERT INTO `t_menu` VALUES ('132', '115', 'FEBS组件', '', '', null, '0', '1', '2019-05-27 19:13:54', null);
INSERT INTO `t_menu` VALUES ('133', '132', '表单组件', '/others/febs/form', 'febs:form:view', null, '0', '1', '2019-05-27 19:14:45', null);
INSERT INTO `t_menu` VALUES ('134', '132', 'FEBS工具', '/others/febs/tools', 'febs:tools:view', '', '0', '3', '2019-05-29 10:11:22', '2019-06-12 13:21:27');
INSERT INTO `t_menu` VALUES ('135', '132', '表单组合', '/others/febs/form/group', 'febs:formgroup:view', null, '0', '2', '2019-05-29 10:16:19', null);
INSERT INTO `t_menu` VALUES ('136', '2', '登录日志', '/monitor/loginlog', 'loginlog:view', '', '0', '3', '2019-05-29 15:56:15', '2019-06-13 14:35:56');
INSERT INTO `t_menu` VALUES ('137', '0', '代码生成', '', '', 'layui-icon-verticalright', '0', '94', '2019-06-03 15:35:58', '2020-02-08 16:40:48');
INSERT INTO `t_menu` VALUES ('138', '137', '生成配置', '/generator/configure', 'generator:configure:view', null, '0', '1', '2019-06-03 15:38:36', null);
INSERT INTO `t_menu` VALUES ('139', '137', '代码生成', '/generator/generator', 'generator:view', '', '0', '2', '2019-06-03 15:39:15', '2019-06-13 14:31:38');
INSERT INTO `t_menu` VALUES ('159', '132', '其他组件', '/others/febs/others', 'others:febs:others', '', '0', '5', '2019-06-12 07:51:08', '2019-06-12 07:51:40');
INSERT INTO `t_menu` VALUES ('160', '3', '密码重置', null, 'user:password:reset', null, '1', null, '2019-06-13 08:40:13', null);
INSERT INTO `t_menu` VALUES ('161', '3', '导出Excel', null, 'user:export', null, '1', null, '2019-06-13 08:40:34', null);
INSERT INTO `t_menu` VALUES ('162', '4', '导出Excel', null, 'role:export', null, '1', null, '2019-06-13 14:29:00', '2019-06-13 14:29:11');
INSERT INTO `t_menu` VALUES ('163', '5', '导出Excel', null, 'menu:export', null, '1', null, '2019-06-13 14:29:32', null);
INSERT INTO `t_menu` VALUES ('164', '6', '导出Excel', null, 'dept:export', null, '1', null, '2019-06-13 14:29:59', null);
INSERT INTO `t_menu` VALUES ('165', '138', '修改配置', null, 'generator:configure:update', null, '1', null, '2019-06-13 14:32:09', '2019-06-13 14:32:20');
INSERT INTO `t_menu` VALUES ('166', '139', '生成代码', null, 'generator:generate', null, '1', null, '2019-06-13 14:32:51', null);
INSERT INTO `t_menu` VALUES ('167', '125', '模板下载', null, 'eximport:template', null, '1', null, '2019-06-13 14:33:37', null);
INSERT INTO `t_menu` VALUES ('168', '125', '导出Excel', null, 'eximport:export', null, '1', null, '2019-06-13 14:33:57', null);
INSERT INTO `t_menu` VALUES ('169', '125', '导入Excel', null, 'eximport:import', null, '1', null, '2019-06-13 14:34:19', null);
INSERT INTO `t_menu` VALUES ('170', '10', '导出Excel', null, 'log:export', null, '1', null, '2019-06-13 14:34:55', null);
INSERT INTO `t_menu` VALUES ('171', '136', '删除日志', null, 'loginlog:delete', null, '1', null, '2019-06-13 14:35:27', '2019-06-13 14:36:08');
INSERT INTO `t_menu` VALUES ('172', '136', '导出Excel', null, 'loginlog:export', null, '1', null, '2019-06-13 14:36:26', null);
INSERT INTO `t_menu` VALUES ('173', '102', '导出Excel', null, 'job:export', null, '1', null, '2019-06-13 14:37:25', null);
INSERT INTO `t_menu` VALUES ('174', '109', '导出Excel', null, 'job:log:export', null, '1', null, '2019-06-13 14:37:46', '2019-06-13 14:38:02');
INSERT INTO `t_menu` VALUES ('175', '2', 'Swagger文档', '/monitor/swagger', 'swagger:view', '', '0', '8', '2019-08-18 17:25:36', '2019-08-18 17:25:59');
INSERT INTO `t_menu` VALUES ('199', '0', '服务对象', '/person/personMedicine', 'pm:view', 'layui-icon-user', '0', '1', '2020-02-14 18:33:22', '2020-02-25 17:32:38');
INSERT INTO `t_menu` VALUES ('202', '0', '帮扶团队', '/person/personAssist', 'pa:view', 'layui-icon-team', '0', '2', '2020-02-14 18:36:07', '2020-02-20 16:13:15');
INSERT INTO `t_menu` VALUES ('203', '0', '分组信息', '', '', 'layui-icon-database', '0', '3', '2020-02-14 18:36:35', '2020-02-14 18:44:41');
INSERT INTO `t_menu` VALUES ('204', '0', '诉求管理', '/explain/explain', '', 'layui-icon-edit-square', '0', '4', '2020-02-14 18:37:35', '2020-03-05 20:45:23');
INSERT INTO `t_menu` VALUES ('205', '0', '诉求分析', '/explain/statistical', 'explain:view', 'layui-icon-barchart', '0', '5', '2020-02-14 18:37:51', '2020-02-24 17:10:39');
INSERT INTO `t_menu` VALUES ('206', '203', '服务对象管理', '/group/groupMedicine', '', '', '0', '1', '2020-02-14 21:13:52', '2020-03-05 20:46:43');
INSERT INTO `t_menu` VALUES ('207', '203', '帮扶小组管理', '/group/groupAssist', '', '', '0', '2', '2020-02-14 21:14:07', '2020-03-05 20:47:01');
INSERT INTO `t_menu` VALUES ('209', '1', '字典管理', '/system/dict', 'dict:view', '', '0', '5', '2020-02-15 10:41:38', '2020-02-15 10:45:44');
INSERT INTO `t_menu` VALUES ('210', '209', '新增字典', null, 'dict:add', null, '1', null, '2020-02-15 10:42:53', '2020-02-15 10:43:08');
INSERT INTO `t_menu` VALUES ('211', '209', '字典修改', null, 'dict:update', null, '1', null, '2020-02-15 10:43:29', '2020-02-15 18:41:33');
INSERT INTO `t_menu` VALUES ('212', '209', '字典删除', null, 'dict:delete', null, '1', null, '2020-02-15 10:43:46', null);
INSERT INTO `t_menu` VALUES ('213', '209', '字典导出', null, 'dict:export', null, '1', null, '2020-02-15 16:54:27', '2020-02-15 16:56:23');
INSERT INTO `t_menu` VALUES ('215', '199', '新增', null, 'pm:add', null, '1', null, '2020-02-16 11:36:48', '2020-02-19 10:37:14');
INSERT INTO `t_menu` VALUES ('216', '199', '修改', null, 'pm:update', null, '1', null, '2020-02-16 11:39:03', '2020-02-19 10:37:18');
INSERT INTO `t_menu` VALUES ('217', '199', '删除', null, 'pm:delete', null, '1', null, '2020-02-16 11:39:30', '2020-02-19 10:37:22');
INSERT INTO `t_menu` VALUES ('218', '199', '导入', null, 'pm:import', null, '1', null, '2020-02-16 11:40:08', '2020-02-19 10:37:27');
INSERT INTO `t_menu` VALUES ('219', '199', '导出', null, 'pm:export', null, '1', null, '2020-02-16 11:41:03', '2020-02-19 10:37:31');
INSERT INTO `t_menu` VALUES ('220', '202', '新增', null, 'pa:add', null, '1', null, '2020-02-16 11:43:07', '2020-02-19 10:37:37');
INSERT INTO `t_menu` VALUES ('221', '202', '修改', null, 'pa:update', null, '1', null, '2020-02-16 11:43:46', '2020-02-19 10:37:41');
INSERT INTO `t_menu` VALUES ('222', '202', '删除', null, 'pa:delete', null, '1', null, '2020-02-16 11:44:19', '2020-02-19 10:37:46');
INSERT INTO `t_menu` VALUES ('223', '202', '导入', null, 'pa:import', null, '1', null, '2020-02-16 11:44:39', '2020-02-19 10:37:49');
INSERT INTO `t_menu` VALUES ('224', '202', '导出', null, 'pa:export', null, '1', null, '2020-02-16 11:45:25', '2020-02-19 10:37:53');
INSERT INTO `t_menu` VALUES ('225', '206', '新增', null, 'gm:add', null, '1', null, '2020-02-16 13:25:37', '2020-02-19 10:37:09');
INSERT INTO `t_menu` VALUES ('226', '206', '修改', null, 'gm:update', null, '1', null, '2020-02-16 13:26:07', '2020-02-19 10:38:00');
INSERT INTO `t_menu` VALUES ('227', '206', '删除', null, 'gm:delete', null, '1', null, '2020-02-16 13:26:30', '2020-02-19 10:38:08');
INSERT INTO `t_menu` VALUES ('228', '207', '新增', null, 'ga:add', null, '1', null, '2020-02-17 11:18:42', '2020-02-19 10:38:15');
INSERT INTO `t_menu` VALUES ('229', '207', '修改', null, 'ga:update', null, '1', null, '2020-02-17 11:19:21', '2020-02-19 10:38:20');
INSERT INTO `t_menu` VALUES ('230', '207', '删除', null, 'ga:delete', null, '1', null, '2020-02-17 11:19:49', '2020-02-19 10:38:26');
INSERT INTO `t_menu` VALUES ('231', '203', '帮扶团队管理', '/group/groupTeam', 'gt:view', '', '0', '3', '2020-02-19 10:37:01', null);
INSERT INTO `t_menu` VALUES ('232', '231', '新增', null, 'gt:add', null, '1', null, '2020-02-19 20:42:15', '2020-02-19 21:09:44');
INSERT INTO `t_menu` VALUES ('233', '231', '修改', null, 'gt:update', null, '1', null, '2020-02-19 20:42:33', null);
INSERT INTO `t_menu` VALUES ('234', '231', '删除', null, 'gt:delete', null, '1', null, '2020-02-19 21:10:23', '2020-02-19 21:10:52');
INSERT INTO `t_menu` VALUES ('235', '204', '查看', null, 'explain:view', null, '1', null, '2020-03-05 20:45:32', null);
INSERT INTO `t_menu` VALUES ('236', '204', '新增', null, 'explain:add', null, '1', null, '2020-03-05 20:45:43', null);
INSERT INTO `t_menu` VALUES ('237', '204', '修改', null, 'explain:update', null, '1', null, '2020-03-05 20:45:59', null);
INSERT INTO `t_menu` VALUES ('238', '204', '导出', null, 'explain:export', null, '1', null, '2020-03-05 20:46:10', null);
INSERT INTO `t_menu` VALUES ('239', '206', '查看', null, 'gm:view', null, '1', null, '2020-03-05 20:46:54', null);
INSERT INTO `t_menu` VALUES ('240', '207', '查看', null, 'ga:view', null, '1', null, '2020-03-05 20:47:09', null);
INSERT INTO `t_menu` VALUES ('241', '0', '项目组', '', '', 'layui-icon-cluster', '0', '0', '2020-05-30 17:26:42', '2020-05-31 22:21:36');
INSERT INTO `t_menu` VALUES ('243', '241', '项目组情况', '/xmz/index', 'xmz:view', '', '0', '0', '2020-05-31 09:21:58', null);
INSERT INTO `t_menu` VALUES ('244', '241', '项目组维护', '/xmz/manage', 'xmz:manage', '', '0', '1', '2020-05-31 09:22:50', null);
INSERT INTO `t_menu` VALUES ('245', '244', '新增', null, 'xmz:add', null, '1', null, '2020-05-31 09:30:33', null);
INSERT INTO `t_menu` VALUES ('246', '244', '修改', null, 'xmz:update', null, '1', null, '2020-05-31 09:30:50', null);
INSERT INTO `t_menu` VALUES ('247', '244', '删除', null, 'xmz:delete', null, '1', null, '2020-05-31 09:31:09', null);
INSERT INTO `t_menu` VALUES ('248', '0', '事项管理', '/matter/matter', 'matter:view', 'layui-icon-edit-square', '0', '0', '2020-06-01 00:36:44', '2020-06-01 00:36:59');
INSERT INTO `t_menu` VALUES ('250', '248', '新增', null, 'matter:add', null, '1', null, '2020-06-01 00:37:55', '2020-06-01 00:39:58');
INSERT INTO `t_menu` VALUES ('251', '248', '修改', null, 'matter:update', null, '1', null, '2020-06-01 00:38:14', '2020-06-01 00:39:50');
INSERT INTO `t_menu` VALUES ('252', '248', '审批', null, 'matter:audit', null, '1', null, '2020-06-01 00:38:28', null);
INSERT INTO `t_menu` VALUES ('253', '248', '删除', null, 'matter:delete', null, '1', null, '2020-06-01 00:39:27', null);
INSERT INTO `t_menu` VALUES ('254', '248', '导出', null, 'matter:export', null, '1', null, '2020-06-01 00:39:42', null);

-- ----------------------------
-- Table structure for t_person_assist
-- ----------------------------
DROP TABLE IF EXISTS `t_person_assist`;
CREATE TABLE `t_person_assist` (
  `userid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '人员ID',
  `nname` varchar(128) DEFAULT NULL COMMENT '姓名',
  `phone` varchar(128) NOT NULL COMMENT '手机号码',
  `passwd` varchar(32) DEFAULT NULL COMMENT '密码',
  `ssex` char(1) DEFAULT NULL COMMENT '性别',
  `birth` varchar(32) DEFAULT NULL COMMENT '出生年月',
  `political` varchar(32) DEFAULT NULL COMMENT '政治面貌',
  `workunid` varchar(1024) DEFAULT NULL COMMENT '工作单位',
  `duty` varchar(1024) DEFAULT NULL COMMENT '职务',
  `ttype` varchar(20) DEFAULT '' COMMENT '人员类别 1:机关处级干部；2：医疗卫生机构中层；3：社区工作者；4：志愿者',
  `rrole` char(1) DEFAULT NULL COMMENT '角色 1：组员；2：组长；3：团长；4：未分配角色人员',
  `city` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '市',
  `county` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '区',
  `town` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '街道',
  `village` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '社区',
  `address` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '家庭地址',
  PRIMARY KEY (`userid`,`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=100375 DEFAULT CHARSET=utf8mb4 COMMENT='帮扶人员信息表 ';

-- ----------------------------
-- Records of t_person_assist
-- ----------------------------
INSERT INTO `t_person_assist` VALUES ('3', '测试人员0', '13703020201', null, null, null, null, '测试单位0', '测试职务0', '志愿者', '2', '', '', '', '', '');
INSERT INTO `t_person_assist` VALUES ('4', '测试人员1', '13702020202', null, null, null, null, '测试单位1', '测试职务1', '志愿者', '1', '', '', '', '', '');
INSERT INTO `t_person_assist` VALUES ('5', '测试人员2', '13701020203', null, null, '', '', '测试单位2', '测试职务2', '医疗机构中层', '1', '', '', '', '', '1');
INSERT INTO `t_person_assist` VALUES ('6', '测试人员3', '13700020204', null, null, null, null, '测试单位3', '测试职务3', '志愿者', '1', '', '', '', '', '');
INSERT INTO `t_person_assist` VALUES ('7', '测试人员4', '13699020205', null, null, null, null, '测试单位4', '测试职务4', '志愿者', '1', '', '', '', '', '');
INSERT INTO `t_person_assist` VALUES ('8', '测试人员5', '13698020206', null, null, null, null, '测试单位5', '测试职务5', '社区工作人员', '4', '', '', '', '', '');
INSERT INTO `t_person_assist` VALUES ('9', '测试人员6', '13697020207', null, null, null, null, '测试单位6', '测试职务6', '志愿者', '4', '', '', '', '', '');
INSERT INTO `t_person_assist` VALUES ('10', '测试人员7', '13696020208', null, null, null, null, '测试单位7', '测试职务7', '志愿者', '4', '', '', '', '', '');
INSERT INTO `t_person_assist` VALUES ('11', '测试人员8', '13695020209', null, null, null, null, '测试单位8', '测试职务8', '医疗卫生机构中层', '4', '', '', '', '', '');
INSERT INTO `t_person_assist` VALUES ('12', '测试人员9', '13694020210', null, null, null, null, '测试单位9', '测试职务9', '医疗卫生机构中层', '4', '', '', '', '', '');
INSERT INTO `t_person_assist` VALUES ('13', '测试人员10', '13693020211', null, null, null, null, '测试单位10', '测试职务10', '医疗机构中层', '4', '', '', '', '', '');
INSERT INTO `t_person_assist` VALUES ('67', '帮一一', '15000000005', null, '男', '41', '预备党员', '工作单位3', '职务3', '社区工作者', '2', '', '', '', '', '1');
INSERT INTO `t_person_assist` VALUES ('68', '帮二', '15000000006', null, '女', '41', '群众', '工作单位2', '职务2', '医疗卫生机构中层', '3', '', '', '', '', '');
INSERT INTO `t_person_assist` VALUES ('69', '帮三', '15000000007', null, '男', '41', '其他', '工作单位3', '职务3', '志愿者', '1', '', '', '', '', '');
INSERT INTO `t_person_assist` VALUES ('70', '帮四', '15000000008', null, '0', '41', '党员', '工作单位4', '职务4', '医疗卫生机构中层', '1', '', '', '', '', '');
INSERT INTO `t_person_assist` VALUES ('71', '帮五五', '15000000009', null, '0', '41', '党员', '工作单位6', '职务6', '社区工作人员', '1', '', '', '', '', '');
INSERT INTO `t_person_assist` VALUES ('72', '帮六', '15000000010', null, '女', '41', '其他', '工作单位6', '职务6', '医疗机构中层', '1', '', '', '', '', '');
INSERT INTO `t_person_assist` VALUES ('73', '帮七', '15000000011', null, '男', '41', '党员', '工作单位7', '职务7', '志愿者', '1', '', '', '', '', '');
INSERT INTO `t_person_assist` VALUES ('74', '帮八', '15000000012', null, '女', '41', '群众', '工作单位8', '职务8', '社区工作人员', '4', '', '', '', '', '');
INSERT INTO `t_person_assist` VALUES ('76', '帮十', '15000000014', null, '女', '41', '党员', '工作单位10', '职务10', '社区工作者', '4', '', '', '', '', '');
INSERT INTO `t_person_assist` VALUES ('77', '帮十一', '15000000015', null, '男', '41', '群众', '工作单位11', '职务11', '志愿者', '1', '', '', '', '', '');
INSERT INTO `t_person_assist` VALUES ('78', '帮十二', '15000000016', null, '女', '41', '其他', '工作单位12', '职务12', '志愿者', '1', '', '', '', '', '');
INSERT INTO `t_person_assist` VALUES ('79', '帮十三', '15000000017', null, '男', '41', '党员', '工作单位13', '职务13', '医疗机构中层', '1', '', '', '', '', '');
INSERT INTO `t_person_assist` VALUES ('80', '帮十四', '15000000018', null, '女', '41', '群众', '工作单位14', '职务14', '志愿者', '4', '', '', '', '', '');
INSERT INTO `t_person_assist` VALUES ('81', '帮十五', '15000000019', null, '男', '41', '其他', '工作单位15', '职务15', '志愿者', '4', '', '', '', '', '');
INSERT INTO `t_person_assist` VALUES ('82', '帮十六', '15000000020', null, '女', '41', '党员', '工作单位16', '职务16', '社区工作人员', '4', '', '', '', '', '');
INSERT INTO `t_person_assist` VALUES ('83', '帮十七', '15000000021', null, '男', '41', '群众', '工作单位17', '职务17', '志愿者', '4', '', '', '', '', '');
INSERT INTO `t_person_assist` VALUES ('84', '帮十八', '15000000022', null, '女', '41', '其他', '工作单位18', '职务18', '志愿者', '4', '', '', '', '', '');
INSERT INTO `t_person_assist` VALUES ('85', '帮十十九', '15000000023', null, '男', '41', '党员', '工作单位19', '职务19', '医疗卫生机构中层', '4', '', '', '', '', '');
INSERT INTO `t_person_assist` VALUES ('87', '帮二十一', '15000000025', null, '男', '50', '群众', '工作单位21', '职务21', '医疗机构中层', '1', '', '', '', '', '111');
INSERT INTO `t_person_assist` VALUES ('99999', '后台管理人员', '99999999999', null, '男', '1970.01', '群众', '协调小组', '协调小组', '志愿者', '', '杭州', '西湖区', '西溪街道', '111', '11111');

-- ----------------------------
-- Table structure for t_person_medicine
-- ----------------------------
DROP TABLE IF EXISTS `t_person_medicine`;
CREATE TABLE `t_person_medicine` (
  `person_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '人员ID',
  `person_name` varchar(128) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '姓名',
  `age` varchar(20) CHARACTER SET utf8 DEFAULT '' COMMENT '年龄',
  `sex` char(1) CHARACTER SET utf8 DEFAULT '' COMMENT '性别',
  `party` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '政治面貌',
  `unit` varchar(1024) CHARACTER SET utf8 DEFAULT '' COMMENT '单位',
  `duty` varchar(1024) CHARACTER SET utf8 DEFAULT '' COMMENT '职务',
  `szyld` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '所在医疗队',
  `accredited` varchar(1024) CHARACTER SET utf8 DEFAULT '' COMMENT '目前所在医院',
  `category` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '类别',
  `professional` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '专业',
  `county` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '县市区',
  `town` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '镇',
  `village` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '社区',
  `address` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '家庭地址',
  `phone` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `group_id` bigint(20) DEFAULT NULL COMMENT '所属分组',
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=235 DEFAULT CHARSET=utf8mb4 COMMENT='医疗人员信息表 ';

-- ----------------------------
-- Records of t_person_medicine
-- ----------------------------
INSERT INTO `t_person_medicine` VALUES ('118', '医疗2', '32', '男', '群众', '浙二', '组织医师2', '援鄂', '', '', '', '', '', '', '', '13701010103', '38', 'hhuhuhuhu');
INSERT INTO `t_person_medicine` VALUES ('119', '医疗3', '32', '男', '群众', '省人民医院', '组织医师3', '省内', '', '', '', '', '', '', '', '13701010104', '38', '565699898');
INSERT INTO `t_person_medicine` VALUES ('124', '医疗8', '32', '男', '群众', '省人民医院', '组织医师8', '省内', '', '', '', '', '', '', '', '15000000001', '38', null);
INSERT INTO `t_person_medicine` VALUES ('125', '医疗9', '32', '男', '群众', '省人民医院', '组织医师9', '援鄂', '', '', '', '', '', '', '', '13701010110', '36', '122222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222');
INSERT INTO `t_person_medicine` VALUES ('126', '医疗10', '32', '男', '群众', '省人民医院', '组织医师10', '援鄂', '', '', '', '', '', '', '', '13701010111', '36', null);
INSERT INTO `t_person_medicine` VALUES ('127', '医疗11', '32', '男', '群众', '省人民医院', '组织医师11', '援鄂', '', '', '', '', '', '', '', '13701010112', '36', null);
INSERT INTO `t_person_medicine` VALUES ('128', '医疗12', '32', '男', '群众', '省人民医院', '组织医师12', '援鄂', '', '', '', '', '', '', '', '13701010113', '36', null);
INSERT INTO `t_person_medicine` VALUES ('129', '医疗13', '32', '男', '群众', '省人民医院', '组织医师13', '省内', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '', '', '', '', '', '', '13701010114', '36', null);
INSERT INTO `t_person_medicine` VALUES ('130', '医疗14', '32', '男', '群众', '省人民医院', '组织医师14', '省内', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '', '', '', '', '', '', '13701010115', '36', null);
INSERT INTO `t_person_medicine` VALUES ('134', '医疗18', '32', '男', '群众', '省人民医院', '组织医师18', '省内', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '', '', '', '', '', '', '13701010119', '36', 'null');
INSERT INTO `t_person_medicine` VALUES ('135', '医疗19', '32', '男', '群众', '省人民医院', '组织医师19', '省内', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '', '', '', '', '', '', '13701010120', '38', null);

-- ----------------------------
-- Table structure for t_person_medicine_family
-- ----------------------------
DROP TABLE IF EXISTS `t_person_medicine_family`;
CREATE TABLE `t_person_medicine_family` (
  `userid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '人员ID',
  `nname` varchar(128) CHARACTER SET utf8 DEFAULT '' COMMENT '姓名',
  `age` varchar(20) CHARACTER SET utf8 DEFAULT '' COMMENT '年龄',
  `relation` varchar(20) CHARACTER SET utf8 DEFAULT '' COMMENT '亲属关系',
  `address` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '目前居住地',
  `unit` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '工作单位',
  `phone` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '手机',
  `ylrphone` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '医护人手机号',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=utf8mb4 COMMENT='医疗人员信息表 ';

-- ----------------------------
-- Records of t_person_medicine_family
-- ----------------------------
INSERT INTO `t_person_medicine_family` VALUES ('198', '测试人', '22', '父子', '测试地址', '测试单位', '13700000001', '13858020036');
INSERT INTO `t_person_medicine_family` VALUES ('199', '测试', '45', '父子', '西湖区三墩街道', '浙江浙一', '13701010101', '15000000001');
INSERT INTO `t_person_medicine_family` VALUES ('200', '测试2', '35', '妻子', '西湖区留下街道', '浙大医学院', '13509090909', '15000000001');
INSERT INTO `t_person_medicine_family` VALUES ('207', '童思宁222', '29', '父子', '中泰', '浙大网新', '13509090909', '15000000001');

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `ROLE_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `ROLE_NAME` varchar(100) NOT NULL COMMENT '角色名称',
  `REMARK` varchar(100) DEFAULT NULL COMMENT '角色描述',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`ROLE_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色表';

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('1', '系统管理员', '系统管理员', '2019-06-14 16:23:11', '2020-06-01 00:44:07');
INSERT INTO `t_role` VALUES ('81', '操作人员', '拥有业务功能模块的权限', '2020-02-08 16:59:09', '2020-02-16 11:46:08');
INSERT INTO `t_role` VALUES ('82', '医疗人员', '医疗人员', '2020-02-15 09:22:51', null);
INSERT INTO `t_role` VALUES ('83', '帮扶人员', '帮扶人员', '2020-02-15 09:23:01', null);
INSERT INTO `t_role` VALUES ('84', '项目管理员', '项目管理员', '2020-05-30 17:12:27', '2020-06-01 00:43:56');
INSERT INTO `t_role` VALUES ('85', '项目组负责人', '项目组负责人', '2020-05-30 17:12:35', null);
INSERT INTO `t_role` VALUES ('86', '项目组成员', '项目组成员', '2020-05-30 17:12:44', null);

-- ----------------------------
-- Table structure for t_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_role_menu`;
CREATE TABLE `t_role_menu` (
  `ROLE_ID` bigint(20) NOT NULL COMMENT '角色ID',
  `MENU_ID` bigint(20) NOT NULL COMMENT '菜单/按钮ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色菜单关联表';

-- ----------------------------
-- Records of t_role_menu
-- ----------------------------
INSERT INTO `t_role_menu` VALUES ('81', '199');
INSERT INTO `t_role_menu` VALUES ('81', '215');
INSERT INTO `t_role_menu` VALUES ('81', '216');
INSERT INTO `t_role_menu` VALUES ('81', '217');
INSERT INTO `t_role_menu` VALUES ('81', '218');
INSERT INTO `t_role_menu` VALUES ('81', '219');
INSERT INTO `t_role_menu` VALUES ('81', '202');
INSERT INTO `t_role_menu` VALUES ('81', '220');
INSERT INTO `t_role_menu` VALUES ('81', '221');
INSERT INTO `t_role_menu` VALUES ('81', '222');
INSERT INTO `t_role_menu` VALUES ('81', '223');
INSERT INTO `t_role_menu` VALUES ('81', '224');
INSERT INTO `t_role_menu` VALUES ('81', '203');
INSERT INTO `t_role_menu` VALUES ('81', '206');
INSERT INTO `t_role_menu` VALUES ('81', '207');
INSERT INTO `t_role_menu` VALUES ('81', '204');
INSERT INTO `t_role_menu` VALUES ('81', '205');
INSERT INTO `t_role_menu` VALUES ('84', '241');
INSERT INTO `t_role_menu` VALUES ('84', '243');
INSERT INTO `t_role_menu` VALUES ('84', '244');
INSERT INTO `t_role_menu` VALUES ('84', '245');
INSERT INTO `t_role_menu` VALUES ('84', '246');
INSERT INTO `t_role_menu` VALUES ('84', '247');
INSERT INTO `t_role_menu` VALUES ('84', '248');
INSERT INTO `t_role_menu` VALUES ('84', '250');
INSERT INTO `t_role_menu` VALUES ('84', '251');
INSERT INTO `t_role_menu` VALUES ('84', '252');
INSERT INTO `t_role_menu` VALUES ('84', '253');
INSERT INTO `t_role_menu` VALUES ('84', '254');
INSERT INTO `t_role_menu` VALUES ('84', '1');
INSERT INTO `t_role_menu` VALUES ('84', '3');
INSERT INTO `t_role_menu` VALUES ('84', '11');
INSERT INTO `t_role_menu` VALUES ('84', '12');
INSERT INTO `t_role_menu` VALUES ('84', '13');
INSERT INTO `t_role_menu` VALUES ('84', '160');
INSERT INTO `t_role_menu` VALUES ('84', '161');
INSERT INTO `t_role_menu` VALUES ('1', '241');
INSERT INTO `t_role_menu` VALUES ('1', '243');
INSERT INTO `t_role_menu` VALUES ('1', '244');
INSERT INTO `t_role_menu` VALUES ('1', '245');
INSERT INTO `t_role_menu` VALUES ('1', '246');
INSERT INTO `t_role_menu` VALUES ('1', '247');
INSERT INTO `t_role_menu` VALUES ('1', '248');
INSERT INTO `t_role_menu` VALUES ('1', '250');
INSERT INTO `t_role_menu` VALUES ('1', '251');
INSERT INTO `t_role_menu` VALUES ('1', '252');
INSERT INTO `t_role_menu` VALUES ('1', '253');
INSERT INTO `t_role_menu` VALUES ('1', '254');
INSERT INTO `t_role_menu` VALUES ('1', '199');
INSERT INTO `t_role_menu` VALUES ('1', '215');
INSERT INTO `t_role_menu` VALUES ('1', '216');
INSERT INTO `t_role_menu` VALUES ('1', '217');
INSERT INTO `t_role_menu` VALUES ('1', '218');
INSERT INTO `t_role_menu` VALUES ('1', '219');
INSERT INTO `t_role_menu` VALUES ('1', '202');
INSERT INTO `t_role_menu` VALUES ('1', '220');
INSERT INTO `t_role_menu` VALUES ('1', '221');
INSERT INTO `t_role_menu` VALUES ('1', '222');
INSERT INTO `t_role_menu` VALUES ('1', '223');
INSERT INTO `t_role_menu` VALUES ('1', '224');
INSERT INTO `t_role_menu` VALUES ('1', '203');
INSERT INTO `t_role_menu` VALUES ('1', '206');
INSERT INTO `t_role_menu` VALUES ('1', '225');
INSERT INTO `t_role_menu` VALUES ('1', '226');
INSERT INTO `t_role_menu` VALUES ('1', '227');
INSERT INTO `t_role_menu` VALUES ('1', '239');
INSERT INTO `t_role_menu` VALUES ('1', '207');
INSERT INTO `t_role_menu` VALUES ('1', '228');
INSERT INTO `t_role_menu` VALUES ('1', '229');
INSERT INTO `t_role_menu` VALUES ('1', '230');
INSERT INTO `t_role_menu` VALUES ('1', '240');
INSERT INTO `t_role_menu` VALUES ('1', '232');
INSERT INTO `t_role_menu` VALUES ('1', '233');
INSERT INTO `t_role_menu` VALUES ('1', '234');
INSERT INTO `t_role_menu` VALUES ('1', '204');
INSERT INTO `t_role_menu` VALUES ('1', '235');
INSERT INTO `t_role_menu` VALUES ('1', '236');
INSERT INTO `t_role_menu` VALUES ('1', '237');
INSERT INTO `t_role_menu` VALUES ('1', '238');
INSERT INTO `t_role_menu` VALUES ('1', '205');
INSERT INTO `t_role_menu` VALUES ('1', '1');
INSERT INTO `t_role_menu` VALUES ('1', '3');
INSERT INTO `t_role_menu` VALUES ('1', '11');
INSERT INTO `t_role_menu` VALUES ('1', '12');
INSERT INTO `t_role_menu` VALUES ('1', '13');
INSERT INTO `t_role_menu` VALUES ('1', '160');
INSERT INTO `t_role_menu` VALUES ('1', '161');
INSERT INTO `t_role_menu` VALUES ('1', '4');
INSERT INTO `t_role_menu` VALUES ('1', '14');
INSERT INTO `t_role_menu` VALUES ('1', '15');
INSERT INTO `t_role_menu` VALUES ('1', '16');
INSERT INTO `t_role_menu` VALUES ('1', '162');
INSERT INTO `t_role_menu` VALUES ('1', '5');
INSERT INTO `t_role_menu` VALUES ('1', '17');
INSERT INTO `t_role_menu` VALUES ('1', '18');
INSERT INTO `t_role_menu` VALUES ('1', '19');
INSERT INTO `t_role_menu` VALUES ('1', '163');
INSERT INTO `t_role_menu` VALUES ('1', '6');
INSERT INTO `t_role_menu` VALUES ('1', '20');
INSERT INTO `t_role_menu` VALUES ('1', '21');
INSERT INTO `t_role_menu` VALUES ('1', '22');
INSERT INTO `t_role_menu` VALUES ('1', '164');
INSERT INTO `t_role_menu` VALUES ('1', '209');
INSERT INTO `t_role_menu` VALUES ('1', '210');
INSERT INTO `t_role_menu` VALUES ('1', '211');
INSERT INTO `t_role_menu` VALUES ('1', '212');
INSERT INTO `t_role_menu` VALUES ('1', '213');
INSERT INTO `t_role_menu` VALUES ('1', '2');
INSERT INTO `t_role_menu` VALUES ('1', '8');
INSERT INTO `t_role_menu` VALUES ('1', '23');
INSERT INTO `t_role_menu` VALUES ('1', '10');
INSERT INTO `t_role_menu` VALUES ('1', '24');
INSERT INTO `t_role_menu` VALUES ('1', '170');
INSERT INTO `t_role_menu` VALUES ('1', '136');
INSERT INTO `t_role_menu` VALUES ('1', '171');
INSERT INTO `t_role_menu` VALUES ('1', '172');
INSERT INTO `t_role_menu` VALUES ('1', '127');
INSERT INTO `t_role_menu` VALUES ('1', '128');
INSERT INTO `t_role_menu` VALUES ('1', '129');
INSERT INTO `t_role_menu` VALUES ('1', '131');
INSERT INTO `t_role_menu` VALUES ('1', '175');
INSERT INTO `t_role_menu` VALUES ('1', '101');
INSERT INTO `t_role_menu` VALUES ('1', '102');
INSERT INTO `t_role_menu` VALUES ('1', '103');
INSERT INTO `t_role_menu` VALUES ('1', '104');
INSERT INTO `t_role_menu` VALUES ('1', '105');
INSERT INTO `t_role_menu` VALUES ('1', '106');
INSERT INTO `t_role_menu` VALUES ('1', '107');
INSERT INTO `t_role_menu` VALUES ('1', '108');
INSERT INTO `t_role_menu` VALUES ('1', '173');
INSERT INTO `t_role_menu` VALUES ('1', '109');
INSERT INTO `t_role_menu` VALUES ('1', '110');
INSERT INTO `t_role_menu` VALUES ('1', '174');
INSERT INTO `t_role_menu` VALUES ('1', '137');
INSERT INTO `t_role_menu` VALUES ('1', '138');
INSERT INTO `t_role_menu` VALUES ('1', '165');
INSERT INTO `t_role_menu` VALUES ('1', '139');
INSERT INTO `t_role_menu` VALUES ('1', '166');
INSERT INTO `t_role_menu` VALUES ('1', '115');
INSERT INTO `t_role_menu` VALUES ('1', '132');
INSERT INTO `t_role_menu` VALUES ('1', '133');
INSERT INTO `t_role_menu` VALUES ('1', '135');
INSERT INTO `t_role_menu` VALUES ('1', '134');
INSERT INTO `t_role_menu` VALUES ('1', '126');
INSERT INTO `t_role_menu` VALUES ('1', '159');
INSERT INTO `t_role_menu` VALUES ('1', '116');
INSERT INTO `t_role_menu` VALUES ('1', '117');
INSERT INTO `t_role_menu` VALUES ('1', '119');
INSERT INTO `t_role_menu` VALUES ('1', '120');
INSERT INTO `t_role_menu` VALUES ('1', '121');
INSERT INTO `t_role_menu` VALUES ('1', '122');
INSERT INTO `t_role_menu` VALUES ('1', '123');
INSERT INTO `t_role_menu` VALUES ('1', '118');
INSERT INTO `t_role_menu` VALUES ('1', '125');
INSERT INTO `t_role_menu` VALUES ('1', '167');
INSERT INTO `t_role_menu` VALUES ('1', '168');
INSERT INTO `t_role_menu` VALUES ('1', '169');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `USER_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `USERNAME` varchar(50) NOT NULL COMMENT '用户名',
  `PASSWORD` varchar(128) NOT NULL COMMENT '密码',
  `DEPT_ID` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `EMAIL` varchar(128) DEFAULT NULL COMMENT '邮箱',
  `MOBILE` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `STATUS` char(1) NOT NULL COMMENT '状态 0锁定 1有效',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `LAST_LOGIN_TIME` datetime DEFAULT NULL COMMENT '最近访问时间',
  `SSEX` char(1) DEFAULT NULL COMMENT '性别 0男 1女 2保密',
  `IS_TAB` char(1) DEFAULT NULL COMMENT '是否开启tab，0关闭 1开启',
  `THEME` varchar(10) DEFAULT NULL COMMENT '主题',
  `AVATAR` varchar(100) DEFAULT NULL COMMENT '头像',
  `DESCRIPTION` varchar(100) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`USER_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'system', '0bdeb5142ff6bf1b7e78315848dd9a0f', '10', '', '', '1', '2020-02-08 14:08:17', '2020-02-21 23:03:14', '2020-06-01 08:29:00', '2', '0', 'black', '20180414165827.jpg', '');
INSERT INTO `t_user` VALUES ('10', 'admin', '856aea89ad509f163284abb75579dcfc', '10', '', '', '1', '2020-02-16 14:04:40', null, '2020-03-02 10:25:56', '2', '1', 'black', 'default.jpg', '');
INSERT INTO `t_user` VALUES ('12', 'yangj', '20bec532d2ce29fb15ac0c80d42b70d8', null, '', '13700000000', '1', '2020-05-30 17:13:28', null, null, '2', '0', 'black', 'default.jpg', '');
INSERT INTO `t_user` VALUES ('13', 'tongsn', 'd569849d94761c0000b919e4df453a97', null, '', '13700000001', '1', '2020-05-30 17:14:16', null, null, '2', '0', 'black', 'default.jpg', '');
INSERT INTO `t_user` VALUES ('14', 'zhouj', '9671a1c553560a27c27dd92d14eeae53', null, '', '13700001111', '1', '2020-05-31 17:44:34', null, '2020-05-31 17:47:27', '2', '0', 'black', 'default.jpg', '');

-- ----------------------------
-- Table structure for t_user_group
-- ----------------------------
DROP TABLE IF EXISTS `t_user_group`;
CREATE TABLE `t_user_group` (
  `USER_ID` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `GROUP_ID` bigint(20) DEFAULT NULL COMMENT '项目组ID',
  `GROUP_TYPE` char(1) DEFAULT '' COMMENT '是否项目组负责人'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='项目组关系表 ';

-- ----------------------------
-- Records of t_user_group
-- ----------------------------
INSERT INTO `t_user_group` VALUES ('13', '1', '0');
INSERT INTO `t_user_group` VALUES ('12', '1', '1');

-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role` (
  `USER_ID` bigint(20) NOT NULL COMMENT '用户ID',
  `ROLE_ID` bigint(20) NOT NULL COMMENT '角色ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户角色关联表';

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES ('1', '1');
INSERT INTO `t_user_role` VALUES ('8', '1');
INSERT INTO `t_user_role` VALUES ('10', '1');
INSERT INTO `t_user_role` VALUES ('12', '85');
INSERT INTO `t_user_role` VALUES ('13', '86');
INSERT INTO `t_user_role` VALUES ('14', '84');

-- ----------------------------
-- Table structure for t_wxuser
-- ----------------------------
DROP TABLE IF EXISTS `t_wxuser`;
CREATE TABLE `t_wxuser` (
  `userid` varchar(32) NOT NULL COMMENT '用户ID',
  `openid` varchar(32) DEFAULT NULL COMMENT '微信ID',
  `telnum1` varchar(32) DEFAULT NULL COMMENT '手机号',
  `telnum2` varchar(32) DEFAULT NULL COMMENT '医护人员手机号',
  `hospital` varchar(1024) DEFAULT NULL COMMENT '所属医院',
  `region` varchar(1024) DEFAULT NULL COMMENT '所在地区',
  `address` varchar(1024) DEFAULT NULL COMMENT '详细地址',
  `passwd` varchar(32) DEFAULT NULL COMMENT '密码',
  `rylx` varchar(32) DEFAULT NULL COMMENT '用户类型 ',
  `family` char(1) DEFAULT NULL COMMENT '家庭关系 ',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_wxuser
-- ----------------------------
INSERT INTO `t_wxuser` VALUES ('13017949784', null, '13017949784', '13017949784', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('13022653295', null, '13022653295', '13022653295', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('13345898006', null, '13345898006', '13345898006', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('13429036209', null, '13429036209', '13429036209', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('13506592926', null, '13506592926', '13506592926', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('13509090909', null, '13509090909', '15000000001', '浙大医学院', null, '西湖区留下街道', '123456', '0', '0');
INSERT INTO `t_wxuser` VALUES ('13516901768', null, '13516901768', '13516901768', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('13516948358', null, '13516948358', '13516948358', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('13566748773', null, '13566748773', '13566748773', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('13566781130', null, '13566781130', '13566781130', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('13566924916', null, '13566924916', '13566924916', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('13566952119', null, '13566952119', '13566952119', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('13566957689', null, '13566957689', '13566957689', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('13566958240', null, '13566958240', '13566958240', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('13575761822', null, '13575761822', '13575761822', null, null, null, '123456', '0', '1');
INSERT INTO `t_wxuser` VALUES ('13575975800', null, '13575975800', '13575975800', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('13586982344', null, '13586982344', '13586982344', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('13588626009', null, '13588626009', '13588626009', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('13588627578', null, '13588627578', '13588627578', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('13588638385', null, '13588638385', '13588638385', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('13588743777', null, '13588743777', '13588743777', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('13600691455', null, '13600691455', '13600691455', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('13605720078', null, '13605720078', '13605720078', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('13606799590', null, '13606799590', '13606799590', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('13616516076', null, '13616516076', '13616516076', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('13616555011', null, '13616555011', '13616555011', null, null, null, '123456', '0', '1');
INSERT INTO `t_wxuser` VALUES ('13616792805', null, '13616792805', '13616792805', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('13626892576', null, '13626892576', '13626892576', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('13665856982', null, '13665856982', '13665856982', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('13665857471', null, '13665857471', '13665857471', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('13665893239', null, '13665893239', '13665893239', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('13700000001', null, '13700000001', '13858020036', null, null, '测试地址', '123456', '0', '0');
INSERT INTO `t_wxuser` VALUES ('13701010101', null, '13701010101', '15000000001', '浙江浙一', null, '西湖区三墩街道', '12345678', '0', '0');
INSERT INTO `t_wxuser` VALUES ('13706798091', null, '13706798091', '13706798091', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('13706894160', null, '13706894160', '13706894160', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('13735689769', null, '13735689769', '13735689769', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('13735748815', null, '13735748815', '13735748815', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('13735757899', null, '13735757899', '13735757899', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('13738950537', null, '13738950537', '13738950537', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('13738967355', null, '13738967355', '13738967355', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('13738975298', null, '13738975298', '13738975298', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('13750920405', null, '13750920405', '13750920405', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('13750943695', null, '13750943695', '13750943695', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('13757920636', null, '13757920636', '13757920636', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('13757930434', null, '13757930434', '13757930434', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('13777371210', null, '13777371210', '13777371210', null, null, null, '123456', '0', '1');
INSERT INTO `t_wxuser` VALUES ('13777525319', null, '13777525319', '13777525319', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('13777878093', null, '13777878093', '13777878093', null, null, null, '123456', '0', '1');
INSERT INTO `t_wxuser` VALUES ('13777916848', null, '13777916848', '13777916848', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('13806792877', null, '13806792877', '13806792877', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('13819901922', null, '13819901922', '13819901922', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('13819921718', null, '13819921718', '13819921718', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('13819967368', null, '13819967368', '13819967368', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('13857175627', null, '13857175627', '13857175627', null, null, null, '123456', '0', '1');
INSERT INTO `t_wxuser` VALUES ('13857937238', null, '13857937238', '13857937238', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('13857939258', null, '13857939258', '13857939258', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('13857975062', null, '13857975062', '13857975062', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('13858020036', null, '13858020036', '13858020036', '浙江省人民医院', '', '', '123456', '1', '');
INSERT INTO `t_wxuser` VALUES ('13858963196', null, '13858963196', '13858963196', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('13858991183', null, '13858991183', '13858991183', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('13868055618', null, '13868055618', '13868055618', null, null, null, '123456', '0', '1');
INSERT INTO `t_wxuser` VALUES ('13868952585\n652585', null, '13868952585\n652585', '13868952585\n652585', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('13868963898', null, '13868963898', '13868963898', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('13905893273', null, '13905893273', '13905893273', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('1390679544', null, '1390679544', '1390679544', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('13906799675', null, '13906799675', '13906799675', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('13958447744', null, '13958447744', '13958447744', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('13958478316', null, '13958478316', '13958478316', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('13967189550', null, '13967189550', '13967189550', null, null, null, '123456', '0', '1');
INSERT INTO `t_wxuser` VALUES ('13967950080', null, '13967950080', '13967950080', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('13967979032', null, '13967979032', '13967979032', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('13968171954', null, '13968171954', '13968171954', null, null, null, '123456', '0', '1');
INSERT INTO `t_wxuser` VALUES ('14757899958', null, '14757899958', '14757899958', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('15000000001', null, '15000000001', '15000000001', '人民医院1', '测试', '111111', '123456', '0', '1');
INSERT INTO `t_wxuser` VALUES ('15000000002', null, '15000000002', '15000000001', '11111', '123', '11111', '123456', '0', '0');
INSERT INTO `t_wxuser` VALUES ('15000000005', '', '15000000005', '15000000005', '15000000005', '', '', '123456', '1', '');
INSERT INTO `t_wxuser` VALUES ('15000000006', '', '15000000006', '15000000006', '15000000006', '', '', '123456', '1', '');
INSERT INTO `t_wxuser` VALUES ('15000000007', '', '15000000007', '15000000007', '15000000007', '', '', '123456', '1', '');
INSERT INTO `t_wxuser` VALUES ('15000000008', '', '15000000008', '15000000008', '15000000008', '', '', '123456', '1', '');
INSERT INTO `t_wxuser` VALUES ('15000000009', '', '15000000009', '15000000009', '15000000009', '', '', '123456', '1', '');
INSERT INTO `t_wxuser` VALUES ('15000000010', '', '15000000010', '15000000010', '15000000010', '', '', '123456', '1', '');
INSERT INTO `t_wxuser` VALUES ('15000000011', '', '15000000011', '15000000011', '15000000011', '', '', '123456', '1', '');
INSERT INTO `t_wxuser` VALUES ('15000000012', '', '15000000012', '15000000012', '15000000012', '', '', '123456', '1', '');
INSERT INTO `t_wxuser` VALUES ('15000000013', '', '15000000013', '15000000013', '15000000013', '', '', '123456', '1', '');
INSERT INTO `t_wxuser` VALUES ('15000000014', '', '15000000014', '15000000014', '15000000014', '', '', '123456', '1', '');
INSERT INTO `t_wxuser` VALUES ('15000000015', '', '15000000015', '15000000015', '15000000015', '', '', '123456', '1', '');
INSERT INTO `t_wxuser` VALUES ('15000000016', '', '15000000016', '15000000016', '15000000016', '', '', '123456', '1', '');
INSERT INTO `t_wxuser` VALUES ('15000000017', '', '15000000017', '15000000017', '15000000017', '', '', '123456', '1', '');
INSERT INTO `t_wxuser` VALUES ('15000000018', '', '15000000018', '15000000018', '15000000018', '', '', '123456', '1', '');
INSERT INTO `t_wxuser` VALUES ('15000000019', '', '15000000019', '15000000019', '15000000019', '', '', '123456', '1', '');
INSERT INTO `t_wxuser` VALUES ('15000000020', '', '15000000020', '15000000020', '15000000020', '', '', '123456', '1', '');
INSERT INTO `t_wxuser` VALUES ('15000000021', '', '15000000021', '15000000021', '15000000021', '', '', '123456', '1', '');
INSERT INTO `t_wxuser` VALUES ('15000000022', '', '15000000022', '15000000022', '15000000022', '', '', '123456', '1', '');
INSERT INTO `t_wxuser` VALUES ('15000000023', '', '15000000023', '15000000023', '15000000023', '', '', '123456', '1', '');
INSERT INTO `t_wxuser` VALUES ('15000000024', '', '15000000024', '15000000024', '15000000024', '', '', '123456', '1', '');
INSERT INTO `t_wxuser` VALUES ('15001010102', null, '15001010102', '15000000001', '浙大网新', null, '中泰', '123456789', '0', '0');
INSERT INTO `t_wxuser` VALUES ('15058575651', null, '15058575651', '15058575651', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('15067903569', null, '15067903569', '15067903569', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('15067972763', null, '15067972763', '15067972763', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('15088250765', null, '15088250765', '15088250765', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('15088619182', null, '15088619182', '15088619182', null, null, null, '123456', '0', '1');
INSERT INTO `t_wxuser` VALUES ('15157910176', null, '15157910176', '15157910176', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('15258959922', null, '15258959922', '15258959922', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('15267927766', null, '15267927766', '15267927766', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('15267981480', null, '15267981480', '15267981480', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('15268182725', null, '15268182725', '15268182725', null, null, null, '123456', '0', '1');
INSERT INTO `t_wxuser` VALUES ('15268535950', null, '15268535950', '15268535950', null, null, null, '123456', '0', '1');
INSERT INTO `t_wxuser` VALUES ('15314972068', null, '15314972068', '15314972068', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('15372925491', null, '15372925491', '15372925491', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('15382361818', null, '15382361818', '15382361818', null, null, null, '123456', '0', '1');
INSERT INTO `t_wxuser` VALUES ('15757907149', null, '15757907149', '15757907149', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('15825503357', null, '15825503357', '15825503357', null, null, null, '123456', '0', '1');
INSERT INTO `t_wxuser` VALUES ('15858920158', null, '15858920158', '15858920158', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('15867919795\n536735', null, '15867919795\n536735', '15867919795\n536735', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('15869275828', null, '15869275828', '15869275828', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('15958930133', null, '15958930133', '15958930133', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('15968876870', null, '15968876870', '15968876870', null, null, null, '123456', '0', '1');
INSERT INTO `t_wxuser` VALUES ('17815567320', null, '17815567320', '17815567320', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('17858666150', null, '17858666150', '17858666150', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('18157952005', null, '18157952005', '18157952005', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('18258441058', null, '18258441058', '18258441058', null, null, null, '123456', '0', '1');
INSERT INTO `t_wxuser` VALUES ('18357912639', null, '18357912639', '18357912639', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('18395946779', null, '18395946779', '18395946779', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('18705892854', null, '18705892854', '18705892854', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('18857960457', null, '18857960457', '18857960457', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('18867969669', null, '18867969669', '18867969669', null, null, null, '123456', '1', '1');
INSERT INTO `t_wxuser` VALUES ('18868585018', null, '18868585018', '18868585018', null, null, null, '123456', '1', '1');
